@interface MapsPocketStateProvider
- (MapsPocketStateProvider)initWithDelegate:(id)a3;
- (void)_enqueueNewState:(int64_t)a3;
- (void)_fireStateUpdate:(int64_t)a3;
- (void)dealloc;
- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4;
@end

@implementation MapsPocketStateProvider

- (void)_fireStateUpdate:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdatePocketStateType:a3];

  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)_enqueueNewState:(int64_t)a3
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100BF9C54;
  v8[3] = &unk_10164D798;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:10.0];
  v7 = self->_updateTimer;
  self->_updateTimer = v6;

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4
{
  v6 = a3;
  if (qword_10195EAC0 != -1)
  {
    dispatch_once(&qword_10195EAC0, &stru_10164D7B8);
  }

  v7 = qword_10195EAB8;
  if (os_log_type_enabled(qword_10195EAB8, OS_LOG_TYPE_INFO))
  {
    if (a4 > 4)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = *(&off_10164D7D8 + a4);
    }

    *buf = 136315906;
    v13 = "[MapsPocketStateProvider pocketStateManager:didUpdateState:]";
    v14 = 2114;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    v18 = 2114;
    v19 = v8;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s, manager: %{public}@ pocket state change: %ld (%{public}@)", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BF9E58;
  v10[3] = &unk_10165FBC0;
  objc_copyWeak(v11, buf);
  v11[1] = a4;
  dispatch_async(&_dispatch_main_q, v10);
  objc_destroyWeak(v11);
  objc_destroyWeak(buf);
}

- (void)dealloc
{
  [(CMPocketStateManager *)self->_manager setDelegate:0];
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;

  v4.receiver = self;
  v4.super_class = MapsPocketStateProvider;
  [(MapsPocketStateProvider *)&v4 dealloc];
}

- (MapsPocketStateProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MapsPocketStateProvider;
  v5 = [(MapsPocketStateProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    if (+[CMPocketStateManager isPocketStateAvailable])
    {
      v7 = objc_opt_new();
      manager = v6->_manager;
      v6->_manager = v7;

      [(CMPocketStateManager *)v6->_manager setDelegate:v6];
    }
  }

  return v6;
}

@end