@interface AMSPromise(AppStoreComponents)
- (uint64_t)asc_isCanceledOrPending;
@end

@implementation AMSPromise(AppStoreComponents)

- (uint64_t)asc_isCanceledOrPending
{
  if ([self isCancelled])
  {
    return 1;
  }

  else
  {
    return [self isFinished] ^ 1;
  }
}

@end