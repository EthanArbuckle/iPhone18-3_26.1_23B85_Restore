@interface BCUIBatteryAvocadoViewController
+ (id)imageForIconInfo:(BCUIIconImageInfo *)info;
+ (void)initialize;
- (id)_synthesizedDebugIdentifier;
- (void)_configureAvocadoViewControllerIfNecessary;
- (void)connectedDevicesDidChange:(id)change;
- (void)setScaleFactor:(double)factor;
- (void)setWidgetFamliy:(int64_t)famliy;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUIBatteryAvocadoViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x1EEDF0450]();
  }
}

+ (id)imageForIconInfo:(BCUIIconImageInfo *)info
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"icon-%fx%f@%f", v3, v4, v5];
  v11 = +[BCUIMappedImageCache sharedCache];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__BCUIBatteryAvocadoViewController_imageForIconInfo___block_invoke;
  v15[3] = &__block_descriptor_64_e18___UIImage_16__0_Q8l;
  v15[4] = self;
  v15[5] = v8;
  v15[6] = v7;
  v15[7] = v6;
  v12 = [v11 imageForKey:v10 generatingIfNecessaryWithBlock:v15];

  imageFlippedForRightToLeftLayoutDirection = [v12 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

id __53__BCUIBatteryAvocadoViewController_imageForIconInfo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v3 = [v2 bsui_imageForIconInfo:{*(a1 + 40), *(a1 + 48), *(a1 + 56)}];

  return v3;
}

- (void)setWidgetFamliy:(int64_t)famliy
{
  if ((famliy - 1) >= 2)
  {
    [(BCUIBatteryAvocadoViewController *)famliy setWidgetFamliy:a2, self];
  }

  if (self->_widgetFamily != famliy)
  {
    self->_widgetFamily = famliy;
    viewIfLoaded = [(BCUIAvocadoViewController *)self->_avocadoViewController viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    [(BCUIAvocadoViewController *)self->_avocadoViewController willMoveToParentViewController:0];
    [(BCUIAvocadoViewController *)self->_avocadoViewController removeFromParentViewController];
    avocadoViewController = self->_avocadoViewController;
    self->_avocadoViewController = 0;

    viewIfLoaded2 = [(BCUIBatteryAvocadoViewController *)self viewIfLoaded];
    [viewIfLoaded2 setNeedsLayout];
  }
}

- (void)setScaleFactor:(double)factor
{
  if (self->_scaleFactor != factor)
  {
    self->_scaleFactor = factor;
    [(BCUIAvocadoViewController *)self->_avocadoViewController setScaleFactor:?];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = BCUIBatteryAvocadoViewController;
  [(BCUIBatteryAvocadoViewController *)&v12 viewDidLoad];
  [(BCUIBatteryAvocadoViewController *)self _configureAvocadoViewControllerIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x1E698E840]);
  batteryDeviceController = self->_batteryDeviceController;
  self->_batteryDeviceController = v3;

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundleIdentifier = [v5 bundleIdentifier];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [bundleIdentifier stringByAppendingFormat:@".%@", v8];
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  queue = self->_queue;
  self->_queue = SerialWithQoS;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BCUIBatteryAvocadoViewController;
  [(BCUIBatteryAvocadoViewController *)&v3 viewWillLayoutSubviews];
  [(BCUIBatteryAvocadoViewController *)self _configureAvocadoViewControllerIfNecessary];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v13 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _synthesizedDebugIdentifier = [(BCUIBatteryAvocadoViewController *)self _synthesizedDebugIdentifier];
    *buf = 138543618;
    v10 = _synthesizedDebugIdentifier;
    v11 = 2082;
    v12 = "[BCUIBatteryAvocadoViewController viewWillAppear:]";
    _os_log_impl(&dword_1C1C4A000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) %{public}s", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = BCUIBatteryAvocadoViewController;
  [(BCUIBatteryAvocadoViewController *)&v8 viewWillAppear:appearCopy];
  [(BCBatteryDeviceController *)self->_batteryDeviceController addBatteryDeviceObserver:self queue:self->_queue];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v13 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _synthesizedDebugIdentifier = [(BCUIBatteryAvocadoViewController *)self _synthesizedDebugIdentifier];
    *buf = 138543618;
    v10 = _synthesizedDebugIdentifier;
    v11 = 2082;
    v12 = "[BCUIBatteryAvocadoViewController viewDidAppear:]";
    _os_log_impl(&dword_1C1C4A000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) %{public}s", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = BCUIBatteryAvocadoViewController;
  [(BCUIBatteryAvocadoViewController *)&v8 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _synthesizedDebugIdentifier = [(BCUIBatteryAvocadoViewController *)self _synthesizedDebugIdentifier];
    *buf = 138543618;
    v10 = _synthesizedDebugIdentifier;
    v11 = 2082;
    v12 = "[BCUIBatteryAvocadoViewController viewWillDisappear:]";
    _os_log_impl(&dword_1C1C4A000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) %{public}s", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = BCUIBatteryAvocadoViewController;
  [(BCUIBatteryAvocadoViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _synthesizedDebugIdentifier = [(BCUIBatteryAvocadoViewController *)self _synthesizedDebugIdentifier];
    *buf = 138543618;
    v10 = _synthesizedDebugIdentifier;
    v11 = 2082;
    v12 = "[BCUIBatteryAvocadoViewController viewDidDisappear:]";
    _os_log_impl(&dword_1C1C4A000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) %{public}s", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = BCUIBatteryAvocadoViewController;
  [(BCUIBatteryAvocadoViewController *)&v8 viewDidDisappear:disappearCopy];
  [(BCBatteryDeviceController *)self->_batteryDeviceController removeBatteryDeviceObserver:self];
}

- (void)connectedDevicesDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BCUIBatteryAvocadoViewController_connectedDevicesDidChange___block_invoke;
  block[3] = &unk_1E814EF58;
  objc_copyWeak(&v8, &location);
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__BCUIBatteryAvocadoViewController_connectedDevicesDidChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained _synthesizedDebugIdentifier];
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1C1C4A000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Connected devices did change: '%{public}@'", &v8, 0x16u);
  }

  v7 = [WeakRetained _avocadoViewController];
  [v7 setBatteryDevices:*(a1 + 32)];
}

- (void)_configureAvocadoViewControllerIfNecessary
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_avocadoViewController)
  {
    v3 = *MEMORY[0x1E698E830];
    if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      _synthesizedDebugIdentifier = [(BCUIBatteryAvocadoViewController *)self _synthesizedDebugIdentifier];
      v6 = NSStringFromWidgetFamily();
      v14 = 138543618;
      v15 = _synthesizedDebugIdentifier;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1C1C4A000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Configuring view controller for size '%{public}@'", &v14, 0x16u);
    }

    v7 = [BCUIAvocadoViewController avocadoViewControllerForWidgetFamily:self->_widgetFamily];
    avocadoViewController = self->_avocadoViewController;
    self->_avocadoViewController = v7;

    v9 = self->_avocadoViewController;
    _synthesizedDebugIdentifier2 = [(BCUIBatteryAvocadoViewController *)self _synthesizedDebugIdentifier];
    [(BCUIAvocadoViewController *)v9 setDebugIdentifier:_synthesizedDebugIdentifier2];

    scaleFactor = self->_scaleFactor;
    if (scaleFactor == 0.0)
    {
      scaleFactor = 1.0;
    }

    [(BCUIAvocadoViewController *)self->_avocadoViewController setScaleFactor:scaleFactor];
    [(BCUIBatteryAvocadoViewController *)self addChildViewController:self->_avocadoViewController];
    [(BCUIAvocadoViewController *)self->_avocadoViewController didMoveToParentViewController:self];
    view = [(BCUIBatteryAvocadoViewController *)self view];
    view2 = [(BCUIAvocadoViewController *)self->_avocadoViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
  }
}

- (id)_synthesizedDebugIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = v4;
  if (self->_debugIdentifier)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" [%@]", self->_debugIdentifier];
    v7 = [v3 stringWithFormat:@"<%@%@: %p>", v5, v6, self];
  }

  else
  {
    v7 = [v3 stringWithFormat:@"<%@%@: %p>", v4, &stru_1F41678D8, self];
  }

  return v7;
}

- (void)setWidgetFamliy:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromWidgetFamily();
  [v6 handleFailureInMethod:a2 object:a3 file:@"BCUIBatteryAvocadoViewController.m" lineNumber:51 description:{@"Unsupported avocado size: %@", v5}];
}

@end