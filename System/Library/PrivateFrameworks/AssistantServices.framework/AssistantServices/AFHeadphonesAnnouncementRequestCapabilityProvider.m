@interface AFHeadphonesAnnouncementRequestCapabilityProvider
+ (id)announceableIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)a3;
+ (id)provider;
+ (id)requiredIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)a3;
- (AFSiriAudioRoute)currentAnnouncementRoute;
- (id)_getCurrentAnnouncementRoute;
- (id)_init;
- (id)_settingsConnection;
- (id)currentlyRoutedHeadphonesBTAddress;
- (id)currentlyRoutedHeadphonesProductID;
- (void)_fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:(BOOL)a3;
- (void)_fetchInitialState;
- (void)_fetchPairedBluetoothDevicesFromSourceWithCompletion:(id)a3;
- (void)_notifyObserversOfEligibleAnnouncementRequestTypes:(unint64_t)a3;
- (void)_settingsConnectionDidDisconnect;
- (void)_updateAudioRouteAvailabilityAndBroadcast:(BOOL)a3;
- (void)addDelegate:(id)a3;
- (void)currentAudioRouteDidChange:(id)a3;
- (void)fetchAvailableAnnouncementRequestTypesWithCompletion:(id)a3;
- (void)fetchEligibleAnnouncementRequestTypesAndNotifyObservers:(id)a3;
- (void)fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:(BOOL)a3;
- (void)fetchEligibleAnnouncementRequestTypesWithCompletion:(id)a3;
- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4;
- (void)notifyObserversOfAvailableAnnouncementRequestTypes;
- (void)privateAudioSessionStateDidChange:(unint64_t)a3;
@end

@implementation AFHeadphonesAnnouncementRequestCapabilityProvider

- (id)_getCurrentAnnouncementRoute
{
  v2 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self _headphonesMonitor];
  v3 = [v2 currentAudioRoute];

  if ([v3 availableAnnouncementRequestTypes])
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v7 = v4;
      v8 = [v3 availableAnnouncementRequestTypes];
      v9 = [v3 avscRouteDescription];
      v10 = 136315650;
      v11 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _getCurrentAnnouncementRoute]";
      v12 = 2048;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s capabilities: %lu for routeDescription: %@", &v10, 0x20u);
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchAvailableAnnouncementRequestTypesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DED14;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchEligibleAnnouncementRequestTypesWithCompletion:(id)a3
{
  v4 = a3;
  if (AFDeviceSupportsSpokenMessages())
  {
    v5 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    dispatch_group_enter(v5);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DF4AC;
    block[3] = &unk_10051C588;
    block[4] = self;
    p_buf = &buf;
    v7 = v5;
    v18 = v7;
    dispatch_async(queue, block);
    dispatch_group_enter(v7);
    v8 = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000DF548;
    v15[3] = &unk_10051E010;
    v15[4] = self;
    v16 = v7;
    v9 = v7;
    dispatch_async(v8, v15);
    v10 = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DF5D8;
    v12[3] = &unk_10051B688;
    v14 = &buf;
    v12[4] = self;
    v13 = v4;
    dispatch_group_notify(v9, v10, v12);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[AFHeadphonesAnnouncementRequestCapabilityProvider fetchEligibleAnnouncementRequestTypesWithCompletion:]";
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Announcements not supported on device", &buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DFA3C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_settingsConnectionDidDisconnect
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFABC;
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

- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_forcedUpdateObserver == v5)
  {
    if (!self->_lastKnownEligibleAnnouncementRequests)
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        *v9 = 136315138;
        *&v9[4] = "[AFHeadphonesAnnouncementRequestCapabilityProvider notifyObserver:didReceiveNotificationWithToken:]";
        v8 = "%s forced update observer re-fetching eligibility";
        goto LABEL_10;
      }

LABEL_7:
      [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:0, *v9];
    }
  }

  else if (self->_pairedInfoChangeObserver == v5)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 136315138;
      *&v9[4] = "[AFHeadphonesAnnouncementRequestCapabilityProvider notifyObserver:didReceiveNotificationWithToken:]";
      v8 = "%s re-fetching eligibility after assistantd is ready";
LABEL_10:
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0xCu);
      goto LABEL_7;
    }

    goto LABEL_7;
  }
}

- (void)currentAudioRouteDidChange:(id)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
    v8 = [a3 description];
    *buf = 136315394;
    v11 = "[AFHeadphonesAnnouncementRequestCapabilityProvider currentAudioRouteDidChange:]";
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s current audio route did change: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFE6C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)privateAudioSessionStateDidChange:(unint64_t)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    *buf = 136315394;
    v11 = "[AFHeadphonesAnnouncementRequestCapabilityProvider privateAudioSessionStateDidChange:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s headphonesPrivateSession: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFFBC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_fetchPairedBluetoothDevicesFromSourceWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000E00E8;
  v14 = sub_1000E00F8;
  v15 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self _settingsConnection];
  v5 = v11[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E0100;
  v7[3] = &unk_100511090;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  [v5 getPairedBluetoothDeviceInfoArrayWithCompletion:v7];

  _Block_object_dispose(&v10, 8);
}

- (void)_notifyObserversOfEligibleAnnouncementRequestTypes:(unint64_t)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _notifyObserversOfEligibleAnnouncementRequestTypes:]";
    v19 = 2048;
    v20 = a3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Notifying observers, eligible announcement requests changed: %lu", buf, 0x16u);
  }

  v6 = [(NSHashTable *)self->_delegates copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) provider:self eligibleAnnouncementRequestTypesChanged:{a3, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:(BOOL)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  lastKnownEligibleAnnouncementRequests = self->_lastKnownEligibleAnnouncementRequests;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E04B0;
  v7[3] = &unk_100511068;
  v7[4] = self;
  v7[5] = lastKnownEligibleAnnouncementRequests;
  v8 = a3;
  [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self fetchEligibleAnnouncementRequestTypesWithCompletion:v7];
}

- (void)fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:]";
    v11 = 1024;
    v12 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s shouldRelyOnCachedStateIfIneligbile: %d", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E0850;
  v7[3] = &unk_10051CBD8;
  v7[4] = self;
  v8 = v3;
  dispatch_async(queue, v7);
}

- (void)fetchEligibleAnnouncementRequestTypesAndNotifyObservers:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[AFHeadphonesAnnouncementRequestCapabilityProvider fetchEligibleAnnouncementRequestTypesAndNotifyObservers:]";
    v17 = 2112;
    v18 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v15, 0x16u);
  }

  v6 = [v4 name];
  v7 = sub_1000E09EC();
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v10 = [v4 name];
    v11 = sub_1000E0B50();
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v13 = [v4 name];
    v14 = [v13 isEqualToString:AFOutputVoiceDidChangeNotification];

    if (!v14)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_7:
  [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:v9];
LABEL_8:
}

- (void)notifyObserversOfAvailableAnnouncementRequestTypes
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000E0F88;
  v2[3] = &unk_10051C2E0;
  v2[4] = self;
  [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self fetchAvailableAnnouncementRequestTypesWithCompletion:v2];
}

- (void)_updateAudioRouteAvailabilityAndBroadcast:(BOOL)a3
{
  v3 = a3;
  v5 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self _getCurrentAnnouncementRoute];
  [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self setCurrentAnnouncementRoute:v5];
  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v8 = v6;
    v9 = [v5 availableAnnouncementRequestTypes];
    lastKnownAvailableAnnouncementRequests = self->_lastKnownAvailableAnnouncementRequests;
    [v5 announcePlatformForRoute];
    v11 = AFSiriAnnouncementPlatformGetName();
    v16 = 136315906;
    v17 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _updateAudioRouteAvailabilityAndBroadcast:]";
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = lastKnownAvailableAnnouncementRequests;
    v22 = 2112;
    v23 = v11;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Available route capabilities: %lu, last known availability: %lu announcePlatformForRoute: %@", &v16, 0x2Au);
  }

  if ([v5 availableAnnouncementRequestTypes] != self->_lastKnownAvailableAnnouncementRequests)
  {
    v7 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v12 = v7;
      v13 = [v5 availableAnnouncementRequestTypes];
      v14 = [v5 avscRouteDescription];
      [v5 announcePlatformForRoute];
      v15 = AFSiriAnnouncementPlatformGetName();
      v16 = 136315906;
      v17 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _updateAudioRouteAvailabilityAndBroadcast:]";
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s updating available route capabilities: %lu for routeDescription: %@ announcePlatformForRoute: %@", &v16, 0x2Au);
    }

    self->_lastKnownAvailableAnnouncementRequests = [v5 availableAnnouncementRequestTypes];
    if (v3)
    {
      [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self notifyObserversOfAvailableAnnouncementRequestTypes];
    }
  }
}

- (id)currentlyRoutedHeadphonesBTAddress
{
  v2 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self currentAnnouncementRoute];
  v3 = [v2 btAddress];
  v4 = [v3 copy];

  return v4;
}

- (id)currentlyRoutedHeadphonesProductID
{
  v2 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self currentAnnouncementRoute];
  v3 = [v2 productID];
  v4 = [v3 copy];

  return v4;
}

- (AFSiriAudioRoute)currentAnnouncementRoute
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000E00E8;
  v16 = sub_1000E00F8;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E15CC;
  block[3] = &unk_10051D4A0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(queue, block);
  v4 = v13[5];
  if (!v4)
  {
    v5 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)self _getCurrentAnnouncementRoute];
    v6 = v13[5];
    v13[5] = v5;

    v7 = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E15EC;
    v10[3] = &unk_10051D4A0;
    v10[4] = self;
    v10[5] = &v12;
    dispatch_async(v7, v10);
    v4 = v13[5];
  }

  v8 = v4;
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (void)_fetchInitialState
{
  if (AFDeviceSupportsSpokenMessages())
  {
    dispatch_group_enter(self->_group);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E169C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (id)_init
{
  v22.receiver = self;
  v22.super_class = AFHeadphonesAnnouncementRequestCapabilityProvider;
  v2 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AFHeadphonesAnnouncementRequestCapabilityProvider", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v6;

    v8 = [(AFHeadphonesAnnouncementRequestCapabilityProvider *)v2 _headphonesMonitor];
    [v8 addDelegate:v2];

    v9 = [AFNotifyObserver alloc];
    v10 = [NSString stringWithUTF8String:AFBluetoothPairedDeviceInfoUpdated];
    v11 = [v9 initWithName:v10 options:0 queue:v2->_queue delegate:v2];
    pairedInfoChangeObserver = v2->_pairedInfoChangeObserver;
    v2->_pairedInfoChangeObserver = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = sub_1000E09EC();
    [v13 addObserver:v2 selector:"fetchEligibleAnnouncementRequestTypesAndNotifyObservers:" name:v14 object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    v16 = sub_1000E0B50();
    [v15 addObserver:v2 selector:"fetchEligibleAnnouncementRequestTypesAndNotifyObservers:" name:v16 object:0];

    v17 = [[AFNotifyObserver alloc] initWithName:@"AFSiriUserNotificationRequestCapabilityForceUpdate" options:0 queue:v2->_queue delegate:v2];
    forcedUpdateObserver = v2->_forcedUpdateObserver;
    v2->_forcedUpdateObserver = v17;

    v19 = +[NSHashTable weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v19;

    [(AFHeadphonesAnnouncementRequestCapabilityProvider *)v2 _fetchInitialState];
  }

  return v2;
}

+ (id)requiredIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)a3
{
  if (!AFSiriUserNotificationAnnouncementTypeGetIsValid())
  {
    goto LABEL_21;
  }

  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v17 = sub_1000E21A0();
        v30 = v17;
        v4 = [NSArray arrayWithObjects:&v30 count:1];
      }

      else
      {
        v4 = &__NSArray0__struct;
      }

      goto LABEL_22;
    }

    if (a3 == 6)
    {
      v4 = &__NSArray0__struct;
      goto LABEL_22;
    }

    if (a3 == 7)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v6 = qword_100590088;
      v27 = qword_100590088;
      if (!qword_100590088)
      {
        v7 = sub_1000E204C();
        v25[3] = dlsym(v7, "INAnswerCallIntentIdentifier");
        qword_100590088 = v25[3];
        v6 = v25[3];
      }

      _Block_object_dispose(&v24, 8);
      if (v6)
      {
        v8 = *v6;
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v9 = qword_100590090;
        v27 = qword_100590090;
        v28 = v8;
        if (!qword_100590090)
        {
          v10 = sub_1000E204C();
          v25[3] = dlsym(v10, "INHangUpCallIntentIdentifier");
          qword_100590090 = v25[3];
          v9 = v25[3];
        }

        _Block_object_dispose(&v24, 8);
        if (v9)
        {
          v29 = *v9;
          v11 = v29;
          v4 = [NSArray arrayWithObjects:&v28 count:2];

          goto LABEL_22;
        }

        v22 = +[NSAssertionHandler currentHandler];
        v23 = [NSString stringWithUTF8String:"NSString *getINHangUpCallIntentIdentifier(void)"];
        [v22 handleFailureInFunction:v23 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:40 description:{@"%s", dlerror()}];
      }

      else
      {
        v18 = +[NSAssertionHandler currentHandler];
        v19 = [NSString stringWithUTF8String:"NSString *getINAnswerCallIntentIdentifier(void)"];
        [v18 handleFailureInFunction:v19 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:39 description:{@"%s", dlerror()}];
      }

      goto LABEL_34;
    }

LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v13 = sub_1000E1E98();
    v31 = v13;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v14 = qword_100590080;
    v27 = qword_100590080;
    if (!qword_100590080)
    {
      v15 = sub_1000E204C();
      v25[3] = dlsym(v15, "INSendMessageIntentIdentifier");
      qword_100590080 = v25[3];
      v14 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (v14)
    {
      v32 = *v14;
      v16 = v32;
      v4 = [NSArray arrayWithObjects:&v31 count:2];

      goto LABEL_22;
    }

    v20 = +[NSAssertionHandler currentHandler];
    v21 = [NSString stringWithUTF8String:"NSString *getINSendMessageIntentIdentifier(void)"];
    [v20 handleFailureInFunction:v21 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:34 description:{@"%s", dlerror()}];

LABEL_34:
    __break(1u);
  }

  v5 = &__NSArray0__struct;
  if (a3 != 3)
  {
    v5 = 0;
  }

  if (a3 == 2)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v4 = v5;
  }

LABEL_22:

  return v4;
}

+ (id)announceableIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)a3
{
  if (!AFSiriUserNotificationAnnouncementTypeGetIsValid())
  {
    goto LABEL_15;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v10 = sub_1000E21A0();
      v29 = v10;
      v4 = [NSArray arrayWithObjects:&v29 count:1];

      goto LABEL_16;
    }

    if (a3 == 5)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v14 = qword_100590070;
      v26 = qword_100590070;
      if (!qword_100590070)
      {
        v15 = sub_1000E204C();
        v24[3] = dlsym(v15, "INPlayVoicemailIntentIdentifier");
        qword_100590070 = v24[3];
        v14 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v14)
      {
        v28 = *v14;
        v16 = v28;
        v4 = [NSArray arrayWithObjects:&v28 count:1];

        goto LABEL_16;
      }

      v21 = +[NSAssertionHandler currentHandler];
      v22 = [NSString stringWithUTF8String:"NSString *getINPlayVoicemailIntentIdentifier(void)"];
      [v21 handleFailureInFunction:v22 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:37 description:{@"%s", dlerror()}];

LABEL_32:
      __break(1u);
    }

    if (a3 == 6)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v5 = qword_100590078;
      v26 = qword_100590078;
      if (!qword_100590078)
      {
        v6 = sub_1000E204C();
        v24[3] = dlsym(v6, "INJoinCallIntentIdentifier");
        qword_100590078 = v24[3];
        v5 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v5)
      {
        v27 = *v5;
        v7 = v27;
        v4 = [NSArray arrayWithObjects:&v27 count:1];

        goto LABEL_16;
      }

      v17 = +[NSAssertionHandler currentHandler];
      v18 = [NSString stringWithUTF8String:"NSString *getINJoinCallIntentIdentifier(void)"];
      [v17 handleFailureInFunction:v18 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:38 description:{@"%s", dlerror()}];

      goto LABEL_32;
    }

LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  switch(a3)
  {
    case 1:
      v9 = sub_1000E1E98();
      v31 = v9;
      v4 = [NSArray arrayWithObjects:&v31 count:1];

      break;
    case 2:
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v11 = qword_100590060;
      v26 = qword_100590060;
      if (!qword_100590060)
      {
        v12 = sub_1000E204C();
        v24[3] = dlsym(v12, "INReadAnnouncementIntentIdentifier");
        qword_100590060 = v24[3];
        v11 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v11)
      {
        v30 = *v11;
        v13 = v30;
        v4 = [NSArray arrayWithObjects:&v30 count:1];

        break;
      }

      v19 = +[NSAssertionHandler currentHandler];
      v20 = [NSString stringWithUTF8String:"NSString *getINReadAnnouncementIntentIdentifier(void)"];
      [v19 handleFailureInFunction:v20 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:35 description:{@"%s", dlerror()}];

      goto LABEL_32;
    case 3:
      v4 = &__NSArray0__struct;
      break;
    default:
      v4 = 0;
      break;
  }

LABEL_16:

  return v4;
}

+ (id)provider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2B80;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_100590028 != -1)
  {
    dispatch_once(&qword_100590028, block);
  }

  v2 = qword_100590030;

  return v2;
}

@end