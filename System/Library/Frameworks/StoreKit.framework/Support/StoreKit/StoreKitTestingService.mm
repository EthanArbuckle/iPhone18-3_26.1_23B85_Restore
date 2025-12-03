@interface StoreKitTestingService
+ (id)defaultService;
- (BOOL)_validateMethodCall:(void *)call context:(id)context error:(id *)error;
- (BOOL)isAppStoreSignedAppWithBundleID:(id)d;
- (BOOL)validateMethodCall:(id)call context:(id)context error:(id *)error;
- (StoreKitTestingService)init;
- (id)_adNetworkServiceWithErrorHandler:(id)handler;
- (id)_getSKAdNetworkSignatureParametersFromImpression:(id)impression source:(int64_t)source;
- (id)_testingAppsDataWithError:(id *)error;
- (id)validateOctaneContextFor:(id)for with:(id)with completion:(id)completion;
- (void)_adNetworkServiceInvalidated;
- (void)_clearCacheForClient:(_TtC9storekitd6Client *)client completion:(id)completion;
- (void)_logExitForMethod:(void *)method context:(id)context;
- (void)addPostbacksFromDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion;
- (void)buyProductWithConfiguration:(id)configuration bundleID:(id)d completion:(id)completion;
- (void)buyProductWithID:(id)d bundleID:(id)iD completion:(id)completion;
- (void)changeAutoRenewStatus:(BOOL)status transactionID:(unint64_t)d bundleID:(id)iD completion:(id)completion;
- (void)clearOverridesForBundleID:(id)d completion:(id)completion;
- (void)completeAskToBuyRequestWithResponse:(BOOL)response transactionID:(unint64_t)d bundleID:(id)iD completion:(id)completion;
- (void)configurationDataForBundleID:(id)d completion:(id)completion;
- (void)configureSourceForTestPostbackDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion;
- (void)deleteAllTransactionsForBundleID:(id)d completion:(id)completion;
- (void)developerPostbackURLForBundleID:(id)d completion:(id)completion;
- (void)expireSubscriptionWithProductID:(id)d bundleID:(id)iD completion:(id)completion;
- (void)forceRenewalOfSubscriptionWithProductID:(id)d bundleID:(id)iD completion:(id)completion;
- (void)getActivePortWithCompletion:(id)completion;
- (void)getIntegerValueForIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion;
- (void)getStorefrontForBundleID:(id)d completion:(id)completion;
- (void)getStringValueForIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion;
- (void)getTransactionDataForBundleID:(id)d completion:(id)completion;
- (void)invalidateBag;
- (void)logExitForMethod:(id)method context:(id)context;
- (void)performAction:(int64_t)action transactionID:(unint64_t)d bundleID:(id)iD completion:(id)completion;
- (void)receiveEventOfType:(int64_t)type eventData:(id)data identifier:(id)identifier;
- (void)refreshQueueForBundleId:(id)id completion:(id)completion;
- (void)registerForEventOfType:(int64_t)type forBundleID:(id)d withFilterData:(id)data completion:(id)completion;
- (void)removeConfigurationForBundleID:(id)d completion:(id)completion;
- (void)removeTransactionIdentifiersFromCache:(id)cache forBundleIdentifier:(id)identifier;
- (void)retrieveTestPostbacksForBundleID:(id)d completion:(id)completion;
- (void)revokeEntitlementsForProductIdentifiers:(id)identifiers forBundleId:(id)id completion:(id)completion;
- (void)saveConfigurationAssetData:(id)data fileName:(id)name forBundleID:(id)d completion:(id)completion;
- (void)saveConfigurationData:(id)data forBundleID:(id)d completion:(id)completion;
- (void)saveSigningData:(id)data forBundleID:(id)d completion:(id)completion;
- (void)sendPurchaseIntentForProductIdentifier:(id)identifier bundleID:(id)d completion:(id)completion;
- (void)sendTestPingbackForBundleID:(id)d completion:(id)completion;
- (void)setIntegerValue:(int64_t)value forIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion;
- (void)setStoreKitError:(int64_t)error forCategory:(int64_t)category bundleID:(id)d withReply:(id)reply;
- (void)setStorefront:(id)storefront forBundleID:(id)d completion:(id)completion;
- (void)setStringValue:(id)value forIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion;
- (void)showMessage:(id)message forBundleID:(id)d;
- (void)simulateStoreKitPushWithAction:(id)action forBundleIdentifiers:(id)identifiers;
- (void)startObservingTransactionsForBundleID:(id)d completion:(id)completion;
- (void)storeKitErrorForCategory:(int64_t)category bundleID:(id)d withReply:(id)reply;
- (void)testingAppsWithCompletion:(id)completion;
- (void)transactionDeleted:(unint64_t)deleted productID:(id)d forBundleID:(id)iD;
- (void)transactionUpdated:(id)updated forBundleID:(id)d;
- (void)unregisterForEventWithIdentifier:(id)identifier forBundleID:(id)d;
- (void)updatePort:(int64_t)port;
- (void)validateSKAdNetworkImpression:(id)impression withPublicKey:(id)key forBundleID:(id)d source:(int64_t)source completion:(id)completion;
@end

@implementation StoreKitTestingService

+ (id)defaultService
{
  if (qword_1003D3EF8 != -1)
  {
    sub_1002CA210();
  }

  v3 = qword_1003D3EF0;

  return v3;
}

- (StoreKitTestingService)init
{
  v8.receiver = self;
  v8.super_class = StoreKitTestingService;
  v2 = [(StoreKitTestingService *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connectionLock = v2->_connectionLock;
    v2->_connectionLock = v3;

    v5 = objc_alloc_init(_TtC9storekitd23StoreKitPushSyncHandler);
    syncHandler = v2->_syncHandler;
    v2->_syncHandler = v5;
  }

  return v2;
}

- (void)buyProductWithID:(id)d bundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = [OctaneActionContext contextWithBundleID:iD];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService buyProductWithID:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 buyProductWithID:dCopy withContext:v10];
  }

  completionCopy[2](completionCopy, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService buyProductWithID:bundleID:completion:]" context:v10];
}

- (void)changeAutoRenewStatus:(BOOL)status transactionID:(unint64_t)d bundleID:(id)iD completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v11 = [OctaneActionContext contextWithBundleID:iD transactionID:d];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService changeAutoRenewStatus:transactionID:bundleID:completion:]" context:v11 error:&v14];
  v12 = v14;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 changeAutoRenewStatus:statusCopy withContext:v11];
  }

  completionCopy[2](completionCopy, v12);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService changeAutoRenewStatus:transactionID:bundleID:completion:]" context:v11];
}

- (void)clearOverridesForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [OctaneActionContext contextWithBundleID:d];
  v10 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService clearOverridesForBundleID:completion:]" context:v7 error:&v10];
  v8 = v10;
  if (!v8)
  {
    v9 = +[OctaneManager sharedInstance];
    v8 = [v9 clearOverridesWithContext:v7];
  }

  completionCopy[2](completionCopy, v8);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService clearOverridesForBundleID:completion:]" context:v7];
}

- (void)completeAskToBuyRequestWithResponse:(BOOL)response transactionID:(unint64_t)d bundleID:(id)iD completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v11 = [OctaneActionContext contextWithBundleID:iD transactionID:d];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService completeAskToBuyRequestWithResponse:transactionID:bundleID:completion:]" context:v11 error:&v14];
  v12 = v14;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 completeAskToBuyRequestWithResponse:responseCopy withContext:v11];
  }

  completionCopy[2](completionCopy, v12);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService completeAskToBuyRequestWithResponse:transactionID:bundleID:completion:]" context:v11];
}

- (void)deleteAllTransactionsForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [OctaneActionContext contextWithBundleID:d];
  v10 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService deleteAllTransactionsForBundleID:completion:]" context:v7 error:&v10];
  v8 = v10;
  if (!v8)
  {
    v9 = +[OctaneManager sharedInstance];
    v8 = [v9 deleteAllTransactionsWithContext:v7];
  }

  completionCopy[2](completionCopy, v8);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService deleteAllTransactionsForBundleID:completion:]" context:v7];
}

- (void)expireSubscriptionWithProductID:(id)d bundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = [OctaneActionContext contextWithBundleID:iD];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService expireSubscriptionWithProductID:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 expireOrRenewSubscriptionWithIdentifier:dCopy expire:1 withContext:v10];
  }

  completionCopy[2](completionCopy, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService expireSubscriptionWithProductID:bundleID:completion:]" context:v10];
}

- (void)forceRenewalOfSubscriptionWithProductID:(id)d bundleID:(id)iD completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = [OctaneActionContext contextWithBundleID:iD];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService forceRenewalOfSubscriptionWithProductID:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 expireOrRenewSubscriptionWithIdentifier:dCopy expire:0 withContext:v10];
  }

  completionCopy[2](completionCopy, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService forceRenewalOfSubscriptionWithProductID:bundleID:completion:]" context:v10];
}

- (void)getStorefrontForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [OctaneActionContext contextWithBundleID:d];
  v12 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService getStorefrontForBundleID:completion:]" context:v7 error:&v12];
  v8 = v12;
  v9 = 0;
  if (!v8)
  {
    v10 = +[OctaneManager sharedInstance];
    v11 = [v10 getStorefrontWithContext:v7];
    v9 = [v11 objectForKeyedSubscript:off_1003CAC40[0]];
  }

  completionCopy[2](completionCopy, v8, v9);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getStorefrontForBundleID:completion:]" context:v7];
}

- (void)getActivePortWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NSUUID lib_shortLogKey];
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v5 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = +[NSXPCConnection currentConnection];
    sk_clientID = [v7 sk_clientID];
    v11 = 138543874;
    v12 = v4;
    v13 = 2082;
    v14 = "[StoreKitTestingService getActivePortWithCompletion:]";
    v15 = 2114;
    v16 = sk_clientID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entering %{public}s called by %{public}@", &v11, 0x20u);
  }

  v9 = +[OctaneManager sharedInstance];
  completionCopy[2](completionCopy, [v9 activePort]);

  if (qword_1003D3F48 != -1)
  {
    sub_1002CA238();
  }

  v10 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 2082;
    v14 = "[StoreKitTestingService getActivePortWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Exiting  %{public}s", &v11, 0x16u);
  }
}

- (void)getTransactionDataForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [OctaneActionContext contextWithBundleID:d];
  v11 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService getTransactionDataForBundleID:completion:]" context:v7 error:&v11];
  v8 = v11;
  v9 = 0;
  if (!v8)
  {
    v10 = +[OctaneManager sharedInstance];
    v9 = [v10 getTransactionDataWithContext:v7];
  }

  completionCopy[2](completionCopy, v8, v9);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getTransactionDataForBundleID:completion:]" context:v7];
}

- (void)invalidateBag
{
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CA260();
  }

  if (qword_1003D3F48 != -1)
  {
    sub_1002CA238();
  }

  v2 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending storefront changed notification for Xcode test", v3, 2u);
  }

  notify_post(unk_1003F6918(off_1003CB238, "UTF8String"));
}

- (void)performAction:(int64_t)action transactionID:(unint64_t)d bundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v11 = [OctaneActionContext contextWithBundleID:iD transactionID:d];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService performAction:transactionID:bundleID:completion:]" context:v11 error:&v17];
  v12 = v17;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 performAction:action withContext:v11];

    if (v12)
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      v14 = qword_1003D3F38;
      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        logKey = [v11 logKey];
        *buf = 138544130;
        v19 = logKey;
        v20 = 2048;
        actionCopy = action;
        v22 = 2114;
        v23 = v11;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to perform action %ld with context %{public}@: %{public}@", buf, 0x2Au);
      }
    }
  }

  completionCopy[2](completionCopy, v12);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService performAction:transactionID:bundleID:completion:]" context:v11];
}

- (void)removeConfigurationForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [OctaneActionContext contextWithBundleID:d];
  v10 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService removeConfigurationForBundleID:completion:]" context:v7 error:&v10];
  v8 = v10;
  if (!v8)
  {
    v9 = +[OctaneManager sharedInstance];
    [v9 deleteDataWithContext:v7];
  }

  completionCopy[2](completionCopy, v8);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService removeConfigurationForBundleID:completion:]" context:v7];
}

- (void)saveSigningData:(id)data forBundleID:(id)d completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10 = [OctaneActionContext contextWithBundleID:d];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService saveSigningData:forBundleID:completion:]" context:v10 error:&v14];
  v11 = v14;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v13 = [v12 saveSigningData:dataCopy withContext:v10];
  }

  completionCopy[2](completionCopy, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService saveSigningData:forBundleID:completion:]" context:v10];
}

- (void)startObservingTransactionsForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [OctaneActionContext contextWithBundleID:dCopy];
  v16 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService startObservingTransactionsForBundleID:completion:]" context:v8 error:&v16];
  v9 = v16;
  v10 = 0;
  if (!v9)
  {
    v11 = +[OctaneManager sharedInstance];
    v10 = [v11 getTransactionDataWithContext:v8];
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneClientProtocol];
  connection = [v8 connection];
  [connection setRemoteObjectInterface:v12];

  connection2 = [v8 connection];
  v15 = [OctaneClientConnection addConnectionWithBundleID:dCopy connection:connection2 type:0];

  completionCopy[2](completionCopy, v9, v10);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService startObservingTransactionsForBundleID:completion:]" context:v8];
}

- (void)getIntegerValueForIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v9 = [OctaneActionContext contextWithBundleID:d];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService getIntegerValueForIdentifier:forBundleID:completion:]" context:v9 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 getIntegerValueForIdentifier:identifier withContext:v9];
  }

  completionCopy[2](completionCopy, v10, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getIntegerValueForIdentifier:forBundleID:completion:]" context:v9];
}

- (void)setIntegerValue:(int64_t)value forIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v11 = [OctaneActionContext contextWithBundleID:d];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setIntegerValue:forIdentifier:forBundleID:completion:]" context:v11 error:&v14];
  v12 = v14;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 setIntegerValue:value forIdentifier:identifier withContext:v11];
  }

  completionCopy[2](completionCopy, v12, v12 == 0);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setIntegerValue:forIdentifier:forBundleID:completion:]" context:v11];
}

- (void)getStringValueForIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v9 = [OctaneActionContext contextWithBundleID:d];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService getStringValueForIdentifier:forBundleID:completion:]" context:v9 error:&v13];
  v10 = v13;
  v11 = 0;
  if (!v10)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 getStringValueForIdentifier:identifier withContext:v9];
  }

  completionCopy[2](completionCopy, v10, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getStringValueForIdentifier:forBundleID:completion:]" context:v9];
}

- (void)setStringValue:(id)value forIdentifier:(unint64_t)identifier forBundleID:(id)d completion:(id)completion
{
  valueCopy = value;
  completionCopy = completion;
  v12 = [OctaneActionContext contextWithBundleID:d];
  v15 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setStringValue:forIdentifier:forBundleID:completion:]" context:v12 error:&v15];
  v13 = v15;
  if (!v13)
  {
    v14 = +[OctaneManager sharedInstance];
    v13 = [v14 setStringValue:valueCopy forIdentifier:identifier withContext:v12];
  }

  completionCopy[2](completionCopy, v13);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setStringValue:forIdentifier:forBundleID:completion:]" context:v12];
}

- (void)setStorefront:(id)storefront forBundleID:(id)d completion:(id)completion
{
  storefrontCopy = storefront;
  completionCopy = completion;
  v10 = [OctaneActionContext contextWithBundleID:d];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setStorefront:forBundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 setStorefront:storefrontCopy withContext:v10];
  }

  completionCopy[2](completionCopy, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setStorefront:forBundleID:completion:]" context:v10];
}

- (void)testingAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSUUID lib_shortLogKey];
  v6 = +[NSXPCConnection currentConnection];
  sk_clientID = [v6 sk_clientID];
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v8 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = v5;
    v16 = 2082;
    v17 = "[StoreKitTestingService testingAppsWithCompletion:]";
    v18 = 2114;
    v19 = sk_clientID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entering %{public}s for by %{public}@", buf, 0x20u);
  }

  if ([v6 sk_isOctanePrivileged])
  {
    v13 = 0;
    v9 = [(StoreKitTestingService *)self _testingAppsDataWithError:&v13];
    v10 = v13;
    if (v10)
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      v11 = qword_1003D3F38;
      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v15 = v5;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to get testing apps data: %{public}@ ", buf, 0x16u);
      }
    }

    else if (![v9 length])
    {

      v9 = 0;
    }

    completionCopy[2](completionCopy, v9, v10);
    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v12 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = v5;
      v16 = 2082;
      v17 = "[StoreKitTestingService testingAppsWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Exiting  %{public}s ", buf, 0x16u);
    }
  }

  else
  {
    v10 = ASDErrorWithDescription();
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)configurationDataForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [OctaneActionContext contextWithBundleID:dCopy];
  v16 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService configurationDataForBundleID:completion:]" context:v8 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = v9;
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v15 = 0;
    v11 = [OctaneManager configurationDataForBundleID:dCopy error:&v15];
    v10 = v15;
    if (v10)
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      v12 = qword_1003D3F38;
      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        logKey = [v8 logKey];
        *buf = 138543874;
        v18 = logKey;
        v19 = 2114;
        v20 = dCopy;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to get configuration data for %{public}@: %{public}@ ", buf, 0x20u);
      }
    }

    (completionCopy)[2](completionCopy, v11, v10);
    [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService configurationDataForBundleID:completion:]" context:v8];
  }
}

- (void)refreshQueueForBundleId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = [OctaneActionContext contextWithBundleID:idCopy];
  v12 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService refreshQueueForBundleId:completion:]" context:v8 error:&v12];
  v9 = v12;
  if (!v9)
  {
    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
    {
      sub_1002CA2A0();
    }

    bundleID = [v8 bundleID];
    v11 = [StoreKitServiceConnection octaneConnectionForBundleID:bundleID];

    if (v11)
    {
      [v11 checkServerQueueForQueue:@"DefaultQueue" withClient:0];
    }

    else
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
      {
        sub_1002CA310();
      }
    }
  }

  completionCopy[2](completionCopy, v9);
}

- (void)revokeEntitlementsForProductIdentifiers:(id)identifiers forBundleId:(id)id completion:(id)completion
{
  identifiersCopy = identifiers;
  idCopy = id;
  completionCopy = completion;
  v11 = [OctaneActionContext contextWithBundleID:idCopy];
  v19 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService revokeEntitlementsForProductIdentifiers:forBundleId:completion:]" context:v11 error:&v19];
  v12 = v19;
  if (!v12)
  {
    v13 = [StoreKitServiceConnection octaneConnectionForBundleID:idCopy];
    if (v13)
    {
      v14 = v13;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10002E6DC;
      v17[3] = &unk_10037FFD0;
      v18 = completionCopy;
      [v14 notifyOfRevokedProductIdentifiers:identifiersCopy reply:v17];

      goto LABEL_5;
    }

    v15 = +[StoreKitMessagesManager sharedManager];
    v16 = +[OctaneManager testAccountID];
    [v15 revokeProductIdentifiers:identifiersCopy forBundleID:idCopy accountID:v16];
  }

  (*(completionCopy + 2))(completionCopy, v12);
LABEL_5:
}

- (void)transactionDeleted:(unint64_t)deleted productID:(id)d forBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v9 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    deletedCopy = deleted;
    v22 = 2114;
    v23 = dCopy;
    v24 = 2114;
    v25 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Notified of deleted transaction (%lu - %{public}@) for %{public}@", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [OctaneClientConnection connectionsForBundleID:iDCopy, 0];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) transactionDeleted:deleted forBundleID:iDCopy];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)transactionUpdated:(id)updated forBundleID:(id)d
{
  updatedCopy = updated;
  dCopy = d;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CA378();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [OctaneClientConnection connectionsForBundleID:dCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * i) transactionUpdated:updatedCopy forBundleID:dCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)updatePort:(int64_t)port
{
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CA3E8();
  }

  v4 = +[OctaneManager sharedInstance];
  [v4 portUpdated:port];
}

- (void)removeTransactionIdentifiersFromCache:(id)cache forBundleIdentifier:(id)identifier
{
  cacheCopy = cache;
  identifierCopy = identifier;
  v8 = [OctaneActionContext contextWithBundleID:identifierCopy];
  v12 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService removeTransactionIdentifiersFromCache:forBundleIdentifier:]" context:v8 error:&v12];
  v9 = v12;
  if (!v9)
  {
    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v10 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
    {
      sub_1002CA458(v10, cacheCopy, identifierCopy);
    }

    v11 = [[_TtC9storekitd6Client alloc] initWithBundleIdentifier:identifierCopy];
    if (v11)
    {
      [(StoreKitTestingService *)self _clearCacheForClient:v11 completion:&stru_100380F60];
    }

    else
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
      {
        sub_1002CA508();
      }
    }
  }
}

- (void)simulateStoreKitPushWithAction:(id)action forBundleIdentifiers:(id)identifiers
{
  actionCopy = action;
  identifiersCopy = identifiers;
  unsignedIntegerValue = [actionCopy unsignedIntegerValue];
  v9 = _os_activity_create(&_mh_execute_header, "StoreKit/XcodeTestPush", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002ECD8;
  v12[3] = &unk_100380FB0;
  v13 = actionCopy;
  v14 = identifiersCopy;
  selfCopy = self;
  v16 = unsignedIntegerValue;
  v10 = identifiersCopy;
  v11 = actionCopy;
  os_activity_apply(v9, v12);
}

- (void)registerForEventOfType:(int64_t)type forBundleID:(id)d withFilterData:(id)data completion:(id)completion
{
  dCopy = d;
  dataCopy = data;
  completionCopy = completion;
  v13 = [OctaneActionContext contextWithBundleID:dCopy];
  v45 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService registerForEventOfType:forBundleID:withFilterData:completion:]" context:v13 error:&v45];
  v14 = v45;
  if (v14)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v15 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:0];
    selfCopy = self;
    v40 = dataCopy;
    if (v15)
    {
      v16 = v15;
      v17 = [v15 objectForKeyedSubscript:@"bundleID"];

      if (!v17)
      {
        v52 = @"bundleID";
        v53 = dCopy;
        v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v19 = [v16 ams_dictionaryByAddingEntriesFromDictionary:v18];

        v16 = v19;
      }
    }

    else
    {
      v54 = @"bundleID";
      v55 = dCopy;
      v16 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }

    bundleID = [v13 bundleID];
    v21 = [OctaneClientConnection connectionsForBundleID:bundleID];

    if (![v21 count])
    {
      v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneClientProtocol];
      connection = [v13 connection];
      [connection setRemoteObjectInterface:v22];

      connection2 = [v13 connection];
      v25 = [OctaneClientConnection addConnectionWithBundleID:dCopy connection:connection2 type:1];
      v51 = v25;
      v26 = [NSArray arrayWithObjects:&v51 count:1];

      v21 = v26;
    }

    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v27 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      typeCopy = type;
      v49 = 2114;
      v50 = v16;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Registering for event type %{public}ld with filter %{public}@", buf, 0x16u);
    }

    v28 = +[OctaneManager sharedInstance];
    v29 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:0];
    v30 = [v28 registerForEventOfType:type filterData:v29];

    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v31 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [v21 count];
      *buf = 138543618;
      typeCopy = v30;
      v49 = 2050;
      v50 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Registering observation id %{public}@ to %{public}ld client(s)", buf, 0x16u);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v21;
    v35 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v42;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v42 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v41 + 1) + 8 * i) registerObservationID:v30];
        }

        v36 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v36);
    }

    [(StoreKitTestingService *)selfCopy _logExitForMethod:"[StoreKitTestingService registerForEventOfType:forBundleID:withFilterData:completion:]" context:v13];
    (completionCopy)[2](completionCopy, v30);

    dataCopy = v40;
  }
}

- (void)unregisterForEventWithIdentifier:(id)identifier forBundleID:(id)d
{
  identifierCopy = identifier;
  v7 = [OctaneActionContext contextWithBundleID:d];
  v26 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService unregisterForEventWithIdentifier:forBundleID:]" context:v7 error:&v26];
  v8 = v26;
  if (!v8)
  {
    bundleID = [v7 bundleID];
    v10 = [OctaneClientConnection connectionsForBundleID:bundleID];

    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v11 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 count];
      bundleID2 = [v7 bundleID];
      *buf = 138543874;
      v29 = identifierCopy;
      v30 = 2050;
      v31 = v13;
      v32 = 2114;
      v33 = bundleID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unregistering observation id %{public}@ with %{public}ld clients for %{public}@", buf, 0x20u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v22 + 1) + 8 * i) unregisterObservationID:{identifierCopy, v22}];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v17);
    }

    if (![OctaneClientConnection observerCountForEventIdentifier:identifierCopy])
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      v20 = qword_1003D3F38;
      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unregistering observation id %{public}@ with XPC service", buf, 0xCu);
      }

      v21 = +[OctaneManager sharedInstance];
      [v21 unregisterForEventWithIdentifier:identifierCopy];
    }

    [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService unregisterForEventWithIdentifier:forBundleID:]" context:v7, v22];
  }
}

- (void)storeKitErrorForCategory:(int64_t)category bundleID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v10 = [OctaneActionContext contextWithBundleID:dCopy];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService storeKitErrorForCategory:bundleID:withReply:]" context:v10 error:&v13];
  v11 = 0;
  if (!v13)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 storeKitErrorForCategory:category bundleID:dCopy];
  }

  replyCopy[2](replyCopy, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService storeKitErrorForCategory:bundleID:withReply:]" context:v10];
}

- (void)setStoreKitError:(int64_t)error forCategory:(int64_t)category bundleID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v12 = [OctaneActionContext contextWithBundleID:dCopy];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setStoreKitError:forCategory:bundleID:withReply:]" context:v12 error:&v14];
  if (!v14)
  {
    v13 = +[OctaneManager sharedInstance];
    [v13 setStoreKitError:error forCategory:category bundleID:dCopy];
  }

  replyCopy[2](replyCopy);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setStoreKitError:forCategory:bundleID:withReply:]" context:v12];
}

- (void)buyProductWithConfiguration:(id)configuration bundleID:(id)d completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v10 = [OctaneActionContext contextWithBundleID:d];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService buyProductWithConfiguration:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (v11)
  {
    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    v12 = +[OctaneManager sharedInstance];
    [v12 buyProductWithConfiguration:configurationCopy withContext:v10 withReply:completionCopy];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService buyProductWithConfiguration:bundleID:completion:]" context:v10];
}

- (void)receiveEventOfType:(int64_t)type eventData:(id)data identifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v9 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_INFO))
  {
    v13 = 134349314;
    typeCopy = type;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received event from XPC service %{public}ld for observer %{public}@", &v13, 0x16u);
  }

  v10 = +[NSXPCConnection currentConnection];
  sk_isOctanePrivileged = [v10 sk_isOctanePrivileged];

  if (sk_isOctanePrivileged)
  {
    [OctaneClientConnection receiveEventOfType:type withData:dataCopy onAllObserversWithID:identifierCopy];
  }

  else
  {
    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v12 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
    {
      sub_1002CA730(v12);
    }
  }
}

- (void)showMessage:(id)message forBundleID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v8 = [OctaneActionContext contextWithBundleID:dCopy];
  v21 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService showMessage:forBundleID:]" context:v8 error:&v21];
  v9 = v21;
  if (!v9)
  {
    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v10 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received request to show message for %{public}@", buf, 0xCu);
    }

    v11 = [StoreKitServiceConnection octaneConnectionForBundleID:dCopy];
    xpcConnection = [v11 xpcConnection];

    if (xpcConnection)
    {
      v13 = [messageCopy objectForKeyedSubscript:@"url"];
      v14 = [messageCopy objectForKeyedSubscript:@"messageReason"];
      v20 = [messageCopy objectForKeyedSubscript:@"shouldAllowDeveloperControl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if (qword_1003D3F48 != -1)
        {
          sub_1002CA238();
        }

        v15 = qword_1003D3F38;
        if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v13;
          v24 = 2112;
          v25 = dCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "will ask to show message at %@ for %@", buf, 0x16u);
        }

        v18 = -[StoreKitMessageInfo initWithUserID:bundleID:status:allowDeveloperControl:messageType:]([StoreKitMessageInfo alloc], "initWithUserID:bundleID:status:allowDeveloperControl:messageType:", &off_1003A13D8, dCopy, &off_1003A13F0, [v20 BOOLValue], objc_msgSend(v14, "integerValue"));
        v19 = +[StoreKitMessagesManager sharedManager];
        [v19 addMessage:v18 error:0];
        client = [v11 client];
        xpcConnection2 = [v11 xpcConnection];
        [v19 askToShowMessageForClient:client message:v18 pendingURL:v13 connection:xpcConnection2];
      }

      else
      {
        if (qword_1003D3F48 != -1)
        {
          sub_1002CA238();
        }

        if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_ERROR))
        {
          sub_1002CA774();
        }
      }
    }

    else
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1002CA7DC();
      }
    }
  }
}

- (id)_adNetworkServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(NSLock *)self->_connectionLock lock];
  connection = self->_connection;
  if (!connection)
  {
    if (qword_1003D3F48 != -1)
    {
      sub_1002CA224();
    }

    v6 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connecting to ad network service", buf, 2u);
    }

    v7 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.storekitservice" options:0];
    v8 = self->_connection;
    self->_connection = v7;

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneAdNetworkProtocol];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v10, v11, v12, v13, objc_opt_class(), 0];
    [v9 setClasses:v14 forSelector:"sendTestPingbackForBundleID:completion:" argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v9];
    objc_initWeak(buf, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100030238;
    v19[3] = &unk_100380FD8;
    objc_copyWeak(&v20, buf);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000302CC;
    v17[3] = &unk_100380FD8;
    objc_copyWeak(&v18, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v17];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);

    connection = self->_connection;
  }

  v15 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  [(NSLock *)self->_connectionLock unlock];

  return v15;
}

- (void)_adNetworkServiceInvalidated
{
  [(NSLock *)self->_connectionLock lock];
  connection = self->_connection;
  self->_connection = 0;

  connectionLock = self->_connectionLock;

  [(NSLock *)connectionLock unlock];
}

- (void)addPostbacksFromDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion
{
  dictionariesCopy = dictionaries;
  dCopy = d;
  completionCopy = completion;
  v26 = [OctaneActionContext contextWithBundleID:dCopy];
  v42 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService addPostbacksFromDictionaries:forBundleID:completion:]" context:v26 error:&v42];
  v7 = v42;
  v20 = v7;
  if (v7)
  {
    completionCopy[2](completionCopy, v7);
  }

  else
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000307AC;
    v40[3] = &unk_10037FFD0;
    v8 = completionCopy;
    v41 = v8;
    v19 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:v40];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10003088C;
    v38 = sub_10003089C;
    v39 = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000308A4;
    v31[3] = &unk_100381000;
    v9 = v8;
    v32 = v9;
    v33 = &v34;
    [v19 configureSourceForTestPostbackDictionaries:dictionariesCopy forBundleID:dCopy completion:v31];
    if (v35[5])
    {
      v10 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v35[5];
      v11 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
      if (v11)
      {
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = [NSMutableDictionary dictionaryWithDictionary:*(*(&v27 + 1) + 8 * i)];
            v15 = +[NSUUID UUID];
            uUIDString = [v15 UUIDString];
            [v14 setObject:uUIDString forKeyedSubscript:@"transactionId"];

            v17 = +[OctaneManager sharedInstance];
            v18 = [v17 generateSKANPostbackSignature:v14 withContext:v26];
            [v14 setObject:v18 forKeyedSubscript:@"signature"];

            [v10 addObject:v14];
          }

          v11 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
        }

        while (v11);
      }

      [v19 addPostbacksFromDictionaries:v10 forBundleID:dCopy completion:v9];
    }

    _Block_object_dispose(&v34, 8);
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService addPostbacksFromDictionaries:forBundleID:completion:]" context:v26];
}

- (void)developerPostbackURLForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [OctaneActionContext contextWithBundleID:dCopy];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService developerPostbackURLForBundleID:completion:]" context:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100030A78;
    v15 = &unk_10037FFD0;
    v10 = completionCopy;
    v16 = v10;
    v11 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v12];
    [v11 developerPostbackURLForBundleID:dCopy completion:{v10, v12, v13, v14, v15}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService developerPostbackURLForBundleID:completion:]" context:v8];
}

- (void)retrieveTestPostbacksForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [OctaneActionContext contextWithBundleID:dCopy];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService retrieveTestPostbacksForBundleID:completion:]" context:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    completionCopy[2](completionCopy, &__NSArray0__struct);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100030CAC;
    v15 = &unk_10037FFD0;
    v10 = completionCopy;
    v16 = v10;
    v11 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v12];
    [v11 retrieveTestPostbacksForBundleID:dCopy completion:{v10, v12, v13, v14, v15}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService retrieveTestPostbacksForBundleID:completion:]" context:v8];
}

- (void)sendTestPingbackForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [OctaneActionContext contextWithBundleID:dCopy];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService sendTestPingbackForBundleID:completion:]" context:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100030EE0;
    v15 = &unk_10037FFD0;
    v10 = completionCopy;
    v16 = v10;
    v11 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v12];
    [v11 sendTestPingbackForBundleID:dCopy completion:{v10, v12, v13, v14, v15}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService sendTestPingbackForBundleID:completion:]" context:v8];
}

- (void)validateSKAdNetworkImpression:(id)impression withPublicKey:(id)key forBundleID:(id)d source:(int64_t)source completion:(id)completion
{
  impressionCopy = impression;
  keyCopy = key;
  dCopy = d;
  completionCopy = completion;
  v16 = [OctaneActionContext contextWithBundleID:dCopy];
  v29 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService validateSKAdNetworkImpression:withPublicKey:forBundleID:source:completion:]" context:v16 error:&v29];
  v17 = v29;
  v18 = [(StoreKitTestingService *)self _getSKAdNetworkSignatureParametersFromImpression:impressionCopy source:source];
  v19 = [v18 objectForKeyedSubscript:@"adNetworkAttributionSignature"];
  if (v19)
  {
    if (v17 || (+[OctaneManager sharedInstance](OctaneManager, "sharedInstance"), v26 = keyCopy, v20 = objc_claimAutoreleasedReturnValue(), [v20 validateSKAdNetworkSignature:v19 withPublicKey:v26 source:source andParameters:v18 withContext:v16], v17 = objc_claimAutoreleasedReturnValue(), v20, keyCopy = v26, v17))
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      v21 = qword_1003D3F38;
      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SKAdNetwork signature validation failure %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, v17);
    }

    else
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10003129C;
      v27[3] = &unk_10037FFD0;
      v23 = completionCopy;
      v28 = v23;
      v24 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:v27];
      v25 = v23;
      keyCopy = v26;
      [v24 validateSKAdNetworkImpression:impressionCopy withPublicKey:v26 forBundleID:dCopy source:source completion:v25];

      v17 = 0;
    }
  }

  else
  {
    v22 = ASDErrorWithDescription();
    completionCopy[2](completionCopy, v22);
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService validateSKAdNetworkImpression:withPublicKey:forBundleID:source:completion:]" context:v16];
}

- (void)configureSourceForTestPostbackDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion
{
  dictionariesCopy = dictionaries;
  dCopy = d;
  completionCopy = completion;
  v11 = [OctaneActionContext contextWithBundleID:dCopy];
  v20 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService configureSourceForTestPostbackDictionaries:forBundleID:completion:]" context:v11 error:&v20];
  v12 = v20;
  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000314E4;
    v18 = &unk_10037FFD0;
    v13 = completionCopy;
    v19 = v13;
    v14 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v15];
    [v14 configureSourceForTestPostbackDictionaries:dictionariesCopy forBundleID:dCopy completion:{v13, v15, v16, v17, v18}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService configureSourceForTestPostbackDictionaries:forBundleID:completion:]" context:v11];
}

- (id)_getSKAdNetworkSignatureParametersFromImpression:(id)impression source:(int64_t)source
{
  impressionCopy = impression;
  v6 = impressionCopy;
  if (source == 4)
  {
    v7 = objc_opt_new();
    v8 = [v6 objectForKeyedSubscript:@"source_domain"];
    [v7 setObject:v8 forKeyedSubscript:@"adNetworkSourceDomain"];

    v9 = [v6 objectForKeyedSubscript:@"itunes_item_id"];
    [v7 setObject:v9 forKeyedSubscript:@"id"];

    v10 = [v6 objectForKeyedSubscript:@"ad_network_id"];
    [v7 setObject:v10 forKeyedSubscript:@"adNetworkId"];

    v11 = [v6 objectForKeyedSubscript:@"nonce"];
    [v7 setObject:v11 forKeyedSubscript:@"adNetworkNonce"];

    v12 = [v6 objectForKeyedSubscript:@"version"];
    [v7 setObject:v12 forKeyedSubscript:@"adNetworkPayloadVersion"];

    v13 = [v6 objectForKeyedSubscript:@"timestamp"];
    [v7 setObject:v13 forKeyedSubscript:@"adNetworkImpressionTimestamp"];

    v14 = [v6 objectForKeyedSubscript:@"signature"];
    [v7 setObject:v14 forKeyedSubscript:@"adNetworkAttributionSignature"];

    v15 = [v6 objectForKeyedSubscript:@"source_identifier"];
    [v7 setObject:v15 forKeyedSubscript:@"sourceIdentifier"];

    v16 = [v6 objectForKeyedSubscript:@"fidelity-type"];
    [v7 setObject:v16 forKeyedSubscript:@"fidelity-type"];
  }

  else
  {
    v7 = impressionCopy;
  }

  return v7;
}

- (void)_clearCacheForClient:(_TtC9storekitd6Client *)client completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = client;
  v7[3] = v6;
  v7[4] = self;
  clientCopy = client;
  selfCopy = self;

  sub_100224DF8(&unk_1002EDE58, v7);
}

- (BOOL)isAppStoreSignedAppWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1000B0F68(v4, v6);

  return v4 & 1;
}

- (BOOL)validateMethodCall:(id)call context:(id)context error:(id *)error
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  contextCopy = context;
  selfCopy = self;
  sub_1000B10A8(v7, v9, contextCopy);

  return 1;
}

- (BOOL)_validateMethodCall:(void *)call context:(id)context error:(id *)error
{
  contextCopy = context;
  selfCopy = self;
  sub_1000B1FF0(call, contextCopy);

  return 1;
}

- (void)logExitForMethod:(id)method context:(id)context
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  contextCopy = context;
  selfCopy = self;
  sub_1000B2214(v6, v8, contextCopy);
}

- (void)_logExitForMethod:(void *)method context:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1000B24C0(method, contextCopy);
}

- (id)validateOctaneContextFor:(id)for with:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  v14 = sub_1000B25B8(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);

  return v14;
}

- (void)saveConfigurationData:(id)data forBundleID:(id)d completion:(id)completion
{
  v8 = _Block_copy(completion);
  dataCopy = data;
  dCopy = d;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  _Block_copy(v8);
  sub_1000B280C(v11, v13, v14, v16, selfCopy, v8);
  _Block_release(v8);

  sub_10008E168(v11, v13);
}

- (void)saveConfigurationAssetData:(id)data fileName:(id)name forBundleID:(id)d completion:(id)completion
{
  v10 = _Block_copy(completion);
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  _Block_copy(v10);
  sub_1000B34B0(v14, v16, v17, v19, v20, v22, selfCopy, v10);
  _Block_release(v10);

  sub_10008E168(v14, v16);
}

- (id)_testingAppsDataWithError:(id *)error
{
  selfCopy = self;
  v4 = sub_1000B4D08();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v4, v6);

  return v7.super.isa;
}

- (void)sendPurchaseIntentForProductIdentifier:(id)identifier bundleID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  selfCopy = self;
  StoreKitTestingService.sendPurchaseIntent(for:bundleID:completion:)(v7, v9, v10, v12, sub_1000B6728, v13);
}

@end