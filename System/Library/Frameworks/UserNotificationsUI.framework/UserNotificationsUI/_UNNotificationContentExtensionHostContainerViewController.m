@interface _UNNotificationContentExtensionHostContainerViewController
+ (BOOL)isMediaSafetyNetEnabled;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)extensionWantsToReceiveActionResponses;
- (BOOL)resignFirstResponder;
- (BOOL)restoreInputViews;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSString)extensionIdentifier;
- (_UNNotificationContentExtensionHostContainerViewController)initWithExtension:(id)a3 notification:(id)a4 actions:(id)a5;
- (_UNNotificationContentExtensionHostContainerViewControllerDelegate)delegate;
- (uint64_t)_teardownExtension;
- (void)_addExtensionViewFromViewController:(id)a3;
- (void)_flushQueuedRequests;
- (void)_loadExtensionViewController;
- (void)_mediaPlayPauseButtonTapped:(id)a3;
- (void)_pauseMediaIfPresented;
- (void)_playMediaIfPresented;
- (void)_setupExtensionViewController:(id)a3;
- (void)_setupMediaButton;
- (void)_teardownExtension;
- (void)dealloc;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)notificationExtension:(id)a3 didUpdateNotificationActions:(id)a4;
- (void)notificationExtension:(id)a3 didUpdateTitle:(id)a4;
- (void)notificationExtensionMediaPlayingDidPause:(id)a3;
- (void)notificationExtensionMediaPlayingDidStart:(id)a3;
- (void)notificationExtensionRequestsDefaultAction:(id)a3;
- (void)notificationExtensionRequestsDismiss:(id)a3;
- (void)pauseMedia;
- (void)playMedia;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)preserveInputViews;
- (void)setTitle:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UNNotificationContentExtensionHostContainerViewController

- (_UNNotificationContentExtensionHostContainerViewController)initWithExtension:(id)a3 notification:(id)a4 actions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = _UNNotificationContentExtensionHostContainerViewController;
  v12 = [(_UNNotificationContentExtensionHostContainerViewController *)&v29 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extension, a3);
    v14 = [v10 request];
    v15 = [v14 identifier];
    notificationRequestIdentifier = v13->_notificationRequestIdentifier;
    v13->_notificationRequestIdentifier = v15;

    v17 = [v10 request];
    v18 = [v17 content];
    v13->_screenCaptureProhibited = [v18 screenCaptureProhibited];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    queuedNotifications = v13->_queuedNotifications;
    v13->_queuedNotifications = v19;

    objc_storeStrong(&v13->_actions, a5);
    [v9 un_effectiveContentSizeRatio];
    v13->_contentSizeRatio = v21;
    v13->_defaultContentHidden = [v9 un_isDefaultContentHidden];
    v13->_defaultTitleOverridden = [v9 un_isDefaultTitleOverridden];
    v22 = [v9 un_isUserInteractionEnabled];
    v13->_userInteractionEnabled = v22;
    if ((v22 & 1) == 0)
    {
      v23 = [_UNBlockTouchesView alloc];
      v24 = [(_UNBlockTouchesView *)v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      blockingView = v13->_blockingView;
      v13->_blockingView = v24;

      [(UIView *)v13->_blockingView setAutoresizingMask:18];
      v26 = v13->_blockingView;
      v27 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v26 setBackgroundColor:v27];
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
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self blockingView];
  if (v3)
  {
    v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
    [v4 bounds];
    [v3 setFrame:?];

    v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
    [v5 addSubview:v3];
  }

  if (self->_defaultTitleOverridden)
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)self setTitle:0];
  }

  v6 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
  [v6 nc_setScreenCaptureProhibited:self->_screenCaptureProhibited];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewWillAppear:v3];
  [(_UNNotificationContentExtensionHostContainerViewController *)self _loadExtensionViewController];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
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
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
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
  [(_UNNotificationContentExtensionHostContainerViewController *)&v6 viewDidDisappear:v3];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v5 setTitle:a3];
  v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 extensionViewControllerDidUpdateTitle:self];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UNNotificationContentExtensionHostContainerViewController;
  [(_UNNotificationContentExtensionHostContainerViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:v4];
  [(_UNNotificationContentExtensionHostContainerViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [v4 preferredContentSize];
  if (v6 != v10 || v8 != v9)
  {
    [v4 preferredContentSize];
    [(_UNNotificationContentExtensionHostContainerViewController *)self setPreferredContentSize:?];
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  width = a4.width;
  v6 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController:a3];
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
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  if ([v3 canBecomeFirstResponder])
  {
    v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
    v5 = [v4 wantsToBecomeFirstResponder];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionViewController];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (void)didReceiveNotification:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(_UNNotificationContentExtensionHostContainerViewController *)v4 queuedNotifications];
  [v5 addObject:v7];

  v6 = [(_UNNotificationContentExtensionHostContainerViewController *)v4 extensionHostContext];

  if (v6)
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)v4 _flushQueuedRequests];
  }

  objc_sync_exit(v4);
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    v16 = [v6 actionIdentifier];
    v9 = [v6 notification];
    v10 = [v9 request];
    v11 = [v10 identifier];
    v12 = [v11 un_logDigest];
    v13 = [(_UNNotificationContentExtensionHostContainerViewController *)self extension];
    v14 = [v13 identifier];
    *buf = 138543874;
    v19 = v16;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_23AB78000, log, OS_LOG_TYPE_DEFAULT, "Sending action %{public}@ for notification %{public}@ to extension %{public}@", buf, 0x20u);
  }

  v15 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [v15 didReceiveNotificationResponse:v6 completionHandler:v7];
}

- (void)preserveInputViews
{
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  v4 = [v3 wantsToBecomeFirstResponder];

  if (v4)
  {
    v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
    [v5 preserveInputViews];
  }
}

- (BOOL)restoreInputViews
{
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  v4 = [v3 wantsToBecomeFirstResponder];

  if (v4)
  {
    v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
    [v5 restoreInputViews];
  }

  return v4;
}

- (BOOL)extensionWantsToReceiveActionResponses
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  v3 = [v2 wantsToReceiveActionResponses];

  return v3;
}

- (NSString)extensionIdentifier
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extension];
  v3 = [v2 identifier];

  return v3;
}

- (void)playMedia
{
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];

  if (v3)
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
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];

  if (v3)
  {

    [(_UNNotificationContentExtensionHostContainerViewController *)self _pauseMediaIfPresented];
  }

  else
  {

    [(_UNNotificationContentExtensionHostContainerViewController *)self setShouldPlayMediaAfterPresented:0];
  }
}

- (void)notificationExtension:(id)a3 didUpdateTitle:(id)a4
{
  v7 = a4;
  if ([(_UNNotificationContentExtensionHostContainerViewController *)self isDefaultTitleOverridden])
  {
    if ([v7 length])
    {
      v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self title];
      v6 = [v7 isEqual:v5];

      if ((v6 & 1) == 0)
      {
        [(_UNNotificationContentExtensionHostContainerViewController *)self setTitle:v7];
      }
    }
  }
}

- (void)notificationExtension:(id)a3 didUpdateNotificationActions:(id)a4
{
  v8 = a4;
  v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self actions];
  v6 = [v5 isEqualToArray:v8];

  if ((v6 & 1) == 0)
  {
    [(_UNNotificationContentExtensionHostContainerViewController *)self setActions:v8];
    v7 = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 extensionViewControllerDidUpdateActions:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationExtensionMediaPlayingDidStart:(id)a3
{
  v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [v4 updateMediaPlayPauseButton];

  v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self mediaPlayPauseButton];
  [v5 setSelected:1];
}

- (void)notificationExtensionMediaPlayingDidPause:(id)a3
{
  v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [v4 updateMediaPlayPauseButton];

  v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self mediaPlayPauseButton];
  [v5 setSelected:0];
}

- (void)notificationExtensionRequestsDefaultAction:(id)a3
{
  v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 extensionViewControllerRequestsDefaultAction:self];
  }
}

- (void)notificationExtensionRequestsDismiss:(id)a3
{
  v4 = [(_UNNotificationContentExtensionHostContainerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 extensionViewControllerRequestsDismiss:self];
  }
}

- (void)_playMediaIfPresented
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [v2 mediaPlay];
}

- (void)_pauseMediaIfPresented
{
  v2 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  [v2 mediaPause];
}

- (void)_flushQueuedRequests
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_23AB78000, log, OS_LOG_TYPE_FAULT, "Received unexpected notification for section %{public}@ while displaying notification for extension %{public}@", buf, 0x16u);
}

- (void)_setupMediaButton
{
  v3 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  v4 = [v3 playPauseMediaButtonType];
  [v3 playPauseMediaButtonFrame];
  if (v4)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!CGRectIsEmpty(*&v5))
    {
      v13 = [(_UNNotificationContentExtensionHostContainerViewController *)self mediaPlayPauseButton];
      v14 = v13;
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v15 = 1;
          if (!v13)
          {
LABEL_7:
            v14 = [[_UNMediaPlayPauseButton alloc] initWithFrame:v15 type:v9, v10, v11, v12];
            [(_UNMediaPlayPauseButton *)v14 addTarget:self action:sel__mediaPlayPauseButtonTapped_ forControlEvents:64];
            v16 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
            [v16 addSubview:v14];

            [(_UNNotificationContentExtensionHostContainerViewController *)self setMediaPlayPauseButton:v14];
LABEL_12:
            v18 = [v3 playPauseMediaButtonColor];
            [(_UNMediaPlayPauseButton *)v14 setTintColor:v18];

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

- (void)_mediaPlayPauseButtonTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 isSelected];
  v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self extensionHostContext];
  v6 = v5;
  if (v4)
  {
    [v5 mediaPause];
  }

  else
  {
    [v5 mediaPlay];
  }

  [v7 setSelected:{objc_msgSend(v7, "isSelected") ^ 1}];
}

- (void)_setupExtensionViewController:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 parentViewController];
  v6 = [(_UNNotificationContentExtensionHostContainerViewController *)self isViewLoaded];
  if (v4 && v6 && v5 != self)
  {
    v7 = UNLogExtensionsHost;
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
    {
      notificationRequestIdentifier = self->_notificationRequestIdentifier;
      v9 = v7;
      v10 = [(NSString *)notificationRequestIdentifier un_logDigest];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_23AB78000, v9, OS_LOG_TYPE_DEFAULT, "Setting up extension view controller for notification %{public}@", &v14, 0xCu);
    }

    [v4 setServiceViewShouldShareTouchesWithHost:1];
    [v4 preferredContentSize];
    if (v12 != *MEMORY[0x277CBF3A8] || v11 != *(MEMORY[0x277CBF3A8] + 8))
    {
      [(_UNNotificationContentExtensionHostContainerViewController *)self setPreferredContentSize:?];
    }

    if (v5)
    {
      [v4 willMoveToParentViewController:0];
      [v4 removeFromParentViewController];
    }

    [v4 setInheritsSecurity:1];
    [(_UNNotificationContentExtensionHostContainerViewController *)self addChildViewController:v4];
    if ((-[_UNNotificationContentExtensionHostContainerViewController _appearState](self, "_appearState") == 1 || -[_UNNotificationContentExtensionHostContainerViewController _appearState](self, "_appearState") == 2) && [v4 _appearState] != 1 && objc_msgSend(v4, "_appearState") != 2)
    {
      [v4 beginAppearanceTransition:1 animated:0];
      [(_UNNotificationContentExtensionHostContainerViewController *)self _addExtensionViewFromViewController:v4];
      [v4 didMoveToParentViewController:self];
      if ([v4 _appearState] == 1)
      {
        [v4 endAppearanceTransition];
      }
    }

    else
    {
      [(_UNNotificationContentExtensionHostContainerViewController *)self _addExtensionViewFromViewController:v4];
      [v4 didMoveToParentViewController:self];
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
  v2 = *(a1 + 1016);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_23AB78000, v3, OS_LOG_TYPE_ERROR, "Killing the process of a remote view controller that failed to load, %@", &v5, 0xCu);
}

- (void)_addExtensionViewFromViewController:(id)a3
{
  v4 = [a3 view];
  [v4 setAutoresizingMask:18];
  v5 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  v6 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
  [v6 addSubview:v4];

  v7 = [(_UNNotificationContentExtensionHostContainerViewController *)self blockingView];

  if (v7)
  {
    v8 = [(_UNNotificationContentExtensionHostContainerViewController *)self view];
    v9 = [(_UNNotificationContentExtensionHostContainerViewController *)self blockingView];
    [v8 insertSubview:v4 belowSubview:v9];
  }

  [v4 setAlpha:0.0];
  v10 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98___UNNotificationContentExtensionHostContainerViewController__addExtensionViewFromViewController___block_invoke;
  v12[3] = &unk_278B716D0;
  v13 = v4;
  v11 = v4;
  [v10 animateWithDuration:4 delay:v12 options:0 animations:0.25 completion:0.0];
}

- (void)_loadExtensionViewController
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = self->_notificationRequestIdentifier;
  v4 = [(NSString *)v3 un_logDigest];
  if (self->_extensionViewController)
  {
    v5 = UNLogExtensionsHost;
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
    {
      extensionViewController = self->_extensionViewController;
      *buf = 138543618;
      v27 = v4;
      v28 = 2114;
      v29 = extensionViewController;
      _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "Already have extension view controller for notification request %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = [(_UNNotificationContentExtensionHostContainerViewController *)self actions];
    if ([v7 count])
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
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
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [(_UNNotificationContentExtensionHostContainerViewController *)self extension];
    objc_initWeak(&location, self);
    v12 = UNLogExtensionsHost;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 identifier];
      *buf = 138543618;
      v27 = v13;
      v28 = 2114;
      v29 = v4;
      _os_log_impl(&dword_23AB78000, v12, OS_LOG_TYPE_DEFAULT, "Loading host view controller from extension %{public}@ for notification request %{public}@", buf, 0x16u);
    }

    v25 = v9;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90___UNNotificationContentExtensionHostContainerViewController__loadExtensionViewController__block_invoke;
    v18[3] = &unk_278B716F8;
    objc_copyWeak(&v23, &location);
    v15 = v11;
    v19 = v15;
    v20 = v4;
    v16 = v10;
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