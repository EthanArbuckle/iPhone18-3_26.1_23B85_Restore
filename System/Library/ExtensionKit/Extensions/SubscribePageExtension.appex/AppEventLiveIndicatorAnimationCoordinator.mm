@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  selfCopy = self;
  sub_1001A6D40();
}

- (void)appExitedWhileAppeared
{
  selfCopy = self;
  sub_1001A5FF8();
}

@end