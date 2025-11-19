@interface AFUIPasscodeContainerView
- (AFUIPasscodeContainerView)initWithFrame:(CGRect)a3 backdropView:(id)a4 mode:(int64_t)a5 passcodeViewFactoryClass:(Class)a6;
- (AFUIPasscodeContainerViewDelegate)delegate;
- (_UIBackdropView)backdropView;
- (id)_lockViewLegibilityProvider;
- (void)cancelShowingPasscodeUnlock;
- (void)cleanupWithResult:(int64_t)a3;
- (void)passcodeLockViewCancelButtonPressed:(id)a3;
- (void)passcodeLockViewPasscodeEntered:(id)a3;
- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)a3;
- (void)showPasscodeUnlockWithStatusText:(id)a3 subtitle:(id)a4 completionHandler:(id)a5 unlockCompletionHandler:(id)a6;
@end

@implementation AFUIPasscodeContainerView

- (AFUIPasscodeContainerView)initWithFrame:(CGRect)a3 backdropView:(id)a4 mode:(int64_t)a5 passcodeViewFactoryClass:(Class)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v17.receiver = self;
  v17.super_class = AFUIPasscodeContainerView;
  v14 = [(AFUIPasscodeContainerView *)&v17 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_backdropView, v13);
    v15->_mode = a5;
    v15->_factoryClass = a6;
  }

  return v15;
}

- (void)cancelShowingPasscodeUnlock
{
  if (self->_unlockCompletion)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__AFUIPasscodeContainerView_cancelShowingPasscodeUnlock__block_invoke;
    v4[3] = &unk_278CD56E0;
    objc_copyWeak(&v5, &location);
    [WeakRetained passcodeView:self hideLockViewWithResult:2 unlockCompletionHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __56__AFUIPasscodeContainerView_cancelShowingPasscodeUnlock__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupWithResult:a2];
}

- (id)_lockViewLegibilityProvider
{
  v3 = objc_alloc(MEMORY[0x277D65DF8]);
  WeakRetained = objc_loadWeakRetained(&self->_backdropView);
  v5 = [v3 initWithBackdropView:WeakRetained];

  return v5;
}

- (void)showPasscodeUnlockWithStatusText:(id)a3 subtitle:(id)a4 completionHandler:(id)a5 unlockCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!objc_opt_class() || ((mode = self->_mode, v15 = mode > 8, v16 = (1 << mode) & 0x191, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUIPasscodeContainerView showPasscodeUnlockWithStatusText:v19 subtitle:? completionHandler:? unlockCompletionHandler:?];
      if (!v12)
      {
LABEL_13:
        if (v13)
        {
          v13[2](v13, 1);
        }

        goto LABEL_23;
      }

LABEL_12:
      v12[2](v12, 0);
      goto LABEL_13;
    }

LABEL_11:
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (self->_lockView)
  {
    v18 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUIPasscodeContainerView showPasscodeUnlockWithStatusText:v18 subtitle:? completionHandler:? unlockCompletionHandler:?];
      if (!v12)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  self->_unlockAttemptCount = 0;
  v20 = _Block_copy(v13);
  unlockCompletion = self->_unlockCompletion;
  self->_unlockCompletion = v20;

  v22 = [(objc_class *)self->_factoryClass lockView];
  [v22 setDelegate:self];
  [v22 setShowsEmergencyCallButton:0];
  [v22 setShowsStatusField:0];
  [v22 setUsesBiometricPresentation:1];
  [v22 setBiometricPresentationAncillaryButtonsVisible:1];
  [v22 setShowsProudLock:1];
  v23 = [MEMORY[0x277D75348] clearColor];
  [v22 setCustomBackgroundColor:v23];

  v24 = [(AFUIPasscodeContainerView *)self _lockViewLegibilityProvider];
  [v22 setBackgroundLegibilitySettingsProvider:v24];
  [(AFUIPasscodeContainerView *)self bounds];
  [v22 setFrame:?];
  objc_storeStrong(&self->_lockView, v22);
  [(AFUIPasscodeContainerView *)self addSubview:v22];
  [v22 setAutoresizingMask:18];
  [v22 becomeFirstResponder];
  v25 = self->_mode;
  if (v25 == 7 || !v25)
  {
    passcodeBlurView = self->_passcodeBlurView;
    if (!passcodeBlurView)
    {
      v27 = objc_alloc_init(AFUIPasscodeBlurView);
      v28 = self->_passcodeBlurView;
      self->_passcodeBlurView = v27;

      v29 = self->_passcodeBlurView;
      [(AFUIPasscodeContainerView *)self bounds];
      [(AFUIPasscodeBlurView *)v29 setFrame:?];
      [(AFUIPasscodeBlurView *)self->_passcodeBlurView setAutoresizingMask:18];
      [(AFUIPasscodeBlurView *)self->_passcodeBlurView setNeedsLayout];
      passcodeBlurView = self->_passcodeBlurView;
    }

    [(AFUIPasscodeContainerView *)self insertSubview:passcodeBlurView belowSubview:v22];
  }

  [v22 setShowsStatusField:1];
  if ([v10 length])
  {
    [v22 updateStatusText:v10 subtitle:v11 animated:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeView:self animateShowPasscodeWithCompletionHandler:v12];

LABEL_23:
}

- (void)cleanupWithResult:(int64_t)a3
{
  v6 = [(AFUIPasscodeContainerView *)self unlockCompletion];
  if (v6)
  {
    v6[2](v6, a3);
  }

  v5 = [(AFUIPasscodeContainerView *)self lockView];
  [v5 removeFromSuperview];

  [(AFUIPasscodeContainerView *)self setLockView:0];
  [(AFUIPasscodeContainerView *)self setUnlockCompletion:0];
}

- (void)passcodeLockViewPasscodeEntered:(id)a3
{
  v4 = a3;
  ++self->_unlockAttemptCount;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 passcode];
  v7 = [WeakRetained passcodeView:self attemptUnlockWithPassword:v6];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__AFUIPasscodeContainerView_passcodeLockViewPasscodeEntered___block_invoke;
    v13[3] = &unk_278CD56E0;
    objc_copyWeak(&v14, &location);
    [v8 passcodeView:self hideLockViewWithResult:0 unlockCompletionHandler:v13];
LABEL_5:

    objc_destroyWeak(v9 + 4);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  unlockAttemptCount = self->_unlockAttemptCount;
  [v4 resetForFailedPasscode];
  if (unlockAttemptCount >= 3)
  {
    objc_initWeak(&location, self);
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__AFUIPasscodeContainerView_passcodeLockViewPasscodeEntered___block_invoke_2;
    v11[3] = &unk_278CD56E0;
    objc_copyWeak(&v12, &location);
    [v8 passcodeView:self hideLockViewWithResult:1 unlockCompletionHandler:v11];
    goto LABEL_5;
  }

LABEL_6:
}

void __61__AFUIPasscodeContainerView_passcodeLockViewPasscodeEntered___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupWithResult:a2];
}

void __61__AFUIPasscodeContainerView_passcodeLockViewPasscodeEntered___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupWithResult:a2];
}

- (void)passcodeLockViewCancelButtonPressed:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AFUIPasscodeContainerView_passcodeLockViewCancelButtonPressed___block_invoke;
  v6[3] = &unk_278CD56E0;
  objc_copyWeak(&v7, &location);
  [WeakRetained passcodeView:self hideLockViewWithResult:2 unlockCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __65__AFUIPasscodeContainerView_passcodeLockViewCancelButtonPressed___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupWithResult:a2];
}

- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AFUIPasscodeContainerView_passcodeLockViewPasscodeEnteredViaMesa___block_invoke;
  v6[3] = &unk_278CD56E0;
  objc_copyWeak(&v7, &location);
  [WeakRetained passcodeView:self hideLockViewWithResult:0 unlockCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __68__AFUIPasscodeContainerView_passcodeLockViewPasscodeEnteredViaMesa___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupWithResult:a2];
}

- (AFUIPasscodeContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIBackdropView)backdropView
{
  WeakRetained = objc_loadWeakRetained(&self->_backdropView);

  return WeakRetained;
}

@end