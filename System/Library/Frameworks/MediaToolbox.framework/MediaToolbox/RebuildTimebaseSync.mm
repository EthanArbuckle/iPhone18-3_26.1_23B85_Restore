@interface RebuildTimebaseSync
@end

@implementation RebuildTimebaseSync

void __dqr_RebuildTimebaseSync_block_invoke(uint64_t a1)
{
  v9 = 0;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = 0u;
  __s1 = 120;
  dqr_SyncServerTimebaseToMoment(*(a1 + 32), &__s1);
}

@end