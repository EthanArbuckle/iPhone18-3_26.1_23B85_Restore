@interface InAppTransactionTask
- (BOOL)shouldInstallParentAppWithBuyParams:(id)params;
- (InAppTransactionTask)initWithBuyParams:(id)params client:(id)client apiVersion:(int64_t)version;
- (InAppTransactionTask)initWithProductIdentifier:(id)identifier quantity:(unint64_t)quantity client:(id)client apiVersion:(int64_t)version;
- (id)_generateMetricsOverlay;
- (id)_generateMetricsOverlayWithMetricsStore:(id)store identifierKeys:(id)keys includeAccountMatchStatus:(BOOL)status;
- (id)_processPurchaseResult:(id)result authorizationResult:(id)authorizationResult;
- (void)_cacheLegacyTransaction;
- (void)_latestTransactionWithCompletion:(id)completion;
- (void)_performWithAccount:(id)account originatingStorefront:(id)storefront buyParams:(id)params;
- (void)buyParams:(BOOL)params completionHandler:(id)handler;
- (void)clearTransactionCache;
- (void)main;
- (void)purchaseIntakeWithTransactionID:(id)d metrics:(id)metrics;
@end

@implementation InAppTransactionTask

- (InAppTransactionTask)initWithBuyParams:(id)params client:(id)client apiVersion:(int64_t)version
{
  paramsCopy = params;
  clientCopy = client;
  v10 = [paramsCopy parameterForKey:@"offerName"];
  v11 = [paramsCopy parameterForKey:@"quantity"];
  integerValue = [v11 integerValue];

  v13 = [(InAppTransactionTask *)self initWithProductIdentifier:v10 quantity:integerValue client:clientCopy apiVersion:version];
  if (v13)
  {
    dictionary = [paramsCopy dictionary];
    v15 = *(&v13->_quantity + 2);
    *(&v13->_quantity + 2) = dictionary;

    *(&v13->super._finished + 1) = 0;
  }

  return v13;
}

- (InAppTransactionTask)initWithProductIdentifier:(id)identifier quantity:(unint64_t)quantity client:(id)client apiVersion:(int64_t)version
{
  identifierCopy = identifier;
  clientCopy = client;
  v20.receiver = self;
  v20.super_class = InAppTransactionTask;
  v13 = [(Task *)&v20 init];
  v14 = v13;
  if (v13)
  {
    *(v13 + 66) = version;
    objc_storeStrong((v13 + 74), client);
    v15 = [NSUUID lib_shortLogKeyWithAPIVersion:version];
    v16 = *(v14 + 82);
    *(v14 + 82) = v15;

    v17 = objc_alloc_init(NSUUID);
    v18 = *(v14 + 90);
    *(v14 + 90) = v17;

    v14[62] = 1;
    objc_storeStrong((v14 + 98), identifier);
    *(v14 + 106) = quantity;
    v14[65] = 0;
    v14[58] = 0;
    v14[42] = 1;
  }

  return v14;
}

- (void)main
{
  if (qword_1003D3CD0 != -1)
  {
    sub_1002C80A8();
  }

  v3 = qword_1003D3CA0;
  if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    logKey = [(InAppTransactionTask *)self logKey];
    *buf = 138543618;
    v10 = logKey;
    v11 = 2114;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Started task", buf, 0x16u);
  }

  client = [(InAppTransactionTask *)self client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A15C;
  v8[3] = &unk_100380498;
  v8[4] = self;
  [_TtC9storekitd22objc_StoreFrontManager storefrontIdentifierForClient:client completionHandler:v8];
}

- (void)_performWithAccount:(id)account originatingStorefront:(id)storefront buyParams:(id)params
{
  accountCopy = account;
  storefrontCopy = storefront;
  paramsCopy = params;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001A5EC;
  v15[3] = &unk_100380510;
  v15[4] = self;
  v16 = accountCopy;
  v17 = storefrontCopy;
  v18 = paramsCopy;
  v12 = paramsCopy;
  v13 = storefrontCopy;
  v14 = accountCopy;
  dispatch_async(v11, v15);
}

- (void)clearTransactionCache
{
  v2 = [ReceiptManager managerForClient:*(&self->_apiVersion + 2)];
  [v2 invalidateLegacyTransactionCache];
}

- (id)_processPurchaseResult:(id)result authorizationResult:(id)authorizationResult
{
  resultCopy = result;
  authorizationResultCopy = authorizationResult;
  responseDictionary = [resultCopy responseDictionary];
  v9 = *(&self->_transaction + 2);
  *(&self->_transaction + 2) = responseDictionary;

  correlationID = [resultCopy correlationID];
  v11 = *(&self->_response + 2);
  *(&self->_response + 2) = correlationID;

  error = [resultCopy error];

  if (error)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80A8();
    }

    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8210();
    }

    error2 = [resultCopy error];
    goto LABEL_7;
  }

  if ([*(&self->_transaction + 2) tcr_BOOLForKey:@"trigger-download"])
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80A8();
    }

    v15 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      logKey = [(InAppTransactionTask *)self logKey];
      *buf = 138543362;
      selfCopy2 = logKey;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Payment had a trigger queue check.", buf, 0xCu);
    }

    v18 = +[ASDPurchaseManager sharedManager];
    [v18 checkPendingQueue];
  }

  if (authorizationResultCopy)
  {
    error3 = [authorizationResultCopy error];

    if (error3)
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80BC();
      }

      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
      {
        sub_1002C82B8();
      }

      error4 = [authorizationResultCopy error];
      domain = [error4 domain];
      if ([domain isEqualToString:AKAppleIDAuthenticationErrorDomain])
      {
        error5 = [authorizationResultCopy error];
        code = [error5 code];

        if (code == -7003)
        {
          error2 = ASDErrorWithDescription();
LABEL_7:
          v14 = error2;
          goto LABEL_75;
        }
      }

      else
      {
      }
    }
  }

  responseDictionary2 = [resultCopy responseDictionary];
  client = [(InAppTransactionTask *)self client];
  receiptInstallURL = [(InAppTransactionTask *)self receiptInstallURL];
  apiVersion = [(InAppTransactionTask *)self apiVersion];
  logKey2 = [(InAppTransactionTask *)self logKey];
  v29 = sub_100027E30(responseDictionary2, client, receiptInstallURL, apiVersion, logKey2, 1u, self->_excludeReceiptFromRequest);

  if (![v29 count])
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v42 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8698(v42);
    }

    v14 = ASDErrorWithDescription();
    goto LABEL_74;
  }

  if ([v29 count] >= 2)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v30 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      logKey3 = [(InAppTransactionTask *)self logKey];
      *buf = 138543618;
      selfCopy2 = logKey3;
      v69 = 2112;
      v70 = v29;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Payment received more than one transaction: %@ Using only the first.", buf, 0x16u);
    }
  }

  if (authorizationResultCopy)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v33 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      logKey4 = [(InAppTransactionTask *)self logKey];
      *buf = 138543618;
      selfCopy2 = self;
      v69 = 2114;
      v70 = logKey4;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Processing auth result.", buf, 0x16u);
    }

    v36 = [NSMutableDictionary alloc];
    firstObject = [v29 firstObject];
    v38 = [v36 initWithDictionary:firstObject];

    error6 = [authorizationResultCopy error];

    if (error6)
    {
      error7 = [authorizationResultCopy error];
      v41 = ASDErrorWithSafeUserInfo();
      [v38 setObject:v41 forKeyedSubscript:off_1003CAF10];

LABEL_63:
      v55 = [v38 copy];
      v56 = *(&self->_receiptInstallURL + 2);
      *(&self->_receiptInstallURL + 2) = v55;

      goto LABEL_64;
    }

    authorizationCredential = [authorizationResultCopy authorizationCredential];

    if (authorizationCredential)
    {
      authorizationCredential2 = [authorizationResultCopy authorizationCredential];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        error7 = [authorizationResultCopy authorizationCredential];
        v66 = 0;
        v49 = [NSKeyedArchiver archivedDataWithRootObject:error7 requiringSecureCoding:1 error:&v66];
        v50 = v66;
        v51 = sub_10001A118();
        v52 = v51;
        if (v50 || !v49)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_1002C83F8();
          }

          v64 = ASDErrorWithSafeUserInfo();
          [v38 setObject:v64 forKeyedSubscript:off_1003CAF10];
        }

        else
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            logKey5 = [(InAppTransactionTask *)self logKey];
            *buf = 138543618;
            selfCopy2 = self;
            v69 = 2114;
            v70 = logKey5;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Received credential", buf, 0x16u);
          }

          [v38 setObject:v49 forKeyedSubscript:off_1003CAF10];
        }

        goto LABEL_63;
      }

      v54 = sub_10001A118();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1002C8360(self);
      }
    }

    else
    {
      v54 = sub_10001A118();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1002C84A0(self);
      }
    }

LABEL_62:
    error7 = ASDErrorWithTitleAndMessage();
    [v38 setObject:error7 forKeyedSubscript:off_1003CAF10];
    goto LABEL_63;
  }

  if (*(&self->_dialogContext + 2))
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v43 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8538(self, v43);
    }

    v44 = [NSMutableDictionary alloc];
    firstObject2 = [v29 firstObject];
    v38 = [v44 initWithDictionary:firstObject2];

    goto LABEL_62;
  }

  firstObject3 = [v29 firstObject];
  v38 = *(&self->_receiptInstallURL + 2);
  *(&self->_receiptInstallURL + 2) = firstObject3;
LABEL_64:

  transaction = [(InAppTransactionTask *)self transaction];

  if (transaction)
  {
    transaction2 = [(InAppTransactionTask *)self transaction];
    v59 = [transaction2 tcr_stringForKey:@"tid"];

    v60 = [responseDictionary2 objectForKeyedSubscript:@"metrics"];
    v61 = v60;
    if (v59 && v60)
    {
      [(InAppTransactionTask *)self purchaseIntakeWithTransactionID:v59 metrics:v60];
    }

    else
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80BC();
      }

      v62 = qword_1003D3CA0;
      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_FAULT))
      {
        sub_1002C85E8(self, v62);
      }
    }

    [(InAppTransactionTask *)self _cacheLegacyTransaction];
  }

  v14 = 0;
LABEL_74:

LABEL_75:

  return v14;
}

- (void)_cacheLegacyTransaction
{
  v3 = [LegacyTransactionDatabaseStore alloc];
  v4 = +[Environment sharedInstance];
  userDatabase = [v4 userDatabase];
  v6 = [(SQLiteDatabaseStore *)v3 initWithDatabase:userDatabase];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10001C848;
  v16 = sub_10001C858;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001C860;
  v11[3] = &unk_100380538;
  v11[4] = self;
  v11[5] = &v12;
  [(SQLiteDatabaseStore *)v6 readUsingSession:v11];
  v7 = v13[5];
  client = [(InAppTransactionTask *)self client];
  currentAccountToken = [client currentAccountToken];
  LODWORD(v7) = [v7 isEqualToString:currentAccountToken];

  if (v7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001C8FC;
    v10[3] = &unk_100380560;
    v10[4] = self;
    [(SQLiteDatabaseStore *)v6 modifyUsingTransaction:v10];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_latestTransactionWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(InAppTransactionTask *)self client];
  v6 = [ReceiptManager managerForClient:client];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10001C848;
  v16[4] = sub_10001C858;
  v17 = 0;
  productIdentifier = [(InAppTransactionTask *)self productIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001CBBC;
  v15[3] = &unk_100380588;
  v15[4] = v16;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CBF4;
  v10[3] = &unk_100380600;
  v14 = v16;
  v8 = completionCopy;
  v13 = v8;
  v9 = v6;
  v11 = v9;
  selfCopy = self;
  [v9 enumerateReceiptsForProductID:productIdentifier skipTransactionSync:0 usingBlock:v15 completionHandler:v10];

  _Block_object_dispose(v16, 8);
}

- (id)_generateMetricsOverlay
{
  v3 = objc_alloc_init(NSMutableDictionary);
  client = [(InAppTransactionTask *)self client];
  v5 = [client bag];
  v6 = +[_TtC9storekitd6BagKey purchaseMetricsSuppressionList];
  v7 = [v5 arrayForKey:v6];
  v8 = [v7 valueWithError:0];

  if (v8)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          client2 = [(InAppTransactionTask *)self client];
          requestBundleID = [client2 requestBundleID];
          v17 = [requestBundleID caseInsensitiveCompare:v14];

          if (!v17)
          {

            v3 = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v11);
    }
  }

  if (v3)
  {
    v40 = v8;
    client3 = [(InAppTransactionTask *)self client];
    account = [client3 account];
    client4 = [(InAppTransactionTask *)self client];
    v21 = [client4 bag];
    v22 = [AMSMetricsIdentifierStore identifierStoreWithAccount:account bagNamespace:@"APPSTORE_PAYMENTS_ENGAGEMENT" bag:v21];

    v38 = [AMSMetricsIdentifierKey keyWithName:@"userId" crossDeviceSync:1];
    v47 = v38;
    v23 = [NSArray arrayWithObjects:&v47 count:1];
    v39 = v22;
    v24 = [(InAppTransactionTask *)self _generateMetricsOverlayWithMetricsStore:v22 identifierKeys:v23 includeAccountMatchStatus:1];

    client5 = [(InAppTransactionTask *)self client];
    account2 = [client5 account];
    client6 = [(InAppTransactionTask *)self client];
    v28 = [client6 bag];
    v29 = [AMSMetricsIdentifierStore identifierStoreWithAccount:account2 bagNamespace:@"APPSTORE_PAYMENTS_ENGAGEMENT_CLIENT" bag:v28];

    v30 = [AMSMetricsIdentifierKey keyWithName:@"clientId" crossDeviceSync:0];
    v46 = v30;
    v31 = [NSArray arrayWithObjects:&v46 count:1];
    v32 = [(InAppTransactionTask *)self _generateMetricsOverlayWithMetricsStore:v29 identifierKeys:v31 includeAccountMatchStatus:0];

    [v3 addEntriesFromDictionary:v24];
    [v3 addEntriesFromDictionary:&off_1003A1340];
    [v3 addEntriesFromDictionary:v32];
    metricsOverlayData = [(InAppTransactionTask *)self metricsOverlayData];

    if (metricsOverlayData)
    {
      metricsOverlayData2 = [(InAppTransactionTask *)self metricsOverlayData];
      v41 = 0;
      v35 = [NSJSONSerialization JSONObjectWithData:metricsOverlayData2 options:0 error:&v41];
      v36 = v41;

      if (v35)
      {
        [v3 addEntriesFromDictionary:v35];
      }

      else
      {
        if (qword_1003D3CD0 != -1)
        {
          sub_1002C80BC();
        }

        if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
        {
          sub_1002C89AC();
        }
      }
    }

    v8 = v40;
  }

  return v3;
}

- (id)_generateMetricsOverlayWithMetricsStore:(id)store identifierKeys:(id)keys includeAccountMatchStatus:(BOOL)status
{
  statusCopy = status;
  storeCopy = store;
  keysCopy = keys;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001C848;
  v25 = sub_10001C858;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D738;
  v18[3] = &unk_100380628;
  v18[4] = self;
  v20 = &v21;
  v10 = dispatch_semaphore_create(0);
  v19 = v10;
  [storeCopy resultWithCompletion:v18];
  v11 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v12 = qword_1003D3CA0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      objc_opt_class();
      sub_1002C8A44();
    }
  }

  v13 = v22[5];
  if (v13)
  {
    if (statusCopy)
    {
      [v13 setIncludeAccountMatchStatus:1];
      v13 = v22[5];
    }

    v14 = [v13 generateEventFieldsForKeys:keysCopy];
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v15 = qword_1003D3CA0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      sub_1002C8A9C(v16, v14, v27, v15);
    }
  }

  else
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v15 = qword_1003D3CA0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      objc_opt_class();
      sub_1002C8B14();
    }

    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (BOOL)shouldInstallParentAppWithBuyParams:(id)params
{
  paramsCopy = params;
  selfCopy = self;
  v6 = sub_1000F3D58(paramsCopy);

  return v6 & 1;
}

- (void)buyParams:(BOOL)params completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = params;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  selfCopy = self;

  sub_100224DF8(&unk_1002F0C08, v7);
}

- (void)purchaseIntakeWithTransactionID:(id)d metrics:(id)metrics
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000FFD24(v5, v7, v8);
}

@end