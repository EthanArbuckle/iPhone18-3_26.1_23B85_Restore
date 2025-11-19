@interface NPKRemotePassActionCompanionItemSelectionAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)selectItemViewController:(id)a3 didCancelForRequestIdentifier:(id)a4;
- (void)selectItemViewController:(id)a3 didFinishWithRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestIdentifier:(id)a6;
@end

@implementation NPKRemotePassActionCompanionItemSelectionAlertViewController

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
  v8 = [(NPKRemotePassActionCompanionItemSelectionAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100010588];
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

      v18 = [[NPKRemotePassActionCompanionItemSelectionViewController alloc] initWithRequest:v12 contact:v15 delegate:self];
      selectItemViewController = self->_selectItemViewController;
      self->_selectItemViewController = v18;

      v20 = [[UINavigationController alloc] initWithRootViewController:self->_selectItemViewController];
      navigationController = self->_navigationController;
      self->_navigationController = v20;

      [(UINavigationController *)self->_navigationController setModalInPresentation:1];
      v22 = [(UINavigationController *)self->_navigationController sheetPresentationController];
      [v22 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];

      [(NPKRemotePassActionCompanionItemSelectionAlertViewController *)self showViewController:self->_navigationController sender:0];
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: NPKRemotePassActionCompanionItemSelectionAlertViewController: No request (%@) identified! Unable to present NPKRemotePassActionCompanionSelectItemViewController", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
  v23.receiver = self;
  v23.super_class = NPKRemotePassActionCompanionItemSelectionAlertViewController;
  [(NPKCompanionBaseAlertViewController *)&v23 configureWithContext:v6 completion:v7];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [(NPKRemotePassActionCompanionItemSelectionAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000105A8];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (v6)
  {
    v6[2]();
  }
}

- (void)selectItemViewController:(id)a3 didCancelForRequestIdentifier:(id)a4
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
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionItemSelectionAlertViewController: Item selection view controller (%@) did cancel for request identifier: %@", &v12, 0x16u);
    }
  }

  v11 = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [v11 handleCompanionItemSelectionCancelledForRequestIdentifier:v7];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

- (void)selectItemViewController:(id)a3 didFinishWithRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_RemotePassAction_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413058;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionItemSelectionAlertViewController: Item selection view controller (%@) did finish with renewal amount: %@ serviceProviderData: %@ for request identifier: %@", &v18, 0x2Au);
    }
  }

  v17 = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [v17 handleCompanionItemSelectionFinishedWithRenewalAmount:v11 serviceProviderData:v12 forRequestIdentifier:v13];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

@end