@interface SubscriptionOfferCodeViewController
- (SubscriptionOfferCodeViewController)initWithParameters:(id)a3;
- (SubscriptionOfferCodeViewControllerDelegate)delegate;
- (void)_displayOfferViewIfNecessary;
- (void)onDismiss;
- (void)showOfferUIWithParameters:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SubscriptionOfferCodeViewController

- (SubscriptionOfferCodeViewController)initWithParameters:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SubscriptionOfferCodeViewController;
  v6 = [(SubscriptionOfferCodeViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameters, a3);
    v7->_didShowOffer = 0;
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SubscriptionOfferCodeViewController;
  [(SubscriptionOfferCodeViewController *)&v4 viewDidAppear:a3];
  [(SubscriptionOfferCodeViewController *)self _displayOfferViewIfNecessary];
}

- (void)_displayOfferViewIfNecessary
{
  if (!self->_didShowOffer)
  {
    self->_didShowOffer = 1;
    [(SubscriptionOfferCodeViewController *)self showOfferUIWithParameters:self->_parameters];
  }
}

- (void)onDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDismissOfferSheet];
}

- (SubscriptionOfferCodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)showOfferUIWithParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_23BBDCE28();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_23BADEDE0(v4);
}

@end