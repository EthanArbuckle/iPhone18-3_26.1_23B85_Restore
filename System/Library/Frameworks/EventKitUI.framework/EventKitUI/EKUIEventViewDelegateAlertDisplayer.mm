@interface EKUIEventViewDelegateAlertDisplayer
- (EKUIEventViewDelegateAlertDisplayer)initWithDelegate:(id)delegate eventViewController:(id)controller;
- (void)displayIntegrationAlert:(id)alert;
@end

@implementation EKUIEventViewDelegateAlertDisplayer

- (EKUIEventViewDelegateAlertDisplayer)initWithDelegate:(id)delegate eventViewController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = EKUIEventViewDelegateAlertDisplayer;
  v8 = [(EKUIEventViewDelegateAlertDisplayer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_eventViewController, controllerCopy);
  }

  return v9;
}

- (void)displayIntegrationAlert:(id)alert
{
  v7 = [EKUIIntegrationAlertDisplayer alertControllerForAlert:alert viewController:0 options:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_loadWeakRetained(&self->_eventViewController);
  _ekEventViewController = [v5 _ekEventViewController];
  [WeakRetained eventViewController:_ekEventViewController requestsDisplayOfDeleteAlert:v7];
}

@end