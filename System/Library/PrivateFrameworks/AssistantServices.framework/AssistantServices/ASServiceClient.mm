@interface ASServiceClient
- (ASServiceClient)initWithConnection:(id)connection servicesMonitor:(id)monitor;
- (BOOL)_classInstancesSufficientlyRespondToSyncSelectors:(Class)selectors;
- (BOOL)sendSyncChunksWithPreAnchor:(id)anchor postAnchor:(id)postAnchor updates:(id)updates deletes:(id)deletes validity:(id)validity forRequestUUID:(id)d;
- (id)_providerServiceDelegateWithErrorHandler:(id)handler;
- (id)_synchronousProviderServiceDelegateWithErrorHandler:(id)handler;
- (void)barrierWithCompletion:(id)completion;
- (void)beginSyncForServicePath:(id)path className:(id)name requestUUID:(id)d info:(id)info reply:(id)reply;
- (void)clearDomainObjectsForServicePath:(id)path className:(id)name;
- (void)doCommandForServicePath:(id)path className:(id)name infoDictionary:(id)dictionary executionInfo:(id)info reply:(id)reply;
- (void)preheatBundleForServicePath:(id)path;
- (void)reloadServiceBundleAtPath:(id)path;
- (void)runMaintenanceWorkForServicePath:(id)path className:(id)name completion:(id)completion;
- (void)serviceMonitorWillCrashAssistantServiceDueToPluginAtPath:(id)path reply:(id)reply;
@end

@implementation ASServiceClient

- (void)preheatBundleForServicePath:(id)path
{
  pathCopy = path;
  v4 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ASServiceClient preheatBundleForServicePath:]";
    v11 = 2112;
    v12 = pathCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Preheating bundle at path %@", buf, 0x16u);
  }

  if (sub_1000013FC(pathCopy))
  {
    v5 = sub_1000016E0(pathCopy, 33);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005CB4;
    block[3] = &unk_1000146A8;
    v8 = pathCopy;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[ASServiceClient preheatBundleForServicePath:]";
      v11 = 2114;
      v12 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Path is %{public}@ is not allowed", buf, 0x16u);
    }
  }
}

- (void)clearDomainObjectsForServicePath:(id)path className:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v7 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ASServiceClient clearDomainObjectsForServicePath:className:]";
    v21 = 2112;
    v22 = pathCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Clearing domain objects for service path %@", &v19, 0x16u);
  }

  v8 = sub_100000FE8(nameCopy, pathCopy);
  if (!v8)
  {
    v15 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = "[ASServiceClient clearDomainObjectsForServicePath:className:]";
      v21 = 2114;
      v22 = nameCopy;
      v23 = 2114;
      v24 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s No clearing class with name %{public}@ at path %{public}@", &v19, 0x20u);
    }

    goto LABEL_15;
  }

  v9 = v8;
  v19 = 0;
  v10 = protocol_copyMethodDescriptionList(&OBJC_PROTOCOL___AFDomainObjectClearing, 1, 1, &v19);
  if (!v10)
  {
LABEL_10:
    v14 = objc_alloc_init(v9);
    [v14 clearAceDomainObjects];

    goto LABEL_15;
  }

  v11 = v10;
  if (!v19)
  {
LABEL_9:
    free(v11);
    goto LABEL_10;
  }

  v12 = 0;
  v13 = v10;
  while (([(objc_class *)v9 instancesRespondToSelector:v13->name]& 1) != 0)
  {
    ++v12;
    ++v13;
    if (v12 >= v19)
    {
      goto LABEL_9;
    }
  }

  free(v11);
  v16 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = NSStringFromClass(v9);
    v19 = 136315394;
    v20 = "[ASServiceClient clearDomainObjectsForServicePath:className:]";
    v21 = 2114;
    v22 = v18;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Class %{public}@ doesn't conform to AFDomainObjectClearing", &v19, 0x16u);
  }

LABEL_15:
}

- (BOOL)_classInstancesSufficientlyRespondToSyncSelectors:(Class)selectors
{
  if (([(objc_class *)selectors instancesRespondToSelector:"beginSyncWithAnchor:validity:count:forKey:beginInfo:"]& 1) != 0 || ([(objc_class *)selectors instancesRespondToSelector:"beginSyncWithAnchor:validity:forKey:beginInfo:"]& 1) != 0 || ([(objc_class *)selectors instancesRespondToSelector:"beginSyncWithAnchor:validity:count:forKey:beginInfo:configuration:"]& 1) != 0 || (v4 = [(objc_class *)selectors instancesRespondToSelector:"beginSyncWithInfo:configuration:"]) != 0)
  {

    LOBYTE(v4) = [(objc_class *)selectors instancesRespondToSelector:"getChangeAfterAnchor:changeInfo:"];
  }

  return v4;
}

- (void)reloadServiceBundleAtPath:(id)path
{
  pathCopy = path;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ASServiceClient reloadServiceBundleAtPath:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_servicesMonitor);
  [WeakRetained reloadServiceBundleAtPath:pathCopy];
}

- (void)runMaintenanceWorkForServicePath:(id)path className:(id)name completion:(id)completion
{
  pathCopy = path;
  nameCopy = name;
  completionCopy = completion;
  v11 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[ASServiceClient runMaintenanceWorkForServicePath:className:completion:]";
    v26 = 2112;
    v27 = pathCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (qword_10001A340 != -1)
  {
    dispatch_once(&qword_10001A340, &stru_100014608);
  }

  WeakRetained = objc_loadWeakRetained(&self->_servicesMonitor);
  v13 = [WeakRetained startWatchdogForPluginAtPath:pathCopy syncClassName:nameCopy completion:completionCopy];
  v14 = v13;
  if (!v13)
  {
    v13 = completionCopy;
  }

  v15 = objc_retainBlock(v13);

  v16 = qword_10001A338;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000066E8;
  block[3] = &unk_100014658;
  v21 = nameCopy;
  v22 = pathCopy;
  v23 = v15;
  v17 = v15;
  v18 = pathCopy;
  v19 = nameCopy;
  dispatch_async(v16, block);
}

- (void)beginSyncForServicePath:(id)path className:(id)name requestUUID:(id)d info:(id)info reply:(id)reply
{
  pathCopy = path;
  nameCopy = name;
  dCopy = d;
  infoCopy = info;
  replyCopy = reply;
  v17 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "[ASServiceClient beginSyncForServicePath:className:requestUUID:info:reply:]";
    v36 = 2112;
    v37 = pathCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Beginning sync for path %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_servicesMonitor);
  v19 = [WeakRetained startWatchdogForPluginAtPath:pathCopy syncClassName:nameCopy completion:replyCopy];
  v20 = v19;
  if (!v19)
  {
    v19 = replyCopy;
  }

  v21 = objc_retainBlock(v19);

  v22 = sub_1000016E0(pathCopy, 17);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100006AA4;
  v28[3] = &unk_1000145C8;
  v28[4] = self;
  v29 = nameCopy;
  v30 = pathCopy;
  v31 = infoCopy;
  v32 = dCopy;
  v33 = v21;
  v23 = v21;
  v24 = dCopy;
  v25 = infoCopy;
  v26 = pathCopy;
  v27 = nameCopy;
  dispatch_async(v22, v28);
}

- (void)doCommandForServicePath:(id)path className:(id)name infoDictionary:(id)dictionary executionInfo:(id)info reply:(id)reply
{
  pathCopy = path;
  nameCopy = name;
  dictionaryCopy = dictionary;
  infoCopy = info;
  replyCopy = reply;
  v17 = +[AFAnalytics sharedAnalytics];
  [v17 logEventWithType:4004 context:0];

  kdebug_trace();
  v18 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v41 = "[ASServiceClient doCommandForServicePath:className:infoDictionary:executionInfo:reply:]";
    v42 = 2112;
    v43 = dictionaryCopy;
    v44 = 2112;
    v45 = nameCopy;
    v46 = 2112;
    v47 = pathCopy;
    v48 = 2112;
    v49 = infoCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Connection got message %@ for command %@. (bundle = %@, executionInfo = %@)", buf, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_servicesMonitor);
  v20 = [WeakRetained keepAliveWithReplyHandler:replyCopy];
  v21 = v20;
  if (!v20)
  {
    v20 = replyCopy;
  }

  v22 = objc_retainBlock(v20);

  v23 = sub_1000016E0(pathCopy, 33);
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100006F04;
  v33 = &unk_1000145C8;
  v34 = nameCopy;
  v35 = pathCopy;
  v36 = dictionaryCopy;
  v37 = infoCopy;
  selfCopy = self;
  v39 = v22;
  v24 = v22;
  v25 = infoCopy;
  v26 = dictionaryCopy;
  v27 = pathCopy;
  v28 = nameCopy;
  dispatch_async(v23, &v30);

  kdebug_trace();
  v29 = [AFAnalytics sharedAnalytics:v30];
  [v29 logEventWithType:4006 context:0];
}

- (void)barrierWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009C6C;
  v7[3] = &unk_100014578;
  v8 = completionCopy;
  v6 = completionCopy;
  [WeakRetained addBarrierBlock:v7];
}

- (id)_synchronousProviderServiceDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009E20;
    v10[3] = &unk_100014550;
    v11 = handlerCopy;
    v6 = [WeakRetained synchronousRemoteObjectProxyWithErrorHandler:v10];
    v7 = v11;
LABEL_6:

    goto LABEL_7;
  }

  v8 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = "[ASServiceClient _synchronousProviderServiceDelegateWithErrorHandler:]";
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Connection to assistantd already dropped", buf, 0xCu);
    if (handlerCopy)
    {
      goto LABEL_5;
    }
  }

  else if (handlerCopy)
  {
LABEL_5:
    v7 = [AFError errorWithCode:23 description:@"Connection to assistantd already dropped."];
    (*(handlerCopy + 2))(handlerCopy, v7);
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_providerServiceDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A0A4;
    v10[3] = &unk_100014550;
    v11 = handlerCopy;
    v6 = [WeakRetained remoteObjectProxyWithErrorHandler:v10];
    v7 = v11;
LABEL_6:

    goto LABEL_7;
  }

  v8 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = "[ASServiceClient _providerServiceDelegateWithErrorHandler:]";
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Connection to assistantd already dropped", buf, 0xCu);
    if (handlerCopy)
    {
      goto LABEL_5;
    }
  }

  else if (handlerCopy)
  {
LABEL_5:
    v7 = [AFError errorWithCode:23 description:@"Connection to assistantd already dropped."];
    (*(handlerCopy + 2))(handlerCopy, v7);
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (ASServiceClient)initWithConnection:(id)connection servicesMonitor:(id)monitor
{
  objc_initWeak(&location, connection);
  objc_initWeak(&v12, monitor);
  v11.receiver = self;
  v11.super_class = ASServiceClient;
  v6 = [(ASServiceClient *)&v11 init];
  if (v6)
  {
    v7 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v6->_connection, v7);

    v8 = objc_loadWeakRetained(&v12);
    objc_storeWeak(&v6->_servicesMonitor, v8);

    WeakRetained = objc_loadWeakRetained(&v6->_servicesMonitor);
    [WeakRetained setDelegate:v6];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return v6;
}

- (BOOL)sendSyncChunksWithPreAnchor:(id)anchor postAnchor:(id)postAnchor updates:(id)updates deletes:(id)deletes validity:(id)validity forRequestUUID:(id)d
{
  anchorCopy = anchor;
  postAnchorCopy = postAnchor;
  updatesCopy = updates;
  deletesCopy = deletes;
  validityCopy = validity;
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000A420;
  v23[3] = &unk_100014870;
  v23[4] = &v24;
  v20 = [(ASServiceClient *)self _synchronousProviderServiceDelegateWithErrorHandler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000A434;
  v22[3] = &unk_100014710;
  v22[4] = &v24;
  [v20 syncChunksWithPreAnchor:anchorCopy postAnchor:postAnchorCopy updates:updatesCopy deletes:deletesCopy validity:validityCopy forRequestUUID:dCopy reply:v22];

  LOBYTE(v20) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v20;
}

- (void)serviceMonitorWillCrashAssistantServiceDueToPluginAtPath:(id)path reply:(id)reply
{
  replyCopy = reply;
  pathCopy = path;
  v7 = [(ASServiceClient *)self _providerServiceDelegateWithErrorHandler:&stru_100014890];
  [v7 assistantServiceWillCrashForStuckSyncPluginAtPath:pathCopy];

  [(ASServiceClient *)self barrierWithCompletion:replyCopy];
}

@end