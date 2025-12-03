@interface APBaseShieldView
- (APBaseShieldView)initWithApplication:(id)application;
- (APBaseShieldView)initWithConfig:(id)config;
- (APBaseShieldViewDelegate)delegate;
- (id)accessibilityElements;
- (void)dealloc;
- (void)emergencyCallHostViewControllerDidDismiss:(id)dismiss;
- (void)emergencyTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setShieldStyle:(unint64_t)style;
- (void)unlockTapped:(id)tapped;
@end

@implementation APBaseShieldView

- (APBaseShieldView)initWithApplication:(id)application
{
  applicationCopy = application;
  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v16 = 0;
  v7 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v16];
  v8 = v16;

  if (v7)
  {
    localizedName = [v7 localizedName];
  }

  else
  {
    v10 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [APBaseShieldView initWithApplication:applicationCopy];
    }

    localizedName = [applicationCopy bundleIdentifier];
  }

  v11 = localizedName;
  shieldedApplication = self->_shieldedApplication;
  self->_shieldedApplication = applicationCopy;
  v13 = applicationCopy;

  v14 = -[APBaseShieldView initWithLocalizedApplicationName:useHiddenStyle:needEmergencyCallButton:](self, "initWithLocalizedApplicationName:useHiddenStyle:needEmergencyCallButton:", v11, [v13 isHidden], applicationRequiresEmergencyCallButton(v13));
  return v14;
}

- (APBaseShieldView)initWithConfig:(id)config
{
  configCopy = config;
  localizedName = [configCopy localizedName];
  if (localizedName)
  {
    localizedName2 = localizedName;
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69635F8]);
    application = [configCopy application];
    bundleIdentifier = [application bundleIdentifier];
    v25 = 0;
    v11 = [v8 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v25];
    v7 = v25;

    if (v11)
    {
      localizedName2 = [v11 localizedName];
    }

    else
    {
      v12 = APUIDefaultFrameworkLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [APBaseShieldView initWithConfig:configCopy];
      }

      application2 = [configCopy application];
      localizedName2 = [application2 bundleIdentifier];
    }
  }

  application3 = [configCopy application];
  isHidden = [application3 isHidden];

  application4 = [configCopy application];
  v17 = applicationRequiresEmergencyCallButton(application4);

  application5 = [configCopy application];
  shieldedApplication = self->_shieldedApplication;
  self->_shieldedApplication = application5;

  v20 = [(APBaseShieldView *)self initWithLocalizedApplicationName:localizedName2 useHiddenStyle:isHidden needEmergencyCallButton:v17];
  if (v20)
  {
    outlet = [configCopy outlet];
    outlet = v20->_outlet;
    v20->_outlet = outlet;

    [(APSystemAppOutlet *)v20->_outlet addShield:v20];
    delegate = [configCopy delegate];
    objc_storeWeak(&v20->_delegate, delegate);
  }

  return v20;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] darkGrayColor];
  }
  v2 = ;

  return v2;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] grayColor];
  }
  v2 = ;

  return v2;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke_61(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] darkGrayColor];
  }
  v2 = ;

  return v2;
}

id __92__APBaseShieldView_initWithLocalizedApplicationName_useHiddenStyle_needEmergencyCallButton___block_invoke_2_78(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

- (id)accessibilityElements
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_shieldStyle)
  {
    unlockButton = self->_unlockButton;
    p_unlockButton = &unlockButton;
  }

  else
  {
    v9[0] = self->_labelsElement;
    p_unlockButton = v9;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_unlockButton count:1];
  if (([(UIButton *)self->_emergencyCallButton isHidden]& 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:self->_emergencyCallButton];

    v4 = v5;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = APBaseShieldView;
  [(APBaseShieldView *)&v4 layoutSubviews];
  label = self->_label;
  [(UILabel *)label bounds];
  [(UILabel *)label convertRect:self toView:?];
  [(UIAccessibilityElement *)self->_labelsElement setAccessibilityFrameInContainerSpace:?];
}

- (void)unlockTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shieldViewUnlockButtonPressed:self];
}

- (void)emergencyCallHostViewControllerDidDismiss:(id)dismiss
{
  if (self->_emergencyVC == dismiss)
  {
    self->_emergencyVC = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)emergencyTapped:(id)tapped
{
  mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
  [mEMORY[0x1E698B0D8] abortOngoingAuthWithCompletion:&__block_literal_global_86];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__APBaseShieldView_emergencyTapped___block_invoke_88;
  v5[3] = &unk_1E7A42048;
  v5[4] = self;
  [(SBUIEmergencyCallHostViewController *)APEmergencyCallHostViewController requestEmergencyCallControllerWithCompletion:v5];
}

void __36__APBaseShieldView_emergencyTapped___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __36__APBaseShieldView_emergencyTapped___block_invoke_cold_1();
    }
  }
}

void __36__APBaseShieldView_emergencyTapped___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  if (*(v5 + 456))
  {
    v6 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __36__APBaseShieldView_emergencyTapped___block_invoke_88_cold_1();
    }
  }

  v7 = v3;
  [v7 setDelegate:*v4];
  v8 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:*v4];
  v9 = v8;
  if (v8)
  {
    [v8 presentViewController:v7 animated:1 completion:0];
    v10 = *v4;
    v11 = v7;
    v12 = *(v10 + 456);
    *(v10 + 456) = v11;
  }

  else
  {
    v12 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __36__APBaseShieldView_emergencyTapped___block_invoke_88_cold_2(v4);
    }
  }
}

- (void)setShieldStyle:(unint64_t)style
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(APApplication *)self->_shieldedApplication bundleIdentifier];
    *buf = 134218242;
    *&buf[4] = style;
    *&buf[12] = 2112;
    *&buf[14] = bundleIdentifier;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "APBaseShieldView setShieldStyle:%lu for %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    selfCopy = self;
    v8 = MEMORY[0x1E69DD250];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __performTransition_block_invoke;
    v15 = &unk_1E7A42098;
    v16 = selfCopy;
    styleCopy = style;
    v9 = selfCopy;
    [v8 transitionWithView:v9 duration:5242880 options:buf animations:0 completion:0.2];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__APBaseShieldView_setShieldStyle___block_invoke;
    block[3] = &unk_1E7A42070;
    objc_copyWeak(v12, &location);
    v12[1] = style;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v12);
  }

  self->_shieldStyle = style;
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x1E69E9840];
}

void __35__APBaseShieldView_setShieldStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __performTransition_block_invoke;
  v6[3] = &unk_1E7A42098;
  v7 = WeakRetained;
  v8 = v3;
  v5 = WeakRetained;
  [v4 transitionWithView:v5 duration:5242880 options:v6 animations:0 completion:0.2];
}

- (void)dealloc
{
  [(APSystemAppOutlet *)self->_outlet removeShield:self];
  v3.receiver = self;
  v3.super_class = APBaseShieldView;
  [(APBaseShieldView *)&v3 dealloc];
}

- (APBaseShieldViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithApplication:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1AEA18000, v2, v3, "making shield view, could not find record for %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [a1 application];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_1AEA18000, v3, v4, "making shield view without localized name, could not find record for %@: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __36__APBaseShieldView_emergencyTapped___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __36__APBaseShieldView_emergencyTapped___block_invoke_88_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end