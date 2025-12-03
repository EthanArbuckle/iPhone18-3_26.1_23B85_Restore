@interface TKNFCSlotManager
- (BOOL)_startNFCSlotWithPromptMessage:(id)message appIdentifiers:(id)identifiers connectionErrorHandler:(id)handler error:(id *)error;
- (TKNFCSlotManager)initWithSlotServerConnectionProvider:(id)provider tokenWatcherProvider:(id)watcherProvider queue:(id)queue slotTimeoutLimit:(double)limit;
- (id)_slotServerConnectionWithErrorHandler:(id)handler;
- (id)_startNFCOperationWithTokenID:(id)d;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_configureTokenWatcherForToken:(id)token expectedSlotName:(id)name connectionErrorHandler:(id)handler tokenFoundHandler:(id)foundHandler;
- (void)_handleConnectionCloseWithInvalidate:(BOOL)invalidate;
- (void)_handleRegisteredTokenDetection:(id)detection;
- (void)_postponeNFCSlotTermination;
- (void)_refreshNFCOperationTerminationTimer;
- (void)_releaseNFCOperationResource;
- (void)_setupNFCOperationSlot;
- (void)_setupTimeoutForToken:(id)token withCompletion:(id)completion;
- (void)_startNFCSlotWithTokenID:(id)d tokenRegistration:(id)registration appIdentifiers:(id)identifiers completion:(id)completion;
- (void)_terminateSlotConnection;
- (void)connectionDidActivate:(id)activate;
- (void)createNFCSlotForTokenID:(id)d tokenRegistration:(id)registration appIdentifiers:(id)identifiers completion:(id)completion;
- (void)dealloc;
- (void)endNFCSlotIfActive;
- (void)postponeSlotTerminationForTokenID:(id)d;
- (void)setSlotWithName:(id)name endpoint:(id)endpoint type:(id)type reply:(id)reply;
@end

@implementation TKNFCSlotManager

- (TKNFCSlotManager)initWithSlotServerConnectionProvider:(id)provider tokenWatcherProvider:(id)watcherProvider queue:(id)queue slotTimeoutLimit:(double)limit
{
  providerCopy = provider;
  watcherProviderCopy = watcherProvider;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = TKNFCSlotManager;
  v14 = [(TKNFCSlotManager *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_slotServerConnectionProvider, provider);
    v16 = objc_alloc_init(NSRecursiveLock);
    slotServerConnectionLock = v15->_slotServerConnectionLock;
    v15->_slotServerConnectionLock = v16;

    if (queueCopy)
    {
      v18 = queueCopy;
    }

    else
    {
      v18 = dispatch_queue_create("nfcSlotManager:%@", 0);
    }

    queue = v15->_queue;
    v15->_queue = v18;

    v20 = objc_retainBlock(watcherProviderCopy);
    tokenWatcherProvider = v15->_tokenWatcherProvider;
    v15->_tokenWatcherProvider = v20;

    tokenWatcher = v15->_tokenWatcher;
    v15->_tokenWatcher = 0;

    v15->_slotTimeoutLimit = limit;
    v15->_slotIdleTerminationLimit = 1.8;
    v15->_nfcSlotState = 0;
    [(TKNFCSlotManager *)v15 _setupNFCOperationSlot];
  }

  return v15;
}

- (void)dealloc
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(TKNFCSlotManager *)self _releaseNFCOperationResource];
  [(TKXPCConnection *)self->_slotServerConnection invalidate];
  v5.receiver = self;
  v5.super_class = TKNFCSlotManager;
  [(TKNFCSlotManager *)&v5 dealloc];
}

- (void)_setupNFCOperationSlot
{
  v3 = [[TKSharedResourceSlot alloc] initWithName:@"NFCTokenOperation"];
  nfcOperationSlot = self->_nfcOperationSlot;
  self->_nfcOperationSlot = v3;

  [(TKSharedResourceSlot *)self->_nfcOperationSlot setIdleTimeout:self->_slotIdleTerminationLimit];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000142C4;
  v5[3] = &unk_100038E50;
  objc_copyWeak(&v6, &location);
  [(TKSharedResourceSlot *)self->_nfcOperationSlot setObjectDestroyedBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)createNFCSlotForTokenID:(id)d tokenRegistration:(id)registration appIdentifiers:(id)identifiers completion:(id)completion
{
  dCopy = d;
  registrationCopy = registration;
  identifiersCopy = identifiers;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_nfcSlotState)
  {
    v15 = [NSError errorWithCode:-7 debugDescription:@"Another NFC operation is already in progress. Please retry again."];
    completionCopy[2](completionCopy, 0, v15);

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_nfcSlotState = 1;
    objc_sync_exit(selfCopy);

    v16 = sub_100014350();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100020030(dCopy, registrationCopy);
    }

    [(TKNFCSlotManager *)selfCopy _startNFCSlotWithTokenID:dCopy tokenRegistration:registrationCopy appIdentifiers:identifiersCopy completion:completionCopy];
  }
}

- (void)postponeSlotTerminationForTokenID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_nfcSlotState != 2)
  {
    goto LABEL_14;
  }

  p_activeTokenID = &selfCopy->_activeTokenID;
  activeTokenID = selfCopy->_activeTokenID;
  if (!activeTokenID)
  {
    goto LABEL_12;
  }

  stringRepresentation = [(TKTokenID *)activeTokenID stringRepresentation];
  stringRepresentation2 = [dCopy stringRepresentation];
  v10 = [stringRepresentation isEqualToString:stringRepresentation2];

  if (v10)
  {
    v11 = +[NSDate date];
    v12 = v11;
    if (!selfCopy->_lastPostponementTime || ([v11 timeIntervalSinceDate:?], v13 >= 0.6))
    {
      [(TKNFCSlotManager *)selfCopy _postponeNFCSlotTermination];
      objc_storeStrong(&selfCopy->_lastPostponementTime, v12);
      v14 = sub_100014350();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100020130();
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (selfCopy->_nfcSlotState != 2)
  {
LABEL_14:
    v12 = sub_100014350();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000200C8(&selfCopy->_nfcSlotState);
    }

    goto LABEL_16;
  }

  if (!*p_activeTokenID || ([*p_activeTokenID stringRepresentation], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dCopy, "stringRepresentation"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, (v17 & 1) == 0))
  {
LABEL_12:
    v12 = sub_100014350();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100020198(&selfCopy->_activeTokenID);
    }

    goto LABEL_16;
  }

LABEL_17:
  objc_sync_exit(selfCopy);
}

- (void)endNFCSlotIfActive
{
  obj = self;
  objc_sync_enter(obj);
  nfcSlotState = obj->_nfcSlotState;
  if (nfcSlotState)
  {
    v3 = nfcSlotState == 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_nfcSlotState = 3;
    objc_sync_exit(obj);

    obj = [(TKNFCSlotManager *)obj _synchronousRemoteObjectProxyWithErrorHandler:&stru_100038E70];
    [(TKNFCSlotManager *)obj endNFCSlotWithName:TKNFCSlotName reply:&stru_100038EB0];
  }
}

- (void)_startNFCSlotWithTokenID:(id)d tokenRegistration:(id)registration appIdentifiers:(id)identifiers completion:(id)completion
{
  dCopy = d;
  registrationCopy = registration;
  identifiersCopy = identifiers;
  completionCopy = completion;
  objc_initWeak(location, self);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100014B7C;
  v42 = sub_100014BA8;
  v27 = completionCopy;
  v43 = objc_retainBlock(completionCopy);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100014BB0;
  v36[3] = &unk_100038ED8;
  objc_copyWeak(&v37, location);
  v36[4] = &v38;
  v14 = objc_retainBlock(v36);
  v15 = objc_retainBlock(v14);
  nfcSlotCompletionBlock = self->_nfcSlotCompletionBlock;
  self->_nfcSlotCompletionBlock = v15;

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100014CA8;
  v33[3] = &unk_100038F00;
  objc_copyWeak(&v35, location);
  v17 = v14;
  v34 = v17;
  v18 = objc_retainBlock(v33);
  v19 = TKNFCSlotName;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100014D40;
  v29[3] = &unk_100038F28;
  objc_copyWeak(&v32, location);
  v20 = dCopy;
  v30 = v20;
  v21 = v17;
  v31 = v21;
  [(TKNFCSlotManager *)self _configureTokenWatcherForToken:v20 expectedSlotName:v19 connectionErrorHandler:v18 tokenFoundHandler:v29];
  if (v39[5])
  {
    v22 = identifiersCopy;
    v23 = registrationCopy;
    promptMessage = [registrationCopy promptMessage];
    v28 = 0;
    v25 = [(TKNFCSlotManager *)self _startNFCSlotWithPromptMessage:promptMessage appIdentifiers:identifiersCopy connectionErrorHandler:v18 error:&v28];
    v26 = v28;

    if (v25)
    {
      [(TKNFCSlotManager *)self _setupTimeoutForToken:v20 withCompletion:v21];
    }

    else
    {
      (v21[2])(v21, 0, v26);
    }

    registrationCopy = v23;
    identifiersCopy = v22;
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  _Block_object_dispose(&v38, 8);

  objc_destroyWeak(location);
}

- (void)_setupTimeoutForToken:(id)token withCompletion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeoutTimer = selfCopy->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v10 = selfCopy->_timeoutTimer;
    selfCopy->_timeoutTimer = 0;
  }

  objc_sync_exit(selfCopy);

  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_queue);
  v12 = selfCopy->_timeoutTimer;
  selfCopy->_timeoutTimer = v11;

  v13 = selfCopy->_timeoutTimer;
  v14 = dispatch_time(0, (selfCopy->_slotTimeoutLimit * 1000000000.0));
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, selfCopy);
  v15 = selfCopy->_timeoutTimer;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014F5C;
  v19[3] = &unk_100038F50;
  objc_copyWeak(&v22, &location);
  v16 = completionCopy;
  v21 = v16;
  v17 = tokenCopy;
  v20 = v17;
  dispatch_source_set_event_handler(v15, v19);
  v18 = selfCopy->_timeoutTimer;
  if (v18)
  {
    dispatch_resume(v18);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (BOOL)_startNFCSlotWithPromptMessage:(id)message appIdentifiers:(id)identifiers connectionErrorHandler:(id)handler error:(id *)error
{
  messageCopy = message;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000151C4;
  v21 = sub_1000151D4;
  v22 = 0;
  v13 = [(TKNFCSlotManager *)self _synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000151DC;
  v16[3] = &unk_100038F78;
  v16[4] = &v23;
  v16[5] = &v17;
  [v13 startNFCSlotWithName:TKNFCSlotName uiSheetMessage:messageCopy supportedAppIdentifiers:identifiersCopy reply:v16];

  if (error)
  {
    *error = v18[5];
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v14;
}

- (void)_configureTokenWatcherForToken:(id)token expectedSlotName:(id)name connectionErrorHandler:(id)handler tokenFoundHandler:(id)foundHandler
{
  tokenCopy = token;
  nameCopy = name;
  handlerCopy = handler;
  foundHandlerCopy = foundHandler;
  v14 = (*(self->_tokenWatcherProvider + 2))();
  tokenWatcher = self->_tokenWatcher;
  self->_tokenWatcher = v14;

  objc_initWeak(&location, self->_tokenWatcher);
  objc_initWeak(&from, self);
  v16 = self->_tokenWatcher;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001539C;
  v20[3] = &unk_100038FA0;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  v17 = tokenCopy;
  v21 = v17;
  v18 = nameCopy;
  v22 = v18;
  v19 = foundHandlerCopy;
  v23 = v19;
  [(TKTokenWatcher *)v16 setInsertionHandler:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_handleRegisteredTokenDetection:(id)detection
{
  detectionCopy = detection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeoutTimer = selfCopy->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v6 = selfCopy->_timeoutTimer;
    selfCopy->_timeoutTimer = 0;
  }

  objc_sync_exit(selfCopy);

  v7 = [(TKNFCSlotManager *)selfCopy _startNFCOperationWithTokenID:detectionCopy];
  [(TKNFCSlotManager *)selfCopy _refreshNFCOperationTerminationTimer];
}

- (id)_startNFCOperationWithTokenID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeTokenID = selfCopy->_activeTokenID;
  if (activeTokenID)
  {
    stringRepresentation = [(TKTokenID *)activeTokenID stringRepresentation];
    stringRepresentation2 = [dCopy stringRepresentation];
    v10 = [stringRepresentation isEqualToString:stringRepresentation2];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100014350();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100020524(dCopy, &selfCopy->_activeTokenID);
      }
    }
  }

  objc_storeStrong(&selfCopy->_activeTokenID, d);
  v12 = sub_100014350();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(TKSharedResourceSlot *)selfCopy->_nfcOperationSlot idleTimeout];
    sub_10002059C(dCopy, buf, v12, v13);
  }

  nfcOperationSlot = selfCopy->_nfcOperationSlot;
  v20 = 0;
  v15 = [(TKSharedResourceSlot *)nfcOperationSlot resourceWithError:&v20];
  v16 = v20;
  if (v16)
  {
    v17 = sub_100014350();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000205F0();
    }

    v18 = 0;
  }

  else
  {
    objc_storeStrong(&selfCopy->_activeNFCOperation, v15);
    v18 = v15;
  }

  objc_sync_exit(selfCopy);

  return v18;
}

- (void)_releaseNFCOperationResource
{
  obj = self;
  objc_sync_enter(obj);
  activeTokenID = obj->_activeTokenID;
  obj->_activeTokenID = 0;

  v3 = obj;
  activeNFCOperation = obj->_activeNFCOperation;
  if (activeNFCOperation)
  {
    [(TKSharedResource *)activeNFCOperation invalidate];
    v5 = obj->_activeNFCOperation;
    obj->_activeNFCOperation = 0;

    v3 = obj;
  }

  objc_sync_exit(v3);
}

- (void)_refreshNFCOperationTerminationTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activeNFCOperation)
  {
    v3 = sub_100014350();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(TKSharedResourceSlot *)selfCopy->_nfcOperationSlot idleTimeout];
      sub_100020658(v6, v3, v4);
    }

    activeNFCOperation = selfCopy->_activeNFCOperation;
    selfCopy->_activeNFCOperation = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)_postponeNFCSlotTermination
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_nfcOperationSlot && selfCopy->_activeTokenID)
  {
    v3 = sub_100014350();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10002069C(&selfCopy->_activeTokenID);
    }

    activeNFCOperation = selfCopy->_activeNFCOperation;
    selfCopy->_activeNFCOperation = 0;

    nfcOperationSlot = selfCopy->_nfcOperationSlot;
    v10 = 0;
    v6 = [(TKSharedResourceSlot *)nfcOperationSlot resourceWithError:&v10];
    v7 = v10;
    v8 = selfCopy->_activeNFCOperation;
    selfCopy->_activeNFCOperation = v6;

    if (v7)
    {
      v9 = sub_100014350();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100020714();
      }
    }

    [(TKNFCSlotManager *)selfCopy _refreshNFCOperationTerminationTimer];
  }

  objc_sync_exit(selfCopy);
}

- (void)_terminateSlotConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  tokenWatcher = selfCopy->_tokenWatcher;
  selfCopy->_tokenWatcher = 0;

  [(TKNFCSlotManager *)selfCopy _releaseNFCOperationResource];
  objc_sync_exit(selfCopy);

  [(TKNFCSlotManager *)selfCopy _handleConnectionCloseWithInvalidate:1];
}

- (void)setSlotWithName:(id)name endpoint:(id)endpoint type:(id)type reply:(id)reply
{
  nameCopy = name;
  endpointCopy = endpoint;
  typeCopy = type;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([nameCopy isEqual:TKNFCSlotName])
  {
    nfcSlotState = selfCopy->_nfcSlotState;
    if (endpointCopy)
    {
      if (!nfcSlotState)
      {
        selfCopy->_nfcSlotState = 1;
        v16 = sub_100014350();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10002077C(v16);
        }
      }
    }

    else if (nfcSlotState)
    {
      v17 = sub_100014350();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000207C0(v17);
      }

      nfcSlotCompletionBlock = selfCopy->_nfcSlotCompletionBlock;
      if (nfcSlotCompletionBlock)
      {
        v21 = NSLocalizedDescriptionKey;
        v22 = @"NFC slot ended without receiving token";
        v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v20 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:v19];
        nfcSlotCompletionBlock[2](nfcSlotCompletionBlock, 0, v20);
      }

      selfCopy->_nfcSlotState = 0;
      [(TKNFCSlotManager *)selfCopy _terminateSlotConnection];
    }
  }

  objc_sync_exit(selfCopy);

  replyCopy[2](replyCopy);
}

- (id)_slotServerConnectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(NSRecursiveLock *)self->_slotServerConnectionLock lock];
  if (self->_slotServerConnection)
  {
    goto LABEL_5;
  }

  v5 = [(TKSlotServerConnectionProviding *)self->_slotServerConnectionProvider makeSlotServerConnectionWithExportedObject:self];
  slotServerConnection = self->_slotServerConnection;
  self->_slotServerConnection = v5;

  [(TKXPCConnection *)self->_slotServerConnection setDelegate:self];
  [(TKXPCConnection *)self->_slotServerConnection activate];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(TKXPCConnection *)self->_slotServerConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015E5C;
  v14[3] = &unk_100038AC8;
  v14[4] = &v15;
  [v7 reportChangesForSlotType:TKSlotTypeSmartCard reply:v14];

  if ((v16[3] & 1) == 0)
  {
    v8 = self->_slotServerConnection;
    self->_slotServerConnection = 0;
  }

  _Block_object_dispose(&v15, 8);
  if (self->_slotServerConnection)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    tKProtocolSlotClientName = [NSString stringWithFormat:@"XPC connection to %@ could not be created", TKProtocolSlotClientName];
    v9 = [NSError errorWithCode:-2 debugDescription:tKProtocolSlotClientName];

    if (handlerCopy && v9)
    {
      handlerCopy[2](handlerCopy, v9);
    }
  }

  [(NSRecursiveLock *)self->_slotServerConnectionLock unlock];
  v10 = self->_slotServerConnection;
  v11 = v10;

  return v10;
}

- (void)_handleConnectionCloseWithInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  [(NSRecursiveLock *)self->_slotServerConnectionLock lock];
  if (self->_slotServerConnection)
  {
    v5 = sub_100014350();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100020804();
    }

    if (invalidateCopy)
    {
      [(TKXPCConnection *)self->_slotServerConnection invalidate];
    }

    slotServerConnection = self->_slotServerConnection;
    self->_slotServerConnection = 0;
  }

  [(NSRecursiveLock *)self->_slotServerConnectionLock unlock];
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(TKNFCSlotManager *)self _slotServerConnectionWithErrorHandler:handlerCopy];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)connectionDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = sub_100014350();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000208A4();
  }
}

@end