@interface _DASActivity(BGTaskScheduler)
- (uint64_t)bgTaskExpirationReason;
@end

@implementation _DASActivity(BGTaskScheduler)

- (uint64_t)bgTaskExpirationReason
{
  if ([self lastDenialValue] >= 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end