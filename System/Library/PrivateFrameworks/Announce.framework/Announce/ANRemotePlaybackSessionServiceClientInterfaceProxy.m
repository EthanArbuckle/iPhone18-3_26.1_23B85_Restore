@interface ANRemotePlaybackSessionServiceClientInterfaceProxy
- (ANRemotePlaybackSessionServiceClientInterface)delegate;
- (void)didReceiveAnnouncement:(id)a3 forGroupID:(id)a4;
- (void)didUpdateAnnouncements:(id)a3 forGroupID:(id)a4;
@end

@implementation ANRemotePlaybackSessionServiceClientInterfaceProxy

- (void)didUpdateAnnouncements:(id)a3 forGroupID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ANRemotePlaybackSessionServiceClientInterfaceProxy *)self delegate];
  [v8 didUpdateAnnouncements:v7 forGroupID:v6];
}

- (void)didReceiveAnnouncement:(id)a3 forGroupID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ANRemotePlaybackSessionServiceClientInterfaceProxy *)self delegate];
  [v8 didReceiveAnnouncement:v7 forGroupID:v6];
}

- (ANRemotePlaybackSessionServiceClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end