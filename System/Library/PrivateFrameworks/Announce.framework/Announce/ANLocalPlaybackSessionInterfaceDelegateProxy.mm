@interface ANLocalPlaybackSessionInterfaceDelegateProxy
- (ANLocalPlaybackSessionServiceInterfaceDelegate)delegate;
- (void)announcementsStateUpdate:(unint64_t)a3;
- (void)announcementsWillStartPlaying:(unint64_t)a3;
- (void)didReceiveAnnouncement:(id)a3 forGroupID:(id)a4;
- (void)didUpdatePlaybackInfo:(id)a3;
@end

@implementation ANLocalPlaybackSessionInterfaceDelegateProxy

- (void)announcementsWillStartPlaying:(unint64_t)a3
{
  v4 = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [v4 announcementsWillStartPlaying:a3];
}

- (void)announcementsStateUpdate:(unint64_t)a3
{
  v4 = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [v4 announcementsStateUpdate:a3];
}

- (void)didReceiveAnnouncement:(id)a3 forGroupID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [v8 didReceiveAnnouncement:v7 forGroupID:v6];
}

- (void)didUpdatePlaybackInfo:(id)a3
{
  v4 = a3;
  v5 = [(ANLocalPlaybackSessionInterfaceDelegateProxy *)self delegate];
  [v5 didUpdatePlaybackInfo:v4];
}

- (ANLocalPlaybackSessionServiceInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end