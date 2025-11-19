@interface PBAPasscodeEntryViewController
- (PBAPasscodeEntryViewController)initWithLightBackground:(BOOL)a3;
- (PBAPasscodeEntryViewControllerDelegate)delegate;
- (void)_userCancelledEntry;
- (void)_userRequestedDismissal;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)passcodeLockViewPasscodeDidChange:(id)a3;
- (void)passcodeLockViewPasscodeEntered:(id)a3;
- (void)resetPasscodeEntryFieldForFailure:(BOOL)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)viewDidLoad;
@end

@implementation PBAPasscodeEntryViewController

- (PBAPasscodeEntryViewController)initWithLightBackground:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PBAPasscodeEntryViewController;
  result = [(PBAPasscodeEntryViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_useLightBackground = a3;
  }

  return result;
}

- (void)setTitleText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    v4 = [v6 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(PBAPasscodeEntryViewController *)self _updatePasscodeStatusTextAnimated:1];
  }
}

- (void)setSubtitleText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_subtitleText isEqualToString:?])
  {
    v4 = [v6 copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v4;

    [(PBAPasscodeEntryViewController *)self _updatePasscodeStatusTextAnimated:1];
  }
}

- (void)resetPasscodeEntryFieldForFailure:(BOOL)a3
{
  v3 = a3;
  v4 = [(PBAPasscodeEntryViewController *)self passcodeLockView];
  v5 = v4;
  if (v3)
  {
    [v4 resetForFailedPasscode];
  }

  else
  {
    [v4 resetForSuccess];
  }
}

- (void)loadView
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = +[SBUIPasscodeLockViewFactory lightPasscodeLockViewForUsersCurrentStyle];
    passcodeLockView = self->_passcodeLockView;
    self->_passcodeLockView = v3;

    v5 = self->_passcodeLockView;
    v6 = [UIColor colorWithWhite:0.65 alpha:1.0];
    [(SBUIPasscodeLockView *)v5 setCustomBackgroundColor:v6];

    v7 = self->_passcodeLockView;
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;

    v12 = [(SBUIPasscodeLockView *)v17 _numberPad];

    v18 = +[UIColor whiteColor];
    [v12 setReduceTransparencyButtonColor:v18];
  }

  else if (self->_useLightBackground)
  {
    v11 = +[SBUIPasscodeLockViewFactory lightPasscodeLockViewForUsersCurrentStyle];
    v12 = self->_passcodeLockView;
    self->_passcodeLockView = v11;
  }

  else
  {
    v13 = +[SBUIPasscodeLockViewFactory passcodeLockViewForUsersCurrentStyle];
    v14 = self->_passcodeLockView;
    self->_passcodeLockView = v13;

    v15 = self->_passcodeLockView;
    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:2030];
    v16 = [v12 combinedTintColor];
    [(SBUIPasscodeLockView *)v15 setCustomBackgroundColor:v16];
  }

  [(SBUIPasscodeLockView *)self->_passcodeLockView setDelegate:self];
  [(SBUIPasscodeLockView *)self->_passcodeLockView setShowsEmergencyCallButton:0];
  [(SBUIPasscodeLockView *)self->_passcodeLockView setBiometricAuthenticationAllowed:0];
  v19 = self->_passcodeLockView;

  [(PBAPasscodeEntryViewController *)self setView:v19];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PBAPasscodeEntryViewController;
  [(PBAPasscodeEntryViewController *)&v5 viewDidLoad];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_homeButtonPressed:"];
  [v3 setAllowedTouchTypes:&__NSArray0__struct];
  [v3 setAllowedPressTypes:&off_10001D578];
  [v3 setNumberOfTapsRequired:1];
  [v3 setCancelsTouchesInView:0];
  v4 = [(PBAPasscodeEntryViewController *)self view];
  [v4 addGestureRecognizer:v3];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PBAPasscodeEntryViewController;
  [(PBAPasscodeEntryViewController *)&v2 didReceiveMemoryWarning];
}

- (void)_userCancelledEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryViewControllerEntryCancelled:self];
  }
}

- (void)_userRequestedDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(SBUIPasscodeLockView *)self->_passcodeLockView passcode];
  v4 = [v3 length];

  if (v4)
  {
    [(PBAPasscodeEntryViewController *)self _userCancelledEntry];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passcodeEntryViewControllerCancelButtonPressed:self];
  }
}

- (void)passcodeLockViewPasscodeDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 passcode];

  v6 = [v5 length];
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained passcodeEntryViewControllerEntryBegan:self];
    }
  }

  else
  {
    [(PBAPasscodeEntryViewController *)self _userCancelledEntry];
  }
}

- (void)passcodeLockViewPasscodeEntered:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v7 passcode];
    v6 = [v5 dataUsingEncoding:4];
    [WeakRetained passcodeEntryViewControllerEntryCompleted:self passcode:v6];
  }
}

- (PBAPasscodeEntryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end