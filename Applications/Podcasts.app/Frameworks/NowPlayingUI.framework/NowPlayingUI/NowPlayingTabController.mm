@interface NowPlayingTabController
- (void)encodeRestorableStateWithCoder:(id)a3;
@end

@implementation NowPlayingTabController

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  NowPlayingTabController.encodeRestorableState(with:)(v4);
}

@end