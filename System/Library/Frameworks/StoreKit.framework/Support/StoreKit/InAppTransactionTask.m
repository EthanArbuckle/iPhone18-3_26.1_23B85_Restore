@interface InAppTransactionTask
- (BOOL)shouldInstallParentAppWithBuyParams:(id)a3;
- (InAppTransactionTask)initWithBuyParams:(id)a3 client:(id)a4 apiVersion:(int64_t)a5;
- (InAppTransactionTask)initWithProductIdentifier:(id)a3 quantity:(unint64_t)a4 client:(id)a5 apiVersion:(int64_t)a6;
- (id)_generateMetricsOverlay;
- (id)_generateMetricsOverlayWithMetricsStore:(id)a3 identifierKeys:(id)a4 includeAccountMatchStatus:(BOOL)a5;
- (id)_processPurchaseResult:(id)a3 authorizationResult:(id)a4;
- (void)_cacheLegacyTransaction;
- (void)_latestTransactionWithCompletion:(id)a3;
- (void)_performWithAccount:(id)a3 originatingStorefront:(id)a4 buyParams:(id)a5;
- (void)buyParams:(BOOL)a3 completionHandler:(id)a4;
- (void)clearTransactionCache;
- (void)main;
- (void)purchaseIntakeWithTransactionID:(id)a3 metrics:(id)a4;
@end

@implementation InAppTransactionTask

- (InAppTransactionTask)initWithBuyParams:(id)a3 client:(id)a4 apiVersion:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 parameterForKey:@"offerName"];
  v11 = [v8 parameterForKey:@"quantity"];
  v12 = [v11 integerValue];

  v13 = [(InAppTransactionTask *)self initWithProductIdentifier:v10 quantity:v12 client:v9 apiVersion:a5];
  if (v13)
  {
    v14 = [v8 dictionary];
    v15 = *(&v13->_quantity + 2);
    *(&v13->_quantity + 2) = v14;

    *(&v13->super._finished + 1) = 0;
  }

  return v13;
}

- (InAppTransactionTask)initWithProductIdentifier:(id)a3 quantity:(unint64_t)a4 client:(id)a5 apiVersion:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = InAppTransactionTask;
  v13 = [(Task *)&v20 init];
  v14 = v13;
  if (v13)
  {
    *(v13 + 66) = a6;
    objc_storeStrong((v13 + 74), a5);
    v15 = [NSUUID lib_shortLogKeyWithAPIVersion:a6];
    v16 = *(v14 + 82);
    *(v14 + 82) = v15;

    v17 = objc_alloc_init(NSUUID);
    v18 = *(v14 + 90);
    *(v14 + 90) = v17;

    v14[62] = 1;
    objc_storeStrong((v14 + 98), a3);
    *(v14 + 106) = a4;
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
    v5 = [(InAppTransactionTask *)self logKey];
    *buf = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Started task", buf, 0x16u);
  }

  v7 = [(InAppTransactionTask *)self client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A15C;
  v8[3] = &unk_100380498;
  v8[4] = self;
  [_TtC9storekitd22objc_StoreFrontManager storefrontIdentifierForClient:v7 completionHandler:v8];
}

- (void)_performWithAccount:(id)a3 originatingStorefront:(id)a4 buyParams:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001A5EC;
  v15[3] = &unk_100380510;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)clearTransactionCache
{
  v2 = [ReceiptManager managerForClient:*(&self->_apiVersion + 2)];
  [v2 invalidateLegacyTransactionCache];
}

- (id)_processPurchaseResult:(id)a3 authorizationResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 responseDictionary];
  v9 = *(&self->_transaction + 2);
  *(&self->_transaction + 2) = v8;

  v10 = [v6 correlationID];
  v11 = *(&self->_response + 2);
  *(&self->_response + 2) = v10;

  v12 = [v6 error];

  if (v12)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80A8();
    }

    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C8210();
    }

    v13 = [v6 error];
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
      v17 = [(InAppTransactionTask *)self logKey];
      *buf = 138543362;
      v68 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Payment had a trigger queue check.", buf, 0xCu);
    }

    v18 = +[ASDPurchaseManager sharedManager];
    [v18 checkPendingQueue];
  }

  if (v7)
  {
    v19 = [v7 error];

    if (v19)
    {
      if (qword_1003D3CD0 != -1)
      {
        sub_1002C80BC();
      }

      if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_ERROR))
      {
        sub_1002C82B8();
      }

      v20 = [v7 error];
      v21 = [v20 domain];
      if ([v21 isEqualToString:AKAppleIDAuthenticationErrorDomain])
      {
        v22 = [v7 error];
        v23 = [v22 code];

        if (v23 == -7003)
        {
          v13 = ASDErrorWithDescription();
LABEL_7:
          v14 = v13;
          goto LABEL_75;
        }
      }

      else
      {
      }
    }
  }

  v24 = [v6 responseDictionary];
  v25 = [(InAppTransactionTask *)self client];
  v26 = [(InAppTransactionTask *)self receiptInstallURL];
  v27 = [(InAppTransactionTask *)self apiVersion];
  v28 = [(InAppTransactionTask *)self logKey];
  v29 = sub_100027E30(v24, v25, v26, v27, v28, 1u, self->_excludeReceiptFromRequest);

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
      v32 = [(InAppTransactionTask *)self logKey];
      *buf = 138543618;
      v68 = v32;
      v69 = 2112;
      v70 = v29;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Payment received more than one transaction: %@ Using only the first.", buf, 0x16u);
    }
  }

  if (v7)
  {
    if (qword_1003D3CD0 != -1)
    {
      sub_1002C80BC();
    }

    v33 = qword_1003D3CA0;
    if (os_log_type_enabled(qword_1003D3CA0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [(InAppTransactionTask *)self logKey];
      *buf = 138543618;
      v68 = self;
      v69 = 2114;
      v70 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Processing auth result.", buf, 0x16u);
    }

    v36 = [NSMutableDictionary alloc];
    v37 = [v29 firstObject];
    v38 = [v36 initWithDictionary:v37];

    v39 = [v7 error];

    if (v39)
    {
      v40 = [v7 error];
      v41 = ASDErrorWithSafeUserInfo();
      [v38 setObject:v41 forKeyedSubscript:off_1003CAF10];

LABEL_63:
      v55 = [v38 copy];
      v56 = *(&self->_receiptInstallURL + 2);
      *(&self->_receiptInstallURL + 2) = v55;

      goto LABEL_64;
    }

    v46 = [v7 authorizationCredential];

    if (v46)
    {
      v47 = [v7 authorizationCredential];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v40 = [v7 authorizationCredential];
        v66 = 0;
        v49 = [NSKeyedArchiver archivedDataWithRootObject:v40 requiringSecureCoding:1 error:&v66];
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
            v65 = [(InAppTransactionTask *)self logKey];
            *buf = 138543618;
            v68 = self;
            v69 = 2114;
            v70 = v65;
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
    v40 = ASDErrorWithTitleAndMessage();
    [v38 setObject:v40 forKeyedSubscript:off_1003CAF10];
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
    v45 = [v29 firstObject];
    v38 = [v44 initWithDictionary:v45];

    goto LABEL_62;
  }

  v53 = [v29 firstObject];
  v38 = *(&self->_receiptInstallURL + 2);
  *(&self->_receiptInstallURL + 2) = v53;
LABEL_64:

  v57 = [(InAppTransactionTask *)self transaction];

  if (v57)
  {
    v58 = [(InAppTransactionTask *)self transaction];
    v59 = [v58 tcr_stringForKey:@"tid"];

    v60 = [v24 objectForKeyedSubscript:@"metrics"];
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
  v5 = [v4 userDatabase];
  v6 = [(SQLiteDatabaseStore *)v3 initWithDatabase:v5];

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
  v8 = [(InAppTransactionTask *)self client];
  v9 = [v8 currentAccountToken];
  LODWORD(v7) = [v7 isEqualToString:v9];

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

- (void)_latestTransactionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(InAppTransactionTask *)self client];
  v6 = [ReceiptManager managerForClient:v5];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10001C848;
  v16[4] = sub_10001C858;
  v17 = 0;
  v7 = [(InAppTransactionTask *)self productIdentifier];
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
  v8 = v4;
  v13 = v8;
  v9 = v6;
  v11 = v9;
  v12 = self;
  [v9 enumerateReceiptsForProductID:v7 skipTransactionSync:0 usingBlock:v15 completionHandler:v10];

  _Block_object_dispose(v16, 8);
}

- (id)_generateMetricsOverlay
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(InAppTransactionTask *)self client];
  v5 = [v4 bag];
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
          v15 = [(InAppTransactionTask *)self client];
          v16 = [v15 requestBundleID];
          v17 = [v16 caseInsensitiveCompare:v14];

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
    v18 = [(InAppTransactionTask *)self client];
    v19 = [v18 account];
    v20 = [(InAppTransactionTask *)self client];
    v21 = [v20 bag];
    v22 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v19 bagNamespace:@"APPSTORE_PAYMENTS_ENGAGEMENT" bag:v21];

    v38 = [AMSMetricsIdentifierKey keyWithName:@"userId" crossDeviceSync:1];
    v47 = v38;
    v23 = [NSArray arrayWithObjects:&v47 count:1];
    v39 = v22;
    v24 = [(InAppTransactionTask *)self _generateMetricsOverlayWithMetricsStore:v22 identifierKeys:v23 includeAccountMatchStatus:1];

    v25 = [(InAppTransactionTask *)self client];
    v26 = [v25 account];
    v27 = [(InAppTransactionTask *)self client];
    v28 = [v27 bag];
    v29 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v26 bagNamespace:@"APPSTORE_PAYMENTS_ENGAGEMENT_CLIENT" bag:v28];

    v30 = [AMSMetricsIdentifierKey keyWithName:@"clientId" crossDeviceSync:0];
    v46 = v30;
    v31 = [NSArray arrayWithObjects:&v46 count:1];
    v32 = [(InAppTransactionTask *)self _generateMetricsOverlayWithMetricsStore:v29 identifierKeys:v31 includeAccountMatchStatus:0];

    [v3 addEntriesFromDictionary:v24];
    [v3 addEntriesFromDictionary:&off_1003A1340];
    [v3 addEntriesFromDictionary:v32];
    v33 = [(InAppTransactionTask *)self metricsOverlayData];

    if (v33)
    {
      v34 = [(InAppTransactionTask *)self metricsOverlayData];
      v41 = 0;
      v35 = [NSJSONSerialization JSONObjectWithData:v34 options:0 error:&v41];
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

- (id)_generateMetricsOverlayWithMetricsStore:(id)a3 identifierKeys:(id)a4 includeAccountMatchStatus:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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
  [v8 resultWithCompletion:v18];
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
    if (v5)
    {
      [v13 setIncludeAccountMatchStatus:1];
      v13 = v22[5];
    }

    v14 = [v13 generateEventFieldsForKeys:v9];
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

- (BOOL)shouldInstallParentAppWithBuyParams:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000F3D58(v4);

  return v6 & 1;
}

- (void)buyParams:(BOOL)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  v8 = self;

  sub_100224DF8(&unk_1002F0C08, v7);
}

- (void)purchaseIntakeWithTransactionID:(id)a3 metrics:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000FFD24(v5, v7, v8);
}

@end