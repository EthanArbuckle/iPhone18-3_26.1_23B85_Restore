@interface EKUIModernEventViewDelegateAlertDisplayer
- (EKUIModernEventViewDelegateAlertDisplayer)initWithDelegate:(id)a3 eventViewController:(id)a4;
- (void)displayIntegrationAlert:(id)a3;
@end

@implementation EKUIModernEventViewDelegateAlertDisplayer

- (EKUIModernEventViewDelegateAlertDisplayer)initWithDelegate:(id)a3 eventViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EKUIModernEventViewDelegateAlertDisplayer;
  v8 = [(EKUIModernEventViewDelegateAlertDisplayer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_eventViewController, v7);
  }

  return v9;
}

- (void)displayIntegrationAlert:(id)a3
{
  v7 = [EKUIIntegrationAlertDisplayer alertControllerForAlert:a3 viewController:0 options:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_loadWeakRetained(&self->_eventViewController);
  v6 = [v5 _ekEventViewController];
  [WeakRetained eventViewController:v6 requestsDisplayOfDeleteAlert:v7];
}

@end