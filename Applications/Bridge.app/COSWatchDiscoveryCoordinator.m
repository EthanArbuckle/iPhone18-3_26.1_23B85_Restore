@interface COSWatchDiscoveryCoordinator
- (BOOL)_shouldAllowBailoutForDetectingNetworkRelayWatches;
- (COSWatchDiscoveryCoordinatorDelegate)delegate;
- (id)_discoveredNetworkRelayWatch;
- (void)_checkForDiscoveredUnpairedWatches:(id)a3;
- (void)_nearbyAdvertisingWatchesFoundWithCompletion:(id)a3;
- (void)_refreshWatchDiscoveryTimer;
- (void)startDiscoveringWatchNearby;
- (void)stopDiscoveringWatchNearby;
@end

@implementation COSWatchDiscoveryCoordinator

- (void)startDiscoveringWatchNearby
{
  v3 = +[NRDeviceDiscoveryController sharedInstance];
  [v3 begin];

  [(COSWatchDiscoveryCoordinator *)self _refreshWatchDiscoveryTimer];
}

- (void)stopDiscoveringWatchNearby
{
  [(NSTimer *)self->_unpairedWatchDiscoveryTimer invalidate];
  unpairedWatchDiscoveryTimer = self->_unpairedWatchDiscoveryTimer;
  self->_unpairedWatchDiscoveryTimer = 0;
}

- (void)_refreshWatchDiscoveryTimer
{
  [(NSTimer *)self->_unpairedWatchDiscoveryTimer invalidate];
  v3 = [NSTimer timerWithTimeInterval:self target:"_checkForDiscoveredUnpairedWatches:" selector:0 userInfo:0 repeats:1.0];
  unpairedWatchDiscoveryTimer = self->_unpairedWatchDiscoveryTimer;
  self->_unpairedWatchDiscoveryTimer = v3;

  v5 = +[NSRunLoop mainRunLoop];
  [v5 addTimer:self->_unpairedWatchDiscoveryTimer forMode:NSRunLoopCommonModes];
}

- (void)_checkForDiscoveredUnpairedWatches:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003D8FC;
  v5[3] = &unk_100268260;
  objc_copyWeak(&v6, &location);
  [(COSWatchDiscoveryCoordinator *)self _nearbyAdvertisingWatchesFoundWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_nearbyAdvertisingWatchesFoundWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DB24;
  block[3] = &unk_100268FF0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldAllowBailoutForDetectingNetworkRelayWatches
{
  if (!_os_feature_enabled_impl())
  {
    v3 = +[NSDate date];
    v5 = [(COSWatchDiscoveryCoordinator *)self _discoveredNetworkRelayWatch];
    if (v5)
    {
      [v3 timeIntervalSinceDate:v5];
      v7 = v6;
      v8 = pbb_bridge_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7 <= 43200.0)
      {
        if (v9)
        {
          v14 = 138412290;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Allowing NetworkRelay bailout, last discovered NetworkRelay Watch: %@", &v14, 0xCu);
        }

        v4 = 1;
        goto LABEL_16;
      }

      if (v9)
      {
        v14 = 138412290;
        v15 = v5;
        v10 = "No need to bailout for NetworkRelay, discovered too long ago: %@.";
        v11 = v8;
        v12 = 12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
      }
    }

    else
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v10 = "No need to bailout for NetworkRelay, not discovered recently.";
        v11 = v8;
        v12 = 2;
        goto LABEL_11;
      }
    }

    v4 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NetworkRelay not enabled, no bailout needed", &v14, 2u);
  }

  v4 = 0;
LABEL_17:

  return v4;
}

- (id)_discoveredNetworkRelayWatch
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(VecchioWatchDetectedKey, VecchioWatchDetectedDomain, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:AppIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (COSWatchDiscoveryCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end