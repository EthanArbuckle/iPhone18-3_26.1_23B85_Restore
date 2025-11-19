@interface EnqueuePackageWithPriority
@end

@implementation EnqueuePackageWithPriority

intptr_t __ids_EnqueuePackageWithPriority_block_invoke(uint64_t a1)
{
  **(a1 + 32) = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  **(*(a1 + 40) + 16 * v3 + 104) = v2;
  *(*(a1 + 40) + 16 * v3 + 104) = v2;
  CFRelease(*(a1 + 48));
  v4 = *(*(a1 + 40) + 152);

  return dispatch_semaphore_signal(v4);
}

void __tcp_EnqueuePackageWithPriority_block_invoke(uint64_t a1)
{
  **(a1 + 32) = 0;
  v2 = *(a1 + 32);
  v3 = 3 * *(a1 + 56);
  **(*(a1 + 40) + 24 * *(a1 + 56) + 136) = v2;
  *(*(a1 + 40) + 8 * v3 + 136) = v2;
  write(*(*(a1 + 40) + 92), "", 1uLL);
  v4 = *(a1 + 48);

  CFRelease(v4);
}

@end