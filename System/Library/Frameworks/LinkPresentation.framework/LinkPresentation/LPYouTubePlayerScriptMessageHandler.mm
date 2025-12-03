@interface LPYouTubePlayerScriptMessageHandler
- (LPYouTubePlayerScriptMessageHandler)initWithPlayerView:(id)view;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation LPYouTubePlayerScriptMessageHandler

- (LPYouTubePlayerScriptMessageHandler)initWithPlayerView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = LPYouTubePlayerScriptMessageHandler;
  v5 = [(LPYouTubePlayerScriptMessageHandler *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  [WeakRetained didReceiveScriptMessage:messageCopy];
}

@end