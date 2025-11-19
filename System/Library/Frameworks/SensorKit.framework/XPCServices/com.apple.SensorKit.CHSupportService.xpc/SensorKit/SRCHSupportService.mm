@interface SRCHSupportService
+ (void)initialize;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateConnection:(id)a3;
- (SRCHSupportService)initWithQueue:(id)a3;
- (SRCHSupportService)initWithQueue:(id)a3 listener:(id)a4 customCategories:(id)a5 version:(id)a6;
- (void)dealloc;
- (void)downloadDatabaseAssetIfNeeded:(id)a3;
- (void)fetchCustomCategoriesForBundleIdentifiers:(id)a3 completion:(id)a4;
- (void)fetchVersion:(id)a3;
- (void)resume;
@end

@implementation SRCHSupportService

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100008770 = os_log_create("com.apple.SensorKit", "CHSupportService");
  }
}

- (SRCHSupportService)initWithQueue:(id)a3
{
  v5 = +[NSXPCListener serviceListener];
  v6 = objc_alloc_init(CHCustomCategories);
  v7 = objc_alloc_init(CHVersion);
  v8 = [(SRCHSupportService *)self initWithQueue:a3 listener:v5 customCategories:v6 version:v7];

  return v8;
}

- (SRCHSupportService)initWithQueue:(id)a3 listener:(id)a4 customCategories:(id)a5 version:(id)a6
{
  v13.receiver = self;
  v13.super_class = SRCHSupportService;
  v10 = [(SRCHSupportService *)&v13 init];
  if (v10)
  {
    v10->_q = a3;
    v11 = a4;
    v10->_listener = v11;
    [(NSXPCListener *)v11 _setQueue:v10->_q];
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    v10->_customCategories = a5;
    v10->_version = a6;
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

- (BOOL)validateConnection:(id)a3
{
  v3 = [(SRCHSupportService *)self valueForEntitlement:@"com.apple.private.sensorkit.chSupportService.allow" connection:a3];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = qword_100008770;
  if (os_log_type_enabled(qword_100008770, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = [a3 serviceName];
    v11 = 2112;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a connection attempt on %@ from %@", &v9, 0x16u);
  }

  [a4 _setQueue:self->_q];
  [a4 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___SRCHSupportServiceProtocol)}];
  [a4 setExportedObject:self];
  [a4 setInvalidationHandler:&stru_100004160];
  [a4 resume];
  return 1;
}

- (void)resume
{
  v2 = [(SRCHSupportService *)self listener];

  [(NSXPCListener *)v2 resume];
}

- (void)fetchCustomCategoriesForBundleIdentifiers:(id)a3 completion:(id)a4
{
  if ([(SRCHSupportService *)self validateConnection:+[NSXPCConnection currentConnection]])
  {
    customCategories = self->_customCategories;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001210;
    v10[3] = &unk_100004188;
    v10[4] = a4;
    [(CHCustomCategories *)customCategories categoriesForBundleIdSet:a3 completion:v10];
  }

  else
  {
    v8 = [SRError errorWithCode:0];
    v9 = *(a4 + 2);

    v9(a4, &__NSDictionary0__struct, v8);
  }
}

- (void)fetchVersion:(id)a3
{
  if ([(SRCHSupportService *)self validateConnection:+[NSXPCConnection currentConnection]])
  {
    v5 = [(CHVersion *)[(SRCHSupportService *)self version] semanticVersion];
    v6 = *(a3 + 2);
    v7 = a3;
    v8 = 0;
  }

  else
  {
    v8 = [SRError errorWithCode:0];
    v6 = *(a3 + 2);
    v5 = &stru_1000041B0;
    v7 = a3;
  }

  v6(v7, v5, v8);
}

- (void)downloadDatabaseAssetIfNeeded:(id)a3
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
  (*(a3 + 2))(a3, 0);
}

@end