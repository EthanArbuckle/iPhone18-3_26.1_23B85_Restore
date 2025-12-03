@interface ADSiriHeadphonesMonitor
- (id)_headGestureConfigurationForRoute:(id)route;
- (id)headGestureConfiguration;
- (void)_audioRouteDidChange:(id)change;
- (void)_fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:(id)address withCompletion:(id)completion;
- (void)_fetchWirelessSplitterSessionInfoAndStartObservingFromSourceWithCompletion:(id)completion;
- (void)_handleJSDiscoveryNotificationForDevice:(id)device;
- (void)_stopObservingInEarDetectionStateFromSource;
@end

@implementation ADSiriHeadphonesMonitor

- (id)headGestureConfiguration
{
  currentAudioRoute = [(AFSiriHeadphonesMonitor *)self currentAudioRoute];
  v4 = [(ADSiriHeadphonesMonitor *)self _headGestureConfigurationForRoute:currentAudioRoute];

  return v4;
}

- (id)_headGestureConfigurationForRoute:(id)route
{
  routeCopy = route;
  v4 = +[ADBluetoothManager sharedInstance];
  btAddress = [routeCopy btAddress];

  v6 = [v4 headGestureConfigurationForBTAddress:btAddress];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADSiriHeadphonesMonitor _headGestureConfigurationForRoute:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Bobble Configuration: %@", &v9, 0x16u);
  }

  return v6;
}

- (void)_audioRouteDidChange:(id)change
{
  changeCopy = change;
  btAddress = [changeCopy btAddress];

  v5 = changeCopy;
  if (btAddress)
  {
    v6 = [(ADSiriHeadphonesMonitor *)self _headGestureConfigurationForRoute:changeCopy];
    if ([v6 isSupported])
    {
      v7 = +[AFPreferences sharedPreferences];
      [v7 setStoredHeadGestureConfigurationForDevice:v6];
    }

    v5 = changeCopy;
  }
}

- (void)_stopObservingInEarDetectionStateFromSource
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v6 = [NSNumber numberWithUnsignedInteger:[(AFSiriHeadphonesMonitor *)self _observerID]];
    v7 = 136315394;
    v8 = "[ADSiriHeadphonesMonitor _stopObservingInEarDetectionStateFromSource]";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Stop observing IED States for observerID: %@", &v7, 0x16u);
  }

  v4 = +[ADBluetoothInEarDetectionStateObserver sharedObserver];
  [v4 stopObservingForObserverID:{-[AFSiriHeadphonesMonitor _observerID](self, "_observerID")}];
}

- (void)_handleJSDiscoveryNotificationForDevice:(id)device
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    deviceCopy = device;
    name = [deviceCopy name];
    address = [deviceCopy address];

    v9 = 136315650;
    v10 = "[ADSiriHeadphonesMonitor _handleJSDiscoveryNotificationForDevice:]";
    v11 = 2112;
    v12 = name;
    v13 = 2112;
    v14 = address;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Received AACP capabilities for %@(%@)", &v9, 0x20u);
  }
}

- (void)_fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:(id)address withCompletion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v8 = +[ADBluetoothManager sharedInstance];
  v9 = [v8 deviceWithAddress:addressCopy];

  if (v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003330F0;
    v15[3] = &unk_10051C298;
    v16 = completionCopy;
    [v9 getHeadphoneInEarDetectionState:v15];
  }

  else if (completionCopy)
  {
    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1803 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v13 = v11;
    v14 = [NSNumber numberWithUnsignedInteger:[(AFSiriHeadphonesMonitor *)self _observerID]];
    *buf = 136315650;
    v18 = "[ADSiriHeadphonesMonitor _fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:withCompletion:]";
    v19 = 2112;
    v20 = addressCopy;
    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Start observing IED States for %@ for observerID: %@", buf, 0x20u);
  }

  v12 = +[ADBluetoothInEarDetectionStateObserver sharedObserver];
  [v12 startObservingForBTAddress:addressCopy forObserverID:{-[AFSiriHeadphonesMonitor _observerID](self, "_observerID")}];
}

- (void)_fetchWirelessSplitterSessionInfoAndStartObservingFromSourceWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADBluetoothManager sharedInstance];
  wirelessSplitterSession = [v4 wirelessSplitterSession];

  if (wirelessSplitterSession)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100333238;
    v8[3] = &unk_10051D0B0;
    v9 = completionCopy;
    [wirelessSplitterSession getSessionInfo:v8];
  }

  else if (completionCopy)
  {
    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1800 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }

  v7 = +[ADBluetoothWirelessSplitterSessionObserver sharedWirelessSplitterSessionObserver];
  [v7 startObserving];
}

@end