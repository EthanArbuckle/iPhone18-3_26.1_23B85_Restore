@interface NanoRoutePlanningState
- (NanoRoutePlanningState)initWithStateManager:(id)a3 isolationQueue:(id)a4;
- (NanoRoutePlanningStateManager)manager;
- (void)enterToState:(int64_t)a3 fromState:(int64_t)a4;
- (void)leaveToState:(int64_t)a3;
- (void)setActive:(BOOL)a3;
- (void)stop;
@end

@implementation NanoRoutePlanningState

- (NanoRoutePlanningStateManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)setActive:(BOOL)a3
{
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C1AE80;
  v4[3] = &unk_101661AE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(isolationQueue, v4);
}

- (void)stop
{
  if (self->_sessionState == 4)
  {
    v6 = v2;
    v7 = v3;
    if ([objc_opt_class() controlsDiskRouteStorage])
    {
      v4 = sub_100798A3C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will clear disk route storage", v5, 2u);
      }

      +[NanoRoutePlanningResponse clearDiskRouteStorage];
    }
  }
}

- (void)leaveToState:(int64_t)a3
{
  v5 = [(NanoRoutePlanningState *)self sessionState];
  self->_nextState = a3;
  v6 = sub_100798A3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v5 > 4)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = off_10164F5A8[v5];
    }

    v8 = v7;
    +[NSDate timeIntervalSinceReferenceDate];
    v10 = v9 - self->_timestampStarted;
    *buf = 138412546;
    v14 = v8;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Leaving '%@' state (active for %#.5lfs)", buf, 0x16u);
  }

  isolationQueue = self->_isolationQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C1B1E8;
  v12[3] = &unk_101661650;
  v12[4] = self;
  v12[5] = v5;
  dispatch_async(isolationQueue, v12);
}

- (void)enterToState:(int64_t)a3 fromState:(int64_t)a4
{
  self->_sessionState = a3;
  self->_previousState = a4;
  v6 = sub_100798A3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (a3 > 4)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = off_10164F5A8[a3];
    }

    v8 = v7;
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Entering '%@' state", buf, 0xCu);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  self->_timestampStarted = v9;
  isolationQueue = self->_isolationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C1B414;
  v11[3] = &unk_101661650;
  v11[4] = self;
  v11[5] = a3;
  dispatch_async(isolationQueue, v11);
}

- (NanoRoutePlanningState)initWithStateManager:(id)a3 isolationQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NanoRoutePlanningState;
  v8 = [(NanoRoutePlanningState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, v6);
    v9->_sessionState = -1;
    objc_storeStrong(&v9->_isolationQueue, a4);
  }

  return v9;
}

@end