@interface ASServiceDaemon
- (ASServiceDaemon)initWithLaunchContext:(id)context;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_loadExecutionService;
- (id)_loadLNDaemonConnectionListener;
- (void)_setupAccessibility;
- (void)dealloc;
@end

@implementation ASServiceDaemon

- (void)_setupAccessibility
{
  sharedSystemShellSwitcher = [off_100019E10() sharedSystemShellSwitcher];
  [sharedSystemShellSwitcher signalSiriAvailability];
}

- (id)_loadLNDaemonConnectionListener
{
  lnDaemonConnectionListener = self->_lnDaemonConnectionListener;
  if (!lnDaemonConnectionListener)
  {
    v4 = [[LNDaemonConnectionListener alloc] initWithBundleIdentifier:@"com.apple.assistant_service"];
    v5 = self->_lnDaemonConnectionListener;
    self->_lnDaemonConnectionListener = v4;

    lnDaemonConnectionListener = self->_lnDaemonConnectionListener;
  }

  v6 = lnDaemonConnectionListener;

  return v6;
}

- (id)_loadExecutionService
{
  executionService = self->_executionService;
  if (!executionService)
  {
    v4 = objc_alloc_init(SKRExecutionListenerManager);
    v5 = self->_executionService;
    self->_executionService = v4;

    executionService = self->_executionService;
  }

  v6 = executionService;

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = kAssistantServiceEntitlement;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    v8 = AFProviderServiceDelegateXPCInterface();
    [connectionCopy setRemoteObjectInterface:v8];

    v9 = AFProviderServiceXPCInterface();
    [connectionCopy setExportedInterface:v9];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INTERACTIVE, 0);

    v12 = dispatch_queue_create(0, v11);
    [connectionCopy _setQueue:v12];

    v13 = [[ASServiceClient alloc] initWithConnection:connectionCopy servicesMonitor:self->_servicesMonitor];
    [connectionCopy setExportedObject:v13];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100004A24;
    v21 = &unk_100014680;
    v22 = v13;
    selfCopy = self;
    v14 = v13;
    [connectionCopy setInvalidationHandler:&v18];
    ++self->_connectionCount;
    [connectionCopy resume];
  }

  else
  {
    v15 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
      *buf = 136315650;
      v25 = "[ASServiceDaemon listener:shouldAcceptNewConnection:]";
      v26 = 2048;
      processIdentifier = [connectionCopy processIdentifier];
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Rejecting connection from pid %ld because it does not have entitlement %@", buf, 0x20u);
    }
  }

  return HasEntitlement;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  v3.receiver = self;
  v3.super_class = ASServiceDaemon;
  [(ASServiceDaemon *)&v3 dealloc];
}

- (ASServiceDaemon)initWithLaunchContext:(id)context
{
  v18.receiver = self;
  v18.super_class = ASServiceDaemon;
  v3 = [(ASServiceDaemon *)&v18 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INTERACTIVE, 0);

    v6 = dispatch_queue_create("com.apple.assistant.service.listener", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = +[AFInstanceContext currentContext];
    v9 = [v8 createXPCListenerWithMachServiceName:kAssistantServiceServiceName];
    listener = v3->_listener;
    v3->_listener = v9;

    [(NSXPCListener *)v3->_listener _setQueue:v3->_queue];
    [(NSXPCListener *)v3->_listener setDelegate:v3];
    v11 = objc_alloc_init(ASServicesMonitor);
    servicesMonitor = v3->_servicesMonitor;
    v3->_servicesMonitor = v11;

    [(ASServiceDaemon *)v3 _setUpEventHandlersForNotifyd];
    _loadExecutionService = [(ASServiceDaemon *)v3 _loadExecutionService];
    executionService = v3->_executionService;
    v3->_executionService = _loadExecutionService;

    [(ASServiceDaemon *)v3 _setupAccessibility];
    _loadLNDaemonConnectionListener = [(ASServiceDaemon *)v3 _loadLNDaemonConnectionListener];
    lnDaemonConnectionListener = v3->_lnDaemonConnectionListener;
    v3->_lnDaemonConnectionListener = _loadLNDaemonConnectionListener;
  }

  return v3;
}

@end