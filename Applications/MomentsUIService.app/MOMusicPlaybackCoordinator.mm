@interface MOMusicPlaybackCoordinator
- (void)nowPlayingItemChangedWithNote:(id)note;
- (void)playbackStateDidChangeWithNote:(id)note;
- (void)updateDelegateProgressIndication;
@end

@implementation MOMusicPlaybackCoordinator

- (void)updateDelegateProgressIndication
{

  MOMusicPlaybackCoordinator.updateDelegateProgressIndication()();
}

- (void)playbackStateDidChangeWithNote:(id)note
{
  v3 = *(*self->_TtCs12_SwiftObject_opaque + 280);

  v3(v4);
}

- (void)nowPlayingItemChangedWithNote:(id)note
{
  v3 = *(*self->_TtCs12_SwiftObject_opaque + 272);

  v3(v4);
}

@end