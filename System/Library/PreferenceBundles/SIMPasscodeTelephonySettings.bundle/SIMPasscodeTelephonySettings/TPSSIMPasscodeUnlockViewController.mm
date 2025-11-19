@interface TPSSIMPasscodeUnlockViewController
- (NSNumberFormatter)numberFormatter;
- (TPSSIMPasscodeUnlockViewController)initWithSubscriberController:(id)a3 forLocking:(BOOL)a4;
- (TPSSIMPasscodeUnlockViewControllerDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6;
- (void)subscriberController:(id)a3 SIMLockDidCompleteWithResult:(BOOL)a4;
@end

@implementation TPSSIMPasscodeUnlockViewController

- (TPSSIMPasscodeUnlockViewController)initWithSubscriberController:(id)a3 forLocking:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v24.receiver = self;
  v24.super_class = TPSSIMPasscodeUnlockViewController;
  v8 = [(TPSSIMPasscodeUnlockViewController *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscriberController, a3);
    [(TPSSubscriberTelephonyController *)v9->_subscriberController addDelegate:v9 queue:&_dispatch_main_q];
    v9->_locking = v4;
    v10 = [[TPSetPINViewController alloc] initForNewPINWithMinLength:4 maxLength:8 confirmPIN:0];
    v11 = objc_alloc_init(UIView);
    v12 = +[UIColor blackColor];
    [v11 setBackgroundColor:v12];

    [v10 setCustomBackgroundView:v11];
    [v10 setDelegate:v9];
    v13 = [NSNumber numberWithInteger:[(TPSSubscriberTelephonyController *)v9->_subscriberController SIMPasscodeRemainingAttempts]];
    v14 = TPSPasscodeStringForRemainingSIMPINAttempts(v13, v4, 0);
    [v10 setPromptTextForNewPIN:v14];

    if (v4)
    {
      v15 = @"LOCKING";
    }

    else
    {
      v15 = @"UNLOCKING";
    }

    v16 = [TPSSIMPasscodeLocalizedString localizedStringForKey:v15];
    [v10 setPromptTextForSavingPIN:v16];

    v17 = [v10 navigationItem];
    v18 = [v17 leftBarButtonItem];
    v19 = [(TPSSIMPasscodeUnlockViewController *)v9 navigationItem];
    [v19 setLeftBarButtonItem:v18];

    v20 = [v10 navigationItem];
    v21 = [v20 rightBarButtonItem];
    v22 = [(TPSSIMPasscodeUnlockViewController *)v9 navigationItem];
    [v22 setRightBarButtonItem:v21];

    [(TPSSIMPasscodeUnlockViewController *)v9 setSetPINViewController:v10];
    [(TPSSIMPasscodeUnlockViewController *)v9 addChildViewController:v10];
  }

  return v9;
}

- (void)dealloc
{
  [(TPSetPINViewController *)self->_setPINViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = TPSSIMPasscodeUnlockViewController;
  [(TPSSIMPasscodeUnlockViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v7 = [v3 initWithFrame:?];

  v5 = [(TPSSIMPasscodeUnlockViewController *)self setPINViewController];
  v6 = [v5 view];
  [v7 addSubview:v6];

  [(TPSSIMPasscodeUnlockViewController *)self setView:v7];
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
  v9 = a5;
  v10 = a6;
  v11 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109634;
    *v17 = v7;
    *&v17[4] = 2112;
    *&v17[6] = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Asked to set PIN view controller finished with success: %d oldPIN: %@ newPIN: %@", &v16, 0x1Cu);
  }

  if (v7)
  {
    v12 = TPSSIMPasscodeLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(TPSSIMPasscodeUnlockViewController *)self isLocking];
      v14 = @"unlock";
      if (v13)
      {
        v14 = @"lock";
      }

      v16 = 138412290;
      *v17 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Issuing request to %@ the SIM.", &v16, 0xCu);
    }

    v15 = [(TPSSIMPasscodeUnlockViewController *)self subscriberController];
    [v15 setSIMLockEnabled:-[TPSSIMPasscodeUnlockViewController isLocking](self pin:{"isLocking"), v10}];
  }

  else
  {
    v15 = [(TPSSIMPasscodeUnlockViewController *)self delegate];
    [v15 SIMPINUnlockViewControllerCanceled:self];
  }
}

- (void)subscriberController:(id)a3 SIMLockDidCompleteWithResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = TPSSIMPasscodeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"unsuccessful";
    if (v4)
    {
      v8 = @"successful";
    }

    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "SIM lock save request was %@.", &v14, 0xCu);
  }

  if (v4)
  {
    v9 = [(TPSSIMPasscodeUnlockViewController *)self delegate];
    [v9 SIMPINUnlockViewController:self finishedSuccessfullyWithSIMLocked:{objc_msgSend(v6, "isSIMPasscodeLockEnabled")}];
  }

  else
  {
    v10 = [v6 SIMPasscodeRemainingAttempts];
    if (v10 < 1)
    {
      v9 = [(TPSSIMPasscodeUnlockViewController *)self delegate];
      [v9 SIMPINUnlockViewControllerFailedWithZeroAttemptsRemaining:self];
    }

    else
    {
      v11 = [NSNumber numberWithInteger:v10];
      v12 = TPSPasscodeStringForRemainingSIMPINAttempts(v11, [(TPSSIMPasscodeUnlockViewController *)self isLocking], 1);
      v13 = [(TPSSIMPasscodeUnlockViewController *)self setPINViewController];
      [v13 setPromptTextForNewPIN:v12];

      v9 = [(TPSSIMPasscodeUnlockViewController *)self setPINViewController];
      [v9 resetWithErrorPrompt:0];
    }
  }
}

- (TPSSIMPasscodeUnlockViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end