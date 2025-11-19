@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  v2 = self;
  sub_19FFBC();
}

- (void)appExitedWhileAppeared
{
  v2 = self;
  sub_19F2DC();
}

@end