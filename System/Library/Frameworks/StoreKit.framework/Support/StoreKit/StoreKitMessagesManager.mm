@interface StoreKitMessagesManager
+ (id)sharedManager;
- (BOOL)_accountHasMessagesForBundleID:(id)a3 bundleID:(id)a4;
- (BOOL)addMessage:(id)a3 error:(id *)a4;
- (BOOL)addMessageStatus:(id)a3 forBundleID:(id)a4 accountID:(id)a5 allowDeveloperControl:(BOOL)a6 messageType:(int64_t)a7 error:(id *)a8;
- (StoreKitMessagesManager)init;
- (id)_bundleIDsWithMessagesForAccount:(id)a3;
- (id)_bundleIDsWithMessagesInBundleIDs:(id)a3 account:(id)a4;
- (id)_removeStoreKitMessageForAccount:(id)a3 bundleID:(id)a4 type:(int64_t)a5 logKey:(id)a6;
- (id)_storeKitConnectionForBundleID:(id)a3;
- (id)databaseStore;
- (id)messageInfoForClient:(id)a3 messageType:(id)a4;
- (id)revocationsForClient:(id)a3;
- (void)_accountDidChange:(id)a3;
- (void)_displayMessageForProdAccount:(id)a3 bundleID:(id)a4;
- (void)_handleObservationsForCurrentAccount;
- (void)_presentEngagementTaskWithURL:(id)a3 client:(id)a4;
- (void)_recordPotentialMessageWithURL:(id)a3 type:(int64_t)a4 allowsDeveloperControl:(BOOL)a5 client:(id)a6;
- (void)_showMessage:(id)a3 forClient:(id)a4 messageType:(int64_t)a5 useItmsUI:(BOOL)a6;
- (void)appDidLaunchWithBundleID:(id)a3;
- (void)askToShowMessageForClient:(id)a3 message:(id)a4 pendingURL:(id)a5 connection:(id)a6;
- (void)checkForMessagesForClient:(id)a3 remoteObjectProxy:(id)a4 xpcConnection:(id)a5;
- (void)displayMessageForMessageInfo:(id)a3 client:(id)a4;
- (void)displayMessageWithType:(id)a3 forClient:(id)a4 connection:(id)a5;
- (void)handleAppInstallWithBundleIDs:(id)a3;
- (void)pushService:(id)a3 didReceiveMessage:(id)a4;
- (void)recordMessageDisplayEventWithType:(int64_t)a3 messageType:(int64_t)a4 client:(id)a5;
- (void)revokeProductIdentifiers:(id)a3 forBundleID:(id)a4 accountID:(id)a5;
@end

@implementation StoreKitMessagesManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000644AC;
  block[3] = &unk_10037F9B0;
  block[4] = a1;
  if (qword_1003D46A8 != -1)
  {
    dispatch_once(&qword_1003D46A8, block);
  }

  v2 = qword_1003D46A0;

  return v2;
}

- (StoreKitMessagesManager)init
{
  v21.receiver = self;
  v21.super_class = StoreKitMessagesManager;
  v2 = [(StoreKitMessagesManager *)&v21 init];
  if (v2)
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D049C();
    }

    v3 = qword_1003D46B0;
    if (os_log_type_enabled(qword_1003D46B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering StoreKit Messages push consumer", buf, 2u);
    }

    v4 = +[PushService sharedInstance];
    [v4 registerConsumer:v2 forActionType:30];

    v5 = +[PushService sharedInstance];
    [v5 registerConsumer:v2 forActionType:32];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.StoreKit.ShowMessages", v6);
    showMessageQueue = v2->_showMessageQueue;
    v2->_showMessageQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstored.StoreKit.MessageAccountObserver", v9);
    accountObserverQueue = v2->_accountObserverQueue;
    v2->_accountObserverQueue = v10;

    v12 = objc_alloc_init(StoreKitAppLaunchObserver);
    observer = v2->_observer;
    v2->_observer = v12;

    [(StoreKitAppLaunchObserver *)v2->_observer setDelegate:v2];
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = +[ActiveAccountObserver sharedInstance];
    [v14 addObserver:v2 selector:"_accountDidChange:" name:@"AccountStorePrimaryAccountDidChange" object:v15];

    v16 = v2->_accountObserverQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064728;
    block[3] = &unk_100380818;
    v19 = v2;
    dispatch_async(v16, block);
  }

  return v2;
}

- (id)databaseStore
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_databaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    v5 = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[StoreKitMessagesDatabaseStore alloc] initWithDatabase:v5];
    objc_storeWeak(&v2->_databaseStore, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (BOOL)addMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100064B48;
  v33 = sub_100064B58;
  v34 = 0;
  if (v6)
  {
    v7 = [(StoreKitMessagesManager *)self databaseStore];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100064B60;
    v26 = &unk_100382908;
    v8 = v6;
    v27 = v8;
    v28 = &v29;
    [v7 modifyUsingTransaction:&v23];

    if (v30[5])
    {
      if (qword_1003D46F8 != -1)
      {
        sub_1002D049C();
      }

      v9 = qword_1003D46B8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v17 = v30[5];
        v18 = [v8 userID];
        v19 = [v8 bundleID];
        *buf = 138543875;
        v36 = v17;
        v37 = 2113;
        v38 = v18;
        v39 = 2114;
        v40 = v19;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error inserting message info: %{public}@ for DSID: %{private}@, bundle ID: %{public}@", buf, 0x20u);
      }
    }

    v10 = v27;
  }

  else
  {
    v11 = [NSError alloc];
    v12 = [v11 initWithDomain:ASDErrorDomain code:740 userInfo:0];
    v10 = v30[5];
    v30[5] = v12;
  }

  v13 = v30;
  if (a4 && v30[5])
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D049C();
    }

    v14 = qword_1003D46B8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = v30[5];
      v21 = [v6 userID];
      v22 = [v6 bundleID];
      *buf = 138543875;
      v36 = v20;
      v37 = 2113;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error inserting message info: %{public}@ for DSID: %{private}@, bundle ID: %{public}@", buf, 0x20u);
    }

    *a4 = v30[5];
    v13 = v30;
  }

  v15 = v13[5] != 0;
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (BOOL)addMessageStatus:(id)a3 forBundleID:(id)a4 accountID:(id)a5 allowDeveloperControl:(BOOL)a6 messageType:(int64_t)a7 error:(id *)a8
{
  v10 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[StoreKitMessageInfo alloc] initWithUserID:v14 bundleID:v15 status:v16 allowDeveloperControl:v10 messageType:a7];

  LOBYTE(a8) = [(StoreKitMessagesManager *)self addMessage:v17 error:a8];
  return a8;
}

- (void)pushService:(id)a3 didReceiveMessage:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = [v6 accountID];
  if ([v6 actionType] == 30)
  {
    v8 = [v6 valueForUserInfoKey:@"2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 valueForUserInfoKey:@"9"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 valueForUserInfoKey:{@"11", v9, v31}];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = objc_alloc_init(NSNumberFormatter);
          [v12 setNumberStyle:1];
          v30 = [v12 numberFromString:v9];

          [v6 valueForUserInfoKey:{@"11", v30, v31}];
        }

        else
        {
          [v6 valueForUserInfoKey:{@"11", &off_1003A14C8, v31}];
        }
      }
      v14 = ;

      if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v15 = [v14 BOOLValue];
      }

      else
      {
        v15 = 1;
      }

      v16 = [v6 valueForUserInfoKey:@"12"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 integerValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = objc_alloc_init(NSNumberFormatter);
          [v18 setNumberStyle:1];
          v19 = [v18 numberFromString:v16];
          v20 = v19;
          if (v19)
          {
            v17 = [v19 integerValue];
          }

          else
          {
            v17 = 2;
          }
        }

        else
        {
          v17 = 2;
        }
      }

      if (qword_1003D46F8 != -1)
      {
        sub_1002D04C4();
      }

      v21 = qword_1003D46B8;
      if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"false";
        *buf = 138544642;
        *&buf[4] = self;
        if (v15)
        {
          v22 = @"true";
        }

        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v49 = v7;
        *v50 = 2112;
        *&v50[2] = v29;
        *&v50[10] = 2112;
        *&v50[12] = v22;
        v51 = 2048;
        v52 = v17;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received StoreKit message for bundleID: %@ accountID: %@ status: %@ allowDeveloperControl: %@ type: %ld", buf, 0x3Eu);
      }

      v23 = [[StoreKitMessageInfo alloc] initWithUserID:v7 bundleID:v8 status:v29 allowDeveloperControl:v15 messageType:v17];
      if (v23)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v49 = sub_100064B48;
        *v50 = sub_100064B58;
        *&v50[8] = 0;
        v24 = [(StoreKitMessagesManager *)self databaseStore];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000652C0;
        v36[3] = &unk_100382908;
        v37 = v23;
        v38 = buf;
        [v24 modifyUsingTransaction:v36];

        if (*(*&buf[8] + 40))
        {
          if (qword_1003D46F8 != -1)
          {
            sub_1002D049C();
          }

          v25 = qword_1003D46B8;
          if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
          {
            v26 = *(*&buf[8] + 40);
            *v40 = 138544130;
            v41 = v26;
            v42 = 2112;
            v43 = v7;
            v44 = 2112;
            v45 = v8;
            v46 = 2112;
            v47 = v29;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error inserting message info: %{public}@ for DSID: %@, bundle ID: %@, status: %@", v40, 0x2Au);
          }
        }

        else if (v8)
        {
          observer = self->_observer;
          v39 = v8;
          v28 = [NSArray arrayWithObjects:&v39 count:1];
          [(StoreKitAppLaunchObserver *)observer observeAppLaunchForBundleIDs:v28];
        }

        _Block_object_dispose(buf, 8);
      }

      v8 = v16;
    }

    else
    {
      if (qword_1003D46F8 != -1)
      {
        sub_1002D04C4();
      }

      if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D051C();
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if ([v6 actionType] == 32)
  {
    v10 = [v6 getRevokedProductsMap];
    v8 = v10;
    if (v10)
    {
      v11 = [v10 allKeys];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100065314;
      v32[3] = &unk_1003826D0;
      v8 = v8;
      v33 = v8;
      v34 = self;
      v35 = v7;
      [v11 enumerateObjectsUsingBlock:v32];
    }

    else
    {
      if (qword_1003D46F8 != -1)
      {
        sub_1002D04C4();
      }

      v13 = qword_1003D46B8;
      if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D04D8(v13);
      }
    }

    goto LABEL_47;
  }

LABEL_48:
}

- (id)messageInfoForClient:(id)a3 messageType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 objc_clientType] == 3)
  {
    v8 = &off_1003A14C8;
  }

  else
  {
    v9 = [v6 account];
    v8 = [v9 ams_DSID];

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100064B48;
  v29 = sub_100064B58;
  v30 = 0;
  v10 = [(StoreKitMessagesManager *)self databaseStore];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100065620;
  v20 = &unk_100382930;
  v24 = &v25;
  v11 = v8;
  v21 = v11;
  v12 = v6;
  v22 = v12;
  v23 = v7;
  [v10 readUsingSession:&v17];

  v13 = v26[5];
  if (!v13)
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D049C();
    }

    v14 = qword_1003D46B8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 requestBundleID];
      *buf = 138478083;
      v32 = v11;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No message in database for DSID: %{private}@, bundle ID: %{public}@", buf, 0x16u);
    }

    v13 = v26[5];
  }

  v8 = v13;

  _Block_object_dispose(&v25, 8);
LABEL_11:

  return v8;
}

- (id)revocationsForClient:(id)a3
{
  v4 = a3;
  if ([v4 objc_clientType] == 3)
  {
    v5 = +[OctaneManager testAccountID];
    if (v5)
    {
LABEL_3:
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_100064B48;
      v38 = sub_100064B58;
      v39 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = sub_100064B48;
      v32 = sub_100064B58;
      v33 = 0;
      v6 = [(StoreKitMessagesManager *)self databaseStore];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100065AC4;
      v24[3] = &unk_100382958;
      v27 = &v28;
      v7 = v5;
      v25 = v7;
      v8 = v4;
      v26 = v8;
      [v6 readUsingSession:v24];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100065B54;
      v21[3] = &unk_100382980;
      v9 = v7;
      v22 = v9;
      v10 = v8;
      v23 = v10;
      [v6 modifyUsingTransaction:v21];
      if ([v29[5] count])
      {
        v11 = objc_alloc_init(NSMutableArray);
        v12 = v35[5];
        v35[5] = v11;

        v13 = v29[5];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100065BB4;
        v20[3] = &unk_1003829A8;
        v20[4] = &v34;
        [v13 enumerateObjectsUsingBlock:v20];
      }

      else
      {
        if (qword_1003D46F8 != -1)
        {
          sub_1002D049C();
        }

        v17 = qword_1003D46B8;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v10 requestBundleID];
          *buf = 138478083;
          v41 = v9;
          v42 = 2114;
          v43 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No revocations in database for DSID: %{private}@, bundleID: %{public}@", buf, 0x16u);
        }
      }

      v16 = v35[5];

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v34, 8);

      goto LABEL_17;
    }
  }

  else
  {
    v14 = [v4 account];
    v5 = [v14 ams_DSID];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (qword_1003D46F8 != -1)
  {
    sub_1002D04C4();
  }

  v15 = qword_1003D46B8;
  if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
  {
    sub_1002D0584(v15, v4);
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (void)revokeProductIdentifiers:(id)a3 forBundleID:(id)a4 accountID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(StoreKitMessagesManager *)self databaseStore];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100065D64;
  v17[3] = &unk_1003829F8;
  v12 = v8;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  [v11 modifyUsingTransaction:v17];

  v15 = +[OctaneManager testAccountID];
  LODWORD(v9) = [v13 isEqualToNumber:v15];

  if (v9)
  {
    v16 = [StoreKitServiceConnection octaneConnectionForBundleID:v14];
    [v16 checkForMessages];
  }
}

- (void)appDidLaunchWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(StoreKitMessagesManager *)self _storeKitConnectionForBundleID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 client];
    v8 = [v7 objc_clientType];

    if (v8 == 1)
    {
      [v6 checkForMessages];
    }
  }

  else
  {
    accountObserverQueue = self->_accountObserverQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000660A0;
    v10[3] = &unk_10037F868;
    v10[4] = self;
    v11 = v4;
    dispatch_async(accountObserverQueue, v10);
  }
}

- (void)handleAppInstallWithBundleIDs:(id)a3
{
  v8 = a3;
  v4 = +[ActiveAccountObserver activeAccount];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ams_DSID];

    if (v6)
    {
      v7 = [(StoreKitMessagesManager *)self _bundleIDsWithMessagesInBundleIDs:v8 account:v5];
      [(StoreKitAppLaunchObserver *)self->_observer observeAppLaunchForBundleIDs:v7];
    }
  }
}

- (id)_bundleIDsWithMessagesForAccount:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100064B48;
  v16 = sub_100064B58;
  v17 = objc_alloc_init(NSArray);
  v5 = [v4 ams_DSID];

  if (v5)
  {
    v6 = [(StoreKitMessagesManager *)self databaseStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100066334;
    v9[3] = &unk_100382A20;
    v11 = &v12;
    v10 = v4;
    [v6 readUsingSession:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_accountHasMessagesForBundleID:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [v6 ams_DSID];

  if (v8)
  {
    v9 = [(StoreKitMessagesManager *)self databaseStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000664F8;
    v12[3] = &unk_100382958;
    v15 = &v16;
    v13 = v6;
    v14 = v7;
    [v9 readUsingSession:v12];
  }

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_bundleIDsWithMessagesInBundleIDs:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100064B48;
  v20 = sub_100064B58;
  v21 = objc_alloc_init(NSArray);
  v8 = [v7 ams_DSID];

  if (v8)
  {
    v9 = [(StoreKitMessagesManager *)self databaseStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100066708;
    v12[3] = &unk_100382958;
    v15 = &v16;
    v13 = v6;
    v14 = v7;
    [v9 readUsingSession:v12];
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_storeKitConnectionForBundleID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100064B48;
    v14 = sub_100064B58;
    v15 = 0;
    v4 = +[StoreKitServiceConnection allConnections];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100066924;
    v7[3] = &unk_100382A48;
    v8 = v3;
    v9 = &v10;
    [v4 enumerateObjectsUsingBlock:v7];

    v5 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D04C4();
    }

    if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D062C();
    }

    v5 = 0;
  }

  return v5;
}

- (void)_displayMessageForProdAccount:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v7 error:0];
    if (v8)
    {
      v9 = [_TtC9storekitd6Client alloc];
      v10 = [v8 URL];
      v11 = [(Client *)v9 initWithURL:v10 overridesDictionary:0];

      if (v11 && [(Client *)v11 objc_clientType]== 1)
      {
        v12 = [(StoreKitMessagesManager *)self messageInfoForClient:v11 messageType:0];
        v13 = +[StoreKitMessagesManager sharedManager];
        [v13 displayMessageForMessageInfo:v12 client:v11];
      }

      else
      {
        if (qword_1003D46F8 != -1)
        {
          sub_1002D04C4();
        }

        if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
        {
          sub_1002D0694();
        }
      }
    }

    else
    {
      if (qword_1003D46F8 != -1)
      {
        sub_1002D04C4();
      }

      if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D0700();
      }
    }
  }

  else
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D04C4();
    }

    if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D062C();
    }
  }
}

- (void)_handleObservationsForCurrentAccount
{
  v3 = +[ActiveAccountObserver activeAccount];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 ams_DSID];

    v3 = v6;
    if (v4)
    {
      v5 = [(StoreKitMessagesManager *)self _bundleIDsWithMessagesForAccount:v6];
      [(StoreKitAppLaunchObserver *)self->_observer observeAppLaunchForBundleIDs:v5];

      v3 = v6;
    }
  }
}

- (void)_presentEngagementTaskWithURL:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1003D46F8 != -1)
  {
    sub_1002D04C4();
  }

  v8 = qword_1003D46B8;
  if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Opening message URL: %{public}@", buf, 0x16u);
  }

  v9 = [v7 account];
  v10 = objc_alloc_init(AMSEngagementRequest);
  [v10 setURL:v6];
  if (v9)
  {
    [v10 setAccount:v9];
  }

  v21[0] = @"refApp";
  v11 = [v7 requestBundleID];
  v21[1] = @"app";
  v22[0] = v11;
  v22[1] = @"com.apple.AppStore";
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v10 setMetricsOverlay:v12];

  v13 = [[AMSSystemEngagementTask alloc] initWithRequest:v10];
  v14 = [v7 processInfo];
  [v13 setClientInfo:v14];

  v15 = [v7 bag];
  [v13 setBag:v15];

  showMessageQueue = self->_showMessageQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100066E94;
  v18[3] = &unk_10037F868;
  v19 = v13;
  v20 = self;
  v17 = v13;
  dispatch_async(showMessageQueue, v18);
}

- (void)_accountDidChange:(id)a3
{
  [(StoreKitAppLaunchObserver *)self->_observer stopObserving];
  accountObserverQueue = self->_accountObserverQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000670F8;
  block[3] = &unk_100380818;
  block[4] = self;
  dispatch_async(accountObserverQueue, block);
}

- (void)_recordPotentialMessageWithURL:(id)a3 type:(int64_t)a4 allowsDeveloperControl:(BOOL)a5 client:(id)a6
{
  if (a3)
  {
    if (a5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }

    [(StoreKitMessagesManager *)self recordMessageDisplayEventWithType:v6 messageType:a4 client:a6];
  }
}

- (void)_showMessage:(id)a3 forClient:(id)a4 messageType:(int64_t)a5 useItmsUI:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = [NSNumber numberWithInteger:a5];
  v13 = [(StoreKitMessagesManager *)self messageInfoForClient:v11 messageType:v12];

  if (v13)
  {
    v14 = [v11 account];
    if ([v11 objc_clientType] != 3)
    {
      if (v6)
      {
        v15 = [NSURLComponents componentsWithURL:v10 resolvingAgainstBaseURL:0];
        [v15 setScheme:@"itms-ui"];
        v16 = [v15 URL];
        if (v16)
        {
          if (qword_1003D46F8 != -1)
          {
            sub_1002D04C4();
          }

          v17 = qword_1003D46B8;
          if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 138543618;
            v27 = self;
            v28 = 2114;
            v29 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Opening message URL: %{public}@", &v26, 0x16u);
          }

          v18 = +[LSApplicationWorkspace defaultWorkspace];
          [v18 openSensitiveURL:v16 withOptions:&__NSDictionary0__struct];
        }

        else
        {
          if (qword_1003D46F8 != -1)
          {
            sub_1002D04C4();
          }

          if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
          {
            sub_1002D0884();
          }
        }

LABEL_25:
        if ([v11 objc_clientType] == 3)
        {
          v20 = &off_1003A14C8;
        }

        else
        {
          v20 = [v14 ams_DSID];
          if (!v20)
          {
            v22 = ASDErrorWithDescription();
            if (v22)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        v21 = [v11 requestBundleID];
        v22 = [(StoreKitMessagesManager *)self _removeStoreKitMessageForAccount:v20 bundleID:v21 type:a5 logKey:0];

        if (v22)
        {
LABEL_29:
          if (qword_1003D46F8 != -1)
          {
            sub_1002D049C();
          }

          v23 = qword_1003D46B8;
          if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
          {
            v24 = v23;
            v25 = [v11 requestBundleID];
            v26 = 138543874;
            v27 = v22;
            v28 = 2112;
            v29 = v20;
            v30 = 2112;
            v31 = v25;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing message info: %{public}@ for DSID: %@, bundle ID: %@", &v26, 0x20u);
          }
        }

LABEL_33:

        goto LABEL_34;
      }

      if (!v14)
      {
        if (qword_1003D46F8 != -1)
        {
          sub_1002D04C4();
        }

        v19 = qword_1003D46B8;
        if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
        {
          sub_1002D07E0(v19, v11);
        }
      }
    }

    [(StoreKitMessagesManager *)self _presentEngagementTaskWithURL:v10 client:v11];
    goto LABEL_25;
  }

  if (qword_1003D46F8 != -1)
  {
    sub_1002D04C4();
  }

  if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
  {
    sub_1002D08EC();
  }

LABEL_34:
}

- (id)_removeStoreKitMessageForAccount:(id)a3 bundleID:(id)a4 type:(int64_t)a5 logKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100064B48;
  v29 = sub_100064B58;
  v30 = 0;
  if (qword_1003D46F8 != -1)
  {
    sub_1002D049C();
  }

  v13 = qword_1003D46B8;
  if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v12;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Removing message info for %{public}@", buf, 0x16u);
  }

  if (v10 && v11)
  {
    v14 = [(StoreKitMessagesManager *)self databaseStore];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100067810;
    v20[3] = &unk_100382A70;
    v21 = v10;
    v22 = v11;
    v23 = &v25;
    v24 = a5;
    [v14 modifyUsingTransaction:v20];
  }

  v15 = v26[5];
  if (v15)
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D049C();
    }

    v16 = qword_1003D46B8;
    if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
    {
      v19 = v26[5];
      *buf = 138543874;
      v32 = v12;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = v19;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to remove message info for %{public}@: %{public}@", buf, 0x20u);
    }

    v15 = v26[5];
  }

  v17 = v15;
  _Block_object_dispose(&v25, 8);

  return v17;
}

- (void)recordMessageDisplayEventWithType:(int64_t)a3 messageType:(int64_t)a4 client:(id)a5
{
  v9 = a5;
  v10 = self;
  sub_1001BF9B0(a3, a4, a5);
}

- (void)checkForMessagesForClient:(id)a3 remoteObjectProxy:(id)a4 xpcConnection:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_1001BFCB0();

  swift_unknownObjectRelease();
}

- (void)displayMessageWithType:(id)a3 forClient:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001C0320();
}

- (void)askToShowMessageForClient:(id)a3 message:(id)a4 pendingURL:(id)a5 connection:(id)a6
{
  v11 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = 1;
  }

  sub_100081DFC(v13, v15, 1, v14);
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = self;
  sub_1001C1B60();

  sub_10013B1E8(v13, &unk_1003D0540);
}

- (void)displayMessageForMessageInfo:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001C2B7C();
}

@end