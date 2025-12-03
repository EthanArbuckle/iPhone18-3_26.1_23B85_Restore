@interface ADAttributionRequester
- (ADAttributionRequester)initWithConnection:(id)connection bundleID:(id)d transactionID:(id)iD;
- (BOOL)_isAppTrackingAuthorized;
- (void)beginAttributionRequest:(id)request reason:(id)reason completionHandler:(id)handler;
- (void)requestAttributionDetails:(id)details;
- (void)requestAttributionDetailsWithBlock:(id)block;
- (void)setServerToTest:(int64_t)test;
@end

@implementation ADAttributionRequester

- (ADAttributionRequester)initWithConnection:(id)connection bundleID:(id)d transactionID:(id)iD
{
  connectionCopy = connection;
  dCopy = d;
  iDCopy = iD;
  v23.receiver = self;
  v23.super_class = ADAttributionRequester;
  v12 = [(ADAttributionRequester *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, d);
    objc_storeStrong(&v13->_transactionToken, iD);
    objc_storeStrong(&v13->_connection, connection);
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
  connection = [(ADAttributionRequester *)self connection];
  v4 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  v5 = TCCAccessPreflightWithAuditToken();

  return v5 == 0;
}

- (void)requestAttributionDetails:(id)details
{
  v25[1] = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  isAccountRestricted = [mEMORY[0x277CE9638] isAccountRestricted];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F40]];

  if ((isAccountRestricted & 1) != 0 || v8)
  {
    v24 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle localizedStringForKey:@"The app is not authorized for ad tracking" value:&stru_28510D178 table:0];
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
      if (detailsCopy)
      {
        v9 = MEMORY[0x277CCACA8];
        aD_jsonString = [&unk_28510DAD0 AD_jsonString];
        v11 = [v9 stringWithFormat:@"Sanitized attribution response: %@", aD_jsonString];
        _ADLog();

        detailsCopy[2](detailsCopy, &unk_28510DAD0, 0);
      }

      goto LABEL_11;
    }

    v22 = *MEMORY[0x277CCA450];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [mainBundle2 localizedStringForKey:@"The app is not authorized for ad tracking" value:&stru_28510D178 table:0];
    v23 = v19;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADClientErrorDomain" code:1 userInfo:v14];
    v16 = MEMORY[0x277CCACA8];
    v17 = @"The app's TCC tracking status is denied. Attribution can not be provided.";
  }

  v20 = [v16 stringWithFormat:v17];
  _ADLog();

  if (detailsCopy)
  {
    (detailsCopy)[2](detailsCopy, 0, v15);
  }

LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)beginAttributionRequest:(id)request reason:(id)reason completionHandler:(id)handler
{
  requestCopy = request;
  reasonCopy = reason;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ADAttributionRequester_beginAttributionRequest_reason_completionHandler___block_invoke;
  v14[3] = &unk_278C5A6B8;
  v15 = requestCopy;
  v16 = reasonCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = reasonCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
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

- (void)requestAttributionDetailsWithBlock:(id)block
{
  v18[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handling Attribution Request."];
  _ADLog();

  v17 = @"AttributingBundleID";
  bundleID = [(ADAttributionRequester *)self bundleID];
  v18[0] = bundleID;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  AnalyticsSendEvent();

  if (blockCopy)
  {
    takeXPCTransaction();
    mEMORY[0x277CE96E8] = [MEMORY[0x277CE96E8] sharedInstance];
    v9 = [mEMORY[0x277CE96E8] createNewWatchdog:@"Attribution Request in progress" withTimer:1800];

    workQueue = [MEMORY[0x277CE96B8] workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ADAttributionRequester_requestAttributionDetailsWithBlock___block_invoke;
    v13[3] = &unk_278C5A6E0;
    v13[4] = self;
    v14 = v9;
    v15 = @"com.apple.adprivacyd Attribution Request in Progress";
    v16 = blockCopy;
    v11 = v9;
    [workQueue addOperationWithBlock:v13];
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

- (void)setServerToTest:(int64_t)test
{
  v4 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.private.iad.news-client"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received request to change AdServer environment."];
    _ADLog();

    mEMORY[0x277CE9630] = [MEMORY[0x277CE9630] sharedInstance];
    v8 = mEMORY[0x277CE9630];
    v9 = test - 1;
    if ((test - 1) > 4)
    {
      v11 = @"https://cf.iadsdk.apple.com/adserver";
      v10 = @"https://iadsdk.apple.com/adserver";
    }

    else
    {
      v10 = off_278C5A720[v9];
      v11 = off_278C5A748[v9];
    }

    [mEMORY[0x277CE9630] setString:v10 forKey:@"AdServerURL"];

    mEMORY[0x277CE9630]2 = [MEMORY[0x277CE9630] sharedInstance];
    [mEMORY[0x277CE9630]2 setString:v11 forKey:@"ConfigurationAdServerURL"];

    mEMORY[0x277CE9630]3 = [MEMORY[0x277CE9630] sharedInstance];
    [mEMORY[0x277CE9630]3 setBool:1 forKey:@"ForceExpireConfiguration"];

    mEMORY[0x277CE96B8] = [MEMORY[0x277CE96B8] sharedInstance];
    [mEMORY[0x277CE96B8] setConfigurationExpirationTime:0];

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"ForceExpireConfiguration" object:@"com.apple.AdLib" userInfo:0];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: A request to change AdServer environment was made from a non-entitled caller."];
    _ADLog();
  }
}

@end