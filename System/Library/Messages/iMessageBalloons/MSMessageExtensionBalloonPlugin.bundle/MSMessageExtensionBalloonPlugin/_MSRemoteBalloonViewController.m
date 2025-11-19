@interface _MSRemoteBalloonViewController
- (BOOL)_extensionLinkedBeforeSDKVersion:(id)a3;
- (BOOL)_linkedBeforeSDKVersion:(id)a3;
- (BOOL)isReadyToDisplay;
- (BOOL)needsSizeMatchBeforeSnapshotSwap;
- (BOOL)providesExplicitSizeSnapshot;
- (NSCopying)requestUUID;
- (_MSRemoteBalloonViewController)initWithExtension:(id)a3 identifier:(id)a4;
- (_MSRemoteBalloonViewController)initWithPlugin:(id)a3 identifier:(id)a4;
- (_MSRemoteBalloonViewControllerDelegate)delegate;
- (id)extensionContext;
- (id)remoteProxy;
- (void)_sendResignActiveMessage;
- (void)_updateBackwardsCompatibilityConstraintsWithInsets:(UIEdgeInsets)a3;
- (void)becomeActiveWithConversationState:(id)a3 liveEditableInEntryView:(BOOL)a4;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)a3;
- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4;
- (void)handleRemoteInterruption;
- (void)loadRemoteView;
- (void)loadView;
- (void)purgeRemoteViewController;
- (void)setNeedsSizeMatchBeforeSnapshotSwap:(BOOL)a3;
- (void)setProvidesExplicitSizeSnapshot:(BOOL)a3;
- (void)setReadyToDisplay:(BOOL)a3;
- (void)setRemoteViewController:(id)a3;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)unloadRemoteView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _MSRemoteBalloonViewController

- (_MSRemoteBalloonViewController)initWithExtension:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _MSRemoteBalloonViewController;
  v9 = [(_MSRemoteBalloonViewController *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_extension, a3);
  }

  return v9;
}

- (_MSRemoteBalloonViewController)initWithPlugin:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _MSRemoteBalloonViewController;
  v9 = [(_MSRemoteBalloonViewController *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_plugin, a3);
  }

  return v9;
}

- (BOOL)isReadyToDisplay
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    return [(UIViewController *)remoteViewController isReadyToDisplay];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_remoteViewController;

      return [(UIViewController *)v5 isReadyForDisplay];
    }

    else
    {
      return 1;
    }
  }
}

- (BOOL)providesExplicitSizeSnapshot
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  remoteViewController = self->_remoteViewController;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 1;
    }

    remoteViewController = self->_remoteViewController;
  }

  return [(UIViewController *)remoteViewController providesExplicitSizeSnapshot];
}

- (void)setProvidesExplicitSizeSnapshot:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    [(UIViewController *)remoteViewController setProvidesExplicitSizeSnapshot:v3];
  }
}

- (BOOL)needsSizeMatchBeforeSnapshotSwap
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  remoteViewController = self->_remoteViewController;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 1;
    }

    remoteViewController = self->_remoteViewController;
  }

  return [(UIViewController *)remoteViewController needsSizeMatchBeforeSnapshotSwap];
}

- (void)setNeedsSizeMatchBeforeSnapshotSwap:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    [(UIViewController *)remoteViewController setNeedsSizeMatchBeforeSnapshotSwap:v3];
  }
}

- (void)setReadyToDisplay:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    [(UIViewController *)remoteViewController setReadyToDisplay:v3];
  }
}

- (void)handleRemoteInterruption
{
  extension = self->_extension;
  v4 = [(_MSRemoteBalloonViewController *)self requestUUID];
  [(NSExtension *)extension cancelExtensionRequestWithIdentifier:v4];

  [(_MSRemoteBalloonViewController *)self setRemoteViewController:0];
  v5 = [(_MSRemoteBalloonViewController *)self delegate];
  v8 = [v5 remoteBalloonViewControllerContextIdentifier:self];

  v6 = [_MSRemoteBalloonViewControllerManager viewControllerKeyForMessageIdentifier:self->_identifier contextIdentifier:v8];
  v7 = +[_MSRemoteBalloonViewControllerManager sharedInstance];
  [v7 removeViewControllerWithIdentifier:v6];
}

- (void)purgeRemoteViewController
{
  v3 = [(_MSRemoteBalloonViewController *)self delegate];
  v6 = [v3 remoteBalloonViewControllerContextIdentifier:self];

  v4 = [_MSRemoteBalloonViewControllerManager viewControllerKeyForMessageIdentifier:self->_identifier contextIdentifier:v6];
  v5 = +[_MSRemoteBalloonViewControllerManager sharedInstance];
  [v5 removeViewControllerWithIdentifier:v4];
}

- (void)becomeActiveWithConversationState:(id)a3 liveEditableInEntryView:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_conversationState, a3);
  v8 = objc_alloc_init(_MSPresentationState);
  v9 = [(IMBalloonAppExtension *)self->_plugin extensionIdentifier];
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [v9 isEqualToString:v10];

  if ((v11 & v4) != 0)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  [v8 setPresentationStyle:v12];
  v13 = [(_MSRemoteBalloonViewController *)self _linkedBeforeSDKVersion:@"19.0"];
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  if (v13)
  {
    v16 = ms_defaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = self;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Using backwards compatibility offsets", buf, 0xCu);
    }

    v17 = [v7 activeMessage];
    v18 = [v17 isFromMe];

    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 pluginBackwardsCompatibilityLeadingTrailingOffset];
    v21 = -v20;

    if (v18)
    {
      right = v21;
    }

    else
    {
      left = v21;
    }

    v22 = +[CKUIBehavior sharedBehaviors];
    [v22 pluginBackwardsCompatibilityBottomOffset];
    bottom = -v23;
  }

  else
  {
    bottom = UIEdgeInsetsZero.bottom;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11114;
  block[3] = &unk_4D418;
  top = UIEdgeInsetsZero.top;
  v31 = left;
  v32 = bottom;
  v33 = right;
  block[4] = self;
  v28 = v7;
  v29 = v8;
  v25 = v8;
  v26 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateBackwardsCompatibilityConstraintsWithInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(_MSRemoteBalloonViewController *)self view];
  v9 = [v8 _shouldReverseLayoutDirection];

  [(NSLayoutConstraint *)self->_topRemoteViewConstraint setConstant:top];
  [(NSLayoutConstraint *)self->_bottomRemoteViewConstraint setConstant:bottom];
  if (v9)
  {
    v10 = right;
  }

  else
  {
    v10 = left;
  }

  if (v9)
  {
    right = left;
  }

  [(NSLayoutConstraint *)self->_leadingRemoteViewConstraint setConstant:v10];
  trailingRemoteViewConstraint = self->_trailingRemoteViewConstraint;

  [(NSLayoutConstraint *)trailingRemoteViewConstraint setConstant:right];
}

- (void)fetchInternalMessageStateForDraft:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [v7 fetchInternalMessageStateForDraft:v4 completion:v6];
}

- (void)setShouldPerformSendAnimationOnAppear
{
  self->_shouldPerformSendAnimationOnAppear = 1;
  v2 = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [v2 setShouldPerformSendAnimationOnAppear];
}

- (void)didChangeBackgroundLuminance:(double)a3
{
  self->_backgroundLuminance = a3;
  v4 = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [v4 didChangeBackgroundLuminance:a3];
}

- (id)extensionContext
{
  extension = self->_extension;
  remoteViewController = self->_remoteViewController;
  if (extension)
  {
    v4 = remoteViewController;
    v5 = [(UIViewController *)v4 requestUUID];
    v6 = [(NSExtension *)extension _extensionContextForUUID:v5];
  }

  else
  {
    v5 = [(UIViewController *)remoteViewController appContext];
    v6 = [v5 hostContext];
  }

  return v6;
}

- (id)remoteProxy
{
  extension = self->_extension;
  remoteViewController = self->_remoteViewController;
  if (extension)
  {
    v4 = remoteViewController;
    v5 = [(UIViewController *)v4 requestUUID];
    v6 = [(NSExtension *)extension _extensionContextForUUID:v5];

    v7 = [v6 _auxiliaryConnection];
    v8 = [v7 remoteObjectProxy];
  }

  else
  {
    v8 = [(UIViewController *)remoteViewController appContext];
  }

  return v8;
}

- (void)dealloc
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[_MSRemoteBalloonViewController dealloc]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(_MSRemoteBalloonViewController *)self unloadRemoteView];
  v4.receiver = self;
  v4.super_class = _MSRemoteBalloonViewController;
  [(_MSRemoteBalloonViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _MSRemoteBalloonViewController;
  [(_MSRemoteBalloonViewController *)&v4 viewDidLoad];
  v3 = [(_MSRemoteBalloonViewController *)self view];
  [v3 setUserInteractionEnabled:1];
}

- (void)loadView
{
  v3 = objc_alloc_init(_MSBlurCapableView);
  [(_MSRemoteBalloonViewController *)self setView:v3];
}

- (void)loadRemoteView
{
  if (self->_extension)
  {
    objc_initWeak(&location, self);
    v3 = [NSString stringWithFormat:@"%p", self];
    v4 = self->_identifier;
    v22 = self->_extension;
    v5 = objc_alloc_init(NSExtensionItem);
    v30 = _MSExtensionItemWantsLiveViewKey;
    v6 = [NSNumber numberWithBool:1];
    v31 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v5 setUserInfo:v7];

    v8 = +[_MSRemoteBalloonViewControllerManager sharedInstance];
    extension = self->_extension;
    identifier = self->_identifier;
    v11 = [(_MSRemoteBalloonViewController *)self delegate];
    v12 = [v11 remoteBalloonViewControllerContextIdentifier:self];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_119F0;
    v24[3] = &unk_4D440;
    objc_copyWeak(&v28, &location);
    v13 = v3;
    v25 = v13;
    v14 = v4;
    v26 = v14;
    v15 = v22;
    v27 = v15;
    [v8 getRemoteViewControllerForExtension:extension messageIdentifier:identifier contextIdentifier:v12 item:v5 connectionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else if (!self->_remoteViewController)
  {
    v16 = [(IMBalloonAppExtension *)self->_plugin appBundle];
    v23 = objc_alloc_init([v16 principalClass]);

    v17 = [[_MSMessageAppBundleContext alloc] initWithViewController:v23 wantsLiveView:1];
    v18 = [[_MSMessageAppContext alloc] initWithAppContext:v17];
    [v23 setAppContext:v18];

    appContext = self->_appContext;
    self->_appContext = v17;
    v20 = v17;

    [v23 setBackgroundLuminance:self->_backgroundLuminance];
    v21 = [[_MSMessageAppBundleHostContext alloc] initWithAppContext:0];
    [(_MSMessageComposeExtensionImplProtocol *)v20 setHostContext:v21];

    [(_MSRemoteBalloonViewController *)self setRemoteViewController:v23];
  }
}

- (void)unloadRemoteView
{
  if (self->_remoteViewController)
  {
    v3 = ms_defaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      remoteViewController = self->_remoteViewController;
      identifier = self->_identifier;
      v8 = 134218498;
      v9 = self;
      v10 = 2048;
      v11 = remoteViewController;
      v12 = 2112;
      v13 = identifier;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Unloading remote view: %p messageGUID: %@", &v8, 0x20u);
    }

    [(_MSRemoteBalloonViewController *)self _sendResignActiveMessage];
    extension = self->_extension;
    v7 = [(_MSRemoteBalloonViewController *)self requestUUID];
    [(NSExtension *)extension cancelExtensionRequestWithIdentifier:v7];

    [(_MSRemoteBalloonViewController *)self setRemoteViewController:0];
  }
}

- (void)_sendResignActiveMessage
{
  v3 = ms_traceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2CF60(v3);
  }

  v4 = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [v4 _resignActive];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _MSRemoteBalloonViewController;
  [(_MSRemoteBalloonViewController *)&v6 viewWillAppear:a3];
  if (!self->_remoteViewController)
  {
    [(_MSRemoteBalloonViewController *)self loadRemoteView];
    v4 = ms_defaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 134218242;
      v8 = self;
      v9 = 2112;
      v10 = identifier;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Loading remote view for messageGUID: %@", buf, 0x16u);
    }
  }
}

- (NSCopying)requestUUID
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIViewController *)self->_remoteViewController requestUUID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRemoteViewController:(id)a3
{
  v5 = a3;
  remoteViewController = self->_remoteViewController;
  if (remoteViewController != v5)
  {
    if (remoteViewController)
    {
      v7 = [(UIViewController *)remoteViewController parentViewController];

      if (v7 == self)
      {
        [(UIViewController *)self->_remoteViewController willMoveToParentViewController:0];
        v8 = [(UIViewController *)self->_remoteViewController view];
        [v8 removeFromSuperview];

        [(UIViewController *)self->_remoteViewController removeFromParentViewController];
      }
    }

    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_remoteViewController;
      identifier = self->_identifier;
      *buf = 134218754;
      v43 = self;
      v44 = 2048;
      v45 = v5;
      v46 = 2048;
      v47 = v10;
      v48 = 2112;
      v49 = identifier;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Setting new remoteViewController: %p, old: %p, messageGUID: %@", buf, 0x2Au);
    }

    objc_storeStrong(&self->_remoteViewController, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = self->_remoteViewController;
      [(UIViewController *)v12 setServiceViewShouldShareTouchesWithHost:1];
      [(UIViewController *)v12 setIntent:1];
    }

    if (self->_remoteViewController)
    {
      if (objc_opt_respondsToSelector())
      {
        [(UIViewController *)self->_remoteViewController didChangeBackgroundLuminance:self->_backgroundLuminance];
      }

      v13 = [(_MSRemoteBalloonViewController *)self delegate];
      [v13 remoteBalloonViewControllerWillLoad:self];

      if (self->_shouldPerformSendAnimationOnAppear && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(UIViewController *)self->_remoteViewController setShouldPerformSendAnimationOnAppear];
      }

      [(_MSRemoteBalloonViewController *)self addChildViewController:self->_remoteViewController];
      v14 = [(UIViewController *)self->_remoteViewController view];
      [v14 setUserInteractionEnabled:1];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [(_MSRemoteBalloonViewController *)self view];
      [v15 bounds];
      [v14 setFrame:?];

      v16 = [(_MSRemoteBalloonViewController *)self view];
      [v16 addSubview:v14];

      v17 = [(_MSRemoteBalloonViewController *)self view];
      v18 = [v17 topAnchor];
      v19 = [v14 topAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];
      topRemoteViewConstraint = self->_topRemoteViewConstraint;
      self->_topRemoteViewConstraint = v20;

      v22 = [v14 bottomAnchor];
      v23 = [(_MSRemoteBalloonViewController *)self view];
      v24 = [v23 bottomAnchor];
      v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
      bottomRemoteViewConstraint = self->_bottomRemoteViewConstraint;
      self->_bottomRemoteViewConstraint = v25;

      v27 = [v14 leadingAnchor];
      v28 = [(_MSRemoteBalloonViewController *)self view];
      v29 = [v28 leadingAnchor];
      v30 = [v27 constraintEqualToAnchor:v29 constant:0.0];
      leadingRemoteViewConstraint = self->_leadingRemoteViewConstraint;
      self->_leadingRemoteViewConstraint = v30;

      v32 = [(_MSRemoteBalloonViewController *)self view];
      v33 = [v32 trailingAnchor];
      v34 = [v14 trailingAnchor];
      v35 = [v33 constraintEqualToAnchor:v34 constant:0.0];
      trailingRemoteViewConstraint = self->_trailingRemoteViewConstraint;
      self->_trailingRemoteViewConstraint = v35;

      v37 = self->_bottomRemoteViewConstraint;
      v41[0] = self->_topRemoteViewConstraint;
      v41[1] = v37;
      v38 = self->_trailingRemoteViewConstraint;
      v41[2] = self->_leadingRemoteViewConstraint;
      v41[3] = v38;
      v39 = [NSArray arrayWithObjects:v41 count:4];
      [NSLayoutConstraint activateConstraints:v39];

      [(UIViewController *)self->_remoteViewController didMoveToParentViewController:self];
      v40 = [(_MSRemoteBalloonViewController *)self delegate];
      [v40 remoteBalloonViewControllerDidLoad:self];
    }
  }
}

- (BOOL)_linkedBeforeSDKVersion:(id)a3
{
  v4 = a3;
  plugin = self->_plugin;
  if (plugin)
  {
    v6 = [(IMBalloonAppExtension *)plugin linkedBeforeSDKVersion:v4];
  }

  else
  {
    if (!self->_extension)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [(_MSRemoteBalloonViewController *)self _extensionLinkedBeforeSDKVersion:v4];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (BOOL)_extensionLinkedBeforeSDKVersion:(id)a3
{
  v4 = a3;
  extension = self->_extension;
  if (extension)
  {
    v6 = [(NSExtension *)extension infoDictionary];
    v7 = [v6 objectForKeyedSubscript:@"LSExecutableSDKVersion"];
    v8 = v7;
    if (v7 && [v7 length])
    {
      *buf = 0u;
      v12 = 0u;
      _LSVersionNumberMakeWithString();
      _LSVersionNumberMakeWithString();
      v9 = _LSVersionNumberCompare() == -1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = ms_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LiveBubble. No extension found for link check, returning NO", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (_MSRemoteBalloonViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end