@interface COSRegistryDispatcher
- (COSRegistryDispatcher)initWithBecameReadyCompletion:(id)completion andTimeout:(double)timeout;
- (void)invalidate;
- (void)nanoRegistryBecameActive;
- (void)nanoRegistryStatusChanged:(id)changed;
@end

@implementation COSRegistryDispatcher

- (COSRegistryDispatcher)initWithBecameReadyCompletion:(id)completion andTimeout:(double)timeout
{
  completionCopy = completion;
  v27.receiver = self;
  v27.super_class = COSRegistryDispatcher;
  v7 = [(COSRegistryDispatcher *)&v27 init];
  if (v7)
  {
    v8 = [completionCopy copy];
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v10 = +[NRPairedDeviceRegistry sharedInstance];
    status = [v10 status];

    if (status == 2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011BE18;
      block[3] = &unk_1002682F0;
      v12 = &v26;
      v26 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v13 = pbb_bridge_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [NSNumber numberWithUnsignedInteger:status];
        *buf = 138412290;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) NR is not ready (State was %@). Waiting for NR...", buf, 0xCu);
      }

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v7 selector:"nanoRegistryStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

      v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v17 = *(v7 + 1);
      *(v7 + 1) = v16;

      v18 = *(v7 + 1);
      v19 = timeout * 1000000000.0;
      v20 = dispatch_time(0, v19);
      dispatch_source_set_timer(v18, v20, 0xFFFFFFFFFFFFFFFFLL, (v19 * 0.1 * 1000000000.0));
      v21 = *(v7 + 1);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10011BE9C;
      v23[3] = &unk_1002682F0;
      v12 = &v24;
      v24 = v7;
      dispatch_source_set_event_handler(v21, v23);
      dispatch_source_set_cancel_handler(*(v7 + 1), &stru_10026C5F0);
      dispatch_resume(*(v7 + 1));
    }
  }

  return v7;
}

- (void)nanoRegistryStatusChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:NRPairedDeviceRegistryStatusKey];

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) NR Status Changed to %@", &v8, 0xCu);
  }

  if (v5 && [v5 integerValue] == 2)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NRPairedDeviceRegistryStatusDidChange object:0];

    [(COSRegistryDispatcher *)self nanoRegistryBecameActive];
  }
}

- (void)nanoRegistryBecameActive
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  clientBlock = self->_clientBlock;
  if (clientBlock)
  {
    clientBlock[2](clientBlock, 0);
  }

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) NR became ready. Firing!", v7, 2u);
  }
}

- (void)invalidate
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NRPairedDeviceRegistryStatusDidChange object:0];

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) Invalidated!", v7, 2u);
  }
}

@end