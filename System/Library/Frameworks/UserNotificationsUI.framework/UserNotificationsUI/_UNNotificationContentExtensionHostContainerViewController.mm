@interface _UNNotificationContentExtensionHostContainerViewController
+ (BOOL)isMediaSafetyNetEnabled;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)extensionWantsToReceiveActionResponses;
- (BOOL)resignFirstResponder;
- (BOOL)restoreInputViews;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSString)extensionIdentifier;
- (_UNNotificationContentExtensionHostContainerViewController)initWithExtension:(id)extension notification:(id)notification actions:(id)actions;
- (_UNNotificationContentExtensionHostContainerViewControllerDelegate)delegate;
- (uint64_t)_teardownExtension;
- (void)_addExtensionViewFromViewController:(id)controller;
- (void)_flushQueuedRequests;
- (void)_loadExtensionViewController;
- (void)_mediaPlayPauseButtonTapped:(id)tapped;
- (void)_pauseMediaIfPresented;
- (void)_playMediaIfPresented;
- (void)_setupExtensionViewController:(id)controller;
- (void)_setupMediaButton;
- (void)_teardownExtension;
- (void)dealloc;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)notificationExtension:(id)extension didUpdateNotificationActions:(id)actions;
- (void)notificationExtension:(id)extension didUpdateTitle:(id)title;
- (void)notificationExtensionMediaPlayingDidPause:(id)pause;
- (void)notificationExtensionMediaPlayingDidStart:(id)start;
- (void)notificationExtensionRequestsDefaultAction:(id)action;
- (void)notificationExtensionRequestsDismiss:(id)dismiss;
- (void)pauseMedia;
- (void)playMedia;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)preserveInputViews;
- (void)setTitle:(id)title;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _UNNotificationContentExtensionHostContainerViewController

- (_UNNotificationContentExtensionHostContainerViewController)initWithExtension:(id)extension notification:(id)notification actions:(id)actions
{
  extensionCopy = extension;
  notificationCopy = notification;
  actionsCopy = actions;
  v29.receiver = self;
  v29.super_class = _UNNotificationContentExtensionHostContainerViewController;
  v12 = [(_UNNotificationContentExtensionHostContainerViewController *)&v29 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extension, extension);
    request = [notificationCopy request];
    identifier = [request identifier];
    notificationRequestIdentifier = v13->_notificationRequestIdentifier;
    v13->_notificationRequestIdentifier = identifier;

    request2 = [notificationCopy request];
    content = [request2 content];
    v13->_screenCaptureProhibited = [content screenCaptureProhibited];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{notificationCopy, 0}];
    queuedNotifications = v13->_queuedNotifications;
    v13->_queuedNotifications = v19;

    objc_storeStrong(&v13->_actions, actions);
    [extensionCopy un_effectiveContentSizeRatio];
    v13->_contentSizeRatio = v21;
    v13->_defaultContentHidden = [extensionCopy un_isDefaultContentHidden];
    v13->_defaultTitleOverridden = [extensionCopy un_isDefaultTitleOverridden];
    un_isUserInteractionEnabled = [extensionCopy un_isUserInteractionEnabled];
    v13->_userInteractionEnabled = un_isUserInteractionEnabled;
    if ((un_isUserInteractionEnabled & 1) == 0)
    {
      v23 = [_UNBlockTouchesView alloc];
      v24 = [(_UNBlockTouchesView *)v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      blockingView = v13->_blockingView;
      v13->_blockingView = v24;

      [(UIView *)v13->_blockingView setAutoresizingMask:18];
      v26 = v13->_blockingView;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v26 setBackgroundColor:clearColor];
    }
  }

  return v13;
}

+ (BOOL)isMediaSafetyNetEnabled
{
  if (isMediaSafetyNetEnabled_onceToken != -1)
  {
    +[_UNNotificationContentExtensionHostContainerViewController isMediaSafetyNetEnabled];
  }

  return isMediaSafetyNetEnabled_enabled;
}

- (void)dealloc
{
  [(_UNNotificationContentExtensionHostContainerViewController *)self _teardownExtension];
  v3.receiver = self;
  v3.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v7 viewDidLoad];
  blockingView = [(_UNNotificationContentExtensionHostContainerViewController *)self blockingView];
  if (blockingView)
  {
    view = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
    [view bounds];
    [blockingView setFrame:?];

    view2 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
    [view2 addSubview:blockingView];
  }

  if (self->_defaultTitleOverridden)
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)self setTitle:0];
  }

  view3 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
  [view3 nc_setScreenCaptureProhibited:self->_screenCaptureProhibited];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostContainerViewController viewWillAppear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewWillAppear:appearCopy];
  [(_UNNotificationContentExtensionHostContainerViewController *)self _loadExtensionViewController];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostContainerViewController viewDidAppear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostContainerViewController viewWillDisappear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostContainerViewController viewDidDisappear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v5 setTitle:title];
  delegate = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate extensionViewControllerDidUpdateTitle:self];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [(_UNNotificationContentExtensionHostContainerViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [containerCopy preferredContentSize];
  if (v6 != v10 || v8 != v9)
  {
    [containerCopy preferredContentSize];
    [(_UNNotificationContentExtensionHostContainerViewController *)self setPreferredContentSize:?];
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  width = size.width;
  v6 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController:container];
  [v6 preferredContentSize];
  v8 = v7;
  v10 = v9;

  if (v8 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)self _contentHeightForWidth:width];
    v10 = v12;
  }

  v13 = width;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)canBecomeFirstResponder
{
  extensionViewController = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  if ([extensionViewController canBecomeFirstResponder])
  {
    extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
    wantsToBecomeFirstResponder = [extensionHostContext wantsToBecomeFirstResponder];
  }

  else
  {
    wantsToBecomeFirstResponder = 0;
  }

  return wantsToBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  extensionViewController = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  becomeFirstResponder = [extensionViewController becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  extensionViewController = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  canResignFirstResponder = [extensionViewController canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  extensionViewController = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  resignFirstResponder = [extensionViewController resignFirstResponder];

  return resignFirstResponder;
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queuedNotifications = [(_UNNotificationContentExtensionHostContainerViewController *)selfCopy queuedNotifications];
  [queuedNotifications addObject:notificationCopy];

  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)selfCopy extensionHostContext];

  if (extensionHostContext)
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)selfCopy _flushQueuedRequests];
  }

  objc_sync_exit(selfCopy);
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v8 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    actionIdentifier = [responseCopy actionIdentifier];
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    un_logDigest = [identifier un_logDigest];
    extension = [(_UNNotificationContentExtensionHostContainerViewController *)self extension];
    identifier2 = [extension identifier];
    *buf = 138543874;
    v19 = actionIdentifier;
    v20 = 2114;
    v21 = un_logDigest;
    v22 = 2114;
    v23 = identifier2;
    _os_log_impl(&dword_23AB78000, log, OS_LOG_TYPE_DEFAULT, "Sending action %{public}@ for notification %{public}@ to extension %{public}@", buf, 0x20u);
  }

  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [extensionHostContext didReceiveNotificationResponse:responseCopy completionHandler:handlerCopy];
}

- (void)preserveInputViews
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  wantsToBecomeFirstResponder = [extensionHostContext wantsToBecomeFirstResponder];

  if (wantsToBecomeFirstResponder)
  {
    extensionHostContext2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
    [extensionHostContext2 preserveInputViews];
  }
}

- (BOOL)restoreInputViews
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  wantsToBecomeFirstResponder = [extensionHostContext wantsToBecomeFirstResponder];

  if (wantsToBecomeFirstResponder)
  {
    extensionHostContext2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
    [extensionHostContext2 restoreInputViews];
  }

  return wantsToBecomeFirstResponder;
}

- (BOOL)extensionWantsToReceiveActionResponses
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  wantsToReceiveActionResponses = [extensionHostContext wantsToReceiveActionResponses];

  return wantsToReceiveActionResponses;
}

- (NSString)extensionIdentifier
{
  extension = [(_UNNotificationContentExtensionHostContainerViewController *)self extension];
  identifier = [extension identifier];

  return identifier;
}

- (void)playMedia
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];

  if (extensionHostContext)
  {

    [(_UNNotificationContentExtensionHostContainerViewController *)self _playMediaIfPresented];
  }

  else
  {

    [(_UNNotificationContentExtensionHostContainerViewController *)self setShouldPlayMediaAfterPresented:1];
  }
}

- (void)pauseMedia
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];

  if (extensionHostContext)
  {

    [(_UNNotificationContentExtensionHostContainerViewController *)self _pauseMediaIfPresented];
  }

  else
  {

    [(_UNNotificationContentExtensionHostContainerViewController *)self setShouldPlayMediaAfterPresented:0];
  }
}

- (void)notificationExtension:(id)extension didUpdateTitle:(id)title
{
  titleCopy = title;
  if ([(_UNNotificationContentExtensionHostContainerViewController *)self isDefaultTitleOverridden])
  {
    if ([titleCopy length])
    {
      title = [(_UNNotificationContentExtensionHostContainerViewController *)self title];
      v6 = [titleCopy isEqual:title];

      if ((v6 & 1) == 0)
      {
        [(_UNNotificationContentExtensionHostContainerViewController *)self setTitle:titleCopy];
      }
    }
  }
}

- (void)notificationExtension:(id)extension didUpdateNotificationActions:(id)actions
{
  actionsCopy = actions;
  actions = [(_UNNotificationContentExtensionHostContainerViewController *)self actions];
  v6 = [actions isEqualToArray:actionsCopy];

  if ((v6 & 1) == 0)
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)self setActions:actionsCopy];
    delegate = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate extensionViewControllerDidUpdateActions:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationExtensionMediaPlayingDidStart:(id)start
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [extensionHostContext updateMediaPlayPauseButton];

  mediaPlayPauseButton = [(_UNNotificationContentExtensionHostContainerViewController *)self mediaPlayPauseButton];
  [mediaPlayPauseButton setSelected:1];
}

- (void)notificationExtensionMediaPlayingDidPause:(id)pause
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [extensionHostContext updateMediaPlayPauseButton];

  mediaPlayPauseButton = [(_UNNotificationContentExtensionHostContainerViewController *)self mediaPlayPauseButton];
  [mediaPlayPauseButton setSelected:0];
}

- (void)notificationExtensionRequestsDefaultAction:(id)action
{
  delegate = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate extensionViewControllerRequestsDefaultAction:self];
  }
}

- (void)notificationExtensionRequestsDismiss:(id)dismiss
{
  delegate = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate extensionViewControllerRequestsDismiss:self];
  }
}

- (void)_playMediaIfPresented
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [extensionHostContext mediaPlay];
}

- (void)_pauseMediaIfPresented
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [extensionHostContext mediaPause];
}

- (void)_flushQueuedRequests
{
  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_23AB78000, log, OS_LOG_TYPE_FAULT, "Received unexpected notification for section %{public}@ while displaying notification for extension %{public}@", buf, 0x16u);
}

- (void)_setupMediaButton
{
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  playPauseMediaButtonType = [extensionHostContext playPauseMediaButtonType];
  [extensionHostContext playPauseMediaButtonFrame];
  if (playPauseMediaButtonType)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!CGRectIsEmpty(*&v5))
    {
      mediaPlayPauseButton = [(_UNNotificationContentExtensionHostContainerViewController *)self mediaPlayPauseButton];
      v14 = mediaPlayPauseButton;
      if (playPauseMediaButtonType != 1)
      {
        if (playPauseMediaButtonType == 2)
        {
          v15 = 1;
          if (!mediaPlayPauseButton)
          {
LABEL_7:
            v14 = [[_UNMediaPlayPauseButton alloc] initWithFrame:v15 type:v9, v10, v11, v12];
            [(_UNMediaPlayPauseButton *)v14 addTarget:self action:sel__mediaPlayPauseButtonTapped_ forControlEvents:64];
            view = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
            [view addSubview:v14];

            [(_UNNotificationContentExtensionHostContainerViewController *)self setMediaPlayPauseButton:v14];
LABEL_12:
            playPauseMediaButtonColor = [extensionHostContext playPauseMediaButtonColor];
            [(_UNMediaPlayPauseButton *)v14 setTintColor:playPauseMediaButtonColor];

            goto LABEL_13;
          }

LABEL_11:
          [(_UNMediaPlayPauseButton *)v14 setFrame:v9, v10, v11, v12];
          [(_UNMediaPlayPauseButton *)v14 setType:v15];
          goto LABEL_12;
        }

        v17 = UNLogExtensionsHost;
        if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_ERROR))
        {
          [(_UNNotificationContentExtensionHostContainerViewController *)v17 _setupMediaButton];
        }
      }

      v15 = 0;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  [(_UNNotificationContentExtensionHostContainerViewController *)self setMediaPlayPauseButton:0];
LABEL_13:
}

- (void)_mediaPlayPauseButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  isSelected = [tappedCopy isSelected];
  extensionHostContext = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  v6 = extensionHostContext;
  if (isSelected)
  {
    [extensionHostContext mediaPause];
  }

  else
  {
    [extensionHostContext mediaPlay];
  }

  [tappedCopy setSelected:{objc_msgSend(tappedCopy, "isSelected") ^ 1}];
}

- (void)_setupExtensionViewController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];
  isViewLoaded = [(_UNNotificationContentExtensionHostContainerViewController *)self isViewLoaded];
  if (controllerCopy && isViewLoaded && parentViewController != self)
  {
    v7 = UNLogExtensionsHost;
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
    {
      notificationRequestIdentifier = self->_notificationRequestIdentifier;
      v9 = v7;
      un_logDigest = [(NSString *)notificationRequestIdentifier un_logDigest];
      v14 = 138543362;
      v15 = un_logDigest;
      _os_log_impl(&dword_23AB78000, v9, OS_LOG_TYPE_DEFAULT, "Setting up extension view controller for notification %{public}@", &v14, 0xCu);
    }

    [controllerCopy setServiceViewShouldShareTouchesWithHost:1];
    [controllerCopy preferredContentSize];
    if (v12 != *MEMORY[0x277CBF3A8] || v11 != *(MEMORY[0x277CBF3A8] + 8))
    {
      [(_UNNotificationContentExtensionHostContainerViewController *)self setPreferredContentSize:?];
    }

    if (parentViewController)
    {
      [controllerCopy willMoveToParentViewController:0];
      [controllerCopy removeFromParentViewController];
    }

    [controllerCopy setInheritsSecurity:1];
    [(_UNNotificationContentExtensionHostContainerViewController *)self addChildViewController:controllerCopy];
    if ((-[_UNNotificationContentExtensionHostContainerViewController _appearState](self, "_appearState") == 1 || -[_UNNotificationContentExtensionHostContainerViewController _appearState](self, "_appearState") == 2) && [controllerCopy _appearState] != 1 && objc_msgSend(controllerCopy, "_appearState") != 2)
    {
      [controllerCopy beginAppearanceTransition:1 animated:0];
      [(_UNNotificationContentExtensionHostContainerViewController *)self _addExtensionViewFromViewController:controllerCopy];
      [controllerCopy didMoveToParentViewController:self];
      if ([controllerCopy _appearState] == 1)
      {
        [controllerCopy endAppearanceTransition];
      }
    }

    else
    {
      [(_UNNotificationContentExtensionHostContainerViewController *)self _addExtensionViewFromViewController:controllerCopy];
      [controllerCopy didMoveToParentViewController:self];
    }

    [(_UNNotificationContentExtensionHostContainerViewController *)self _flushQueuedRequests];
    if ([(_UNNotificationContentExtensionHostContainerViewController *)self shouldPlayMediaAfterPresented])
    {
      [(_UNNotificationContentExtensionHostContainerViewController *)self _playMediaIfPresented];
    }
  }
}

- (void)_teardownExtension
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(self + 1016);
  v3 = a2;
  identifier = [v2 identifier];
  v5 = 138412290;
  v6 = identifier;
  _os_log_error_impl(&dword_23AB78000, v3, OS_LOG_TYPE_ERROR, "Killing the process of a remote view controller that failed to load, %@", &v5, 0xCu);
}

- (void)_addExtensionViewFromViewController:(id)controller
{
  view = [controller view];
  [view setAutoresizingMask:18];
  view2 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
  [view3 addSubview:view];

  blockingView = [(_UNNotificationContentExtensionHostContainerViewController *)self blockingView];

  if (blockingView)
  {
    view4 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
    blockingView2 = [(_UNNotificationContentExtensionHostContainerViewController *)self blockingView];
    [view4 insertSubview:view belowSubview:blockingView2];
  }

  [view setAlpha:0.0];
  v10 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98___UNNotificationContentExtensionHostContainerViewController__addExtensionViewFromViewController___block_invoke;
  v12[3] = &unk_278B716D0;
  v13 = view;
  v11 = view;
  [v10 animateWithDuration:4 delay:v12 options:0 animations:0.25 completion:0.0];
}

- (void)_loadExtensionViewController
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = self->_notificationRequestIdentifier;
  un_logDigest = [(NSString *)v3 un_logDigest];
  if (self->_extensionViewController)
  {
    v5 = UNLogExtensionsHost;
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
    {
      extensionViewController = self->_extensionViewController;
      *buf = 138543618;
      v27 = un_logDigest;
      v28 = 2114;
      v29 = extensionViewController;
      _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "Already have extension view controller for notification request %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    actions = [(_UNNotificationContentExtensionHostContainerViewController *)self actions];
    if ([actions count])
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:actions requiringSecureCoding:1 error:0];
      [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v8 = ;
    [v8 bs_setSafeObject:v17 forKey:@"actions"];
    v9 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    [v9 setUserInfo:v8];
    date = [MEMORY[0x277CBEAA8] date];
    extension = [(_UNNotificationContentExtensionHostContainerViewController *)self extension];
    objc_initWeak(&location, self);
    v12 = UNLogExtensionsHost;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [extension identifier];
      *buf = 138543618;
      v27 = identifier;
      v28 = 2114;
      v29 = un_logDigest;
      _os_log_impl(&dword_23AB78000, v12, OS_LOG_TYPE_DEFAULT, "Loading host view controller from extension %{public}@ for notification request %{public}@", buf, 0x16u);
    }

    v25 = v9;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90___UNNotificationContentExtensionHostContainerViewController__loadExtensionViewController__block_invoke;
    v18[3] = &unk_278B716F8;
    objc_copyWeak(&v23, &location);
    v15 = extension;
    v19 = v15;
    v20 = un_logDigest;
    v16 = date;
    v21 = v16;
    v22 = v3;
    [v15 instantiateViewControllerWithInputItems:v14 connectionHandler:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (_UNNotificationContentExtensionHostContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_teardownExtension
{
  dlerror();
  v0 = abort_report_np();
  return __90___UNNotificationContentExtensionHostContainerViewController__loadExtensionViewController__block_invoke_cold_2(v0);
}

@end