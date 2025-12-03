@interface SRAppHelperService
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)validateConnection:(id)connection accessCategory:(id)category;
- (BOOL)validateEntitlment:(id)entitlment accessCategory:(id)category;
- (SRAppHelperService)initWithQueue:(id)queue;
- (SRAppHelperService)initWithQueue:(id)queue listener:(id)listener authStore:(id)store;
- (void)authorizationRequestStatusForBundleId:(id)id sensors:(id)sensors reply:(id)reply;
- (void)authorizationSnapshotWithReply:(id)reply;
- (void)dealloc;
- (void)resetAuthorizationsForBundleId:(id)id reply:(id)reply;
- (void)resume;
@end

@implementation SRAppHelperService

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000086C0 = os_log_create("com.apple.SensorKit", "AppHelper");
  }
}

- (SRAppHelperService)initWithQueue:(id)queue
{
  v5 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v5 _setQueue:queue];
  v6 = +[SRAuthorizationStore allSensorsStore];

  return [(SRAppHelperService *)self initWithQueue:queue listener:v5 authStore:v6];
}

- (SRAppHelperService)initWithQueue:(id)queue listener:(id)listener authStore:(id)store
{
  v12.receiver = self;
  v12.super_class = SRAppHelperService;
  v8 = [(SRAppHelperService *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_q = queue;
    dispatch_retain(queue);
    listenerCopy = listener;
    v9->_listener = listenerCopy;
    [(NSXPCListener *)listenerCopy setDelegate:v9];
    v9->_authStore = store;
  }

  return v9;
}

- (void)dealloc
{
  [(SRAppHelperService *)self setListener:0];

  dispatch_release(self->_q);
  v3.receiver = self;
  v3.super_class = SRAppHelperService;
  [(SRAppHelperService *)&v3 dealloc];
}

- (void)resume
{
  listener = [(SRAppHelperService *)self listener];

  [(NSXPCListener *)listener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = qword_1000086C0;
  if (os_log_type_enabled(qword_1000086C0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    serviceName = [connection serviceName];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@", &v8, 0xCu);
  }

  [connection _setQueue:self->_q];
  [connection setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SRAppHelperProtocol)}];
  [connection setExportedObject:self];
  [connection resume];
  return 1;
}

- (void)resetAuthorizationsForBundleId:(id)id reply:(id)reply
{
  if ([(SRAppHelperService *)self validateConnection:+[NSXPCConnection accessCategory:"currentConnection"], @"reset"])
  {
    [(SRAuthorizationStore *)[(SRAppHelperService *)self authStore] resetAllAuthorizationsForBundleId:id];
    v7 = 0;
  }

  else
  {
    v7 = [SRError errorWithCode:0];
  }

  v8 = *(reply + 2);

  v8(reply, v7);
}

- (void)authorizationRequestStatusForBundleId:(id)id sensors:(id)sensors reply:(id)reply
{
  if ([(SRAppHelperService *)self validateConnection:+[NSXPCConnection accessCategory:"currentConnection"], @"read"])
  {
    v9 = [-[SRAuthorizationStore readerAuthorizationValues](-[SRAppHelperService authStore](self "authStore")];
    v10 = +[NSSet setWithArray:](NSSet, "setWithArray:", [v9 allKeys]);
    v11 = [[NSMutableSet alloc] initWithSet:sensors];
    [v11 minusSet:v10];
    v12 = [v11 count];
    v13 = qword_1000086C0;
    if (os_log_type_enabled(qword_1000086C0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      idCopy = id;
      v18 = 2114;
      sensorsCopy = sensors;
      v20 = 1024;
      v21 = v12 != 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Should request for %{public}@ for %{public}@: %{BOOL}d", &v16, 0x1Cu);
      v13 = qword_1000086C0;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      idCopy = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "auth values: %{public}@", &v16, 0xCu);
    }

    (*(reply + 2))(reply, v12 != 0, 0);
  }

  else
  {
    v14 = [SRError errorWithCode:0];
    v15 = *(reply + 2);

    v15(reply, 1, v14);
  }
}

- (BOOL)validateConnection:(id)connection accessCategory:(id)category
{
  v6 = [connection valueForEntitlement:@"com.apple.SensorKitAppHelper.allow"];

  return [(SRAppHelperService *)self validateEntitlment:v6 accessCategory:category];
}

- (BOOL)validateEntitlment:(id)entitlment accessCategory:(id)category
{
  if (entitlment)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([entitlment containsObject:category])
    {
      return 1;
    }
  }

  v7 = qword_1000086C0;
  v8 = os_log_type_enabled(qword_1000086C0, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection does not have a valid entitlement", v9, 2u);
    return 0;
  }

  return result;
}

- (void)authorizationSnapshotWithReply:(id)reply
{
  selfCopy = self;
  if ([(SRAppHelperService *)self validateConnection:+[NSXPCConnection accessCategory:"currentConnection"], @"read"])
  {
    replyCopy = reply;
    v21 = +[NSMutableDictionary dictionary];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(SRAuthorizationStore *)[(SRAppHelperService *)selfCopy authStore] readerAuthorizationBundleIdValues];
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v19 = *v29;
      v20 = selfCopy;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          v6 = [-[SRAuthorizationStore readerAuthorizationValues](-[SRAppHelperService authStore](selfCopy "authStore")];
          v7 = [[NSMutableDictionary alloc] initWithDictionary:v6];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v25;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v25 != v10)
                {
                  objc_enumerationMutation(v6);
                }

                v12 = *(*(&v24 + 1) + 8 * j);
                v13 = objc_autoreleasePoolPush();
                v14 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v12), "legacyName"}];
                if (v14)
                {
                  [v7 setObject:objc_msgSend(v6 forKeyedSubscript:{"objectForKeyedSubscript:", v12), v14}];
                }

                objc_autoreleasePoolPop(v13);
              }

              v9 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v9);
          }

          [v21 setObject:v7 forKeyedSubscript:v23];

          selfCopy = v20;
        }

        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }

    replyCopy[2](replyCopy, [NSDictionary dictionaryWithDictionary:v21], 0);
  }

  else
  {
    v15 = [SRError errorWithCode:0];
    v16 = *(reply + 2);

    v16(reply, &__NSDictionary0__struct, v15);
  }
}

@end