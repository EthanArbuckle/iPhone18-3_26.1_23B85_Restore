@interface StoreKitServiceConnection
+ (id)allConnections;
+ (id)connectionForClient:(id)client;
+ (id)octaneConnectionForBundleID:(id)d;
+ (int64_t)_apiVersionForClientDict:(id)dict;
+ (void)initialize;
- (StoreKitServiceConnection)initWithConnection:(id)connection remoteObject:(id)object pid:(int)pid;
- (id)_bundleURLForConnection:(id)connection;
- (id)_offerCodeRedemptionURLForClient:(id)client;
- (id)_processDownloadsForTransactions:(id)transactions;
- (void)_handleTokenFamily:(id)family bundleID:(id)d reply:(id)reply;
- (void)_processPayment:(id)payment excludeReceipt:(BOOL)receipt privacyAcknowledgementRequired:(BOOL)required forClient:(id)client apiVersion:(int64_t)version paymentDelegate:(id)delegate dialogDelegate:(id)dialogDelegate isProcessingInterruptedBuy:(BOOL)self0 reply:(id)self1;
- (void)addDownloadWithID:(id)d;
- (void)appTransactionForClient:(id)client ignoreCache:(BOOL)cache reply:(id)reply;
- (void)arcadeSubscriptionStatusWithNonce:(unint64_t)nonce resultHandler:(id)handler;
- (void)authenticateAndSyncTransactionsAndStatusWithReply:(id)reply;
- (void)canMakePaymentsWithReply:(id)reply;
- (void)cancelDownloadWithID:(id)d;
- (void)checkForMessages;
- (void)checkServerQueueForClientIfNecessary:(id)necessary forceCheck:(BOOL)check reply:(id)reply;
- (void)checkServerQueueForQueue:(id)queue withClient:(id)client;
- (void)dealloc;
- (void)deleteContentForProductID:(id)d;
- (void)displayMessageWithType:(id)type;
- (void)downloadManager:(id)manager updatedStatus:(id)status;
- (void)endAdImpressionWithConfig:(id)config completionHandler:(id)handler;
- (void)engagementRequestForOfferCodeRedemptionSheetWithReply:(id)reply;
- (void)enumerateCurrentReceiptsForClient:(id)client productID:(id)d withReceiver:(id)receiver skipTransactionSync:(BOOL)sync reply:(id)reply;
- (void)enumerateReceiptsForClient:(id)client productID:(id)d withReceiver:(id)receiver skipTransactionSync:(BOOL)sync reply:(id)reply;
- (void)enumerateSubscriptionStatusesForClient:(id)client withReceiver:(id)receiver skipStatusSync:(BOOL)sync reply:(id)reply;
- (void)enumerateUnfinishedTransactionsForClient:(id)client withReceiver:(id)receiver skipTransactionSync:(BOOL)sync reply:(id)reply;
- (void)executeAppTransactionQuery:(id)query withReceiver:(id)receiver ignoreCache:(BOOL)cache reply:(id)reply;
- (void)finishPaymentWithIdentifier:(id)identifier reply:(id)reply;
- (void)handleInvalidReceipt:(id)receipt;
- (void)insertMessageForBundleID:(id)d status:(int64_t)status type:(int64_t)type allowDeveloperControl:(BOOL)control environment:(int64_t)environment reply:(id)reply;
- (void)invalidateTransactionsAndStatusCacheWithReply:(id)reply;
- (void)isEligibleForIntroductoryOfferForGroupID:(id)d reply:(id)reply;
- (void)isXcodeTestAppWithReply:(id)reply;
- (void)loadUnfinishedTransactionsWithLogKey:(id)key completion:(id)completion;
- (void)lookUpItemIDsForDeletableSystemAppsWithBundleIDs:(id)ds reply:(id)reply;
- (void)notifyOfRevokedProductIdentifiers:(id)identifiers reply:(id)reply;
- (void)pauseDownloadWithID:(id)d;
- (void)performPurchase:(id)purchase authDelegate:(id)delegate reply:(id)reply;
- (void)presentCodeRedemptionSheet;
- (void)presentRefundRequestSheetForTransactionID:(id)d sceneID:(id)iD reply:(id)reply;
- (void)processPayment:(id)payment forClient:(id)client paymentDelegate:(id)delegate reply:(id)reply;
- (void)processPaymentWithBuyParamsString:(id)string reply:(id)reply;
- (void)promotionInfoForProductIdentifiers:(id)identifiers client:(id)client reply:(id)reply;
- (void)receivedTransactions:(id)transactions;
- (void)refundRequestForTransactionId:(id)id replyBlock:(id)block;
- (void)registerArcadeAppWithRandomFromLib:(id)lib randomFromLibLength:(unsigned int)length resultHandler:(id)handler;
- (void)registerForInstallAttribution;
- (void)renewReceiptWithOptions:(id)options client:(id)client replyBlock:(id)block;
- (void)repairArcadeApp;
- (void)requestProductReviewWithInterfaceOrientation:(unint64_t)orientation bundleIdentifier:(id)identifier sceneID:(id)d replyBlock:(id)block;
- (void)restoreCompletedTransactionsForUsername:(id)username client:(id)client reply:(id)reply;
- (void)resumeDownloadWithID:(id)d;
- (void)setPromotionInfo:(id)info forClient:(id)client reply:(id)reply;
- (void)startAdImpressionWithConfig:(id)config completionHandler:(id)handler;
- (void)statusForClient:(id)client subscriptionGroupID:(id)d skipStatusSync:(BOOL)sync reply:(id)reply;
- (void)statusForClient:(id)client transactionID:(id)d skipStatusSync:(BOOL)sync reply:(id)reply;
- (void)transactionForID:(id)d client:(id)client skipTransactionSync:(BOOL)sync reply:(id)reply;
- (void)updateConversionValue:(id)value;
- (void)updateConversionValue:(id)value coarseValue:(id)coarseValue lockWindow:(BOOL)window completionHandler:(id)handler;
- (void)updateConversionValue:(id)value completionHandler:(id)handler;
- (void)updateTransactions:(id)transactions forClient:(id)client;
- (void)xcodeTestCertificatesShouldSimulateRevocationWithReply:(id)reply;
- (void)xcodeTestCertificatesWithReply:(id)reply;
- (void)xcodeTestServerPortWithReplyBlock:(id)block;
@end

@implementation StoreKitServiceConnection

+ (void)initialize
{
  v2 = objc_alloc_init(NSLock);
  v3 = qword_1003D4150;
  qword_1003D4150 = v2;

  qword_1003D4158 = +[NSHashTable weakObjectsHashTable];

  _objc_release_x1();
}

+ (id)allConnections
{
  [qword_1003D4150 lock];
  allObjects = [qword_1003D4158 allObjects];
  [qword_1003D4150 unlock];

  return allObjects;
}

+ (id)connectionForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy storeItemID] && objc_msgSend(clientCopy, "storeExternalVersionID"))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = +[StoreKitServiceConnection allConnections];
    v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          client = [v9 client];
          storeItemID = [client storeItemID];
          if (storeItemID == [clientCopy storeItemID])
          {
            client2 = [v9 client];
            storeExternalVersionID = [client2 storeExternalVersionID];
            storeExternalVersionID2 = [clientCopy storeExternalVersionID];

            if (storeExternalVersionID == storeExternalVersionID2)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v6);
    }
  }

  else
  {
    callerBundleID = [clientCopy callerBundleID];
    v16 = [callerBundleID length];

    if (!v16)
    {
      goto LABEL_27;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = +[StoreKitServiceConnection allConnections];
    v17 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      while (2)
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v26 + 1) + 8 * j);
          client3 = [v9 client];
          callerBundleID2 = [client3 callerBundleID];
          callerBundleID3 = [clientCopy callerBundleID];
          v24 = [callerBundleID2 isEqualToString:callerBundleID3];

          if (v24)
          {
LABEL_25:
            v16 = v9;
            goto LABEL_26;
          }
        }

        v18 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = 0;
LABEL_26:

LABEL_27:

  return v16;
}

+ (id)octaneConnectionForBundleID:(id)d
{
  dCopy = d;
  [qword_1003D4150 lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = qword_1003D4158;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        client = [v8 client];
        requestBundleID = [client requestBundleID];
        if ([requestBundleID isEqualToString:dCopy])
        {
          client2 = [v8 client];
          objc_clientType = [client2 objc_clientType];

          if (objc_clientType == 3)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

LABEL_12:

  [qword_1003D4150 unlock];

  return v5;
}

- (StoreKitServiceConnection)initWithConnection:(id)connection remoteObject:(id)object pid:(int)pid
{
  connectionCopy = connection;
  objectCopy = object;
  v44.receiver = self;
  v44.super_class = StoreKitServiceConnection;
  v11 = [(StoreKitServiceConnection *)&v44 init];
  if (v11)
  {
    v12 = objc_opt_new();
    downloadIDs = v11->_downloadIDs;
    v11->_downloadIDs = v12;

    v11->_pid = pid;
    objc_storeStrong(&v11->_remoteObject, object);
    objc_storeStrong(&v11->_xpcConnection, connection);
    sk_processName = [connectionCopy sk_processName];
    v15 = [[_TtC9storekitd6Client alloc] initWithConnection:connectionCopy overridesDictionary:0];
    v16 = &off_1003CB000;
    if (v15)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v17 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = v19;
        callerBundleID = [(Client *)v15 callerBundleID];
        objc_clientType = [(Client *)v15 objc_clientType];
        *buf = 138543874;
        v46 = v19;
        v47 = 2114;
        pidCopy = callerBundleID;
        v49 = 2048;
        v50 = objc_clientType;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ client type: %ld", buf, 0x20u);

        v16 = &off_1003CB000;
      }

      v23 = +[NSUUID lib_shortLogKey];
      [_TtC9storekitd19objc_AccountManager primeTestFlightAccountWithClient:v15 logKey:v23 completionHandler:&stru_1003818E8];
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v24 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v46 = sk_processName;
        v47 = 2048;
        pidCopy = pid;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No StoreKitClient available for %{public}@[%ld]", buf, 0x16u);
      }
    }

    v25 = +[InAppDownloadManager manager];
    v26 = [v25 addDownloadObserver:v11];

    objc_storeStrong(&v11->_client, v15);
    v27 = objc_alloc_init(NSOperationQueue);
    finishPaymentQueue = v11->_finishPaymentQueue;
    v11->_finishPaymentQueue = v27;

    [(NSOperationQueue *)v11->_finishPaymentQueue setMaxConcurrentOperationCount:5];
    v29 = objc_alloc_init(NSOperationQueue);
    paymentQueue = v11->_paymentQueue;
    v11->_paymentQueue = v29;

    [(NSOperationQueue *)v11->_paymentQueue setMaxConcurrentOperationCount:1];
    v31 = objc_alloc_init(NSOperationQueue);
    appTerminationQueue = v11->_appTerminationQueue;
    v11->_appTerminationQueue = v31;

    [(NSOperationQueue *)v11->_appTerminationQueue setMaxConcurrentOperationCount:1];
    v33 = objc_alloc_init(NSOperationQueue);
    productLookupQueue = v11->_productLookupQueue;
    v11->_productLookupQueue = v33;

    [(NSOperationQueue *)v11->_productLookupQueue setMaxConcurrentOperationCount:1];
    v35 = dispatch_queue_create("com.apple.appstored.StoreKit.MessageQueue", 0);
    messageQueue = v11->_messageQueue;
    v11->_messageQueue = v35;

    v37 = dispatch_queue_create("com.apple.storekitd.ProductPromotions", 0);
    productPromotionsQueue = v11->_productPromotionsQueue;
    v11->_productPromotionsQueue = v37;

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v39 = v16[159];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = v39;
      sk_allowClientOverride = [connectionCopy sk_allowClientOverride];
      v42 = @"NO";
      if (sk_allowClientOverride)
      {
        v42 = @"YES";
      }

      *buf = 138543618;
      v46 = v11;
      v47 = 2114;
      pidCopy = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@: Allows client override: %{public}@", buf, 0x16u);
    }
  }

  [qword_1003D4150 lock];
  [qword_1003D4158 addObject:v11];
  [qword_1003D4150 unlock];

  return v11;
}

- (void)dealloc
{
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CB548();
  }

  [qword_1003D4150 lock];
  [qword_1003D4158 removeObject:self];
  [qword_1003D4150 unlock];
  v3.receiver = self;
  v3.super_class = StoreKitServiceConnection;
  [(StoreKitServiceConnection *)&v3 dealloc];
}

- (void)loadUnfinishedTransactionsWithLogKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v8 = [LoadUnfinishedInAppTransactionsTask alloc];
  client = [(StoreKitServiceConnection *)self client];
  v10 = [(LoadUnfinishedInAppTransactionsTask *)v8 initWithClient:client];

  [(LoadUnfinishedInAppTransactionsTask *)v10 setLogKey:keyCopy];
  [(LoadUnfinishedInAppTransactionsTask *)v10 setForceServerCheck:1];
  objc_initWeak(&location, v10);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10003C0F4;
  v16 = &unk_100381910;
  objc_copyWeak(&v19, &location);
  v11 = keyCopy;
  v17 = v11;
  v12 = completionCopy;
  v18 = v12;
  [(LoadUnfinishedInAppTransactionsTask *)v10 setCompletionBlock:&v13];
  [(NSOperationQueue *)self->_paymentQueue addOperation:v10, v13, v14, v15, v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)checkServerQueueForQueue:(id)queue withClient:(id)client
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003C270;
  v7[3] = &unk_100381938;
  queueCopy = queue;
  selfCopy = self;
  v6 = queueCopy;
  [(StoreKitServiceConnection *)self checkServerQueueForClientIfNecessary:client forceCheck:1 reply:v7];
}

- (void)checkServerQueueForClientIfNecessary:(id)necessary forceCheck:(BOOL)check reply:(id)reply
{
  checkCopy = check;
  necessaryCopy = necessary;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v10 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v30 = 2082;
    v31 = "[StoreKitServiceConnection checkServerQueueForClientIfNecessary:forceCheck:reply:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v11 = +[NSXPCConnection currentConnection];
  client = [(StoreKitServiceConnection *)self client];
  if ([client objc_clientType] == 3)
  {
    sk_connectionIsOctaneService = [v11 sk_connectionIsOctaneService];

    if (sk_connectionIsOctaneService)
    {
LABEL_18:
      client2 = [(StoreKitServiceConnection *)self client];
      goto LABEL_19;
    }
  }

  else
  {
  }

  if ([v11 sk_allowClientOverride])
  {
    v14 = necessaryCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  client2 = [[_TtC9storekitd6Client alloc] initWithConnection:v11 overridesDictionary:v15];

  if (!client2)
  {
    client3 = [(StoreKitServiceConnection *)self client];
    v18 = [client3 objc_clientType] == 3;

    if (!v18)
    {
      client2 = 0;
      goto LABEL_28;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB674();
    }

    goto LABEL_18;
  }

LABEL_19:
  if (client2)
  {
    if ([(Client *)client2 isClip])
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
      {
        sub_1002CB6E8();
      }

      v19 = ASDErrorWithDescription();
      replyCopy[2](replyCopy, 0, v19);
    }

    else
    {
      v19 = [[LoadUnfinishedInAppTransactionsTask alloc] initWithClient:client2];
      [(LoadUnfinishedInAppTransactionsTask *)v19 setForceServerCheck:checkCopy];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v19);
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10003C80C;
      v23 = &unk_100381960;
      objc_copyWeak(&v25, &location);
      objc_copyWeak(&v26, buf);
      v24 = replyCopy;
      [(LoadUnfinishedInAppTransactionsTask *)v19 setCompletionBlock:&v20];
      [(NSOperationQueue *)self->_paymentQueue addOperation:v19, v20, v21, v22, v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    goto LABEL_33;
  }

LABEL_28:
  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
  {
    sub_1002CB750();
  }

  v19 = ASDErrorWithTitleAndMessage();
  replyCopy[2](replyCopy, 0, v19);
LABEL_33:
}

- (void)receivedTransactions:(id)transactions
{
  transactionsCopy = transactions;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2082;
    v10 = "[StoreKitServiceConnection receivedTransactions:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v7, 0x16u);
  }

  if ([transactionsCopy count])
  {
    v6 = [(StoreKitServiceConnection *)self _processDownloadsForTransactions:transactionsCopy];
    [(SKClientProtocol *)self->_remoteObject updatedTransactions:v6];
  }
}

- (void)updateTransactions:(id)transactions forClient:(id)client
{
  transactionsCopy = transactions;
  clientCopy = client;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy = self;
    v16 = 2082;
    v17 = "[StoreKitServiceConnection updateTransactions:forClient:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v14, 0x16u);
  }

  v9 = +[NSXPCConnection currentConnection];
  sk_allowClientOverride = [v9 sk_allowClientOverride];

  if (sk_allowClientOverride)
  {
    v11 = [clientCopy objectForKey:off_1003CAEA0];
    if (v11)
    {
      v12 = [[_TtC9storekitd6Client alloc] initWithAuditTokenData:v11];
      v13 = [StoreKitServiceConnection connectionForClient:v12];
      if (v13 && [transactionsCopy count])
      {
        [v13 receivedTransactions:transactionsCopy];
      }
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CB820();
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB7B8();
    }
  }
}

- (void)insertMessageForBundleID:(id)d status:(int64_t)status type:(int64_t)type allowDeveloperControl:(BOOL)control environment:(int64_t)environment reply:(id)reply
{
  controlCopy = control;
  dCopy = d;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v15 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v31 = 2082;
    v32 = "[StoreKitServiceConnection insertMessageForBundleID:status:type:allowDeveloperControl:environment:reply:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v16 = +[NSXPCConnection currentConnection];
  sk_allowClientOverride = [v16 sk_allowClientOverride];

  if ((sk_allowClientOverride & 1) == 0)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB888();
    }

    goto LABEL_23;
  }

  if (environment == 1)
  {
    v18 = &AMSAccountMediaTypeProduction;
    goto LABEL_17;
  }

  if (environment != 3)
  {
    if (environment != 2)
    {
LABEL_19:
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CB8F0();
      }

LABEL_23:
      ams_DSID = ASDErrorWithTitleAndMessage();
      replyCopy[2](replyCopy, ams_DSID);
      goto LABEL_24;
    }

    v18 = &AMSAccountMediaTypeAppStoreSandbox;
LABEL_17:
    v20 = [ACAccountStore ams_sharedAccountStoreForMediaType:*v18];
    ams_activeiTunesAccount = [v20 ams_activeiTunesAccount];

    ams_DSID = [ams_activeiTunesAccount ams_DSID];

    if (ams_DSID)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  ams_DSID = &off_1003A1468;
LABEL_18:
  v22 = +[StoreKitMessagesManager sharedManager];
  v23 = [NSNumber numberWithInteger:status];
  v28 = 0;
  [v22 addMessageStatus:v23 forBundleID:dCopy accountID:ams_DSID allowDeveloperControl:controlCopy messageType:v27 error:&v28];
  v24 = v28;

  v25 = [v24 toASDErrorWithMetadata:0];

  replyCopy[2](replyCopy, v25);
LABEL_24:
}

- (void)processPaymentWithBuyParamsString:(id)string reply:(id)reply
{
  stringCopy = string;
  replyCopy = reply;
  v8 = +[NSUUID lib_shortLogKey];
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v9 = qword_1003CB510;
  if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v60 = 2114;
    v61 = v8;
    v62 = 2082;
    v63 = "[StoreKitServiceConnection processPaymentWithBuyParamsString:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] %{public}s", buf, 0x20u);
  }

  if ([(StoreKitServiceConnection *)stringCopy length])
  {
    v10 = +[NSXPCConnection currentConnection];
    sk_allowClientOverride = [v10 sk_allowClientOverride];

    if (sk_allowClientOverride)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      selfCopy2 = self;
      v12 = qword_1003CB510;
      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = v8;
        v60 = 2114;
        v61 = stringCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing buyParams %{public}@", buf, 0x16u);
      }

      v13 = [AMSBuyParams buyParamsWithString:stringCopy];
      dictionary = [v13 dictionary];
      v15 = [dictionary tcr_numberForKey:@"appAdamId"];

      dictionary2 = [v13 dictionary];
      v46 = [dictionary2 tcr_numberForKey:AMSBuyParamPropertyAppExtVrsId];

      v17 = [v13 parameterForKey:@"bid"];
      v18 = [v13 parameterForKey:AMSBuyParamPropertyBundleVersion];
      v19 = [v13 parameterForKey:@"vendorName"];
      stringByRemovingPercentEncoding = [v19 stringByRemovingPercentEncoding];

      [v13 setObject:0 forKeyedSubscript:@"vendorName"];
      v56 = @"buyParams";
      v57 = v13;
      v47 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      if ([(StoreKitServiceConnection *)v17 length])
      {
        v20 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v17 allowPlaceholder:0 error:0];
      }

      else
      {
        v20 = 0;
      }

      if (!v20 && v15)
      {
        v20 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v15 error:{"longLongValue"), 0}];
      }

      v48 = v20;
      if (v20)
      {
        v21 = [_TtC9storekitd6Client alloc];
        v22 = [(Client *)v20 URL];
        v20 = [(Client *)v21 initWithURL:v22 overridesDictionary:0];
      }

      if (v20)
      {
        v23 = 1;
      }

      else
      {
        v23 = v15 == 0;
      }

      v24 = !v23;
      if (v23)
      {
        v45 = 0;
        if (!v20)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (![(StoreKitServiceConnection *)v17 length])
        {
          v45 = 0;
          goto LABEL_60;
        }

        v25 = v48;
        if (![stringByRemovingPercentEncoding length])
        {
          v45 = 0;
          goto LABEL_62;
        }

        v42 = v24;
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        v26 = qword_1003CB510;
        if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy = v8;
          v60 = 2114;
          v61 = v17;
          v62 = 2114;
          v63 = v15;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] App is not installed for %{public}@(%{public}@). Creating client with overrides.", buf, 0x20u);
        }

        v40 = +[NSXPCConnection currentConnection];
        v27 = objc_opt_new();
        [v27 setObject:v17 forKeyedSubscript:off_1003CAEA8];
        if ([(__CFString *)v18 length])
        {
          v28 = v18;
        }

        else
        {
          v28 = @"1.0";
        }

        [v27 setObject:v28 forKeyedSubscript:off_1003CAEB0];
        v41 = v15;
        [v27 setObject:v15 forKeyedSubscript:off_1003CAED8];
        [v27 setObject:v46 forKeyedSubscript:off_1003CAED0];
        [v27 setObject:&off_1003A1480 forKeyedSubscript:off_1003CAEC0];
        v39 = +[LSApplicationWorkspace defaultWorkspace];
        v29 = [v39 createDeviceIdentifierWithVendorName:stringByRemovingPercentEncoding bundleIdentifier:v17];
        v45 = v29 != 0;
        if (v29)
        {
          if (qword_1003D4160 != -1)
          {
            sub_1002CB50C();
          }

          v30 = qword_1003CB510;
          if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            uUIDString = [v29 UUIDString];
            *buf = 138543619;
            selfCopy = v8;
            v60 = 2113;
            v61 = uUIDString;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Generated VID for purchase %{private}@", buf, 0x16u);
          }

          [v27 setObject:v29 forKeyedSubscript:off_1003CAEE0];
        }

        v20 = [[_TtC9storekitd6Client alloc] initWithConnection:v40 overridesDictionary:v27];

        v15 = v41;
        v24 = v42;
        if (!v20)
        {
LABEL_60:
          v25 = v48;
LABEL_62:
          if (qword_1003D4160 != -1)
          {
            sub_1002CB50C();
          }

          if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
          {
            sub_1002CB9C0();
          }

          v36 = ASDErrorWithTitleAndMessage();
          replyCopy[2](replyCopy, 0, v36);

          if (!v45)
          {
            goto LABEL_73;
          }

          if (qword_1003D4160 != -1)
          {
            sub_1002CB50C();
          }

          v37 = qword_1003CB510;
          if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy = v8;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Releasing VID for failed purchase", buf, 0xCu);
          }

          v20 = +[LSApplicationWorkspace defaultWorkspace];
          [(Client *)v20 removeDeviceIdentifierForVendorName:stringByRemovingPercentEncoding bundleIdentifier:v17];
LABEL_72:

          v25 = v48;
LABEL_73:

          goto LABEL_74;
        }
      }

      v43 = v24;
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v33 = qword_1003CB510;
      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        stringValue = [v13 stringValue];
        *buf = 138543618;
        selfCopy = v8;
        v60 = 2114;
        v61 = stringValue;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing payment with buyParams %{public}@", buf, 0x16u);
      }

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10003D86C;
      v50[3] = &unk_100381988;
      v51 = v8;
      v52 = v17;
      v55 = v45;
      v53 = stringByRemovingPercentEncoding;
      v54 = replyCopy;
      LOBYTE(v38) = 1;
      [(StoreKitServiceConnection *)selfCopy2 _processPayment:v47 excludeReceipt:v43 privacyAcknowledgementRequired:0 forClient:v20 apiVersion:1 paymentDelegate:0 dialogDelegate:0 isProcessingInterruptedBuy:v38 reply:v50];

      goto LABEL_72;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB958();
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBA34();
    }
  }

  v13 = ASDErrorWithDescription();
  replyCopy[2](replyCopy, 0, v13);
LABEL_74:
}

- (void)processPayment:(id)payment forClient:(id)client paymentDelegate:(id)delegate reply:(id)reply
{
  paymentCopy = payment;
  clientCopy = client;
  delegateCopy = delegate;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v14 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v56 = 2082;
    v57 = "[StoreKitServiceConnection processPayment:forClient:paymentDelegate:reply:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v15 = +[NSXPCConnection currentConnection];
  if ([v15 sk_allowClientOverride])
  {
    v16 = clientCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 objectForKey:off_1003CAEA0];
  v19 = [_TtC9storekitd6Client alloc];
  if (v18)
  {
    v20 = [(Client *)v19 initWithAuditTokenData:v18];
    v21 = 0;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = [(Client *)v19 initWithConnection:v15 overridesDictionary:v17];
    v21 = v17 != 0;
    if (v20)
    {
LABEL_10:
      v43 = v21;
      v48 = v18;
      v49 = v17;
      selfCopy2 = self;
      if ([v15 sk_allowClientOverride])
      {
        v22 = [paymentCopy objectForKeyedSubscript:off_1003CB1F8];
        if ([v22 length])
        {
          [v22 UTF8String];
          v46 = sandbox_extension_consume();
          if (v46 < 0)
          {
            if (qword_1003D4160 != -1)
            {
              sub_1002CB50C();
            }

            v23 = qword_1003CB510;
            if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
            {
              sub_1002CBB28(self, v23);
            }
          }
        }

        else
        {
          v46 = -1;
        }
      }

      else
      {
        v26 = [paymentCopy mutableCopy];
        [v26 setObject:0 forKeyedSubscript:off_1003CB160];
        [v26 setObject:0 forKeyedSubscript:off_1003CB200];
        [v26 setObject:0 forKeyedSubscript:off_1003CB1F0];
        [v26 setObject:0 forKeyedSubscript:off_1003CB130];
        [v26 setObject:0 forKeyedSubscript:@"buyParams"];
        [v26 setObject:0 forKeyedSubscript:off_1003CB208];
        [v26 setObject:0 forKeyedSubscript:off_1003CB218];
        [v26 setObject:0 forKeyedSubscript:off_1003CB210];
        v46 = -1;
        v22 = paymentCopy;
        paymentCopy = v26;
      }

      v25 = [paymentCopy tcr_dataForKey:off_1003CB1B8];
      if ([v25 length] && (objc_msgSend(v15, "sk_allowPaymentRequestData") & 1) == 0)
      {
        if (([paymentCopy tcr_BOOLForKey:off_1003CB158] & 1) == 0)
        {
          if (qword_1003D4160 != -1)
          {
            sub_1002CB50C();
          }

          v17 = v49;
          if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
          {
            sub_1002CBBB8();
          }

          v39 = ASDErrorWithDescription();
          replyCopy[2](replyCopy, 0, v39);
          goto LABEL_42;
        }

        v27 = [paymentCopy mutableCopy];
        [v27 setObject:0 forKeyedSubscript:off_1003CB1B8];

        paymentCopy = v27;
      }

      v45 = [paymentCopy tcr_dataForKey:off_1003CB1C8];
      if (v45 && ([v15 sk_allowAdvancedPurchase] & 1) == 0)
      {
        v28 = [paymentCopy mutableCopy];
        [v28 setObject:0 forKeyedSubscript:off_1003CB1C8];

        paymentCopy = v28;
      }

      if ([(Client *)v20 canMakePayments])
      {
        v29 = [StoreKitServiceConnection _apiVersionForClientDict:clientCopy];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10003E2C8;
        v51[3] = &unk_1003819B0;
        v53 = v46;
        v52 = replyCopy;
        LOBYTE(v40) = 0;
        [(StoreKitServiceConnection *)selfCopy2 _processPayment:paymentCopy excludeReceipt:v43 privacyAcknowledgementRequired:1 forClient:v20 apiVersion:v29 paymentDelegate:delegateCopy dialogDelegate:0 isProcessingInterruptedBuy:v40 reply:v51];
        v30 = v52;
      }

      else
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        v41 = replyCopy;
        v42 = delegateCopy;
        v44 = clientCopy;
        if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
        {
          sub_1002CBC20();
        }

        v31 = ASDLocalizedString();
        v32 = ASDLocalizedString();
        v30 = [AMSDialogRequest requestWithTitle:v31 message:v32];

        v33 = [_TtC9storekitd13DialogContext alloc];
        callerBundleID = [(Client *)v20 callerBundleID];
        callerBundleURL = [(Client *)v20 callerBundleURL];
        processInfo = [(Client *)v20 processInfo];
        v37 = [(DialogContext *)v33 initWithBundleID:callerBundleID bundleURL:callerBundleURL processInfo:processInfo dialogObserver:0];

        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10003E360;
        v50[3] = &unk_1003819D8;
        v50[4] = selfCopy2;
        [(DialogContext *)v37 handleDialogRequest:v30 completionHandler:v50];
        if (v46 >= 1)
        {
          sandbox_extension_release();
        }

        v38 = ASDErrorWithTitleAndMessage();
        v41[2](v41, 0, v38);

        replyCopy = v41;
        delegateCopy = v42;
        clientCopy = v44;
      }

      v17 = v49;
      v39 = v45;
LABEL_42:

      v24 = v48;
      goto LABEL_43;
    }
  }

  v24 = v18;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
  {
    sub_1002CBC88();
  }

  v25 = ASDErrorWithTitleAndMessage();
  replyCopy[2](replyCopy, 0, v25);
LABEL_43:
}

- (void)_processPayment:(id)payment excludeReceipt:(BOOL)receipt privacyAcknowledgementRequired:(BOOL)required forClient:(id)client apiVersion:(int64_t)version paymentDelegate:(id)delegate dialogDelegate:(id)dialogDelegate isProcessingInterruptedBuy:(BOOL)self0 reply:(id)self1
{
  requiredCopy = required;
  receiptCopy = receipt;
  paymentCopy = payment;
  clientCopy = client;
  delegateCopy = delegate;
  dialogDelegateCopy = dialogDelegate;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v19 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v75 = 2082;
    v76 = "[StoreKitServiceConnection _processPayment:excludeReceipt:privacyAcknowledgementRequired:forClient:apiVersion:paymentDelegate:dialogDelegate:isProcessingInterruptedBuy:reply:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  if ([clientCopy isClip])
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBD60();
    }

    v65 = ASDErrorWithDescription();
    (*(replyCopy + 2))(replyCopy, 0, 0, v65);
  }

  else
  {
    v65 = [paymentCopy objectForKeyedSubscript:@"buyParams"];
    v61 = [paymentCopy tcr_stringForKey:off_1003CB1A8];
    v20 = [paymentCopy tcr_unsignedLongLongForKey:off_1003CB1B0];
    if (v20)
    {
      v21 = v61 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21 || v65)
    {
      v24 = [InAppTransactionTask alloc];
      if (v65)
      {
        v23 = [(InAppTransactionTask *)v24 initWithBuyParams:v65 client:clientCopy apiVersion:version];
      }

      else
      {
        v23 = [(InAppTransactionTask *)v24 initWithProductIdentifier:v61 quantity:v20 client:clientCopy apiVersion:version];
        v25 = [paymentCopy tcr_dictionaryForKey:off_1003CB130];
        [(InAppTransactionTask *)v23 setAdditionalBuyParams:v25];
      }

      v26 = [paymentCopy tcr_stringForKey:off_1003CB138];
      [(InAppTransactionTask *)v23 setAdvancedCommerceData:v26];

      v27 = [paymentCopy tcr_stringForKey:off_1003CB148];
      [(InAppTransactionTask *)v23 setApplicationUsername:v27];

      v28 = [paymentCopy tcr_stringForKey:off_1003CB178];
      [(InAppTransactionTask *)v23 setDiscountIdentifier:v28];

      v29 = [paymentCopy tcr_stringForKey:off_1003CB180];
      [(InAppTransactionTask *)v23 setDiscountKeyIdentifier:v29];

      v30 = [paymentCopy tcr_stringForKey:off_1003CB188];
      [(InAppTransactionTask *)v23 setDiscountNonceString:v30];

      v31 = [paymentCopy tcr_stringForKey:off_1003CB190];
      [(InAppTransactionTask *)v23 setDiscountSignature:v31];

      v32 = [paymentCopy tcr_numberForKey:off_1003CB198];
      [(InAppTransactionTask *)v23 setDiscountTimestamp:v32];

      v33 = [paymentCopy tcr_dataForKey:off_1003CB1C8];
      [(InAppTransactionTask *)v23 setMetricsOverlayData:v33];

      v34 = [paymentCopy tcr_stringForKey:off_1003CB1D0];
      [(InAppTransactionTask *)v23 setPartnerIdentifier:v34];

      v35 = [paymentCopy tcr_stringForKey:off_1003CB1D8];
      [(InAppTransactionTask *)v23 setPartnerTransactionIdentifier:v35];

      v36 = [paymentCopy tcr_stringForKey:off_1003CB1E8];
      [(InAppTransactionTask *)v23 setProductKind:v36];

      [(InAppTransactionTask *)v23 setPrivacyAcknowledgementRequired:requiredCopy];
      v37 = [paymentCopy tcr_dataForKey:off_1003CB1B8];
      [(InAppTransactionTask *)v23 setRequestData:v37];

      -[InAppTransactionTask setSimulateAskToBuy:](v23, "setSimulateAskToBuy:", [paymentCopy tcr_BOOLForKey:off_1003CB1C0]);
      -[InAppTransactionTask setStorekitViewInitiated:](v23, "setStorekitViewInitiated:", [paymentCopy tcr_BOOLForKey:off_1003CB228]);
      -[InAppTransactionTask setStoreOriginated:](v23, "setStoreOriginated:", [paymentCopy tcr_BOOLForKey:off_1003CB1A0]);
      v38 = [paymentCopy tcr_stringForKey:off_1003CB220];
      [(InAppTransactionTask *)v23 setSubscriptionPeriod:v38];

      v39 = [paymentCopy tcr_stringForKey:off_1003CB1E0];
      [(InAppTransactionTask *)v23 setPresentingSceneID:v39];

      v40 = [paymentCopy tcr_stringForKey:off_1003CB230];
      [(InAppTransactionTask *)v23 setWinbackOfferIdentifier:v40];

      [(InAppTransactionTask *)v23 setExcludeReceiptFromRequest:receiptCopy];
      -[InAppTransactionTask setForceAuthentication:](v23, "setForceAuthentication:", [paymentCopy tcr_BOOLForKey:off_1003CB200]);
      -[InAppTransactionTask setHideConfirmation:](v23, "setHideConfirmation:", [paymentCopy tcr_BOOLForKey:off_1003CB160]);
      v41 = [paymentCopy tcr_stringForKey:off_1003CB140];
      [(InAppTransactionTask *)v23 setAppAccountToken:v41];

      [(InAppTransactionTask *)v23 setIsProcessingInterruptedBuy:buy];
      v42 = [_TtC9storekitd13DialogContext alloc];
      callerBundleID = [clientCopy callerBundleID];
      callerBundleURL = [clientCopy callerBundleURL];
      processInfo = [clientCopy processInfo];
      v59 = [(DialogContext *)v42 initWithBundleID:callerBundleID bundleURL:callerBundleURL processInfo:processInfo dialogObserver:dialogDelegateCopy];

      [(InAppTransactionTask *)v23 setDialogContext:v59];
      [(InAppTransactionTask *)v23 setPaymentDelegate:delegateCopy];
      v60 = [paymentCopy tcr_stringForKey:off_1003CB1F0];
      if (v60)
      {
        v46 = [NSURL fileURLWithPath:v60 isDirectory:1];
        v47 = [v46 URLByAppendingPathComponent:@"StoreKit"];
        v48 = [v47 URLByAppendingPathComponent:@"receipt"];
        [(InAppTransactionTask *)v23 setReceiptInstallURL:v48];
      }

      if (version != 1)
      {
        v49 = [paymentCopy tcr_dictionaryForKey:off_1003CB150];
        [(InAppTransactionTask *)v23 setCustomBuyParams:v49];
      }

      v50 = [paymentCopy tcr_stringForKey:off_1003CB208];
      v51 = [paymentCopy tcr_stringForKey:off_1003CB218];
      v52 = v51;
      if (v50 && v51)
      {
        v53 = [paymentCopy tcr_stringForKey:off_1003CB210];
        v54 = [[AppleIDAuthorizationRequestInfo alloc] initWithClientID:v50 teamID:v52 serviceID:v53];
        [(InAppTransactionTask *)v23 setSiwaAuthorizationInfo:v54];
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, v23);
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10003EE80;
      v66[3] = &unk_100381A28;
      objc_copyWeak(&v69, &from);
      objc_copyWeak(&v70, &location);
      v67 = clientCopy;
      v68 = replyCopy;
      [(InAppTransactionTask *)v23 setCompletionBlock:v66];
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v55 = qword_1003CB510;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        logKey = [(InAppTransactionTask *)v23 logKey];
        productIdentifier = [(InAppTransactionTask *)v23 productIdentifier];
        quantity = [(InAppTransactionTask *)v23 quantity];
        *buf = 138544130;
        selfCopy3 = self;
        v75 = 2114;
        v76 = logKey;
        v77 = 2114;
        v78 = productIdentifier;
        v79 = 2048;
        v80 = quantity;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding payment for %{public}@ and quantity %lu", buf, 0x2Au);
      }

      [(NSOperationQueue *)self->_paymentQueue addOperation:v23];
      objc_destroyWeak(&v70);
      objc_destroyWeak(&v69);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v22 = qword_1003CB510;
      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy3 = self;
        v75 = 2114;
        v76 = v61;
        v77 = 2048;
        v78 = v20;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@: Could not process payment for product %{public}@ and quantity %lu", buf, 0x20u);
      }

      v23 = ASDErrorWithDescription();
      (*(replyCopy + 2))(replyCopy, 0, 0, v23);
    }
  }
}

- (void)finishPaymentWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v23 = 2082;
    v24 = "[StoreKitServiceConnection finishPaymentWithIdentifier:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v9 = [_TtC9storekitd6Client alloc];
  v10 = +[NSXPCConnection currentConnection];
  v11 = [(Client *)v9 initWithConnection:v10 overridesDictionary:0];

  if (v11)
  {
    if ([(Client *)v11 isClip])
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
      {
        sub_1002CBD60();
      }

      v12 = ASDErrorWithDescription();
      replyCopy[2](replyCopy, v12);
    }

    else if ([identifierCopy length])
    {
      v14 = +[InAppDownloadManager manager];
      [v14 removeDownloadsForTransactionID:identifierCopy];

      v15 = [[FinishInAppTransactionTask alloc] initWithTransactionID:identifierCopy client:v11];
      objc_initWeak(buf, v15);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10003F504;
      v17[3] = &unk_100381910;
      objc_copyWeak(&v20, buf);
      v18 = v11;
      v19 = replyCopy;
      [(FinishInAppTransactionTask *)v15 setCompletionBlock:v17];
      [(NSOperationQueue *)self->_finishPaymentQueue addOperation:v15];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v16 = qword_1003CB510;
      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: No transaction identifier to finish payment", buf, 0xCu);
      }

      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBDC8();
    }

    v13 = ASDErrorWithTitleAndMessage();
    replyCopy[2](replyCopy, v13);
  }
}

- (void)notifyOfRevokedProductIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 2082;
    v18 = "[StoreKitServiceConnection notifyOfRevokedProductIdentifiers:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003F8CC;
  v11[3] = &unk_100381A50;
  objc_copyWeak(&v14, buf);
  v9 = identifiersCopy;
  v12 = v9;
  v10 = replyCopy;
  v13 = v10;
  [(StoreKitServiceConnection *)self renewReceiptWithOptions:0 client:0 replyBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)restoreCompletedTransactionsForUsername:(id)username client:(id)client reply:(id)reply
{
  usernameCopy = username;
  clientCopy = client;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v9 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v37 = 2082;
    v38 = "[StoreKitServiceConnection restoreCompletedTransactionsForUsername:client:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v10 = +[NSXPCConnection currentConnection];
  sk_allowClientOverride = [v10 sk_allowClientOverride];
  v12 = clientCopy;
  if (!sk_allowClientOverride)
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [[_TtC9storekitd6Client alloc] initWithConnection:v10 overridesDictionary:v13];
  v15 = v14;
  if (v14)
  {
    if ([(Client *)v14 isClip])
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
      {
        sub_1002CBF00();
      }

      v16 = ASDErrorWithDescription();
      replyCopy[2](replyCopy, 0, v16);
    }

    else
    {
      v17 = [_TtC9storekitd13DialogContext alloc];
      callerBundleID = [(Client *)v15 callerBundleID];
      callerBundleURL = [(Client *)v15 callerBundleURL];
      processInfo = [(Client *)v15 processInfo];
      v16 = [(DialogContext *)v17 initWithBundleID:callerBundleID bundleURL:callerBundleURL processInfo:processInfo dialogObserver:0];

      if ([(Client *)v15 canMakePayments])
      {
        v21 = [[RestoreInAppTransactionsTask alloc] initWithClient:v15];
        [(RestoreInAppTransactionsTask *)v21 setApplicationUsername:v26];
        [(RestoreInAppTransactionsTask *)v21 setDialogContext:v16];
        objc_initWeak(buf, self);
        objc_initWeak(&location, v21);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10003FFB4;
        v28[3] = &unk_100381A28;
        objc_copyWeak(&v31, &location);
        objc_copyWeak(&v32, buf);
        v29 = v15;
        v30 = replyCopy;
        [(RestoreInAppTransactionsTask *)v21 setCompletionBlock:v28];
        [(NSOperationQueue *)self->_paymentQueue addOperation:v21];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
        {
          sub_1002CBE98();
        }

        v22 = ASDLocalizedString();
        v23 = ASDLocalizedString();
        v21 = [AMSDialogRequest requestWithTitle:v22 message:v23];

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10003FF28;
        v34[3] = &unk_1003819D8;
        v34[4] = self;
        [(DialogContext *)v16 handleDialogRequest:v21 completionHandler:v34];
        v24 = ASDErrorWithDescription();
        replyCopy[2](replyCopy, 0, v24);
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB510, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBF68();
    }

    v16 = ASDErrorWithTitleAndMessage();
    replyCopy[2](replyCopy, 0, v16);
  }
}

- (void)statusForClient:(id)client subscriptionGroupID:(id)d skipStatusSync:(BOOL)sync reply:(id)reply
{
  syncCopy = sync;
  clientCopy = client;
  dCopy = d;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v13 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v26 = 2082;
    v27 = "[StoreKitServiceConnection statusForClient:subscriptionGroupID:skipStatusSync:reply:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  if ([v14 sk_allowClientOverride])
  {
    v15 = clientCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [[_TtC9storekitd6Client alloc] initWithConnection:v14 overridesDictionary:v16];

  if (v17)
  {
    v18 = [OctaneManager simulatedStoreKitErrorFor:4 client:v17];
    if (!v18)
    {
      v20 = [ReceiptManager managerForClient:v17];
      sk_allowAdvancedTransactionQueries = [v14 sk_allowAdvancedTransactionQueries];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10004050C;
      v22[3] = &unk_100381A78;
      v23 = replyCopy;
      [v20 subscriptionStatusForSubscriptionGroupID:dCopy skipStatusSync:sk_allowAdvancedTransactionQueries & syncCopy completionHandler:v22];

      goto LABEL_21;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v19 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Found simulated failure: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBFD0();
    }

    v18 = ASDErrorWithTitleAndMessage();
  }

  (*(replyCopy + 2))(replyCopy, 0, v18);
LABEL_21:
}

- (void)statusForClient:(id)client transactionID:(id)d skipStatusSync:(BOOL)sync reply:(id)reply
{
  syncCopy = sync;
  clientCopy = client;
  dCopy = d;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v13 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v26 = 2082;
    v27 = "[StoreKitServiceConnection statusForClient:transactionID:skipStatusSync:reply:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  if ([v14 sk_allowClientOverride])
  {
    v15 = clientCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [[_TtC9storekitd6Client alloc] initWithConnection:v14 overridesDictionary:v16];

  if (v17)
  {
    v18 = [OctaneManager simulatedStoreKitErrorFor:4 client:v17];
    if (!v18)
    {
      v20 = [ReceiptManager managerForClient:v17];
      sk_allowAdvancedTransactionQueries = [v14 sk_allowAdvancedTransactionQueries];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100040830;
      v22[3] = &unk_100381A78;
      v23 = replyCopy;
      [v20 subscriptionStatusForTransactionID:dCopy skipStatusSync:sk_allowAdvancedTransactionQueries & syncCopy completionHandler:v22];

      goto LABEL_21;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v19 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Found simulated failure: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBFD0();
    }

    v18 = ASDErrorWithTitleAndMessage();
  }

  (*(replyCopy + 2))(replyCopy, 0, v18);
LABEL_21:
}

- (void)enumerateSubscriptionStatusesForClient:(id)client withReceiver:(id)receiver skipStatusSync:(BOOL)sync reply:(id)reply
{
  syncCopy = sync;
  clientCopy = client;
  receiverCopy = receiver;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v13 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 2082;
    v28 = "[StoreKitServiceConnection enumerateSubscriptionStatusesForClient:withReceiver:skipStatusSync:reply:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  if ([v14 sk_allowClientOverride])
  {
    v15 = clientCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [[_TtC9storekitd6Client alloc] initWithConnection:v14 overridesDictionary:v16];

  if (v17)
  {
    v18 = [ReceiptManager managerForClient:v17];
    sk_allowAdvancedTransactionQueries = [v14 sk_allowAdvancedTransactionQueries];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100040B24;
    v23[3] = &unk_100381AA0;
    v24 = receiverCopy;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100040BC0;
    v20[3] = &unk_100381AC8;
    v21 = v24;
    v22 = replyCopy;
    [v18 enumerateSubscriptionStatusSkippingStatusSync:sk_allowAdvancedTransactionQueries & syncCopy usingBlock:v23 completionHandler:v20];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CBFD0();
    }

    v18 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, v18);
  }
}

- (void)addDownloadWithID:(id)d
{
  dCopy = d;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2082;
    *&buf[14] = "[StoreKitServiceConnection addDownloadWithID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v6 = +[NSXPCConnection currentConnection];
  v7 = [[_TtC9storekitd6Client alloc] initWithConnection:v6 overridesDictionary:0];
  if (v7)
  {
    if (dCopy)
    {
      memset(buf, 0, 32);
      if (v6)
      {
        [v6 auditToken];
      }

      v8 = +[InAppDownloadManager manager];
      v12[0] = *buf;
      v12[1] = *&buf[16];
      v9 = [v8 startDownloadWithID:dCopy client:v7 auditToken:v12];

      if (v9)
      {
        remoteObject = self->_remoteObject;
        v13 = @"download";
        v14 = dCopy;
        v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
        [(SKClientProtocol *)remoteObject downloadAdded:v11];
      }
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_ERROR))
      {
        sub_1002CC038();
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC074();
    }
  }
}

- (void)cancelDownloadWithID:(id)d
{
  dCopy = d;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2082;
    v10 = "[StoreKitServiceConnection cancelDownloadWithID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v7, 0x16u);
  }

  if (dCopy)
  {
    v6 = +[InAppDownloadManager manager];
    [v6 cancelDownloadWithID:dCopy];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC0DC();
    }
  }
}

- (void)pauseDownloadWithID:(id)d
{
  dCopy = d;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2082;
    v10 = "[StoreKitServiceConnection pauseDownloadWithID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v7, 0x16u);
  }

  if (dCopy)
  {
    v6 = +[InAppDownloadManager manager];
    [v6 pauseDownloadWithID:dCopy];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC144();
    }
  }
}

- (void)resumeDownloadWithID:(id)d
{
  dCopy = d;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2082;
    *&buf[14] = "[StoreKitServiceConnection resumeDownloadWithID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v6 = +[NSXPCConnection currentConnection];
  v7 = [[_TtC9storekitd6Client alloc] initWithConnection:v6 overridesDictionary:0];
  if (v7)
  {
    if (dCopy)
    {
      memset(buf, 0, 32);
      if (v6)
      {
        [v6 auditToken];
      }

      v8 = +[InAppDownloadManager manager];
      v9[0] = *buf;
      v9[1] = *&buf[16];
      [v8 startDownloadWithID:dCopy client:v7 auditToken:v9];
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_ERROR))
      {
        sub_1002CC1AC();
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC214();
    }
  }
}

- (void)deleteContentForProductID:(id)d
{
  dCopy = d;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2082;
    v9 = "[StoreKitServiceConnection deleteContentForProductID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v6, 0x16u);
  }
}

- (void)renewReceiptWithOptions:(id)options client:(id)client replyBlock:(id)block
{
  optionsCopy = options;
  clientCopy = client;
  blockCopy = block;
  v11 = [NSUUID lib_shortLogKeyWithAPIVersion:1];
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v12 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v49 = v11;
    v50 = 2082;
    v51 = "[StoreKitServiceConnection renewReceiptWithOptions:client:replyBlock:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v13 = +[NSXPCConnection currentConnection];
  client = [(StoreKitServiceConnection *)self client];
  if ([client objc_clientType] == 3)
  {
    sk_connectionIsOctaneService = [v13 sk_connectionIsOctaneService];

    if (sk_connectionIsOctaneService)
    {
      client2 = [(StoreKitServiceConnection *)self client];
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v13 sk_allowClientOverride])
  {
    v17 = clientCopy;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  client2 = [[_TtC9storekitd6Client alloc] initWithConnection:v13 overridesDictionary:v18];

LABEL_13:
  if ([v13 sk_allowClientOverride])
  {
    v19 = optionsCopy;
    v20 = [clientCopy objectForKeyedSubscript:@"tok"];
    v21 = [clientCopy objectForKeyedSubscript:@"recp"];
    if (v21 && [v20 length])
    {
      v22 = [NSURL fileURLWithPath:v21 isDirectory:1];
      v23 = [v22 URLByAppendingPathComponent:@"StoreKit"];
      v42 = [v23 URLByAppendingPathComponent:@"receipt"];

      [v20 UTF8String];
      v24 = sandbox_extension_consume();
      if (v24 < 0)
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        v25 = qword_1003CB520;
        if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
        {
          sub_1002CBB28(v11, v25);
        }
      }

      v41 = v11;
      v26 = objc_opt_new();
      v27 = v26;
      v28 = v19;
      if (v19)
      {
        [v26 addEntriesFromDictionary:v19];
      }

      [v27 setObject:v42 forKeyedSubscript:@"customURL"];
      v19 = [v27 copy];

      v11 = v41;
    }

    else
    {
      v24 = -1;
    }

    optionsCopy = v19;
    if (!client2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v24 = -1;
    if (!client2)
    {
LABEL_34:
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
      {
        sub_1002CC2E4();
      }

      v29 = ASDErrorWithTitleAndMessage();
      goto LABEL_39;
    }
  }

  if (![(Client *)client2 isClip])
  {
    v30 = [_TtC9storekitd13DialogContext alloc];
    callerBundleID = [(Client *)client2 callerBundleID];
    [(Client *)client2 callerBundleURL];
    v44 = v24;
    v32 = clientCopy;
    v33 = blockCopy;
    v35 = v34 = optionsCopy;
    [(Client *)client2 processInfo];
    v36 = v13;
    v38 = v37 = v11;
    v43 = [(DialogContext *)v30 initWithBundleID:callerBundleID bundleURL:v35 processInfo:v38 dialogObserver:0];

    v11 = v37;
    v13 = v36;

    optionsCopy = v34;
    blockCopy = v33;
    clientCopy = v32;

    v39 = [ReceiptManager managerForClient:client2];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10004191C;
    v45[3] = &unk_100381AF0;
    v46 = blockCopy;
    v47 = v44;
    [v39 requestUnifiedAppReceiptWithDialogContext:v43 logKey:v11 options:optionsCopy completionHandler:v45];

    goto LABEL_41;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
  {
    sub_1002CC27C();
  }

  v29 = ASDErrorWithDescription();
LABEL_39:
  v40 = v29;
  (*(blockCopy + 2))(blockCopy, 0, v29);

  if (v24 >= 1)
  {
    sandbox_extension_release();
  }

LABEL_41:
}

- (void)handleInvalidReceipt:(id)receipt
{
  receiptCopy = receipt;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v16 = 2082;
    v17 = "[StoreKitServiceConnection handleInvalidReceipt:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v6 = +[NSXPCConnection currentConnection];
  v7 = [[_TtC9storekitd6Client alloc] initWithConnection:v6 overridesDictionary:0];
  if (v7)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v8 = qword_1003CB520;
    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      callerBundleID = [(Client *)v7 callerBundleID];
      *buf = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = callerBundleID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: handleInvalidReceipt for %{public}@", buf, 0x16u);
    }

    v11 = -[HandleInvalidReceiptTask initWithClient:pid:]([HandleInvalidReceiptTask alloc], "initWithClient:pid:", v7, [v6 processIdentifier]);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100041C3C;
    v12[3] = &unk_10037F820;
    v13 = receiptCopy;
    [(HandleInvalidReceiptTask *)v11 setCompletionBlock:v12];
    [(NSOperationQueue *)self->_appTerminationQueue addOperation:v11];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB508, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC34C();
    }

    receiptCopy[2](receiptCopy);
  }
}

- (void)xcodeTestServerPortWithReplyBlock:(id)block
{
  blockCopy = block;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2082;
    v10 = "[StoreKitServiceConnection xcodeTestServerPortWithReplyBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v7, 0x16u);
  }

  v6 = +[OctaneManager sharedInstance];
  blockCopy[2](blockCopy, [v6 activePort]);
}

- (void)refundRequestForTransactionId:(id)id replyBlock:(id)block
{
  idCopy = id;
  blockCopy = block;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v49 = 2082;
    v50 = "[StoreKitServiceConnection refundRequestForTransactionId:replyBlock:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v9 = [_TtC9storekitd6Client alloc];
  v10 = +[NSXPCConnection currentConnection];
  v11 = [(Client *)v9 initWithConnection:v10 overridesDictionary:0];

  if (!v11)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC528();
    }

    v12 = ASDErrorWithTitleAndMessage();
    goto LABEL_16;
  }

  v12 = [OctaneManager simulatedStoreKitErrorFor:7 client:v11];
  if (!v12)
  {
    v14 = [(Client *)v11 bag];
    v15 = +[_TtC9storekitd6BagKey refundRequestURL];
    v16 = [v14 URLForKey:v15];
    v45 = 0;
    v17 = [v16 valueWithError:&v45];
    v42 = v45;

    if (!v17)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v20 = v42;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CC4C0();
      }

      account = [v42 toASDErrorWithMetadata:0];
      blockCopy[2](blockCopy, account, 0);
      goto LABEL_56;
    }

    account = [(Client *)v11 account];
    ams_DSID = [account ams_DSID];
    if (ams_DSID)
    {
    }

    else if ([(Client *)v11 objc_clientType]!= 3)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v20 = v42;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CC3B4();
      }

      v28 = ASDErrorWithTitleAndMessage();
      blockCopy[2](blockCopy, v28, 0);
      goto LABEL_55;
    }

    v38 = v17;
    [NSURLComponents componentsWithURL:v17 resolvingAgainstBaseURL:1];
    v40 = v39 = idCopy;
    idCopy = [NSString stringWithFormat:@"%@", idCopy];
    v22 = [NSURLQueryItem queryItemWithName:@"transactionId" value:idCopy];
    v46 = v22;
    v23 = [NSArray arrayWithObjects:&v46 count:1];
    v24 = [NSMutableArray arrayWithArray:v23];

    v41 = v24;
    if ([(Client *)v11 objc_clientType]== 2)
    {
      if ([(Client *)v11 isBeta])
      {
        v25 = @"testflight";
      }

      else
      {
        v25 = @"sandbox";
      }

      v26 = [NSURLQueryItem queryItemWithName:@"env" value:v25];
      [v41 addObject:v26];

      v24 = v41;
    }

    v27 = [NSArray arrayWithArray:v24];
    v28 = v40;
    [v40 setQueryItems:v27];

    v29 = [v40 URL];

    if (v29)
    {
      v30 = objc_alloc_init(AMSEngagementRequest);
      v31 = [v40 URL];
      [v30 setURL:v31];

      [v30 setAccount:account];
      v44 = 0;
      v32 = [NSKeyedArchiver archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v44];
      v33 = v44;
      if (v32)
      {
        v43 = v33;
        v34 = [_TtC9storekitd25ObjcInAppEngagementHelper remoteEngagementRequestDataWithEngagementRequestData:v32 client:v11 logKey:0 error:&v43];
        v35 = v43;

        if (v34)
        {
          (blockCopy)[2](blockCopy, 0, v34);
          v33 = v35;
          v20 = v42;
        }

        else
        {
          v36 = sub_10003BE38(1u);
          v20 = v42;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1002CC3F0();
          }

          v37 = [v35 toASDErrorWithMetadata:0];
          blockCopy[2](blockCopy, v37, 0);

          v33 = v35;
        }
      }

      else
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        v20 = v42;
        if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
        {
          sub_1002CC458();
        }

        v34 = [v33 toASDErrorWithMetadata:0];
        blockCopy[2](blockCopy, v34, 0);
      }

      idCopy = v39;
      v28 = v40;
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      idCopy = v39;
      v20 = v42;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CC4C0();
      }

      v30 = [v42 toASDErrorWithMetadata:0];
      blockCopy[2](blockCopy, v30, 0);
    }

    v17 = v38;
LABEL_55:

LABEL_56:
    goto LABEL_57;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  v13 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v49 = 2114;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Found simulated failure: %{public}@", buf, 0x16u);
  }

LABEL_16:
  blockCopy[2](blockCopy, v12, 0);
LABEL_57:
}

- (void)displayMessageWithType:(id)type
{
  typeCopy = type;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2082;
    v12 = "[StoreKitServiceConnection displayMessageWithType:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v9, 0x16u);
  }

  v6 = +[NSXPCConnection currentConnection];
  v7 = [[_TtC9storekitd6Client alloc] initWithConnection:v6 overridesDictionary:0];
  v8 = +[StoreKitMessagesManager sharedManager];
  [v8 displayMessageWithType:typeCopy forClient:v7 connection:v6];
  [v8 recordMessageDisplayEventWithType:2 messageType:objc_msgSend(typeCopy client:{"integerValue"), v7}];
}

- (void)xcodeTestCertificatesWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2082;
    v21 = "[StoreKitServiceConnection xcodeTestCertificatesWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  if ([(Client *)v8 objc_clientType]== 3)
  {
    v9 = +[OctaneManager sharedInstance];
    requestBundleID = [(Client *)v8 requestBundleID];
    v11 = [OctaneActionContext contextWithBundleID:requestBundleID];

    v12 = [v9 getStringValueForIdentifier:8 withContext:v11];
    v13 = v12;
    if (v12 && [v12 length])
    {
      v14 = [[NSData alloc] initWithBase64EncodedString:v13 options:0];
      v15 = v14;
      if (v14)
      {
        v17 = v14;
        v16 = [NSArray arrayWithObjects:&v17 count:1];
      }

      else
      {
        v16 = &__NSArray0__struct;
      }
    }

    else
    {
      v16 = &__NSArray0__struct;
    }

    replyCopy[2](replyCopy, v16, 0);
  }

  else
  {
    v9 = ASDErrorWithDescription();
    (replyCopy)[2](replyCopy, 0, v9);
  }
}

- (void)xcodeTestCertificatesShouldSimulateRevocationWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2082;
    v15 = "[StoreKitServiceConnection xcodeTestCertificatesShouldSimulateRevocationWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v12, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  if ([(Client *)v8 objc_clientType]!= 3)
  {
    replyCopy[2](replyCopy, 0);
  }

  v9 = +[OctaneManager sharedInstance];
  requestBundleID = [(Client *)v8 requestBundleID];
  v11 = [v9 storeKitErrorForCategory:2 bundleID:requestBundleID];

  (replyCopy)[2](replyCopy, v11 == 17);
}

- (void)requestProductReviewWithInterfaceOrientation:(unint64_t)orientation bundleIdentifier:(id)identifier sceneID:(id)d replyBlock:(id)block
{
  identifierCopy = identifier;
  dCopy = d;
  blockCopy = block;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v13 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v29 = 2082;
    v30 = "[StoreKitServiceConnection requestProductReviewWithInterfaceOrientation:bundleIdentifier:sceneID:replyBlock:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = [[_TtC9storekitd6Client alloc] initWithConnection:v14 overridesDictionary:0];
  v16 = _os_feature_enabled_impl();
  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  v17 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_INFO))
  {
    v18 = "old direct-injection";
    if (v16)
    {
      v18 = "new SpringBoard";
    }

    *buf = 136446210;
    selfCopy = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Using %{public}s request-review flow", buf, 0xCu);
  }

  if (v16)
  {
    v19 = [[RemoteAlertWrapper alloc] initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceReviewRemoteAlertViewController"];
    [(StoreKitServiceConnection *)self setRemoteAlertWrapper:v19];

    v20 = [(Client *)v15 objc_clientType]!= 1;
    remoteAlertWrapper = [(StoreKitServiceConnection *)self remoteAlertWrapper];
    v22 = [NSNumber numberWithUnsignedInteger:orientation, @"orientation"];
    v26[0] = v22;
    v26[1] = identifierCopy;
    v25[1] = @"bundleIdentifier";
    v25[2] = @"sandboxed";
    v23 = [NSNumber numberWithBool:v20];
    v26[2] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    [remoteAlertWrapper activateForTargetXPCConnection:v14 sceneID:dCopy shouldDismissOnUILock:1 userInfo:v24];
  }

  blockCopy[2](blockCopy, v16 ^ 1u);
}

- (void)lookUpItemIDsForDeletableSystemAppsWithBundleIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v52 = 2082;
    v53 = "[StoreKitServiceConnection lookUpItemIDsForDeletableSystemAppsWithBundleIDs:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v9 = +[_TtC9storekitd3Bag defaultBag];
  v10 = +[_TtC9storekitd6BagKey hideableSystemApps];
  v11 = [v9 arrayForKey:v10];
  v47 = 0;
  v12 = [v11 valueWithError:&v47];
  v13 = v47;

  if (v12)
  {
    v35 = v13;
    v37 = replyCopy;
    v38 = dsCopy;
    v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = v12;
    tcr_dictionaryEnumerator = [v12 tcr_dictionaryEnumerator];
    v16 = [tcr_dictionaryEnumerator countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(tcr_dictionaryEnumerator);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          v21 = [v20 tcr_stringForKey:@"bundle-id"];
          v22 = [v20 tcr_stringForKey:@"id"];
          v23 = v22;
          if (v21)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 tcr_unsignedLongLong]);
            [v14 setObject:v25 forKeyedSubscript:v21];
          }
        }

        v17 = [tcr_dictionaryEnumerator countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v17);
    }

    dsCopy = v38;
    v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v38 count]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v38;
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
    v13 = v35;
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v39 + 1) + 8 * j);
          v33 = [v14 objectForKeyedSubscript:v32];
          [v26 setObject:v33 forKeyedSubscript:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v29);
    }

    replyCopy = v37;
    v37[2](v37, v26, 0);

    v12 = v36;
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v34 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC590(v34, self, v13);
    }

    v14 = [v13 toASDErrorWithMetadata:0];
    replyCopy[2](replyCopy, &__NSDictionary0__struct, v14);
  }
}

- (void)canMakePaymentsWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2082;
    v12 = "[StoreKitServiceConnection canMakePaymentsWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v9, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  replyCopy[2](replyCopy, [(Client *)v8 canMakePayments], 0);
}

- (void)promotionInfoForProductIdentifiers:(id)identifiers client:(id)client reply:(id)reply
{
  identifiersCopy = identifiers;
  clientCopy = client;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v11 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2082;
    v25 = "[StoreKitServiceConnection promotionInfoForProductIdentifiers:client:reply:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v12 = +[NSXPCConnection currentConnection];
  if ([v12 sk_allowClientOverride])
  {
    v13 = clientCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [[_TtC9storekitd6Client alloc] initWithConnection:v12 overridesDictionary:v14];

  if (v15)
  {
    productPromotionsQueue = self->_productPromotionsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043504;
    block[3] = &unk_10037FDC8;
    v19 = identifiersCopy;
    v20 = v15;
    v21 = replyCopy;
    dispatch_async(productPromotionsQueue, block);

    v17 = v19;
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC64C();
    }

    v17 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }
}

- (void)setPromotionInfo:(id)info forClient:(id)client reply:(id)reply
{
  infoCopy = info;
  clientCopy = client;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v11 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2082;
    v25 = "[StoreKitServiceConnection setPromotionInfo:forClient:reply:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v12 = +[NSXPCConnection currentConnection];
  if ([v12 sk_allowClientOverride])
  {
    v13 = clientCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [[_TtC9storekitd6Client alloc] initWithConnection:v12 overridesDictionary:v14];

  if (v15)
  {
    productPromotionsQueue = self->_productPromotionsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043838;
    block[3] = &unk_10037FDC8;
    v19 = infoCopy;
    v20 = v15;
    v21 = replyCopy;
    dispatch_async(productPromotionsQueue, block);

    v17 = v19;
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC6B4();
    }

    v17 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, v17);
  }
}

- (void)appTransactionForClient:(id)client ignoreCache:(BOOL)cache reply:(id)reply
{
  cacheCopy = cache;
  clientCopy = client;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v10 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2082;
    v29 = "[StoreKitServiceConnection appTransactionForClient:ignoreCache:reply:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v11 = +[NSXPCConnection currentConnection];
  if ([v11 sk_allowClientOverride])
  {
    v12 = clientCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [[_TtC9storekitd6Client alloc] initWithConnection:v11 overridesDictionary:v13];

  if (!v14)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC784();
    }

    v15 = ASDErrorWithTitleAndMessage();
    goto LABEL_20;
  }

  if ([(Client *)v14 isClip])
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC71C();
    }

    v15 = ASDErrorWithDescription();
LABEL_20:
    v16 = v15;
    goto LABEL_21;
  }

  v16 = [OctaneManager simulatedStoreKitErrorFor:5 client:v14];
  if (!v16)
  {
    v18 = [_TtC9storekitd13DialogContext alloc];
    callerBundleID = [(Client *)v14 callerBundleID];
    callerBundleURL = [(Client *)v14 callerBundleURL];
    processInfo = [(Client *)v14 processInfo];
    v22 = [(DialogContext *)v18 initWithBundleID:callerBundleID bundleURL:callerBundleURL processInfo:processInfo dialogObserver:0];

    v23 = [ReceiptManager managerForClient:v14];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100043CB8;
    v24[3] = &unk_100380E88;
    v25 = replyCopy;
    [v23 appTransactionWithDialogContext:v22 ignoreCache:cacheCopy completionHandler:v24];

    goto LABEL_22;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  v17 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2114;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Found simulated failure: %{public}@", buf, 0x16u);
  }

LABEL_21:
  (*(replyCopy + 2))(replyCopy, 0, v16);
LABEL_22:
}

- (void)authenticateAndSyncTransactionsAndStatusWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v22 = 2082;
    v23 = "[StoreKitServiceConnection authenticateAndSyncTransactionsAndStatusWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  if (v8)
  {
    v9 = [OctaneManager simulatedStoreKitErrorFor:3 client:v8];
    if (!v9)
    {
      v11 = [_TtC9storekitd13DialogContext alloc];
      callerBundleID = [(Client *)v8 callerBundleID];
      callerBundleURL = [(Client *)v8 callerBundleURL];
      processInfo = [(Client *)v8 processInfo];
      v15 = [(DialogContext *)v11 initWithBundleID:callerBundleID bundleURL:callerBundleURL processInfo:processInfo dialogObserver:0];

      v16 = [ReceiptManager managerForClient:v8];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100044070;
      v17[3] = &unk_100381AC8;
      v18 = v8;
      v19 = replyCopy;
      [v16 authenticateAndSyncWithDialogContext:v15 completionHandler:v17];

      goto LABEL_18;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v10 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Found simulated failure: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC7EC();
    }

    v9 = ASDErrorWithTitleAndMessage();
  }

  (*(replyCopy + 2))(replyCopy, v9);
LABEL_18:
}

- (void)enumerateCurrentReceiptsForClient:(id)client productID:(id)d withReceiver:(id)receiver skipTransactionSync:(BOOL)sync reply:(id)reply
{
  syncCopy = sync;
  clientCopy = client;
  dCopy = d;
  receiverCopy = receiver;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v16 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v31 = 2082;
    v32 = "[StoreKitServiceConnection enumerateCurrentReceiptsForClient:productID:withReceiver:skipTransactionSync:reply:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v17 = +[NSXPCConnection currentConnection];
  if ([v17 sk_allowClientOverride])
  {
    v18 = clientCopy;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[_TtC9storekitd6Client alloc] initWithConnection:v17 overridesDictionary:v19];

  if (v20)
  {
    v21 = [ReceiptManager managerForClient:v20];
    sk_allowAdvancedTransactionQueries = [v17 sk_allowAdvancedTransactionQueries];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000444B4;
    v27[3] = &unk_100381B40;
    v28 = receiverCopy;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100044550;
    v23[3] = &unk_100381B90;
    v24 = v28;
    v25 = v20;
    v26 = replyCopy;
    [v21 enumerateCurrentReceiptsForProductID:dCopy skipTransactionSync:sk_allowAdvancedTransactionQueries & syncCopy usingBlock:v27 completionHandler:v23];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC854();
    }

    v21 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, v21);
  }
}

- (void)enumerateReceiptsForClient:(id)client productID:(id)d withReceiver:(id)receiver skipTransactionSync:(BOOL)sync reply:(id)reply
{
  syncCopy = sync;
  clientCopy = client;
  dCopy = d;
  receiverCopy = receiver;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v16 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v31 = 2082;
    v32 = "[StoreKitServiceConnection enumerateReceiptsForClient:productID:withReceiver:skipTransactionSync:reply:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v17 = +[NSXPCConnection currentConnection];
  if ([v17 sk_allowClientOverride])
  {
    v18 = clientCopy;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[_TtC9storekitd6Client alloc] initWithConnection:v17 overridesDictionary:v19];

  if (v20)
  {
    v21 = [ReceiptManager managerForClient:v20];
    sk_allowAdvancedTransactionQueries = [v17 sk_allowAdvancedTransactionQueries];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000449F0;
    v27[3] = &unk_100381B40;
    v28 = receiverCopy;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100044A8C;
    v23[3] = &unk_100381B90;
    v24 = v28;
    v25 = v20;
    v26 = replyCopy;
    [v21 enumerateReceiptsForProductID:dCopy skipTransactionSync:sk_allowAdvancedTransactionQueries & syncCopy usingBlock:v27 completionHandler:v23];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC8BC();
    }

    v21 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, v21);
  }
}

- (void)enumerateUnfinishedTransactionsForClient:(id)client withReceiver:(id)receiver skipTransactionSync:(BOOL)sync reply:(id)reply
{
  syncCopy = sync;
  clientCopy = client;
  receiverCopy = receiver;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v13 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v28 = 2082;
    v29 = "[StoreKitServiceConnection enumerateUnfinishedTransactionsForClient:withReceiver:skipTransactionSync:reply:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  if ([v14 sk_allowClientOverride])
  {
    v15 = clientCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [[_TtC9storekitd6Client alloc] initWithConnection:v14 overridesDictionary:v16];

  if (v17)
  {
    v18 = [ReceiptManager managerForClient:v17];
    sk_allowAdvancedTransactionQueries = [v14 sk_allowAdvancedTransactionQueries];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100044F18;
    v24[3] = &unk_100381B40;
    v25 = receiverCopy;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100044FB4;
    v20[3] = &unk_100381B90;
    v21 = v25;
    v22 = v17;
    v23 = replyCopy;
    [v18 enumerateUnfinishedTransactionsSkippingTransactionSync:sk_allowAdvancedTransactionQueries & syncCopy usingBlock:v24 completionHandler:v20];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC924();
    }

    v18 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, v18);
  }
}

- (void)invalidateTransactionsAndStatusCacheWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2082;
    v13 = "[StoreKitServiceConnection invalidateTransactionsAndStatusCacheWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v10, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  if (v8)
  {
    v9 = [ReceiptManager managerForClient:v8];
    [v9 clearTransactions];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC98C();
    }
  }

  replyCopy[2](replyCopy);
}

- (void)isXcodeTestAppWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2082;
    v12 = "[StoreKitServiceConnection isXcodeTestAppWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v9, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  replyCopy[2](replyCopy, [(Client *)v8 objc_clientType]== 3);
}

- (void)transactionForID:(id)d client:(id)client skipTransactionSync:(BOOL)sync reply:(id)reply
{
  dCopy = d;
  clientCopy = client;
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v12 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2082;
    v23 = "[StoreKitServiceConnection transactionForID:client:skipTransactionSync:reply:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v13 = +[NSXPCConnection currentConnection];
  if ([v13 sk_allowClientOverride])
  {
    v14 = clientCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [[_TtC9storekitd6Client alloc] initWithConnection:v13 overridesDictionary:v15];

  if (v16)
  {
    v17 = [ReceiptManager managerForClient:v16];
    [v13 sk_allowAdvancedTransactionQueries];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100045698;
    v18[3] = &unk_100381BB8;
    v19 = replyCopy;
    [v17 transactionWithID:dCopy completionHandler:v18];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB520, OS_LOG_TYPE_ERROR))
    {
      sub_1002CC9F4();
    }

    v17 = ASDErrorWithTitleAndMessage();
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }
}

- (void)checkForMessages
{
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v3 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2082;
    v15 = "[StoreKitServiceConnection checkForMessages]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v4 = +[NSXPCConnection currentConnection];
  v5 = [[_TtC9storekitd6Client alloc] initWithConnection:v4 overridesDictionary:0];
  v6 = v5;
  if (v5)
  {
    if ([(Client *)v5 isClip])
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB500, OS_LOG_TYPE_ERROR))
      {
        sub_1002CCA5C();
      }
    }

    else
    {
      v7 = +[StoreKitMessagesManager sharedManager];
      [v7 checkForMessagesForClient:v6 remoteObjectProxy:self->_remoteObject xpcConnection:v4];

      v8 = +[StoreKitMessagesManager sharedManager];
      v9 = [v8 revocationsForClient:v6];

      if (v9)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100045908;
        v10[3] = &unk_100381BE0;
        v10[4] = self;
        v11 = v9;
        [(StoreKitServiceConnection *)self renewReceiptWithOptions:0 client:0 replyBlock:v10];
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB500, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCAC4();
    }
  }
}

- (void)presentCodeRedemptionSheet
{
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v3 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2082;
    v27 = "[StoreKitServiceConnection presentCodeRedemptionSheet]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v4 = [_TtC9storekitd6Client alloc];
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(Client *)v4 initWithConnection:v5 overridesDictionary:0];

  if (v6)
  {
    if ([(Client *)v6 isClip])
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CCCA0();
      }
    }

    else
    {
      account = [(Client *)v6 account];
      if (account || [(Client *)v6 objc_clientType]== 3)
      {
        v8 = [(StoreKitServiceConnection *)self _offerCodeRedemptionURLForClient:v6];
        v9 = [ReceiptManager managerForClient:v6];
        if (v8)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StoreKit: Opening redemption URL: %@", buf, 0xCu);
          }

          scheme = [(StoreKitServiceConnection *)v8 scheme];
          v11 = [scheme isEqualToString:@"itms-ui"];

          if (v11)
          {
            v12 = +[LSApplicationWorkspace defaultWorkspace];
            [v12 openSensitiveURL:v8 withOptions:&__NSDictionary0__struct];
          }

          else
          {
            v13 = objc_alloc_init(AMSEngagementRequest);
            [v13 setURL:v8];
            [v13 setAccount:account];
            v14 = [[AMSSystemEngagementTask alloc] initWithRequest:v13];
            v15 = [(Client *)v6 bag];
            [v14 setBag:v15];

            processInfo = [(Client *)v6 processInfo];
            [v14 setClientInfo:processInfo];

            present = [v14 present];
            v18 = _NSConcreteStackBlock;
            v19 = 3221225472;
            v20 = sub_100045DE0;
            v21 = &unk_100381C08;
            selfCopy2 = self;
            v23 = v9;
            [present addFinishBlock:&v18];
          }
        }

        else
        {
          if (qword_1003D4160 != -1)
          {
            sub_1002CB50C();
          }

          if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
          {
            sub_1002CCC38();
          }
        }

        [v9 invalidateLegacyTransactionCache];
      }

      else
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
        {
          sub_1002CCBD0();
        }
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCD08();
    }
  }
}

- (void)registerArcadeAppWithRandomFromLib:(id)lib randomFromLibLength:(unsigned int)length resultHandler:(id)handler
{
  libCopy = lib;
  handlerCopy = handler;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v10 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v26 = 2082;
    v27 = "[StoreKitServiceConnection registerArcadeAppWithRandomFromLib:randomFromLibLength:resultHandler:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v11 = +[NSXPCConnection currentConnection];
  if ([v11 sk_allowArcade])
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    v12 = qword_1003CB4F8;
    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"c4052938-7e9a-4cbd-a934-3b2c4b8a0937";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v13 = [[_TtC9storekitd6Client alloc] initWithConnection:v11 overridesDictionary:0];
    processIdentifier = [v11 processIdentifier];
    v15 = objc_opt_new();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000462CC;
    v17[3] = &unk_100381C30;
    v17[4] = self;
    v18 = v13;
    v21 = handlerCopy;
    lengthCopy = length;
    v23 = processIdentifier;
    v19 = libCopy;
    v20 = @"c4052938-7e9a-4cbd-a934-3b2c4b8a0937";
    v16 = v13;
    [v15 subscriptionStateWithCompletionBlock:v17];
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCD70();
    }

    v15 = ASDErrorWithDescription();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v15);
  }
}

- (void)arcadeSubscriptionStatusWithNonce:(unint64_t)nonce resultHandler:(id)handler
{
  handlerCopy = handler;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v7 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v26 = 2082;
    v27 = "[StoreKitServiceConnection arcadeSubscriptionStatusWithNonce:resultHandler:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v8 = +[NSXPCConnection currentConnection];
  if (([v8 sk_allowArcade] & 1) == 0)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCD70();
    }

    v12 = ASDErrorWithDescription();
    goto LABEL_20;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  v9 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v26 = 2114;
    v27 = @"34708d07-5a16-4532-9c48-5dbb144b8f28";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v10 = +[AMSKeybag sharedInstance];
  v23 = 0;
  v11 = [v10 fairplayContextWithError:&v23];
  v12 = v23;

  if (v12)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCF2C();
    }

LABEL_20:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v12);
    goto LABEL_21;
  }

  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  sub_1002A210C(v11, nonce, [v8 processIdentifier], &v22, &v21, &v20, &v19);
  v14 = v13;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  v15 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy3 = self;
    v26 = 2114;
    v27 = @"34708d07-5a16-4532-9c48-5dbb144b8f28";
    v28 = 2048;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Status %ld", buf, 0x20u);
  }

  v16 = 0;
  if (v22 && v21)
  {
    v16 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  }

  v17 = 0;
  v18 = v19;
  if (v20 && v19)
  {
    v17 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
    v18 = v19;
  }

  (*(handlerCopy + 2))(handlerCopy, v16, v21, v17, v18, 0);

LABEL_21:
}

- (void)repairArcadeApp
{
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v3 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    selfCopy2 = self;
    v13 = 2082;
    v14 = "[StoreKitServiceConnection repairArcadeApp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v11, 0x16u);
  }

  v4 = +[NSXPCConnection currentConnection];
  if ([v4 sk_allowArcade])
  {
    v5 = [[_TtC9storekitd6Client alloc] initWithConnection:v4 overridesDictionary:0];
    if (v5)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v6 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: dc0d07d6-d699-41a8-aa7a-6784f6c89969", &v11, 0xCu);
      }

      v7 = [ASDRepairOptions alloc];
      callerBundleID = [(Client *)v5 callerBundleID];
      v9 = [v7 initWithBundleID:callerBundleID];

      [v9 setExitReason:16];
      v10 = +[ASDRepairService defaultService];
      [v10 repairAppWithOptions:v9 replyHandler:&stru_100381C70];
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CCFA0();
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CCD70();
    }
  }
}

- (void)registerForInstallAttribution
{
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v3 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2082;
    v13 = "[StoreKitServiceConnection registerForInstallAttribution]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v4 = [_TtC9storekitd6Client alloc];
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(Client *)v4 initWithConnection:v5 overridesDictionary:0];

  if (v6)
  {
    if ([(Client *)v6 storeItemID])
    {
      if ([(Client *)v6 isClip])
      {
        if (qword_1003D4160 != -1)
        {
          sub_1002CB50C();
        }

        if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
        {
          sub_1002CD008();
        }
      }

      else
      {
        v7 = +[ASDInstallAttribution sharedInstance];
        v8 = [NSNumber numberWithUnsignedLongLong:[(Client *)v6 storeItemID]];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100046E8C;
        v9[3] = &unk_1003802F0;
        v9[4] = self;
        [v7 registerInstallAttributionPingbackForApp:v8 completionHandler:v9];
      }
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CD070();
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD0D8();
    }
  }
}

- (void)updateConversionValue:(id)value
{
  valueCopy = value;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2082;
    v9 = "[StoreKitServiceConnection updateConversionValue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v6, 0x16u);
  }

  [(StoreKitServiceConnection *)self updateConversionValue:valueCopy completionHandler:0];
}

- (void)updateConversionValue:(id)value completionHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2082;
    v19 = "[StoreKitServiceConnection updateConversionValue:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v9 = [_TtC9storekitd6Client alloc];
  v10 = +[NSXPCConnection currentConnection];
  v11 = [(Client *)v9 initWithConnection:v10 overridesDictionary:0];

  if (v11)
  {
    if (![(Client *)v11 isClip])
    {
      v12 = +[ASDInstallAttribution sharedInstance];
      v13 = [NSNumber numberWithUnsignedLongLong:[(Client *)v11 storeItemID]];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100047288;
      v14[3] = &unk_100381AC8;
      v14[4] = self;
      v15 = handlerCopy;
      [v12 updateConversionValueForInstallAttributionPingbackForApp:v13 conversionValue:valueCopy completionHandler:v14];

      goto LABEL_18;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD1B0();
      if (!handlerCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD218();
      if (!handlerCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  if (handlerCopy)
  {
LABEL_16:
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_18:
}

- (void)updateConversionValue:(id)value coarseValue:(id)coarseValue lockWindow:(BOOL)window completionHandler:(id)handler
{
  windowCopy = window;
  valueCopy = value;
  coarseValueCopy = coarseValue;
  handlerCopy = handler;
  v13 = [_TtC9storekitd6Client alloc];
  v14 = +[NSXPCConnection currentConnection];
  v15 = [(Client *)v13 initWithConnection:v14 overridesDictionary:0];

  if (v15)
  {
    if (![(Client *)v15 isClip])
    {
      v16 = +[ASDInstallAttribution sharedInstance];
      v17 = [NSNumber numberWithUnsignedLongLong:[(Client *)v15 storeItemID]];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004755C;
      v18[3] = &unk_100381AC8;
      v18[4] = self;
      v19 = handlerCopy;
      [v16 updatePostbackConversionValuesForApp:v17 fineConversionValue:valueCopy coarseConversionValue:coarseValueCopy lockWindow:windowCopy completionHandler:v18];

      goto LABEL_14;
    }

    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD2F0();
      if (!handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB534();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD358();
      if (!handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if (handlerCopy)
  {
LABEL_12:
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_14:
}

- (void)startAdImpressionWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v34 = 2082;
    v35 = "[StoreKitServiceConnection startAdImpressionWithConfig:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v9 = [configCopy objectForKeyedSubscript:@"version"];
  v10 = [(StoreKitServiceConnection *)self _isSKANVersionFourOrHigher:v9];
  if (v10)
  {
    v11 = [configCopy objectForKeyedSubscript:@"source-identifier"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = [configCopy objectForKeyedSubscript:@"campaign-id"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
LABEL_11:
      v15 = ASDErrorWithDescription();
      handlerCopy[2](handlerCopy, v15);
      goto LABEL_14;
    }
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = [[_TtC9storekitd6Client alloc] initWithConnection:v15 overridesDictionary:0];
  v17 = objc_opt_new();
  v18 = [configCopy objectForKeyedSubscript:@"app-adam-id"];
  [v17 setAppAdamId:v18];

  v19 = [configCopy objectForKeyedSubscript:@"ad-network-id"];
  [v17 setAdNetworkId:v19];

  if (v10)
  {
    v20 = [configCopy objectForKeyedSubscript:@"source-identifier"];
    [v17 setSourceIdentifier:v20];
  }

  else
  {
    v20 = [configCopy objectForKeyedSubscript:@"campaign-id"];
    [v17 setCampaignId:v20];
  }

  v21 = [configCopy objectForKeyedSubscript:@"impression-id"];
  [v17 setImpressionId:v21];

  v22 = [configCopy objectForKeyedSubscript:@"source-app-adamid"];
  [v17 setSourceAppAdamId:v22];

  requestBundleID = [(Client *)v16 requestBundleID];
  [v17 setSourceAppBundleId:requestBundleID];

  v24 = [configCopy objectForKeyedSubscript:@"attr-signature"];
  [v17 setAttributionSignature:v24];

  v25 = [configCopy objectForKeyedSubscript:@"version"];
  [v17 setVersion:v25];

  v26 = [configCopy objectForKeyedSubscript:@"fidelity-type"];
  [v17 setFidelityType:v26];

  sk_processName = [v15 sk_processName];
  [v17 setProcessName:sk_processName];

  v28 = [configCopy objectForKeyedSubscript:@"impression-timestamp"];
  [v17 setTimestamp:v28];

  v29 = +[ASDInstallAttribution sharedInstance];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100047AAC;
  v30[3] = &unk_10037FFD0;
  v31 = handlerCopy;
  [v29 startImpressionWithConfig:v17 completionHandler:v30];

LABEL_14:
}

- (void)endAdImpressionWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v8 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v34 = 2082;
    v35 = "[StoreKitServiceConnection endAdImpressionWithConfig:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v9 = [configCopy objectForKeyedSubscript:@"version"];
  v10 = [(StoreKitServiceConnection *)self _isSKANVersionFourOrHigher:v9];
  if (v10)
  {
    v11 = [configCopy objectForKeyedSubscript:@"source-identifier"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = [configCopy objectForKeyedSubscript:@"campaign-id"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
LABEL_11:
      v15 = ASDErrorWithDescription();
      handlerCopy[2](handlerCopy, v15);
      goto LABEL_14;
    }
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = [[_TtC9storekitd6Client alloc] initWithConnection:v15 overridesDictionary:0];
  v17 = objc_opt_new();
  v18 = [configCopy objectForKeyedSubscript:@"app-adam-id"];
  [v17 setAppAdamId:v18];

  v19 = [configCopy objectForKeyedSubscript:@"ad-network-id"];
  [v17 setAdNetworkId:v19];

  if (v10)
  {
    v20 = [configCopy objectForKeyedSubscript:@"source-identifier"];
    [v17 setSourceIdentifier:v20];
  }

  else
  {
    v20 = [configCopy objectForKeyedSubscript:@"campaign-id"];
    [v17 setCampaignId:v20];
  }

  v21 = [configCopy objectForKeyedSubscript:@"impression-id"];
  [v17 setImpressionId:v21];

  v22 = [configCopy objectForKeyedSubscript:@"source-app-adamid"];
  [v17 setSourceAppAdamId:v22];

  requestBundleID = [(Client *)v16 requestBundleID];
  [v17 setSourceAppBundleId:requestBundleID];

  v24 = [configCopy objectForKeyedSubscript:@"attr-signature"];
  [v17 setAttributionSignature:v24];

  v25 = [configCopy objectForKeyedSubscript:@"version"];
  [v17 setVersion:v25];

  v26 = [configCopy objectForKeyedSubscript:@"fidelity-type"];
  [v17 setFidelityType:v26];

  sk_processName = [v15 sk_processName];
  [v17 setProcessName:sk_processName];

  v28 = [configCopy objectForKeyedSubscript:@"impression-timestamp"];
  [v17 setTimestamp:v28];

  v29 = +[ASDInstallAttribution sharedInstance];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100047FF4;
  v30[3] = &unk_10037FFD0;
  v31 = handlerCopy;
  [v29 endImpressionWithConfig:v17 completionHandler:v30];

LABEL_14:
}

- (void)engagementRequestForOfferCodeRedemptionSheetWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1003D4160 != -1)
  {
    sub_1002CB534();
  }

  v5 = qword_1003CB4F8;
  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v30 = 2082;
    v31 = "[StoreKitServiceConnection engagementRequestForOfferCodeRedemptionSheetWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
  }

  v6 = [_TtC9storekitd6Client alloc];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(Client *)v6 initWithConnection:v7 overridesDictionary:0];

  if (!v8)
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD5C8();
    }

    goto LABEL_16;
  }

  if (![(Client *)v8 isClip])
  {
    v9 = [OctaneManager simulatedStoreKitErrorFor:8 client:v8];
    if (v9)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v10 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v30 = 2114;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Found simulated failure: %{public}@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    account = [(Client *)v8 account];
    v12 = [(StoreKitServiceConnection *)self _offerCodeRedemptionURLForClient:v8];
    v13 = v12;
    if (!v12)
    {
      goto LABEL_31;
    }

    scheme = [v12 scheme];
    v15 = [scheme isEqualToString:@"itms-ui"];

    if (v15)
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      v16 = qword_1003CB4F8;
      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        callerBundleID = [(Client *)v8 callerBundleID];
        *buf = 138543618;
        selfCopy3 = self;
        v30 = 2114;
        v31 = callerBundleID;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Using code redeem legacy flow for %{public}@", buf, 0x16u);
      }

      v19 = +[LSApplicationWorkspace defaultWorkspace];
      [v19 openSensitiveURL:v13 withOptions:&__NSDictionary0__struct];

LABEL_31:
      v20 = ASDErrorWithDescription();
      v21 = 0;
LABEL_43:
      replyCopy[2](replyCopy, v20, v21);

      goto LABEL_18;
    }

    v22 = objc_alloc_init(AMSEngagementRequest);
    [v22 setURL:v13];
    [v22 setAccount:account];
    v27 = 0;
    v23 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v27];
    v20 = v27;
    if (v23)
    {
      v26 = v20;
      v21 = [_TtC9storekitd25ObjcInAppEngagementHelper remoteEngagementRequestDataWithEngagementRequestData:v23 client:v8 logKey:0 error:&v26];
      v24 = v26;

      if (!v24)
      {
        v20 = 0;
        goto LABEL_42;
      }

      v25 = sub_10003BE38(1u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1002CD490();
      }

      v20 = [v24 toASDErrorWithMetadata:0];
    }

    else
    {
      v24 = sub_10003BE38(1u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1002CD4F8();
      }

      v21 = 0;
    }

LABEL_42:
    goto LABEL_43;
  }

  if (qword_1003D4160 != -1)
  {
    sub_1002CB50C();
  }

  if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
  {
    sub_1002CD560();
  }

LABEL_16:
  v9 = ASDErrorWithDescription();
LABEL_17:
  replyCopy[2](replyCopy, v9, 0);
LABEL_18:
}

- (void)downloadManager:(id)manager updatedStatus:(id)status
{
  managerCopy = manager;
  statusCopy = status;
  v8 = self->_downloadIDs;
  objc_sync_enter(v8);
  downloadIDs = self->_downloadIDs;
  downloadID = [statusCopy downloadID];
  LODWORD(downloadIDs) = [(NSMutableSet *)downloadIDs containsObject:downloadID];

  objc_sync_exit(v8);
  if (downloadIDs)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [statusCopy state]);
    [v11 setObject:v12 forKeyedSubscript:@"state"];

    [statusCopy progress];
    v13 = [NSNumber numberWithDouble:?];
    [v11 setObject:v13 forKeyedSubscript:@"progress"];

    [statusCopy timeRemaining];
    v14 = [NSNumber numberWithDouble:?];
    [v11 setObject:v14 forKeyedSubscript:@"time-remaining"];

    error = [statusCopy error];
    v16 = [error toASDErrorWithMetadata:0];
    [v11 setObject:v16 forKeyedSubscript:@"error"];

    installPath = [statusCopy installPath];
    [v11 setObject:installPath forKeyedSubscript:@"download-install-path"];

    remoteObject = self->_remoteObject;
    v26[0] = @"download";
    downloadID2 = [statusCopy downloadID];
    v26[1] = @"download-status";
    v27[0] = downloadID2;
    v27[1] = v11;
    v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    [(SKClientProtocol *)remoteObject downloadStatusChanged:v20];

    if ([statusCopy state] == 3 || objc_msgSend(statusCopy, "state") == 4)
    {
      v21 = self->_remoteObject;
      v24 = @"download";
      downloadID3 = [statusCopy downloadID];
      v25 = downloadID3;
      v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [(SKClientProtocol *)v21 downloadRemoved:v23];
    }
  }
}

- (id)_bundleURLForConnection:(id)connection
{
  if (proc_pidpath([connection processIdentifier], buffer, 0x1000u) < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSString stringWithUTF8String:buffer];
    if (v3)
    {
      v4 = CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = _CFBundleCopyBundleURLForExecutableURL();
        CFRelease(v5);
        goto LABEL_7;
      }
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_processDownloadsForTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v4 = +[InAppDownloadManager manager];
  v5 = [v4 processDownloadsForTransactions:transactionsCopy];

  obj = self->_downloadIDs;
  objc_sync_enter(obj);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [v10 tcr_numberForKey:{off_1003CAFC8, obj}];
        v12 = [v10 tcr_arrayForKey:@"assets"];
        if ([v12 count])
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          if (qword_1003D4160 != -1)
          {
            sub_1002CB50C();
          }

          v14 = off_1003CB4F0;
          if (os_log_type_enabled(off_1003CB4F0, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            selfCopy = self;
            v24 = 2114;
            v25 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@: Processed download with ID: %{public}@", buf, 0x16u);
          }

          [(NSMutableSet *)self->_downloadIDs addObject:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);

  return v6;
}

- (id)_offerCodeRedemptionURLForClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy bag];
  v5 = +[_TtC9storekitd6BagKey redeemCodeURL];
  v6 = [v4 URLForKey:v5];
  v25 = 0;
  v7 = [v6 valueWithError:&v25];
  v8 = v25;

  if (v7)
  {
    v9 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];
    if ([clientCopy objc_clientType] != 3)
    {
      v10 = [clientCopy bag];
      v11 = [_TtC9storekitd20objc_URLParserHelper urlTypeFor:v7 bag:v10 error:0];

      if (!v11 || [v11 integerValue] == 1)
      {
        [v9 setScheme:@"itms-ui"];
      }
    }

    queryItems = [v9 queryItems];
    v13 = [NSMutableArray arrayWithArray:queryItems];

    requestBundleID = [clientCopy requestBundleID];
    v15 = [NSURLQueryItem queryItemWithName:@"pbid" value:requestBundleID];

    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [clientCopy storeItemID]);
    v17 = [NSURLQueryItem queryItemWithName:@"paid" value:v16];

    v18 = [NSURLQueryItem queryItemWithName:@"ctx" value:@"offercodes"];
    v26[0] = v15;
    v26[1] = v17;
    v26[2] = v18;
    v19 = [NSArray arrayWithObjects:v26 count:3];
    [v13 addObjectsFromArray:v19];

    v20 = [NSArray arrayWithArray:v13];
    [v9 setQueryItems:v20];

    v21 = [v9 URL];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      if (qword_1003D4160 != -1)
      {
        sub_1002CB50C();
      }

      if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
      {
        sub_1002CD630();
      }
    }
  }

  else
  {
    if (qword_1003D4160 != -1)
    {
      sub_1002CB50C();
    }

    if (os_log_type_enabled(qword_1003CB4F8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CD66C();
    }

    v22 = 0;
  }

  return v22;
}

+ (int64_t)_apiVersionForClientDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:off_1003CAE90];
  v4 = v3;
  if (v3 && ([v3 isEqualToNumber:&off_1003A1498] & 1) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)performPurchase:(id)purchase authDelegate:(id)delegate reply:(id)reply
{
  v8 = _Block_copy(reply);
  purchaseCopy = purchase;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  StoreKitServiceConnection.performPurchase(_:authDelegate:reply:)(v10, v12, delegate, sub_1000EBF9C, v13);

  sub_10008E168(v10, v12);
  swift_unknownObjectRelease();
}

- (void)executeAppTransactionQuery:(id)query withReceiver:(id)receiver ignoreCache:(BOOL)cache reply:(id)reply
{
  cacheCopy = cache;
  v10 = _Block_copy(reply);
  queryCopy = query;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  _Block_copy(v10);
  sub_1001E8078(v12, v14, receiver, cacheCopy, selfCopy, v10);
  _Block_release(v10);
  sub_10008E168(v12, v14);
  swift_unknownObjectRelease();
}

- (void)_handleTokenFamily:(id)family bundleID:(id)d reply:(id)reply
{
  v8 = _Block_copy(reply);
  familyCopy = family;
  dCopy = d;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  _Block_copy(v8);
  sub_1001EE498(v11, v13, v14, v16, selfCopy, v8);
  _Block_release(v8);

  sub_10008E168(v11, v13);
}

- (void)presentRefundRequestSheetForTransactionID:(id)d sceneID:(id)iD reply:(id)reply
{
  v8 = _Block_copy(reply);
  if (iD)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    iD = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  dCopy = d;
  selfCopy = self;
  sub_1001F33BC(dCopy, v9, iD, selfCopy, v8);
  _Block_release(v8);
}

- (void)isEligibleForIntroductoryOfferForGroupID:(id)d reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10020B42C(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

@end