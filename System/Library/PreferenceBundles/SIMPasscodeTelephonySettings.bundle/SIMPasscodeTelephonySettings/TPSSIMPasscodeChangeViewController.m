@interface TPSSIMPasscodeChangeViewController
- (NSNumberFormatter)numberFormatter;
- (TPSSIMPasscodeChangeViewController)initWithSubscriberController:(id)a3;
- (TPSSIMPasscodeChangeViewControllerDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6;
- (void)subscriberController:(id)a3 SIMPasscodeChangeDidCompleteWithResult:(BOOL)a4;
@end

@implementation TPSSIMPasscodeChangeViewController

- (TPSSIMPasscodeChangeViewController)initWithSubscriberController:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = TPSSIMPasscodeChangeViewController;
  v6 = [(TPSSIMPasscodeChangeViewController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriberController, a3);
    [(TPSSubscriberTelephonyController *)v7->_subscriberController addDelegate:v7 queue:&_dispatch_main_q];
    v8 = [[TPSetPINViewController alloc] initForChangePINWithMinLength:4 maxLength:8 confirmPIN:1];
    v9 = objc_alloc_init(UIView);
    v10 = +[UIColor blackColor];
    [v9 setBackgroundColor:v10];

    [v8 setCustomBackgroundView:v9];
    [v8 setDelegate:v7];
    v11 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"CURRENT_PIN"];
    [v8 setPromptTextForOldPIN:v11];

    v12 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"NEW_PIN"];
    [v8 setPromptTextForNewPIN:v12];

    v13 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"CONFIRM_NEW_PIN"];
    [v8 setPromptTextForConfirmingNewPIN:v13];

    v14 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"CHANGING_PIN"];
    [v8 setPromptTextForSavingPIN:v14];

    [(TPSSIMPasscodeChangeViewController *)v7 setChangePINViewController:v8];
    [(TPSSIMPasscodeChangeViewController *)v7 addChildViewController:v8];
    v15 = [v8 navigationItem];
    v16 = [v15 leftBarButtonItem];
    v17 = [(TPSSIMPasscodeChangeViewController *)v7 navigationItem];
    [v17 setLeftBarButtonItem:v16];

    v18 = [v8 navigationItem];
    v19 = [v18 rightBarButtonItem];
    v20 = [(TPSSIMPasscodeChangeViewController *)v7 navigationItem];
    [v20 setRightBarButtonItem:v19];
  }

  return v7;
}

- (void)dealloc
{
  [(TPSetPINViewController *)self->_changePINViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = TPSSIMPasscodeChangeViewController;
  [(TPSSIMPasscodeChangeViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v7 = [v3 initWithFrame:?];

  v5 = [(TPSSIMPasscodeChangeViewController *)self changePINViewController];
  v6 = [v5 view];
  [v7 addSubview:v6];

  [(TPSSIMPasscodeChangeViewController *)self setView:v7];
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6
{
  v7 = a4;
  v11 = a5;
  v9 = a6;
  if (v7)
  {
    v10 = [(TPSSIMPasscodeChangeViewController *)self subscriberController];
    [v10 changePIN:v11 newPin:v9];
  }

  else
  {
    v10 = [(TPSSIMPasscodeChangeViewController *)self delegate];
    [v10 TPSSIMPasscodeChangeViewControllerCanceled:self];
  }
}

- (void)subscriberController:(id)a3 SIMPasscodeChangeDidCompleteWithResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v19 = v6;
  if (v4)
  {
    v7 = [(TPSSIMPasscodeChangeViewController *)self delegate];
    [v7 TPSSIMPasscodeChangeViewControllerFinishedSuccessfully:self];
    goto LABEL_9;
  }

  v8 = [v6 SIMPasscodeRemainingAttempts];
  v9 = v8;
  if (v8 == &dword_0 + 1)
  {
    v10 = @"%@_SIM_ATTEMPT_REMAINING";
  }

  else
  {
    if (!v8)
    {
      v7 = [(TPSSIMPasscodeChangeViewController *)self delegate];
      [v7 TPSSIMPasscodeChangeViewControllerFailedWithZeroAttemptsRemaining:self];
      goto LABEL_9;
    }

    v10 = @"%@_SIM_ATTEMPTS_REMAINING";
  }

  v7 = [TPSSIMPasscodeLocalizedString localizedStringForKey:v10];
  v11 = [(TPSSIMPasscodeChangeViewController *)self numberFormatter];
  v12 = [NSNumber numberWithInteger:v9];
  v13 = [v11 stringFromNumber:v12];

  v14 = [NSString stringWithFormat:v7, v13];

  v15 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"COULD_NOT_CHANGE_PIN_REASON_%@"];
  v16 = [NSString stringWithFormat:v15, v14];
  v17 = [(TPSSIMPasscodeChangeViewController *)self changePINViewController];
  [v17 setPromptTextForOldPIN:v16];

  v18 = [(TPSSIMPasscodeChangeViewController *)self changePINViewController];
  [v18 resetWithErrorPrompt:0];

LABEL_9:
}

- (TPSSIMPasscodeChangeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end