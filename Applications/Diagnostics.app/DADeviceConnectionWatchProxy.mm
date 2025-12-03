@interface DADeviceConnectionWatchProxy
- (DADeviceConnectionWatchProxy)initWithState:(id)state nanoDevice:(id)device;
- (id)destination;
- (void)connect;
- (void)dealloc;
- (void)deviceDidBecomeActive:(id)active;
- (void)deviceDidBecomeInactive:(id)inactive;
- (void)end;
- (void)quickSwitchToNRDevice:(id)device completion:(id)completion;
- (void)start;
@end

@implementation DADeviceConnectionWatchProxy

- (DADeviceConnectionWatchProxy)initWithState:(id)state nanoDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = DADeviceConnectionWatchProxy;
  v8 = [(DADeviceConnectionIDSProxy *)&v13 initWithState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_nanoDevice, device);
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
    messenger = [(DADeviceConnectionIDSProxy *)self messenger];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000054F0;
    v9[3] = &unk_1001BC620;
    objc_copyWeak(&v12, &location);
    v11 = &v13;
    v6 = v4;
    v10 = v6;
    [messenger availableDestinationsWithCompletion:v9];

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
  getActivePairedDevice = [v3 getActivePairedDevice];

  nanoDevice = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v6 = [nanoDevice valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000057A8;
    v14[3] = &unk_1001BC648;
    v14[4] = self;
    v9 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v14];
    firstObject = [v9 firstObject];

    getActivePairedDevice = firstObject;
  }

  nanoDevice2 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v12 = [getActivePairedDevice isEqual:nanoDevice2];

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
  getActivePairedDevice = [v4 getActivePairedDevice];

  nanoDevice = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v7 = [nanoDevice valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100005A2C;
    v15[3] = &unk_1001BC648;
    v15[4] = self;
    v10 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v15];
    firstObject = [v10 firstObject];

    getActivePairedDevice = firstObject;
  }

  nanoDevice2 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v13 = bOOLValue | ~[getActivePairedDevice isEqual:nanoDevice2];

  if (v13)
  {
    nanoDevice3 = [(DADeviceConnectionWatchProxy *)self nanoDevice];
    [(DADeviceConnectionWatchProxy *)self quickSwitchToNRDevice:nanoDevice3 completion:v3];
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
  activeDeviceAssertion = [(DADeviceConnectionWatchProxy *)self activeDeviceAssertion];

  if (activeDeviceAssertion)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      activeDeviceAssertion2 = [(DADeviceConnectionWatchProxy *)self activeDeviceAssertion];
      device = [activeDeviceAssertion2 device];
      *buf = 138412290;
      v13 = device;
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

- (void)quickSwitchToNRDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = deviceCopy;
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
  v10 = deviceCopy;
  v13 = v10;
  v11 = completionCopy;
  v14 = v11;
  [v9 setActivePairedDevice:v10 withActiveDeviceAssertionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)deviceDidBecomeActive:(id)active
{
  userInfo = [active userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  nanoDevice = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v7 = [v5 isEqual:nanoDevice];

  if (v7)
  {
    state = [(DADeviceConnectionIDSProxy *)self state];
    [state removeErrorCode:7];
  }
}

- (void)deviceDidBecomeInactive:(id)inactive
{
  userInfo = [inactive userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  nanoDevice = [(DADeviceConnectionWatchProxy *)self nanoDevice];
  v7 = [v5 isEqual:nanoDevice];

  if (v7)
  {
    state = [(DADeviceConnectionIDSProxy *)self state];
    if ([state phase])
    {
      state2 = [(DADeviceConnectionIDSProxy *)self state];
      phase = [state2 phase];

      if (phase == 1)
      {
        return;
      }

      state3 = [(DADeviceConnectionIDSProxy *)self state];
      [state3 setPhase:1];

      state = [(DADeviceConnectionIDSProxy *)self state];
      [state addErrorCode:7 userInfo:0];
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