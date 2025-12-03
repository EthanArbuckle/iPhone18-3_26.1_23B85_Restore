@interface NowPlayingTabController
- (void)encodeRestorableStateWithCoder:(id)coder;
@end

@implementation NowPlayingTabController

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NowPlayingTabController.encodeRestorableState(with:)(coderCopy);
}

@end