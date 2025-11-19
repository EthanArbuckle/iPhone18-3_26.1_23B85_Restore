@interface MSMessageExtensionBalloonController
- (BOOL)hasLiveView;
- (BOOL)hasSizingInfo;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 datasource:(id)a4;
- (CKTranscriptPluginView)pluginContentView;
- (MSMessageExtensionBalloonController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4;
- (MSMessageExtensionDataSourceDelegate)previousDelegate;
- (UIColor)messageTintColor;
- (UIViewController)pluginContentViewController;
- (id)extensionLiveViewControllerIfExists;
- (void)clearShelfPayload;
- (void)configureWithConversationID:(id)a3 recipients:(id)a4;
- (void)datasourcePayloadDidChange:(id)a3 updateFlags:(unint64_t)a4;
- (void)dealloc;
- (void)didFinishAnimatedBoundsChange;
- (void)performHostAppResume;
- (void)performHostAppSuspend;
- (void)pluginContentViewDidAppear;
- (void)pluginContentViewWillDisappear;
@end

@implementation MSMessageExtensionBalloonController

- (MSMessageExtensionBalloonController)initWithDataSource:(id)a3 isFromMe:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MSMessageExtensionBalloonController;
  v8 = [(MSMessageExtensionBalloonController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_fromMe = a4;
    objc_storeStrong(&v8->_datasource, a3);
    v10 = [(MSMessageExtensionDataSource *)v9->_datasource balloonControllerDelegate];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeWeak(&v9->_previousDelegate, v10);
      }
    }

    [(MSMessageExtensionDataSource *)v9->_datasource setBalloonControllerDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(MSMessageExtensionBalloonController *)self liveViewController];
  v4 = [(MSMessageExtensionBalloonController *)self balloonView];
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
  v8 = v3;
  v13 = v8;
  v9 = v4;
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

- (void)configureWithConversationID:(id)a3 recipients:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSMessageExtensionBalloonController *)self conversationID];
  v9 = v8;
  if (v6 && v8 && ([v6 isEqualToString:v8] & 1) == 0 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = @"Hmm, we probably don't handle the conversationID for a chat item changing on the fly. Talk to Stephen.";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%@", &v11, 0xCu);
    }
  }

  [(MSMessageExtensionBalloonController *)self setConversationID:v6];
  [(MSMessageExtensionBalloonController *)self setRecipients:v7];
}

- (CKTranscriptPluginView)pluginContentView
{
  balloonView = self->_balloonView;
  if (!balloonView)
  {
    if (![(MSMessageExtensionBalloonController *)self hasLiveView])
    {
      v10 = [[MSMessageExtensionBalloonView alloc] initWithFrame:self->_datasource dataSource:[(MSMessageExtensionBalloonController *)self fromMe] fromMe:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
LABEL_15:
      [(MSMessageExtensionBalloonController *)self setBalloonView:v10];
      [(MSMessageExtensionBalloonView *)v10 setIsInShelf:[(MSMessageExtensionDataSource *)self->_datasource payloadInShelf]];

      balloonView = self->_balloonView;
      goto LABEL_16;
    }

    v4 = [(MSMessageExtensionDataSource *)self->_datasource pluginPayload];
    v5 = [v4 pluginBundleID];

    v6 = +[IMBalloonPluginManager sharedInstance];
    v7 = [v6 balloonPluginForBundleID:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 extension];

      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = [v7 identifier];
    v12 = IMBalloonExtensionIDWithSuffix();
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = [(MSMessageExtensionDataSource *)self->_datasource payloadInShelf];
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if ((v14 | [v7 prefersNoLoadingBubbles] ^ 1) != 1)
    {
      v15 = off_4C6D8;
      goto LABEL_14;
    }

LABEL_12:
    v15 = &off_4C6E0;
LABEL_14:
    v16 = objc_alloc(*v15);
    datasource = self->_datasource;
    v18 = [(MSMessageExtensionBalloonController *)self fromMe];
    v19 = [(MSMessageExtensionBalloonController *)self conversationID];
    v20 = [(MSMessageExtensionBalloonController *)self recipients];
    v21 = [v16 initWithDataSource:datasource fromMe:v18 conversationID:v19 recipients:v20];
    [(MSMessageExtensionBalloonController *)self setLiveViewController:v21];

    v22 = [(MSMessageExtensionBalloonController *)self liveViewController];
    v10 = [v22 view];

    goto LABEL_15;
  }

LABEL_16:

  return balloonView;
}

- (CGSize)sizeThatFits:(CGSize)a3 datasource:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [v7 message];
  v9 = [v8 layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(MSMessageExtensionBalloonController *)self pluginContentViewController];
    [v10 sizeThatFits:width, height];
    width = v11;
    height = v12;
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "This method was made just to support live layout. This may not be doing what you want", v15, 2u);
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
  v3 = [(MSMessageExtensionBalloonController *)self pluginContentView];
  if ([(MSMessageExtensionBalloonController *)self hasLiveView])
  {
    v4 = [(MSMessageExtensionBalloonController *)self liveViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MSMessageExtensionBalloonController *)self pluginContentView];
  [v5 sizeThatFits:{width, height}];
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
    v3 = [(MSMessageBalloonLiveViewControllerProtocol *)self->_liveViewController messageTintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasSizingInfo
{
  v3 = [(MSMessageExtensionDataSource *)self->_datasource pluginPayload];
  v4 = [v3 pluginBundleID];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
    v7 = [v8 needsResize] ^ 1;
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
    v4 = [(MSMessageExtensionDataSource *)self->_datasource messageGUID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. performHostAppResume reloading remoteView for messageGUID: %@", &v6, 0xCu);
  }

  v5 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v5 reloadRemoteViewIsResuming:1];
}

- (void)performHostAppSuspend
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSMessageExtensionDataSource *)self->_datasource messageGUID];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. performHostAppSuspend tearing down remoteView for messageGUID: %@", &v7, 0xCu);
  }

  v5 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v5 requestSnapshot];

  v6 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v6 tearDownRemoteView];
}

- (void)pluginContentViewDidAppear
{
  v2 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v2 didFinishAnimatedBoundsChange];
}

- (void)pluginContentViewWillDisappear
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSMessageExtensionDataSource *)self->_datasource messageGUID];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. pluginContentViewWillDisappear tearing down remoteView for messageGUID: %@", &v7, 0xCu);
  }

  v5 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v5 requestSnapshot];

  v6 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v6 tearDownRemoteView];
}

- (void)didFinishAnimatedBoundsChange
{
  v2 = [(MSMessageExtensionBalloonController *)self extensionLiveViewControllerIfExists];
  [v2 didFinishAnimatedBoundsChange];
}

- (void)clearShelfPayload
{
  v2 = [(MSMessageExtensionBalloonController *)self liveViewController];
  [v2 clearShelfPayload];
}

- (void)datasourcePayloadDidChange:(id)a3 updateFlags:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MSMessageExtensionBalloonController *)self balloonView];
  [v7 dataSourcePluginPayloadDidChange:v6 didUpdateData:(v4 & 0x11) != 0];
}

- (BOOL)hasLiveView
{
  v2 = [(MSMessageExtensionDataSource *)self->_datasource message];
  v3 = [v2 layout];
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