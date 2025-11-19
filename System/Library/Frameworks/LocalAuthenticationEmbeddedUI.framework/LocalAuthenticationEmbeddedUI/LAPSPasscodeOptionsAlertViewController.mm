@interface LAPSPasscodeOptionsAlertViewController
- (LAPSPasscodeOptionsAlertViewController)initWithConfiguration:(id)a3;
- (LAPSPasscodeOptionsViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addActionForPasscodeType:(id)a3;
- (void)_addActionWithTitle:(id)a3 style:(int64_t)a4 completion:(id)a5;
- (void)_dismiss;
- (void)_setup;
- (void)viewDidLoad;
@end

@implementation LAPSPasscodeOptionsAlertViewController

- (LAPSPasscodeOptionsAlertViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeOptionsAlertViewController;
  v6 = [(LAPSPasscodeOptionsAlertViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeOptionsAlertViewController;
  [(LAPSPasscodeOptionsAlertViewController *)&v3 viewDidLoad];
  [(LAPSPasscodeOptionsAlertViewController *)self _setup];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_setup
{
  v15 = *MEMORY[0x277D85DE8];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(LAPSPasscodeOptionsAlertViewController *)self _addSectionDelimiter];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config allowedPasscodeTypes];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(LAPSPasscodeOptionsAlertViewController *)self _addActionForPasscodeType:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoverySupported]&& [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryOptionVisible])
  {
    [(LAPSPasscodeOptionsAlertViewController *)self _addActionForRecoveryEnabled:[(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryEnabled] restricted:[(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryRestricted]];
  }

  v8 = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config cancelTitle];
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:v8 style:1 completion:&__block_literal_global_6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addActionForPasscodeType:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__LAPSPasscodeOptionsAlertViewController__addActionForPasscodeType___block_invoke;
  v7[3] = &unk_278A66070;
  v8 = v4;
  v6 = v4;
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:v5 style:0 completion:v7];
}

void __68__LAPSPasscodeOptionsAlertViewController__addActionForPasscodeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  [v4 passcodeOptionsViewController:v3 didSelectPasscodeType:*(a1 + 32)];
}

void __82__LAPSPasscodeOptionsAlertViewController__addActionForRecoveryEnabled_restricted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  [v4 passcodeOptionsViewController:v3 didSetPasscodeRecoveryEnabled:(*(a1 + 32) & 1) == 0];
}

- (void)_addActionWithTitle:(id)a3 style:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__LAPSPasscodeOptionsAlertViewController__addActionWithTitle_style_completion___block_invoke;
  v11[3] = &unk_278A660B8;
  objc_copyWeak(&v13, &location);
  v10 = v9;
  v12 = v10;
  [(LAPSPasscodeOptionsAlertViewController *)self _addActionWithTitle:v8 style:a4 handler:v11 shouldDismissHandler:&__block_literal_global_10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __79__LAPSPasscodeOptionsAlertViewController__addActionWithTitle_style_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = [v5 _dismiss];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_dismiss
{
  v3 = [(LAPSPasscodeOptionsAlertViewController *)self presentingViewController];

  if (v3)
  {
    [(LAPSPasscodeOptionsAlertViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_12];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passcodeOptionsViewControllerWillDisappear:self];
  }
}

- (LAPSPasscodeOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end