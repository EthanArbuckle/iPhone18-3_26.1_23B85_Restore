@interface COSProfileInstallDeviceSwitchTracker
+ (id)selectDevice:(id)device currentDevice:(id)currentDevice completionBlock:(id)block;
- (void)_cancelConnectionTimeout;
- (void)_connectionFinishedWithSuccess:(BOOL)success;
- (void)connectToDevice;
- (void)didBTConnectDevice:(id)device;
- (void)didIDSConnectDevice:(id)device;
- (void)didUpdateAsDisconnectedDevice:(id)device;
- (void)rollback;
@end

@implementation COSProfileInstallDeviceSwitchTracker

+ (id)selectDevice:(id)device currentDevice:(id)currentDevice completionBlock:(id)block
{
  deviceCopy = device;
  currentDeviceCopy = currentDevice;
  blockCopy = block;
  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446722;
    v14 = "+[COSProfileInstallDeviceSwitchTracker selectDevice:currentDevice:completionBlock:]";
    v15 = 2112;
    v16 = deviceCopy;
    v17 = 2112;
    v18 = currentDeviceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: selected device: %@; current device: %@", &v13, 0x20u);
  }

  v11 = objc_alloc_init(COSProfileInstallDeviceSwitchTracker);
  [(COSProfileInstallDeviceSwitchTracker *)v11 setSwitchToDevice:deviceCopy];
  [(COSProfileInstallDeviceSwitchTracker *)v11 setCurrentActiveDevice:currentDeviceCopy];
  [(COSProfileInstallDeviceSwitchTracker *)v11 setBlock:blockCopy];

  return v11;
}

- (void)rollback
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    switchToDevice = self->_switchToDevice;
    currentActiveDevice = self->_currentActiveDevice;
    v8 = 136315650;
    v9 = "[COSProfileInstallDeviceSwitchTracker rollback]";
    v10 = 2112;
    v11 = switchToDevice;
    v12 = 2112;
    v13 = currentActiveDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Canceling switch to %@. Switching back to %@", &v8, 0x20u);
  }

  [(COSProfileInstallDeviceSwitchTracker *)self _cancelConnectionTimeout];
  connectionTracker = self->_connectionTracker;
  self->_connectionTracker = 0;

  v7 = +[UIApplication sharedApplication];
  [v7 setActiveWatch:self->_currentActiveDevice startedBlock:0 completionBlock:0];
}

- (void)connectToDevice
{
  objc_initWeak(&location, self);
  v3 = [(NRDevice *)self->_switchToDevice valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];
  connectionTracker = self->_connectionTracker;
  if (bOOLValue)
  {
    if (!connectionTracker)
    {
      v6 = pbb_bridge_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating connection tracker.", buf, 2u);
      }

      v7 = [[BPSTinkerConnectionTracker alloc] initWithDevice:self->_switchToDevice];
      v8 = self->_connectionTracker;
      self->_connectionTracker = v7;

      [(BPSTinkerConnectionTracker *)self->_connectionTracker setDelegate:self];
    }

    if (!self->_tinkerConnectionTimeout)
    {
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v10 = dispatch_time(0, 0xDF8476000);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100085FE8;
      handler[3] = &unk_100269DD0;
      handler[4] = self;
      objc_copyWeak(&v21, &location);
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(v9);
      tinkerConnectionTimeout = self->_tinkerConnectionTimeout;
      self->_tinkerConnectionTimeout = v9;
      v12 = v9;

      objc_destroyWeak(&v21);
    }

    [(BPSTinkerConnectionTracker *)self->_connectionTracker setSelectedDevice:self->_switchToDevice];
  }

  else
  {
    self->_connectionTracker = 0;
  }

  v13 = pbb_bridge_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    switchToDevice = self->_switchToDevice;
    *buf = 136446466;
    v24 = "[COSProfileInstallDeviceSwitchTracker connectToDevice]";
    v25 = 2112;
    v26 = switchToDevice;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Connecting to %@", buf, 0x16u);
  }

  v15 = +[UIApplication sharedApplication];
  v16 = self->_switchToDevice;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008614C;
  v19[3] = &unk_100269800;
  v19[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008620C;
  v17[3] = &unk_10026A0A8;
  objc_copyWeak(&v18, &location);
  v17[4] = self;
  [v15 setActiveWatch:v16 startedBlock:v19 completionBlock:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_cancelConnectionTimeout
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000863B4;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_connectionFinishedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (successCopy)
    {
      v6 = @"YES";
    }

    *buf = 136446466;
    v10 = "[COSProfileInstallDeviceSwitchTracker _connectionFinishedWithSuccess:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: (%@)", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000865B8;
  v7[3] = &unk_1002693C0;
  v7[4] = self;
  v8 = successCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)didIDSConnectDevice:(id)device
{
  deviceCopy = device;
  connectionTracker = self->_connectionTracker;
  self->_connectionTracker = 0;

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v8 = 136315394;
    v9 = "[COSProfileInstallDeviceSwitchTracker didIDSConnectDevice:]";
    v10 = 2112;
    v11 = pairingID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - %@", &v8, 0x16u);
  }

  [(COSProfileInstallDeviceSwitchTracker *)self _connectionFinishedWithSuccess:1];
}

- (void)didBTConnectDevice:(id)device
{
  deviceCopy = device;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v6 = 136315394;
    v7 = "[COSProfileInstallDeviceSwitchTracker didBTConnectDevice:]";
    v8 = 2112;
    v9 = pairingID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v6, 0x16u);
  }
}

- (void)didUpdateAsDisconnectedDevice:(id)device
{
  deviceCopy = device;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v6 = 136315394;
    v7 = "[COSProfileInstallDeviceSwitchTracker didUpdateAsDisconnectedDevice:]";
    v8 = 2112;
    v9 = pairingID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v6, 0x16u);
  }
}

@end