@interface MSMessageExtensionBalloonController
- (BOOL)hasLiveView;
- (BOOL)hasSizingInfo;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits datasource:(id)datasource;
- (CKTranscriptPluginView)pluginContentView;
- (MSMessageExtensionBalloonController)initWithDataSource:(id)source isFromMe:(BOOL)me;
- (MSMessageExtensionDataSourceDelegate)previousDelegate;
- (UIColor)messageTintColor;
- (UIViewController)pluginContentViewController;
- (id)extensionLiveViewControllerIfExists;
- (void)clearShelfPayload;
- (void)configureWithConversationID:(id)d recipients:(id)recipients;
- (void)datasourcePayloadDidChange:(id)change updateFlags:(unint64_t)flags;
- (void)dealloc;
- (void)didFinishAnimatedBoundsChange;
- (void)performHostAppResume;
- (void)performHostAppSuspend;
- (void)pluginContentViewDidAppear;
- (void)pluginContentViewWillDisappear;
@end

@implementation MSMessageExtensionBalloonController

- (MSMessageExtensionBalloonController)initWithDataSource:(id)source isFromMe:(BOOL)me
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = MSMessageExtensionBalloonController;
  v8 = [(MSMessageExtensionBalloonController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_fromMe = me;
    objc_storeStrong(&v8->_datasource, source);
    balloonControllerDelegate = [(MSMessageExtensionDataSource *)v9->_datasource balloonControllerDelegate];
    if (balloonControllerDelegate)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeWeak(&v9->_previousDelegate, balloonControllerDelegate);
      }
    }

    [(MSMessageExtensionDataSource *)v9->_datasource setBalloonControllerDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  liveViewController = [(MSMessageExtensionBalloonController *)self liveViewController];
  balloonView = [(MSMessageExtensionBalloonController *)self balloonView];
  WeakRetained = objc_loadWeakRetained(&self->_previousDelegate);

  if (WeakRetained)
  {
    datasource = self->_datasource;
    v7 = objc_loadWeakRetained(&self->_previousDelegate);
    [(MSMessageExtensionDataSource *)datasource setBalloonControllerDelegate:v7];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2384C;
  v12[3] = &unk_4CF20;
  v8 = liveViewController;
  v13 = v8;
  v9 = balloonView;
  v14 = v9;
  v10 = objc_retainBlock(v12);
  if (+[NSThread isMainThread])
  {
    (v10[2])(v10);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v10);
  }

  v11.receiver = self;
  v11.super_class = MSMessageExtensionBalloonController;
  [(MSMessageExtensionBalloonController *)&v11 dealloc];
}

- (void)configureWithConversationID:(id)d recipients:(id)recipients
{
  dCopy = d;
  recipientsCopy = recipients;
  conversationID = [(MSMessageExtensionBalloonController *)self conversationID];
  v9 = conversationID;
  if (dCopy && conversationID && ([dCopy isEqualToString:conversationID] & 1) == 0 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = @"Hmm, we probably don't handle the conversationID for a chat item changing on the fly. Talk to Stephen.";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%@", &v11, 0xCu);
    }
  }

  [(MSMessageExtensionBalloonController *)self setConversationID:dCopy];
  [(MSMessageExtensionBalloonController *)self setRecipients:recipientsCopy];
}

- (CKTranscriptPluginView)pluginContentView
{
  balloonView = self->_balloonView;
  if (!balloonView)
  {
    if (![(MSMessageExtensionBalloonController *)self hasLiveView])
    {
      view = [[MSMessageExtensionBalloonView alloc] initWithFrame:self->_datasource dataSource:[(MSMessageExtensionBalloonController *)self fromMe] fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
LABEL_15:
      [(MSMessageExtensionBalloonController *)self setBalloonView:view];
      [(MSMessageExtensionBalloonView *)view setIsInShelf:[(MSMessageExtensionDataSource *)self->_datasource payloadInShelf]];

      balloonView = self->_balloonView;
      goto LABEL_16;
    }

    pluginPayload = [(MSMessageExtensionDataSource *)self->_datasource pluginPayload];
    pluginBundleID = [pluginPayload pluginBundleID];

    v6 = +[IMBalloonPluginManager sharedInstance];
    v7 = [v6 balloonPluginForBundleID:pluginBundleID];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      extension = [v7 extension];

      v9 = extension == 0;
    }

    else
    {
      v9 = 1;
    }

    identifier = [v7 identifier];
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [identifier isEqualToString:v12];

    if (v13)
    {
      payloadInShelf = [(MSMessageExtensionDataSource *)self->_datasource payloadInShelf];
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      payloadInShelf = 0;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if ((payloadInShelf | [v7 prefersNoLoadingBubbles] ^ 1) != 1)
    {
      v15 = off_4C6D8;
      goto LABEL_14;
    }

LABEL_12:
    v15 = &off_4C6E0;
LABEL_14:
    v16 = objc_alloc(*v15);
    datasource = self->_datasource;
    fromMe = [(MSMessageExtensionBalloonController *)self fromMe];
    conversationID = [(MSMessageExtensionBalloonController *)self conversationID];
    recipients = [(MSMessageExtensionBalloonController *)self recipients];
    v21 = [v16 initWithDataSource:datasource fromMe:fromMe conversationID:conversationID recipients:recipients];
    [(MSMessageExtensionBalloonController *)self setLiveViewController:v21];

    liveViewController = [(MSMessageExtensionBalloonController *)self liveViewController];
    view = [liveViewController view];

    goto LABEL_15;
  }

LABEL_16:

  return balloonView;
}

- (CGSize)sizeThatFits:(CGSize)fits datasource:(id)datasource
{
  height = fits.height;
  width = fits.width;
  datasourceCopy = datasource;
  message = [datasourceCopy message];
  layout = [message layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pluginContentViewController = [(MSMessageExtensionBalloonController *)self pluginContentViewController];
    [pluginContentViewController sizeThatFits:width, height];
    width = v11;
    height = v12;
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    pluginContentViewController = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(pluginContentViewController, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, pluginContentViewController, OS_LOG_TYPE_INFO, "This method was made just to support live layout. This may not be doing what you want", v15, 2u);
    }
  }

LABEL_7:
  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (UIViewController)pluginContentViewController
{
  pluginContentView = [(MSMessageExtensionBalloonController *)self pluginContentView];
  if ([(MSMessageExtensionBalloonController *)self hasLiveView])
  {
    liveViewController = [(MSMessageExtensionBalloonController *)self liveViewController];
  }

  else
  {
    liveViewController = 0;
  }

  return liveViewController;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  pluginContentView = [(MSMessageExtensionBalloonController *)self pluginContentView];
  [pluginContentView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIColor)messageTintColor
{
  if ([(MSMessageExtensionBalloonController *)self hasLiveView]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    messageTintColor = [(MSMessageBalloonLiveViewControllerProtocol *)self->_liveViewController messageTintColor];
  }

  else
  {
    messageTintColor = 0;
  }

  return messageTintColor;
}

- (BOOL)hasSizingInfo
{
  pluginPayload = [(MSMessageExtensionDataSource *)self->_datasource pluginPayload];
  pluginBundleID = [pluginPayload pluginBundleID];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [pluginBundleID isEqualToString:v5];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    extensionLiveViewControllerIfExists = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
    v7 = [extensionLiveViewControllerIfExists needsResize] ^ 1;
  }

  return v7;
}

- (id)extensionLiveViewControllerIfExists
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_liveViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)performHostAppResume
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    messageGUID = [(MSMessageExtensionDataSource *)self->_datasource messageGUID];
    v6 = 138412290;
    v7 = messageGUID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. performHostAppResume reloading remoteView for messageGUID: %@", &v6, 0xCu);
  }

  extensionLiveViewControllerIfExists = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists reloadRemoteViewIsResuming:1];
}

- (void)performHostAppSuspend
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    messageGUID = [(MSMessageExtensionDataSource *)self->_datasource messageGUID];
    v7 = 138412290;
    v8 = messageGUID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. performHostAppSuspend tearing down remoteView for messageGUID: %@", &v7, 0xCu);
  }

  extensionLiveViewControllerIfExists = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists requestSnapshot];

  extensionLiveViewControllerIfExists2 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists2 tearDownRemoteView];
}

- (void)pluginContentViewDidAppear
{
  extensionLiveViewControllerIfExists = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists didFinishAnimatedBoundsChange];
}

- (void)pluginContentViewWillDisappear
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    messageGUID = [(MSMessageExtensionDataSource *)self->_datasource messageGUID];
    v7 = 138412290;
    v8 = messageGUID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. pluginContentViewWillDisappear tearing down remoteView for messageGUID: %@", &v7, 0xCu);
  }

  extensionLiveViewControllerIfExists = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists requestSnapshot];

  extensionLiveViewControllerIfExists2 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists2 tearDownRemoteView];
}

- (void)didFinishAnimatedBoundsChange
{
  extensionLiveViewControllerIfExists = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [extensionLiveViewControllerIfExists didFinishAnimatedBoundsChange];
}

- (void)clearShelfPayload
{
  liveViewController = [(MSMessageExtensionBalloonController *)self liveViewController];
  [liveViewController clearShelfPayload];
}

- (void)datasourcePayloadDidChange:(id)change updateFlags:(unint64_t)flags
{
  flagsCopy = flags;
  changeCopy = change;
  balloonView = [(MSMessageExtensionBalloonController *)self balloonView];
  [balloonView dataSourcePluginPayloadDidChange:changeCopy didUpdateData:(flagsCopy & 0x11) != 0];
}

- (BOOL)hasLiveView
{
  message = [(MSMessageExtensionDataSource *)self->_datasource message];
  layout = [message layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (MSMessageExtensionDataSourceDelegate)previousDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previousDelegate);

  return WeakRetained;
}

@end