@interface _MSRemoteBalloonViewController
- (BOOL)_extensionLinkedBeforeSDKVersion:(id)version;
- (BOOL)_linkedBeforeSDKVersion:(id)version;
- (BOOL)isReadyToDisplay;
- (BOOL)needsSizeMatchBeforeSnapshotSwap;
- (BOOL)providesExplicitSizeSnapshot;
- (NSCopying)requestUUID;
- (_MSRemoteBalloonViewController)initWithExtension:(id)extension identifier:(id)identifier;
- (_MSRemoteBalloonViewController)initWithPlugin:(id)plugin identifier:(id)identifier;
- (_MSRemoteBalloonViewControllerDelegate)delegate;
- (id)extensionContext;
- (id)remoteProxy;
- (void)_sendResignActiveMessage;
- (void)_updateBackwardsCompatibilityConstraintsWithInsets:(UIEdgeInsets)insets;
- (void)becomeActiveWithConversationState:(id)state liveEditableInEntryView:(BOOL)view;
- (void)dealloc;
- (void)didChangeBackgroundLuminance:(double)luminance;
- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion;
- (void)handleRemoteInterruption;
- (void)loadRemoteView;
- (void)loadView;
- (void)purgeRemoteViewController;
- (void)setNeedsSizeMatchBeforeSnapshotSwap:(BOOL)swap;
- (void)setProvidesExplicitSizeSnapshot:(BOOL)snapshot;
- (void)setReadyToDisplay:(BOOL)display;
- (void)setRemoteViewController:(id)controller;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)unloadRemoteView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _MSRemoteBalloonViewController

- (_MSRemoteBalloonViewController)initWithExtension:(id)extension identifier:(id)identifier
{
  extensionCopy = extension;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = _MSRemoteBalloonViewController;
  v9 = [(_MSRemoteBalloonViewController *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_extension, extension);
  }

  return v9;
}

- (_MSRemoteBalloonViewController)initWithPlugin:(id)plugin identifier:(id)identifier
{
  pluginCopy = plugin;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = _MSRemoteBalloonViewController;
  v9 = [(_MSRemoteBalloonViewController *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_plugin, plugin);
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

- (void)setProvidesExplicitSizeSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    [(UIViewController *)remoteViewController setProvidesExplicitSizeSnapshot:snapshotCopy];
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

- (void)setNeedsSizeMatchBeforeSnapshotSwap:(BOOL)swap
{
  swapCopy = swap;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    [(UIViewController *)remoteViewController setNeedsSizeMatchBeforeSnapshotSwap:swapCopy];
  }
}

- (void)setReadyToDisplay:(BOOL)display
{
  displayCopy = display;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteViewController = self->_remoteViewController;

    [(UIViewController *)remoteViewController setReadyToDisplay:displayCopy];
  }
}

- (void)handleRemoteInterruption
{
  extension = self->_extension;
  requestUUID = [(_MSRemoteBalloonViewController *)self requestUUID];
  [(NSExtension *)extension cancelExtensionRequestWithIdentifier:requestUUID];

  [(_MSRemoteBalloonViewController *)self setRemoteViewController:0];
  delegate = [(_MSRemoteBalloonViewController *)self delegate];
  v8 = [delegate remoteBalloonViewControllerContextIdentifier:self];

  v6 = [_MSRemoteBalloonViewControllerManager viewControllerKeyForMessageIdentifier:self->_identifier contextIdentifier:v8];
  v7 = +[_MSRemoteBalloonViewControllerManager sharedInstance];
  [v7 removeViewControllerWithIdentifier:v6];
}

- (void)purgeRemoteViewController
{
  delegate = [(_MSRemoteBalloonViewController *)self delegate];
  v6 = [delegate remoteBalloonViewControllerContextIdentifier:self];

  v4 = [_MSRemoteBalloonViewControllerManager viewControllerKeyForMessageIdentifier:self->_identifier contextIdentifier:v6];
  v5 = +[_MSRemoteBalloonViewControllerManager sharedInstance];
  [v5 removeViewControllerWithIdentifier:v4];
}

- (void)becomeActiveWithConversationState:(id)state liveEditableInEntryView:(BOOL)view
{
  viewCopy = view;
  stateCopy = state;
  objc_storeStrong(&self->_conversationState, state);
  v8 = objc_alloc_init(_MSPresentationState);
  extensionIdentifier = [(IMBalloonAppExtension *)self->_plugin extensionIdentifier];
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [extensionIdentifier isEqualToString:v10];

  if ((v11 & viewCopy) != 0)
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
      selfCopy = self;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Using backwards compatibility offsets", buf, 0xCu);
    }

    activeMessage = [stateCopy activeMessage];
    isFromMe = [activeMessage isFromMe];

    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 pluginBackwardsCompatibilityLeadingTrailingOffset];
    v21 = -v20;

    if (isFromMe)
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
  v28 = stateCopy;
  v29 = v8;
  v25 = v8;
  v26 = stateCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateBackwardsCompatibilityConstraintsWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  view = [(_MSRemoteBalloonViewController *)self view];
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

  [(NSLayoutConstraint *)self->_topRemoteViewConstraint setConstant:top];
  [(NSLayoutConstraint *)self->_bottomRemoteViewConstraint setConstant:bottom];
  if (_shouldReverseLayoutDirection)
  {
    v10 = right;
  }

  else
  {
    v10 = left;
  }

  if (_shouldReverseLayoutDirection)
  {
    right = left;
  }

  [(NSLayoutConstraint *)self->_leadingRemoteViewConstraint setConstant:v10];
  trailingRemoteViewConstraint = self->_trailingRemoteViewConstraint;

  [(NSLayoutConstraint *)trailingRemoteViewConstraint setConstant:right];
}

- (void)fetchInternalMessageStateForDraft:(BOOL)draft completion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  remoteProxy = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [remoteProxy fetchInternalMessageStateForDraft:draftCopy completion:completionCopy];
}

- (void)setShouldPerformSendAnimationOnAppear
{
  self->_shouldPerformSendAnimationOnAppear = 1;
  remoteProxy = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [remoteProxy setShouldPerformSendAnimationOnAppear];
}

- (void)didChangeBackgroundLuminance:(double)luminance
{
  self->_backgroundLuminance = luminance;
  remoteProxy = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [remoteProxy didChangeBackgroundLuminance:luminance];
}

- (id)extensionContext
{
  extension = self->_extension;
  remoteViewController = self->_remoteViewController;
  if (extension)
  {
    v4 = remoteViewController;
    requestUUID = [(UIViewController *)v4 requestUUID];
    hostContext = [(NSExtension *)extension _extensionContextForUUID:requestUUID];
  }

  else
  {
    requestUUID = [(UIViewController *)remoteViewController appContext];
    hostContext = [requestUUID hostContext];
  }

  return hostContext;
}

- (id)remoteProxy
{
  extension = self->_extension;
  remoteViewController = self->_remoteViewController;
  if (extension)
  {
    v4 = remoteViewController;
    requestUUID = [(UIViewController *)v4 requestUUID];
    v6 = [(NSExtension *)extension _extensionContextForUUID:requestUUID];

    _auxiliaryConnection = [v6 _auxiliaryConnection];
    remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  }

  else
  {
    remoteObjectProxy = [(UIViewController *)remoteViewController appContext];
  }

  return remoteObjectProxy;
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
  view = [(_MSRemoteBalloonViewController *)self view];
  [view setUserInteractionEnabled:1];
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
    delegate = [(_MSRemoteBalloonViewController *)self delegate];
    v12 = [delegate remoteBalloonViewControllerContextIdentifier:self];
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
    appBundle = [(IMBalloonAppExtension *)self->_plugin appBundle];
    v23 = objc_alloc_init([appBundle principalClass]);

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
      selfCopy = self;
      v10 = 2048;
      v11 = remoteViewController;
      v12 = 2112;
      v13 = identifier;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Unloading remote view: %p messageGUID: %@", &v8, 0x20u);
    }

    [(_MSRemoteBalloonViewController *)self _sendResignActiveMessage];
    extension = self->_extension;
    requestUUID = [(_MSRemoteBalloonViewController *)self requestUUID];
    [(NSExtension *)extension cancelExtensionRequestWithIdentifier:requestUUID];

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

  remoteProxy = [(_MSRemoteBalloonViewController *)self remoteProxy];
  [remoteProxy _resignActive];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _MSRemoteBalloonViewController;
  [(_MSRemoteBalloonViewController *)&v6 viewWillAppear:appear];
  if (!self->_remoteViewController)
  {
    [(_MSRemoteBalloonViewController *)self loadRemoteView];
    v4 = ms_defaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 134218242;
      selfCopy = self;
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
    requestUUID = [(UIViewController *)self->_remoteViewController requestUUID];
  }

  else
  {
    requestUUID = 0;
  }

  return requestUUID;
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  remoteViewController = self->_remoteViewController;
  if (remoteViewController != controllerCopy)
  {
    if (remoteViewController)
    {
      parentViewController = [(UIViewController *)remoteViewController parentViewController];

      if (parentViewController == self)
      {
        [(UIViewController *)self->_remoteViewController willMoveToParentViewController:0];
        view = [(UIViewController *)self->_remoteViewController view];
        [view removeFromSuperview];

        [(UIViewController *)self->_remoteViewController removeFromParentViewController];
      }
    }

    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_remoteViewController;
      identifier = self->_identifier;
      *buf = 134218754;
      selfCopy = self;
      v44 = 2048;
      v45 = controllerCopy;
      v46 = 2048;
      v47 = v10;
      v48 = 2112;
      v49 = identifier;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "LiveBubble. %p Setting new remoteViewController: %p, old: %p, messageGUID: %@", buf, 0x2Au);
    }

    objc_storeStrong(&self->_remoteViewController, controller);
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

      delegate = [(_MSRemoteBalloonViewController *)self delegate];
      [delegate remoteBalloonViewControllerWillLoad:self];

      if (self->_shouldPerformSendAnimationOnAppear && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(UIViewController *)self->_remoteViewController setShouldPerformSendAnimationOnAppear];
      }

      [(_MSRemoteBalloonViewController *)self addChildViewController:self->_remoteViewController];
      view2 = [(UIViewController *)self->_remoteViewController view];
      [view2 setUserInteractionEnabled:1];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      view3 = [(_MSRemoteBalloonViewController *)self view];
      [view3 bounds];
      [view2 setFrame:?];

      view4 = [(_MSRemoteBalloonViewController *)self view];
      [view4 addSubview:view2];

      view5 = [(_MSRemoteBalloonViewController *)self view];
      topAnchor = [view5 topAnchor];
      topAnchor2 = [view2 topAnchor];
      v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      topRemoteViewConstraint = self->_topRemoteViewConstraint;
      self->_topRemoteViewConstraint = v20;

      bottomAnchor = [view2 bottomAnchor];
      view6 = [(_MSRemoteBalloonViewController *)self view];
      bottomAnchor2 = [view6 bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      bottomRemoteViewConstraint = self->_bottomRemoteViewConstraint;
      self->_bottomRemoteViewConstraint = v25;

      leadingAnchor = [view2 leadingAnchor];
      view7 = [(_MSRemoteBalloonViewController *)self view];
      leadingAnchor2 = [view7 leadingAnchor];
      v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
      leadingRemoteViewConstraint = self->_leadingRemoteViewConstraint;
      self->_leadingRemoteViewConstraint = v30;

      view8 = [(_MSRemoteBalloonViewController *)self view];
      trailingAnchor = [view8 trailingAnchor];
      trailingAnchor2 = [view2 trailingAnchor];
      v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
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
      delegate2 = [(_MSRemoteBalloonViewController *)self delegate];
      [delegate2 remoteBalloonViewControllerDidLoad:self];
    }
  }
}

- (BOOL)_linkedBeforeSDKVersion:(id)version
{
  versionCopy = version;
  plugin = self->_plugin;
  if (plugin)
  {
    v6 = [(IMBalloonAppExtension *)plugin linkedBeforeSDKVersion:versionCopy];
  }

  else
  {
    if (!self->_extension)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [(_MSRemoteBalloonViewController *)self _extensionLinkedBeforeSDKVersion:versionCopy];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (BOOL)_extensionLinkedBeforeSDKVersion:(id)version
{
  versionCopy = version;
  extension = self->_extension;
  if (extension)
  {
    infoDictionary = [(NSExtension *)extension infoDictionary];
    v7 = [infoDictionary objectForKeyedSubscript:@"LSExecutableSDKVersion"];
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
    infoDictionary = ms_defaultLog();
    if (os_log_type_enabled(infoDictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, infoDictionary, OS_LOG_TYPE_DEFAULT, "LiveBubble. No extension found for link check, returning NO", buf, 2u);
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