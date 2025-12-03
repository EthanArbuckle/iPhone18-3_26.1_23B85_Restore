@interface AFSiriAudioRouteMonitor
+ (id)sharedMonitor;
- (AFSiriAudioRoute)currentAudioRoute;
- (BOOL)_updateAudioRouteAvailabilityAndBroadcast:(BOOL)broadcast;
- (id)_init;
- (void)_broadcastRouteChangeFrom:(id)from to:(id)to;
- (void)_fetchInitialState;
- (void)addDelegate:(id)delegate;
- (void)deviceRingerObserver:(id)observer didChangeState:(int64_t)state;
- (void)initializeAVSystemControllerSubscriptions:(id)subscriptions;
- (void)removeDelegate:(id)delegate;
- (void)updateAudioRouteAvailability:(id)availability;
@end

@implementation AFSiriAudioRouteMonitor

- (void)_broadcastRouteChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100134490;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = fromCopy;
  v13 = toCopy;
  v9 = toCopy;
  v10 = fromCopy;
  dispatch_async(queue, block);
}

- (void)deviceRingerObserver:(id)observer didChangeState:(int64_t)state
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100134734;
  v5[3] = &unk_10051D770;
  v5[4] = self;
  v5[5] = state;
  dispatch_async(queue, v5);
}

- (AFSiriAudioRoute)currentAudioRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100134918;
  v10 = sub_100134928;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100134930;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_updateAudioRouteAvailabilityAndBroadcast:(BOOL)broadcast
{
  broadcastCopy = broadcast;
  v5 = self->_currentAudioRoute;
  v6 = sub_10001136C([(AFDeviceRingerSwitchObserver *)self->_ringerSwitchObserver state]);
  [(AFSiriAudioRouteMonitor *)self setCurrentAudioRoute:v6];
  v7 = [v6 isEqualToRoute:v5];
  if ((v7 & 1) == 0)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      btAddress = self->_btAddress;
      routeName = self->_routeName;
      v11 = v8;
      name = [v6 name];
      btAddress = [v6 btAddress];
      v23 = 136316162;
      v24 = "[AFSiriAudioRouteMonitor _updateAudioRouteAvailabilityAndBroadcast:]";
      v25 = 2112;
      v26 = routeName;
      v27 = 2112;
      v28 = btAddress;
      v29 = 2112;
      v30 = name;
      v31 = 2112;
      v32 = btAddress;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Route changed from %@(%@) to %@(%@)", &v23, 0x34u);

      v8 = AFSiriLogContextConnection;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = v8;
      avscRouteDescription = [v6 avscRouteDescription];
      v23 = 136315394;
      v24 = "[AFSiriAudioRouteMonitor _updateAudioRouteAvailabilityAndBroadcast:]";
      v25 = 2112;
      v26 = avscRouteDescription;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Currently picked - routeDescription %@", &v23, 0x16u);
    }

    btAddress2 = [v6 btAddress];
    v17 = self->_btAddress;
    self->_btAddress = btAddress2;

    name2 = [v6 name];
    v19 = self->_routeName;
    self->_routeName = name2;

    v20 = [v6 copy];
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "[AFSiriAudioRouteMonitor _updateAudioRouteAvailabilityAndBroadcast:]";
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Audio route changed to: %@", &v23, 0x16u);
    }

    if (broadcastCopy)
    {
      [(AFSiriAudioRouteMonitor *)self _broadcastRouteChangeFrom:v5 to:v20];
    }
  }

  return v7 ^ 1;
}

- (void)updateAudioRouteAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[AFSiriAudioRouteMonitor updateAudioRouteAvailability:]";
    v10 = 2112;
    v11 = availabilityCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Updating route availability due to: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013504C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001350F0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135194;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)initializeAVSystemControllerSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100135238;
  v7[3] = &unk_10051E010;
  v8 = subscriptionsCopy;
  selfCopy = self;
  v6 = subscriptionsCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchInitialState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001358E4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_init
{
  v25.receiver = self;
  v25.super_class = AFSiriAudioRouteMonitor;
  v2 = [(AFSiriAudioRouteMonitor *)&v25 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_create("AFSiriAudioRouteMonitor", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = v2->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100135C2C;
  block[3] = &unk_10051DFE8;
  v6 = v2;
  v24 = v6;
  dispatch_async(v5, block);
  v7 = +[NSNotificationCenter defaultCenter];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v8 = qword_100590288;
  v34 = qword_100590288;
  if (!qword_100590288)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100135C38;
    v29 = &unk_10051E1C8;
    v30 = &v31;
    v9 = sub_1001349F0();
    v10 = dlsym(v9, "AVSystemController_ServerConnectionDiedNotification");
    *(v30[1] + 24) = v10;
    qword_100590288 = *(v30[1] + 24);
    v8 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v8)
  {
    [v7 addObserver:v6 selector:"initializeAVSystemControllerSubscriptions:" name:*v8 object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    v12 = sub_1001354B8();
    [v11 addObserver:v6 selector:"updateAudioRouteAvailability:" name:v12 object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = sub_10013561C();
    [v13 addObserver:v6 selector:"updateAudioRouteAvailability:" name:v14 object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v6 selector:"updateAudioRouteAvailability:" name:AFPreferencesDidChangeNotification object:0];

    v16 = +[AFDeviceRingerSwitchObserver sharedObserver];
    ringerSwitchObserver = v6->_ringerSwitchObserver;
    v6->_ringerSwitchObserver = v16;

    [(AFDeviceRingerSwitchObserver *)v6->_ringerSwitchObserver addListener:v6];
    v18 = +[NSHashTable weakObjectsHashTable];
    delegates = v6->_delegates;
    v6->_delegates = v18;

    [(AFSiriAudioRouteMonitor *)v6 _fetchInitialState];
    return v2;
  }

  v21 = +[NSAssertionHandler currentHandler];
  v22 = [NSString stringWithUTF8String:"NSString *getAVSystemController_ServerConnectionDiedNotification(void)"];
  [v21 handleFailureInFunction:v22 file:@"AFSiriAudioRouteMonitor.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

+ (id)sharedMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100135D28;
  block[3] = &unk_10051E200;
  block[4] = self;
  if (qword_100590260 != -1)
  {
    dispatch_once(&qword_100590260, block);
  }

  v2 = qword_100590268;

  return v2;
}

@end