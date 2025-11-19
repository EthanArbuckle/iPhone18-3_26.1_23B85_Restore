@interface MTLIOScratchBufferAllocator
@end

@implementation MTLIOScratchBufferAllocator

void __39___MTLIOScratchBufferAllocator_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (*(v2 + 164) == 1)
  {
    dispatch_source_cancel(v3);
  }

  else
  {
    dispatch_resume(v3);
  }

  *(*(a1 + 32) + 164) = 0;
  dispatch_activate(*(*(a1 + 32) + 152));
  v4 = *(*(a1 + 32) + 152);

  dispatch_release(v4);
}

@end