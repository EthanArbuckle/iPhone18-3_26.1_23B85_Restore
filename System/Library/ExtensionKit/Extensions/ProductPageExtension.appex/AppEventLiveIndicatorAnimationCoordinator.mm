@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  selfCopy = self;
  sub_10017841C();
}

- (void)appExitedWhileAppeared
{
  selfCopy = self;
  sub_1001776D4();
}

@end