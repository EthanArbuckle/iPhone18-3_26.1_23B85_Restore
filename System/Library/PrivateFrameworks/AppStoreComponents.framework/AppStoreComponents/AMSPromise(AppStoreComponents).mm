@interface AMSPromise(AppStoreComponents)
- (uint64_t)asc_isCanceledOrPending;
@end

@implementation AMSPromise(AppStoreComponents)

- (uint64_t)asc_isCanceledOrPending
{
  if ([a1 isCancelled])
  {
    return 1;
  }

  else
  {
    return [a1 isFinished] ^ 1;
  }
}

@end