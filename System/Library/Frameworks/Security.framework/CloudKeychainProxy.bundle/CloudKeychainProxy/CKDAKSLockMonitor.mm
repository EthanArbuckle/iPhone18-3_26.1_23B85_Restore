@interface CKDAKSLockMonitor
+ (id)monitor;
- (CKDAKSLockMonitor)init;
- (CKDLockListener)listener;
- (void)_onqueueRecheck;
- (void)connectTo:(id)a3;
- (void)handleNotification:(const char *)a3;
- (void)notifyListener;
- (void)recheck;
@end

@implementation CKDAKSLockMonitor

- (void)recheck
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012F0;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onqueueRecheck
{
  dispatch_assert_queue_V2(self->_queue);
  cf = 0;
  *buf = -1431655766;
  lock_state = aks_get_lock_state();
  if (sub_100001278(lock_state, &cf, v4, v5, v6, v7, v8, v9, lock_state))
  {
    v11 = buf[0] & 1;
  }

  else
  {
    v10 = sub_10000AE54("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = cf;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Got error querying lock state: %@", buf, 0x16u);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = 1;
  }

  v12 = [(CKDAKSLockMonitor *)self locked];
  self->_locked = v11;
  if (![(CKDAKSLockMonitor *)self locked])
  {
    self->_unlockedSinceBoot = 1;
  }

  if (v12 != [(CKDAKSLockMonitor *)self locked])
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000013D0;
    block[3] = &unk_100018D18;
    block[4] = self;
    dispatch_async(v13, block);
  }
}

- (CKDLockListener)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

- (void)connectTo:(id)a3
{
  objc_storeWeak(&self->_listener, a3);

  [(CKDAKSLockMonitor *)self notifyListener];
}

- (void)notifyListener
{
  v3 = [(CKDAKSLockMonitor *)self listener];
  if (v3)
  {
    v4 = v3;
    if ([(CKDAKSLockMonitor *)self locked])
    {
      [v4 locked];
    }

    else
    {
      [v4 unlocked];
    }

    v3 = v4;
  }
}

- (void)handleNotification:(const char *)a3
{
  if (!strcmp(a3, "com.apple.mobile.keybagd.lock_status"))
  {

    [(CKDAKSLockMonitor *)self recheck];
  }
}

- (CKDAKSLockMonitor)init
{
  v12.receiver = self;
  v12.super_class = CKDAKSLockMonitor;
  v2 = [(CKDAKSLockMonitor *)&v12 init];
  if (v2)
  {
    v3 = +[XPCNotificationDispatcher dispatcher];
    v4 = dispatch_queue_create("CKDAKSLockMonitor", 0);
    v5 = *(v2 + 5);
    *(v2 + 5) = v4;

    *(v2 + 4) = 256;
    out_token = 0;
    objc_initWeak(&location, v2);
    v6 = *(v2 + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000108C;
    handler[3] = &unk_1000187E8;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v6, handler);
    [v2 recheck];
    [v3 addListener:v2];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)monitor
{
  v2 = objc_alloc_init(CKDAKSLockMonitor);

  return v2;
}

@end