@interface ANLocalPlaybackSessionInterfaceDelegateProxy
- (ANLocalPlaybackSessionServiceInterfaceDelegate)delegate;
- (void)announcementsStateUpdate:(unint64_t)update;
- (void)announcementsWillStartPlaying:(unint64_t)playing;
- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d;
- (void)didUpdatePlaybackInfo:(id)info;
@end

@implementation ANLocalPlaybackSessionInterfaceDelegateProxy

- (void)announcementsWillStartPlaying:(unint64_t)playing
{
  delegate = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [delegate announcementsWillStartPlaying:playing];
}

- (void)announcementsStateUpdate:(unint64_t)update
{
  delegate = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [delegate announcementsStateUpdate:update];
}

- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d
{
  dCopy = d;
  announcementCopy = announcement;
  delegate = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [delegate didReceiveAnnouncement:announcementCopy forGroupID:dCopy];
}

- (void)didUpdatePlaybackInfo:(id)info
{
  infoCopy = info;
  delegate = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [delegate didUpdatePlaybackInfo:infoCopy];
}

- (ANLocalPlaybackSessionServiceInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end