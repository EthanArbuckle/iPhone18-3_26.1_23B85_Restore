@interface TKTokenClientConnection
- (BOOL)isCaller:(id)a3 allowedForToken:(id)a4 error:(id *)a5;
- (NSXPCConnection)connection;
- (TKTokenClientConnection)initWithConnection:(id)a3 server:(id)a4;
- (id)accessRegistry;
- (void)ensureSlotWatcherRunningWithReply:(id)a3;
- (void)getConfigurationEndpoint:(id)a3;
- (void)getEndpoint:(id)a3;
- (void)notifyOperation:(int64_t)a3 forToken:(id)a4 withStatus:(int64_t)a5;
- (void)terminate;
@end

@implementation TKTokenClientConnection

- (TKTokenClientConnection)initWithConnection:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TKTokenClientConnection;
  v8 = [(TKTokenClientConnection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    objc_storeStrong(&v9->_server, a4);
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

- (void)getEndpoint:(id)a3
{
  v7 = a3;
  v4 = self->_server;
  objc_sync_enter(v4);
  v5 = [(TKTokenServer *)self->_server tokenServerListener];
  v6 = [v5 endpoint];
  v7[2](v7, v6);

  objc_sync_exit(v4);
}

- (BOOL)isCaller:(id)a3 allowedForToken:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [TKTokenAccessRequest alloc];
  v11 = [v8 tokenID];
  v12 = [v8 driver];
  v13 = [v12 extension];
  v14 = [v10 initWithCaller:v9 tokenID:v11 extension:v13];

  v15 = [(TKTokenClientConnection *)self accessRegistry];
  v16 = [v15 evaluateRequest:v14 error:a5];

  v17 = sub_1000164FC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v14 clientBundleID];
    v20 = [v8 tokenID];
    v21 = [v20 stringRepresentation];
    if (v16)
    {
      v22 = @"granted";
    }

    else
    {
      v22 = [NSString stringWithFormat:@"denied with error: %@", *a5];
    }

    *buf = 138412802;
    v24 = v19;
    v25 = 2112;
    v26 = v21;
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

- (void)notifyOperation:(int64_t)a3 forToken:(id)a4 withStatus:(int64_t)a5
{
  v8 = a4;
  v9 = [[TKTokenID alloc] initWithTokenID:v8];

  v10 = sub_1000164FC();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134218498;
      v18 = a3;
      v19 = 2114;
      v20 = v9;
      v21 = 2048;
      v22 = a5;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "got notification for operation: %ld tokenID: %{public}@ status: %ld", &v17, 0x20u);
    }

    v12 = [(TKTokenClientConnection *)self server];
    v13 = [v12 tokenRegistry];
    v11 = [v13 tokenWithTokenID:v9];

    if ([v11 isRegistered])
    {
      v14 = [v11 driver];
      v15 = [v14 context];
      v16 = [v15 smartCardRegistrationRegistry];

      [v16 notifyTokenOperationInProgressForToken:v9];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100020A08();
  }
}

- (void)getConfigurationEndpoint:(id)a3
{
  v8 = a3;
  if ([(TKTokenServer *)self->_server waitForRegistry])
  {
    v4 = self->_server;
    objc_sync_enter(v4);
    v5 = [(TKTokenServer *)self->_server tokenRegistry];
    v6 = [v5 listener];
    v7 = [v6 endpoint];
    v8[2](v8, v7);

    objc_sync_exit(v4);
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)ensureSlotWatcherRunningWithReply:(id)a3
{
  v6 = a3;
  v4 = [(TKTokenServer *)self->_server ensureSlotWatcherIsRunning];

  if (v4)
  {
    v5 = [(TKTokenServer *)self->_server ensureSlotWatcherIsRunning];
    v5[2]();
  }

  v6[2]();
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