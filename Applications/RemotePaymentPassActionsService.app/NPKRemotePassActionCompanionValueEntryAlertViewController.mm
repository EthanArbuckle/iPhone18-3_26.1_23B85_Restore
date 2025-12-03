@interface NPKRemotePassActionCompanionValueEntryAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)enterValueViewController:(id)controller didCancelForRequestIdentifier:(id)identifier;
- (void)enterValueViewController:(id)controller didFinishWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation NPKRemotePassActionCompanionValueEntryAlertViewController

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
  v8 = [(NPKRemotePassActionCompanionValueEntryAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100010548];
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

      v18 = [[NPKRemotePassActionCompanionEnterValueViewController alloc] initWithRequest:v12 contact:v15 delegate:self];
      enterValueViewController = self->_enterValueViewController;
      self->_enterValueViewController = v18;

      v20 = [[UINavigationController alloc] initWithRootViewController:self->_enterValueViewController];
      navigationController = self->_navigationController;
      self->_navigationController = v20;

      [(UINavigationController *)self->_navigationController setModalInPresentation:1];
      sheetPresentationController = [(UINavigationController *)self->_navigationController sheetPresentationController];
      [sheetPresentationController setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];

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
  [(NPKCompanionBaseAlertViewController *)&v23 configureWithContext:contextCopy completion:completionCopy];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = [(NPKRemotePassActionCompanionValueEntryAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100010568];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)enterValueViewController:(id)controller didCancelForRequestIdentifier:(id)identifier
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
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionValueEntryAlertViewController: Value entry view controller (%@) did cancel for request identifier: %@", &v12, 0x16u);
    }
  }

  viewServicePresenter = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [viewServicePresenter handleCompanionValueEntryCancelledForRequestIdentifier:identifierCopy];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

- (void)enterValueViewController:(id)controller didFinishWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier
{
  controllerCopy = controller;
  amountCopy = amount;
  identifierCopy = identifier;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = controllerCopy;
      v17 = 2112;
      v18 = amountCopy;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionCompanionValueEntryAlertViewController: Value entry view controller (%@) did finish with currency amount: %@ for request identifier: %@", &v15, 0x20u);
    }
  }

  viewServicePresenter = [(NPKCompanionBaseAlertViewController *)self viewServicePresenter];
  [viewServicePresenter handleCompanionValueEntryFinishedWithCurrencyAmount:amountCopy forRequestIdentifier:identifierCopy];

  [(NPKCompanionBaseAlertViewController *)self dismiss];
}

@end