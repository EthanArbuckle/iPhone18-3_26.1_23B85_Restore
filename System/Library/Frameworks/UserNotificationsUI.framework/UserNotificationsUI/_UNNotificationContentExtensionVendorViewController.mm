@interface _UNNotificationContentExtensionVendorViewController
- (BOOL)canBecomeFirstResponder;
- (_UNNotificationContentExtensionVendorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_extensionBundleIdentifier;
- (id)notificationExtensionVendorContext;
- (void)_invalidateExtensionContext;
- (void)_setupExtensionViewController:(id)controller;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)addChildViewController:(id)controller;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)preserveInputViews;
- (void)restoreInputViews;
- (void)setPreferredContentSize:(CGSize)size;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation _UNNotificationContentExtensionVendorViewController

- (_UNNotificationContentExtensionVendorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = _UNNotificationContentExtensionVendorViewController;
  v4 = [(_UNNotificationContentExtensionVendorViewController *)&v7 initWithNibName:name bundle:bundle];
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
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [extensionViewController removeObserver:self forKeyPath:@"title"];

  v4.receiver = self;
  v4.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v4 dealloc];
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  notificationExtensionVendorContext = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [notificationExtensionVendorContext _extensionWantsToBecomeFirstResponder:{objc_msgSend(extensionViewController, "canBecomeFirstResponder")}];
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v6 addChildViewController:controllerCopy];
  if ([controllerCopy conformsToProtocol:&unk_284DE4938])
  {
    [(_UNNotificationContentExtensionVendorViewController *)self _setupExtensionViewController:controllerCopy];
  }

  else
  {
    v5 = UNLogExtensionsService;
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
    {
      [(_UNNotificationContentExtensionVendorViewController *)v5 addChildViewController:controllerCopy, self];
    }
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _UNNotificationContentExtensionVendorViewController;
  controllerCopy = controller;
  [(_UNNotificationContentExtensionVendorViewController *)&v5 willMoveToParentViewController:controllerCopy];
  [controllerCopy preferredContentSizeDidChangeForChildContentContainer:{self, v5.receiver, v5.super_class}];
}

- (void)loadView
{
  v3 = [_UNNotificationContentExtensionVendorViewControllerView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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
  view = [(_UNNotificationContentExtensionVendorViewController *)self view];
  [view addGestureRecognizer:self->_touchDelayGestureRecognizer];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v4 viewWillLayoutSubviews];
  notificationExtensionVendorContext = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
  [notificationExtensionVendorContext _extensionWantsToUpdateMediaPlayPauseButton];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(_UNNotificationContentExtensionVendorViewController *)&v7 viewWillAppear:appearCopy];
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [extensionViewController bs_beginAppearanceTransition:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(_UNNotificationContentExtensionVendorViewController *)&v8 viewDidAppear:appearCopy];
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [extensionViewController bs_endAppearanceTransition:1];

  notificationExtensionVendorContext = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
  [notificationExtensionVendorContext _extensionWantsMessagesFromHostDelivered];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(_UNNotificationContentExtensionVendorViewController *)&v8 viewWillDisappear:disappearCopy];
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [extensionViewController bs_beginAppearanceTransition:0 animated:disappearCopy];

  firstResponder = [(_UNNotificationContentExtensionVendorViewController *)self firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(_UNNotificationContentExtensionVendorViewController *)&v7 viewDidDisappear:disappearCopy];
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  [extensionViewController bs_endAppearanceTransition:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [(_UNNotificationContentExtensionVendorViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [containerCopy preferredContentSize];
  if (v6 != v10 || v8 != v9)
  {
    [containerCopy preferredContentSize];
    [(_UNNotificationContentExtensionVendorViewController *)self setPreferredContentSize:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = _UNNotificationContentExtensionVendorViewController;
  coordinatorCopy = coordinator;
  [(_UNNotificationContentExtensionVendorViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106___UNNotificationContentExtensionVendorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278B71988;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v17.receiver = self;
  v17.super_class = _UNNotificationContentExtensionVendorViewController;
  containerCopy = container;
  [(_UNNotificationContentExtensionVendorViewController *)&v17 systemLayoutFittingSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x277CBF3A8] && v8 == *(MEMORY[0x277CBF3A8] + 8))
  {
    extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
    view = [extensionViewController view];

    view2 = [(_UNNotificationContentExtensionVendorViewController *)self view];
    [view2 bounds];
    Width = CGRectGetWidth(v18);

    LODWORD(v14) = 1148846080;
    LODWORD(v15) = 1112014848;
    [view systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
    if (v16 > 0.0)
    {
      [(_UNNotificationContentExtensionVendorViewController *)self setPreferredContentSize:Width];
    }
  }
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v6 beginRequestWithExtensionContext:contextCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contextCopy setNotificationExtensionContainer:self];
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

- (void)setPreferredContentSize:(CGSize)size
{
  v3.receiver = self;
  v3.super_class = _UNNotificationContentExtensionVendorViewController;
  [(_UNNotificationContentExtensionVendorViewController *)&v3 setPreferredContentSize:size.width, size.height];
}

- (BOOL)canBecomeFirstResponder
{
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  canBecomeFirstResponder = [extensionViewController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (void)preserveInputViews
{
  mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  [mEMORY[0x277D75830] _preserveInputViewsWithId:v3 animated:1];
}

- (void)restoreInputViews
{
  mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  [mEMORY[0x277D75830] _restoreInputViewsWithId:v3 animated:1];
}

- (id)_extensionBundleIdentifier
{
  v2 = MEMORY[0x277CCA8D8];
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];
  v4 = [v2 bundleForClass:objc_opt_class()];
  bundleIdentifier = [v4 bundleIdentifier];

  return bundleIdentifier;
}

- (id)notificationExtensionVendorContext
{
  extensionContext = [(_UNNotificationContentExtensionVendorViewController *)self extensionContext];
  v3 = objc_opt_class();
  v4 = extensionContext;
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

- (void)_setupExtensionViewController:(id)controller
{
  objc_storeStrong(&self->_extensionViewController, controller);
  controllerCopy = controller;
  view = [(_UNNotificationContentExtensionVendorViewController *)self view];
  view2 = [controllerCopy view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [controllerCopy preferredContentSize];
  [(_UNNotificationContentExtensionVendorViewController *)self setPreferredContentSize:?];
  [controllerCopy addObserver:self forKeyPath:@"title" options:1 context:0];
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

    extensionContext = [(_UNNotificationContentExtensionVendorViewController *)self extensionContext];
    [extensionContext completeRequestReturningItems:0 completionHandler:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  extensionViewController = [(_UNNotificationContentExtensionVendorViewController *)self extensionViewController];

  if (extensionViewController == objectCopy)
  {
    v12 = [pathCopy isEqualToString:@"title"];

    if (!v12)
    {
      goto LABEL_5;
    }

    extensionViewController = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    notificationExtensionVendorContext = [(_UNNotificationContentExtensionVendorViewController *)self notificationExtensionVendorContext];
    [notificationExtensionVendorContext _extensionDidUpdateTitle:extensionViewController];
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