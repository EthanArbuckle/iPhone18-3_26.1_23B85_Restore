@interface NPKBridgePendingTransactionHandler
- (NPKBridgePendingTransactionHandler)initWithPassUniqueID:(id)d companionAgentConnection:(id)connection;
- (NPKBridgePendingTransactionHandlerDelegate)delegate;
- (void)_presentPendingTransactionAlert;
- (void)_setupLinkedApplication;
- (void)linkedApplicationDidChangeState:(id)state;
@end

@implementation NPKBridgePendingTransactionHandler

- (NPKBridgePendingTransactionHandler)initWithPassUniqueID:(id)d companionAgentConnection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = NPKBridgePendingTransactionHandler;
  v8 = [(NPKBridgePendingTransactionHandler *)&v17 init];
  if (v8)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Starting to handle pending transaction for pass: %@", buf, 0xCu);
      }
    }

    objc_storeStrong(&v8->_companionAgentConnection, connection);
    objc_initWeak(buf, v8);
    companionAgentConnection = v8->_companionAgentConnection;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7304;
    v14[3] = &unk_2C958;
    objc_copyWeak(&v16, buf);
    v15 = dCopy;
    [(NPKCompanionAgentConnection *)companionAgentConnection fetchPendingTransactionForPassWithUniqueID:v15 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)_setupLinkedApplication
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pass = [(NPKBridgePendingTransactionHandler *)self pass];
      uniqueID = [pass uniqueID];
      v11 = 138412290;
      v12 = uniqueID;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Setting up linked application for pass: %@", &v11, 0xCu);
    }
  }

  v8 = [PKLinkedApplication alloc];
  pass2 = [(NPKBridgePendingTransactionHandler *)self pass];
  v10 = [v8 initWithPass:pass2];

  [v10 addObserver:self];
  [v10 reloadApplicationStateIfNecessary];
  [(NPKBridgePendingTransactionHandler *)self setLinkedApplication:v10];
}

- (void)_presentPendingTransactionAlert
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pass = [(NPKBridgePendingTransactionHandler *)self pass];
      uniqueID = [pass uniqueID];
      *buf = 138412290;
      v39 = uniqueID;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Pesenting pending transaction alert for pass: %@", buf, 0xCu);
    }
  }

  pass2 = [(NPKBridgePendingTransactionHandler *)self pass];
  organizationName = [pass2 organizationName];

  linkedApplication = [(NPKBridgePendingTransactionHandler *)self linkedApplication];
  isInstalled = [linkedApplication isInstalled];

  if (isInstalled)
  {
    v29 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REDIRECT_TITLE", @"%@", organizationName);
    transaction = [(NPKBridgePendingTransactionHandler *)self transaction];
    currencyAmount = [transaction currencyAmount];
    formattedStringValue = [currencyAmount formattedStringValue];
    transaction2 = [(NPKBridgePendingTransactionHandler *)self transaction];
    merchant = [transaction2 merchant];
    displayName = [merchant displayName];
    v28 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REDIRECT_MESSAGE", @"%@%@%@", formattedStringValue, displayName, organizationName);

    v17 = &PKAnalyticsReportApplicationRedirectOpenButtonTag;
    v18 = @"OPEN";
  }

  else
  {
    v29 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REQUIRED_TITLE", @"%@", organizationName);
    transaction = [(NPKBridgePendingTransactionHandler *)self transaction];
    currencyAmount = [transaction merchant];
    formattedStringValue = [currencyAmount displayName];
    v28 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REQUIRED_MESSAGE", @"%@%@", formattedStringValue, organizationName);
    v17 = &PKAnalyticsReportApplicationRedirectViewInAppStoreButtonTag;
    v18 = @"VIEW_IN_APP_STORE";
  }

  v19 = PKLocalizedAquamanString(&v18->isa);
  v20 = *v17;
  objc_initWeak(buf, self);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_7BD0;
  v34[3] = &unk_2C980;
  objc_copyWeak(&v36, buf);
  v21 = v20;
  v35 = v21;
  v37 = isInstalled;
  v22 = [UIAlertAction actionWithTitle:v19 style:0 handler:v34];
  v23 = PKLocalizedAquamanString(@"CANCEL");
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_7E34;
  v32[3] = &unk_2C9A8;
  objc_copyWeak(&v33, buf);
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v32];

  v25 = [UIAlertController alertControllerWithTitle:v29 message:v28 preferredStyle:1];
  [v25 addAction:v24];
  [v25 addAction:v22];
  [v25 setPreferredAction:v22];
  delegate = [(NPKBridgePendingTransactionHandler *)self delegate];
  v27 = [delegate presentingViewControllerForPendingTransactionHandler:self];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_7FC8;
  v31[3] = &unk_2C6C0;
  v31[4] = self;
  [v27 presentViewController:v25 animated:1 completion:v31];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

- (void)linkedApplicationDidChangeState:(id)state
{
  if ([state state] == &dword_0 + 1)
  {

    [(NPKBridgePendingTransactionHandler *)self _presentPendingTransactionAlert];
  }
}

- (NPKBridgePendingTransactionHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end