@interface MTLIOCommandQueue
@end

@implementation MTLIOCommandQueue

void __43___MTLIOCommandQueue_launchIOWorkerThreads__block_invoke(uint64_t a1)
{
  while (1)
  {
    MTLIOCommandQueueCommandListProcessCommands((*(a1 + 32) + 232));
  }
}

uint64_t __29___MTLIOCommandQueue_dealloc__block_invoke(uint64_t a1)
{
  pthread_cond_destroy((*(a1 + 32) + 72));
  v2 = (*(a1 + 32) + 120);

  return pthread_mutex_destroy(v2);
}

@end