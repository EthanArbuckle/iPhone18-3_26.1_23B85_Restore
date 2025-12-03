@interface VLFSessionMonitor
- (VLFSessionMonitor)initWithObserver:(id)observer;
- (VLFSessionMonitorObserver)observer;
- (void)setState:(int64_t)state;
@end

@implementation VLFSessionMonitor

- (VLFSessionMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    if (qword_10195CA60 != -1)
    {
      dispatch_once(&qword_10195CA60, &stru_1016220A8);
    }

    v5 = qword_10195CA58;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"Hide";
      if (state == 1)
      {
        v9 = @"EnablePuck";
      }

      if (state == 2)
      {
        v9 = @"EnablePuckAndBanner";
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: updating state: %@", &v11, 0x16u);
    }

    self->_state = state;
    observer = [(VLFSessionMonitor *)self observer];
    [observer monitor:self didChangeState:{-[VLFSessionMonitor state](self, "state")}];
  }
}

- (VLFSessionMonitor)initWithObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "[VLFSessionMonitor initWithObserver:]";
      v14 = 2080;
      v15 = "VLFSessionMonitor.m";
      v16 = 1024;
      v17 = 23;
      v18 = 2080;
      v19 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VLFSessionMonitor;
  v5 = [(VLFSessionMonitor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
  }

  return v6;
}

@end