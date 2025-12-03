@interface TPSSIMPasscodeChangeViewController
- (NSNumberFormatter)numberFormatter;
- (TPSSIMPasscodeChangeViewController)initWithSubscriberController:(id)controller;
- (TPSSIMPasscodeChangeViewControllerDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)setPINViewControllerFinished:(id)finished success:(BOOL)success oldPIN:(id)n newPIN:(id)iN;
- (void)subscriberController:(id)controller SIMPasscodeChangeDidCompleteWithResult:(BOOL)result;
@end

@implementation TPSSIMPasscodeChangeViewController

- (TPSSIMPasscodeChangeViewController)initWithSubscriberController:(id)controller
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = TPSSIMPasscodeChangeViewController;
  v6 = [(TPSSIMPasscodeChangeViewController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriberController, controller);
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
    navigationItem = [v8 navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    navigationItem2 = [(TPSSIMPasscodeChangeViewController *)v7 navigationItem];
    [navigationItem2 setLeftBarButtonItem:leftBarButtonItem];

    navigationItem3 = [v8 navigationItem];
    rightBarButtonItem = [navigationItem3 rightBarButtonItem];
    navigationItem4 = [(TPSSIMPasscodeChangeViewController *)v7 navigationItem];
    [navigationItem4 setRightBarButtonItem:rightBarButtonItem];
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

  changePINViewController = [(TPSSIMPasscodeChangeViewController *)self changePINViewController];
  view = [changePINViewController view];
  [v7 addSubview:view];

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

- (void)setPINViewControllerFinished:(id)finished success:(BOOL)success oldPIN:(id)n newPIN:(id)iN
{
  successCopy = success;
  nCopy = n;
  iNCopy = iN;
  if (successCopy)
  {
    subscriberController = [(TPSSIMPasscodeChangeViewController *)self subscriberController];
    [subscriberController changePIN:nCopy newPin:iNCopy];
  }

  else
  {
    subscriberController = [(TPSSIMPasscodeChangeViewController *)self delegate];
    [subscriberController TPSSIMPasscodeChangeViewControllerCanceled:self];
  }
}

- (void)subscriberController:(id)controller SIMPasscodeChangeDidCompleteWithResult:(BOOL)result
{
  resultCopy = result;
  controllerCopy = controller;
  v19 = controllerCopy;
  if (resultCopy)
  {
    delegate = [(TPSSIMPasscodeChangeViewController *)self delegate];
    [delegate TPSSIMPasscodeChangeViewControllerFinishedSuccessfully:self];
    goto LABEL_9;
  }

  sIMPasscodeRemainingAttempts = [controllerCopy SIMPasscodeRemainingAttempts];
  v9 = sIMPasscodeRemainingAttempts;
  if (sIMPasscodeRemainingAttempts == &dword_0 + 1)
  {
    v10 = @"%@_SIM_ATTEMPT_REMAINING";
  }

  else
  {
    if (!sIMPasscodeRemainingAttempts)
    {
      delegate = [(TPSSIMPasscodeChangeViewController *)self delegate];
      [delegate TPSSIMPasscodeChangeViewControllerFailedWithZeroAttemptsRemaining:self];
      goto LABEL_9;
    }

    v10 = @"%@_SIM_ATTEMPTS_REMAINING";
  }

  delegate = [TPSSIMPasscodeLocalizedString localizedStringForKey:v10];
  numberFormatter = [(TPSSIMPasscodeChangeViewController *)self numberFormatter];
  v12 = [NSNumber numberWithInteger:v9];
  v13 = [numberFormatter stringFromNumber:v12];

  v14 = [NSString stringWithFormat:delegate, v13];

  v15 = [TPSSIMPasscodeLocalizedString localizedStringForKey:@"COULD_NOT_CHANGE_PIN_REASON_%@"];
  v16 = [NSString stringWithFormat:v15, v14];
  changePINViewController = [(TPSSIMPasscodeChangeViewController *)self changePINViewController];
  [changePINViewController setPromptTextForOldPIN:v16];

  changePINViewController2 = [(TPSSIMPasscodeChangeViewController *)self changePINViewController];
  [changePINViewController2 resetWithErrorPrompt:0];

LABEL_9:
}

- (TPSSIMPasscodeChangeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end