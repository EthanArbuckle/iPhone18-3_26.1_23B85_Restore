@interface ADAttributionRequester
- (ADAttributionRequester)initWithConnection:(id)a3 bundleID:(id)a4 transactionID:(id)a5;
- (BOOL)_isAppTrackingAuthorized;
- (void)beginAttributionRequest:(id)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)requestAttributionDetails:(id)a3;
- (void)requestAttributionDetailsWithBlock:(id)a3;
- (void)setServerToTest:(int64_t)a3;
@end

@implementation ADAttributionRequester

- (ADAttributionRequester)initWithConnection:(id)a3 bundleID:(id)a4 transactionID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = ADAttributionRequester;
  v12 = [(ADAttributionRequester *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, a4);
    objc_storeStrong(&v13->_transactionToken, a5);
    objc_storeStrong(&v13->_connection, a3);
    [(NSXPCConnection *)v13->_connection setExportedObject:v13];
    v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510E9E0];
    [(NSXPCConnection *)v13->_connection setExportedInterface:v14];

    v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510E9E0];
    [(NSXPCConnection *)v13->_connection setRemoteObjectInterface:v15];

    objc_initWeak(&location, v13);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__ADAttributionRequester_initWithConnection_bundleID_transactionID___block_invoke;
    v20[3] = &unk_278C5A690;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v13->_connection setInvalidationHandler:v20];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__ADAttributionRequester_initWithConnection_bundleID_transactionID___block_invoke_2;
    v18[3] = &unk_278C5A690;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v13->_connection setInterruptionHandler:v18];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted connection from Attribution Client."];
    _ADLog();

    [(NSXPCConnection *)v13->_connection resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __68__ADAttributionRequester_initWithConnection_bundleID_transactionID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CCACA8];
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained bundleID];
    v4 = [v2 stringWithFormat:@"XPC connection invalidated for %@. Lost connection from Attribution Client.", v3];
    _ADLog();
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC connection invalidated with nil ADAttributionRequester. Lost connection from Attribution Client."];
    _ADLog();
  }
}

void __68__ADAttributionRequester_initWithConnection_bundleID_transactionID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CCACA8];
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained bundleID];
    v4 = [v2 stringWithFormat:@"XPC connection interrupted for %@. Lost connection from Attribution Client.", v3];
    _ADLog();
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC connection interrupted with nil ADAttributionRequester. Lost connection from Attribution Client."];
    _ADLog();
  }
}

- (BOOL)_isAppTrackingAuthorized
{
  v2 = *MEMORY[0x277D6C238];
  v3 = [(ADAttributionRequester *)self connection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  v5 = TCCAccessPreflightWithAuditToken();

  return v5 == 0;
}

- (void)requestAttributionDetails:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CE9638] sharedInstance];
  v6 = [v5 isAccountRestricted];

  v7 = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [v7 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F40]];

  if ((v6 & 1) != 0 || v8)
  {
    v24 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"The app is not authorized for ad tracking" value:&stru_28510D178 table:0];
    v25[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADClientErrorDomain" code:1 userInfo:v14];
    v16 = MEMORY[0x277CCACA8];
    v17 = @"The app's TCC tracking status is restricted. Attribution can not be provided.";
  }

  else
  {
    if ([(ADAttributionRequester *)self _isAppTrackingAuthorized])
    {
      if (v4)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [&unk_28510DAD0 AD_jsonString];
        v11 = [v9 stringWithFormat:@"Sanitized attribution response: %@", v10];
        _ADLog();

        v4[2](v4, &unk_28510DAD0, 0);
      }

      goto LABEL_11;
    }

    v22 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 localizedStringForKey:@"The app is not authorized for ad tracking" value:&stru_28510D178 table:0];
    v23 = v19;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADClientErrorDomain" code:1 userInfo:v14];
    v16 = MEMORY[0x277CCACA8];
    v17 = @"The app's TCC tracking status is denied. Attribution can not be provided.";
  }

  v20 = [v16 stringWithFormat:v17];
  _ADLog();

  if (v4)
  {
    (v4)[2](v4, 0, v15);
  }

LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)beginAttributionRequest:(id)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ADAttributionRequester_beginAttributionRequest_reason_completionHandler___block_invoke;
  v14[3] = &unk_278C5A6B8;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  [(ADAttributionRequester *)self requestAttributionDetails:v14];
}

void __75__ADAttributionRequester_beginAttributionRequest_reason_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CE96E8] sharedInstance];
  [v6 removeWatchdogWithToken:*(a1 + 32)];

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v11, v5);
  }

  v8 = *(a1 + 40);
  releaseXPCTransaction();
  v9 = +[ADAttributionService sharedInstance];
  v10 = [*(a1 + 48) transactionToken];
  [v9 removeClientForToken:v10];
}

- (void)requestAttributionDetailsWithBlock:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handling Attribution Request."];
  _ADLog();

  v17 = @"AttributingBundleID";
  v6 = [(ADAttributionRequester *)self bundleID];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  AnalyticsSendEvent();

  if (v4)
  {
    takeXPCTransaction();
    v8 = [MEMORY[0x277CE96E8] sharedInstance];
    v9 = [v8 createNewWatchdog:@"Attribution Request in progress" withTimer:1800];

    v10 = [MEMORY[0x277CE96B8] workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ADAttributionRequester_requestAttributionDetailsWithBlock___block_invoke;
    v13[3] = &unk_278C5A6E0;
    v13[4] = self;
    v14 = v9;
    v15 = @"com.apple.adprivacyd Attribution Request in Progress";
    v16 = v4;
    v11 = v9;
    [v10 addOperationWithBlock:v13];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: A completionHandler was not passed in on the attribution request."];
    _ADLog();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __61__ADAttributionRequester_requestAttributionDetailsWithBlock___block_invoke(uint64_t a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ADAttributionRequester_requestAttributionDetailsWithBlock___block_invoke_2;
  v12[3] = &unk_278C5A6E0;
  v11 = *(a1 + 32);
  v2 = *(&v11 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v13 = v11;
  v14 = v5;
  v6 = MEMORY[0x23EF11540](v12);
  v7 = [MEMORY[0x277CE9658] sharedInstance];
  v8 = [v7 reconcileInProgress];

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribution Request made while reconcile is in progress. Postponing."];
    _ADLog();

    v10 = [MEMORY[0x277CE9658] sharedInstance];
    [v10 performOperationAfterReconcile:v6];
  }

  else
  {
    v6[2](v6);
  }
}

void __61__ADAttributionRequester_requestAttributionDetailsWithBlock___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3 = [v2 activeDSIDRecord];

  if (v3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v4 beginAttributionRequest:v5 reason:v6 completionHandler:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No Active DSID Record. Set the DSID for the current user."];
    _ADLog();

    v9 = [MEMORY[0x277CE9658] sharedInstance];
    v10 = [MEMORY[0x277CE9638] sharedInstance];
    v11 = [v10 iTunesAccountDSID];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__ADAttributionRequester_requestAttributionDetailsWithBlock___block_invoke_3;
    v17[3] = &unk_278C5A6E0;
    v16 = *(a1 + 2);
    v12 = *(&v16 + 1);
    v13 = a1[6];
    v14 = a1[7];
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v18 = v16;
    v19 = v15;
    [v9 setDSID:v11 completionHandler:v17];
  }
}

void __45__ADAttributionRequester_setStocksAdEnabled___block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"IDs have been set by request of Stock's enablement call."];
  _ADLog();
}

- (void)setServerToTest:(int64_t)a3
{
  v4 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.private.iad.news-client"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received request to change AdServer environment."];
    _ADLog();

    v7 = [MEMORY[0x277CE9630] sharedInstance];
    v8 = v7;
    v9 = a3 - 1;
    if ((a3 - 1) > 4)
    {
      v11 = @"https://cf.iadsdk.apple.com/adserver";
      v10 = @"https://iadsdk.apple.com/adserver";
    }

    else
    {
      v10 = off_278C5A720[v9];
      v11 = off_278C5A748[v9];
    }

    [v7 setString:v10 forKey:@"AdServerURL"];

    v12 = [MEMORY[0x277CE9630] sharedInstance];
    [v12 setString:v11 forKey:@"ConfigurationAdServerURL"];

    v13 = [MEMORY[0x277CE9630] sharedInstance];
    [v13 setBool:1 forKey:@"ForceExpireConfiguration"];

    v14 = [MEMORY[0x277CE96B8] sharedInstance];
    [v14 setConfigurationExpirationTime:0];

    v15 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v15 postNotificationName:@"ForceExpireConfiguration" object:@"com.apple.AdLib" userInfo:0];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: A request to change AdServer environment was made from a non-entitled caller."];
    _ADLog();
  }
}

@end