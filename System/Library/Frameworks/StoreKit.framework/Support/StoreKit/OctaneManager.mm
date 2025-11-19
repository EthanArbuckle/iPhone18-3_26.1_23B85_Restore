@interface OctaneManager
+ (BOOL)saveConfigurationAssetData:(id)a3 name:(id)a4 withContext:(id)a5 error:(id *)a6;
+ (BOOL)saveConfigurationData:(id)a3 withContext:(id)a4 error:(id *)a5;
+ (id)configurationDataForBundleID:(id)a3 error:(id *)a4;
+ (id)configurationDirectoryForBundleID:(id)a3 mustExist:(BOOL)a4;
+ (id)sharedInstance;
+ (id)simulatedStoreKitErrorFor:(int64_t)a3 client:(id)a4;
+ (void)deleteConfigurationForContext:(id)a3;
- (BOOL)dialogsDisabledForBundleID:(id)a3;
- (BOOL)getBoolValueForIdentifier:(unint64_t)a3 withContext:(id)a4;
- (OctaneManager)init;
- (id)_appNameForContext:(id)a3;
- (id)buyProductWithID:(id)a3 withContext:(id)a4;
- (id)changeAutoRenewStatus:(BOOL)a3 withContext:(id)a4;
- (id)clearOverridesWithContext:(id)a3;
- (id)completeAskToBuyRequestWithResponse:(BOOL)a3 withContext:(id)a4;
- (id)deleteAllTransactionsWithContext:(id)a3;
- (id)expireOrRenewSubscriptionWithIdentifier:(id)a3 expire:(BOOL)a4 withContext:(id)a5;
- (id)generateSKANPostbackSignature:(id)a3 withContext:(id)a4;
- (id)getStorefrontWithContext:(id)a3;
- (id)getStringValueForIdentifier:(unint64_t)a3 withContext:(id)a4;
- (id)getTransactionDataWithContext:(id)a3;
- (id)messageForBundleID:(id)a3;
- (id)messageOfTypeForBundleID:(id)a3 messageReason:(id)a4;
- (id)performAction:(int64_t)a3 withContext:(id)a4;
- (id)registerForEventOfType:(int64_t)a3 filterData:(id)a4;
- (id)setIntegerValue:(int64_t)a3 forIdentifier:(unint64_t)a4 withContext:(id)a5;
- (id)setStorefront:(id)a3 withContext:(id)a4;
- (id)setStringValue:(id)a3 forIdentifier:(unint64_t)a4 withContext:(id)a5;
- (id)validateSKAdNetworkSignature:(id)a3 withPublicKey:(id)a4 source:(int64_t)a5 andParameters:(id)a6 withContext:(id)a7;
- (int64_t)activePort;
- (int64_t)getIntegerValueForIdentifier:(unint64_t)a3 withContext:(id)a4;
- (int64_t)storeKitErrorForCategory:(int64_t)a3 bundleID:(id)a4;
- (void)_refreshReceiptForBundleID:(id)a3 logKey:(id)a4;
- (void)buyProductWithConfiguration:(id)a3 withContext:(id)a4 withReply:(id)a5;
- (void)deleteDataWithContext:(id)a3;
- (void)dialogsDisabledForBundleID:(id)a3 completion:(id)a4;
- (void)portUpdated:(int64_t)a3;
- (void)restartServerIfNecessary;
- (void)setStoreKitError:(int64_t)a3 forCategory:(int64_t)a4 bundleID:(id)a5;
- (void)unregisterForEventWithIdentifier:(id)a3;
- (void)useConfigurationDirectory:(id)a3 forBundleID:(id)a4;
@end

@implementation OctaneManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FA58;
  block[3] = &unk_10037F9B0;
  block[4] = a1;
  if (qword_1003D3D30 != -1)
  {
    dispatch_once(&qword_1003D3D30, block);
  }

  v2 = qword_1003D3D28;

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
  v5[2] = sub_10001FBD4;
  v5[3] = &unk_1003807A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)buyProductWithConfiguration:(id)a3 withContext:(id)a4 withReply:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[ASOctaneServer shared];
  [v8 buyProductWithConfiguration:v7 withReply:v6];
}

- (id)buyProductWithID:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001FEFC;
  v25 = sub_10001FF0C;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FF14;
  block[3] = &unk_1003807C8;
  v20 = &v21;
  v9 = v6;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  dispatch_sync(dispatchQueue, block);
  v11 = v22[5];
  if (v11)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v12 = qword_1003D3D70;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v10 logKey];
      v16 = v22[5];
      *buf = 138543874;
      v28 = v15;
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

- (id)changeAutoRenewStatus:(BOOL)a3 withContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10001FEFC;
  v24 = sub_10001FF0C;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000201D8;
  block[3] = &unk_1003807F0;
  v18 = &v20;
  v19 = v4;
  v8 = v6;
  v17 = v8;
  dispatch_sync(dispatchQueue, block);
  v9 = v21[5];
  if (v9)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v10 = qword_1003D3D70;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 logKey];
      v14 = [v8 transactionID];
      v15 = v21[5];
      *buf = 138544130;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      v30 = 1024;
      v31 = v4;
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

- (id)clearOverridesWithContext:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10001FEFC;
  v24 = sub_10001FF0C;
  v25 = 0;
  dispatchQueue = self->_dispatchQueue;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000204A4;
  v17 = &unk_10037F7D0;
  v19 = &v20;
  v6 = v4;
  v18 = v6;
  dispatch_sync(dispatchQueue, &v14);
  v7 = v21[5];
  if (v7)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v8 = qword_1003D3D70;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 logKey];
      v12 = [v6 bundleID];
      v13 = v21[5];
      *buf = 138543874;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
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

- (id)completeAskToBuyRequestWithResponse:(BOOL)a3 withContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10001FEFC;
  v21 = sub_10001FF0C;
  v22 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020744;
  block[3] = &unk_1003807F0;
  v15 = &v17;
  v16 = v4;
  v8 = v6;
  v14 = v8;
  dispatch_sync(dispatchQueue, block);
  if (v18[5])
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v9 = qword_1003D3D70;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 logKey];
      objc_claimAutoreleasedReturnValue();
      sub_1002C8C6C();
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v9 = [v8 bundleID];
    v10 = [StoreKitServiceConnection octaneConnectionForBundleID:v9];
    [v10 checkServerQueueForQueue:@"DefaultQueue" withClient:0];
  }

LABEL_9:
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)deleteAllTransactionsWithContext:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10001FEFC;
  v21 = sub_10001FF0C;
  v22 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000209B0;
  v14 = &unk_10037F7D0;
  v16 = &v17;
  v6 = v4;
  v15 = v6;
  dispatch_sync(dispatchQueue, &v11);
  v7 = v18[5];
  if (v7)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v8 = qword_1003D3D70;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 logKey];
      objc_claimAutoreleasedReturnValue();
      sub_1002C8CB0();
    }

    v7 = v18[5];
  }

  v9 = v7;

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (void)deleteDataWithContext:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020AD0;
  block[3] = &unk_100380818;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)dialogsDisabledForBundleID:(id)a3
{
  v4 = [OctaneActionContext contextWithBundleID:a3];
  LOBYTE(self) = [(OctaneManager *)self getBoolValueForIdentifier:2 withContext:v4];

  return self;
}

- (void)dialogsDisabledForBundleID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ASOctaneServer shared];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100020C04;
  v9[3] = &unk_100380840;
  v10 = v5;
  v8 = v5;
  [v7 getIntegerValueForIdentifier:2 forBundleID:v6 completion:v9];
}

- (id)expireOrRenewSubscriptionWithIdentifier:(id)a3 expire:(BOOL)a4 withContext:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10001FEFC;
  v33 = sub_10001FF0C;
  v34 = 0;
  dispatchQueue = self->_dispatchQueue;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100020EC4;
  v24 = &unk_100380868;
  v27 = &v29;
  v11 = v8;
  v25 = v11;
  v28 = v6;
  v12 = v9;
  v26 = v12;
  dispatch_sync(dispatchQueue, &v21);
  if (v30[5])
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v13 = qword_1003D3D70;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v12 logKey];
      v15 = v14;
      v16 = @"force renew";
      v17 = v30[5];
      if (v6)
      {
        v16 = @"expire";
      }

      *buf = 138544130;
      v36 = v14;
      v37 = 2114;
      v38 = v16;
      v39 = 2114;
      v40 = v11;
      v41 = 2114;
      v42 = v17;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to %{public}@ subscription with identifier %{public}@: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v13 = [v12 bundleID];
    v18 = [v12 logKey];
    [(OctaneManager *)self _refreshReceiptForBundleID:v13 logKey:v18];
  }

  v19 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v19;
}

- (id)getStorefrontWithContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10001FEFC;
  v16 = sub_10001FF0C;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002106C;
  v9[3] = &unk_10037F7D0;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(dispatchQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getTransactionDataWithContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10001FEFC;
  v16 = sub_10001FF0C;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021200;
  v9[3] = &unk_10037F7D0;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(dispatchQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)messageForBundleID:(id)a3
{
  v3 = a3;
  v4 = +[ASOctaneServer shared];
  v5 = [v4 messageForBundleID:v3];

  return v5;
}

- (id)messageOfTypeForBundleID:(id)a3 messageReason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ASOctaneServer shared];
  v8 = [v7 messageOfTypeForBundleID:v6 messageReason:v5];

  return v8;
}

- (id)performAction:(int64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001FEFC;
  v25 = sub_10001FF0C;
  v26 = 0;
  if (qword_1003D3D80 != -1)
  {
    sub_1002C8C44();
  }

  v7 = qword_1003D3D70;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 logKey];
    v9 = [v6 transactionID];
    *buf = 138543874;
    v28 = v8;
    v29 = 2048;
    v30 = a3;
    v31 = 2050;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Asked to perform action %ld on %{public}ld", buf, 0x20u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000215E4;
  block[3] = &unk_100380890;
  v19 = &v21;
  v20 = a3;
  v11 = v6;
  v18 = v11;
  dispatch_sync(dispatchQueue, block);
  v12 = v22[5];
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0 && !v12)
  {
    v13 = [v11 bundleID];
    v14 = [v11 logKey];
    [(OctaneManager *)self _refreshReceiptForBundleID:v13 logKey:v14];

    v12 = v22[5];
  }

  v15 = v12;

  _Block_object_dispose(&v21, 8);

  return v15;
}

- (void)portUpdated:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021ADC;
  v4[3] = &unk_10037F7F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)restartServerIfNecessary
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = +[StoreKitServiceConnection allConnections];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) client];
        v9 = [v8 requestBundleID];

        v10 = [OctaneManager configurationDirectoryForBundleID:v9 mustExist:1];
        v11 = [v10 path];

        if (v11)
        {
          v12 = +[ASOctaneServer shared];
          [v12 useConfigurationDirectory:v11 forBundleID:v9];

          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);

    if (v5)
    {
      if (qword_1003D3D80 != -1)
      {
        sub_1002C8C44();
      }

      v13 = qword_1003D3D70;
      if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEBUG))
      {
        sub_1002C8DD0(v13);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_1003D3D80 != -1)
  {
    sub_1002C8C44();
  }

  v14 = qword_1003D3D70;
  if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEBUG))
  {
    sub_1002C8E14(v14);
  }
}

- (id)setStorefront:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001FEFC;
  v25 = sub_10001FF0C;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021F30;
  block[3] = &unk_1003807C8;
  v20 = &v21;
  v9 = v6;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  dispatch_sync(dispatchQueue, block);
  v11 = v22[5];
  if (v11)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v12 = qword_1003D3D70;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v10 logKey];
      v16 = v22[5];
      *buf = 138543874;
      v28 = v15;
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

- (id)registerForEventOfType:(int64_t)a3 filterData:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10001FEFC;
  v19 = sub_10001FF0C;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000220D8;
  block[3] = &unk_100380890;
  v13 = &v15;
  v14 = a3;
  v12 = v6;
  v8 = v6;
  dispatch_sync(dispatchQueue, block);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)unregisterForEventWithIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000221E4;
  block[3] = &unk_100380818;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, block);
}

- (void)useConfigurationDirectory:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000222FC;
  v11[3] = &unk_10037F868;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(dispatchQueue, v11);
}

- (id)generateSKANPostbackSignature:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10001FEFC;
  v25 = sub_10001FF0C;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100022528;
  v18 = &unk_10037F7D0;
  v20 = &v21;
  v9 = v6;
  v19 = v9;
  dispatch_sync(dispatchQueue, &v15);
  v10 = v22[5];
  if (!v10)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v11 = qword_1003D3D70;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 logKey];
      sub_1002C8E58(v12, buf, v11);
    }

    v10 = v22[5];
  }

  v13 = v10;

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)validateSKAdNetworkSignature:(id)a3 withPublicKey:(id)a4 source:(int64_t)a5 andParameters:(id)a6 withContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10001FEFC;
  v39 = sub_10001FF0C;
  v40 = 0;
  dispatchQueue = self->_dispatchQueue;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1000227E4;
  v28 = &unk_1003808B8;
  v33 = &v35;
  v17 = v12;
  v29 = v17;
  v18 = v13;
  v30 = v18;
  v34 = a5;
  v19 = v14;
  v31 = v19;
  v20 = v15;
  v32 = v20;
  dispatch_sync(dispatchQueue, &v25);
  v21 = v36[5];
  if (v21)
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v22 = qword_1003D3D70;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v20 logKey];
      objc_claimAutoreleasedReturnValue();
      sub_1002C8EB0();
    }

    v21 = v36[5];
  }

  v23 = v21;

  _Block_object_dispose(&v35, 8);

  return v23;
}

- (int64_t)storeKitErrorForCategory:(int64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022964;
  block[3] = &unk_100380890;
  v13 = &v15;
  v14 = a3;
  v12 = v6;
  v8 = v6;
  dispatch_sync(dispatchQueue, block);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (void)setStoreKitError:(int64_t)a3 forCategory:(int64_t)a4 bundleID:(id)a5
{
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022A78;
  block[3] = &unk_1003808E0;
  v13 = a3;
  v14 = a4;
  v12 = v8;
  v10 = v8;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)getBoolValueForIdentifier:(unint64_t)a3 withContext:(id)a4
{
  v4 = [(OctaneManager *)self getIntegerValueForIdentifier:a3 withContext:a4];
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

- (int64_t)getIntegerValueForIdentifier:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  if (qword_1003D3D80 != -1)
  {
    sub_1002C8EF4();
  }

  v7 = qword_1003D3D70;
  if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 logKey];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested value for identifier %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022CA8;
  block[3] = &unk_100380890;
  v16 = buf;
  v17 = a3;
  v15 = v6;
  v11 = v6;
  dispatch_sync(dispatchQueue, block);
  v12 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v12;
}

- (id)setIntegerValue:(int64_t)a3 forIdentifier:(unint64_t)a4 withContext:(id)a5
{
  v8 = a5;
  if (qword_1003D3D80 != -1)
  {
    sub_1002C8EF4();
  }

  v9 = qword_1003D3D70;
  if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 logKey];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested to set value %ld for identifier %ld", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = sub_10001FEFC;
  v23 = sub_10001FF0C;
  v24 = 0;
  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100022F24;
  v16[3] = &unk_100380908;
  v19 = a3;
  v20 = a4;
  v17 = v8;
  v18 = buf;
  v13 = v8;
  dispatch_sync(dispatchQueue, v16);
  v14 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v14;
}

- (id)getStringValueForIdentifier:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  if (qword_1003D3D80 != -1)
  {
    sub_1002C8EF4();
  }

  v7 = qword_1003D3D70;
  if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 logKey];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested value for identifier %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = sub_10001FEFC;
  v20 = sub_10001FF0C;
  v21 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023294;
  block[3] = &unk_100380890;
  v16 = buf;
  v17 = a3;
  v15 = v6;
  v11 = v6;
  dispatch_sync(dispatchQueue, block);
  v12 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)setStringValue:(id)a3 forIdentifier:(unint64_t)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (qword_1003D3D80 != -1)
  {
    sub_1002C8EF4();
  }

  v10 = qword_1003D3D70;
  if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v9 logKey];
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested to set value %ld for identifier %ld", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = sub_10001FEFC;
  v25 = sub_10001FF0C;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023538;
  v18[3] = &unk_100380930;
  v21 = buf;
  v22 = a4;
  v19 = v8;
  v20 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_sync(dispatchQueue, v18);
  v16 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v16;
}

- (id)_appNameForContext:(id)a3
{
  v3 = [a3 bundleID];
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:v3 allowPlaceholder:0 error:0];

  v5 = [v4 localizedName];

  return v5;
}

- (void)_refreshReceiptForBundleID:(id)a3 logKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1003D3D80 != -1)
  {
    sub_1002C8EF4();
  }

  v7 = qword_1003D3D70;
  if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Refreshing receipt for %{public}@", buf, 0x16u);
  }

  v8 = [[_TtC9storekitd6Client alloc] initWithBundleIdentifier:v5];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [ReceiptManager managerForClient:v8];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000239C4;
    v16[3] = &unk_100380188;
    v11 = v6;
    v17 = v11;
    v12 = v9;
    v18 = v12;
    [v10 requestUnifiedAppReceiptWithDialogContext:0 logKey:v11 options:0 completionHandler:v16];
    v13 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v12, v13))
    {
      if (qword_1003D3D80 != -1)
      {
        sub_1002C8C44();
      }

      v14 = qword_1003D3D70;
      if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_ERROR))
      {
        sub_1002C8F08(v11, v5, v14);
      }
    }
  }

  else
  {
    if (qword_1003D3D80 != -1)
    {
      sub_1002C8C44();
    }

    v15 = qword_1003D3D70;
    if (os_log_type_enabled(qword_1003D3D70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client to refresh receipt", buf, 0xCu);
    }
  }
}

+ (id)configurationDirectoryForBundleID:(id)a3 mustExist:(BOOL)a4
{
  v4 = a4;
  v5 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10018C168(v8, v9, v4, v7);

  v10 = type metadata accessor for URL();
  v12 = 0;
  if (sub_100081D0C(v7, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  return v12;
}

+ (BOOL)saveConfigurationData:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  swift_getObjCClassMetadata();
  sub_10018A674(v8, v10, v7);

  sub_10008E168(v8, v10);
  return 1;
}

+ (BOOL)saveConfigurationAssetData:(id)a3 name:(id)a4 withContext:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  swift_getObjCClassMetadata();
  sub_10018B51C(v11, v13, v14, v16, v10);

  sub_10008E168(v11, v13);
  return 1;
}

+ (void)deleteConfigurationForContext:(id)a3
{
  v3 = a3;
  sub_10018CE4C(v3);
}

+ (id)configurationDataForBundleID:(id)a3 error:(id *)a4
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_10018D784(v4, v5);
  v8 = v7;

  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v6, v8);

  return v9.super.isa;
}

+ (id)simulatedStoreKitErrorFor:(int64_t)a3 client:(id)a4
{
  v5 = a4;
  v6 = sub_10018C008(a3, v5);

  return v6;
}

@end