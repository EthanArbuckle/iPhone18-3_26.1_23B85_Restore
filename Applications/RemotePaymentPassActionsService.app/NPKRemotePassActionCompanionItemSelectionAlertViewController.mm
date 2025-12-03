@interface NPKRemotePassActionCompanionItemSelectionAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)selectItemViewController:(id)controller didCancelForRequestIdentifier:(id)identifier;
- (void)selectItemViewController:(id)controller didFinishWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier;
@end

@implementation NPKRemotePassActionCompanionItemSelectionAlertViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = [(NPKRemotePassActionCompanionItemSelectionAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100010588];
  [v8 setAllowsAlertStacking:1];
  [v8 setAllowsAlertItems:1];
  [v8 setAllowsSiri:0];
  [v8 setAllowsBanners:1];
  [v8 setDesiredHardwareButtonEvents:16];
  [v8 setSwipeDismissalStyle:0];
  [v8 setDismissalAnimationStyle:1];
  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKey:@"request"];

  if (v10)
  {
    objc_opt_class();
    v11 = NPKSecureUnarchiveObject();
    if (v11)
    {
      v12 = v11;
      userInfo2 = [contextCopy userInfo];
      v14 = [userInfo2 objectForKey:@"contact"];

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
      sheetPresentationController = [(UINavigationController *)self->_navigationController sheetPresentationController];
      [sheetPresentationController setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];

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
  [(NPKCompanionBaseAlertViewController *)&v23 configureWithContext:contextCopy completion:completionCopy];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = [(NPKRemotePassActionCompanionItemSelectionAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000105A8];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)selectItemViewController:(id)controller didCancelForRequestIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = controllerCopy;
      v14 = 2112;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionItemSelectionAlertViewController: Item selection view controller (%@) did cancel for request identifier: %@", &v12, 0x16u);
    }
  }

  viewServicePresenter = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [viewServicePresenter handleCompanionItemSelectionCancelledForRequestIdentifier:identifierCopy];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

- (void)selectItemViewController:(id)controller didFinishWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier
{
  controllerCopy = controller;
  amountCopy = amount;
  dataCopy = data;
  identifierCopy = identifier;
  v14 = pk_RemotePassAction_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413058;
      v19 = controllerCopy;
      v20 = 2112;
      v21 = amountCopy;
      v22 = 2112;
      v23 = dataCopy;
      v24 = 2112;
      v25 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionItemSelectionAlertViewController: Item selection view controller (%@) did finish with renewal amount: %@ serviceProviderData: %@ for request identifier: %@", &v18, 0x2Au);
    }
  }

  viewServicePresenter = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [viewServicePresenter handleCompanionItemSelectionFinishedWithRenewalAmount:amountCopy serviceProviderData:dataCopy forRequestIdentifier:identifierCopy];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

@end