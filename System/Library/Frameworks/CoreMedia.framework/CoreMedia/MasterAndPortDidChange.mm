@interface MasterAndPortDidChange
@end

@implementation MasterAndPortDidChange

void __figTimeSyncClock_MasterAndPortDidChange_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end