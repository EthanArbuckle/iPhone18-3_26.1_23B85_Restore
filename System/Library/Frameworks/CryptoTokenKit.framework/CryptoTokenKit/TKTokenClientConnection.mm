@interface TKTokenClientConnection
- (BOOL)isCaller:(id)caller allowedForToken:(id)token error:(id *)error;
- (NSXPCConnection)connection;
- (TKTokenClientConnection)initWithConnection:(id)connection server:(id)server;
- (id)accessRegistry;
- (void)ensureSlotWatcherRunningWithReply:(id)reply;
- (void)getConfigurationEndpoint:(id)endpoint;
- (void)getEndpoint:(id)endpoint;
- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status;
- (void)terminate;
@end

@implementation TKTokenClientConnection

- (TKTokenClientConnection)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v14.receiver = self;
  v14.super_class = TKTokenClientConnection;
  v8 = [(TKTokenClientConnection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeStrong(&v9->_server, server);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016240;
    v12[3] = &unk_100038710;
    v13 = v9;
    WeakRetained = objc_loadWeakRetained(&v9->_connection);
    [WeakRetained setInvalidationHandler:v12];
  }

  return v9;
}

- (void)getEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = self->_server;
  objc_sync_enter(v4);
  tokenServerListener = [(TKTokenServer *)self->_server tokenServerListener];
  endpoint = [tokenServerListener endpoint];
  endpointCopy[2](endpointCopy, endpoint);

  objc_sync_exit(v4);
}

- (BOOL)isCaller:(id)caller allowedForToken:(id)token error:(id *)error
{
  tokenCopy = token;
  callerCopy = caller;
  v10 = [TKTokenAccessRequest alloc];
  tokenID = [tokenCopy tokenID];
  driver = [tokenCopy driver];
  extension = [driver extension];
  v14 = [v10 initWithCaller:callerCopy tokenID:tokenID extension:extension];

  accessRegistry = [(TKTokenClientConnection *)self accessRegistry];
  v16 = [accessRegistry evaluateRequest:v14 error:error];

  v17 = sub_1000164FC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    clientBundleID = [v14 clientBundleID];
    tokenID2 = [tokenCopy tokenID];
    stringRepresentation = [tokenID2 stringRepresentation];
    if (v16)
    {
      v22 = @"granted";
    }

    else
    {
      v22 = [NSString stringWithFormat:@"denied with error: %@", *error];
    }

    *buf = 138412802;
    v24 = clientBundleID;
    v25 = 2112;
    v26 = stringRepresentation;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Request from: '%@' to access '%@' was %@", buf, 0x20u);
    if ((v16 & 1) == 0)
    {
    }
  }

  return v16;
}

- (id)accessRegistry
{
  accessRegistry = self->_accessRegistry;
  if (!accessRegistry)
  {
    v4 = objc_alloc_init(TKTokenAccessRegistry);
    v5 = self->_accessRegistry;
    self->_accessRegistry = v4;

    accessRegistry = self->_accessRegistry;
  }

  return accessRegistry;
}

- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status
{
  tokenCopy = token;
  v9 = [[TKTokenID alloc] initWithTokenID:tokenCopy];

  v10 = sub_1000164FC();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134218498;
      operationCopy = operation;
      v19 = 2114;
      v20 = v9;
      v21 = 2048;
      statusCopy = status;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "got notification for operation: %ld tokenID: %{public}@ status: %ld", &v17, 0x20u);
    }

    server = [(TKTokenClientConnection *)self server];
    tokenRegistry = [server tokenRegistry];
    v11 = [tokenRegistry tokenWithTokenID:v9];

    if ([v11 isRegistered])
    {
      driver = [v11 driver];
      context = [driver context];
      smartCardRegistrationRegistry = [context smartCardRegistrationRegistry];

      [smartCardRegistrationRegistry notifyTokenOperationInProgressForToken:v9];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100020A08();
  }
}

- (void)getConfigurationEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if ([(TKTokenServer *)self->_server waitForRegistry])
  {
    v4 = self->_server;
    objc_sync_enter(v4);
    tokenRegistry = [(TKTokenServer *)self->_server tokenRegistry];
    listener = [tokenRegistry listener];
    endpoint = [listener endpoint];
    endpointCopy[2](endpointCopy, endpoint);

    objc_sync_exit(v4);
  }

  else
  {
    endpointCopy[2](endpointCopy, 0);
  }
}

- (void)ensureSlotWatcherRunningWithReply:(id)reply
{
  replyCopy = reply;
  ensureSlotWatcherIsRunning = [(TKTokenServer *)self->_server ensureSlotWatcherIsRunning];

  if (ensureSlotWatcherIsRunning)
  {
    ensureSlotWatcherIsRunning2 = [(TKTokenServer *)self->_server ensureSlotWatcherIsRunning];
    ensureSlotWatcherIsRunning2[2]();
  }

  replyCopy[2]();
}

- (void)terminate
{
  tokenConnection = self->_tokenConnection;
  self->_tokenConnection = 0;
  _objc_release_x1();
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end