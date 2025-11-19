@interface StoreKitTestingService
+ (id)defaultService;
- (BOOL)_validateMethodCall:(void *)a3 context:(id)a4 error:(id *)a5;
- (BOOL)isAppStoreSignedAppWithBundleID:(id)a3;
- (BOOL)validateMethodCall:(id)a3 context:(id)a4 error:(id *)a5;
- (StoreKitTestingService)init;
- (id)_adNetworkServiceWithErrorHandler:(id)a3;
- (id)_getSKAdNetworkSignatureParametersFromImpression:(id)a3 source:(int64_t)a4;
- (id)_testingAppsDataWithError:(id *)a3;
- (id)validateOctaneContextFor:(id)a3 with:(id)a4 completion:(id)a5;
- (void)_adNetworkServiceInvalidated;
- (void)_clearCacheForClient:(_TtC9storekitd6Client *)a3 completion:(id)a4;
- (void)_logExitForMethod:(void *)a3 context:(id)a4;
- (void)addPostbacksFromDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)buyProductWithConfiguration:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)buyProductWithID:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)changeAutoRenewStatus:(BOOL)a3 transactionID:(unint64_t)a4 bundleID:(id)a5 completion:(id)a6;
- (void)clearOverridesForBundleID:(id)a3 completion:(id)a4;
- (void)completeAskToBuyRequestWithResponse:(BOOL)a3 transactionID:(unint64_t)a4 bundleID:(id)a5 completion:(id)a6;
- (void)configurationDataForBundleID:(id)a3 completion:(id)a4;
- (void)configureSourceForTestPostbackDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)deleteAllTransactionsForBundleID:(id)a3 completion:(id)a4;
- (void)developerPostbackURLForBundleID:(id)a3 completion:(id)a4;
- (void)expireSubscriptionWithProductID:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)forceRenewalOfSubscriptionWithProductID:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)getActivePortWithCompletion:(id)a3;
- (void)getIntegerValueForIdentifier:(unint64_t)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)getStorefrontForBundleID:(id)a3 completion:(id)a4;
- (void)getStringValueForIdentifier:(unint64_t)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)getTransactionDataForBundleID:(id)a3 completion:(id)a4;
- (void)invalidateBag;
- (void)logExitForMethod:(id)a3 context:(id)a4;
- (void)performAction:(int64_t)a3 transactionID:(unint64_t)a4 bundleID:(id)a5 completion:(id)a6;
- (void)receiveEventOfType:(int64_t)a3 eventData:(id)a4 identifier:(id)a5;
- (void)refreshQueueForBundleId:(id)a3 completion:(id)a4;
- (void)registerForEventOfType:(int64_t)a3 forBundleID:(id)a4 withFilterData:(id)a5 completion:(id)a6;
- (void)removeConfigurationForBundleID:(id)a3 completion:(id)a4;
- (void)removeTransactionIdentifiersFromCache:(id)a3 forBundleIdentifier:(id)a4;
- (void)retrieveTestPostbacksForBundleID:(id)a3 completion:(id)a4;
- (void)revokeEntitlementsForProductIdentifiers:(id)a3 forBundleId:(id)a4 completion:(id)a5;
- (void)saveConfigurationAssetData:(id)a3 fileName:(id)a4 forBundleID:(id)a5 completion:(id)a6;
- (void)saveConfigurationData:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)saveSigningData:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)sendPurchaseIntentForProductIdentifier:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)sendTestPingbackForBundleID:(id)a3 completion:(id)a4;
- (void)setIntegerValue:(int64_t)a3 forIdentifier:(unint64_t)a4 forBundleID:(id)a5 completion:(id)a6;
- (void)setStoreKitError:(int64_t)a3 forCategory:(int64_t)a4 bundleID:(id)a5 withReply:(id)a6;
- (void)setStorefront:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)setStringValue:(id)a3 forIdentifier:(unint64_t)a4 forBundleID:(id)a5 completion:(id)a6;
- (void)showMessage:(id)a3 forBundleID:(id)a4;
- (void)simulateStoreKitPushWithAction:(id)a3 forBundleIdentifiers:(id)a4;
- (void)startObservingTransactionsForBundleID:(id)a3 completion:(id)a4;
- (void)storeKitErrorForCategory:(int64_t)a3 bundleID:(id)a4 withReply:(id)a5;
- (void)testingAppsWithCompletion:(id)a3;
- (void)transactionDeleted:(unint64_t)a3 productID:(id)a4 forBundleID:(id)a5;
- (void)transactionUpdated:(id)a3 forBundleID:(id)a4;
- (void)unregisterForEventWithIdentifier:(id)a3 forBundleID:(id)a4;
- (void)updatePort:(int64_t)a3;
- (void)validateSKAdNetworkImpression:(id)a3 withPublicKey:(id)a4 forBundleID:(id)a5 source:(int64_t)a6 completion:(id)a7;
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

- (void)buyProductWithID:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:a4];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService buyProductWithID:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 buyProductWithID:v8 withContext:v10];
  }

  v9[2](v9, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService buyProductWithID:bundleID:completion:]" context:v10];
}

- (void)changeAutoRenewStatus:(BOOL)a3 transactionID:(unint64_t)a4 bundleID:(id)a5 completion:(id)a6
{
  v8 = a3;
  v10 = a6;
  v11 = [OctaneActionContext contextWithBundleID:a5 transactionID:a4];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService changeAutoRenewStatus:transactionID:bundleID:completion:]" context:v11 error:&v14];
  v12 = v14;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 changeAutoRenewStatus:v8 withContext:v11];
  }

  v10[2](v10, v12);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService changeAutoRenewStatus:transactionID:bundleID:completion:]" context:v11];
}

- (void)clearOverridesForBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [OctaneActionContext contextWithBundleID:a3];
  v10 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService clearOverridesForBundleID:completion:]" context:v7 error:&v10];
  v8 = v10;
  if (!v8)
  {
    v9 = +[OctaneManager sharedInstance];
    v8 = [v9 clearOverridesWithContext:v7];
  }

  v6[2](v6, v8);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService clearOverridesForBundleID:completion:]" context:v7];
}

- (void)completeAskToBuyRequestWithResponse:(BOOL)a3 transactionID:(unint64_t)a4 bundleID:(id)a5 completion:(id)a6
{
  v8 = a3;
  v10 = a6;
  v11 = [OctaneActionContext contextWithBundleID:a5 transactionID:a4];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService completeAskToBuyRequestWithResponse:transactionID:bundleID:completion:]" context:v11 error:&v14];
  v12 = v14;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 completeAskToBuyRequestWithResponse:v8 withContext:v11];
  }

  v10[2](v10, v12);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService completeAskToBuyRequestWithResponse:transactionID:bundleID:completion:]" context:v11];
}

- (void)deleteAllTransactionsForBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [OctaneActionContext contextWithBundleID:a3];
  v10 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService deleteAllTransactionsForBundleID:completion:]" context:v7 error:&v10];
  v8 = v10;
  if (!v8)
  {
    v9 = +[OctaneManager sharedInstance];
    v8 = [v9 deleteAllTransactionsWithContext:v7];
  }

  v6[2](v6, v8);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService deleteAllTransactionsForBundleID:completion:]" context:v7];
}

- (void)expireSubscriptionWithProductID:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:a4];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService expireSubscriptionWithProductID:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 expireOrRenewSubscriptionWithIdentifier:v8 expire:1 withContext:v10];
  }

  v9[2](v9, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService expireSubscriptionWithProductID:bundleID:completion:]" context:v10];
}

- (void)forceRenewalOfSubscriptionWithProductID:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:a4];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService forceRenewalOfSubscriptionWithProductID:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 expireOrRenewSubscriptionWithIdentifier:v8 expire:0 withContext:v10];
  }

  v9[2](v9, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService forceRenewalOfSubscriptionWithProductID:bundleID:completion:]" context:v10];
}

- (void)getStorefrontForBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [OctaneActionContext contextWithBundleID:a3];
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

  v6[2](v6, v8, v9);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getStorefrontForBundleID:completion:]" context:v7];
}

- (void)getActivePortWithCompletion:(id)a3
{
  v3 = a3;
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
    v8 = [v7 sk_clientID];
    v11 = 138543874;
    v12 = v4;
    v13 = 2082;
    v14 = "[StoreKitTestingService getActivePortWithCompletion:]";
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entering %{public}s called by %{public}@", &v11, 0x20u);
  }

  v9 = +[OctaneManager sharedInstance];
  v3[2](v3, [v9 activePort]);

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

- (void)getTransactionDataForBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [OctaneActionContext contextWithBundleID:a3];
  v11 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService getTransactionDataForBundleID:completion:]" context:v7 error:&v11];
  v8 = v11;
  v9 = 0;
  if (!v8)
  {
    v10 = +[OctaneManager sharedInstance];
    v9 = [v10 getTransactionDataWithContext:v7];
  }

  v6[2](v6, v8, v9);
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

- (void)performAction:(int64_t)a3 transactionID:(unint64_t)a4 bundleID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [OctaneActionContext contextWithBundleID:a5 transactionID:a4];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService performAction:transactionID:bundleID:completion:]" context:v11 error:&v17];
  v12 = v17;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 performAction:a3 withContext:v11];

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
        v16 = [v11 logKey];
        *buf = 138544130;
        v19 = v16;
        v20 = 2048;
        v21 = a3;
        v22 = 2114;
        v23 = v11;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to perform action %ld with context %{public}@: %{public}@", buf, 0x2Au);
      }
    }
  }

  v10[2](v10, v12);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService performAction:transactionID:bundleID:completion:]" context:v11];
}

- (void)removeConfigurationForBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [OctaneActionContext contextWithBundleID:a3];
  v10 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService removeConfigurationForBundleID:completion:]" context:v7 error:&v10];
  v8 = v10;
  if (!v8)
  {
    v9 = +[OctaneManager sharedInstance];
    [v9 deleteDataWithContext:v7];
  }

  v6[2](v6, v8);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService removeConfigurationForBundleID:completion:]" context:v7];
}

- (void)saveSigningData:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:a4];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService saveSigningData:forBundleID:completion:]" context:v10 error:&v14];
  v11 = v14;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v13 = [v12 saveSigningData:v8 withContext:v10];
  }

  v9[2](v9, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService saveSigningData:forBundleID:completion:]" context:v10];
}

- (void)startObservingTransactionsForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v6];
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
  v13 = [v8 connection];
  [v13 setRemoteObjectInterface:v12];

  v14 = [v8 connection];
  v15 = [OctaneClientConnection addConnectionWithBundleID:v6 connection:v14 type:0];

  v7[2](v7, v9, v10);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService startObservingTransactionsForBundleID:completion:]" context:v8];
}

- (void)getIntegerValueForIdentifier:(unint64_t)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [OctaneActionContext contextWithBundleID:a4];
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
    v11 = [v12 getIntegerValueForIdentifier:a3 withContext:v9];
  }

  v8[2](v8, v10, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getIntegerValueForIdentifier:forBundleID:completion:]" context:v9];
}

- (void)setIntegerValue:(int64_t)a3 forIdentifier:(unint64_t)a4 forBundleID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [OctaneActionContext contextWithBundleID:a5];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setIntegerValue:forIdentifier:forBundleID:completion:]" context:v11 error:&v14];
  v12 = v14;
  if (!v12)
  {
    v13 = +[OctaneManager sharedInstance];
    v12 = [v13 setIntegerValue:a3 forIdentifier:a4 withContext:v11];
  }

  v10[2](v10, v12, v12 == 0);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setIntegerValue:forIdentifier:forBundleID:completion:]" context:v11];
}

- (void)getStringValueForIdentifier:(unint64_t)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [OctaneActionContext contextWithBundleID:a4];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService getStringValueForIdentifier:forBundleID:completion:]" context:v9 error:&v13];
  v10 = v13;
  v11 = 0;
  if (!v10)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 getStringValueForIdentifier:a3 withContext:v9];
  }

  v8[2](v8, v10, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService getStringValueForIdentifier:forBundleID:completion:]" context:v9];
}

- (void)setStringValue:(id)a3 forIdentifier:(unint64_t)a4 forBundleID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [OctaneActionContext contextWithBundleID:a5];
  v15 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setStringValue:forIdentifier:forBundleID:completion:]" context:v12 error:&v15];
  v13 = v15;
  if (!v13)
  {
    v14 = +[OctaneManager sharedInstance];
    v13 = [v14 setStringValue:v10 forIdentifier:a4 withContext:v12];
  }

  v11[2](v11, v13);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setStringValue:forIdentifier:forBundleID:completion:]" context:v12];
}

- (void)setStorefront:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:a4];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setStorefront:forBundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (!v11)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 setStorefront:v8 withContext:v10];
  }

  v9[2](v9, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setStorefront:forBundleID:completion:]" context:v10];
}

- (void)testingAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID lib_shortLogKey];
  v6 = +[NSXPCConnection currentConnection];
  v7 = [v6 sk_clientID];
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
    v19 = v7;
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

    v4[2](v4, v9, v10);
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
    v4[2](v4, 0, v10);
  }
}

- (void)configurationDataForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v6];
  v16 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService configurationDataForBundleID:completion:]" context:v8 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = v9;
    v7[2](v7, 0, v9);
  }

  else
  {
    v15 = 0;
    v11 = [OctaneManager configurationDataForBundleID:v6 error:&v15];
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
        v14 = [v8 logKey];
        *buf = 138543874;
        v18 = v14;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to get configuration data for %{public}@: %{public}@ ", buf, 0x20u);
      }
    }

    (v7)[2](v7, v11, v10);
    [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService configurationDataForBundleID:completion:]" context:v8];
  }
}

- (void)refreshQueueForBundleId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v6];
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

    v10 = [v8 bundleID];
    v11 = [StoreKitServiceConnection octaneConnectionForBundleID:v10];

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

  v7[2](v7, v9);
}

- (void)revokeEntitlementsForProductIdentifiers:(id)a3 forBundleId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [OctaneActionContext contextWithBundleID:v9];
  v19 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService revokeEntitlementsForProductIdentifiers:forBundleId:completion:]" context:v11 error:&v19];
  v12 = v19;
  if (!v12)
  {
    v13 = [StoreKitServiceConnection octaneConnectionForBundleID:v9];
    if (v13)
    {
      v14 = v13;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10002E6DC;
      v17[3] = &unk_10037FFD0;
      v18 = v10;
      [v14 notifyOfRevokedProductIdentifiers:v8 reply:v17];

      goto LABEL_5;
    }

    v15 = +[StoreKitMessagesManager sharedManager];
    v16 = +[OctaneManager testAccountID];
    [v15 revokeProductIdentifiers:v8 forBundleID:v9 accountID:v16];
  }

  (*(v10 + 2))(v10, v12);
LABEL_5:
}

- (void)transactionDeleted:(unint64_t)a3 productID:(id)a4 forBundleID:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v9 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v21 = a3;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Notified of deleted transaction (%lu - %{public}@) for %{public}@", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [OctaneClientConnection connectionsForBundleID:v8, 0];
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

        [*(*(&v15 + 1) + 8 * i) transactionDeleted:a3 forBundleID:v8];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)transactionUpdated:(id)a3 forBundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = [OctaneClientConnection connectionsForBundleID:v6, 0];
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

        [*(*(&v12 + 1) + 8 * i) transactionUpdated:v5 forBundleID:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)updatePort:(int64_t)a3
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
  [v4 portUpdated:a3];
}

- (void)removeTransactionIdentifiersFromCache:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v7];
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
      sub_1002CA458(v10, v6, v7);
    }

    v11 = [[_TtC9storekitd6Client alloc] initWithBundleIdentifier:v7];
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

- (void)simulateStoreKitPushWithAction:(id)a3 forBundleIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 unsignedIntegerValue];
  v9 = _os_activity_create(&_mh_execute_header, "StoreKit/XcodeTestPush", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002ECD8;
  v12[3] = &unk_100380FB0;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v16 = v8;
  v10 = v7;
  v11 = v6;
  os_activity_apply(v9, v12);
}

- (void)registerForEventOfType:(int64_t)a3 forBundleID:(id)a4 withFilterData:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [OctaneActionContext contextWithBundleID:v10];
  v45 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService registerForEventOfType:forBundleID:withFilterData:completion:]" context:v13 error:&v45];
  v14 = v45;
  if (v14)
  {
    v12[2](v12, 0);
  }

  else
  {
    v15 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:0];
    v39 = self;
    v40 = v11;
    if (v15)
    {
      v16 = v15;
      v17 = [v15 objectForKeyedSubscript:@"bundleID"];

      if (!v17)
      {
        v52 = @"bundleID";
        v53 = v10;
        v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v19 = [v16 ams_dictionaryByAddingEntriesFromDictionary:v18];

        v16 = v19;
      }
    }

    else
    {
      v54 = @"bundleID";
      v55 = v10;
      v16 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }

    v20 = [v13 bundleID];
    v21 = [OctaneClientConnection connectionsForBundleID:v20];

    if (![v21 count])
    {
      v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneClientProtocol];
      v23 = [v13 connection];
      [v23 setRemoteObjectInterface:v22];

      v24 = [v13 connection];
      v25 = [OctaneClientConnection addConnectionWithBundleID:v10 connection:v24 type:1];
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
      v48 = a3;
      v49 = 2114;
      v50 = v16;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Registering for event type %{public}ld with filter %{public}@", buf, 0x16u);
    }

    v28 = +[OctaneManager sharedInstance];
    v29 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:0];
    v30 = [v28 registerForEventOfType:a3 filterData:v29];

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
      v48 = v30;
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

    [(StoreKitTestingService *)v39 _logExitForMethod:"[StoreKitTestingService registerForEventOfType:forBundleID:withFilterData:completion:]" context:v13];
    (v12)[2](v12, v30);

    v11 = v40;
  }
}

- (void)unregisterForEventWithIdentifier:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = [OctaneActionContext contextWithBundleID:a4];
  v26 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService unregisterForEventWithIdentifier:forBundleID:]" context:v7 error:&v26];
  v8 = v26;
  if (!v8)
  {
    v9 = [v7 bundleID];
    v10 = [OctaneClientConnection connectionsForBundleID:v9];

    if (qword_1003D3F48 != -1)
    {
      sub_1002CA238();
    }

    v11 = qword_1003D3F38;
    if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 count];
      v14 = [v7 bundleID];
      *buf = 138543874;
      v29 = v6;
      v30 = 2050;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
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

          [*(*(&v22 + 1) + 8 * i) unregisterObservationID:{v6, v22}];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v17);
    }

    if (![OctaneClientConnection observerCountForEventIdentifier:v6])
    {
      if (qword_1003D3F48 != -1)
      {
        sub_1002CA238();
      }

      v20 = qword_1003D3F38;
      if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unregistering observation id %{public}@ with XPC service", buf, 0xCu);
      }

      v21 = +[OctaneManager sharedInstance];
      [v21 unregisterForEventWithIdentifier:v6];
    }

    [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService unregisterForEventWithIdentifier:forBundleID:]" context:v7, v22];
  }
}

- (void)storeKitErrorForCategory:(int64_t)a3 bundleID:(id)a4 withReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:v8];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService storeKitErrorForCategory:bundleID:withReply:]" context:v10 error:&v13];
  v11 = 0;
  if (!v13)
  {
    v12 = +[OctaneManager sharedInstance];
    v11 = [v12 storeKitErrorForCategory:a3 bundleID:v8];
  }

  v9[2](v9, v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService storeKitErrorForCategory:bundleID:withReply:]" context:v10];
}

- (void)setStoreKitError:(int64_t)a3 forCategory:(int64_t)a4 bundleID:(id)a5 withReply:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [OctaneActionContext contextWithBundleID:v10];
  v14 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService setStoreKitError:forCategory:bundleID:withReply:]" context:v12 error:&v14];
  if (!v14)
  {
    v13 = +[OctaneManager sharedInstance];
    [v13 setStoreKitError:a3 forCategory:a4 bundleID:v10];
  }

  v11[2](v11);
  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService setStoreKitError:forCategory:bundleID:withReply:]" context:v12];
}

- (void)buyProductWithConfiguration:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [OctaneActionContext contextWithBundleID:a4];
  v13 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService buyProductWithConfiguration:bundleID:completion:]" context:v10 error:&v13];
  v11 = v13;
  if (v11)
  {
    v9[2](v9, v11, 0);
  }

  else
  {
    v12 = +[OctaneManager sharedInstance];
    [v12 buyProductWithConfiguration:v8 withContext:v10 withReply:v9];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService buyProductWithConfiguration:bundleID:completion:]" context:v10];
}

- (void)receiveEventOfType:(int64_t)a3 eventData:(id)a4 identifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (qword_1003D3F48 != -1)
  {
    sub_1002CA224();
  }

  v9 = qword_1003D3F38;
  if (os_log_type_enabled(qword_1003D3F38, OS_LOG_TYPE_INFO))
  {
    v13 = 134349314;
    v14 = a3;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received event from XPC service %{public}ld for observer %{public}@", &v13, 0x16u);
  }

  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 sk_isOctanePrivileged];

  if (v11)
  {
    [OctaneClientConnection receiveEventOfType:a3 withData:v7 onAllObserversWithID:v8];
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

- (void)showMessage:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v7];
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
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received request to show message for %{public}@", buf, 0xCu);
    }

    v11 = [StoreKitServiceConnection octaneConnectionForBundleID:v7];
    v12 = [v11 xpcConnection];

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"url"];
      v14 = [v6 objectForKeyedSubscript:@"messageReason"];
      v20 = [v6 objectForKeyedSubscript:@"shouldAllowDeveloperControl"];
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
          v25 = v7;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "will ask to show message at %@ for %@", buf, 0x16u);
        }

        v18 = -[StoreKitMessageInfo initWithUserID:bundleID:status:allowDeveloperControl:messageType:]([StoreKitMessageInfo alloc], "initWithUserID:bundleID:status:allowDeveloperControl:messageType:", &off_1003A13D8, v7, &off_1003A13F0, [v20 BOOLValue], objc_msgSend(v14, "integerValue"));
        v19 = +[StoreKitMessagesManager sharedManager];
        [v19 addMessage:v18 error:0];
        v16 = [v11 client];
        v17 = [v11 xpcConnection];
        [v19 askToShowMessageForClient:v16 message:v18 pendingURL:v13 connection:v17];
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

- (id)_adNetworkServiceWithErrorHandler:(id)a3
{
  v4 = a3;
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

  v15 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v4];
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

- (void)addPostbacksFromDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v26 = [OctaneActionContext contextWithBundleID:v22];
  v42 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService addPostbacksFromDictionaries:forBundleID:completion:]" context:v26 error:&v42];
  v7 = v42;
  v20 = v7;
  if (v7)
  {
    v23[2](v23, v7);
  }

  else
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000307AC;
    v40[3] = &unk_10037FFD0;
    v8 = v23;
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
    [v19 configureSourceForTestPostbackDictionaries:v21 forBundleID:v22 completion:v31];
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
            v16 = [v15 UUIDString];
            [v14 setObject:v16 forKeyedSubscript:@"transactionId"];

            v17 = +[OctaneManager sharedInstance];
            v18 = [v17 generateSKANPostbackSignature:v14 withContext:v26];
            [v14 setObject:v18 forKeyedSubscript:@"signature"];

            [v10 addObject:v14];
          }

          v11 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
        }

        while (v11);
      }

      [v19 addPostbacksFromDictionaries:v10 forBundleID:v22 completion:v9];
    }

    _Block_object_dispose(&v34, 8);
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService addPostbacksFromDictionaries:forBundleID:completion:]" context:v26];
}

- (void)developerPostbackURLForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v6];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService developerPostbackURLForBundleID:completion:]" context:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    v7[2](v7, 0);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100030A78;
    v15 = &unk_10037FFD0;
    v10 = v7;
    v16 = v10;
    v11 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v12];
    [v11 developerPostbackURLForBundleID:v6 completion:{v10, v12, v13, v14, v15}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService developerPostbackURLForBundleID:completion:]" context:v8];
}

- (void)retrieveTestPostbacksForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v6];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService retrieveTestPostbacksForBundleID:completion:]" context:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    v7[2](v7, &__NSArray0__struct);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100030CAC;
    v15 = &unk_10037FFD0;
    v10 = v7;
    v16 = v10;
    v11 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v12];
    [v11 retrieveTestPostbacksForBundleID:v6 completion:{v10, v12, v13, v14, v15}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService retrieveTestPostbacksForBundleID:completion:]" context:v8];
}

- (void)sendTestPingbackForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OctaneActionContext contextWithBundleID:v6];
  v17 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService sendTestPingbackForBundleID:completion:]" context:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    v7[2](v7, 0);
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100030EE0;
    v15 = &unk_10037FFD0;
    v10 = v7;
    v16 = v10;
    v11 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v12];
    [v11 sendTestPingbackForBundleID:v6 completion:{v10, v12, v13, v14, v15}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService sendTestPingbackForBundleID:completion:]" context:v8];
}

- (void)validateSKAdNetworkImpression:(id)a3 withPublicKey:(id)a4 forBundleID:(id)a5 source:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [OctaneActionContext contextWithBundleID:v14];
  v29 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService validateSKAdNetworkImpression:withPublicKey:forBundleID:source:completion:]" context:v16 error:&v29];
  v17 = v29;
  v18 = [(StoreKitTestingService *)self _getSKAdNetworkSignatureParametersFromImpression:v12 source:a6];
  v19 = [v18 objectForKeyedSubscript:@"adNetworkAttributionSignature"];
  if (v19)
  {
    if (v17 || (+[OctaneManager sharedInstance](OctaneManager, "sharedInstance"), v26 = v13, v20 = objc_claimAutoreleasedReturnValue(), [v20 validateSKAdNetworkSignature:v19 withPublicKey:v26 source:a6 andParameters:v18 withContext:v16], v17 = objc_claimAutoreleasedReturnValue(), v20, v13 = v26, v17))
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

      v15[2](v15, v17);
    }

    else
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10003129C;
      v27[3] = &unk_10037FFD0;
      v23 = v15;
      v28 = v23;
      v24 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:v27];
      v25 = v23;
      v13 = v26;
      [v24 validateSKAdNetworkImpression:v12 withPublicKey:v26 forBundleID:v14 source:a6 completion:v25];

      v17 = 0;
    }
  }

  else
  {
    v22 = ASDErrorWithDescription();
    v15[2](v15, v22);
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService validateSKAdNetworkImpression:withPublicKey:forBundleID:source:completion:]" context:v16];
}

- (void)configureSourceForTestPostbackDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [OctaneActionContext contextWithBundleID:v9];
  v20 = 0;
  [(StoreKitTestingService *)self _validateMethodCall:"[StoreKitTestingService configureSourceForTestPostbackDictionaries:forBundleID:completion:]" context:v11 error:&v20];
  v12 = v20;
  if (v12)
  {
    v10[2](v10, 0, v12);
  }

  else
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000314E4;
    v18 = &unk_10037FFD0;
    v13 = v10;
    v19 = v13;
    v14 = [(StoreKitTestingService *)self _adNetworkServiceWithErrorHandler:&v15];
    [v14 configureSourceForTestPostbackDictionaries:v8 forBundleID:v9 completion:{v13, v15, v16, v17, v18}];
  }

  [(StoreKitTestingService *)self _logExitForMethod:"[StoreKitTestingService configureSourceForTestPostbackDictionaries:forBundleID:completion:]" context:v11];
}

- (id)_getSKAdNetworkSignatureParametersFromImpression:(id)a3 source:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 4)
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
    v7 = v5;
  }

  return v7;
}

- (void)_clearCacheForClient:(_TtC9storekitd6Client *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100224DF8(&unk_1002EDE58, v7);
}

- (BOOL)isAppStoreSignedAppWithBundleID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1000B0F68(v4, v6);

  return v4 & 1;
}

- (BOOL)validateMethodCall:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a4;
  v11 = self;
  sub_1000B10A8(v7, v9, v10);

  return 1;
}

- (BOOL)_validateMethodCall:(void *)a3 context:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = self;
  sub_1000B1FF0(a3, v7);

  return 1;
}

- (void)logExitForMethod:(id)a3 context:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_1000B2214(v6, v8, v9);
}

- (void)_logExitForMethod:(void *)a3 context:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1000B24C0(a3, v6);
}

- (id)validateOctaneContextFor:(id)a3 with:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  v14 = sub_1000B25B8(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);

  return v14;
}

- (void)saveConfigurationData:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v17 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  _Block_copy(v8);
  sub_1000B280C(v11, v13, v14, v16, v17, v8);
  _Block_release(v8);

  sub_10008E168(v11, v13);
}

- (void)saveConfigurationAssetData:(id)a3 fileName:(id)a4 forBundleID:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v23 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  _Block_copy(v10);
  sub_1000B34B0(v14, v16, v17, v19, v20, v22, v23, v10);
  _Block_release(v10);

  sub_10008E168(v14, v16);
}

- (id)_testingAppsDataWithError:(id *)a3
{
  v3 = self;
  v4 = sub_1000B4D08();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v4, v6);

  return v7.super.isa;
}

- (void)sendPurchaseIntentForProductIdentifier:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = self;
  StoreKitTestingService.sendPurchaseIntent(for:bundleID:completion:)(v7, v9, v10, v12, sub_1000B6728, v13);
}

@end