@interface AKRemoteDeviceObserver
- (AKRemoteDeviceObserver)initWithQueue:(const queue *)a3 delegate:(const void *)a4;
- (id).cxx_construct;
- (void)_notifyAKDeviceListChanged:(id)a3;
- (void)dealloc;
@end

@implementation AKRemoteDeviceObserver

- (AKRemoteDeviceObserver)initWithQueue:(const queue *)a3 delegate:(const void *)a4
{
  fObj = a3->fObj.fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  ctu::OsLogContext::OsLogContext(v19, kCtLoggingSystemName, "ak.svc");
  v18.receiver = self;
  v18.super_class = AKRemoteDeviceObserver;
  v7 = [(AKRemoteDeviceObserver *)&v18 initWithQueue:&fObj logContext:v19];
  ctu::OsLogContext::~OsLogContext(v19);
  if (fObj)
  {
    dispatch_release(fObj);
  }

  if (v7)
  {
    v9 = *a4;
    v8 = *(a4 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->fDelegate.__cntrl_;
    v7->fDelegate.__ptr_ = v9;
    v7->fDelegate.__cntrl_ = v8;
    if (cntrl)
    {
      sub_100004A34(cntrl);
    }

    v11 = a3->fObj.fObj;
    if (v11)
    {
      dispatch_retain(v11);
    }

    v12 = v7->fQueue.fObj.fObj;
    v7->fQueue.fObj.fObj = v11;
    if (v12)
    {
      dispatch_release(v12);
    }

    v13 = +[NSDistributedNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"_notifyAKDeviceListChanged:" name:@"com.apple.authkit.trusted-device-list-changed" object:0];

    [(AKRemoteDeviceObserver *)v7 getLogContext];
    v14 = v17;
    ctu::OsLogContext::~OsLogContext(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AKRemoteDeviceObserver registered for AKDeviceListChangedNotification", v16, 2u);
    }
  }

  return v7;
}

- (void)_notifyAKDeviceListChanged:(id)a3
{
  [(AKRemoteDeviceObserver *)self getLogContext];
  v4 = v11;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Authkit remote devices change notification received", buf, 2u);
  }

  fObj = self->fQueue.fObj.fObj;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1011674A8;
  block[3] = &unk_101E2E110;
  block[4] = self;
  dispatch_async(fObj, block);
  v6 = dispatch_time(0, 10000000000);
  v7 = self->fQueue.fObj.fObj;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_101167550;
  v8[3] = &unk_101E2E110;
  v8[4] = self;
  dispatch_after(v6, v7, v8);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.authkit.trusted-device-list-changed" object:0];

  v4.receiver = self;
  v4.super_class = AKRemoteDeviceObserver;
  [(AKRemoteDeviceObserver *)&v4 dealloc];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end