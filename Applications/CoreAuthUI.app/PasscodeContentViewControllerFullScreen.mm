@interface PasscodeContentViewControllerFullScreen
- (BOOL)resignFirstResponder;
- (PasscodeContentViewControllerFullScreen)initWithPasscode:(id)passcode options:(id)options;
- (PasscodeViewDelegate)delegate;
- (void)_embedSubview:(id)subview;
- (void)_setContentView:(id)view animated:(BOOL)animated withCompletion:(id)completion;
- (void)_showBackOffView;
- (void)_showPasscodeView;
- (void)animateToFailureStateWithCompletion:(id)completion;
- (void)animateToSucessStateWithCompletion:(id)completion;
- (void)loadView;
- (void)passcodeBackOffViewCanceled:(id)canceled;
- (void)passcodeLockViewCancelButtonPressed:(id)pressed;
- (void)passcodeLockViewPasscodeDidChange:(id)change;
- (void)passcodeLockViewPasscodeEntered:(id)entered;
- (void)setState:(id)state;
@end

@implementation PasscodeContentViewControllerFullScreen

- (PasscodeContentViewControllerFullScreen)initWithPasscode:(id)passcode options:(id)options
{
  passcodeCopy = passcode;
  v11.receiver = self;
  v11.super_class = PasscodeContentViewControllerFullScreen;
  v7 = [(PasscodeContentViewControllerFullScreen *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(PasscodeContentViewBackground);
    background = v7->_background;
    v7->_background = v8;

    objc_storeStrong(&v7->_passcode, passcode);
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(PasscodeContentViewControllerFullScreen *)self setView:v3];

  v5 = +[UIColor clearColor];
  view = [(PasscodeContentViewControllerFullScreen *)self view];
  [view setBackgroundColor:v5];
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = PasscodeContentViewControllerFullScreen;
  [(PasscodeContentViewControllerFullScreen *)&v4 resignFirstResponder];
  return [(SBUIPasscodeLockView *)self->_passcodeView resignFirstResponder];
}

- (void)setState:(id)state
{
  if (self->_state != state)
  {
    objc_storeStrong(&self->_state, state);
    rawValue = [(PasscodeViewState *)self->_state rawValue];
    if (rawValue == 1)
    {
      [(PasscodeContentViewControllerFullScreen *)self _showBackOffView];
    }

    else if (!rawValue)
    {
      [(PasscodeContentViewControllerFullScreen *)self _showPasscodeView];
    }
  }

  _objc_release_x1();
}

- (void)animateToSucessStateWithCompletion:(id)completion
{
  passcodeView = self->_passcodeView;
  if (passcodeView)
  {
    [(SBUIPasscodeLockView *)passcodeView autofillForSuccessfulMesaAttemptWithCompletion:completion];
  }

  else
  {
    (*(completion + 2))(completion);
  }
}

- (void)animateToFailureStateWithCompletion:(id)completion
{
  passcodeView = self->_passcodeView;
  completionCopy = completion;
  [(SBUIPasscodeLockView *)passcodeView resetForFailedPasscode];
  completionCopy[2]();
}

- (void)passcodeLockViewPasscodeDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewPasscodeDidChange:self];
}

- (void)passcodeLockViewPasscodeEntered:(id)entered
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewPasscodeEntered:self];
}

- (void)passcodeLockViewCancelButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeViewCancelButtonPressed:self];
}

- (void)passcodeBackOffViewCanceled:(id)canceled
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
  style = [(PasscodeViewState *)self->_state style];
  v8 = [(PasscodeActiveViewFactory *)v5 passcodeViewForPasscode:passcode style:style];
  v9 = self->_passcodeView;
  self->_passcodeView = v8;

  [(SBUIPasscodeLockView *)self->_passcodeView setDelegate:self];
  [(PasscodeContentViewControllerFullScreen *)self _embedSubview:self->_passcodeView];
  v10 = self->_passcodeView;
  title = [(PasscodeViewState *)self->_state title];
  subtitle = [(PasscodeViewState *)self->_state subtitle];
  [(SBUIPasscodeLockView *)v10 updateStatusText:title subtitle:subtitle animated:0];

  accessoryView = [(PasscodeViewState *)self->_state accessoryView];

  if (accessoryView)
  {
    accessoryView2 = [(PasscodeViewState *)self->_state accessoryView];
    [accessoryView2 removeFromSuperview];

    v15 = self->_passcodeView;
    accessoryView3 = [(PasscodeViewState *)self->_state accessoryView];
    [(SBUIPasscodeLockView *)v15 addSubview:accessoryView3];

    v17 = self->_passcodeView;
    accessoryView4 = [(PasscodeViewState *)self->_state accessoryView];
    [(SBUIPasscodeLockView *)v17 bringSubviewToFront:accessoryView4];
  }

  background = self->_background;
  style2 = [(PasscodeViewState *)self->_state style];
  [(PasscodeContentViewBackground *)background applyBackgroundForStyle:style2 toView:self->_passcodeView];

  v21 = self->_passcodeView;

  [(PasscodeContentViewControllerFullScreen *)self _setContentView:v21 animated:WeakRetained != passcodeView withCompletion:&stru_100096100];
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
  style = [(PasscodeViewState *)self->_state style];
  -[PasscodeBackOffView setHasWhiteBackground:](self->_backOffView, "setHasWhiteBackground:", [style rawValue] == 1);

  title = [(PasscodeViewState *)self->_state title];
  [(PasscodeBackOffView *)self->_backOffView setTitle:title];

  subtitle = [(PasscodeViewState *)self->_state subtitle];
  [(PasscodeBackOffView *)self->_backOffView setSubtitle:subtitle];

  background = self->_background;
  style2 = [(PasscodeViewState *)self->_state style];
  [(PasscodeContentViewBackground *)background applyBackgroundForStyle:style2 toView:self->_backOffView];

  v14 = self->_backOffView;

  [(PasscodeContentViewControllerFullScreen *)self _setContentView:v14 animated:v8 withCompletion:&stru_100096120];
}

- (void)_setContentView:(id)view animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  viewCopy = view;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  if (WeakRetained == viewCopy)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10000316C;
    v22 = sub_10000317C;
    v23 = objc_loadWeakRetained(&self->_contentView);
    objc_storeWeak(&self->_contentView, viewCopy);
    [viewCopy setAlpha:0.0];
    [(PasscodeContentViewControllerFullScreen *)self _embedSubview:viewCopy];
    v11 = 0.0;
    if (animatedCopy)
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
    v16[2] = sub_100003184;
    v16[3] = &unk_100096148;
    v12 = viewCopy;
    v17 = v12;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003190;
    v13[3] = &unk_100096170;
    v15 = &v18;
    v14 = completionCopy;
    [UIView animateWithDuration:196608 delay:v16 options:v13 animations:v11 completion:0.0];
    [v12 becomeFirstResponder];

    _Block_object_dispose(&v18, 8);
  }
}

- (void)_embedSubview:(id)subview
{
  subviewCopy = subview;
  [UIView setAnimationsEnabled:0];
  view = [(PasscodeContentViewControllerFullScreen *)self view];
  [view addSubview:subviewCopy];

  [subviewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [subviewCopy topAnchor];
  view2 = [(PasscodeContentViewControllerFullScreen *)self view];
  topAnchor2 = [view2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  bottomAnchor = [subviewCopy bottomAnchor];
  view3 = [(PasscodeContentViewControllerFullScreen *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v13 setActive:1];

  leadingAnchor = [subviewCopy leadingAnchor];
  view4 = [(PasscodeContentViewControllerFullScreen *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v17 setActive:1];

  trailingAnchor = [subviewCopy trailingAnchor];
  view5 = [(PasscodeContentViewControllerFullScreen *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v21 setActive:1];

  [subviewCopy layoutIfNeeded];

  [UIView setAnimationsEnabled:1];
}

- (PasscodeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end