@interface ACUISActivityAlertClient
- (ACUISActivityAlertClient)init;
- (ACUISActivityAlertClientDelegate)delegate;
- (void)activityWithAlertClient:(id)client dismissAlertProvider:(id)provider;
- (void)activityWithAlertClient:(id)client presentAlertProvider:(id)provider completion:(id)completion;
@end

@implementation ACUISActivityAlertClient

- (ACUISActivityAlertClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ACUISActivityAlertClient)init
{
  v6.receiver = self;
  v6.super_class = ACUISActivityAlertClient;
  v2 = [(ACUISActivityAlertClient *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    alertClient = v2->_alertClient;
    v2->_alertClient = v3;

    [(ActivityAlertClient *)v2->_alertClient setDelegate:v2];
  }

  return v2;
}

- (void)activityWithAlertClient:(id)client presentAlertProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  delegate = [(ACUISActivityAlertClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [[ACUISActivityAlertProvider alloc] initWithActivityAlertProviding:providerCopy];
    delegate2 = [(ACUISActivityAlertClient *)self delegate];
    [delegate2 activityAlertClient:self presentAlertProvider:v10 completion:completionCopy];
  }
}

- (void)activityWithAlertClient:(id)client dismissAlertProvider:(id)provider
{
  providerCopy = provider;
  delegate = [(ACUISActivityAlertClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [[ACUISActivityAlertProvider alloc] initWithActivityAlertProviding:providerCopy];
    delegate2 = [(ACUISActivityAlertClient *)self delegate];
    [delegate2 activityAlertClient:self dismissAlertProvider:v7];
  }
}

@end