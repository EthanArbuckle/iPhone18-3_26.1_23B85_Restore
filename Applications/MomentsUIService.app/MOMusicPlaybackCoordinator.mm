@interface MOMusicPlaybackCoordinator
- (void)nowPlayingItemChangedWithNote:(id)a3;
- (void)playbackStateDidChangeWithNote:(id)a3;
- (void)updateDelegateProgressIndication;
@end

@implementation MOMusicPlaybackCoordinator

- (void)updateDelegateProgressIndication
{

  MOMusicPlaybackCoordinator.updateDelegateProgressIndication()();
}

- (void)playbackStateDidChangeWithNote:(id)a3
{
  v3 = *(*self->_TtCs12_SwiftObject_opaque + 280);

  v3(v4);
}

- (void)nowPlayingItemChangedWithNote:(id)a3
{
  v3 = *(*self->_TtCs12_SwiftObject_opaque + 272);

  v3(v4);
}

@end