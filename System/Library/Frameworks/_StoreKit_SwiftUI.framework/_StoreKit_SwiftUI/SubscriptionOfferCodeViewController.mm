@interface SubscriptionOfferCodeViewController
- (SubscriptionOfferCodeViewController)initWithParameters:(id)parameters;
- (SubscriptionOfferCodeViewControllerDelegate)delegate;
- (void)_displayOfferViewIfNecessary;
- (void)onDismiss;
- (void)showOfferUIWithParameters:(id)parameters;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SubscriptionOfferCodeViewController

- (SubscriptionOfferCodeViewController)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = SubscriptionOfferCodeViewController;
  v6 = [(SubscriptionOfferCodeViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameters, parameters);
    v7->_didShowOffer = 0;
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SubscriptionOfferCodeViewController;
  [(SubscriptionOfferCodeViewController *)&v4 viewDidAppear:appear];
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

- (void)showOfferUIWithParameters:(id)parameters
{
  if (parameters)
  {
    v4 = sub_23BBDCE28();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_23BADEDE0(v4);
}

@end