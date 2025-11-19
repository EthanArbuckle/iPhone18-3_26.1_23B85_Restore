@interface ADMediaPlaybackContextProvider
- (BOOL)nowPlayingObserver:(id)a3 isGroupIdentifierFromMediaRemoteActiveDeviceInfoIdenticalToContext:(id)a4;
- (id)_initWithDonationService:(id)a3 instanceContext:(id)a4 queue:(id)a5 allowInitialUpdate:(BOOL)a6;
- (void)_donateMediaPlaybackContextWithSnapshot:(id)a3 date:(id)a4;
- (void)_fetchStateForReason:(id)a3;
- (void)_handlePlaybackStateDidChangeToState:(int64_t)a3 fromState:(int64_t)a4 onDate:(id)a5 lastPlayingDate:(id)a6 completion:(id)a7;
- (void)_handleProxyGroupPlayerDidChangeFrom:(BOOL)a3 to:(BOOL)a4;
- (void)_updateExpirationDateForMediaPlaybackSnapshotBasedOnDate:(id)a3;
- (void)_updateProximityObservationsForPlayState:(int64_t)a3 afterDelay:(double)a4;
- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6;
- (void)nowPlayingObserver:(id)a3 playbackStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5 lastPlayingDate:(id)a6;
- (void)nowPlayingObserver:(id)a3 proxyGroupPlayerStateDidChangeFrom:(BOOL)a4 to:(BOOL)a5;
- (void)nowPlayingObserverAirPlayGroupChanged:(id)a3;
- (void)nowPlayingObserverNowPlayingInfoDidChange:(id)a3;
- (void)pineBoardSystemStateObserver:(id)a3 pineBoardStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
@end

@implementation ADMediaPlaybackContextProvider

- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = a6;
  if ((AFIsATV() & 1) != 0 || AFIsHorseman())
  {
    v9[2](v9, v10, v8);
  }

  else
  {
    v9[2](v9, 0, 0);
  }
}

- (void)_updateExpirationDateForMediaPlaybackSnapshotBasedOnDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_lastSnapshotExpirationDateRenewal || ([v4 timeIntervalSinceDate:?], v6 > 7200.0))
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      lastSnapshotExpirationDateRenewal = self->_lastSnapshotExpirationDateRenewal;
      v9 = 136315394;
      v10 = "[ADMediaPlaybackContextProvider _updateExpirationDateForMediaPlaybackSnapshotBasedOnDate:]";
      v11 = 2112;
      v12 = lastSnapshotExpirationDateRenewal;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal renewing media playback expiration (last renewed: %@)", &v9, 0x16u);
    }

    [(ADMediaPlaybackContextProvider *)self _donateMediaPlaybackContextWithSnapshot:self->_previousState date:v5];
  }
}

- (void)_updateProximityObservationsForPlayState:(int64_t)a3 afterDelay:(double)a4
{
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = v7;
    v11 = AFMediaPlaybackStateGetName();
    *buf = 136315650;
    v14 = "[ADMediaPlaybackContextProvider _updateProximityObservationsForPlayState:afterDelay:]";
    v15 = 2112;
    v16 = v11;
    v17 = 2048;
    v18 = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal %@, delay: %f", buf, 0x20u);
  }

  v8 = dispatch_time(0, (a4 * 1000000000.0));
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100164688;
  v12[3] = &unk_10051D770;
  v12[4] = self;
  v12[5] = a3;
  dispatch_after(v8, queue, v12);
}

- (void)_handlePlaybackStateDidChangeToState:(int64_t)a3 fromState:(int64_t)a4 onDate:(id)a5 lastPlayingDate:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = mach_absolute_time();
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    log = v16;
    v35 = AFMediaPlaybackStateGetName();
    v36 = AFMediaPlaybackStateGetName();
    *buf = 136316162;
    *&buf[4] = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = v15;
    *&buf[22] = 2112;
    v83 = v35;
    *v84 = 2112;
    *&v84[2] = v36;
    *&v84[10] = 2112;
    *&v84[12] = v13;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #hal %llu toState = %@, fromState = %@, lastPlayingDate = %@", buf, 0x34u);
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = a3;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = a3 != a4;
  v17 = dispatch_group_create();
  v18 = v17;
  if (*(v71 + 24) == 1 && v75[3] == 4)
  {
    dispatch_group_enter(v17);
    clientStateObserver = self->_clientStateObserver;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100164F24;
    v64[3] = &unk_100513990;
    v64[4] = self;
    v66 = &v70;
    v67 = &v74;
    v68 = v15;
    v69 = a4;
    v65 = v18;
    [(AFNotifyObserver *)clientStateObserver getStateWithCompletion:v64];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v83 = sub_100165078;
  *v84 = sub_100165088;
  *&v84[8] = 0;
  dispatch_group_enter(v18);
  observer = self->_observer;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100165090;
  v60[3] = &unk_1005139B8;
  v62 = buf;
  v63 = v15;
  v21 = v18;
  v61 = v21;
  [(SOMediaNowPlayingObserver *)observer getNowPlayingInfoForCurrentItemWithCompletion:v60];
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_100165078;
  v58[4] = sub_100165088;
  v59 = 0;
  dispatch_group_enter(v21);
  v22 = +[AFMediaRemoteDeviceInfo currentDevice];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100165240;
  v54[3] = &unk_1005139E0;
  v56 = v58;
  v57 = v15;
  v23 = v21;
  v55 = v23;
  [v22 getGroupIdentifierWithCompletion:v54];

  v24 = self->_donation;
  v25 = [AFSafetyBlock alloc];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100165348;
  v43[3] = &unk_100513A08;
  v26 = v24;
  v44 = v26;
  v53 = v15;
  v27 = v14;
  v48 = v27;
  v45 = self;
  v28 = v13;
  v46 = v28;
  v49 = &v74;
  v50 = &v70;
  v51 = buf;
  v52 = v58;
  v29 = v12;
  v47 = v29;
  v30 = [v25 initWithBlock:v43];
  objc_storeStrong(&self->_donation, v30);
  Current = CFAbsoluteTimeGetCurrent();
  v32 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *v78 = 136315394;
    v79 = "[ADMediaPlaybackContextProvider _handlePlaybackStateDidChangeToState:fromState:onDate:lastPlayingDate:completion:]";
    v80 = 2048;
    v81 = v15;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s #hal %llu Waiting for aggregation to finish...", v78, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100165804;
  block[3] = &unk_10051D278;
  v41 = v15;
  v42 = Current;
  v34 = v30;
  v39 = v34;
  v40 = self;
  dispatch_group_notify(v23, queue, block);
  if (*(v71 + 24) == 1 && ((AFIsATV() & 1) != 0 || AFIsHorseman()))
  {
    [(ADMediaPlaybackContextProvider *)self _updateProximityObservationsForPlayState:v75[3] afterDelay:5.0];
  }

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
}

- (void)_handleProxyGroupPlayerDidChangeFrom:(BOOL)a3 to:(BOOL)a4
{
  if (a3 != a4 || self->_isProxyGroupPlayer != a4)
  {
    self->_isProxyGroupPlayer = a4;
    previousState = self->_previousState;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100165B5C;
    v11[3] = &unk_100513968;
    v12 = a4;
    v7 = [(AFMediaPlaybackStateSnapshot *)previousState mutatedCopyWithMutator:v11];
    if (!v7)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100165B68;
      v9[3] = &unk_100513968;
      v10 = a4;
      v7 = [AFMediaPlaybackStateSnapshot newWithBuilder:v9];
    }

    v8 = +[NSDate date];
    [(ADMediaPlaybackContextProvider *)self _donateMediaPlaybackContextWithSnapshot:v7 date:v8];
  }
}

- (void)_donateMediaPlaybackContextWithSnapshot:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "[ADMediaPlaybackContextProvider _donateMediaPlaybackContextWithSnapshot:date:]";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal snapshot = %@", &v18, 0x16u);
  }

  v9 = v7;
  v10 = [(NSDate *)v9 dateByAddingTimeInterval:86400.0];
  v11 = [AFDeviceContextMetadata alloc];
  v12 = [v11 initWithType:AFDeviceContextKeyPlaybackState deliveryDate:v9 expirationDate:v10 redactedKeyPaths:0 historyConfiguration:0];
  if (AFIsATV())
  {
    v13 = 1;
  }

  else
  {
    v13 = AFIsHorseman();
  }

  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:v6 withMetadata:v12 pushToRemote:v13];

  previousState = self->_previousState;
  self->_previousState = v6;
  v16 = v6;

  lastSnapshotExpirationDateRenewal = self->_lastSnapshotExpirationDateRenewal;
  self->_lastSnapshotExpirationDateRenewal = v9;
}

- (BOOL)nowPlayingObserver:(id)a3 isGroupIdentifierFromMediaRemoteActiveDeviceInfoIdenticalToContext:(id)a4
{
  v5 = a4;
  v6 = [(AFMediaPlaybackStateSnapshot *)self->_previousState groupIdentifier];
  v7 = [v6 isEqualToString:v5];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    v11 = [NSNumber numberWithBool:v7];
    v12 = 136315906;
    v13 = "[ADMediaPlaybackContextProvider nowPlayingObserver:isGroupIdentifierFromMediaRemoteActiveDeviceInfoIdenticalToContext:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v11;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal groupIdentifier in _previousState: %@, from mediaRemoteActiveDeviceInfoUpdate: %@, same: %@", &v12, 0x2Au);
  }

  return v7;
}

- (void)nowPlayingObserver:(id)a3 proxyGroupPlayerStateDidChangeFrom:(BOOL)a4 to:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[ADMediaPlaybackContextProvider nowPlayingObserver:proxyGroupPlayerStateDidChangeFrom:to:]";
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v5;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal %d -> %d", buf, 0x18u);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100165F78;
  v10[3] = &unk_100515CF0;
  v10[4] = self;
  v11 = v6;
  v12 = v5;
  dispatch_async(queue, v10);
}

- (void)nowPlayingObserverAirPlayGroupChanged:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[ADMediaPlaybackContextProvider nowPlayingObserverAirPlayGroupChanged:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
  }

  observer = self->_observer;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100166090;
  v6[3] = &unk_100513948;
  v6[4] = self;
  [(SOMediaNowPlayingObserver *)observer getPlaybackStateAndLastPlayingDateWithCompletion:v6];
}

- (void)nowPlayingObserverNowPlayingInfoDidChange:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[ADMediaPlaybackContextProvider nowPlayingObserverNowPlayingInfoDidChange:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
  }

  observer = self->_observer;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001662C0;
  v6[3] = &unk_100513948;
  v6[4] = self;
  [(SOMediaNowPlayingObserver *)observer getPlaybackStateAndLastPlayingDateWithCompletion:v6];
}

- (void)nowPlayingObserver:(id)a3 playbackStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5 lastPlayingDate:(id)a6
{
  v9 = a6;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[ADMediaPlaybackContextProvider nowPlayingObserver:playbackStateDidChangeFrom:to:lastPlayingDate:]";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal", buf, 0xCu);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016652C;
  v13[3] = &unk_10051D278;
  v15 = a5;
  v16 = a4;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)pineBoardSystemStateObserver:(id)a3 pineBoardStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  v7 = a3;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[ADMediaPlaybackContextProvider pineBoardSystemStateObserver:pineBoardStateDidChangeFrom:to:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal", &v13, 0xCu);
  }

  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[ADMediaPlaybackContextProvider pineBoardSystemStateObserver:pineBoardStateDidChangeFrom:to:]";
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal setting AppleTV playstate to unspecified while sleeping", &v13, 0xCu);
    }

    v10 = [(AFMediaPlaybackStateSnapshot *)self->_previousState playbackState];
    v11 = +[NSDate date];
    v12 = [(AFMediaPlaybackStateSnapshot *)self->_previousState nowPlayingTimestamp];
    [(ADMediaPlaybackContextProvider *)self _handlePlaybackStateDidChangeToState:0 fromState:v10 onDate:v11 lastPlayingDate:v12 completion:0];
  }

  else if (a5 == 8 || a5 == 1)
  {
    [(ADMediaPlaybackContextProvider *)self _fetchStateForReason:@"awaking"];
  }
}

- (void)_fetchStateForReason:(id)a3
{
  v4 = a3;
  observer = self->_observer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100166844;
  v9[3] = &unk_10051C128;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  [(SOMediaNowPlayingObserver *)observer getPlaybackStateWithCompletion:v9];
  v7 = self->_observer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001668E0;
  v8[3] = &unk_10051B778;
  v8[4] = self;
  [(SOMediaNowPlayingObserver *)v7 getProxyGroupPlayerStateWithCompletion:v8];
}

- (id)_initWithDonationService:(id)a3 instanceContext:(id)a4 queue:(id)a5 allowInitialUpdate:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27.receiver = self;
  v27.super_class = ADMediaPlaybackContextProvider;
  v13 = [(ADMediaPlaybackContextProvider *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_donationService, v10);
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v14->_instanceContext;
    v14->_instanceContext = v15;

    objc_storeStrong(&v14->_queue, a5);
    v17 = [[SOMediaNowPlayingObserver alloc] initWithQueue:v12 instanceContext:v14->_instanceContext];
    observer = v14->_observer;
    v14->_observer = v17;

    [(SOMediaNowPlayingObserver *)v14->_observer addListener:v14];
    v19 = [AFNotifyObserver alloc];
    v20 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
    v21 = AFNotifyGetEffectiveNotificationName();
    v22 = [v19 initWithName:v21 options:1 queue:v14->_queue delegate:0];
    clientStateObserver = v14->_clientStateObserver;
    v14->_clientStateObserver = v22;

    v24 = +[AFPineBoardSystemStateObserver defaultObserver];
    [v24 addListener:v14];

    WeakRetained = objc_loadWeakRetained(&v14->_donationService);
    [WeakRetained registerContextTransformer:v14 forType:AFDeviceContextKeyPlaybackState];

    if (v6)
    {
      [(ADMediaPlaybackContextProvider *)v14 _fetchStateForReason:@"init"];
    }
  }

  return v14;
}

@end