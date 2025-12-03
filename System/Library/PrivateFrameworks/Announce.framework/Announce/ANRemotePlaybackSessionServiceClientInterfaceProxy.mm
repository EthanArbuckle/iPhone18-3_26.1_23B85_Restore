@interface ANRemotePlaybackSessionServiceClientInterfaceProxy
- (ANRemotePlaybackSessionServiceClientInterface)delegate;
- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d;
- (void)didUpdateAnnouncements:(id)announcements forGroupID:(id)d;
@end

@implementation ANRemotePlaybackSessionServiceClientInterfaceProxy

- (void)didUpdateAnnouncements:(id)announcements forGroupID:(id)d
{
  dCopy = d;
  announcementsCopy = announcements;
  delegate = [(ANRemotePlaybackSessionServiceClientInterfaceProxy *)self delegate];
  [delegate didUpdateAnnouncements:announcementsCopy forGroupID:dCopy];
}

- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d
{
  dCopy = d;
  announcementCopy = announcement;
  delegate = [(ANRemotePlaybackSessionServiceClientInterfaceProxy *)self delegate];
  [delegate didReceiveAnnouncement:announcementCopy forGroupID:dCopy];
}

- (ANRemotePlaybackSessionServiceClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end