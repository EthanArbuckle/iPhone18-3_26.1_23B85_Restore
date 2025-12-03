@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  selfCopy = self;
  sub_19FFBC();
}

- (void)appExitedWhileAppeared
{
  selfCopy = self;
  sub_19F2DC();
}

@end