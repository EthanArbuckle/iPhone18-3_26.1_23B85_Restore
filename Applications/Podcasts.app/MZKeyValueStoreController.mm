@interface MZKeyValueStoreController
- (BOOL)AMSURLSession:(id)session shouldHandleAuthenticationForAccount:(id)account dialogDictionary:(id)dictionary;
- (BOOL)AMSURLSession:(id)session task:(id)task shouldFailWithServerError:(id)error;
- (BOOL)_authenticationCanProcessTransaction:(id)transaction error:(id *)error;
- (BOOL)_canScheduleTransaction:(id)transaction error:(id *)error;
- (BOOL)_clampsCanScheduleTransaction:(id)transaction error:(id *)error;
- (BOOL)_delegateShouldScheduleTransaction:(id)transaction error:(id *)error;
- (BOOL)_delegateTransactionDidFail:(id)fail withError:(id)error;
- (BOOL)_isEnabledForTransaction:(id)transaction error:(id *)error;
- (BOOL)_isTransactionValid:(id)valid error:(id *)error;
- (BOOL)isIdle;
- (MZKeyValueStoreController)initWithDomain:(id)domain baseURLForGETAll:(id)all baseURLForPUTAll:(id)tAll;
- (MZKeyValueStoreControllerDelegate)delegate;
- (id)_requestForTransaction:(id)transaction;
- (id)_scheduleTransactionWithType:(int)type sinceDomainVersion:(id)version URL:(id)l keys:(id)keys processor:(id)processor;
- (id)scheduleApnSubscriptionTransactionWithPushSubscriptionRequest:(id)request;
- (id)scheduleGetAllTransactionWithSinceDomainVersion:(id)version processor:(id)processor;
- (id)scheduleGetTransactionWithKeys:(id)keys processor:(id)processor;
- (id)scheduleSetTransactionWithKeys:(id)keys processor:(id)processor;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)_addPendingTransaction:(id)transaction;
- (void)_beginBackgroundTask;
- (void)_cancelAllPendingTransactions:(id)transactions;
- (void)_cancelTransaction:(id)transaction error:(id)error;
- (void)_currentTransactionDidFinish;
- (void)_delegateTransactionDidCancel:(id)cancel withError:(id)error;
- (void)_delegateTransactionDidFinish:(id)finish;
- (void)_endBackgroundTask;
- (void)_enqueueStoreRequest:(id)request withUrlRequest:(id)urlRequest;
- (void)_errorResolutionCancel:(id)cancel transaction:(id)transaction;
- (void)_errorResolutionDefault:(id)default transaction:(id)transaction;
- (void)_errorResolutionRetry:(id)retry transaction:(id)transaction;
- (void)_networkTypeChangedNotification:(id)notification;
- (void)_processCurrentTransaction;
- (void)_processOperationOutput:(id)output forRequest:(id)request;
- (void)_processPendingTransactions;
- (void)_resolveError:(id)error transaction:(id)transaction resolution:(int)resolution;
- (void)_scheduleTransaction:(id)transaction;
- (void)_transactionDidCancel:(id)cancel withError:(id)error;
- (void)_transactionDidFail:(id)fail withError:(id)error;
- (void)cancelAllTransactions;
- (void)cancelAllTransactionsCancelCode:(int64_t)code;
- (void)cancelScheduledTransaction:(id)transaction;
- (void)dealloc;
- (void)deserializeOperationDidFinish:(id)finish shouldReschedule:(BOOL)reschedule;
- (void)keyValueStoreOperation:(id)operation scheduleURLRequest:(id)request;
- (void)performBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
- (void)reset;
- (void)resolveError:(id)error transaction:(id)transaction resolution:(int)resolution;
- (void)scheduleTransaction:(id)transaction;
- (void)setDefaultDomain:(id)domain;
- (void)setDefaultGetURL:(id)l;
- (void)setDefaultSetURL:(id)l;
- (void)setEnabled:(BOOL)enabled;
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

- (MZKeyValueStoreController)initWithDomain:(id)domain baseURLForGETAll:(id)all baseURLForPUTAll:(id)tAll
{
  domainCopy = domain;
  allCopy = all;
  tAllCopy = tAll;
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

    objc_storeStrong(&v13->_defaultDomain, domain);
    objc_storeStrong(&v13->_defaultGetURL, all);
    objc_storeStrong(&v13->_defaultSetURL, tAll);
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

- (void)setDefaultDomain:(id)domain
{
  domainCopy = domain;
  if (![(NSString *)self->_defaultDomain isEqualToString:?])
  {
    v4 = [domainCopy copy];
    defaultDomain = self->_defaultDomain;
    self->_defaultDomain = v4;

    [(MZKeyValueStoreController *)self reset];
  }
}

- (void)setDefaultGetURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_defaultGetURL isEqual:?]& 1) == 0)
  {
    v4 = [lCopy copy];
    defaultGetURL = self->_defaultGetURL;
    self->_defaultGetURL = v4;

    [(MZKeyValueStoreController *)self reset];
  }
}

- (void)setDefaultSetURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_defaultSetURL isEqual:?]& 1) == 0)
  {
    v4 = [lCopy copy];
    defaultSetURL = self->_defaultSetURL;
    self->_defaultSetURL = v4;

    [(MZKeyValueStoreController *)self reset];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
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

- (void)_networkTypeChangedNotification:(id)notification
{
  dispatchQueue = [(MZKeyValueStoreController *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DF28;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)scheduleGetAllTransactionWithSinceDomainVersion:(id)version processor:(id)processor
{
  processorCopy = processor;
  versionCopy = version;
  defaultGetURL = [(MZKeyValueStoreController *)self defaultGetURL];
  v9 = [(MZKeyValueStoreController *)self _scheduleTransactionWithType:1 sinceDomainVersion:versionCopy URL:defaultGetURL keys:0 processor:processorCopy];

  return v9;
}

- (id)scheduleGetTransactionWithKeys:(id)keys processor:(id)processor
{
  processorCopy = processor;
  keysCopy = keys;
  defaultGetURL = [(MZKeyValueStoreController *)self defaultGetURL];
  v9 = [(MZKeyValueStoreController *)self _scheduleTransactionWithType:1 sinceDomainVersion:0 URL:defaultGetURL keys:keysCopy processor:processorCopy];

  return v9;
}

- (id)scheduleSetTransactionWithKeys:(id)keys processor:(id)processor
{
  processorCopy = processor;
  keysCopy = keys;
  defaultSetURL = [(MZKeyValueStoreController *)self defaultSetURL];
  v9 = [(MZKeyValueStoreController *)self _scheduleTransactionWithType:2 sinceDomainVersion:0 URL:defaultSetURL keys:keysCopy processor:processorCopy];

  return v9;
}

- (void)scheduleTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11 = 0;
  v5 = [(MZKeyValueStoreController *)self _delegateShouldScheduleTransaction:transactionCopy error:&v11];
  v6 = v11;
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009E2A0;
    v9[3] = &unk_1004D8798;
    v9[4] = self;
    v10 = transactionCopy;
    [(MZKeyValueStoreController *)self performBlock:v9];
  }

  else
  {
    v7 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
      *buf = 138412546;
      v13 = currentTransaction;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ Did not schedule transaction - %@", buf, 0x16u);
    }

    [(MZKeyValueStoreController *)self _transactionDidFail:transactionCopy withError:v6];
  }
}

- (void)cancelScheduledTransaction:(id)transaction
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E340;
  v4[3] = &unk_1004D8798;
  selfCopy = self;
  transactionCopy = transaction;
  v3 = transactionCopy;
  [(MZKeyValueStoreController *)selfCopy performBlock:v4];
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

- (void)cancelAllTransactionsCancelCode:(int64_t)code
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009E54C;
  v3[3] = &unk_1004D9720;
  v3[4] = self;
  v3[5] = code;
  [(MZKeyValueStoreController *)self performBlock:v3];
}

- (void)resolveError:(id)error transaction:(id)transaction resolution:(int)resolution
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009E6E4;
  v9[3] = &unk_1004DA7C8;
  selfCopy = self;
  errorCopy = error;
  transactionCopy = transaction;
  resolutionCopy = resolution;
  v7 = transactionCopy;
  v8 = errorCopy;
  [(MZKeyValueStoreController *)selfCopy performBlock:v9];
}

- (BOOL)isIdle
{
  pendingTransactions = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(pendingTransactions);
  currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
  if (currentTransaction)
  {
    v5 = 0;
  }

  else
  {
    pendingTransactions2 = [(MZKeyValueStoreController *)self pendingTransactions];
    v5 = [pendingTransactions2 count] == 0;
  }

  objc_sync_exit(pendingTransactions);
  return v5;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = [(MZKeyValueStoreController *)self dispatchQueue];
  dispatch_async(dispatchQueue, blockCopy);
}

- (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  dispatchQueue = [(MZKeyValueStoreController *)self dispatchQueue];
  dispatch_sync(dispatchQueue, waitCopy);
}

- (void)_cancelAllPendingTransactions:(id)transactions
{
  transactionsCopy = transactions;
  pendingTransactions = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(pendingTransactions);
  pendingTransactions2 = [(MZKeyValueStoreController *)self pendingTransactions];
  v7 = [pendingTransactions2 copy];

  objc_sync_exit(pendingTransactions);
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
        v13 = [transactionsCopy copy];
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

  pendingTransactions3 = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(pendingTransactions3);
  pendingTransactions4 = [(MZKeyValueStoreController *)self pendingTransactions];
  [pendingTransactions4 removeAllObjects];

  objc_sync_exit(pendingTransactions3);
}

- (void)_cancelTransaction:(id)transaction error:(id)error
{
  transactionCopy = transaction;
  errorCopy = error;
  if (transactionCopy)
  {
    currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];

    if (!errorCopy)
    {
      errorCopy = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:0 underlyingError:0];
    }

    v8 = [transactionCopy description];
    [errorCopy setTransactionDescription:v8];

    if (currentTransaction == transactionCopy)
    {
      [(IMURLRequestService *)self->_urlRequestService cancelAllRequests];
      [(MZKeyValueStoreController *)self setCurrentTransaction:0];
    }

    if ([(MZKeyValueStoreController *)self isResolvingError])
    {
      [(MZKeyValueStoreController *)self _transactionDidCancel:transactionCopy withError:errorCopy];
    }

    else
    {
      [(MZKeyValueStoreController *)self _transactionDidFail:transactionCopy withError:errorCopy];
    }

    pendingTransactions = [(MZKeyValueStoreController *)self pendingTransactions];
    objc_sync_enter(pendingTransactions);
    pendingTransactions2 = [(MZKeyValueStoreController *)self pendingTransactions];
    [pendingTransactions2 removeObject:transactionCopy];

    objc_sync_exit(pendingTransactions);
    [(MZKeyValueStoreController *)self _processPendingTransactions];
  }
}

- (void)_processPendingTransactions
{
  currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];

  if (!currentTransaction)
  {
    pendingTransactions = [(MZKeyValueStoreController *)self pendingTransactions];
    objc_sync_enter(pendingTransactions);
    pendingTransactions2 = [(MZKeyValueStoreController *)self pendingTransactions];
    firstObject = [pendingTransactions2 firstObject];

    if (firstObject)
    {
      [(MZKeyValueStoreController *)self setCurrentTransaction:firstObject];

      objc_sync_exit(pendingTransactions);

      [(MZKeyValueStoreController *)self _processCurrentTransaction];
    }

    else
    {
      objc_sync_exit(pendingTransactions);

      [(MZKeyValueStoreController *)self _endBackgroundTask];
    }
  }
}

- (void)_processCurrentTransaction
{
  currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
  v13 = 0;
  v4 = [(MZKeyValueStoreController *)self _authenticationCanProcessTransaction:currentTransaction error:&v13];
  v5 = v13;

  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];
      *buf = 138412290;
      v15 = currentTransaction2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Processing transaction", buf, 0xCu);
    }

    currentTransaction3 = [(MZKeyValueStoreController *)self currentTransaction];
    currentTransaction5 = [(MZKeyValueStoreController *)self _requestForTransaction:currentTransaction3];

    [(MZKeyValueStoreController *)self _beginBackgroundTask];
    [currentTransaction5 start];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      currentTransaction4 = [(MZKeyValueStoreController *)self currentTransaction];
      *buf = 138412546;
      v15 = currentTransaction4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ Authentication cannot process transaction - %@", buf, 0x16u);
    }

    clampsController = [(MZKeyValueStoreController *)self clampsController];
    [clampsController setDSIDCheckTimestamp];

    currentTransaction5 = [(MZKeyValueStoreController *)self currentTransaction];
    [(MZKeyValueStoreController *)self _transactionDidFail:currentTransaction5 withError:v5];
  }
}

- (id)_requestForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(MZKeyValueStoreRequest);
  [(MZKeyValueStoreRequest *)v5 setTransaction:transactionCopy];

  [(MZKeyValueStoreRequest *)v5 setDelegate:self];
  authenticationController = [(MZKeyValueStoreController *)self authenticationController];
  -[MZKeyValueStoreRequest setShouldAuthenticate:](v5, "setShouldAuthenticate:", [authenticationController shouldAuthenticate]);

  authenticationController2 = [(MZKeyValueStoreController *)self authenticationController];
  dSID = [authenticationController2 DSID];
  [(MZKeyValueStoreRequest *)v5 setDSID:dSID];

  return v5;
}

- (void)_scheduleTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9 = 0;
  v5 = [(MZKeyValueStoreController *)self _canScheduleTransaction:transactionCopy error:&v9];
  v6 = v9;
  v7 = _MTLogCategoryCloudSync();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Scheduling transaction", buf, 0xCu);
    }

    [(MZKeyValueStoreController *)self _addPendingTransaction:transactionCopy];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = transactionCopy;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ Did not schedule transaction - %@", buf, 0x16u);
    }

    [(MZKeyValueStoreController *)self _transactionDidFail:transactionCopy withError:v6];
  }
}

- (void)_addPendingTransaction:(id)transaction
{
  transactionCopy = transaction;
  pendingTransactions = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(pendingTransactions);
  clampsController = [(MZKeyValueStoreController *)self clampsController];
  [clampsController setTimestampForTransaction:transactionCopy];

  pendingTransactions2 = [(MZKeyValueStoreController *)self pendingTransactions];
  [pendingTransactions2 addObject:transactionCopy];

  objc_sync_exit(pendingTransactions);
  [(MZKeyValueStoreController *)self _processPendingTransactions];
}

- (BOOL)_canScheduleTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  if ([(MZKeyValueStoreController *)self _isEnabledForTransaction:transactionCopy error:error]&& [(MZKeyValueStoreController *)self _isTransactionValid:transactionCopy error:error])
  {
    v7 = [(MZKeyValueStoreController *)self _clampsCanScheduleTransaction:transactionCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isEnabledForTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  isEnabled = [(MZKeyValueStoreController *)self isEnabled];
  v8 = isEnabled;
  if (error && (isEnabled & 1) == 0)
  {
    *error = [MZKeyValueStoreError keyValueStoreDisabledErrorWithTransaction:transactionCopy underlyingError:0];
  }

  return v8;
}

- (BOOL)_isTransactionValid:(id)valid error:(id *)error
{
  validCopy = valid;
  v6 = [validCopy URL];

  if (!v6)
  {
    if (error)
    {
      v9 = [MZKeyValueStoreError transactionMissingURLErrorWithTransaction:validCopy underlyingError:0];
LABEL_8:
      v8 = 0;
      *error = v9;
      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  domain = [validCopy domain];

  if (!domain)
  {
    if (error)
    {
      v9 = [MZKeyValueStoreError transactionMissingDomainErrorWithTransaction:validCopy underlyingError:0];
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)_clampsCanScheduleTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  clampsController = [(MZKeyValueStoreController *)self clampsController];
  LOBYTE(error) = [clampsController canScheduleTransaction:transactionCopy error:error];

  return error;
}

- (BOOL)_authenticationCanProcessTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  clampsController = [(MZKeyValueStoreController *)self clampsController];
  hasUserRecentlyAcceptedSync = [clampsController hasUserRecentlyAcceptedSync];

  if ((hasUserRecentlyAcceptedSync & 1) != 0 || (-[MZKeyValueStoreController authenticationController](self, "authenticationController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isAuthenticationValidForTransaction:transactionCopy error:error], v9, v10))
  {
    authenticationController = [(MZKeyValueStoreController *)self authenticationController];
    if ([authenticationController shouldAuthenticate])
    {
      clampsController2 = [(MZKeyValueStoreController *)self clampsController];
      v13 = [clampsController2 hasAuthenticatedTooRecentlyForTransaction:transactionCopy error:error];

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

- (id)_scheduleTransactionWithType:(int)type sinceDomainVersion:(id)version URL:(id)l keys:(id)keys processor:(id)processor
{
  v10 = *&type;
  processorCopy = processor;
  keysCopy = keys;
  lCopy = l;
  versionCopy = version;
  v16 = [MZKeyValueStoreTransaction alloc];
  defaultDomain = [(MZKeyValueStoreController *)self defaultDomain];
  v18 = [(MZKeyValueStoreTransaction *)v16 initWithType:v10 domain:defaultDomain URL:lCopy keys:keysCopy];

  [(MZKeyValueStoreTransaction *)v18 setSinceDomainVersion:versionCopy];
  [(MZKeyValueStoreTransaction *)v18 setProcessor:processorCopy];

  [(MZKeyValueStoreController *)self scheduleTransaction:v18];

  return v18;
}

- (void)_currentTransactionDidFinish
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
    v9 = 138412290;
    v10 = currentTransaction;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Transaction did finish %@", &v9, 0xCu);
  }

  [(MZKeyValueStoreController *)self _endBackgroundTask];
  currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];
  [(MZKeyValueStoreController *)self _delegateTransactionDidFinish:currentTransaction2];

  pendingTransactions = [(MZKeyValueStoreController *)self pendingTransactions];
  objc_sync_enter(pendingTransactions);
  pendingTransactions2 = [(MZKeyValueStoreController *)self pendingTransactions];
  currentTransaction3 = [(MZKeyValueStoreController *)self currentTransaction];
  [pendingTransactions2 removeObject:currentTransaction3];

  [(MZKeyValueStoreController *)self setCurrentTransaction:0];
  objc_sync_exit(pendingTransactions);

  [(MZKeyValueStoreController *)self _processPendingTransactions];
}

- (void)_transactionDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
  if (currentTransaction)
  {
    v9 = currentTransaction;
    currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];

    if (currentTransaction2 == failCopy)
    {
      [(MZKeyValueStoreController *)self _endBackgroundTask];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F824;
  block[3] = &unk_1004D94C8;
  block[4] = self;
  v14 = failCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = failCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_transactionDidCancel:(id)cancel withError:(id)error
{
  cancelCopy = cancel;
  errorCopy = error;
  currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
  if (currentTransaction)
  {
    v9 = currentTransaction;
    currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];

    if (currentTransaction2 == cancelCopy)
    {
      [(MZKeyValueStoreController *)self _endBackgroundTask];
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F988;
  block[3] = &unk_1004D94C8;
  block[4] = self;
  v14 = cancelCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = cancelCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_processOperationOutput:(id)output forRequest:(id)request
{
  outputCopy = output;
  requestCopy = request;
  dSID = [requestCopy DSID];
  authenticationController = [(MZKeyValueStoreController *)self authenticationController];
  dSID2 = [authenticationController DSID];

  if (([dSID2 isEqualToString:dSID]& 1) != 0)
  {
    currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
    if (currentTransaction && [(MZKeyValueStoreController *)self isEnabled])
    {
      transaction = [requestCopy transaction];
      if (transaction != currentTransaction)
      {
        v13 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v50 = transaction;
          v51 = 2112;
          v52 = currentTransaction;
          _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_ERROR, "Ignoring BK response for transaction %@ while current transaction is %@", buf, 0x16u);
        }

        goto LABEL_41;
      }

      v13 = [[MZKeyValueStoreDeserializer alloc] initWithTransaction:currentTransaction response:outputCopy];
      [(MZKeyValueStoreDeserializer *)v13 setDelegate:self];
      if ([(MZKeyValueStoreDeserializer *)v13 success]|| [(MZKeyValueStoreDeserializer *)v13 versionMismatch])
      {
        authenticationController2 = [(MZKeyValueStoreController *)self authenticationController];
        [authenticationController2 resetAcceptedCredentials];

        authenticationController3 = [(MZKeyValueStoreController *)self authenticationController];
        [authenticationController3 setShouldAuthenticate:0];

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
          currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];
          requestError = [(MZKeyValueStoreDeserializer *)v13 requestError];
          *buf = 138412546;
          v50 = currentTransaction2;
          v51 = 2112;
          v52 = requestError;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ Deserializer has backoff - %@", buf, 0x16u);
        }

        clampsController = [(MZKeyValueStoreController *)self clampsController];
        [clampsController backOffForTimeInterval:{-[MZKeyValueStoreDeserializer retrySeconds](v13, "retrySeconds")}];

        retrySeconds = [(MZKeyValueStoreDeserializer *)v13 retrySeconds];
        requestError2 = [(MZKeyValueStoreDeserializer *)v13 requestError];
        v21 = [MZKeyValueStoreError serverClampErrorWithTransaction:currentTransaction retrySeconds:requestError2 underlyingError:retrySeconds];
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
              currentTransaction3 = [(MZKeyValueStoreController *)self currentTransaction];
              requestError3 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              *buf = 138412546;
              v50 = currentTransaction3;
              v51 = 2112;
              v52 = requestError3;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@ Got generic deserializer error - %@", buf, 0x16u);
            }

            requestError2 = [(MZKeyValueStoreDeserializer *)v13 requestError];
            v28 = [MZKeyValueStoreError storeGenericErrorWithTransaction:currentTransaction underlyingError:requestError2];
          }

          else if ([(MZKeyValueStoreDeserializer *)v13 validationError])
          {
            v29 = _MTLogCategoryCloudSync();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              currentTransaction4 = [(MZKeyValueStoreController *)self currentTransaction];
              requestError4 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              *buf = 138412546;
              v50 = currentTransaction4;
              v51 = 2112;
              v52 = requestError4;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@ Got validation error - %@", buf, 0x16u);
            }

            requestError2 = [(MZKeyValueStoreDeserializer *)v13 requestError];
            v28 = [MZKeyValueStoreError storeValidationErrorWithTransaction:currentTransaction underlyingError:requestError2];
          }

          else
          {
            if ([(MZKeyValueStoreDeserializer *)v13 authenticationError])
            {
              if ([(MZKeyValueStoreController *)self canRequestStoreSignIn])
              {
                authenticationController4 = [(MZKeyValueStoreController *)self authenticationController];
                shouldAuthenticate = [authenticationController4 shouldAuthenticate];

                if ((shouldAuthenticate & 1) == 0)
                {
                  clampsController2 = [(MZKeyValueStoreController *)self clampsController];
                  [clampsController2 clearAuthenticationRequest];

                  authenticationController5 = [(MZKeyValueStoreController *)self authenticationController];
                  [authenticationController5 setShouldAuthenticate:1];

                  [(MZKeyValueStoreController *)self _processCurrentTransaction];
                  goto LABEL_41;
                }
              }

              v33 = _MTLogCategoryCloudSync();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                currentTransaction5 = [(MZKeyValueStoreController *)self currentTransaction];
                requestError5 = [(MZKeyValueStoreDeserializer *)v13 requestError];
                *buf = 138412546;
                v50 = currentTransaction5;
                v51 = 2112;
                v52 = requestError5;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@ Got authentication error - %@", buf, 0x16u);
              }

              requestError6 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              v47 = [MZKeyValueStoreError storeAccountSessionExpiredWithTransaction:currentTransaction underlyingError:requestError6];

              cloudSyncBugReporter = [(MZKeyValueStoreController *)self cloudSyncBugReporter];
              currentTransaction6 = [(MZKeyValueStoreController *)self currentTransaction];
              requestError2 = v47;
              [cloudSyncBugReporter reportSyncAuthenticationErrorFor:currentTransaction6 error:v47];

              [(MZKeyValueStoreController *)self _transactionDidFail:currentTransaction withError:v47];
              goto LABEL_40;
            }

            v37 = _MTLogCategoryCloudSync();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              currentTransaction7 = [(MZKeyValueStoreController *)self currentTransaction];
              requestError7 = [(MZKeyValueStoreDeserializer *)v13 requestError];
              *buf = 138412546;
              v50 = currentTransaction7;
              v51 = 2112;
              v52 = requestError7;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@ Got unknown error - %@", buf, 0x16u);
            }

            requestError2 = [(MZKeyValueStoreDeserializer *)v13 requestError];
            v28 = [MZKeyValueStoreError unknownErrorWithTransaction:currentTransaction underlyingError:requestError2];
          }

          v25 = v28;
          [(MZKeyValueStoreController *)self _transactionDidFail:currentTransaction withError:v28];
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        v22 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          currentTransaction8 = [(MZKeyValueStoreController *)self currentTransaction];
          requestError8 = [(MZKeyValueStoreDeserializer *)v13 requestError];
          *buf = 138412546;
          v50 = currentTransaction8;
          v51 = 2112;
          v52 = requestError8;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@ Got unsupported client error - %@", buf, 0x16u);
        }

        clampsController3 = [(MZKeyValueStoreController *)self clampsController];
        [clampsController3 setNetworkingBlocked];

        requestError2 = [(MZKeyValueStoreDeserializer *)v13 requestError];
        v21 = [MZKeyValueStoreError killSwitchErrorWithTransaction:currentTransaction underlyingError:requestError2];
      }

      v25 = v21;
      [(MZKeyValueStoreController *)self _cancelAllPendingTransactions:v21];
      goto LABEL_39;
    }
  }

  else
  {
    currentTransaction = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(currentTransaction, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = dSID;
      v51 = 2112;
      v52 = dSID2;
      _os_log_impl(&_mh_execute_header, currentTransaction, OS_LOG_TYPE_ERROR, "Ignoring BK response for dsid = %@ while currentDsid = %@", buf, 0x16u);
    }
  }

LABEL_42:
}

- (void)_enqueueStoreRequest:(id)request withUrlRequest:(id)urlRequest
{
  requestCopy = request;
  urlRequestCopy = urlRequest;
  objc_initWeak(&location, self);
  urlRequestService = self->_urlRequestService;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A02C8;
  v10[3] = &unk_1004DA7F0;
  objc_copyWeak(&v12, &location);
  v9 = requestCopy;
  v11 = v9;
  [(IMURLRequestService *)urlRequestService performUrlRequest:urlRequestCopy callback:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_resolveError:(id)error transaction:(id)transaction resolution:(int)resolution
{
  errorCopy = error;
  transactionCopy = transaction;
  [(MZKeyValueStoreController *)self setResolvingError:1];
  if (([errorCopy isTransactionCancelledError] & 1) == 0)
  {
    currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
    v10 = currentTransaction;
    if (currentTransaction == transactionCopy)
    {
    }

    else
    {
      currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];

      if (currentTransaction2)
      {
        goto LABEL_7;
      }
    }

    clampsController = [(MZKeyValueStoreController *)self clampsController];
    [clampsController clearDSIDCheckTimestamp];

LABEL_7:
    if (resolution == 2)
    {
      [(MZKeyValueStoreController *)self _errorResolutionCancel:errorCopy transaction:transactionCopy];
    }

    else if (resolution == 1)
    {
      [(MZKeyValueStoreController *)self _errorResolutionRetry:errorCopy transaction:transactionCopy];
    }

    else
    {
      [(MZKeyValueStoreController *)self _errorResolutionDefault:errorCopy transaction:transactionCopy];
    }
  }

  [(MZKeyValueStoreController *)self setResolvingError:0];
}

- (void)_errorResolutionRetry:(id)retry transaction:(id)transaction
{
  retryCopy = retry;
  transactionCopy = transaction;
  if ([retryCopy isAccountsChangedError])
  {
    clampsController = [(MZKeyValueStoreController *)self clampsController];
    [clampsController setUserAcceptedSyncTimestamp];
LABEL_5:

    [(MZKeyValueStoreController *)self _processCurrentTransaction];
    goto LABEL_7;
  }

  isAuthenticationError = [retryCopy isAuthenticationError];
  clampsController2 = [(MZKeyValueStoreController *)self clampsController];
  v10 = clampsController2;
  if (isAuthenticationError)
  {
    [clampsController2 setUserAcceptedSyncTimestamp];

    clampsController = [(MZKeyValueStoreController *)self authenticationController];
    [clampsController resetAcceptedCredentials];
    goto LABEL_5;
  }

  [clampsController2 clearTimestampForTransaction:transactionCopy];

  [(MZKeyValueStoreController *)self scheduleTransaction:transactionCopy];
LABEL_7:
}

- (void)_errorResolutionCancel:(id)cancel transaction:(id)transaction
{
  transactionCopy = transaction;
  cancelCopy = cancel;
  if ([cancelCopy isAuthenticationError])
  {
    [(MZKeyValueStoreController *)self _cancelAllPendingTransactions:cancelCopy];
  }

  else
  {
    [(MZKeyValueStoreController *)self _cancelTransaction:transactionCopy error:cancelCopy];
  }
}

- (void)_errorResolutionDefault:(id)default transaction:(id)transaction
{
  defaultCopy = default;
  transactionCopy = transaction;
  if (![defaultCopy isAuthenticationError])
  {
    goto LABEL_5;
  }

  currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
  v8 = currentTransaction;
  if (currentTransaction != transactionCopy)
  {

LABEL_5:
    v11 = 2;
    goto LABEL_6;
  }

  authenticationController = [(MZKeyValueStoreController *)self authenticationController];
  shouldAuthenticate = [authenticationController shouldAuthenticate];

  if (shouldAuthenticate)
  {
    goto LABEL_5;
  }

  v11 = 1;
LABEL_6:
  [(MZKeyValueStoreController *)self _resolveError:defaultCopy transaction:transactionCopy resolution:v11];
}

- (BOOL)_delegateShouldScheduleTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  delegate = [(MZKeyValueStoreController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(MZKeyValueStoreController *)self delegate];
    v10 = [delegate2 keyValueStoreController:self shouldScheduleTransaction:transactionCopy];

    if (error && (v10 & 1) == 0)
    {
      [MZKeyValueStoreError delegateCancelledErrorWithTransaction:transactionCopy underlyingError:0];
      *error = v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_delegateTransactionDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  delegate = [(MZKeyValueStoreController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MZKeyValueStoreController *)self delegate];
    v11 = [delegate2 keyValueStoreController:self transaction:failCopy didFailWithError:errorCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_delegateTransactionDidCancel:(id)cancel withError:(id)error
{
  cancelCopy = cancel;
  errorCopy = error;
  delegate = [(MZKeyValueStoreController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(MZKeyValueStoreController *)self delegate];
    [delegate2 keyValueStoreController:self transaction:cancelCopy didCancelWithError:errorCopy];
  }
}

- (void)_delegateTransactionDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(MZKeyValueStoreController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A0A30;
    v7[3] = &unk_1004D8798;
    v7[4] = self;
    v8 = finishCopy;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)_beginBackgroundTask
{
  if ((+[PFClientUtil isRunningOnHomepod]& 1) == 0)
  {
    backgroundTaskAssertion = [(MZKeyValueStoreController *)self backgroundTaskAssertion];

    if (!backgroundTaskAssertion)
    {
      currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
      assertionName = [currentTransaction assertionName];
      v6 = assertionName;
      if (assertionName)
      {
        v7 = assertionName;
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

      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(MZKeyValueStoreController *)selfCopy setBackgroundTaskAssertion:v15[5]];
      objc_sync_exit(selfCopy);

      _Block_object_dispose(&v14, 8);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_endBackgroundTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backgroundTaskAssertion = [(MZKeyValueStoreController *)selfCopy backgroundTaskAssertion];
  [(MZKeyValueStoreController *)selfCopy setBackgroundTaskAssertion:0];
  if (backgroundTaskAssertion)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0E0C;
    block[3] = &unk_1004D8358;
    v5 = backgroundTaskAssertion;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [responseCopy statusCode] == 511)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A0EF4;
    v10[3] = &unk_1004D8358;
    v10[4] = self;
    [(MZKeyValueStoreController *)self performBlock:v10];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (BOOL)AMSURLSession:(id)session shouldHandleAuthenticationForAccount:(id)account dialogDictionary:(id)dictionary
{
  v6 = [(MZKeyValueStoreController *)self currentTransaction:session];
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

- (BOOL)AMSURLSession:(id)session task:(id)task shouldFailWithServerError:(id)error
{
  errorCopy = error;
  v7 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    currentTransaction = [(MZKeyValueStoreController *)self currentTransaction];
    v13 = 138412546;
    v14 = currentTransaction;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ AMSURLSession server failure - %@", &v13, 0x16u);
  }

  currentTransaction2 = [(MZKeyValueStoreController *)self currentTransaction];
  v10 = [MZKeyValueStoreError unknownErrorWithTransaction:currentTransaction2 underlyingError:errorCopy];

  currentTransaction3 = [(MZKeyValueStoreController *)self currentTransaction];
  [(MZKeyValueStoreController *)self _transactionDidFail:currentTransaction3 withError:v10];

  return 1;
}

- (void)keyValueStoreOperation:(id)operation scheduleURLRequest:(id)request
{
  operationCopy = operation;
  requestCopy = request;
  clampsController = [(MZKeyValueStoreController *)self clampsController];
  isNetworkingBlocked = [clampsController isNetworkingBlocked];

  if ((isNetworkingBlocked & 1) == 0)
  {
    [(MZKeyValueStoreController *)self _enqueueStoreRequest:operationCopy withUrlRequest:requestCopy];
  }
}

- (void)deserializeOperationDidFinish:(id)finish shouldReschedule:(BOOL)reschedule
{
  rescheduleCopy = reschedule;
  finishCopy = finish;
  currentDeserializer = [(MZKeyValueStoreController *)self currentDeserializer];

  if (currentDeserializer == finishCopy)
  {
    if (rescheduleCopy)
    {
      [(MZKeyValueStoreController *)self _processCurrentTransaction];
    }

    else
    {
      [(MZKeyValueStoreController *)self _currentTransactionDidFinish];
    }

    currentDeserializer2 = [(MZKeyValueStoreController *)self currentDeserializer];
    [currentDeserializer2 setDelegate:0];

    [(MZKeyValueStoreController *)self setCurrentDeserializer:0];
  }
}

- (MZKeyValueStoreControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)scheduleApnSubscriptionTransactionWithPushSubscriptionRequest:(id)request
{
  requestCopy = request;
  v5 = [MTApnsDictionaryProcessor alloc];
  parameters = [requestCopy parameters];
  v7 = [(MTApnsDictionaryProcessor *)v5 initWithDictionary:parameters];

  v8 = [MTApnsTransaction alloc];
  defaultDomain = [(MZKeyValueStoreController *)self defaultDomain];
  defaultSetURL = [(MZKeyValueStoreController *)self defaultSetURL];
  parameters2 = [requestCopy parameters];

  allKeys = [parameters2 allKeys];
  v13 = [(MZKeyValueStoreTransaction *)v8 initWithType:2 domain:defaultDomain URL:defaultSetURL keys:allKeys];

  [(MZKeyValueStoreTransaction *)v13 setSinceDomainVersion:@"0"];
  [(MZKeyValueStoreTransaction *)v13 setProcessor:v7];
  [(MZKeyValueStoreController *)self scheduleTransaction:v13];

  return v13;
}

@end