@interface NPKRemotePassActionCompanionValueEntryAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)enterValueViewController:(id)a3 didCancelForRequestIdentifier:(id)a4;
- (void)enterValueViewController:(id)a3 didFinishWithCurrencyAmount:(id)a4 forRequestIdentifier:(id)a5;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation NPKRemotePassActionCompanionValueEntryAlertViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
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

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKRemotePassActionCompanionValueEntryAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100010548];
  [v8 setAllowsAlertStacking:1];
  [v8 setAllowsAlertItems:1];
  [v8 setAllowsSiri:0];
  [v8 setAllowsBanners:1];
  [v8 setDesiredHardwareButtonEvents:16];
  [v8 setSwipeDismissalStyle:0];
  [v8 setDismissalAnimationStyle:1];
  v9 = [v6 userInfo];
  v10 = [v9 objectForKey:@"request"];

  if (v10)
  {
    objc_opt_class();
    v11 = NPKSecureUnarchiveObject();
    if (v11)
    {
      v12 = v11;
      v13 = [v6 userInfo];
      v14 = [v13 objectForKey:@"contact"];

      if (v14)
      {
        objc_opt_class();
        v15 = NPKSecureUnarchiveObject();
      }

      else
      {
        v15 = 0;
      }

      v18 = [[NPKRemotePassActionCompanionEnterValueViewController alloc] initWithRequest:v12 contact:v15 delegate:self];
      enterValueViewController = self->_enterValueViewController;
      self->_enterValueViewController = v18;

      v20 = [[UINavigationController alloc] initWithRootViewController:self->_enterValueViewController];
      navigationController = self->_navigationController;
      self->_navigationController = v20;

      [(UINavigationController *)self->_navigationController setModalInPresentation:1];
      v22 = [(UINavigationController *)self->_navigationController sheetPresentationController];
      [v22 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];

      [(NPKRemotePassActionCompanionValueEntryAlertViewController *)self showViewController:self->_navigationController sender:0];
LABEL_10:

      goto LABEL_11;
    }
  }

  v16 = pk_RemotePassAction_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v12 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: NPKRemotePassActionCompanionValueEntryAlertViewController: No request (%@) identified! Unable to present NPKRemotePassActionCompanionEnterValueViewController", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
  v23.receiver = self;
  v23.super_class = NPKRemotePassActionCompanionValueEntryAlertViewController;
  [(NPKCompanionBaseAlertViewController *)&v23 configureWithContext:v6 completion:v7];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [(NPKRemotePassActionCompanionValueEntryAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100010568];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (v6)
  {
    v6[2]();
  }
}

- (void)enterValueViewController:(id)a3 didCancelForRequestIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionValueEntryAlertViewController: Value entry view controller (%@) did cancel for request identifier: %@", &v12, 0x16u);
    }
  }

  v11 = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [v11 handleCompanionValueEntryCancelledForRequestIdentifier:v7];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

- (void)enterValueViewController:(id)a3 didFinishWithCurrencyAmount:(id)a4 forRequestIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionValueEntryAlertViewController: Value entry view controller (%@) did finish with currency amount: %@ for request identifier: %@", &v15, 0x20u);
    }
  }

  v14 = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [v14 handleCompanionValueEntryFinishedWithCurrencyAmount:v9 forRequestIdentifier:v10];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

@end