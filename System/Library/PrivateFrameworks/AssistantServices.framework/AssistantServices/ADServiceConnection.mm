@interface ADServiceConnection
- (ADServiceConnection)initWithIdentifier:(id)a3 path:(id)a4 commandMap:(id)a5 anchorMap:(id)a6 clearingClass:(id)a7 maintenanceClass:(id)a8 instanceContext:(id)a9 queue:(id)a10;
- (ADServiceConnectionDelegate)delegate;
- (double)_timeoutForCommand:(id)a3;
- (id)_bundleClassForDomain:(id)a3 commandName:(id)a4;
- (id)_connection;
- (id)_providerService;
- (id)_providerServiceDelegate;
- (id)_providerServiceWithErrorHandler:(id)a3;
- (id)_stopTimersWithContinuation;
- (void)_addWatchdogTimer:(id)a3 forUUID:(id)a4;
- (void)_getCarDNDModeWithReply:(id)a3;
- (void)_getLockStateWithReply:(id)a3;
- (void)_getStarkModeWithReply:(id)a3;
- (void)_getTimeoutSuspendedWithReply:(id)a3;
- (void)_getWatchAuthenticationWithReply:(id)a3;
- (void)_handleCommand:(id)a3 executionInfo:(id)a4 completion:(id)a5;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_removeTimerForUUID:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)preheatServiceBundle;
- (void)reloadServiceBundleAtPath:(id)a3;
- (void)runMaintenanceWorkWithCompletion:(id)a3;
- (void)sendBeginSyncWithInfo:(id)a3 chunkHandler:(id)a4 completion:(id)a5;
- (void)sendClearDomainObjects;
- (void)sendClientBoundCommand:(id)a3 domain:(id)a4 executionContext:(id)a5 reply:(id)a6;
@end

@implementation ADServiceConnection

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:kAssistantServiceServiceName options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = AFProviderServiceXPCInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = AFProviderServiceDelegateXPCInterface();
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    v10 = self->_connection;
    v11 = [[ADServiceConnectionProviderServiceDelegate alloc] initWithServiceConnection:self syncQueue:self->_syncQueue];
    [(NSXPCConnection *)v10 setExportedObject:v11];

    v12 = self->_connection;
    if (AFIsHorseman())
    {
      v13 = qword_100590558;
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UNSPECIFIED, 0);

      v16 = dispatch_queue_create_with_target_V2(0, v15, v13);
    }

    else
    {
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INTERACTIVE, 0);

      v16 = dispatch_queue_create(0, v13);
    }

    [(NSXPCConnection *)v12 _setQueue:v16];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&stru_100518380];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&stru_1005183A0];
    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (void)sendClearDomainObjects
{
  v3 = [(ADServiceConnection *)self _providerService];
  [v3 clearDomainObjectsForServicePath:self->_path className:self->_domainObjectClearingClassName];

  self->_preheated = 1;
}

- (id)_providerService
{
  v2 = [(ADServiceConnection *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (ADServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_getTimeoutSuspendedWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274654;
  v9[3] = &unk_10051C6F0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)_handleCommand:(id)a3 executionInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v12 = +[ADCommandCenter sharedCommandCenter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002747DC;
  v15[3] = &unk_100518490;
  v16 = v11;
  v17 = v8;
  v13 = v8;
  v14 = v11;
  [v12 handleCommand:v10 withExecutionContextMatchingInfo:v9 completion:v15];
}

- (void)_getWatchAuthenticationWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274938;
  v9[3] = &unk_10051C6F0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)_getStarkModeWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274A7C;
  v9[3] = &unk_10051C6F0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)_getCarDNDModeWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274BD4;
  v9[3] = &unk_10051C6F0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)_getLockStateWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274D18;
  v9[3] = &unk_10051C6F0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v9 = +[ADCommandCenter sharedCommandCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100274E84;
  v12[3] = &unk_100518468;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  [v9 openURL:v7 completion:v12];
}

- (id)_stopTimersWithContinuation
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10027500C;
  v8[4] = sub_10027501C;
  v9 = 0;
  targetQueue = self->_targetQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100275024;
  block[3] = &unk_10051D4A0;
  block[4] = self;
  block[5] = v8;
  dispatch_async(targetQueue, block);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100275270;
  v6[3] = &unk_10051D4A0;
  v6[4] = self;
  v6[5] = v8;
  v4 = objc_retainBlock(v6);
  _Block_object_dispose(v8, 8);

  return v4;
}

- (void)reloadServiceBundleAtPath:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _providerService];
  [v5 reloadServiceBundleAtPath:v4];
}

- (void)invalidate
{
  v3 = self->_connection;
  connection = self->_connection;
  self->_connection = 0;

  self->_preheated = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100275614;
  v6[3] = &unk_10051DFE8;
  v7 = v3;
  v5 = v3;
  [(NSXPCConnection *)v5 addBarrierBlock:v6];
}

- (void)runMaintenanceWorkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_maintenanceClassName && self->_path)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100275708;
    v8[3] = &unk_10051D2F0;
    v6 = v4;
    v9 = v6;
    v7 = [(ADServiceConnection *)self _providerServiceWithErrorHandler:v8];
    [v7 runMaintenanceWorkForServicePath:self->_path className:self->_maintenanceClassName completion:v6];

    self->_preheated = 1;
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)preheatServiceBundle
{
  if (!self->_preheated)
  {
    v3 = [(ADServiceConnection *)self _providerService];
    [v3 preheatBundleForServicePath:self->_path];

    self->_preheated = 1;
  }
}

- (void)sendBeginSyncWithInfo:(id)a3 chunkHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v57 = "[ADServiceConnection sendBeginSyncWithInfo:chunkHandler:completion:]";
    v58 = 2112;
    v59 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v12 = [(ADServiceConnection *)self _providerServiceDelegate];
  v13 = objc_alloc_init(ADSyncRequest);
  [(ADSyncRequest *)v13 setSyncChunkHandler:v9];
  v14 = [(ADSyncRequest *)v13 uuid];
  v15 = [(ADServiceConnection *)self delegate];
  syncQueue = self->_syncQueue;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100275BC0;
  v50[3] = &unk_10051D2A0;
  v17 = v8;
  v51 = v17;
  v18 = v12;
  v52 = v18;
  v19 = v14;
  v53 = v19;
  v54 = v15;
  v20 = v10;
  v55 = v20;
  v36 = v15;
  [(ADSyncRequest *)v13 startTimerOnQueue:syncQueue withTimeoutHandler:v50];
  v21 = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100275CC8;
  block[3] = &unk_10051DB68;
  v22 = v18;
  v47 = v22;
  v48 = v13;
  v23 = v19;
  v49 = v23;
  v35 = v13;
  dispatch_async(v21, block);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100275CD8;
  v42[3] = &unk_100518440;
  v42[4] = self;
  v43 = v22;
  v44 = v23;
  v45 = v20;
  v34 = v20;
  v24 = v23;
  v25 = v22;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100275DB8;
  v39[3] = &unk_10051DDE8;
  v39[4] = self;
  v40 = v17;
  v26 = objc_retainBlock(v42);
  v41 = v26;
  v27 = v17;
  v28 = [(ADServiceConnection *)self _providerServiceWithErrorHandler:v39];
  path = self->_path;
  [v27 key];
  v31 = v30 = v9;
  v32 = [(ADServiceConnection *)self _syncClassForAnchorKey:v31];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100275ED8;
  v37[3] = &unk_10051CF58;
  v38 = v26;
  v33 = v26;
  [v28 beginSyncForServicePath:path className:v32 requestUUID:v24 info:v27 reply:v37];

  self->_preheated = 1;
}

- (void)sendClientBoundCommand:(id)a3 domain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a4;
  v47 = a5;
  v13 = a6;
  if (self->_path)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"ADServiceConnection.m" lineNumber:182 description:@"Must have a path"];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v42 = +[NSAssertionHandler currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"ADServiceConnection.m" lineNumber:183 description:@"Must have a command"];

LABEL_3:
  v14 = [v11 encodedClassName];
  v46 = v12;
  v15 = [(ADServiceConnection *)self _bundleClassForDomain:v12 commandName:v14];
  v16 = objc_alloc_init(NSUUID);
  v45 = v14;
  [(ADServiceStatistics *)self->_stats markIncomingCommand:v14];
  [(ADServiceConnection *)self _timeoutForCommand:v11];
  v18 = v17;
  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [NSNumber numberWithDouble:v18];
    *buf = 136315650;
    v64 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]";
    v65 = 2114;
    v66 = v21;
    v67 = 2114;
    v68 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Using timeout of %{public}@ seconds for %{public}@", buf, 0x20u);
  }

  v22 = [AFWatchdogTimer alloc];
  targetQueue = self->_targetQueue;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1002764EC;
  v58[3] = &unk_10051E0D8;
  v24 = v15;
  v59 = v24;
  v60 = self;
  v25 = v16;
  v61 = v25;
  v26 = v13;
  v62 = v26;
  v27 = [v22 initWithTimeoutInterval:targetQueue onQueue:v58 timeoutHandler:v18];
  [v27 start];
  v28 = v11;
  LODWORD(v22) = [v11 ad_shouldLogToMetrics];
  kdebug_trace();
  if (v22)
  {
    v29 = +[AFAnalytics sharedAnalytics];
    [v29 logEventWithType:4005 context:0];
  }

  kdebug_trace();
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10027668C;
  v53[3] = &unk_1005183F0;
  v53[4] = self;
  v30 = v25;
  v54 = v30;
  v31 = v27;
  v55 = v31;
  v56 = v24;
  v32 = v26;
  v57 = v32;
  v33 = v24;
  v34 = [(ADServiceConnection *)self _providerServiceWithErrorHandler:v53];
  path = self->_path;
  v44 = v28;
  v36 = [v28 dictionary];
  v37 = [v47 info];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100276780;
  v48[3] = &unk_100518418;
  v48[4] = self;
  v49 = v30;
  v50 = v31;
  v51 = v45;
  v52 = v32;
  v43 = v32;
  v38 = v45;
  v39 = v31;
  v40 = v30;
  [v34 doCommandForServicePath:path className:v33 infoDictionary:v36 executionInfo:v37 reply:v48];

  [(ADServiceConnection *)self _addWatchdogTimer:v39 forUUID:v40];
}

- (double)_timeoutForCommand:(id)a3
{
  v4 = a3;
  v5 = objc_opt_respondsToSelector();
  if ((v5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v3 = [v4 hashedRouteUIDs];
  if (![v3 count])
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_7:
      v6 = [v4 hashedRouteUID];
      v7 = [v6 length];

      if (v5)
      {
      }

      if (v7)
      {
        goto LABEL_10;
      }

LABEL_13:
      v8 = 10.0;
      goto LABEL_14;
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_10:
  v8 = 15.0;
LABEL_14:

  return v8;
}

- (void)_removeTimerForUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    targetQueue = self->_targetQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100276DC4;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(targetQueue, v7);
  }
}

- (void)_addWatchdogTimer:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    targetQueue = self->_targetQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100276E9C;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_async(targetQueue, block);
  }
}

- (id)_bundleClassForDomain:(id)a3 commandName:(id)a4
{
  commandMap = self->_commandMap;
  v6 = a4;
  v7 = [(NSDictionary *)commandMap objectForKey:a3];
  v8 = [v7 objectForKey:v6];

  return v8;
}

- (id)_providerServiceDelegate
{
  v2 = [(ADServiceConnection *)self _connection];
  v3 = [v2 exportedObject];

  return v3;
}

- (id)_providerServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnection *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ADServiceConnection;
  [(ADServiceConnection *)&v3 dealloc];
}

- (ADServiceConnection)initWithIdentifier:(id)a3 path:(id)a4 commandMap:(id)a5 anchorMap:(id)a6 clearingClass:(id)a7 maintenanceClass:(id)a8 instanceContext:(id)a9 queue:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v50.receiver = self;
  v50.super_class = ADServiceConnection;
  v24 = [(ADServiceConnection *)&v50 init];
  if (v24)
  {
    v49 = v23;
    v25 = [v16 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v17 copy];
    path = v24->_path;
    v24->_path = v27;

    v29 = [[ADServiceStatistics alloc] initWithServiceIdentifier:v16];
    stats = v24->_stats;
    v24->_stats = v29;

    v31 = [v18 copy];
    commandMap = v24->_commandMap;
    v24->_commandMap = v31;

    v33 = [v19 copy];
    anchorKeyClassMap = v24->_anchorKeyClassMap;
    v24->_anchorKeyClassMap = v33;

    v35 = [v20 copy];
    domainObjectClearingClassName = v24->_domainObjectClearingClassName;
    v24->_domainObjectClearingClassName = v35;

    v37 = [v21 copy];
    maintenanceClassName = v24->_maintenanceClassName;
    v24->_maintenanceClassName = v37;

    objc_storeStrong(&v24->_targetQueue, a10);
    v39 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v40 = dispatch_queue_create("ADServiceConnectionSyncQueue", v39);

    syncQueue = v24->_syncQueue;
    v24->_syncQueue = v40;

    v42 = objc_alloc_init(NSMutableDictionary);
    watchdogTimersByUUID = v24->_watchdogTimersByUUID;
    v24->_watchdogTimersByUUID = v42;

    v44 = objc_alloc_init(NSCountedSet);
    suspendedWatchdogTimerUUIDs = v24->_suspendedWatchdogTimerUUIDs;
    v24->_suspendedWatchdogTimerUUIDs = v44;

    if (v22)
    {
      v46 = v22;
    }

    else
    {
      v46 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v24->_instanceContext;
    v24->_instanceContext = v46;

    v23 = v49;
  }

  return v24;
}

@end