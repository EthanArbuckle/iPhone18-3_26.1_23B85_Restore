@interface SKUIOctaneBag
+ (id)shared;
- (SKUIOctaneBag)init;
- (id)_bagValueForKey:(id)a3 ofType:(unint64_t)a4;
- (int64_t)_activePort;
- (void)_fetchBag;
- (void)createSnapshotWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation SKUIOctaneBag

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FEA8;
  block[3] = &unk_1000517F8;
  block[4] = a1;
  if (qword_100069590 != -1)
  {
    dispatch_once(&qword_100069590, block);
  }

  v2 = qword_100069588;

  return v2;
}

- (SKUIOctaneBag)init
{
  v7.receiver = self;
  v7.super_class = SKUIOctaneBag;
  v2 = [(SKUIOctaneBag *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.StoreKit.UIService.OctaneBag.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FFD4;
  block[3] = &unk_100051148;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setData:self->_dictionary];
  v6 = +[NSDate distantFuture];
  [v5 setExpirationDate:v6];

  v7 = +[AMSProcessInfo currentProcess];
  [v5 setProcessInfo:v7];

  [v5 setProfile:@"appstored"];
  [v5 setProfileVersion:@"1"];
  v10 = 0;
  v8 = [v5 buildWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (int64_t)_activePort
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.storekit.configuration.xpc" options:4096];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneServiceProtocol];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v7 = self->_connection;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100020300;
    v16[3] = &unk_100051060;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v7 setInvalidationHandler:v16];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  location = 0;
  p_location = &location;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&stru_100051CF0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002034C;
  v11[3] = &unk_100051D18;
  v11[4] = &location;
  [v8 getActivePortWithCompletion:v11];

  v9 = p_location[3];
  _Block_object_dispose(&location, 8);
  return v9;
}

- (id)_bagValueForKey:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000204AC;
  v23 = sub_1000204BC;
  v24 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000204C4;
  v14 = &unk_100051D40;
  v15 = self;
  v17 = &v19;
  v8 = v6;
  v16 = v8;
  v18 = a4;
  dispatch_sync(dispatchQueue, &v11);
  v9 = [AMSBagValue frozenBagValueWithKey:v8 value:v20[5] valueType:a4, v11, v12, v13, v14, v15];

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)_fetchBag
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(SKUIOctaneBag *)self _activePort];
  v4 = v3;
  if (!self->_dictionary || v3 != self->_port)
  {
    if (v3)
    {
      self->_port = v3;
      v5 = dispatch_semaphore_create(0);
      v6 = [NSString stringWithFormat:@"http://localhost:%ld/WebObjects/MZInit.woa/wa/initiateSession", v4];
      v7 = [NSURL URLWithString:v6];

      v8 = [NSURLRequest requestWithURL:v7 cachePolicy:4 timeoutInterval:10.0];
      objc_initWeak(&location, self);
      v9 = +[NSURLSession sharedSession];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000208AC;
      v12[3] = &unk_100051D68;
      objc_copyWeak(&v14, &location);
      v10 = v5;
      v13 = v10;
      v11 = [v9 dataTaskWithRequest:v8 completionHandler:v12];

      [v11 resume];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002C6AC();
    }
  }
}

@end