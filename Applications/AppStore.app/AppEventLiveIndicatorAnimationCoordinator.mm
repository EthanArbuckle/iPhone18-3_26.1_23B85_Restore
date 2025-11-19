@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_1000812B4();
}

- (void)appExitedWhileAppeared
{
  v2 = self;
  sub_10008058C();
}

@end