@interface ADServiceConnection
- (ADServiceConnection)initWithIdentifier:(id)identifier path:(id)path commandMap:(id)map anchorMap:(id)anchorMap clearingClass:(id)class maintenanceClass:(id)maintenanceClass instanceContext:(id)context queue:(id)self0;
- (ADServiceConnectionDelegate)delegate;
- (double)_timeoutForCommand:(id)command;
- (id)_bundleClassForDomain:(id)domain commandName:(id)name;
- (id)_connection;
- (id)_providerService;
- (id)_providerServiceDelegate;
- (id)_providerServiceWithErrorHandler:(id)handler;
- (id)_stopTimersWithContinuation;
- (void)_addWatchdogTimer:(id)timer forUUID:(id)d;
- (void)_getCarDNDModeWithReply:(id)reply;
- (void)_getLockStateWithReply:(id)reply;
- (void)_getStarkModeWithReply:(id)reply;
- (void)_getTimeoutSuspendedWithReply:(id)reply;
- (void)_getWatchAuthenticationWithReply:(id)reply;
- (void)_handleCommand:(id)command executionInfo:(id)info completion:(id)completion;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_removeTimerForUUID:(id)d;
- (void)dealloc;
- (void)invalidate;
- (void)preheatServiceBundle;
- (void)reloadServiceBundleAtPath:(id)path;
- (void)runMaintenanceWorkWithCompletion:(id)completion;
- (void)sendBeginSyncWithInfo:(id)info chunkHandler:(id)handler completion:(id)completion;
- (void)sendClearDomainObjects;
- (void)sendClientBoundCommand:(id)command domain:(id)domain executionContext:(id)context reply:(id)reply;
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
  _providerService = [(ADServiceConnection *)self _providerService];
  [_providerService clearDomainObjectsForServicePath:self->_path className:self->_domainObjectClearingClassName];

  self->_preheated = 1;
}

- (id)_providerService
{
  _connection = [(ADServiceConnection *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (ADServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_getTimeoutSuspendedWithReply:(id)reply
{
  replyCopy = reply;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274654;
  v9[3] = &unk_10051C6F0;
  v10 = _stopTimersWithContinuation;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = _stopTimersWithContinuation;
  dispatch_async(v6, v9);
}

- (void)_handleCommand:(id)command executionInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  commandCopy = command;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v12 = +[ADCommandCenter sharedCommandCenter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002747DC;
  v15[3] = &unk_100518490;
  v16 = _stopTimersWithContinuation;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = _stopTimersWithContinuation;
  [v12 handleCommand:commandCopy withExecutionContextMatchingInfo:infoCopy completion:v15];
}

- (void)_getWatchAuthenticationWithReply:(id)reply
{
  replyCopy = reply;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274938;
  v9[3] = &unk_10051C6F0;
  v10 = _stopTimersWithContinuation;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = _stopTimersWithContinuation;
  dispatch_async(v6, v9);
}

- (void)_getStarkModeWithReply:(id)reply
{
  replyCopy = reply;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274A7C;
  v9[3] = &unk_10051C6F0;
  v10 = _stopTimersWithContinuation;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = _stopTimersWithContinuation;
  dispatch_async(v6, v9);
}

- (void)_getCarDNDModeWithReply:(id)reply
{
  replyCopy = reply;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274BD4;
  v9[3] = &unk_10051C6F0;
  v10 = _stopTimersWithContinuation;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = _stopTimersWithContinuation;
  dispatch_async(v6, v9);
}

- (void)_getLockStateWithReply:(id)reply
{
  replyCopy = reply;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100274D18;
  v9[3] = &unk_10051C6F0;
  v10 = _stopTimersWithContinuation;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = _stopTimersWithContinuation;
  dispatch_async(v6, v9);
}

- (void)_openURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  _stopTimersWithContinuation = [(ADServiceConnection *)self _stopTimersWithContinuation];
  v9 = +[ADCommandCenter sharedCommandCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100274E84;
  v12[3] = &unk_100518468;
  v13 = _stopTimersWithContinuation;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = _stopTimersWithContinuation;
  [v9 openURL:lCopy completion:v12];
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

- (void)reloadServiceBundleAtPath:(id)path
{
  pathCopy = path;
  _providerService = [(ADServiceConnection *)self _providerService];
  [_providerService reloadServiceBundleAtPath:pathCopy];
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

- (void)runMaintenanceWorkWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_maintenanceClassName && self->_path)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100275708;
    v8[3] = &unk_10051D2F0;
    v6 = completionCopy;
    v9 = v6;
    v7 = [(ADServiceConnection *)self _providerServiceWithErrorHandler:v8];
    [v7 runMaintenanceWorkForServicePath:self->_path className:self->_maintenanceClassName completion:v6];

    self->_preheated = 1;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)preheatServiceBundle
{
  if (!self->_preheated)
  {
    _providerService = [(ADServiceConnection *)self _providerService];
    [_providerService preheatBundleForServicePath:self->_path];

    self->_preheated = 1;
  }
}

- (void)sendBeginSyncWithInfo:(id)info chunkHandler:(id)handler completion:(id)completion
{
  infoCopy = info;
  handlerCopy = handler;
  completionCopy = completion;
  v11 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v57 = "[ADServiceConnection sendBeginSyncWithInfo:chunkHandler:completion:]";
    v58 = 2112;
    v59 = infoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _providerServiceDelegate = [(ADServiceConnection *)self _providerServiceDelegate];
  v13 = objc_alloc_init(ADSyncRequest);
  [(ADSyncRequest *)v13 setSyncChunkHandler:handlerCopy];
  uuid = [(ADSyncRequest *)v13 uuid];
  delegate = [(ADServiceConnection *)self delegate];
  syncQueue = self->_syncQueue;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100275BC0;
  v50[3] = &unk_10051D2A0;
  v17 = infoCopy;
  v51 = v17;
  v18 = _providerServiceDelegate;
  v52 = v18;
  v19 = uuid;
  v53 = v19;
  v54 = delegate;
  v20 = completionCopy;
  v55 = v20;
  v36 = delegate;
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
  v31 = v30 = handlerCopy;
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

- (void)sendClientBoundCommand:(id)command domain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  if (self->_path)
  {
    if (commandCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"ADServiceConnection.m" lineNumber:182 description:@"Must have a path"];

    if (commandCopy)
    {
      goto LABEL_3;
    }
  }

  v42 = +[NSAssertionHandler currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"ADServiceConnection.m" lineNumber:183 description:@"Must have a command"];

LABEL_3:
  encodedClassName = [commandCopy encodedClassName];
  v46 = domainCopy;
  v15 = [(ADServiceConnection *)self _bundleClassForDomain:domainCopy commandName:encodedClassName];
  v16 = objc_alloc_init(NSUUID);
  v45 = encodedClassName;
  [(ADServiceStatistics *)self->_stats markIncomingCommand:encodedClassName];
  [(ADServiceConnection *)self _timeoutForCommand:commandCopy];
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
  selfCopy = self;
  v25 = v16;
  v61 = v25;
  v26 = replyCopy;
  v62 = v26;
  v27 = [v22 initWithTimeoutInterval:targetQueue onQueue:v58 timeoutHandler:v18];
  [v27 start];
  v28 = commandCopy;
  LODWORD(v22) = [commandCopy ad_shouldLogToMetrics];
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
  dictionary = [v28 dictionary];
  info = [contextCopy info];
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
  [v34 doCommandForServicePath:path className:v33 infoDictionary:dictionary executionInfo:info reply:v48];

  [(ADServiceConnection *)self _addWatchdogTimer:v39 forUUID:v40];
}

- (double)_timeoutForCommand:(id)command
{
  commandCopy = command;
  v5 = objc_opt_respondsToSelector();
  if ((v5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  hashedRouteUIDs = [commandCopy hashedRouteUIDs];
  if (![hashedRouteUIDs count])
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_7:
      hashedRouteUID = [commandCopy hashedRouteUID];
      v7 = [hashedRouteUID length];

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

- (void)_removeTimerForUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    targetQueue = self->_targetQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100276DC4;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(targetQueue, v7);
  }
}

- (void)_addWatchdogTimer:(id)timer forUUID:(id)d
{
  timerCopy = timer;
  dCopy = d;
  v8 = dCopy;
  if (timerCopy && dCopy)
  {
    targetQueue = self->_targetQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100276E9C;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v11 = timerCopy;
    v12 = v8;
    dispatch_async(targetQueue, block);
  }
}

- (id)_bundleClassForDomain:(id)domain commandName:(id)name
{
  commandMap = self->_commandMap;
  nameCopy = name;
  v7 = [(NSDictionary *)commandMap objectForKey:domain];
  v8 = [v7 objectForKey:nameCopy];

  return v8;
}

- (id)_providerServiceDelegate
{
  _connection = [(ADServiceConnection *)self _connection];
  exportedObject = [_connection exportedObject];

  return exportedObject;
}

- (id)_providerServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(ADServiceConnection *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ADServiceConnection;
  [(ADServiceConnection *)&v3 dealloc];
}

- (ADServiceConnection)initWithIdentifier:(id)identifier path:(id)path commandMap:(id)map anchorMap:(id)anchorMap clearingClass:(id)class maintenanceClass:(id)maintenanceClass instanceContext:(id)context queue:(id)self0
{
  identifierCopy = identifier;
  pathCopy = path;
  mapCopy = map;
  anchorMapCopy = anchorMap;
  classCopy = class;
  maintenanceClassCopy = maintenanceClass;
  contextCopy = context;
  queueCopy = queue;
  v50.receiver = self;
  v50.super_class = ADServiceConnection;
  v24 = [(ADServiceConnection *)&v50 init];
  if (v24)
  {
    v49 = queueCopy;
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [pathCopy copy];
    path = v24->_path;
    v24->_path = v27;

    v29 = [[ADServiceStatistics alloc] initWithServiceIdentifier:identifierCopy];
    stats = v24->_stats;
    v24->_stats = v29;

    v31 = [mapCopy copy];
    commandMap = v24->_commandMap;
    v24->_commandMap = v31;

    v33 = [anchorMapCopy copy];
    anchorKeyClassMap = v24->_anchorKeyClassMap;
    v24->_anchorKeyClassMap = v33;

    v35 = [classCopy copy];
    domainObjectClearingClassName = v24->_domainObjectClearingClassName;
    v24->_domainObjectClearingClassName = v35;

    v37 = [maintenanceClassCopy copy];
    maintenanceClassName = v24->_maintenanceClassName;
    v24->_maintenanceClassName = v37;

    objc_storeStrong(&v24->_targetQueue, queue);
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

    if (contextCopy)
    {
      v46 = contextCopy;
    }

    else
    {
      v46 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v24->_instanceContext;
    v24->_instanceContext = v46;

    queueCopy = v49;
  }

  return v24;
}

@end