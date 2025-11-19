@interface BluetoothController
+ (id)sharedInstance;
- (BOOL)tetheringConnected;
- (BluetoothController)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)startWatchingForDevices;
- (void)stopWatchingForDevices;
@end

@implementation BluetoothController

- (BluetoothController)init
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v11 = dispatch_queue_create("CT.DATA.BTClient", v3);
  ctu::OsLogContext::OsLogContext(v10, kCtLoggingSystemName, "DATA.BluetoothController");
  v9.receiver = self;
  v9.super_class = BluetoothController;
  v4 = [(BluetoothController *)&v9 initWithQueue:&v11 logContext:v10];
  ctu::OsLogContext::~OsLogContext(v10);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v4)
  {
    v4->_discovery = 0;
    v4->_tetheringConnected = 0;
    [(BluetoothController *)v4 getLogContext];
    v5 = v8;
    ctu::OsLogContext::~OsLogContext(v7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "init", v7, 2u);
    }
  }

  return v4;
}

+ (id)sharedInstance
{
  if ((atomic_load_explicit(&qword_101FCADC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCADC8))
  {
    qword_101FCADC0 = objc_alloc_init(BluetoothController);
    __cxa_guard_release(&qword_101FCADC8);
  }

  return qword_101FCADC0;
}

- (void)dealloc
{
  if (self)
  {
    [(BluetoothController *)self getLogContext];
    v3 = v6;
  }

  else
  {
    v3 = 0;
    *buf = 0;
    v6 = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc", buf, 2u);
  }

  [(BluetoothController *)self stopWatchingForDevices];
  v4.receiver = self;
  v4.super_class = BluetoothController;
  [(BluetoothController *)&v4 dealloc];
}

- (void)startWatchingForDevices
{
  if (!self->_discovery)
  {
    v3 = objc_alloc_init(CBDiscovery);
    self->_discovery = v3;
    [(CBDiscovery *)v3 setDiscoveryFlags:0x200000];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1015A26BC;
    v11[3] = &unk_101E97468;
    v11[4] = self;
    [(BluetoothController *)self getQueue];
    [(CBDiscovery *)self->_discovery setDispatchQueue:buf];
    if (buf)
    {
      dispatch_release(buf);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1015A28DC;
    v10[3] = &unk_101F50D18;
    v10[4] = self;
    v10[5] = v11;
    [(CBDiscovery *)self->_discovery setDeviceFoundHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1015A2A9C;
    v9[3] = &unk_101F50D18;
    v9[4] = self;
    v9[5] = v11;
    [(CBDiscovery *)self->_discovery setDeviceLostHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1015A2CFC;
    v8[3] = &unk_101E97468;
    v8[4] = self;
    [(CBDiscovery *)self->_discovery setInvalidationHandler:v8];
    [(BluetoothController *)self getLogContext];
    v4 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      discovery = self->_discovery;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = discovery;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "start: %{public}@", &buf, 0xCu);
    }

    v6 = self->_discovery;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1015A2D80;
    v7[3] = &unk_101EA47E0;
    v7[4] = self;
    [(CBDiscovery *)v6 activateWithCompletion:v7];
  }
}

- (void)stopWatchingForDevices
{
  discovery = self->_discovery;
  if (discovery)
  {
    [(CBDiscovery *)discovery invalidate];

    self->_discovery = 0;
  }
}

- (BOOL)tetheringConnected
{
  pthread_mutex_lock(&stru_101FB9CA8);
  LOBYTE(self) = self->_tetheringConnected;
  pthread_mutex_unlock(&stru_101FB9CA8);
  return self;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 4) = 0;
  *(self + 3) = self + 32;
  return self;
}

@end