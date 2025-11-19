@interface PlaybackCoordinator
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation PlaybackCoordinator

- (void)didEnterBackground
{
  v2 = self;
  sub_1E1526A4C();
}

- (void)willEnterForeground
{
  v2 = self;
  sub_1E1527C90();
}

@end