@interface AMSUIPaymentSetupViewController
- (AMSUIPaymentSetupViewController)initWithPaymentSetupRequest:(id)a3;
- (AMSUIPaymentSetupViewControllerDelegate)delegate;
- (void)_setup;
- (void)loadView;
@end

@implementation AMSUIPaymentSetupViewController

- (AMSUIPaymentSetupViewController)initWithPaymentSetupRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIPaymentSetupViewController;
  v6 = [(AMSUIPaymentSetupViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupRequest, a3);
    [(AMSUIPaymentSetupViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  [(AMSUIPaymentSetupViewController *)self setModalPresentationStyle:5];
  v3 = objc_alloc(getPKPaymentSetupViewControllerClass[0]());
  v6 = [(AMSUIPaymentSetupViewController *)self paymentSetupRequest];
  v4 = [v3 initWithPaymentSetupRequest:v6];
  childViewController = self->_childViewController;
  self->_childViewController = v4;
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v3];

  [v4 setUserInteractionEnabled:0];
  [(AMSUIPaymentSetupViewController *)self setView:v4];
}

uint64_t __76__AMSUIPaymentSetupViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = [*(a1 + 32) delegate];
  [v3 paymentSetupViewControllerDidDismiss];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (AMSUIPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end