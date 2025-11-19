@interface NPKBridgePendingTransactionHandler
- (NPKBridgePendingTransactionHandler)initWithPassUniqueID:(id)a3 companionAgentConnection:(id)a4;
- (NPKBridgePendingTransactionHandlerDelegate)delegate;
- (void)_presentPendingTransactionAlert;
- (void)_setupLinkedApplication;
- (void)linkedApplicationDidChangeState:(id)a3;
@end

@implementation NPKBridgePendingTransactionHandler

- (NPKBridgePendingTransactionHandler)initWithPassUniqueID:(id)a3 companionAgentConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        v19 = v6;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Starting to handle pending transaction for pass: %@", buf, 0xCu);
      }
    }

    objc_storeStrong(&v8->_companionAgentConnection, a4);
    objc_initWeak(buf, v8);
    companionAgentConnection = v8->_companionAgentConnection;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7304;
    v14[3] = &unk_2C958;
    objc_copyWeak(&v16, buf);
    v15 = v6;
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
      v6 = [(NPKBridgePendingTransactionHandler *)self pass];
      v7 = [v6 uniqueID];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Setting up linked application for pass: %@", &v11, 0xCu);
    }
  }

  v8 = [PKLinkedApplication alloc];
  v9 = [(NPKBridgePendingTransactionHandler *)self pass];
  v10 = [v8 initWithPass:v9];

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
      v6 = [(NPKBridgePendingTransactionHandler *)self pass];
      v7 = [v6 uniqueID];
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Pesenting pending transaction alert for pass: %@", buf, 0xCu);
    }
  }

  v8 = [(NPKBridgePendingTransactionHandler *)self pass];
  v30 = [v8 organizationName];

  v9 = [(NPKBridgePendingTransactionHandler *)self linkedApplication];
  v10 = [v9 isInstalled];

  if (v10)
  {
    v29 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REDIRECT_TITLE", @"%@", v30);
    v11 = [(NPKBridgePendingTransactionHandler *)self transaction];
    v12 = [v11 currencyAmount];
    v13 = [v12 formattedStringValue];
    v14 = [(NPKBridgePendingTransactionHandler *)self transaction];
    v15 = [v14 merchant];
    v16 = [v15 displayName];
    v28 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REDIRECT_MESSAGE", @"%@%@%@", v13, v16, v30);

    v17 = &PKAnalyticsReportApplicationRedirectOpenButtonTag;
    v18 = @"OPEN";
  }

  else
  {
    v29 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REQUIRED_TITLE", @"%@", v30);
    v11 = [(NPKBridgePendingTransactionHandler *)self transaction];
    v12 = [v11 merchant];
    v13 = [v12 displayName];
    v28 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REQUIRED_MESSAGE", @"%@%@", v13, v30);
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
  v37 = v10;
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
  v26 = [(NPKBridgePendingTransactionHandler *)self delegate];
  v27 = [v26 presentingViewControllerForPendingTransactionHandler:self];

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

- (void)linkedApplicationDidChangeState:(id)a3
{
  if ([a3 state] == &dword_0 + 1)
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