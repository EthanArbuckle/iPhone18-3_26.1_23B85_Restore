@interface ACUISActivityAlertClient
- (ACUISActivityAlertClient)init;
- (ACUISActivityAlertClientDelegate)delegate;
- (void)activityWithAlertClient:(id)a3 dismissAlertProvider:(id)a4;
- (void)activityWithAlertClient:(id)a3 presentAlertProvider:(id)a4 completion:(id)a5;
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

- (void)activityWithAlertClient:(id)a3 presentAlertProvider:(id)a4 completion:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(ACUISActivityAlertClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [[ACUISActivityAlertProvider alloc] initWithActivityAlertProviding:v12];
    v11 = [(ACUISActivityAlertClient *)self delegate];
    [v11 activityAlertClient:self presentAlertProvider:v10 completion:v7];
  }
}

- (void)activityWithAlertClient:(id)a3 dismissAlertProvider:(id)a4
{
  v9 = a4;
  v5 = [(ACUISActivityAlertClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [[ACUISActivityAlertProvider alloc] initWithActivityAlertProviding:v9];
    v8 = [(ACUISActivityAlertClient *)self delegate];
    [v8 activityAlertClient:self dismissAlertProvider:v7];
  }
}

@end