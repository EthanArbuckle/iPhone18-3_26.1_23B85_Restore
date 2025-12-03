@interface SRCHSupportService
+ (void)initialize;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)validateConnection:(id)connection;
- (SRCHSupportService)initWithQueue:(id)queue;
- (SRCHSupportService)initWithQueue:(id)queue listener:(id)listener customCategories:(id)categories version:(id)version;
- (void)dealloc;
- (void)downloadDatabaseAssetIfNeeded:(id)needed;
- (void)fetchCustomCategoriesForBundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)fetchVersion:(id)version;
- (void)resume;
@end

@implementation SRCHSupportService

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100008770 = os_log_create("com.apple.SensorKit", "CHSupportService");
  }
}

- (SRCHSupportService)initWithQueue:(id)queue
{
  v5 = +[NSXPCListener serviceListener];
  v6 = objc_alloc_init(CHCustomCategories);
  v7 = objc_alloc_init(CHVersion);
  v8 = [(SRCHSupportService *)self initWithQueue:queue listener:v5 customCategories:v6 version:v7];

  return v8;
}

- (SRCHSupportService)initWithQueue:(id)queue listener:(id)listener customCategories:(id)categories version:(id)version
{
  v13.receiver = self;
  v13.super_class = SRCHSupportService;
  v10 = [(SRCHSupportService *)&v13 init];
  if (v10)
  {
    v10->_q = queue;
    listenerCopy = listener;
    v10->_listener = listenerCopy;
    [(NSXPCListener *)listenerCopy _setQueue:v10->_q];
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    v10->_customCategories = categories;
    v10->_version = version;
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];

  v3.receiver = self;
  v3.super_class = SRCHSupportService;
  [(SRCHSupportService *)&v3 dealloc];
}

- (BOOL)validateConnection:(id)connection
{
  v3 = [(SRCHSupportService *)self valueForEntitlement:@"com.apple.private.sensorkit.chSupportService.allow" connection:connection];
  if (v3 && (v4 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 BOOLValue] & 1) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = qword_100008770;
    v5 = os_log_type_enabled(qword_100008770, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Connection does not have a valid entitlement", v8, 2u);
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = qword_100008770;
  if (os_log_type_enabled(qword_100008770, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    serviceName = [listener serviceName];
    v11 = 2112;
    connectionCopy = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@ from %@", &v9, 0x16u);
  }

  [connection _setQueue:self->_q];
  [connection setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SRCHSupportServiceProtocol)}];
  [connection setExportedObject:self];
  [connection setInvalidationHandler:&stru_100004160];
  [connection resume];
  return 1;
}

- (void)resume
{
  listener = [(SRCHSupportService *)self listener];

  [(NSXPCListener *)listener resume];
}

- (void)fetchCustomCategoriesForBundleIdentifiers:(id)identifiers completion:(id)completion
{
  if ([(SRCHSupportService *)self validateConnection:+[NSXPCConnection currentConnection]])
  {
    customCategories = self->_customCategories;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001210;
    v10[3] = &unk_100004188;
    v10[4] = completion;
    [(CHCustomCategories *)customCategories categoriesForBundleIdSet:identifiers completion:v10];
  }

  else
  {
    v8 = [SRError errorWithCode:0];
    v9 = *(completion + 2);

    v9(completion, &__NSDictionary0__struct, v8);
  }
}

- (void)fetchVersion:(id)version
{
  if ([(SRCHSupportService *)self validateConnection:+[NSXPCConnection currentConnection]])
  {
    semanticVersion = [(CHVersion *)[(SRCHSupportService *)self version] semanticVersion];
    v6 = *(version + 2);
    versionCopy2 = version;
    v8 = 0;
  }

  else
  {
    v8 = [SRError errorWithCode:0];
    v6 = *(version + 2);
    semanticVersion = &stru_1000041B0;
    versionCopy2 = version;
  }

  v6(versionCopy2, semanticVersion, v8);
}

- (void)downloadDatabaseAssetIfNeeded:(id)needed
{
  [(SRCHSupportService *)self customCategories];
  v4 = objc_opt_class();
  v5 = qword_100008770;
  if (os_log_type_enabled(qword_100008770, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = NSStringFromClass(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Class is %{public}@", &v6, 0xCu);
  }

  [(objc_class *)v4 downloadDatabaseAssetIfNeeded];
  (*(needed + 2))(needed, 0);
}

@end