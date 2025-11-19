@interface VLFScanningStateMonitor
- (VLFScanningStateMonitor)initWithDelegate:(id)a3 session:(id)a4;
- (VLFScanningStateMonitorDelegate)delegate;
- (void)dealloc;
- (void)setCurrentState:(int64_t)a3;
@end

@implementation VLFScanningStateMonitor

- (VLFScanningStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCurrentState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    if (qword_10195E3C8 != -1)
    {
      dispatch_once(&qword_10195E3C8, &stru_101636E48);
    }

    v4 = qword_10195E3C0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = v6;
      v8 = self->_currentState - 2;
      if (v8 > 3)
      {
        v9 = @"VLFScanningStateInitializing";
      }

      else
      {
        v9 = *(&off_101636E68 + v8);
      }

      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ changing state to: %@", &v11, 0x16u);
    }

    v10 = [(VLFScanningStateMonitor *)self delegate];
    [v10 scanningStateMonitor:self didChangeState:self->_currentState];
  }
}

- (void)dealloc
{
  [(ARSession *)self->_session _removeObserver:self];
  v3.receiver = self;
  v3.super_class = VLFScanningStateMonitor;
  [(VLFScanningStateMonitor *)&v3 dealloc];
}

- (VLFScanningStateMonitor)initWithDelegate:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[VLFScanningStateMonitor initWithDelegate:session:]";
      v20 = 2080;
      v21 = "VLFScanningStateMonitor.m";
      v22 = 1024;
      v23 = 30;
      v24 = 2080;
      v25 = "delegate != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[VLFScanningStateMonitor initWithDelegate:session:]";
      v20 = 2080;
      v21 = "VLFScanningStateMonitor.m";
      v22 = 1024;
      v23 = 31;
      v24 = 2080;
      v25 = "session != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = VLFScanningStateMonitor;
  v8 = [(VLFScanningStateMonitor *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_currentState = 1;
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_session, a4);
    [(ARSession *)v9->_session _addObserver:v9];
  }

  return v9;
}

@end