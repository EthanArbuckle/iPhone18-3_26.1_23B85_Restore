@interface StoreKitMessagesManager
+ (id)sharedManager;
- (BOOL)_accountHasMessagesForBundleID:(id)d bundleID:(id)iD;
- (BOOL)addMessage:(id)message error:(id *)error;
- (BOOL)addMessageStatus:(id)status forBundleID:(id)d accountID:(id)iD allowDeveloperControl:(BOOL)control messageType:(int64_t)type error:(id *)error;
- (StoreKitMessagesManager)init;
- (id)_bundleIDsWithMessagesForAccount:(id)account;
- (id)_bundleIDsWithMessagesInBundleIDs:(id)ds account:(id)account;
- (id)_removeStoreKitMessageForAccount:(id)account bundleID:(id)d type:(int64_t)type logKey:(id)key;
- (id)_storeKitConnectionForBundleID:(id)d;
- (id)databaseStore;
- (id)messageInfoForClient:(id)client messageType:(id)type;
- (id)revocationsForClient:(id)client;
- (void)_accountDidChange:(id)change;
- (void)_displayMessageForProdAccount:(id)account bundleID:(id)d;
- (void)_handleObservationsForCurrentAccount;
- (void)_presentEngagementTaskWithURL:(id)l client:(id)client;
- (void)_recordPotentialMessageWithURL:(id)l type:(int64_t)type allowsDeveloperControl:(BOOL)control client:(id)client;
- (void)_showMessage:(id)message forClient:(id)client messageType:(int64_t)type useItmsUI:(BOOL)i;
- (void)appDidLaunchWithBundleID:(id)d;
- (void)askToShowMessageForClient:(id)client message:(id)message pendingURL:(id)l connection:(id)connection;
- (void)checkForMessagesForClient:(id)client remoteObjectProxy:(id)proxy xpcConnection:(id)connection;
- (void)displayMessageForMessageInfo:(id)info client:(id)client;
- (void)displayMessageWithType:(id)type forClient:(id)client connection:(id)connection;
- (void)handleAppInstallWithBundleIDs:(id)ds;
- (void)pushService:(id)service didReceiveMessage:(id)message;
- (void)recordMessageDisplayEventWithType:(int64_t)type messageType:(int64_t)messageType client:(id)client;
- (void)revokeProductIdentifiers:(id)identifiers forBundleID:(id)d accountID:(id)iD;
@end

@implementation StoreKitMessagesManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000644AC;
  block[3] = &unk_10037F9B0;
  block[4] = self;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_databaseStore);
  if (!WeakRetained)
  {
    v4 = +[Environment sharedInstance];
    userDatabase = [v4 userDatabase];
    WeakRetained = [(SQLiteDatabaseStore *)[StoreKitMessagesDatabaseStore alloc] initWithDatabase:userDatabase];
    objc_storeWeak(&selfCopy->_databaseStore, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (BOOL)addMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100064B48;
  v33 = sub_100064B58;
  v34 = 0;
  if (messageCopy)
  {
    databaseStore = [(StoreKitMessagesManager *)self databaseStore];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100064B60;
    v26 = &unk_100382908;
    v8 = messageCopy;
    v27 = v8;
    v28 = &v29;
    [databaseStore modifyUsingTransaction:&v23];

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
        userID = [v8 userID];
        bundleID = [v8 bundleID];
        *buf = 138543875;
        v36 = v17;
        v37 = 2113;
        v38 = userID;
        v39 = 2114;
        v40 = bundleID;
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
  if (error && v30[5])
  {
    if (qword_1003D46F8 != -1)
    {
      sub_1002D049C();
    }

    v14 = qword_1003D46B8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = v30[5];
      userID2 = [messageCopy userID];
      bundleID2 = [messageCopy bundleID];
      *buf = 138543875;
      v36 = v20;
      v37 = 2113;
      v38 = userID2;
      v39 = 2114;
      v40 = bundleID2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error inserting message info: %{public}@ for DSID: %{private}@, bundle ID: %{public}@", buf, 0x20u);
    }

    *error = v30[5];
    v13 = v30;
  }

  v15 = v13[5] != 0;
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (BOOL)addMessageStatus:(id)status forBundleID:(id)d accountID:(id)iD allowDeveloperControl:(BOOL)control messageType:(int64_t)type error:(id *)error
{
  controlCopy = control;
  iDCopy = iD;
  dCopy = d;
  statusCopy = status;
  v17 = [[StoreKitMessageInfo alloc] initWithUserID:iDCopy bundleID:dCopy status:statusCopy allowDeveloperControl:controlCopy messageType:type];

  LOBYTE(error) = [(StoreKitMessagesManager *)self addMessage:v17 error:error];
  return error;
}

- (void)pushService:(id)service didReceiveMessage:(id)message
{
  serviceCopy = service;
  messageCopy = message;
  accountID = [messageCopy accountID];
  if ([messageCopy actionType] == 30)
  {
    v8 = [messageCopy valueForUserInfoKey:@"2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [messageCopy valueForUserInfoKey:@"9"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [messageCopy valueForUserInfoKey:{@"11", v9, serviceCopy}];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = objc_alloc_init(NSNumberFormatter);
          [v12 setNumberStyle:1];
          v30 = [v12 numberFromString:v9];

          [messageCopy valueForUserInfoKey:{@"11", v30, serviceCopy}];
        }

        else
        {
          [messageCopy valueForUserInfoKey:{@"11", &off_1003A14C8, serviceCopy}];
        }
      }
      v14 = ;

      if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        bOOLValue = [v14 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v16 = [messageCopy valueForUserInfoKey:@"12"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v16 integerValue];
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
            integerValue = [v19 integerValue];
          }

          else
          {
            integerValue = 2;
          }
        }

        else
        {
          integerValue = 2;
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
        if (bOOLValue)
        {
          v22 = @"true";
        }

        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v49 = accountID;
        *v50 = 2112;
        *&v50[2] = v29;
        *&v50[10] = 2112;
        *&v50[12] = v22;
        v51 = 2048;
        v52 = integerValue;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received StoreKit message for bundleID: %@ accountID: %@ status: %@ allowDeveloperControl: %@ type: %ld", buf, 0x3Eu);
      }

      v23 = [[StoreKitMessageInfo alloc] initWithUserID:accountID bundleID:v8 status:v29 allowDeveloperControl:bOOLValue messageType:integerValue];
      if (v23)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v49 = sub_100064B48;
        *v50 = sub_100064B58;
        *&v50[8] = 0;
        databaseStore = [(StoreKitMessagesManager *)self databaseStore];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000652C0;
        v36[3] = &unk_100382908;
        v37 = v23;
        v38 = buf;
        [databaseStore modifyUsingTransaction:v36];

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
            v43 = accountID;
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

  if ([messageCopy actionType] == 32)
  {
    getRevokedProductsMap = [messageCopy getRevokedProductsMap];
    v8 = getRevokedProductsMap;
    if (getRevokedProductsMap)
    {
      allKeys = [getRevokedProductsMap allKeys];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100065314;
      v32[3] = &unk_1003826D0;
      v8 = v8;
      v33 = v8;
      selfCopy = self;
      v35 = accountID;
      [allKeys enumerateObjectsUsingBlock:v32];
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

- (id)messageInfoForClient:(id)client messageType:(id)type
{
  clientCopy = client;
  typeCopy = type;
  if ([clientCopy objc_clientType] == 3)
  {
    ams_DSID = &off_1003A14C8;
  }

  else
  {
    account = [clientCopy account];
    ams_DSID = [account ams_DSID];

    if (!ams_DSID)
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
  databaseStore = [(StoreKitMessagesManager *)self databaseStore];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100065620;
  v20 = &unk_100382930;
  v24 = &v25;
  v11 = ams_DSID;
  v21 = v11;
  v12 = clientCopy;
  v22 = v12;
  v23 = typeCopy;
  [databaseStore readUsingSession:&v17];

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
      requestBundleID = [v12 requestBundleID];
      *buf = 138478083;
      v32 = v11;
      v33 = 2114;
      v34 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No message in database for DSID: %{private}@, bundle ID: %{public}@", buf, 0x16u);
    }

    v13 = v26[5];
  }

  ams_DSID = v13;

  _Block_object_dispose(&v25, 8);
LABEL_11:

  return ams_DSID;
}

- (id)revocationsForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy objc_clientType] == 3)
  {
    ams_DSID = +[OctaneManager testAccountID];
    if (ams_DSID)
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
      databaseStore = [(StoreKitMessagesManager *)self databaseStore];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100065AC4;
      v24[3] = &unk_100382958;
      v27 = &v28;
      v7 = ams_DSID;
      v25 = v7;
      v8 = clientCopy;
      v26 = v8;
      [databaseStore readUsingSession:v24];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100065B54;
      v21[3] = &unk_100382980;
      v9 = v7;
      v22 = v9;
      v10 = v8;
      v23 = v10;
      [databaseStore modifyUsingTransaction:v21];
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
          requestBundleID = [v10 requestBundleID];
          *buf = 138478083;
          v41 = v9;
          v42 = 2114;
          v43 = requestBundleID;
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
    account = [clientCopy account];
    ams_DSID = [account ams_DSID];

    if (ams_DSID)
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
    sub_1002D0584(v15, clientCopy);
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (void)revokeProductIdentifiers:(id)identifiers forBundleID:(id)d accountID:(id)iD
{
  identifiersCopy = identifiers;
  dCopy = d;
  iDCopy = iD;
  databaseStore = [(StoreKitMessagesManager *)self databaseStore];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100065D64;
  v17[3] = &unk_1003829F8;
  v12 = identifiersCopy;
  v18 = v12;
  v13 = iDCopy;
  v19 = v13;
  v14 = dCopy;
  v20 = v14;
  [databaseStore modifyUsingTransaction:v17];

  v15 = +[OctaneManager testAccountID];
  LODWORD(dCopy) = [v13 isEqualToNumber:v15];

  if (dCopy)
  {
    v16 = [StoreKitServiceConnection octaneConnectionForBundleID:v14];
    [v16 checkForMessages];
  }
}

- (void)appDidLaunchWithBundleID:(id)d
{
  dCopy = d;
  v5 = [(StoreKitMessagesManager *)self _storeKitConnectionForBundleID:dCopy];
  v6 = v5;
  if (v5)
  {
    client = [v5 client];
    objc_clientType = [client objc_clientType];

    if (objc_clientType == 1)
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
    v11 = dCopy;
    dispatch_async(accountObserverQueue, v10);
  }
}

- (void)handleAppInstallWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[ActiveAccountObserver activeAccount];
  v5 = v4;
  if (v4)
  {
    ams_DSID = [v4 ams_DSID];

    if (ams_DSID)
    {
      v7 = [(StoreKitMessagesManager *)self _bundleIDsWithMessagesInBundleIDs:dsCopy account:v5];
      [(StoreKitAppLaunchObserver *)self->_observer observeAppLaunchForBundleIDs:v7];
    }
  }
}

- (id)_bundleIDsWithMessagesForAccount:(id)account
{
  accountCopy = account;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100064B48;
  v16 = sub_100064B58;
  v17 = objc_alloc_init(NSArray);
  ams_DSID = [accountCopy ams_DSID];

  if (ams_DSID)
  {
    databaseStore = [(StoreKitMessagesManager *)self databaseStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100066334;
    v9[3] = &unk_100382A20;
    v11 = &v12;
    v10 = accountCopy;
    [databaseStore readUsingSession:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_accountHasMessagesForBundleID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  ams_DSID = [dCopy ams_DSID];

  if (ams_DSID)
  {
    databaseStore = [(StoreKitMessagesManager *)self databaseStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000664F8;
    v12[3] = &unk_100382958;
    v15 = &v16;
    v13 = dCopy;
    v14 = iDCopy;
    [databaseStore readUsingSession:v12];
  }

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_bundleIDsWithMessagesInBundleIDs:(id)ds account:(id)account
{
  dsCopy = ds;
  accountCopy = account;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100064B48;
  v20 = sub_100064B58;
  v21 = objc_alloc_init(NSArray);
  ams_DSID = [accountCopy ams_DSID];

  if (ams_DSID)
  {
    databaseStore = [(StoreKitMessagesManager *)self databaseStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100066708;
    v12[3] = &unk_100382958;
    v15 = &v16;
    v13 = dsCopy;
    v14 = accountCopy;
    [databaseStore readUsingSession:v12];
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)_storeKitConnectionForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
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
    v8 = dCopy;
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

- (void)_displayMessageForProdAccount:(id)account bundleID:(id)d
{
  accountCopy = account;
  dCopy = d;
  if (dCopy)
  {
    v8 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:dCopy error:0];
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
    ams_DSID = [v3 ams_DSID];

    v3 = v6;
    if (ams_DSID)
    {
      v5 = [(StoreKitMessagesManager *)self _bundleIDsWithMessagesForAccount:v6];
      [(StoreKitAppLaunchObserver *)self->_observer observeAppLaunchForBundleIDs:v5];

      v3 = v6;
    }
  }
}

- (void)_presentEngagementTaskWithURL:(id)l client:(id)client
{
  lCopy = l;
  clientCopy = client;
  if (qword_1003D46F8 != -1)
  {
    sub_1002D04C4();
  }

  v8 = qword_1003D46B8;
  if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Opening message URL: %{public}@", buf, 0x16u);
  }

  account = [clientCopy account];
  v10 = objc_alloc_init(AMSEngagementRequest);
  [v10 setURL:lCopy];
  if (account)
  {
    [v10 setAccount:account];
  }

  v21[0] = @"refApp";
  requestBundleID = [clientCopy requestBundleID];
  v21[1] = @"app";
  v22[0] = requestBundleID;
  v22[1] = @"com.apple.AppStore";
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v10 setMetricsOverlay:v12];

  v13 = [[AMSSystemEngagementTask alloc] initWithRequest:v10];
  processInfo = [clientCopy processInfo];
  [v13 setClientInfo:processInfo];

  v15 = [clientCopy bag];
  [v13 setBag:v15];

  showMessageQueue = self->_showMessageQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100066E94;
  v18[3] = &unk_10037F868;
  v19 = v13;
  selfCopy2 = self;
  v17 = v13;
  dispatch_async(showMessageQueue, v18);
}

- (void)_accountDidChange:(id)change
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

- (void)_recordPotentialMessageWithURL:(id)l type:(int64_t)type allowsDeveloperControl:(BOOL)control client:(id)client
{
  if (l)
  {
    if (control)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }

    [(StoreKitMessagesManager *)self recordMessageDisplayEventWithType:v6 messageType:type client:client];
  }
}

- (void)_showMessage:(id)message forClient:(id)client messageType:(int64_t)type useItmsUI:(BOOL)i
{
  iCopy = i;
  messageCopy = message;
  clientCopy = client;
  v12 = [NSNumber numberWithInteger:type];
  v13 = [(StoreKitMessagesManager *)self messageInfoForClient:clientCopy messageType:v12];

  if (v13)
  {
    account = [clientCopy account];
    if ([clientCopy objc_clientType] != 3)
    {
      if (iCopy)
      {
        v15 = [NSURLComponents componentsWithURL:messageCopy resolvingAgainstBaseURL:0];
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
            selfCopy = self;
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
        if ([clientCopy objc_clientType] == 3)
        {
          ams_DSID = &off_1003A14C8;
        }

        else
        {
          ams_DSID = [account ams_DSID];
          if (!ams_DSID)
          {
            v22 = ASDErrorWithDescription();
            if (v22)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        requestBundleID = [clientCopy requestBundleID];
        v22 = [(StoreKitMessagesManager *)self _removeStoreKitMessageForAccount:ams_DSID bundleID:requestBundleID type:type logKey:0];

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
            requestBundleID2 = [clientCopy requestBundleID];
            v26 = 138543874;
            selfCopy = v22;
            v28 = 2112;
            v29 = ams_DSID;
            v30 = 2112;
            v31 = requestBundleID2;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing message info: %{public}@ for DSID: %@, bundle ID: %@", &v26, 0x20u);
          }
        }

LABEL_33:

        goto LABEL_34;
      }

      if (!account)
      {
        if (qword_1003D46F8 != -1)
        {
          sub_1002D04C4();
        }

        v19 = qword_1003D46B8;
        if (os_log_type_enabled(qword_1003D46B8, OS_LOG_TYPE_ERROR))
        {
          sub_1002D07E0(v19, clientCopy);
        }
      }
    }

    [(StoreKitMessagesManager *)self _presentEngagementTaskWithURL:messageCopy client:clientCopy];
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

- (id)_removeStoreKitMessageForAccount:(id)account bundleID:(id)d type:(int64_t)type logKey:(id)key
{
  accountCopy = account;
  dCopy = d;
  keyCopy = key;
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
    v32 = keyCopy;
    v33 = 2114;
    v34 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Removing message info for %{public}@", buf, 0x16u);
  }

  if (accountCopy && dCopy)
  {
    databaseStore = [(StoreKitMessagesManager *)self databaseStore];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100067810;
    v20[3] = &unk_100382A70;
    v21 = accountCopy;
    v22 = dCopy;
    v23 = &v25;
    typeCopy = type;
    [databaseStore modifyUsingTransaction:v20];
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
      v32 = keyCopy;
      v33 = 2114;
      v34 = dCopy;
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

- (void)recordMessageDisplayEventWithType:(int64_t)type messageType:(int64_t)messageType client:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_1001BF9B0(type, messageType, client);
}

- (void)checkForMessagesForClient:(id)client remoteObjectProxy:(id)proxy xpcConnection:(id)connection
{
  clientCopy = client;
  swift_unknownObjectRetain();
  connectionCopy = connection;
  selfCopy = self;
  sub_1001BFCB0();

  swift_unknownObjectRelease();
}

- (void)displayMessageWithType:(id)type forClient:(id)client connection:(id)connection
{
  typeCopy = type;
  clientCopy = client;
  connectionCopy = connection;
  selfCopy = self;
  sub_1001C0320();
}

- (void)askToShowMessageForClient:(id)client message:(id)message pendingURL:(id)l connection:(id)connection
{
  v11 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  if (l)
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
  clientCopy = client;
  messageCopy = message;
  connectionCopy = connection;
  selfCopy = self;
  sub_1001C1B60();

  sub_10013B1E8(v13, &unk_1003D0540);
}

- (void)displayMessageForMessageInfo:(id)info client:(id)client
{
  infoCopy = info;
  clientCopy = client;
  selfCopy = self;
  sub_1001C2B7C();
}

@end