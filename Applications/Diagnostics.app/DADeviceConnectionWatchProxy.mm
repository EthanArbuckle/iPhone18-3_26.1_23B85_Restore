@interface DADeviceConnectionWatchProxy
- (DADeviceConnectionWatchProxy)initWithState:(id)a3 nanoDevice:(id)a4;
- (id)destination;
- (void)connect;
- (void)dealloc;
- (void)deviceDidBecomeActive:(id)a3;
- (void)deviceDidBecomeInactive:(id)a3;
- (void)end;
- (void)quickSwitchToNRDevice:(id)a3 completion:(id)a4;
- (void)start;
@end

@implementation DADeviceConnectionWatchProxy

- (DADeviceConnectionWatchProxy)initWithState:(id)a3 nanoDevice:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = DADeviceConnectionWatchProxy;
  v8 = [(DADeviceConnectionIDSProxy *)&v13 initWithState:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nanoDevice, a4);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"deviceDidBecomeActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v9 selector:"deviceDidBecomeInactive:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];
  }

  return v9;
}

- (id)destination
{
  objc_initWeak(&location, self);
  destination = self->_destination;
  if (!destination)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1000054D8;
    v17 = sub_1000054E8;
    v18 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = [(DADeviceConnectionIDSProxy *)self messenger];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000054F0;
    v9[3] = &unk_1001BC620;
    objc_copyWeak(&v12, &location);
    v11 = &v13;
    v6 = v4;
    v10 = v6;
    [v5 availableDestinationsWithCompletion:v9];

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(&self->_destination, v14[5]);

    objc_destroyWeak(&v12);
    _Block_object_dispose(&v13, 8);

    destination = self->_destination;
  }

  v7 = destination;
  objc_destroyWeak(&location);

  return v7;
}

- (void)connect
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getActivePairedDevice];

  v5 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000057A8;
    v14[3] = &unk_1001BC648;
    v14[4] = self;
    v9 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v14];
    v10 = [v9 firstObject];

    v4 = v10;
  }

  v11 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v12 = [v4 isEqual:v11];

  if (v12)
  {
    v13.receiver = self;
    v13.super_class = DADeviceConnectionWatchProxy;
    [(DADeviceConnectionIDSProxy *)&v13 connect];
  }
}

- (void)start
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000059E8;
  v16[3] = &unk_1001BC670;
  v16[4] = self;
  v3 = objc_retainBlock(v16);
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 getActivePairedDevice];

  v6 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v7 = [v6 valueForProperty:NRDevicePropertyIsAltAccount];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100005A2C;
    v15[3] = &unk_1001BC648;
    v15[4] = self;
    v10 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v15];
    v11 = [v10 firstObject];

    v5 = v11;
  }

  v12 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v13 = v8 | ~[v5 isEqual:v12];

  if (v13)
  {
    v14 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
    [(DADeviceConnectionWatchProxy *)self quickSwitchToNRDevice:v14 completion:v3];
  }

  else
  {
    (v3[2])(v3, 1);
  }
}

- (void)end
{
  v11.receiver = self;
  v11.super_class = DADeviceConnectionWatchProxy;
  [(DADeviceConnectionIDSProxy *)&v11 end];
  v3 = [(DADeviceConnectionWatchProxy *)self activeDeviceAssertion];

  if (v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DADeviceConnectionWatchProxy *)self activeDeviceAssertion];
      v6 = [v5 device];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating Active Device Assertion for Device: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = dispatch_time(0, 2000000000);
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005C38;
    block[3] = &unk_1001BC698;
    objc_copyWeak(&v10, buf);
    dispatch_after(v7, v8, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)quickSwitchToNRDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Switching to Watch: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005EFC;
  v12[3] = &unk_1001BC6E8;
  objc_copyWeak(&v15, buf);
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v9 setActivePairedDevice:v10 withActiveDeviceAssertionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)deviceDidBecomeActive:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v6 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(DADeviceConnectionIDSProxy *)self state];
    [v8 removeErrorCode:7];
  }
}

- (void)deviceDidBecomeInactive:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v6 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v11 = [(DADeviceConnectionIDSProxy *)self state];
    if ([v11 phase])
    {
      v8 = [(DADeviceConnectionIDSProxy *)self state];
      v9 = [v8 phase];

      if (v9 == 1)
      {
        return;
      }

      v10 = [(DADeviceConnectionIDSProxy *)self state];
      [v10 setPhase:1];

      v11 = [(DADeviceConnectionIDSProxy *)self state];
      [v11 addErrorCode:7 userInfo:0];
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DADeviceConnectionWatchProxy;
  [(DADeviceConnectionWatchProxy *)&v4 dealloc];
}

@end