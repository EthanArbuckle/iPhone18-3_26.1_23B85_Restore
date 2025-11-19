@interface TKNFCSlotManager
- (BOOL)_startNFCSlotWithPromptMessage:(id)a3 appIdentifiers:(id)a4 connectionErrorHandler:(id)a5 error:(id *)a6;
- (TKNFCSlotManager)initWithSlotServerConnectionProvider:(id)a3 tokenWatcherProvider:(id)a4 queue:(id)a5 slotTimeoutLimit:(double)a6;
- (id)_slotServerConnectionWithErrorHandler:(id)a3;
- (id)_startNFCOperationWithTokenID:(id)a3;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_configureTokenWatcherForToken:(id)a3 expectedSlotName:(id)a4 connectionErrorHandler:(id)a5 tokenFoundHandler:(id)a6;
- (void)_handleConnectionCloseWithInvalidate:(BOOL)a3;
- (void)_handleRegisteredTokenDetection:(id)a3;
- (void)_postponeNFCSlotTermination;
- (void)_refreshNFCOperationTerminationTimer;
- (void)_releaseNFCOperationResource;
- (void)_setupNFCOperationSlot;
- (void)_setupTimeoutForToken:(id)a3 withCompletion:(id)a4;
- (void)_startNFCSlotWithTokenID:(id)a3 tokenRegistration:(id)a4 appIdentifiers:(id)a5 completion:(id)a6;
- (void)_terminateSlotConnection;
- (void)connectionDidActivate:(id)a3;
- (void)createNFCSlotForTokenID:(id)a3 tokenRegistration:(id)a4 appIdentifiers:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)endNFCSlotIfActive;
- (void)postponeSlotTerminationForTokenID:(id)a3;
- (void)setSlotWithName:(id)a3 endpoint:(id)a4 type:(id)a5 reply:(id)a6;
@end

@implementation TKNFCSlotManager

- (TKNFCSlotManager)initWithSlotServerConnectionProvider:(id)a3 tokenWatcherProvider:(id)a4 queue:(id)a5 slotTimeoutLimit:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = TKNFCSlotManager;
  v14 = [(TKNFCSlotManager *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_slotServerConnectionProvider, a3);
    v16 = objc_alloc_init(NSRecursiveLock);
    slotServerConnectionLock = v15->_slotServerConnectionLock;
    v15->_slotServerConnectionLock = v16;

    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = dispatch_queue_create("nfcSlotManager:%@", 0);
    }

    queue = v15->_queue;
    v15->_queue = v18;

    v20 = objc_retainBlock(v12);
    tokenWatcherProvider = v15->_tokenWatcherProvider;
    v15->_tokenWatcherProvider = v20;

    tokenWatcher = v15->_tokenWatcher;
    v15->_tokenWatcher = 0;

    v15->_slotTimeoutLimit = a6;
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

- (void)createNFCSlotForTokenID:(id)a3 tokenRegistration:(id)a4 appIdentifiers:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  if (v14->_nfcSlotState)
  {
    v15 = [NSError errorWithCode:-7 debugDescription:@"Another NFC operation is already in progress. Please retry again."];
    v13[2](v13, 0, v15);

    objc_sync_exit(v14);
  }

  else
  {
    v14->_nfcSlotState = 1;
    objc_sync_exit(v14);

    v16 = sub_100014350();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100020030(v10, v11);
    }

    [(TKNFCSlotManager *)v14 _startNFCSlotWithTokenID:v10 tokenRegistration:v11 appIdentifiers:v12 completion:v13];
  }
}

- (void)postponeSlotTerminationForTokenID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_nfcSlotState != 2)
  {
    goto LABEL_14;
  }

  p_activeTokenID = &v5->_activeTokenID;
  activeTokenID = v5->_activeTokenID;
  if (!activeTokenID)
  {
    goto LABEL_12;
  }

  v8 = [(TKTokenID *)activeTokenID stringRepresentation];
  v9 = [v4 stringRepresentation];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = +[NSDate date];
    v12 = v11;
    if (!v5->_lastPostponementTime || ([v11 timeIntervalSinceDate:?], v13 >= 0.6))
    {
      [(TKNFCSlotManager *)v5 _postponeNFCSlotTermination];
      objc_storeStrong(&v5->_lastPostponementTime, v12);
      v14 = sub_100014350();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100020130();
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v5->_nfcSlotState != 2)
  {
LABEL_14:
    v12 = sub_100014350();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000200C8(&v5->_nfcSlotState);
    }

    goto LABEL_16;
  }

  if (!*p_activeTokenID || ([*p_activeTokenID stringRepresentation], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "stringRepresentation"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, (v17 & 1) == 0))
  {
LABEL_12:
    v12 = sub_100014350();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100020198(&v5->_activeTokenID);
    }

    goto LABEL_16;
  }

LABEL_17:
  objc_sync_exit(v5);
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

- (void)_startNFCSlotWithTokenID:(id)a3 tokenRegistration:(id)a4 appIdentifiers:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(location, self);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100014B7C;
  v42 = sub_100014BA8;
  v27 = v13;
  v43 = objc_retainBlock(v13);
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
  v20 = v10;
  v30 = v20;
  v21 = v17;
  v31 = v21;
  [(TKNFCSlotManager *)self _configureTokenWatcherForToken:v20 expectedSlotName:v19 connectionErrorHandler:v18 tokenFoundHandler:v29];
  if (v39[5])
  {
    v22 = v12;
    v23 = v11;
    v24 = [v11 promptMessage];
    v28 = 0;
    v25 = [(TKNFCSlotManager *)self _startNFCSlotWithPromptMessage:v24 appIdentifiers:v12 connectionErrorHandler:v18 error:&v28];
    v26 = v28;

    if (v25)
    {
      [(TKNFCSlotManager *)self _setupTimeoutForToken:v20 withCompletion:v21];
    }

    else
    {
      (v21[2])(v21, 0, v26);
    }

    v11 = v23;
    v12 = v22;
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  _Block_object_dispose(&v38, 8);

  objc_destroyWeak(location);
}

- (void)_setupTimeoutForToken:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  timeoutTimer = v8->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v10 = v8->_timeoutTimer;
    v8->_timeoutTimer = 0;
  }

  objc_sync_exit(v8);

  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8->_queue);
  v12 = v8->_timeoutTimer;
  v8->_timeoutTimer = v11;

  v13 = v8->_timeoutTimer;
  v14 = dispatch_time(0, (v8->_slotTimeoutLimit * 1000000000.0));
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, v8);
  v15 = v8->_timeoutTimer;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014F5C;
  v19[3] = &unk_100038F50;
  objc_copyWeak(&v22, &location);
  v16 = v7;
  v21 = v16;
  v17 = v6;
  v20 = v17;
  dispatch_source_set_event_handler(v15, v19);
  v18 = v8->_timeoutTimer;
  if (v18)
  {
    dispatch_resume(v18);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (BOOL)_startNFCSlotWithPromptMessage:(id)a3 appIdentifiers:(id)a4 connectionErrorHandler:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  v13 = [(TKNFCSlotManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v12];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000151DC;
  v16[3] = &unk_100038F78;
  v16[4] = &v23;
  v16[5] = &v17;
  [v13 startNFCSlotWithName:TKNFCSlotName uiSheetMessage:v10 supportedAppIdentifiers:v11 reply:v16];

  if (a6)
  {
    *a6 = v18[5];
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v14;
}

- (void)_configureTokenWatcherForToken:(id)a3 expectedSlotName:(id)a4 connectionErrorHandler:(id)a5 tokenFoundHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v17 = v10;
  v21 = v17;
  v18 = v11;
  v22 = v18;
  v19 = v13;
  v23 = v19;
  [(TKTokenWatcher *)v16 setInsertionHandler:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_handleRegisteredTokenDetection:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  timeoutTimer = v4->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v6 = v4->_timeoutTimer;
    v4->_timeoutTimer = 0;
  }

  objc_sync_exit(v4);

  v7 = [(TKNFCSlotManager *)v4 _startNFCOperationWithTokenID:v8];
  [(TKNFCSlotManager *)v4 _refreshNFCOperationTerminationTimer];
}

- (id)_startNFCOperationWithTokenID:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  activeTokenID = v6->_activeTokenID;
  if (activeTokenID)
  {
    v8 = [(TKTokenID *)activeTokenID stringRepresentation];
    v9 = [v5 stringRepresentation];
    v10 = [v8 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = sub_100014350();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100020524(v5, &v6->_activeTokenID);
      }
    }
  }

  objc_storeStrong(&v6->_activeTokenID, a3);
  v12 = sub_100014350();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(TKSharedResourceSlot *)v6->_nfcOperationSlot idleTimeout];
    sub_10002059C(v5, buf, v12, v13);
  }

  nfcOperationSlot = v6->_nfcOperationSlot;
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
    objc_storeStrong(&v6->_activeNFCOperation, v15);
    v18 = v15;
  }

  objc_sync_exit(v6);

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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_activeNFCOperation)
  {
    v3 = sub_100014350();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(TKSharedResourceSlot *)v2->_nfcOperationSlot idleTimeout];
      sub_100020658(v6, v3, v4);
    }

    activeNFCOperation = v2->_activeNFCOperation;
    v2->_activeNFCOperation = 0;
  }

  objc_sync_exit(v2);
}

- (void)_postponeNFCSlotTermination
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_nfcOperationSlot && v2->_activeTokenID)
  {
    v3 = sub_100014350();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10002069C(&v2->_activeTokenID);
    }

    activeNFCOperation = v2->_activeNFCOperation;
    v2->_activeNFCOperation = 0;

    nfcOperationSlot = v2->_nfcOperationSlot;
    v10 = 0;
    v6 = [(TKSharedResourceSlot *)nfcOperationSlot resourceWithError:&v10];
    v7 = v10;
    v8 = v2->_activeNFCOperation;
    v2->_activeNFCOperation = v6;

    if (v7)
    {
      v9 = sub_100014350();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100020714();
      }
    }

    [(TKNFCSlotManager *)v2 _refreshNFCOperationTerminationTimer];
  }

  objc_sync_exit(v2);
}

- (void)_terminateSlotConnection
{
  v2 = self;
  objc_sync_enter(v2);
  tokenWatcher = v2->_tokenWatcher;
  v2->_tokenWatcher = 0;

  [(TKNFCSlotManager *)v2 _releaseNFCOperationResource];
  objc_sync_exit(v2);

  [(TKNFCSlotManager *)v2 _handleConnectionCloseWithInvalidate:1];
}

- (void)setSlotWithName:(id)a3 endpoint:(id)a4 type:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  if ([v10 isEqual:TKNFCSlotName])
  {
    nfcSlotState = v14->_nfcSlotState;
    if (v11)
    {
      if (!nfcSlotState)
      {
        v14->_nfcSlotState = 1;
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

      nfcSlotCompletionBlock = v14->_nfcSlotCompletionBlock;
      if (nfcSlotCompletionBlock)
      {
        v21 = NSLocalizedDescriptionKey;
        v22 = @"NFC slot ended without receiving token";
        v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v20 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:v19];
        nfcSlotCompletionBlock[2](nfcSlotCompletionBlock, 0, v20);
      }

      v14->_nfcSlotState = 0;
      [(TKNFCSlotManager *)v14 _terminateSlotConnection];
    }
  }

  objc_sync_exit(v14);

  v13[2](v13);
}

- (id)_slotServerConnectionWithErrorHandler:(id)a3
{
  v4 = a3;
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
  v7 = [(TKXPCConnection *)self->_slotServerConnection synchronousRemoteObjectProxyWithErrorHandler:v4];
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
    v13 = [NSString stringWithFormat:@"XPC connection to %@ could not be created", TKProtocolSlotClientName];
    v9 = [NSError errorWithCode:-2 debugDescription:v13];

    if (v4 && v9)
    {
      v4[2](v4, v9);
    }
  }

  [(NSRecursiveLock *)self->_slotServerConnectionLock unlock];
  v10 = self->_slotServerConnection;
  v11 = v10;

  return v10;
}

- (void)_handleConnectionCloseWithInvalidate:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_slotServerConnectionLock lock];
  if (self->_slotServerConnection)
  {
    v5 = sub_100014350();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100020804();
    }

    if (v3)
    {
      [(TKXPCConnection *)self->_slotServerConnection invalidate];
    }

    slotServerConnection = self->_slotServerConnection;
    self->_slotServerConnection = 0;
  }

  [(NSRecursiveLock *)self->_slotServerConnectionLock unlock];
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TKNFCSlotManager *)self _slotServerConnectionWithErrorHandler:v4];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)connectionDidActivate:(id)a3
{
  v3 = a3;
  v4 = sub_100014350();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000208A4();
  }
}

@end