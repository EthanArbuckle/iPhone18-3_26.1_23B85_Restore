@interface BLSHCriticalAssertProvider
- (void)didDetectSignificantUserInteraction;
@end

@implementation BLSHCriticalAssertProvider

- (void)didDetectSignificantUserInteraction
{
  if (didDetectSignificantUserInteraction_onceToken_0 != -1)
  {
    [BLSHCriticalAssertProvider didDetectSignificantUserInteraction];
  }
}

@end