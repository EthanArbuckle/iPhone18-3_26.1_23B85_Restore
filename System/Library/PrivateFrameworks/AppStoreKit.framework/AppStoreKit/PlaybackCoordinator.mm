@interface PlaybackCoordinator
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation PlaybackCoordinator

- (void)didEnterBackground
{
  selfCopy = self;
  sub_1E1526A4C();
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_1E1527C90();
}

@end