@interface MZKeyValueStoreController
- (BOOL)AMSURLSession:(id)a3 shouldHandleAuthenticationForAccount:(id)a4 dialogDictionary:(id)a5;
- (BOOL)AMSURLSession:(id)a3 task:(id)a4 shouldFailWithServerError:(id)a5;
- (BOOL)_authenticationCanProcessTransaction:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)_clampsCanScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)_delegateShouldScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)_delegateTransactionDidFail:(id)a3 withError:(id)a4;
- (BOOL)_isEnabledForTransaction:(id)a3 error:(id *)a4;
- (BOOL)_isTransactionValid:(id)a3 error:(id *)a4;
- (BOOL)isIdle;
- (MZKeyValueStoreController)initWithDomain:(id)a3 baseURLForGETAll:(id)a4 baseURLForPUTAll:(id)a5;
- (MZKeyValueStoreControllerDelegate)delegate;
- (id)_requestForTransaction:(id)a3;
- (id)_scheduleTransactionWithType:(int)a3 sinceDomainVersion:(id)a4 URL:(id)a5 keys:(id)a6 processor:(id)a7;
- (id)scheduleApnSubscriptionTransactionWithPushSubscriptionRequest:(id)a3;
- (id)scheduleGetAllTransactionWithSinceDomainVersion:(id)a3 processor:(id)a4;
- (id)scheduleGetTransactionWithKeys:(id)a3 processor:(id)a4;
- (id)scheduleSetTransactionWithKeys:(id)a3 processor:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)_addPendingTransaction:(id)a3;
- (void)_beginBackgroundTask;
- (void)_cancelAllPendingTransactions:(id)a3;
- (void)_cancelTransaction:(id)a3 error:(id)a4;
- (void)_currentTransactionDidFinish;
- (void)_delegateTransactionDidCancel:(id)a3 withError:(id)a4;
- (void)_delegateTransactionDidFinish:(id)a3;
- (void)_endBackgroundTask;
- (void)_enqueueStoreRequest:(id)a3 withUrlRequest:(id)a4;
- (void)_errorResolutionCancel:(id)a3 transaction:(id)a4;
- (void)_errorResolutionDefault:(id)a3 transaction:(id)a4;
- (void)_errorResolutionRetry:(id)a3 transaction:(id)a4;
- (void)_networkTypeChangedNotification:(id)a3;
- (void)_processCurrentTransaction;
- (void)_processOperationOutput:(id)a3 forRequest:(id)a4;
- (void)_processPendingTransactions;
- (void)_resolveError:(id)a3 transaction:(id)a4 resolution:(int)a5;
- (void)_scheduleTransaction:(id)a3;
- (void)_transactionDidCancel:(id)a3 withError:(id)a4;
- (void)_transactionDidFail:(id)a3 withError:(id)a4;
- (void)cancelAllTransactions;
- (void)cancelAllTransactionsCancelCode:(int64_t)a3;
- (void)cancelScheduledTransaction:(id)a3;
- (void)dealloc;
- (void)deserializeOperationDidFinish:(id)a3 shouldReschedule:(BOOL)a4;
- (void)keyValueStoreOperation:(id)a3 scheduleURLRequest:(id)a4;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
- (void)reset;
- (void)resolveError:(id)a3 transaction:(id)a4 resolution:(int)a5;
- (void)scheduleTransaction:(id)a3;
- (void)setDefaultDomain:(id)a3;
- (void)setDefaultGetURL:(id)a3;
- (void)setDefaultSetURL:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation MZKeyValueStoreController

- (void)reset
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100043998;
  v2[3] = &unk_1004D8358;
  v2[4] = self;
  [(MZKeyValueStoreController *)self performBlock:v2];
}

- (MZKeyValueStoreController)initWithDomain:(id)a3 baseURLForGETAll:(id)a4 baseURLForPUTAll:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = MZKeyValueStoreController;
  v12 = [(MZKeyValueStoreController *)&v28 init];
  v13 = v12;
  if (v12)
  {
    v12->_enabled = 1;
    v12->_canRequestStoreSignIn = 1;
    v14 = dispatch_queue_create("com.apple.MZKeyValueStoreController", 0);
    dispatchQueue = v13->_dispatchQueue;
    v13->_dispatchQueue = v14;

    v16 = [[IMURLRequestService alloc] initWithConcurrentOperationCount:1 requestEncodingType:0];
    urlRequestService = v13->_urlRequestService;
    v13->_urlRequestService = v16;

    [(IMURLRequestService *)v13->_urlRequestService setUrlSessionDelegate:v13];
    [(IMURLRequestService *)v13->_urlRequestService setPersonalizeRequests:1];
    v18 = objc_alloc_init(NSMutableArray);
    pendingTransactions = v13->_pendingTransactions;
    v13->_pendingTransactions = v18;

    v20 = objc_alloc_init(MZKeyValueStoreAuthenticationController);
    authenticationController = v13->_authenticationController;
    v13->_authenticationController = v20;

    v22 = objc_alloc_init(_TtC8Podcasts20CloudSyncBugReporter);
    cloudSyncBugReporter = v13->_cloudSyncBugReporter;
    v13->_cloudSyncBugReporter = v22;

    objc_storeStrong(&v13->_defaultDomain, a3);
    objc_storeStrong(&v13->_defaultGetURL, a4);
    objc_storeStrong(&v13->_defaultSetURL, a5);
    v24 = +[NSNotificationCenter defaultCenter];
    v25 = IMNetworkTypeChangedNotification;
    v26 = +[IMNetworkObserver sharedInstance];
    [v24 addObserver:v13 selector:"_networkTypeChangedNotification:" name:v25 object:v26];
  }

  return v13;
}

- (void)dealloc
{
  [(MZKeyValueStoreController *)self _endBackgroundTask];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = IMNetworkTypeChangedNotification;
  v5 = +[IMNetworkObserver sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = MZKeyValueStoreController;
  [(MZKeyValueStoreController *)&v6 dealloc];
}

- (void)setDefaultDomain:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_defaultDomain isEqualToString:?])
  {
    v4 = [v6 copy];
    defaultDomain = self->_defaultDomain;
    self->_defaultDomain = v4;

    [(MZKeyValueStoreController *)self reset];
  }
}

- (void)setDefaultGetURL:(id)a3
{
  v6 = a3;
  if (([(NSURL *)self->_defaultGetURL isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    defaultGetURL = self->_defaultGetURL;
    self->_defaultGetURL = v4;

    [(MZKeyValueStoreController *)self reset];
  }
}

- (void)setDefaultSetURL:(id)a3
{
  v6 = a3;
  if (([(NSURL *)self->_defaultSetURL isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    defaultSetURL = self->_defaultSetURL;
    self->_defaultSetURL = v4;

    [(MZKeyValueStoreController *)self reset];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009DD64;
    v5[3] = &unk_1004D8358;
    v5[4] = self;
    [(MZKeyValueStoreController *)self performBlock:v5];
  }
}

- (void)_networkTypeChangedNotification:(id)a3
{
  v4 = [(MZKeyValueStoreController *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DF28;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(v4, block);
}

- (id)scheduleGetAllTransactionWithSinceDomainVersion:(id)a3 processor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MZKeyValueStoreController *)self defaultGetURL];
  v9 = [(MZKeyValueStoreController *)self _scheduleTransactionWithType:1 sinceDomainVersion:v7 URL:v8 keys:0 processor:v6];

  return v9;
}

- (id)scheduleGetTransactionWithKeys:(id)a3 processor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MZKeyValueStoreController *)self defaultGetURL];
  v9 = [(MZKeyValueStoreController *)self _scheduleTransactionWithType:1 sinceDomainVersion:0 URL:v8 keys:v7 processor:v6];

  return v9;
}

- (id)scheduleSetTransactionWithKeys:(id)a3 processor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MZKeyValueStoreController *)self defaultSetURL];
  v9 = [(MZKeyValueStoreController *)self _scheduleTransactionWithType:2 sinceDomainVersion:0 URL:v8 keys:v7 processor:v6];

  return v9;
}

- (void)scheduleTransaction:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(MZKeyValueStoreController *)self _delegateShouldScheduleTransaction:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009E2A0;
    v9[3] = &unk_1004D8798;
    v9[4] = self;
    v10 = v4;
    [(MZKeyValueStoreController *)self performBlock:v9];
  }

  else
  {
    v7 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MZKeyValueStoreController *)self currentTransaction];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ Did not schedule transaction - %@", buf, 0x16u);
    }

    [(MZKeyValueStoreController *)self _transactionDidFail:v4 withError:v6];
  }
}

- (void)cancelScheduledTransaction:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E340;
  v4[3] = &unk_1004D8798;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MZKeyValueStoreController *)v5 performBlock:v4];
}

- (void)cancelAllTransactions
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009E414;
  v2[3] = &unk_1004D8358;
  v2[4] = self;
  [(MZKeyValueStoreController *)self performBlock:v2];
}

- (void)cancelAllTransactionsCancelCode:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009E54C;
  v3[3] = &unk_1004D9720;
  v3[4] = self;
  v3[5] = a3;
  [(MZKeyValueStoreController *)self performBlock:v3];
}

- (void)resolveError:(id)a3 transaction:(id)a4 resolution:(int)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009E6E4;
  v9[3] = &unk_1004DA7C8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v12;
  v8 = v11;
  [(MZKeyValueStoreController *)v10 performBlock:v9];
}

- (BOOL)isIdle
{
  v3 = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(v3);
  v4 = [(MZKeyValueStoreController *)self currentTransaction];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MZKeyValueStoreController *)self pendingTransactions];
    v5 = [v6 count] == 0;
  }

  objc_sync_exit(v3);
  return v5;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreController *)self dispatchQueue];
  dispatch_async(v5, v4);
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreController *)self dispatchQueue];
  dispatch_sync(v5, v4);
}

- (void)_cancelAllPendingTransactions:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(v5);
  v6 = [(MZKeyValueStoreController *)self pendingTransactions];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [v4 copy];
        v14 = [v12 description];
        [v13 setTransactionDescription:v14];

        [(MZKeyValueStoreController *)self _cancelTransaction:v12 error:v13];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(v15);
  v16 = [(MZKeyValueStoreController *)self pendingTransactions];
  [v16 removeAllObjects];

  objc_sync_exit(v15);
}

- (void)_cancelTransaction:(id)a3 error:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = [(MZKeyValueStoreController *)self currentTransaction];

    if (!v6)
    {
      v6 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:0 underlyingError:0];
    }

    v8 = [v11 description];
    [v6 setTransactionDescription:v8];

    if (v7 == v11)
    {
      [(IMURLRequestService *)self->_urlRequestService cancelAllRequests];
      [(MZKeyValueStoreController *)self setCurrentTransaction:0];
    }

    if ([(MZKeyValueStoreController *)self isResolvingError])
    {
      [(MZKeyValueStoreController *)self _transactionDidCancel:v11 withError:v6];
    }

    else
    {
      [(MZKeyValueStoreController *)self _transactionDidFail:v11 withError:v6];
    }

    v9 = [(MZKeyValueStoreController *)self pendingTransactions];
    objc_sync_enter(v9);
    v10 = [(MZKeyValueStoreController *)self pendingTransactions];
    [v10 removeObject:v11];

    objc_sync_exit(v9);
    [(MZKeyValueStoreController *)self _processPendingTransactions];
  }
}

- (void)_processPendingTransactions
{
  v3 = [(MZKeyValueStoreController *)self currentTransaction];

  if (!v3)
  {
    v4 = [(MZKeyValueStoreController *)self pendingTransactions];
    objc_sync_enter(v4);
    v5 = [(MZKeyValueStoreController *)self pendingTransactions];
    v6 = [v5 firstObject];

    if (v6)
    {
      [(MZKeyValueStoreController *)self setCurrentTransaction:v6];

      objc_sync_exit(v4);

      [(MZKeyValueStoreController *)self _processCurrentTransaction];
    }

    else
    {
      objc_sync_exit(v4);

      [(MZKeyValueStoreController *)self _endBackgroundTask];
    }
  }
}

- (void)_processCurrentTransaction
{
  v3 = [(MZKeyValueStoreController *)self currentTransaction];
  v13 = 0;
  v4 = [(MZKeyValueStoreController *)self _authenticationCanProcessTransaction:v3 error:&v13];
  v5 = v13;

  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MZKeyValueStoreController *)self currentTransaction];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Processing transaction", buf, 0xCu);
    }

    v9 = [(MZKeyValueStoreController *)self currentTransaction];
    v10 = [(MZKeyValueStoreController *)self _requestForTransaction:v9];

    [(MZKeyValueStoreController *)self _beginBackgroundTask];
    [v10 start];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [(MZKeyValueStoreController *)self currentTransaction];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ Authentication cannot process transaction - %@", buf, 0x16u);
    }

    v12 = [(MZKeyValueStoreController *)self clampsController];
    [v12 setDSIDCheckTimestamp];

    v10 = [(MZKeyValueStoreController *)self currentTransaction];
    [(MZKeyValueStoreController *)self _transactionDidFail:v10 withError:v5];
  }
}

- (id)_requestForTransaction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MZKeyValueStoreRequest);
  [(MZKeyValueStoreRequest *)v5 setTransaction:v4];

  [(MZKeyValueStoreRequest *)v5 setDelegate:self];
  v6 = [(MZKeyValueStoreController *)self authenticationController];
  -[MZKeyValueStoreRequest setShouldAuthenticate:](v5, "setShouldAuthenticate:", [v6 shouldAuthenticate]);

  v7 = [(MZKeyValueStoreController *)self authenticationController];
  v8 = [v7 DSID];
  [(MZKeyValueStoreRequest *)v5 setDSID:v8];

  return v5;
}

- (void)_scheduleTransaction:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(MZKeyValueStoreController *)self _canScheduleTransaction:v4 error:&v9];
  v6 = v9;
  v7 = _MTLogCategoryCloudSync();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Scheduling transaction", buf, 0xCu);
    }

    [(MZKeyValueStoreController *)self _addPendingTransaction:v4];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ Did not schedule transaction - %@", buf, 0x16u);
    }

    [(MZKeyValueStoreController *)self _transactionDidFail:v4 withError:v6];
  }
}

- (void)_addPendingTransaction:(id)a3
{
  v7 = a3;
  v4 = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(v4);
  v5 = [(MZKeyValueStoreController *)self clampsController];
  [v5 setTimestampForTransaction:v7];

  v6 = [(MZKeyValueStoreController *)self pendingTransactions];
  [v6 addObject:v7];

  objc_sync_exit(v4);
  [(MZKeyValueStoreController *)self _processPendingTransactions];
}

- (BOOL)_canScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(MZKeyValueStoreController *)self _isEnabledForTransaction:v6 error:a4]&& [(MZKeyValueStoreController *)self _isTransactionValid:v6 error:a4])
  {
    v7 = [(MZKeyValueStoreController *)self _clampsCanScheduleTransaction:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isEnabledForTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MZKeyValueStoreController *)self isEnabled];
  v8 = v7;
  if (a4 && (v7 & 1) == 0)
  {
    *a4 = [MZKeyValueStoreError keyValueStoreDisabledErrorWithTransaction:v6 underlyingError:0];
  }

  return v8;
}

- (BOOL)_isTransactionValid:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 URL];

  if (!v6)
  {
    if (a4)
    {
      v9 = [MZKeyValueStoreError transactionMissingURLErrorWithTransaction:v5 underlyingError:0];
LABEL_8:
      v8 = 0;
      *a4 = v9;
      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [v5 domain];

  if (!v7)
  {
    if (a4)
    {
      v9 = [MZKeyValueStoreError transactionMissingDomainErrorWithTransaction:v5 underlyingError:0];
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)_clampsCanScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MZKeyValueStoreController *)self clampsController];
  LOBYTE(a4) = [v7 canScheduleTransaction:v6 error:a4];

  return a4;
}

- (BOOL)_authenticationCanProcessTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MZKeyValueStoreController *)self clampsController];
  v8 = [v7 hasUserRecentlyAcceptedSync];

  if ((v8 & 1) != 0 || (-[MZKeyValueStoreController authenticationController](self, "authenticationController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isAuthenticationValidForTransaction:v6 error:a4], v9, v10))
  {
    v11 = [(MZKeyValueStoreController *)self authenticationController];
    if ([v11 shouldAuthenticate])
    {
      v12 = [(MZKeyValueStoreController *)self clampsController];
      v13 = [v12 hasAuthenticatedTooRecentlyForTransaction:v6 error:a4];

      v14 = v13 ^ 1;
    }

    else
    {

      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (id)_scheduleTransactionWithType:(int)a3 sinceDomainVersion:(id)a4 URL:(id)a5 keys:(id)a6 processor:(id)a7
{
  v10 = *&a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [MZKeyValueStoreTransaction alloc];
  v17 = [(MZKeyValueStoreController *)self defaultDomain];
  v18 = [(MZKeyValueStoreTransaction *)v16 initWithType:v10 domain:v17 URL:v14 keys:v13];

  [(MZKeyValueStoreTransaction *)v18 setSinceDomainVersion:v15];
  [(MZKeyValueStoreTransaction *)v18 setProcessor:v12];

  [(MZKeyValueStoreController *)self scheduleTransaction:v18];

  return v18;
}

- (void)_currentTransactionDidFinish
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MZKeyValueStoreController *)self currentTransaction];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Transaction did finish %@", &v9, 0xCu);
  }

  [(MZKeyValueStoreController *)self _endBackgroundTask];
  v5 = [(MZKeyValueStoreController *)self currentTransaction];
  [(MZKeyValueStoreController *)self _delegateTransactionDidFinish:v5];

  v6 = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(v6);
  v7 = [(MZKeyValueStoreController *)self pendingTransactions];
  v8 = [(MZKeyValueStoreController *)self currentTransaction];
  [v7 removeObject:v8];

  [(MZKeyValueStoreController *)self setCurrentTransaction:0];
  objc_sync_exit(v6);

  [(MZKeyValueStoreController *)self _processPendingTransactions];
}

- (void)_transactionDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MZKeyValueStoreController *)self currentTransaction];
  if (v8)
  {
    v9 = v8;
    v10 = [(MZKeyValueStoreController *)self currentTransaction];

    if (v10 == v6)
    {
      [(MZKeyValueStoreController *)self _endBackgroundTask];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F824;
  block[3] = &unk_1004D94C8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_transactionDidCancel:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MZKeyValueStoreController *)self currentTransaction];
  if (v8)
  {
    v9 = v8;
    v10 = [(MZKeyValueStoreController *)self currentTransaction];

    if (v10 == v6)
    {
      [(MZKeyValueStoreController *)self _endBackgroundTask];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F988;
  block[3] = &unk_1004D94C8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_processOperationOutput:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 DSID];
  v9 = [(MZKeyValueStoreController *)self authenticationController];
  v10 = [v9 DSID];

  if (([v10 isEqualToString:v8]& 1) != 0)
  {
    v11 = [(MZKeyValueStoreController *)self currentTransaction];
    if (v11 && [(MZKeyValueStoreController *)self isEnabled])
    {
      v12 = [v7 transaction];
      if (v12 != v11)
      {
        v13 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v50 = v12;
          v51 = 2112;
          v52 = v11;
          _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_ERROR, "Ignoring BK response for transaction %@ while current transaction is %@", buf, 0x16u);
        }

        goto LABEL_41;
      }

      v13 = [[MZKeyValueStoreDeserializer alloc] initWithTransaction:v11 response:v6];
      [(MZKeyValueStoreDeserializer *)v13 setDelegate:self];
      if ([(MZKeyValueStoreDeserializer *)v13 success]|| [(MZKeyValueStoreDeserializer *)v13 versionMismatch])
      {
        v14 = [(MZKeyValueStoreController *)self authenticationController];
        [v14 resetAcceptedCredentials];

        v15 = [(MZKeyValueStoreController *)self authenticationController];
        [v15 setShouldAuthenticate:0];

        [(MZKeyValueStoreController *)self setCurrentDeserializer:v13];
        [(MZKeyValueStoreDeserializer *)v13 deserialize];
LABEL_41:

        goto LABEL_42;
      }

      if ([(MZKeyValueStoreDeserializer *)v13 hasBackoff])
      {
        v16 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [(MZKeyValueStoreController *)self currentTransaction];
          v42 = [(MZKeyValueStoreDeserializer *)v13 requestError];
          *buf = 138412546;
          v50 = v17;
          v51 = 2112;
          v52 = v42;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ Deserializer has backoff - %@", buf, 0x16u);
        }

        v18 = [(MZKeyValueStoreController *)self clampsController];
        [v18 backOffForTimeInterval:{-[MZKeyValueStoreDeserializer retrySeconds](v13, "retrySeconds")}];

        v19 = [(MZKeyValueStoreDeserializer *)v13 retrySeconds];
        v20 = [(MZKeyValueStoreDeserializer *)v13 requestError];
        v21 = [MZKeyValueStoreError serverClampErrorWithTransaction:v11 retrySeconds:v20 underlyingError:v19];
      }

      else
      {
        if (![(MZKeyValueStoreDeserializer *)v13 unsupportedClient])
        {
          if ([(MZKeyValueStoreDeserializer *)v13 genericError])
          {
            v26 = _MTLogCategoryCloudSync();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = [(MZKeyValueStoreController *)self currentTransaction];
              v44 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              *buf = 138412546;
              v50 = v27;
              v51 = 2112;
              v52 = v44;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@ Got generic deserializer error - %@", buf, 0x16u);
            }

            v20 = [(MZKeyValueStoreDeserializer *)v13 requestError];
            v28 = [MZKeyValueStoreError storeGenericErrorWithTransaction:v11 underlyingError:v20];
          }

          else if ([(MZKeyValueStoreDeserializer *)v13 validationError])
          {
            v29 = _MTLogCategoryCloudSync();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [(MZKeyValueStoreController *)self currentTransaction];
              v45 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              *buf = 138412546;
              v50 = v30;
              v51 = 2112;
              v52 = v45;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@ Got validation error - %@", buf, 0x16u);
            }

            v20 = [(MZKeyValueStoreDeserializer *)v13 requestError];
            v28 = [MZKeyValueStoreError storeValidationErrorWithTransaction:v11 underlyingError:v20];
          }

          else
          {
            if ([(MZKeyValueStoreDeserializer *)v13 authenticationError])
            {
              if ([(MZKeyValueStoreController *)self canRequestStoreSignIn])
              {
                v31 = [(MZKeyValueStoreController *)self authenticationController];
                v32 = [v31 shouldAuthenticate];

                if ((v32 & 1) == 0)
                {
                  v39 = [(MZKeyValueStoreController *)self clampsController];
                  [v39 clearAuthenticationRequest];

                  v40 = [(MZKeyValueStoreController *)self authenticationController];
                  [v40 setShouldAuthenticate:1];

                  [(MZKeyValueStoreController *)self _processCurrentTransaction];
                  goto LABEL_41;
                }
              }

              v33 = _MTLogCategoryCloudSync();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = [(MZKeyValueStoreController *)self currentTransaction];
                v46 = [(MZKeyValueStoreDeserializer *)v13 requestError];
                *buf = 138412546;
                v50 = v34;
                v51 = 2112;
                v52 = v46;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@ Got authentication error - %@", buf, 0x16u);
              }

              v35 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              v47 = [MZKeyValueStoreError storeAccountSessionExpiredWithTransaction:v11 underlyingError:v35];

              v41 = [(MZKeyValueStoreController *)self cloudSyncBugReporter];
              v36 = [(MZKeyValueStoreController *)self currentTransaction];
              v20 = v47;
              [v41 reportSyncAuthenticationErrorFor:v36 error:v47];

              [(MZKeyValueStoreController *)self _transactionDidFail:v11 withError:v47];
              goto LABEL_40;
            }

            v37 = _MTLogCategoryCloudSync();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = [(MZKeyValueStoreController *)self currentTransaction];
              v48 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              *buf = 138412546;
              v50 = v38;
              v51 = 2112;
              v52 = v48;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@ Got unknown error - %@", buf, 0x16u);
            }

            v20 = [(MZKeyValueStoreDeserializer *)v13 requestError];
            v28 = [MZKeyValueStoreError unknownErrorWithTransaction:v11 underlyingError:v20];
          }

          v25 = v28;
          [(MZKeyValueStoreController *)self _transactionDidFail:v11 withError:v28];
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        v22 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [(MZKeyValueStoreController *)self currentTransaction];
          v43 = [(MZKeyValueStoreDeserializer *)v13 requestError];
          *buf = 138412546;
          v50 = v23;
          v51 = 2112;
          v52 = v43;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@ Got unsupported client error - %@", buf, 0x16u);
        }

        v24 = [(MZKeyValueStoreController *)self clampsController];
        [v24 setNetworkingBlocked];

        v20 = [(MZKeyValueStoreDeserializer *)v13 requestError];
        v21 = [MZKeyValueStoreError killSwitchErrorWithTransaction:v11 underlyingError:v20];
      }

      v25 = v21;
      [(MZKeyValueStoreController *)self _cancelAllPendingTransactions:v21];
      goto LABEL_39;
    }
  }

  else
  {
    v11 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = v8;
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Ignoring BK response for dsid = %@ while currentDsid = %@", buf, 0x16u);
    }
  }

LABEL_42:
}

- (void)_enqueueStoreRequest:(id)a3 withUrlRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  urlRequestService = self->_urlRequestService;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A02C8;
  v10[3] = &unk_1004DA7F0;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [(IMURLRequestService *)urlRequestService performUrlRequest:v7 callback:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_resolveError:(id)a3 transaction:(id)a4 resolution:(int)a5
{
  v13 = a3;
  v8 = a4;
  [(MZKeyValueStoreController *)self setResolvingError:1];
  if (([v13 isTransactionCancelledError] & 1) == 0)
  {
    v9 = [(MZKeyValueStoreController *)self currentTransaction];
    v10 = v9;
    if (v9 == v8)
    {
    }

    else
    {
      v11 = [(MZKeyValueStoreController *)self currentTransaction];

      if (v11)
      {
        goto LABEL_7;
      }
    }

    v12 = [(MZKeyValueStoreController *)self clampsController];
    [v12 clearDSIDCheckTimestamp];

LABEL_7:
    if (a5 == 2)
    {
      [(MZKeyValueStoreController *)self _errorResolutionCancel:v13 transaction:v8];
    }

    else if (a5 == 1)
    {
      [(MZKeyValueStoreController *)self _errorResolutionRetry:v13 transaction:v8];
    }

    else
    {
      [(MZKeyValueStoreController *)self _errorResolutionDefault:v13 transaction:v8];
    }
  }

  [(MZKeyValueStoreController *)self setResolvingError:0];
}

- (void)_errorResolutionRetry:(id)a3 transaction:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 isAccountsChangedError])
  {
    v7 = [(MZKeyValueStoreController *)self clampsController];
    [v7 setUserAcceptedSyncTimestamp];
LABEL_5:

    [(MZKeyValueStoreController *)self _processCurrentTransaction];
    goto LABEL_7;
  }

  v8 = [v11 isAuthenticationError];
  v9 = [(MZKeyValueStoreController *)self clampsController];
  v10 = v9;
  if (v8)
  {
    [v9 setUserAcceptedSyncTimestamp];

    v7 = [(MZKeyValueStoreController *)self authenticationController];
    [v7 resetAcceptedCredentials];
    goto LABEL_5;
  }

  [v9 clearTimestampForTransaction:v6];

  [(MZKeyValueStoreController *)self scheduleTransaction:v6];
LABEL_7:
}

- (void)_errorResolutionCancel:(id)a3 transaction:(id)a4
{
  v7 = a4;
  v6 = a3;
  if ([v6 isAuthenticationError])
  {
    [(MZKeyValueStoreController *)self _cancelAllPendingTransactions:v6];
  }

  else
  {
    [(MZKeyValueStoreController *)self _cancelTransaction:v7 error:v6];
  }
}

- (void)_errorResolutionDefault:(id)a3 transaction:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (![v12 isAuthenticationError])
  {
    goto LABEL_5;
  }

  v7 = [(MZKeyValueStoreController *)self currentTransaction];
  v8 = v7;
  if (v7 != v6)
  {

LABEL_5:
    v11 = 2;
    goto LABEL_6;
  }

  v9 = [(MZKeyValueStoreController *)self authenticationController];
  v10 = [v9 shouldAuthenticate];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = 1;
LABEL_6:
  [(MZKeyValueStoreController *)self _resolveError:v12 transaction:v6 resolution:v11];
}

- (BOOL)_delegateShouldScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MZKeyValueStoreController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MZKeyValueStoreController *)self delegate];
    v10 = [v9 keyValueStoreController:self shouldScheduleTransaction:v6];

    if (a4 && (v10 & 1) == 0)
    {
      [MZKeyValueStoreError delegateCancelledErrorWithTransaction:v6 underlyingError:0];
      *a4 = v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_delegateTransactionDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MZKeyValueStoreController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MZKeyValueStoreController *)self delegate];
    v11 = [v10 keyValueStoreController:self transaction:v6 didFailWithError:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_delegateTransactionDidCancel:(id)a3 withError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MZKeyValueStoreController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MZKeyValueStoreController *)self delegate];
    [v9 keyValueStoreController:self transaction:v10 didCancelWithError:v6];
  }
}

- (void)_delegateTransactionDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A0A30;
    v7[3] = &unk_1004D8798;
    v7[4] = self;
    v8 = v4;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)_beginBackgroundTask
{
  if ((+[PFClientUtil isRunningOnHomepod]& 1) == 0)
  {
    v3 = [(MZKeyValueStoreController *)self backgroundTaskAssertion];

    if (!v3)
    {
      v4 = [(MZKeyValueStoreController *)self currentTransaction];
      v5 = [v4 assertionName];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = [NSString stringWithFormat:@"[%@ _beginBackgroundTask] - No transaction", self];
      }

      v8 = v7;

      objc_initWeak(&location, self);
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = sub_1000089FC;
      v18 = sub_10003B4D4;
      v19 = 0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000A0C80;
      v12[3] = &unk_1004DA818;
      objc_copyWeak(&v13, &location);
      v12[4] = &v14;
      v9 = [MZTaskAssertion newBackgroundTaskWithExpirationHandler:v12 debugInfo:v8];
      v10 = v15[5];
      v15[5] = v9;

      v11 = self;
      objc_sync_enter(v11);
      [(MZKeyValueStoreController *)v11 setBackgroundTaskAssertion:v15[5]];
      objc_sync_exit(v11);

      _Block_object_dispose(&v14, 8);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_endBackgroundTask
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MZKeyValueStoreController *)v2 backgroundTaskAssertion];
  [(MZKeyValueStoreController *)v2 setBackgroundTaskAssertion:0];
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0E0C;
    block[3] = &unk_1004D8358;
    v5 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_sync_exit(v2);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 statusCode] == 511)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A0EF4;
    v10[3] = &unk_1004D8358;
    v10[4] = self;
    [(MZKeyValueStoreController *)self performBlock:v10];
  }

  v9[2](v9, 1);
}

- (BOOL)AMSURLSession:(id)a3 shouldHandleAuthenticationForAccount:(id)a4 dialogDictionary:(id)a5
{
  v6 = [(MZKeyValueStoreController *)self currentTransaction:a3];
  [MZKeyValueStoreError storeAccountSessionExpiredWithTransaction:v6 underlyingError:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A10E0;
  v10[3] = &unk_1004D94C8;
  v10[4] = self;
  v12 = v11 = v6;
  v7 = v12;
  v8 = v6;
  [(MZKeyValueStoreController *)self performBlock:v10];

  return 0;
}

- (BOOL)AMSURLSession:(id)a3 task:(id)a4 shouldFailWithServerError:(id)a5
{
  v6 = a5;
  v7 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(MZKeyValueStoreController *)self currentTransaction];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ AMSURLSession server failure - %@", &v13, 0x16u);
  }

  v9 = [(MZKeyValueStoreController *)self currentTransaction];
  v10 = [MZKeyValueStoreError unknownErrorWithTransaction:v9 underlyingError:v6];

  v11 = [(MZKeyValueStoreController *)self currentTransaction];
  [(MZKeyValueStoreController *)self _transactionDidFail:v11 withError:v10];

  return 1;
}

- (void)keyValueStoreOperation:(id)a3 scheduleURLRequest:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MZKeyValueStoreController *)self clampsController];
  v8 = [v7 isNetworkingBlocked];

  if ((v8 & 1) == 0)
  {
    [(MZKeyValueStoreController *)self _enqueueStoreRequest:v9 withUrlRequest:v6];
  }
}

- (void)deserializeOperationDidFinish:(id)a3 shouldReschedule:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MZKeyValueStoreController *)self currentDeserializer];

  if (v7 == v6)
  {
    if (v4)
    {
      [(MZKeyValueStoreController *)self _processCurrentTransaction];
    }

    else
    {
      [(MZKeyValueStoreController *)self _currentTransactionDidFinish];
    }

    v8 = [(MZKeyValueStoreController *)self currentDeserializer];
    [v8 setDelegate:0];

    [(MZKeyValueStoreController *)self setCurrentDeserializer:0];
  }
}

- (MZKeyValueStoreControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)scheduleApnSubscriptionTransactionWithPushSubscriptionRequest:(id)a3
{
  v4 = a3;
  v5 = [MTApnsDictionaryProcessor alloc];
  v6 = [v4 parameters];
  v7 = [(MTApnsDictionaryProcessor *)v5 initWithDictionary:v6];

  v8 = [MTApnsTransaction alloc];
  v9 = [(MZKeyValueStoreController *)self defaultDomain];
  v10 = [(MZKeyValueStoreController *)self defaultSetURL];
  v11 = [v4 parameters];

  v12 = [v11 allKeys];
  v13 = [(MZKeyValueStoreTransaction *)v8 initWithType:2 domain:v9 URL:v10 keys:v12];

  [(MZKeyValueStoreTransaction *)v13 setSinceDomainVersion:@"0"];
  [(MZKeyValueStoreTransaction *)v13 setProcessor:v7];
  [(MZKeyValueStoreController *)self scheduleTransaction:v13];

  return v13;
}

@end