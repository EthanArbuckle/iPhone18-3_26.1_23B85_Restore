@interface AppEventLiveIndicatorAnimationCoordinator
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
@end

@implementation AppEventLiveIndicatorAnimationCoordinator

- (void)appEnteredWhileAppeared
{
  selfCopy = self;
  sub_1000812B4();
}

- (void)appExitedWhileAppeared
{
  selfCopy = self;
  sub_10008058C();
}

@end