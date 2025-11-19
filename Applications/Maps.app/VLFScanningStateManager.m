@interface VLFScanningStateManager
- (VLFScanningStateManager)initWithSession:(id)a3 delegate:(id)a4;
- (VLFScanningStateManagerDelegate)delegate;
- (void)_createMonitors;
- (void)_recalculateState;
- (void)_start;
- (void)scanningStateMonitor:(id)a3 didChangeState:(int64_t)a4;
- (void)setCurrentState:(int64_t)a3;
@end

@implementation VLFScanningStateManager

- (VLFScanningStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scanningStateMonitor:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "[VLFScanningStateManager scanningStateMonitor:didChangeState:]";
        v20 = 2080;
        v21 = "VLFScanningStateManager.m";
        v22 = 1024;
        v23 = 147;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
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
  }

  v10 = [(VLFScanningStateManager *)self activity:0];
  os_activity_scope_enter(v10, &v17);

  v11 = sub_100980688();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 2) > 3)
    {
      v12 = @"VLFScanningStateInitializing";
    }

    else
    {
      v12 = *(&off_1016303D0 + a4 - 2);
    }

    *buf = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ changed its state to %@", buf, 0x16u);
  }

  if ([(VLFScanningStateManager *)self currentState]== 1)
  {
    v13 = sub_100980688();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "We haven't finished initializing yet; delaying state update", buf, 2u);
    }
  }

  else
  {
    [(VLFScanningStateManager *)self _recalculateState];
  }

  os_activity_scope_leave(&v17);
}

- (void)setCurrentState:(int64_t)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *state = 136316418;
        *&state[4] = "[VLFScanningStateManager setCurrentState:]";
        *&state[12] = 2080;
        *&state[14] = "VLFScanningStateManager.m";
        v19 = 1024;
        v20 = 128;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", state, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          *state = 138412290;
          *&state[4] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", state, 0xCu);
        }
      }
    }
  }

  if (self->_currentState != a3)
  {
    *state = 0;
    *&state[8] = 0;
    v8 = [(VLFScanningStateManager *)self activity];
    os_activity_scope_enter(v8, state);

    self->_currentState = a3;
    v9 = sub_100980688();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_currentState - 2;
      if (v10 > 3)
      {
        v11 = @"VLFScanningStateInitializing";
      }

      else
      {
        v11 = *(&off_1016303D0 + v10);
      }

      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Changing state to: %@", &v16, 0xCu);
    }

    v12 = [(VLFScanningStateManager *)self delegate];
    [v12 scanningStateManager:self didChangeState:self->_currentState];

    os_activity_scope_leave(state);
  }
}

- (void)_recalculateState
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *state = 136316418;
        *&state[4] = "[VLFScanningStateManager _recalculateState]";
        *&state[12] = 2080;
        *&state[14] = "VLFScanningStateManager.m";
        v22 = 1024;
        v23 = 110;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", state, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          *state = 138412290;
          *&state[4] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", state, 0xCu);
        }
      }
    }
  }

  *state = 0;
  *&state[8] = 0;
  v6 = [(VLFScanningStateManager *)self activity];
  os_activity_scope_enter(v6, state);

  v7 = [(VLFScanningStateManager *)self cameraMotionMonitor];
  if (v7)
  {
    v8 = [(VLFScanningStateManager *)self cameraMotionMonitor];
    v9 = [v8 currentState] == 2;

    if (!v9)
    {
      v15 = sub_100980688();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Camera motion monitor detected device is moving too fast; updating state", v20, 2u);
      }

      v14 = [(VLFScanningStateManager *)self cameraMotionMonitor];
      -[VLFScanningStateManager setCurrentState:](self, "setCurrentState:", [v14 currentState]);
      goto LABEL_18;
    }
  }

  v10 = [(VLFScanningStateManager *)self cameraPitchMonitor];
  if ([v10 currentState] == 5)
  {

LABEL_12:
    v13 = sub_100980688();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Camera pitch monitor detected device is tilted too much; updating state", v20, 2u);
    }

    v14 = [(VLFScanningStateManager *)self cameraPitchMonitor];
    -[VLFScanningStateManager setCurrentState:](self, "setCurrentState:", [v14 currentState]);
LABEL_18:

    goto LABEL_19;
  }

  v11 = [(VLFScanningStateManager *)self cameraPitchMonitor];
  v12 = [v11 currentState] == 4;

  if (v12)
  {
    goto LABEL_12;
  }

  v16 = sub_100980688();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "None of the monitors detected anything; updating state", v20, 2u);
  }

  [(VLFScanningStateManager *)self setCurrentState:2];
LABEL_19:
  os_activity_scope_leave(state);
}

- (void)_start
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = [(VLFScanningStateManager *)self activity];
  os_activity_scope_enter(v3, &state);

  GEOConfigGetDouble();
  v5 = v4;
  v6 = sub_100980688();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5 <= 0.0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initialization delay is 0 seconds; going straight to .Scanning state", buf, 2u);
    }

    [(VLFScanningStateManager *)self setCurrentState:2];
    [(VLFScanningStateManager *)self _recalculateState];
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting initializing timer with delay %f", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = &_dispatch_main_q;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100980FC8;
    v10[3] = &unk_1016616E8;
    objc_copyWeak(&v11, buf);
    v9 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v10 block:v5];
    [(VLFScanningStateManager *)self setInitializingTimer:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  os_activity_scope_leave(&state);
}

- (void)_createMonitors
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = [(VLFScanningStateManager *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"VLFSessionScanningEnableCameraMotionMonitorKey"];

  v6 = sub_100980688();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Creating camera motion monitor", v14, 2u);
    }

    v8 = [VLFScanningStateCameraMotionMonitor alloc];
    v6 = [(VLFScanningStateManager *)self session];
    v9 = [(VLFScanningStateMonitor *)v8 initWithDelegate:self session:v6];
    [(VLFScanningStateManager *)self setCameraMotionMonitor:v9];
  }

  else if (v7)
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not creating camera motion monitor", v14, 2u);
  }

  v10 = sub_100980688();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Creating camera pitch monitor", v14, 2u);
  }

  v11 = [VLFScanningStateCameraPitchMonitor alloc];
  v12 = [(VLFScanningStateManager *)self session];
  v13 = [(VLFScanningStateCameraPitchMonitor *)v11 initWithDelegate:self session:v12];
  [(VLFScanningStateManager *)self setCameraPitchMonitor:v13];

  os_activity_scope_leave(&state);
}

- (VLFScanningStateManager)initWithSession:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *state = 136315906;
      *&state[4] = "[VLFScanningStateManager initWithSession:delegate:]";
      *&state[12] = 2080;
      *&state[14] = "VLFScanningStateManager.m";
      v23 = 1024;
      v24 = 46;
      v25 = 2080;
      v26 = "session != nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", state, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        *state = 138412290;
        *&state[4] = v15;
        v16 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", state, 0xCu);
      }
    }
  }

  if (!v8)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *state = 136315906;
      *&state[4] = "[VLFScanningStateManager initWithSession:delegate:]";
      *&state[12] = 2080;
      *&state[14] = "VLFScanningStateManager.m";
      v23 = 1024;
      v24 = 47;
      v25 = 2080;
      v26 = "delegate != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", state, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *state = 138412290;
        *&state[4] = v19;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", state, 0xCu);
      }
    }
  }

  v21.receiver = self;
  v21.super_class = VLFScanningStateManager;
  v9 = [(VLFScanningStateManager *)&v21 init];
  if (v9)
  {
    v10 = _os_activity_create(&_mh_execute_header, "Visual Localization", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    [(VLFScanningStateManager *)v9 setActivity:v10];

    *state = 0;
    *&state[8] = 0;
    v11 = [(VLFScanningStateManager *)v9 activity];
    os_activity_scope_enter(v11, state);

    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v9->_session, a3);
    v9->_currentState = 1;
    [(VLFScanningStateManager *)v9 _createMonitors];
    [(VLFScanningStateManager *)v9 _start];
    os_activity_scope_leave(state);
  }

  return v9;
}

@end