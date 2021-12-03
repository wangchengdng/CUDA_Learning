#include <stdio.h>
__global__ void cuda_hello() {
    const int b = blockIdx.x;
    const int tx = threadIdx.x;
    const int ty = threadIdx.y;
    printf("Hello World from block %d and thread %d-%d!\n", b, tx, ty);
}
int main() {
    const dim3 block_size(2, 4);
    cuda_hello<<<1, block_size>>>();
    cudaDeviceSynchronize();
    return 0;
}
