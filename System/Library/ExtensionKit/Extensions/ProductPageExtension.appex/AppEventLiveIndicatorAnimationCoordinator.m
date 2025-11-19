@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_10017841C();
}

- (void)appExitedWhileAppeared
{
  v2 = self;
  sub_1001776D4();
}

@end