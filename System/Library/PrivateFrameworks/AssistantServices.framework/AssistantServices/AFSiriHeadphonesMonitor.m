@interface AFSiriHeadphonesMonitor
+ (id)sharedMonitor;
- (AFSiriAudioRoute)currentAudioRoute;
- (id)_init;
- (id)_settingsConnection;
- (id)discoveryNotificationAssertion;
- (unint64_t)_observerID;
- (void)_audioRouteDidChange:(id)a3;
- (void)_broadcastInEarDetectionStateChangesFrom:(id)a3 to:(id)a4;
- (void)_fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:(id)a3 withCompletion:(id)a4;
- (void)_fetchInitialState;
- (void)_fetchWirelessSplitterSessionInfoAndStartObservingFromSourceWithCompletion:(id)a3;
- (void)_handleJSDiscoveryNotificationForDevice:(id)a3;
- (void)_postJSDiscoveryNotificationForBTDeviceWithInfo:(id)a3 scheduled:(BOOL)a4;
- (void)_recomputePrivateSessionStateAndBroadcast:(BOOL)a3;
- (void)_settingsConnectionDidDisconnect;
- (void)_stopObservingInEarDetectionStateFromSource;
- (void)_updateAnnounceNotificationsOnHearingAidSupportedStatus;
- (void)_updateAudioRouteFromRoute:(id)a3 toRoute:(id)a4 andBroadcast:(BOOL)a5;
- (void)_updateInEarDetectionStateAndObserve;
- (void)_updateWirelessSplitterSessionInfoAndObserve;
- (void)accesoryAACPCapabilitiesReceived:(id)a3;
- (void)addDelegate:(id)a3;
- (void)currentAudioRouteDidChangeFrom:(id)a3 to:(id)a4;
- (void)fetchInEarDetctionStateForBTAddress:(id)a3 withCompletion:(id)a4;
- (void)fetchPrivateSessionStateWithCompletion:(id)a3;
- (void)invalidateDiscoveryNotificationAssertion:(id)a3;
- (void)mockHeadGesture:(int64_t)a3 schedule:(BOOL)a4 withCompletion:(id)a5;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)registerInternalGestureTestingHandler:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)startObservingBluetoothConnections;
@end

@implementation AFSiriHeadphonesMonitor

+ (id)sharedMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001216BC;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_1005901B0 != -1)
  {
    dispatch_once(&qword_1005901B0, block);
  }

  v2 = qword_1005901B8;

  return v2;
}

- (AFSiriAudioRoute)currentAudioRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10011EC54;
  v10 = sub_10011EC64;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DEB4;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)_observerID
{
  v2 = [NSNumber numberWithUnsignedLongLong:self];
  v3 = [v2 hash];

  return v3;
}

- (void)_updateInEarDetectionStateAndObserve
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000127F4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)mockHeadGesture:(int64_t)a3 schedule:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011CC98;
  v11[3] = &unk_100514BD8;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)registerInternalGestureTestingHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011D020;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_postJSDiscoveryNotificationForBTDeviceWithInfo:(id)a3 scheduled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_btQueue);
  v7 = [v6 address];
  v8 = [(AFSiriHeadphonesMonitor *)self currentAudioRoute];
  v9 = [v8 btAddress];

  if (v4 && ([v7 isEqualToString:v9] & 1) == 0)
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = v13;
      v16 = [v6 name];
      *buf = 136315650;
      v21 = "[AFSiriHeadphonesMonitor _postJSDiscoveryNotificationForBTDeviceWithInfo:scheduled:]";
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Scheduled JS Discovery notification for %@(%@)", buf, 0x20u);
    }

    v14 = [(NSMutableDictionary *)self->_devicesScheduledForJSNotification objectForKey:v7];

    if (!v14)
    {
      [(NSMutableDictionary *)self->_devicesScheduledForJSNotification setObject:v6 forKey:v7];
    }
  }

  else if ([(NSMutableSet *)self->_notificationPostAssertions count])
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[AFSiriHeadphonesMonitor _postJSDiscoveryNotificationForBTDeviceWithInfo:scheduled:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Deferring discovery notification because of active assertions", buf, 0xCu);
    }
  }

  else
  {
    v11 = dispatch_time(0, 5500000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011D4E4;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v18 = v6;
    v19 = v7;
    dispatch_after(v11, queue, block);
  }
}

- (void)_handleJSDiscoveryNotificationForDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_btQueue);
  v5 = [v4 name];
  v6 = [v4 address];
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[AFSiriHeadphonesMonitor _handleJSDiscoveryNotificationForDevice:]";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received AACP capabilities for %@(%@)", buf, 0x20u);
  }

  if (([(NSMutableSet *)self->_devicesAwaitingJSNotification containsObject:v6]& 1) == 0)
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u,%u", [v4 vendorId], objc_msgSend(v4, "productId"));
    v9 = (AFIsH2Headset() & 1) != 0 || [v4 getAACPCapabilityInteger:96] != 0;
    if ([v5 isEqualToString:v6])
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[AFSiriHeadphonesMonitor _handleJSDiscoveryNotificationForDevice:]";
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to fetch device name for %@(%@)", buf, 0x20u);
      }
    }

    else if (!(v9 | (([v4 supportsHS] & 1) == 0)))
    {
      v11 = +[AFPreferences sharedPreferences];
      if ([v11 deviceUsesCompactVoiceTrigger])
      {
        if (([v11 hasPresentedCompactVoiceTriggerDiscoveryNotificationForBTDeviceWithAddress:v6] & 1) == 0)
        {
          v12 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v21 = "[AFSiriHeadphonesMonitor _handleJSDiscoveryNotificationForDevice:]";
            v22 = 2112;
            v23 = v5;
            v24 = 2112;
            v25 = v6;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Trigger notification:%@(%@) doesn't support JS", buf, 0x20u);
          }

          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10011DBF8;
          v16[3] = &unk_1005125F0;
          v17 = v5;
          v13 = v6;
          v18 = v13;
          v19 = v4;
          v14 = [AFBluetoothDeviceInfo newWithBuilder:v16];
          [(NSMutableSet *)self->_devicesAwaitingJSNotification addObject:v13];
          [(AFSiriHeadphonesMonitor *)self _postJSDiscoveryNotificationForBTDeviceWithInfo:v14 scheduled:1];
        }
      }

      else
      {
        v15 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v21 = "[AFSiriHeadphonesMonitor _handleJSDiscoveryNotificationForDevice:]";
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s deviceUsesCompactVoiceTrigger: NO", buf, 0xCu);
        }
      }
    }
  }
}

- (void)accesoryAACPCapabilitiesReceived:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 object];
  v6 = [v5 copy];

  btQueue = self->_btQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011DD7C;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v8 = v6;
  dispatch_async(btQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)startObservingBluetoothConnections
{
  btQueue = self->_btQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E024;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(btQueue, block);
  v4 = +[NSNotificationCenter defaultCenter];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = qword_1005901C0;
  v13 = qword_1005901C0;
  if (!qword_1005901C0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011E0B0;
    v9[3] = &unk_10051E1C8;
    v9[4] = &v10;
    sub_10011E0B0(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v5)
  {
    [v4 addObserver:self selector:"accesoryAACPCapabilitiesReceived:" name:*v5 object:0];
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"NSString *getBluetoothAccessoryAACPCapabilitiesReceived(void)"];
    [v6 handleFailureInFunction:v7 file:@"AFSiriHeadphonesMonitor.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_audioRouteDidChange:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_btQueue);
  devicesScheduledForJSNotification = self->_devicesScheduledForJSNotification;
  if (devicesScheduledForJSNotification)
  {
    v6 = [v4 btAddress];
    v7 = [(NSMutableDictionary *)devicesScheduledForJSNotification objectForKey:v6];

    if (v7)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v10 = [v4 name];
        v11 = [v4 btAddress];
        v17 = 136315650;
        v18 = "[AFSiriHeadphonesMonitor _audioRouteDidChange:]";
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@(%@) Picked, posting notification now...", &v17, 0x20u);
      }

      v12 = self->_devicesScheduledForJSNotification;
      v13 = [v4 btAddress];
      v14 = [(NSMutableDictionary *)v12 objectForKey:v13];

      v15 = self->_devicesScheduledForJSNotification;
      v16 = [v4 btAddress];
      [(NSMutableDictionary *)v15 removeObjectForKey:v16];

      [(AFSiriHeadphonesMonitor *)self _postJSDiscoveryNotificationForBTDeviceWithInfo:v14 scheduled:0];
    }
  }
}

- (void)fetchInEarDetctionStateForBTAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E520;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)fetchPrivateSessionStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "[AFSiriHeadphonesMonitor fetchPrivateSessionStateWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Fetching private session state", buf, 0xCu);
  }

  if (self->_guestConnected)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFSiriHeadphonesMonitor fetchPrivateSessionStateWithCompletion:]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Guest connections active", buf, 0xCu);
    }

    v4[2](v4, 2, 0);
  }

  else
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10011E7D8;
    v8[3] = &unk_10051E038;
    v8[4] = self;
    v9 = v4;
    dispatch_async(queue, v8);
  }
}

- (void)_recomputePrivateSessionStateAndBroadcast:(BOOL)a3
{
  if (self->_wirelessSplitterSessionActive)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
    if (self->_guestConnected)
    {
      v5 = 2;
    }
  }

  self->_sessionState = v5;
  if (a3)
  {
    block[5] = v3;
    block[6] = v4;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011ED0C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_broadcastInEarDetectionStateChangesFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011EFBC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011F2CC;
  v11[3] = &unk_10051D278;
  v12 = v8;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)_settingsConnectionDidDisconnect
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F86C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_settingsConnection
{
  if (AFSupportsWirelessSplitter())
  {
    settingsConnection = self->_settingsConnection;
    if (!settingsConnection)
    {
      v4 = objc_alloc_init(AFSettingsConnection);
      v5 = self->_settingsConnection;
      self->_settingsConnection = v4;

      [(AFSettingsConnection *)self->_settingsConnection _setDelegate:self];
      settingsConnection = self->_settingsConnection;
    }

    v6 = settingsConnection;
  }

  else
  {
    v6 = objc_alloc_init(AFSettingsConnection);
  }

  return v6;
}

- (void)invalidateDiscoveryNotificationAssertion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    btQueue = self->_btQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10011FB30;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(btQueue, v7);
  }
}

- (id)discoveryNotificationAssertion
{
  v3 = objc_alloc_init(NSUUID);
  btQueue = self->_btQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011FBEC;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(btQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)_stopObservingInEarDetectionStateFromSource
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v6 = [NSNumber numberWithUnsignedInteger:[(AFSiriHeadphonesMonitor *)self _observerID]];
    v7 = 136315394;
    v8 = "[AFSiriHeadphonesMonitor _stopObservingInEarDetectionStateFromSource]";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Stop observing IED States for observerID: %@", &v7, 0x16u);
  }

  v4 = [(AFSiriHeadphonesMonitor *)self _settingsConnection];
  [v4 stopObservingBluetoothInEarDetectionStateForObserverID:{-[AFSiriHeadphonesMonitor _observerID](self, "_observerID")}];
}

- (void)_fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length] == 17)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10011EC54;
    v20 = sub_10011EC64;
    v21 = [(AFSiriHeadphonesMonitor *)self _settingsConnection];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [NSNumber numberWithUnsignedInteger:[(AFSiriHeadphonesMonitor *)self _observerID]];
      *buf = 136315650;
      v23 = "[AFSiriHeadphonesMonitor _fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:withCompletion:]";
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Start observing IED States for %@ for observerID: %@", buf, 0x20u);
    }

    [v17[5] startObservingBluetoothInEarDetectionStateForBTAddress:v6 forObserverID:{-[AFSiriHeadphonesMonitor _observerID](self, "_observerID")}];
    v10 = v17[5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100120010;
    v13[3] = &unk_100512530;
    v13[4] = self;
    v14 = v7;
    v15 = &v16;
    [v10 getInEarDetectionStateForBTAddress:v6 withCompletion:v13];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = [NSError alloc];
    v12 = [v11 initWithDomain:kAFAssistantErrorDomain code:1803 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)_fetchWirelessSplitterSessionInfoAndStartObservingFromSourceWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10011EC54;
  v14 = sub_10011EC64;
  v15 = [(AFSiriHeadphonesMonitor *)self _settingsConnection];
  [v11[5] startObservingWirelessSplitterSession];
  v5 = v11[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100120278;
  v7[3] = &unk_100512508;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  [v5 getBluetoothWirelessSplitterSessionInfoWithCompletion:v7];

  _Block_object_dispose(&v10, 8);
}

- (void)_updateAudioRouteFromRoute:(id)a3 toRoute:(id)a4 andBroadcast:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(AFSiriHeadphonesMonitor *)self setCurrentAudioRoute:v9];
  if (([v9 isEqualToRoute:v8] & 1) == 0)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v8 name];
      v13 = [v8 btAddress];
      v14 = [v9 name];
      v15 = [v9 btAddress];
      *buf = 136316418;
      v58 = "[AFSiriHeadphonesMonitor _updateAudioRouteFromRoute:toRoute:andBroadcast:]";
      v59 = 1024;
      *v60 = v5;
      *&v60[4] = 2112;
      *&v60[6] = v12;
      *&v60[14] = 2112;
      *&v60[16] = v13;
      *&v60[24] = 2112;
      *&v60[26] = v14;
      *&v60[34] = 2112;
      *&v60[36] = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Notify: %d; route changed from %@(%@) to %@(%@)", buf, 0x3Au);

      v10 = AFSiriLogContextConnection;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = v10;
      v17 = [v9 avscRouteDescription];
      *buf = 136315394;
      v58 = "[AFSiriHeadphonesMonitor _updateAudioRouteFromRoute:toRoute:andBroadcast:]";
      v59 = 2112;
      *v60 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Currently picked - routeDescription %@", buf, 0x16u);
    }

    v18 = [v9 btAddress];
    btAddress = self->_btAddress;
    self->_btAddress = v18;

    v20 = [v9 name];
    routeName = self->_routeName;
    self->_routeName = v20;

    v22 = self->_btAddress;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100120970;
    v55[3] = &unk_1005124B8;
    v55[4] = self;
    [(AFSiriHeadphonesMonitor *)self _fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:v22 withCompletion:v55];
    v23 = [v9 copy];
    btQueue = self->_btQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100120A3C;
    block[3] = &unk_10051DB68;
    v52 = v8;
    v25 = v23;
    v53 = v25;
    v54 = self;
    dispatch_async(btQueue, block);
    if (v5)
    {
      v41 = v25;
      v42 = v8;
      v26 = [(NSHashTable *)self->_delegates copy];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        v46 = self;
        do
        {
          v31 = 0;
          do
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v47 + 1) + 8 * v31);
            if (objc_opt_respondsToSelector())
            {
              v33 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
              {
                v44 = self->_routeName;
                v45 = self->_btAddress;
                sessionState = v46->_sessionState;
                v35 = v33;
                v36 = [NSNumber numberWithUnsignedInteger:sessionState];
                *buf = 136316162;
                v58 = "[AFSiriHeadphonesMonitor _updateAudioRouteFromRoute:toRoute:andBroadcast:]";
                v59 = 2112;
                *v60 = v32;
                *&v60[8] = 2112;
                *&v60[10] = v44;
                *&v60[18] = 2112;
                *&v60[20] = v45;
                *&v60[28] = 2112;
                *&v60[30] = v36;
                _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%s Telling %@ currentAudioRouteDidChange:to %@(%@) privateSessionState:%@", buf, 0x34u);

                self = v46;
              }

              [v32 currentAudioRouteDidChange:v9];
            }

            if (objc_opt_respondsToSelector())
            {
              v34 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
              {
                v37 = v34;
                v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 hasAuthenticationCapability]);
                v39 = v46->_routeName;
                v40 = v46->_btAddress;
                *buf = 136316162;
                v58 = "[AFSiriHeadphonesMonitor _updateAudioRouteFromRoute:toRoute:andBroadcast:]";
                v59 = 2112;
                *v60 = v32;
                *&v60[8] = 2112;
                *&v60[10] = v38;
                *&v60[18] = 2112;
                *&v60[20] = v39;
                *&v60[28] = 2112;
                *&v60[30] = v40;
                _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%s Telling %@ authenticationCapabilityDidChange:%@ to %@(%@)", buf, 0x34u);

                self = v46;
              }

              [v32 authenticationCapabilityDidChange:objc_msgSend(v9 forBTAddress:{"hasAuthenticationCapability"), self->_btAddress}];
            }

            v31 = v31 + 1;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v29);
      }

      v25 = v41;
      v8 = v42;
    }
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100120C74;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100120D18;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)currentAudioRouteDidChangeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[AFSiriHeadphonesMonitor currentAudioRouteDidChangeFrom:to:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Updating route availability due to route change from: %@ to: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120E88;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)_updateAnnounceNotificationsOnHearingAidSupportedStatus
{
  v4 = [(AFSiriHeadphonesMonitor *)self _settingsConnection];
  [v4 updateAnnounceNotificationsOnHearingAidSupportedStatus];
  [v4 barrier];
  settingsConnection = self->_settingsConnection;
  self->_settingsConnection = 0;
}

- (void)_updateWirelessSplitterSessionInfoAndObserve
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120FB0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_fetchInitialState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001213B0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
  [(AFSiriHeadphonesMonitor *)self _updateWirelessSplitterSessionInfoAndObserve];
  [(AFSiriHeadphonesMonitor *)self _updateInEarDetectionStateAndObserve];
  if (+[AFFeatureFlags isAccessibleAnnounceEnabled])
  {
    v4 = self->_queue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100121420;
    v5[3] = &unk_10051DFE8;
    v5[4] = self;
    dispatch_async(v4, v5);
  }
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = AFSiriHeadphonesMonitor;
  v2 = [(AFSiriHeadphonesMonitor *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v2->_scheduledHeadGesture = 0;
    v4 = AFBluetoothWirelessSplitterSessionStateUnknown;
    v2->_sessionState = 0;
    v2->_wirelessSplitterSessionActive = v4;
    v5 = [[AFBluetoothHeadphoneInEarDetectionState alloc] initWithBuilder:&stru_100512468];
    inEarDetectionState = v3->_inEarDetectionState;
    v3->_inEarDetectionState = v5;

    v7 = dispatch_queue_create("AFSiriHeadphonesMonitor", 0);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = dispatch_queue_create("AFSiriHeadphonesMonitor.BTQueue", 0);
    btQueue = v3->_btQueue;
    v3->_btQueue = v9;

    v11 = [AFNotifyObserver alloc];
    v12 = [NSString stringWithUTF8String:AFBluetoothPairedDeviceInfoUpdated];
    v13 = [v11 initWithName:v12 options:0 queue:v3->_queue delegate:v3];
    pairedInfoChangeObserver = v3->_pairedInfoChangeObserver;
    v3->_pairedInfoChangeObserver = v13;

    v15 = [AFNotifyObserver alloc];
    v16 = [NSString stringWithUTF8String:AFBluetoothWirelessSplitterSessionStateChanged];
    v17 = [v15 initWithName:v16 options:1 queue:v3->_queue delegate:v3];
    wirelessSplitterSessionObserver = v3->_wirelessSplitterSessionObserver;
    v3->_wirelessSplitterSessionObserver = v17;

    v19 = [[AFNotifyObserver alloc] initWithName:@"com.apple.bluetooth.GuestConnected" options:1 queue:v3->_queue delegate:v3];
    wirelessGuestConnectionObserver = v3->_wirelessGuestConnectionObserver;
    v3->_wirelessGuestConnectionObserver = v19;

    v21 = [AFNotifyObserver alloc];
    v22 = [NSString stringWithUTF8String:AFBluetoothInEarDetectionStateChanged];
    v23 = [v21 initWithName:v22 options:1 queue:v3->_queue delegate:v3];
    inEarDetectionStateObserver = v3->_inEarDetectionStateObserver;
    v3->_inEarDetectionStateObserver = v23;

    v25 = +[NSHashTable weakObjectsHashTable];
    delegates = v3->_delegates;
    v3->_delegates = v25;

    [(AFSiriHeadphonesMonitor *)v3 _fetchInitialState];
    v27 = [(AFSiriHeadphonesMonitor *)v3 _audioRouteMonitor];
    [v27 addDelegate:v3];
  }

  return v3;
}

@end