@interface AVInputViewController
- (AVInputViewController)initWithBundleID:(id)d;
- (AVInputViewController)initWithBundleID:(id)d controls:(unint64_t)controls;
- (AVInputViewControllerDelegate)delegate;
- (BOOL)isDiscoveryEnabled;
- (void)_updateInputOptionsCountIfNeeded;
- (void)loadView;
- (void)setBundleID:(id)d;
- (void)setDelegate:(id)delegate;
- (void)setDiscoveryEnabled:(BOOL)enabled;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation AVInputViewController

- (void)_updateInputOptionsCountIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      pickerWrapper = self->_pickerWrapper;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__AVInputViewController__updateInputOptionsCountIfNeeded__block_invoke;
      v8[3] = &unk_1E7209618;
      objc_copyWeak(&v9, &location);
      [(AVControlCenterMicrophonePickerWrapper *)pickerWrapper setDidUpdateInputOptionsCount:v8];
      objc_destroyWeak(&v9);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = self->_pickerWrapper;

    [(AVControlCenterMicrophonePickerWrapper *)v7 setDidUpdateInputOptionsCount:0];
  }
}

void __57__AVInputViewController__updateInputOptionsCountIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 127);
    [v4 inputViewController:v5 didUpdateInputOptionsCount:a2];

    WeakRetained = v5;
  }
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  if (AVInputIsValidBundleID())
  {
    v4 = [dCopy copy];
    bundleID = self->_bundleID;
    self->_bundleID = v4;

    [(AVControlCenterMicrophonePickerWrapper *)self->_pickerWrapper setApplicationBundleID:dCopy];
  }
}

- (void)setDiscoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (AVInputIsValidBundleID())
  {
    if ([(AVControlCenterMicrophonePickerWrapper *)self->_pickerWrapper discovering]!= enabledCopy)
    {
      pickerWrapper = self->_pickerWrapper;

      [(AVControlCenterMicrophonePickerWrapper *)pickerWrapper setDiscovering:enabledCopy];
    }
  }

  else
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "This property is not available for the current bundle identifier.", v7, 2u);
    }
  }
}

- (BOOL)isDiscoveryEnabled
{
  if (AVInputIsValidBundleID())
  {
    pickerWrapper = self->_pickerWrapper;

    return [(AVControlCenterMicrophonePickerWrapper *)pickerWrapper discovering];
  }

  else
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "This property is not available for the current bundle identifier.", v6, 2u);
    }

    return 0;
  }
}

- (AVInputViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(AVInputViewController *)self _updateInputOptionsCountIfNeeded];
    v5 = obj;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AVInputViewController;
  [(AVInputViewController *)&v4 viewDidDisappear:disappear];
  [(AVControlCenterMicrophonePickerWrapper *)self->_pickerWrapper setOnScreen:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AVInputViewController;
  [(AVInputViewController *)&v6 viewDidAppear:appear];
  viewIfLoaded = [(AVInputViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    [(AVControlCenterMicrophonePickerWrapper *)self->_pickerWrapper setDiscovering:1];
    [(AVControlCenterMicrophonePickerWrapper *)self->_pickerWrapper setOnScreen:1];
  }
}

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = AVInputViewController;
  [(AVInputViewController *)&v26 loadView];
  if (!self->_hostingController)
  {
    v3 = objc_alloc_init(AVControlCenterMicrophonePickerWrapper);
    pickerWrapper = self->_pickerWrapper;
    self->_pickerWrapper = v3;

    v5 = [(AVControlCenterMicrophonePickerWrapper *)self->_pickerWrapper makeViewControllerWithApplicationBundleID:self->_bundleID];
    hostingController = self->_hostingController;
    self->_hostingController = v5;

    [(AVInputViewController *)self addChildViewController:self->_hostingController];
    view = [(AVInputViewController *)self view];
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view2 = [(UIViewController *)self->_hostingController view];
    [view2 setFrame:{v9, v11, v13, v15}];

    view3 = [(UIViewController *)self->_hostingController view];
    [view3 setAutoresizingMask:18];

    view4 = [(AVInputViewController *)self view];
    view5 = [(UIViewController *)self->_hostingController view];
    [view4 addSubview:view5];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    view6 = [(UIViewController *)self->_hostingController view];
    [view6 setBackgroundColor:clearColor];

    [(UIViewController *)self->_hostingController didMoveToParentViewController:self];
    [(AVInputViewController *)self _updateInputOptionsCountIfNeeded];
    [(AVInputViewController *)self setPreferredContentSize:*MEMORY[0x1E69DE788], 122.0];
    objc_initWeak(&location, self);
    v22 = self->_pickerWrapper;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __33__AVInputViewController_loadView__block_invoke;
    v23[3] = &unk_1E7209A88;
    objc_copyWeak(&v24, &location);
    [(AVControlCenterMicrophonePickerWrapper *)v22 setDidUpdateGainControl:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __33__AVInputViewController_loadView__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = +[AVKitGlobalSettings shared];
    v4 = [v3 inputPickerGainControlEnabled];

    v5 = 85.0;
    if (a2)
    {
      v5 = 122.0;
    }

    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 68.0;
    }

    [WeakRetained preferredContentSize];
    if (v7 != v6)
    {
      [WeakRetained setPreferredContentSize:{*MEMORY[0x1E69DE788], v6}];
    }
  }
}

- (AVInputViewController)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AVInputViewController;
  v5 = [(AVInputViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (AVInputViewController)initWithBundleID:(id)d controls:(unint64_t)controls
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = AVInputViewController;
  v6 = [(AVInputViewController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = [dCopy copy];
    bundleID = v6->_bundleID;
    v6->_bundleID = v7;
  }

  return v6;
}

@end