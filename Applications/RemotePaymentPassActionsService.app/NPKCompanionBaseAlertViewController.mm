@interface NPKCompanionBaseAlertViewController
- (void)_establishPresenterConnectionWithEndpoint:(id)endpoint;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss;
@end

@implementation NPKCompanionBaseAlertViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  xpcEndpoint = [context xpcEndpoint];
  [(NPKCompanionBaseAlertViewController *)self _establishPresenterConnectionWithEndpoint:xpcEndpoint];

  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v7 = completionCopy;
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
  presentedViewController = [(NPKCompanionBaseAlertViewController *)self presentedViewController];
  if (presentedViewController)
  {
    [(NPKCompanionBaseAlertViewController *)self dismissViewControllerAnimated:1 completion:v3];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)_establishPresenterConnectionWithEndpoint:(id)endpoint
{
  if (endpoint)
  {
    endpointCopy = endpoint;
    v10 = objc_opt_new();
    [v10 _setEndpoint:endpointCopy];

    v5 = [[NSXPCConnection alloc] initWithListenerEndpoint:v10];
    presenterConnection = self->_presenterConnection;
    self->_presenterConnection = v5;

    [(NSXPCConnection *)self->_presenterConnection _setQueue:&_dispatch_main_q];
    v7 = self->_presenterConnection;
    v8 = +[NPKRemotePassActionUIServicePresenterInterface interface];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_presenterConnection resume];
    viewServicePresenter = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
    [viewServicePresenter establishConnection];
  }
}

@end