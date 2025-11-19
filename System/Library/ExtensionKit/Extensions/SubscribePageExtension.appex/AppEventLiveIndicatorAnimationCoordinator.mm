@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_1001A6D40();
}

- (void)appExitedWhileAppeared
{
  v2 = self;
  sub_1001A5FF8();
}

@end