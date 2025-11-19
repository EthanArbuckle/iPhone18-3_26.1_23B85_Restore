@interface PasscodeContentViewControllerFullScreen
- (BOOL)resignFirstResponder;
- (PasscodeContentViewControllerFullScreen)initWithPasscode:(id)a3 options:(id)a4;
- (PasscodeViewDelegate)delegate;
- (void)_embedSubview:(id)a3;
- (void)_setContentView:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)_showBackOffView;
- (void)_showPasscodeView;
- (void)animateToFailureStateWithCompletion:(id)a3;
- (void)animateToSucessStateWithCompletion:(id)a3;
- (void)loadView;
- (void)passcodeBackOffViewCanceled:(id)a3;
- (void)passcodeLockViewCancelButtonPressed:(id)a3;
- (void)passcodeLockViewPasscodeDidChange:(id)a3;
- (void)passcodeLockViewPasscodeEntered:(id)a3;
- (void)setState:(id)a3;
@end

@implementation PasscodeContentViewControllerFullScreen

- (PasscodeContentViewControllerFullScreen)initWithPasscode:(id)a3 options:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PasscodeContentViewControllerFullScreen;
  v7 = [(PasscodeContentViewControllerFullScreen *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(PasscodeContentViewBackground);
    background = v7->_background;
    v7->_background = v8;

    objc_storeStrong(&v7->_passcode, a3);
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(PasscodeContentViewControllerFullScreen *)self setView:v3];

  v5 = +[UIColor clearColor];
  v4 = [(PasscodeContentViewControllerFullScreen *)self view];
  [v4 setBackgroundColor:v5];
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = PasscodeContentViewControllerFullScreen;
  [(PasscodeContentViewControllerFullScreen *)&v4 resignFirstResponder];
  return [(SBUIPasscodeLockView *)self->_passcodeView resignFirstResponder];
}

- (void)setState:(id)a3
{
  if (self->_state != a3)
  {
    objc_storeStrong(&self->_state, a3);
    v5 = [(PasscodeViewState *)self->_state rawValue];
    if (v5 == 1)
    {
      [(PasscodeContentViewControllerFullScreen *)self _showBackOffView];
    }

    else if (!v5)
    {
      [(PasscodeContentViewControllerFullScreen *)self _showPasscodeView];
    }
  }

  _objc_release_x1();
}

- (void)animateToSucessStateWithCompletion:(id)a3
{
  passcodeView = self->_passcodeView;
  if (passcodeView)
  {
    [(SBUIPasscodeLockView *)passcodeView autofillForSuccessfulMesaAttemptWithCompletion:a3];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (void)animateToFailureStateWithCompletion:(id)a3
{
  passcodeView = self->_passcodeView;
  v4 = a3;
  [(SBUIPasscodeLockView *)passcodeView resetForFailedPasscode];
  v4[2]();
}

- (void)passcodeLockViewPasscodeDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewPasscodeDidChange:self];
}

- (void)passcodeLockViewPasscodeEntered:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewPasscodeEntered:self];
}

- (void)passcodeLockViewCancelButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewCancelButtonPressed:self];
}

- (void)passcodeBackOffViewCanceled:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewCancelButtonPressed:self];
}

- (void)_showPasscodeView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  passcodeView = self->_passcodeView;

  v5 = objc_alloc_init(PasscodeActiveViewFactory);
  passcode = self->_passcode;
  v7 = [(PasscodeViewState *)self->_state style];
  v8 = [(PasscodeActiveViewFactory *)v5 passcodeViewForPasscode:passcode style:v7];
  v9 = self->_passcodeView;
  self->_passcodeView = v8;

  [(SBUIPasscodeLockView *)self->_passcodeView setDelegate:self];
  [(PasscodeContentViewControllerFullScreen *)self _embedSubview:self->_passcodeView];
  v10 = self->_passcodeView;
  v11 = [(PasscodeViewState *)self->_state title];
  v12 = [(PasscodeViewState *)self->_state subtitle];
  [(SBUIPasscodeLockView *)v10 updateStatusText:v11 subtitle:v12 animated:0];

  v13 = [(PasscodeViewState *)self->_state accessoryView];

  if (v13)
  {
    v14 = [(PasscodeViewState *)self->_state accessoryView];
    [v14 removeFromSuperview];

    v15 = self->_passcodeView;
    v16 = [(PasscodeViewState *)self->_state accessoryView];
    [(SBUIPasscodeLockView *)v15 addSubview:v16];

    v17 = self->_passcodeView;
    v18 = [(PasscodeViewState *)self->_state accessoryView];
    [(SBUIPasscodeLockView *)v17 bringSubviewToFront:v18];
  }

  background = self->_background;
  v20 = [(PasscodeViewState *)self->_state style];
  [(PasscodeContentViewBackground *)background applyBackgroundForStyle:v20 toView:self->_passcodeView];

  v21 = self->_passcodeView;

  [(PasscodeContentViewControllerFullScreen *)self _setContentView:v21 animated:WeakRetained != passcodeView withCompletion:&__block_literal_global_6];
}

- (void)_showBackOffView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  backOffView = self->_backOffView;

  v5 = self->_backOffView;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(PasscodeBackOffView);
  }

  v7 = self->_backOffView;
  self->_backOffView = v6;

  v8 = WeakRetained != backOffView;
  [(PasscodeBackOffView *)self->_backOffView setDelegate:self];
  [(PasscodeContentViewControllerFullScreen *)self _embedSubview:self->_backOffView];
  v9 = [(PasscodeViewState *)self->_state style];
  -[PasscodeBackOffView setHasWhiteBackground:](self->_backOffView, "setHasWhiteBackground:", [v9 rawValue] == 1);

  v10 = [(PasscodeViewState *)self->_state title];
  [(PasscodeBackOffView *)self->_backOffView setTitle:v10];

  v11 = [(PasscodeViewState *)self->_state subtitle];
  [(PasscodeBackOffView *)self->_backOffView setSubtitle:v11];

  background = self->_background;
  v13 = [(PasscodeViewState *)self->_state style];
  [(PasscodeContentViewBackground *)background applyBackgroundForStyle:v13 toView:self->_backOffView];

  v14 = self->_backOffView;

  [(PasscodeContentViewControllerFullScreen *)self _setContentView:v14 animated:v8 withCompletion:&__block_literal_global_8];
}

- (void)_setContentView:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  if (WeakRetained == v8)
  {
    v9[2](v9);
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = objc_loadWeakRetained(&self->_contentView);
    objc_storeWeak(&self->_contentView, v8);
    [v8 setAlpha:0.0];
    [(PasscodeContentViewControllerFullScreen *)self _embedSubview:v8];
    v11 = 0.0;
    if (v6)
    {
      if (v19[5])
      {
        v11 = 0.5;
      }

      else
      {
        v11 = 0.01;
      }
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __83__PasscodeContentViewControllerFullScreen__setContentView_animated_withCompletion___block_invoke;
    v16[3] = &unk_1000AA3C0;
    v12 = v8;
    v17 = v12;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __83__PasscodeContentViewControllerFullScreen__setContentView_animated_withCompletion___block_invoke_2;
    v13[3] = &unk_1000AB0B0;
    v15 = &v18;
    v14 = v9;
    [UIView animateWithDuration:196608 delay:v16 options:v13 animations:v11 completion:0.0];
    [v12 becomeFirstResponder];

    _Block_object_dispose(&v18, 8);
  }
}

uint64_t __83__PasscodeContentViewControllerFullScreen__setContentView_animated_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperview];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)_embedSubview:(id)a3
{
  v4 = a3;
  [UIView setAnimationsEnabled:0];
  v5 = [(PasscodeContentViewControllerFullScreen *)self view];
  [v5 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v4 topAnchor];
  v7 = [(PasscodeContentViewControllerFullScreen *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v4 bottomAnchor];
  v11 = [(PasscodeContentViewControllerFullScreen *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v4 leadingAnchor];
  v15 = [(PasscodeContentViewControllerFullScreen *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v4 trailingAnchor];
  v19 = [(PasscodeContentViewControllerFullScreen *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  [v4 layoutIfNeeded];

  [UIView setAnimationsEnabled:1];
}

- (PasscodeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end