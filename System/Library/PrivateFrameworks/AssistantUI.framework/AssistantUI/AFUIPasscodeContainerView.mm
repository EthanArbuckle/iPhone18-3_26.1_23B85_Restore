@interface AFUIPasscodeContainerView
- (AFUIPasscodeContainerView)initWithFrame:(CGRect)frame backdropView:(id)view mode:(int64_t)mode passcodeViewFactoryClass:(Class)class;
- (AFUIPasscodeContainerViewDelegate)delegate;
- (_UIBackdropView)backdropView;
- (id)_lockViewLegibilityProvider;
- (void)cancelShowingPasscodeUnlock;
- (void)cleanupWithResult:(int64_t)result;
- (void)passcodeLockViewCancelButtonPressed:(id)pressed;
- (void)passcodeLockViewPasscodeEntered:(id)entered;
- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)mesa;
- (void)showPasscodeUnlockWithStatusText:(id)text subtitle:(id)subtitle completionHandler:(id)handler unlockCompletionHandler:(id)completionHandler;
@end

@implementation AFUIPasscodeContainerView

- (AFUIPasscodeContainerView)initWithFrame:(CGRect)frame backdropView:(id)view mode:(int64_t)mode passcodeViewFactoryClass:(Class)class
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = AFUIPasscodeContainerView;
  height = [(AFUIPasscodeContainerView *)&v17 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeWeak(&height->_backdropView, viewCopy);
    v15->_mode = mode;
    v15->_factoryClass = class;
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

- (void)showPasscodeUnlockWithStatusText:(id)text subtitle:(id)subtitle completionHandler:(id)handler unlockCompletionHandler:(id)completionHandler
{
  textCopy = text;
  subtitleCopy = subtitle;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (!objc_opt_class() || ((mode = self->_mode, v15 = mode > 8, v16 = (1 << mode) & 0x191, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUIPasscodeContainerView showPasscodeUnlockWithStatusText:v19 subtitle:? completionHandler:? unlockCompletionHandler:?];
      if (!handlerCopy)
      {
LABEL_13:
        if (completionHandlerCopy)
        {
          completionHandlerCopy[2](completionHandlerCopy, 1);
        }

        goto LABEL_23;
      }

LABEL_12:
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_13;
    }

LABEL_11:
    if (!handlerCopy)
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
      if (!handlerCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  self->_unlockAttemptCount = 0;
  v20 = _Block_copy(completionHandlerCopy);
  unlockCompletion = self->_unlockCompletion;
  self->_unlockCompletion = v20;

  lockView = [(objc_class *)self->_factoryClass lockView];
  [lockView setDelegate:self];
  [lockView setShowsEmergencyCallButton:0];
  [lockView setShowsStatusField:0];
  [lockView setUsesBiometricPresentation:1];
  [lockView setBiometricPresentationAncillaryButtonsVisible:1];
  [lockView setShowsProudLock:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [lockView setCustomBackgroundColor:clearColor];

  _lockViewLegibilityProvider = [(AFUIPasscodeContainerView *)self _lockViewLegibilityProvider];
  [lockView setBackgroundLegibilitySettingsProvider:_lockViewLegibilityProvider];
  [(AFUIPasscodeContainerView *)self bounds];
  [lockView setFrame:?];
  objc_storeStrong(&self->_lockView, lockView);
  [(AFUIPasscodeContainerView *)self addSubview:lockView];
  [lockView setAutoresizingMask:18];
  [lockView becomeFirstResponder];
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

    [(AFUIPasscodeContainerView *)self insertSubview:passcodeBlurView belowSubview:lockView];
  }

  [lockView setShowsStatusField:1];
  if ([textCopy length])
  {
    [lockView updateStatusText:textCopy subtitle:subtitleCopy animated:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeView:self animateShowPasscodeWithCompletionHandler:handlerCopy];

LABEL_23:
}

- (void)cleanupWithResult:(int64_t)result
{
  unlockCompletion = [(AFUIPasscodeContainerView *)self unlockCompletion];
  if (unlockCompletion)
  {
    unlockCompletion[2](unlockCompletion, result);
  }

  lockView = [(AFUIPasscodeContainerView *)self lockView];
  [lockView removeFromSuperview];

  [(AFUIPasscodeContainerView *)self setLockView:0];
  [(AFUIPasscodeContainerView *)self setUnlockCompletion:0];
}

- (void)passcodeLockViewPasscodeEntered:(id)entered
{
  enteredCopy = entered;
  ++self->_unlockAttemptCount;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  passcode = [enteredCopy passcode];
  v7 = [WeakRetained passcodeView:self attemptUnlockWithPassword:passcode];

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
  [enteredCopy resetForFailedPasscode];
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

- (void)passcodeLockViewCancelButtonPressed:(id)pressed
{
  pressedCopy = pressed;
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

- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)mesa
{
  mesaCopy = mesa;
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