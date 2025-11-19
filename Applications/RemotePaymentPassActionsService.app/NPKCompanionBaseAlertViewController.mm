@interface NPKCompanionBaseAlertViewController
- (void)_establishPresenterConnectionWithEndpoint:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss;
@end

@implementation NPKCompanionBaseAlertViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = [a3 xpcEndpoint];
  [(NPKCompanionBaseAlertViewController *)self _establishPresenterConnectionWithEndpoint:v6];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

- (void)dismiss
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006ABC;
  v5[3] = &unk_100010398;
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  v4 = [(NPKCompanionBaseAlertViewController *)self presentedViewController];
  if (v4)
  {
    [(NPKCompanionBaseAlertViewController *)self dismissViewControllerAnimated:1 completion:v3];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)_establishPresenterConnectionWithEndpoint:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v10 = objc_opt_new();
    [v10 _setEndpoint:v4];

    v5 = [[NSXPCConnection alloc] initWithListenerEndpoint:v10];
    presenterConnection = self->_presenterConnection;
    self->_presenterConnection = v5;

    [(NSXPCConnection *)self->_presenterConnection _setQueue:&_dispatch_main_q];
    v7 = self->_presenterConnection;
    v8 = +[NPKRemotePassActionUIServicePresenterInterface interface];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_presenterConnection resume];
    v9 = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
    [v9 establishConnection];
  }
}

@end