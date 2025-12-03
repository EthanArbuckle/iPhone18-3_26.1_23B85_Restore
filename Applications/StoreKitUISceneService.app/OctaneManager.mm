@interface OctaneManager
+ (BOOL)saveConfigurationAssetData:(id)data name:(id)name withContext:(id)context error:(id *)error;
+ (BOOL)saveConfigurationData:(id)data withContext:(id)context error:(id *)error;
+ (id)configurationDataForBundleID:(id)d error:(id *)error;
+ (id)configurationDirectoryForBundleID:(id)d mustExist:(BOOL)exist;
+ (id)sharedInstance;
+ (id)simulatedStoreKitErrorFor:(int64_t)for client:(id)client;
+ (void)deleteConfigurationForContext:(id)context;
- (BOOL)dialogsDisabledForBundleID:(id)d;
- (BOOL)getBoolValueForIdentifier:(unint64_t)identifier withContext:(id)context;
- (OctaneManager)init;
- (id)_appNameForContext:(id)context;
- (id)buyProductWithID:(id)d withContext:(id)context;
- (id)changeAutoRenewStatus:(BOOL)status withContext:(id)context;
- (id)clearOverridesWithContext:(id)context;
- (id)completeAskToBuyRequestWithResponse:(BOOL)response withContext:(id)context;
- (id)deleteAllTransactionsWithContext:(id)context;
- (id)expireOrRenewSubscriptionWithIdentifier:(id)identifier expire:(BOOL)expire withContext:(id)context;
- (id)generateSKANPostbackSignature:(id)signature withContext:(id)context;
- (id)getStorefrontWithContext:(id)context;
- (id)getStringValueForIdentifier:(unint64_t)identifier withContext:(id)context;
- (id)getTransactionDataWithContext:(id)context;
- (id)messageForBundleID:(id)d;
- (id)messageOfTypeForBundleID:(id)d messageReason:(id)reason;
- (id)performAction:(int64_t)action withContext:(id)context;
- (id)registerForEventOfType:(int64_t)type filterData:(id)data;
- (id)setIntegerValue:(int64_t)value forIdentifier:(unint64_t)identifier withContext:(id)context;
- (id)setStorefront:(id)storefront withContext:(id)context;
- (id)setStringValue:(id)value forIdentifier:(unint64_t)identifier withContext:(id)context;
- (id)validateSKAdNetworkSignature:(id)signature withPublicKey:(id)key source:(int64_t)source andParameters:(id)parameters withContext:(id)context;
- (int64_t)activePort;
- (int64_t)getIntegerValueForIdentifier:(unint64_t)identifier withContext:(id)context;
- (int64_t)storeKitErrorForCategory:(int64_t)category bundleID:(id)d;
- (void)_refreshReceiptForBundleID:(id)d logKey:(id)key;
- (void)buyProductWithConfiguration:(id)configuration withContext:(id)context withReply:(id)reply;
- (void)deleteDataWithContext:(id)context;
- (void)dialogsDisabledForBundleID:(id)d completion:(id)completion;
- (void)portUpdated:(int64_t)updated;
- (void)restartServerIfNecessary;
- (void)setStoreKitError:(int64_t)error forCategory:(int64_t)category bundleID:(id)d;
- (void)unregisterForEventWithIdentifier:(id)identifier;
- (void)useConfigurationDirectory:(id)directory forBundleID:(id)d;
@end

@implementation OctaneManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002140;
  block[3] = &unk_1000BDEA0;
  block[4] = self;
  if (qword_1000D5298 != -1)
  {
    dispatch_once(&qword_1000D5298, block);
  }

  v2 = qword_1000D5290;

  return v2;
}

- (OctaneManager)init
{
  v8.receiver = self;
  v8.super_class = OctaneManager;
  v2 = [(OctaneManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedPort = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.storekit.xcodetest.dispatch", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;
  }

  return v3;
}

- (int64_t)activePort
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000022BC;
  v5[3] = &unk_1000BDEC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)buyProductWithConfiguration:(id)configuration withContext:(id)context withReply:(id)reply
{
  replyCopy = reply;
  configurationCopy = configuration;
  v8 = +[ASOctaneServer shared];
  [v8 buyProductWithConfiguration:configurationCopy withReply:replyCopy];
}

- (id)buyProductWithID:(id)d withContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000025E4;
  v25 = sub_1000025F4;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025FC;
  block[3] = &unk_1000BDEF0;
  v20 = &v21;
  v9 = dCopy;
  v18 = v9;
  v10 = contextCopy;
  v19 = v10;
  dispatch_sync(dispatchQueue, block);
  v11 = v22[5];
  if (v11)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v12 = qword_1000D52D8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      logKey = [v10 logKey];
      v16 = v22[5];
      *buf = 138543874;
      v28 = logKey;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to buy the product with ID %{public}@: %{public}@", buf, 0x20u);
    }

    v11 = v22[5];
  }

  v13 = v11;

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)changeAutoRenewStatus:(BOOL)status withContext:(id)context
{
  statusCopy = status;
  contextCopy = context;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000025E4;
  v24 = sub_1000025F4;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_1000BDF18;
  v18 = &v20;
  v19 = statusCopy;
  v8 = contextCopy;
  v17 = v8;
  dispatch_sync(dispatchQueue, block);
  v9 = v21[5];
  if (v9)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v10 = qword_1000D52D8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      logKey = [v8 logKey];
      transactionID = [v8 transactionID];
      v15 = v21[5];
      *buf = 138544130;
      v27 = logKey;
      v28 = 2048;
      v29 = transactionID;
      v30 = 1024;
      v31 = statusCopy;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to change the auto-renew status of %lu to %d: %{public}@", buf, 0x26u);
    }

    v9 = v21[5];
  }

  v11 = v9;

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (id)clearOverridesWithContext:(id)context
{
  contextCopy = context;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000025E4;
  v24 = sub_1000025F4;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100002B8C;
  v17 = &unk_1000BDF40;
  v19 = &v20;
  v6 = contextCopy;
  v18 = v6;
  dispatch_sync(dispatchQueue, &v14);
  v7 = v21[5];
  if (v7)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v8 = qword_1000D52D8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      logKey = [v6 logKey];
      bundleID = [v6 bundleID];
      v13 = v21[5];
      *buf = 138543874;
      v27 = logKey;
      v28 = 2114;
      v29 = bundleID;
      v30 = 2114;
      v31 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to clear overrides for %{public}@: %{public}@", buf, 0x20u);
    }

    v7 = v21[5];
  }

  v9 = v7;

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)completeAskToBuyRequestWithResponse:(BOOL)response withContext:(id)context
{
  contextCopy = context;
  v5 = [NSError alloc];
  v6 = [v5 initWithDomain:ASDErrorDomain code:951 userInfo:0];
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v7 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_ERROR))
  {
    sub_10008DCD0(v7, contextCopy);
  }

  return v6;
}

- (id)deleteAllTransactionsWithContext:(id)context
{
  contextCopy = context;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = sub_1000025E4;
  v19[3] = sub_1000025F4;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100002E84;
  v15 = &unk_1000BDF40;
  v17 = &v18;
  v6 = contextCopy;
  v16 = v6;
  dispatch_sync(dispatchQueue, &v12);
  v7 = *(v19[0] + 40);
  if (v7)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v8 = qword_1000D52D8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      logKey = [v6 logKey];
      sub_10008DD78(logKey, v19);
    }

    v7 = *(v19[0] + 40);
  }

  v10 = v7;

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (void)deleteDataWithContext:(id)context
{
  contextCopy = context;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002FA4;
  block[3] = &unk_1000BDF68;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)dialogsDisabledForBundleID:(id)d
{
  v4 = [OctaneActionContext contextWithBundleID:d];
  LOBYTE(self) = [(OctaneManager *)self getBoolValueForIdentifier:2 withContext:v4];

  return self;
}

- (void)dialogsDisabledForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[ASOctaneServer shared];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000030D8;
  v9[3] = &unk_1000BDF90;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 getIntegerValueForIdentifier:2 forBundleID:dCopy completion:v9];
}

- (id)expireOrRenewSubscriptionWithIdentifier:(id)identifier expire:(BOOL)expire withContext:(id)context
{
  expireCopy = expire;
  identifierCopy = identifier;
  contextCopy = context;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000025E4;
  v33 = sub_1000025F4;
  v34 = 0;
  dispatchQueue = self->_dispatchQueue;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100003398;
  v24 = &unk_1000BDFB8;
  v27 = &v29;
  v11 = identifierCopy;
  v25 = v11;
  v28 = expireCopy;
  v12 = contextCopy;
  v26 = v12;
  dispatch_sync(dispatchQueue, &v21);
  if (v30[5])
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    bundleID = qword_1000D52D8;
    if (os_log_type_enabled(bundleID, OS_LOG_TYPE_ERROR))
    {
      logKey = [v12 logKey];
      v15 = logKey;
      v16 = @"force renew";
      v17 = v30[5];
      if (expireCopy)
      {
        v16 = @"expire";
      }

      *buf = 138544130;
      v36 = logKey;
      v37 = 2114;
      v38 = v16;
      v39 = 2114;
      v40 = v11;
      v41 = 2114;
      v42 = v17;
      _os_log_error_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to %{public}@ subscription with identifier %{public}@: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    bundleID = [v12 bundleID];
    logKey2 = [v12 logKey];
    [(OctaneManager *)self _refreshReceiptForBundleID:bundleID logKey:logKey2];
  }

  v19 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v19;
}

- (id)getStorefrontWithContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000025E4;
  v16 = sub_1000025F4;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003540;
  v9[3] = &unk_1000BDF40;
  v10 = contextCopy;
  v11 = &v12;
  v6 = contextCopy;
  dispatch_sync(dispatchQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getTransactionDataWithContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000025E4;
  v16 = sub_1000025F4;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000036D4;
  v9[3] = &unk_1000BDF40;
  v10 = contextCopy;
  v11 = &v12;
  v6 = contextCopy;
  dispatch_sync(dispatchQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)messageForBundleID:(id)d
{
  dCopy = d;
  v4 = +[ASOctaneServer shared];
  v5 = [v4 messageForBundleID:dCopy];

  return v5;
}

- (id)messageOfTypeForBundleID:(id)d messageReason:(id)reason
{
  reasonCopy = reason;
  dCopy = d;
  v7 = +[ASOctaneServer shared];
  v8 = [v7 messageOfTypeForBundleID:dCopy messageReason:reasonCopy];

  return v8;
}

- (id)performAction:(int64_t)action withContext:(id)context
{
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000025E4;
  v25 = sub_1000025F4;
  v26 = 0;
  if (qword_1000D52E8 != -1)
  {
    sub_10008DC94();
  }

  v7 = qword_1000D52D8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [contextCopy logKey];
    transactionID = [contextCopy transactionID];
    *buf = 138543874;
    v28 = logKey;
    v29 = 2048;
    actionCopy = action;
    v31 = 2050;
    v32 = transactionID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asked to perform action %ld on %{public}ld", buf, 0x20u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003AB8;
  block[3] = &unk_1000BDFE0;
  v19 = &v21;
  actionCopy2 = action;
  v11 = contextCopy;
  v18 = v11;
  dispatch_sync(dispatchQueue, block);
  v12 = v22[5];
  if ((action & 0xFFFFFFFFFFFFFFFBLL) != 0 && !v12)
  {
    bundleID = [v11 bundleID];
    logKey2 = [v11 logKey];
    [(OctaneManager *)self _refreshReceiptForBundleID:bundleID logKey:logKey2];

    v12 = v22[5];
  }

  v15 = v12;

  _Block_object_dispose(&v21, 8);

  return v15;
}

- (void)portUpdated:(int64_t)updated
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003FB0;
  v4[3] = &unk_1000BE008;
  v4[4] = self;
  v4[5] = updated;
  dispatch_sync(dispatchQueue, v4);
}

- (void)restartServerIfNecessary
{
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v2 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_ERROR))
  {
    sub_10008DEA4(v2);
  }
}

- (id)setStorefront:(id)storefront withContext:(id)context
{
  storefrontCopy = storefront;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000025E4;
  v25 = sub_1000025F4;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000425C;
  block[3] = &unk_1000BDEF0;
  v20 = &v21;
  v9 = storefrontCopy;
  v18 = v9;
  v10 = contextCopy;
  v19 = v10;
  dispatch_sync(dispatchQueue, block);
  v11 = v22[5];
  if (v11)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v12 = qword_1000D52D8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      logKey = [v10 logKey];
      v16 = v22[5];
      *buf = 138543874;
      v28 = logKey;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to set storefront to %{public}@: %{public}@", buf, 0x20u);
    }

    v11 = v22[5];
  }

  v13 = v11;

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)registerForEventOfType:(int64_t)type filterData:(id)data
{
  dataCopy = data;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000025E4;
  v19 = sub_1000025F4;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004404;
  block[3] = &unk_1000BDFE0;
  v13 = &v15;
  typeCopy = type;
  v12 = dataCopy;
  v8 = dataCopy;
  dispatch_sync(dispatchQueue, block);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)unregisterForEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004510;
  block[3] = &unk_1000BDF68;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(dispatchQueue, block);
}

- (void)useConfigurationDirectory:(id)directory forBundleID:(id)d
{
  directoryCopy = directory;
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004628;
  v11[3] = &unk_1000BE030;
  v12 = directoryCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = directoryCopy;
  dispatch_sync(dispatchQueue, v11);
}

- (id)generateSKANPostbackSignature:(id)signature withContext:(id)context
{
  signatureCopy = signature;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000025E4;
  v25 = sub_1000025F4;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100004854;
  v18 = &unk_1000BDF40;
  v20 = &v21;
  v9 = signatureCopy;
  v19 = v9;
  dispatch_sync(dispatchQueue, &v15);
  v10 = v22[5];
  if (!v10)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v11 = qword_1000D52D8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      logKey = [contextCopy logKey];
      sub_10008DEE8(logKey, buf, v11);
    }

    v10 = v22[5];
  }

  v13 = v10;

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)validateSKAdNetworkSignature:(id)signature withPublicKey:(id)key source:(int64_t)source andParameters:(id)parameters withContext:(id)context
{
  signatureCopy = signature;
  keyCopy = key;
  parametersCopy = parameters;
  contextCopy = context;
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x3032000000;
  v37[2] = sub_1000025E4;
  v37[3] = sub_1000025F4;
  v38 = 0;
  dispatchQueue = self->_dispatchQueue;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100004B10;
  v29 = &unk_1000BE058;
  v34 = &v36;
  v17 = signatureCopy;
  v30 = v17;
  v18 = keyCopy;
  v31 = v18;
  sourceCopy = source;
  v19 = parametersCopy;
  v32 = v19;
  v20 = contextCopy;
  v33 = v20;
  dispatch_sync(dispatchQueue, &v26);
  v21 = *(v37[0] + 40);
  if (v21)
  {
    if (qword_1000D52E8 != -1)
    {
      sub_10008DC94();
    }

    v22 = qword_1000D52D8;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      logKey = [v20 logKey];
      sub_10008DF40(logKey, v37);
    }

    v21 = *(v37[0] + 40);
  }

  v24 = v21;

  _Block_object_dispose(&v36, 8);

  return v24;
}

- (int64_t)storeKitErrorForCategory:(int64_t)category bundleID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004C90;
  block[3] = &unk_1000BDFE0;
  v13 = &v15;
  categoryCopy = category;
  v12 = dCopy;
  v8 = dCopy;
  dispatch_sync(dispatchQueue, block);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (void)setStoreKitError:(int64_t)error forCategory:(int64_t)category bundleID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004DA4;
  block[3] = &unk_1000BE080;
  errorCopy = error;
  categoryCopy = category;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)getBoolValueForIdentifier:(unint64_t)identifier withContext:(id)context
{
  v4 = [(OctaneManager *)self getIntegerValueForIdentifier:identifier withContext:context];
  if (v4)
  {
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (int64_t)getIntegerValueForIdentifier:(unint64_t)identifier withContext:(id)context
{
  contextCopy = context;
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v7 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    logKey = [contextCopy logKey];
    *buf = 138543618;
    *&buf[4] = logKey;
    *&buf[12] = 2048;
    *&buf[14] = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested value for identifier %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004FD4;
  block[3] = &unk_1000BDFE0;
  v16 = buf;
  identifierCopy = identifier;
  v15 = contextCopy;
  v11 = contextCopy;
  dispatch_sync(dispatchQueue, block);
  v12 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v12;
}

- (id)setIntegerValue:(int64_t)value forIdentifier:(unint64_t)identifier withContext:(id)context
{
  contextCopy = context;
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v9 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    logKey = [contextCopy logKey];
    *buf = 138543874;
    *&buf[4] = logKey;
    *&buf[12] = 2048;
    *&buf[14] = value;
    *&buf[22] = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested to set value %ld for identifier %ld", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  identifierCopy = sub_1000025E4;
  v23 = sub_1000025F4;
  v24 = 0;
  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100005250;
  v16[3] = &unk_1000BE0A8;
  valueCopy = value;
  identifierCopy2 = identifier;
  v17 = contextCopy;
  v18 = buf;
  v13 = contextCopy;
  dispatch_sync(dispatchQueue, v16);
  v14 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v14;
}

- (id)getStringValueForIdentifier:(unint64_t)identifier withContext:(id)context
{
  contextCopy = context;
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v7 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    logKey = [contextCopy logKey];
    *buf = 138543618;
    *&buf[4] = logKey;
    *&buf[12] = 2048;
    *&buf[14] = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested value for identifier %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = sub_1000025E4;
  v20 = sub_1000025F4;
  v21 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055C0;
  block[3] = &unk_1000BDFE0;
  v16 = buf;
  identifierCopy = identifier;
  v15 = contextCopy;
  v11 = contextCopy;
  dispatch_sync(dispatchQueue, block);
  v12 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)setStringValue:(id)value forIdentifier:(unint64_t)identifier withContext:(id)context
{
  valueCopy = value;
  contextCopy = context;
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v10 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    logKey = [contextCopy logKey];
    *buf = 138543874;
    *&buf[4] = logKey;
    *&buf[12] = 2048;
    *&buf[14] = valueCopy;
    *&buf[22] = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested to set value %ld for identifier %ld", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  identifierCopy = sub_1000025E4;
  v25 = sub_1000025F4;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005864;
  v18[3] = &unk_1000BE0D0;
  v21 = buf;
  identifierCopy2 = identifier;
  v19 = valueCopy;
  v20 = contextCopy;
  v14 = contextCopy;
  v15 = valueCopy;
  dispatch_sync(dispatchQueue, v18);
  v16 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v16;
}

- (id)_appNameForContext:(id)context
{
  bundleID = [context bundleID];
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:bundleID allowPlaceholder:0 error:0];

  localizedName = [v4 localizedName];

  return localizedName;
}

- (void)_refreshReceiptForBundleID:(id)d logKey:(id)key
{
  dCopy = d;
  keyCopy = key;
  if (qword_1000D52E8 != -1)
  {
    sub_10008DCBC();
  }

  v7 = qword_1000D52D8;
  if (os_log_type_enabled(qword_1000D52D8, OS_LOG_TYPE_ERROR))
  {
    sub_10008DF90(keyCopy, v7);
  }
}

+ (id)configurationDirectoryForBundleID:(id)d mustExist:(BOOL)exist
{
  existCopy = exist;
  v5 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100034210(v9, v10, existCopy, v8);

  v11 = type metadata accessor for URL();
  v13 = 0;
  if (sub_100012898(v8, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  return v13;
}

+ (BOOL)saveConfigurationData:(id)data withContext:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  swift_getObjCClassMetadata();
  sub_100034AF4(v8, v10, contextCopy);

  sub_100018DF0(v8, v10);
  return 1;
}

+ (BOOL)saveConfigurationAssetData:(id)data name:(id)name withContext:(id)context error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  contextCopy = context;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  swift_getObjCClassMetadata();
  sub_100035D78(v11, v13, v14, v16, contextCopy);

  sub_100018DF0(v11, v13);
  return 1;
}

+ (void)deleteConfigurationForContext:(id)context
{
  contextCopy = context;
  sub_1000366E0(contextCopy);
}

+ (id)configurationDataForBundleID:(id)d error:(id *)error
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_100037018(v4, v5);
  v8 = v7;

  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100018DF0(v6, v8);

  return v9.super.isa;
}

+ (id)simulatedStoreKitErrorFor:(int64_t)for client:(id)client
{
  clientCopy = client;
  v6 = sub_1000377D4(for, clientCopy);

  return v6;
}

@end