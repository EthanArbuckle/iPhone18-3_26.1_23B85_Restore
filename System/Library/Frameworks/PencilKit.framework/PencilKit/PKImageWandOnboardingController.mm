@interface PKImageWandOnboardingController
+ (BOOL)canShowOnboardingView;
+ (void)resetOnboarding;
- (id)initWithPresentationViewController:(void *)a3 toolPicker:;
- (uint64_t)showOnboardingViewAfterDelay:(uint64_t)result;
- (void)_dismissOnboardingView;
- (void)_stopObservingToolPickerWillShowNotification;
- (void)imageWandOnboardingControllerIsBeingDismissed:(id)a3;
- (void)imageWandOnboardingControllerViewDidAppear:(id)a3 animated:(BOOL)a4;
- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5;
- (void)pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4;
- (void)showOnboardingView;
@end

@implementation PKImageWandOnboardingController

- (id)initWithPresentationViewController:(void *)a3 toolPicker:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_8;
  }

  v18.receiver = a1;
  v18.super_class = PKImageWandOnboardingController;
  v7 = objc_msgSendSuper2(&v18, sel_init);
  a1 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    goto LABEL_11;
  }

  if (!v6)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
LABEL_11:
    v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

  objc_storeWeak(v7 + 1, v5);
  objc_storeWeak(a1 + 2, v6);
  v8 = objc_alloc_init(PKImageWandOnboarding);
  v9 = a1[3];
  a1[3] = v8;

  v10 = __instances;
  if (!__instances)
  {
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v12 = __instances;
    __instances = v11;

    v10 = __instances;
  }

  [v10 addObject:a1];
LABEL_8:

  return a1;
}

+ (BOOL)canShowOnboardingView
{
  v2 = +[PKInternalSettings sharedInstance];
  v3 = [(PKInternalSettings *)v2 imageWandOnboardingDisabled];

  if (v3)
  {
    return 0;
  }

  v5 = +[PKInternalSettings sharedInstance];
  v6 = [(PKInternalSettings *)v5 forceShowImageWandOnboarding];

  if (v6)
  {
    return 1;
  }

  else
  {
    return +[PKImageWandOnboarding hasSeenOnboardingUI]^ 1;
  }
}

+ (void)resetOnboarding
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "reset onboarding", buf, 2u);
  }

  [PKImageWandOnboarding setHasSeenOnboardingUI:?];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = __instances;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(PKImageWandOnboardingController *)*(*(&v8 + 1) + 8 * v7++) _dismissOnboardingView];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_dismissOnboardingView
{
  if (a1 && *(a1 + 32))
  {
    [(PKImageWandOnboardingController *)a1 _stopObservingToolPickerWillShowNotification];
    *(a1 + 32) = 0;
    v2 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "hide onboarding", v4, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    [WeakRetained dismissModalViewControllerWithTransition:7];
  }
}

- (uint64_t)showOnboardingViewAfterDelay:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v3 selector:sel_showOnboardingView object:v3];

    return [v3 performSelector:sel_showOnboardingView withObject:0 afterDelay:a2];
  }

  return result;
}

- (void)showOnboardingView
{
  if ([objc_opt_class() canShowOnboardingView])
  {
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
    [WeakRetained setKeyboardSceneDelegateVisibilityObserver:self];

    [PKImageWandOnboarding setHasSeenOnboardingUI:?];
    v4 = objc_alloc_init(PKImageWandOnboardingViewController);
    p_super = &v4->super.super.super.super.super;
    if (v4)
    {
      objc_storeWeak(&v4->_delegate, self);
    }

    [MEMORY[0x1E69B7D70] preferredContentSize];
    v7 = v6;
    v9 = v8;
    v10 = [p_super view];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [p_super view];
    v12 = [v11 widthAnchor];
    v13 = [v12 constraintEqualToConstant:v7];
    [v13 setActive:1];

    v14 = [p_super view];
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintEqualToConstant:v9];
    [v16 setActive:1];

    v17 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEFAULT, "show onboarding", v19, 2u);
    }

    v18 = objc_loadWeakRetained(&self->_presentationViewController);
    [v18 presentModalViewController:p_super withTransition:3];
  }

  else
  {
    p_super = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, p_super, OS_LOG_TYPE_DEFAULT, "can't show image wand onboarding view", buf, 2u);
    }
  }
}

- (void)_stopObservingToolPickerWillShowNotification
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [v3 removeObserver:a1 name:@"PKToolPickerWillShowNotification" object:WeakRetained];
  }
}

- (void)imageWandOnboardingControllerIsBeingDismissed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
  [WeakRetained setKeyboardSceneDelegateVisibilityObserver:0];

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 imageWandOnboardingControllerDidHideView:self];
  }
}

- (void)imageWandOnboardingControllerViewDidAppear:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "onboarding view did appear", buf, 2u);
  }

  self->_onboardingViewDidAppear = 1;
  v7 = objc_alloc_init(MEMORY[0x1E69DCD58]);
  [v7 setDelegate:self];
  v8 = [v5 view];
  [v8 addInteraction:v7];

  [v5 becomeFirstResponder];
  LOBYTE(v8) = [v5 isFirstResponder];

  if (v8)
  {
    [(PKImageWandOnboardingController *)self _stopObservingToolPickerWillShowNotification];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    WeakRetained = objc_loadWeakRetained(&self->_toolPicker);
    [v9 addObserver:self selector:sel__toolPickerWillShow_ name:@"PKToolPickerWillShowNotification" object:WeakRetained];
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "failed to become FR", v11, 2u);
    }
  }
}

- (void)keyboardSceneDelegate:(id)a3 inputViewSetVisibilityDidChange:(BOOL)a4 includedReset:(BOOL)a5
{
  v5 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "ignored keyboard scene event while onboarding UI is visible", v6, 2u);
  }
}

- (void)pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4
{
  v4 = os_log_create("com.apple.pencilkit", "PKImageWandOnboardingController");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "ignored squeeze event while onboarding UI is visible", v5, 2u);
  }
}

@end