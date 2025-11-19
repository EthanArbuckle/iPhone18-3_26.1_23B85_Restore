@interface CFPrefsSynchronizeDirtySourceForTimer
@end

@implementation CFPrefsSynchronizeDirtySourceForTimer

uint64_t ___CFPrefsSynchronizeDirtySourceForTimer_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) createDiskWrite];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end