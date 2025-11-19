@interface _UNNotificationContentExtensionVendorViewController
- (BOOL)canBecomeFirstResponder;
- (_UNNotificationContentExtensionVendorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_extensionBundleIdentifier;
- (id)notificationExtensionVendorContext;
- (void)_invalidateExtensionContext;
- (void)_setupExtensionViewController:(id)a3;
- (void)_willAppearInRemoteViewController:(id)a3;
- (void)addChildViewController:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)preserveInputViews;
- (void)restoreInputViews;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation _UNNotificationContentExtensionVendorViewController

- (_UNNotificationContentExtensionVendorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UNNotificationContentExtensionVendorViewController;
  v4 = [(_UNNotificationContentExtensionVendorViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    atomic_store(0, &v4->_invalidationOnceFlag);
    UNRegisterUserNotificationsUILogging();
  }

  return v5;
}

- (void)dealloc
{
  [(_UNNotificationContentExtensionVendorViewController *)self _invalidateExtensionContext];
  v3 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [v3 removeObserver:self forKeyPath:@"title"];

  v4.receiver = self;
  v4.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v4 dealloc];
}

- (void)_willAppearInRemoteViewController:(id)a3
{
  v5 = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
  v4 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [v5 _extensionWantsToBecomeFirstResponder:{objc_msgSend(v4, "canBecomeFirstResponder")}];
}

- (void)addChildViewController:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v6 addChildViewController:v4];
  if ([v4 conformsToProtocol:&unk_284DE4938])
  {
    [(_UNNotificationContentExtensionVendorViewController *)self _setupExtensionViewController:v4];
  }

  else
  {
    v5 = UNLogExtensionsService;
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
    {
      [(_UNNotificationContentExtensionVendorViewController *)v5 addChildViewController:v4, self];
    }
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UNNotificationContentExtensionVendorViewController;
  v4 = a3;
  [(_UNNotificationContentExtensionVendorViewController *)&v5 willMoveToParentViewController:v4];
  [v4 preferredContentSizeDidChangeForChildContentContainer:{self, v5.receiver, v5.super_class}];
}

- (void)loadView
{
  v3 = [_UNNotificationContentExtensionVendorViewControllerView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [(_UNNotificationContentExtensionVendorViewControllerView *)v3 initWithFrame:?];

  [(_UNNotificationContentExtensionVendorViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v6 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D759E0]) initWithTarget:self action:sel_delayed_];
  touchDelayGestureRecognizer = self->_touchDelayGestureRecognizer;
  self->_touchDelayGestureRecognizer = v3;

  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self->_touchDelayGestureRecognizer setDelaysTouchesBegan:1];
  v5 = [(_UNNotificationContentExtensionVendorViewController *)self view];
  [v5 addGestureRecognizer:self->_touchDelayGestureRecognizer];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
  [v3 _extensionWantsToUpdateMediaPlayPauseButton];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsService;
  if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[_UNNotificationContentExtensionVendorViewController viewWillAppear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v7 viewWillAppear:v3];
  v6 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [v6 bs_beginAppearanceTransition:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsService;
  if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[_UNNotificationContentExtensionVendorViewController viewDidAppear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v8 viewDidAppear:v3];
  v6 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [v6 bs_endAppearanceTransition:1];

  v7 = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
  [v7 _extensionWantsMessagesFromHostDelivered];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsService;
  if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[_UNNotificationContentExtensionVendorViewController viewWillDisappear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v8 viewWillDisappear:v3];
  v6 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [v6 bs_beginAppearanceTransition:0 animated:v3];

  v7 = [(_UNNotificationContentExtensionVendorViewController *)self firstResponder];
  [v7 resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsService;
  if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[_UNNotificationContentExtensionVendorViewController viewDidDisappear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v7 viewDidDisappear:v3];
  v6 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [v6 bs_endAppearanceTransition:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:v4];
  [(_UNNotificationContentExtensionVendorViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [v4 preferredContentSize];
  if (v6 != v10 || v8 != v9)
  {
    [v4 preferredContentSize];
    [(_UNNotificationContentExtensionVendorViewController *)self setPreferredContentSize:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = _UNNotificationContentExtensionVendorViewController;
  v7 = a4;
  [(_UNNotificationContentExtensionVendorViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106___UNNotificationContentExtensionVendorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278B71988;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  v17.receiver = self;
  v17.super_class = _UNNotificationContentExtensionVendorViewController;
  v4 = a3;
  [(_UNNotificationContentExtensionVendorViewController *)&v17 systemLayoutFittingSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x277CBF3A8] && v8 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
    v11 = [v10 view];

    v12 = [(_UNNotificationContentExtensionVendorViewController *)self view];
    [v12 bounds];
    Width = CGRectGetWidth(v18);

    LODWORD(v14) = 1148846080;
    LODWORD(v15) = 1112014848;
    [v11 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
    if (v16 > 0.0)
    {
      [(_UNNotificationContentExtensionVendorViewController *)self setPreferredContentSize:Width];
    }
  }
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v6 beginRequestWithExtensionContext:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setNotificationExtensionContainer:self];
  }

  else
  {
    v5 = UNLogExtensionsService;
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
    {
      [_UNNotificationContentExtensionVendorViewController beginRequestWithExtensionContext:v5];
    }
  }
}

- (void)setPreferredContentSize:(CGSize)a3
{
  v3.receiver = self;
  v3.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v3 setPreferredContentSize:a3.width, a3.height];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (void)preserveInputViews
{
  v4 = [MEMORY[0x277D75830] sharedInstance];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  [v4 _preserveInputViewsWithId:v3 animated:1];
}

- (void)restoreInputViews
{
  v4 = [MEMORY[0x277D75830] sharedInstance];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  [v4 _restoreInputViewsWithId:v3 animated:1];
}

- (id)_extensionBundleIdentifier
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 bundleIdentifier];

  return v5;
}

- (id)notificationExtensionVendorContext
{
  v2 = [(_UNNotificationContentExtensionVendorViewController *)self extensionContext];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)_setupExtensionViewController:(id)a3
{
  objc_storeStrong(&self->_extensionViewController, a3);
  v5 = a3;
  v7 = [(_UNNotificationContentExtensionVendorViewController *)self view];
  v6 = [v5 view];
  [v7 bounds];
  [v6 setFrame:?];
  [v6 setAutoresizingMask:18];
  [v7 addSubview:v6];
  [v5 preferredContentSize];
  [(_UNNotificationContentExtensionVendorViewController *)self setPreferredContentSize:?];
  [v5 addObserver:self forKeyPath:@"title" options:1 context:0];
}

- (void)_invalidateExtensionContext
{
  v7 = *MEMORY[0x277D85DE8];
  if ((atomic_exchange(&self->_invalidationOnceFlag._Value, 1u) & 1) == 0)
  {
    v3 = UNLogExtensionsService;
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[_UNNotificationContentExtensionVendorViewController _invalidateExtensionContext]";
      _os_log_impl(&dword_23AB78000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
    }

    v4 = [(_UNNotificationContentExtensionVendorViewController *)self extensionContext];
    [v4 completeRequestReturningItems:0 completionHandler:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];

  if (v11 == v10)
  {
    v12 = [v14 isEqualToString:@"title"];

    if (!v12)
    {
      goto LABEL_5;
    }

    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v13 = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
    [v13 _extensionDidUpdateTitle:v11];
  }

LABEL_5:
}

- (void)addChildViewController:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 _extensionBundleIdentifier];
  v8 = NSStringFromProtocol(&unk_284DE4938);
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_23AB78000, v4, OS_LOG_TYPE_ERROR, "View controller %{public}@ in extension %{public}@ does not conform to protocol %{public}@", &v9, 0x20u);
}

- (void)beginRequestWithExtensionContext:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_23AB78000, v1, OS_LOG_TYPE_ERROR, "Unexpected extension context class: %{public}@", &v4, 0xCu);
}

@end