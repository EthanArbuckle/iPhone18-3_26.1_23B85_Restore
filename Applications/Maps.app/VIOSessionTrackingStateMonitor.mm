@interface VIOSessionTrackingStateMonitor
- (VIOSessionTrackingStateMonitor)initWithStateManager:(id)a3 platformController:(id)a4;
- (void)dealloc;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
@end

@implementation VIOSessionTrackingStateMonitor

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v5 = a4;
  v6 = [v5 trackingState];
  v7 = [v5 trackingStateReason];

  v8 = sub_100F98410();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v6 >= 3)
    {
      v9 = [NSString stringWithFormat:@"%ld", v6];
    }

    else
    {
      v9 = off_10165F868[v6];
    }

    v10 = v9;
    if (v7 >= 5)
    {
      v11 = [NSString stringWithFormat:@"%ld", v7];
    }

    else
    {
      v11 = off_10165F880[v7];
    }

    *buf = 134349570;
    v15 = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Detected tracking state %@ with reason: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F98464;
  block[3] = &unk_10165FBC0;
  v13[1] = v6;
  objc_copyWeak(v13, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

- (void)dealloc
{
  v3 = sub_100F98410();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  v6 = [(VIOSessionMonitor *)self session];
  [v6 _removeObserver:self];

  v7.receiver = self;
  v7.super_class = VIOSessionTrackingStateMonitor;
  [(VIOSessionTrackingStateMonitor *)&v7 dealloc];
}

- (VIOSessionTrackingStateMonitor)initWithStateManager:(id)a3 platformController:(id)a4
{
  v10.receiver = self;
  v10.super_class = VIOSessionTrackingStateMonitor;
  v4 = [(VIOSessionMonitor *)&v10 initWithStateManager:a3 platformController:a4];
  if (v4)
  {
    v5 = sub_100F98410();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    v8 = [(VIOSessionMonitor *)v4 session];
    [v8 _addObserver:v4];
  }

  return v4;
}

@end