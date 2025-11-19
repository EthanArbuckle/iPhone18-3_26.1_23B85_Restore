@interface ADContextManager
+ (BOOL)_isResumableFirstPartyBundleID:(id)a3;
+ (BOOL)_isResumableThirdPartyGenreID:(id)a3;
- (ADContextManager)initWithDelegate:(id)a3;
- (ADContextManagerDelegate)delegate;
- (BOOL)_inlineUpdateCurrentHomeKitHome;
- (BOOL)_inlineUpdatePhoneState;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_alarmAceObjectFromAlarm:(id)a3 withProximity:(int64_t)a4 inDeviceContext:(id)a5;
- (id)_appInfoWithBundleID:(id)a3;
- (id)_configuredContextLink;
- (id)_configuredLocalContextStoreWithInstanceContext:(id)a3 rapportLink:(id)a4 queue:(id)a5;
- (id)_configuredRemoteContextStoreWithRapportLink:(id)a3 queue:(id)a4;
- (id)_contextLinkMessageOptions;
- (id)_dataSourceInfoWithProximity:(int64_t)a3 deviceContext:(id)a4;
- (id)_filteredApplicationInfosForLockedStark:(id)a3;
- (id)_initWithDelegate:(id)a3 deviceCircleManager:(id)a4 deviceProximityManager:(id)a5;
- (id)_makeUserTokenStatusWithICTokenStatus:(id)a3 icError:(id)a4;
- (id)_timerAceObjectFromTimer:(id)a3 withProximity:(int64_t)a4 inDeviceContext:(id)a5;
- (void)_addDeviceContextConnection:(id)a3;
- (void)_callStateDidChange:(id)a3;
- (void)_cancelNowPlayingCoalescingTimer;
- (void)_enumerateDeviceContextConnectionsUsingBlock:(id)a3;
- (void)_fetchContextSnapshotForCurrentRequest;
- (void)_getBackgroundContext:(id)a3;
- (void)_getCurrentUserActivityOnQueue:(id)a3 completion:(id)a4;
- (void)_getDevicesWithContexts:(id)a3 passingTest:(id)a4 capabilitesPassingTest:(id)a5 completion:(id)a6;
- (void)_getNowPlayingMediaIsResumable:(id)a3;
- (void)_handleAggregateContextFetchWithMessage:(id)a3 fromDeviceWithPeerInfo:(id)a4 completion:(id)a5;
- (void)_handleContextSnapshotPush:(id)a3 completion:(id)a4;
- (void)_handleDeviceProblemsChangedWithToken:(int)a3;
- (void)_handleHomeAnnouncementSnapshotUpdate:(id)a3;
- (void)_handlePushContextMessage:(id)a3 fromDeviceWithPeerInfo:(id)a4 completion:(id)a5;
- (void)_initialize;
- (void)_logContextCollectorFetchEnded:(id)a3 numDeviceContextsFetched:(unint64_t)a4;
- (void)_logContextCollectorFetchFailed:(id)a3;
- (void)_logContextCollectorFetchStarted:(id)a3;
- (void)_logFetchLocalContextEnded:(id)a3;
- (void)_logFetchLocalContextStarted:(id)a3;
- (void)_logForceFetchContextEndedWithHALMetricsId:(id)a3 contextId:(id)a4 forceFetchCount:(unint64_t)a5;
- (void)_logForceFetchContextFailedWithHALMetricsId:(id)a3 contextId:(id)a4 error:(id)a5;
- (void)_logForceFetchContextStartedWithHALMetricsId:(id)a3 contextId:(id)a4 timestamp:(unint64_t)a5;
- (void)_logForceFetchWithStartTime:(unint64_t)a3 forceFetchCount:(unint64_t)a4 forceFetchError:(id)a5 halMetricsId:(id)a6;
- (void)_playbackDevicesDidChange:(id)a3;
- (void)_reallyUpdateBackgroundContextIfNowPlayingInfoChangedForReason:(id)a3;
- (void)_registerForBGUpdates;
- (void)_removeDeviceContextConnection:(id)a3;
- (void)_resetContextLinkAndReconnectNow:(BOOL)a3;
- (void)_scheduleNowPlayingRefreshForReason:(id)a3 isPlaying:(id)a4;
- (void)_setCollectingContext:(BOOL)a3;
- (void)_setDelegate:(id)a3;
- (void)_startPeriodicContextFetchFromNearbyDevices;
- (void)_stopPeriodicContextFetchFromNearbyDevices;
- (void)_unregisterForBGUpdates;
- (void)_updateBackgroundContextIfMusicPersonalizationTokenChanged;
- (void)_updateDeviceProblemsWithContext:(id)a3 token:(int)a4 completion:(id)a5;
- (void)_updateHomeAnnouncementWithContext:(id)a3 supplementalSnapshot:(id)a4 completion:(id)a5;
- (void)_updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:(BOOL)a3 completion:(id)a4;
- (void)_updateMusicPersonalizationTokenWithContext:(id)a3 completion:(id)a4;
- (void)_updateNavStatusWithContext:(id)a3 completion:(id)a4;
- (void)_updateNowPlayingInfoWithContext:(id)a3 completion:(id)a4;
- (void)_updatePlaybackDevicesWithContext:(id)a3 completion:(id)a4;
- (void)_updateSimpleThingsWithContext:(id)a3 completion:(id)a4;
- (void)_updateSingleUserMusicPersonalizationTokenFromKeychainWithCompletion:(id)a3;
- (void)contextCollectorChangedToDevicesWithIdentifiers:(id)a3 localDeviceIsCollector:(BOOL)a4;
- (void)dealloc;
- (void)deviceContextConnection:(id)a3 getLocalDeviceContextWithCompletion:(id)a4;
- (void)deviceContextConnectionDidInvalidate:(id)a3;
- (void)getAlertContextWithBulletins:(id)a3 externalAlarmSnapshot:(id)a4 timerSnapshot:(id)a5 nlAlertContextCompletion:(id)a6 fullAlertContextCompletion:(id)a7;
- (void)getAppContextForDeviceState:(int64_t)a3 applicationInfos:(id)a4 completion:(id)a5;
- (void)getBackgroundContext:(id)a3;
- (void)getContextIncludingKeys:(id)a3 excludingMandatoryKeys:(id)a4 timeOut:(double)a5 localContextCompletion:(id)a6 completion:(id)a7;
- (void)getContextSnapshotForCurrentRequestWithCompletion:(id)a3;
- (void)getContextSnapshotForForeignRequestID:(id)a3 completion:(id)a4;
- (void)getDeviceContextsForKeys:(id)a3 forForeignRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6;
- (void)getDomainObjectFromMessageContext:(id)a3 completion:(id)a4;
- (void)getLocalContextWithPrivacyClass:(int64_t)a3 completion:(id)a4;
- (void)getNowPlayingMediaIsResumable:(id)a3;
- (void)keepReportingNowPlayingTimingEventsHeuristically;
- (void)localContextStore:(id)a3 didUpdateDeviceContext:(id)a4;
- (void)markBulletinAsAcknolwedgedForDomainObject:(id)a3;
- (void)navStatusDidChange:(id)a3;
- (void)nowPlayingObserver:(id)a3 playbackStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5 lastPlayingDate:(id)a6;
- (void)nowPlayingObserverNowPlayingInfoDidChange:(id)a3;
- (void)preheatBackgroundContext;
- (void)pushContextSnapshotForCurrentRequestWithID:(id)a3 toDevice:(id)a4;
- (void)pushMyriadAdvertisementContextToContextCollector:(id)a3 completion:(id)a4;
- (void)pushSCDAAdvertisementContextToContextCollector:(id)a3 completion:(id)a4;
- (void)rapportLink:(id)a3 didReceiveMessage:(id)a4 ofType:(id)a5 fromPeer:(id)a6 completion:(id)a7;
- (void)rapportLinkDidInterrupt:(id)a3;
- (void)rapportLinkDidInvalidate:(id)a3;
- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)reset;
- (void)setDelegate:(id)a3;
- (void)updateBackgroundContextIfHomeKitInfoChanged;
- (void)updateBackgroundContextIfNowPlayingInfoChanged;
@end

@implementation ADContextManager

- (ADContextManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_cancelNowPlayingCoalescingTimer
{
  nowPlayingCoalescingTimer = self->_nowPlayingCoalescingTimer;
  if (nowPlayingCoalescingTimer)
  {
    dispatch_source_cancel(nowPlayingCoalescingTimer);
    v4 = self->_nowPlayingCoalescingTimer;
    self->_nowPlayingCoalescingTimer = 0;

    coalescedNowPlayingUpdateSources = self->_coalescedNowPlayingUpdateSources;
    self->_coalescedNowPlayingUpdateSources = 0;
  }
}

- (void)_registerForBGUpdates
{
  if (!self->_registeredForContextUpdates)
  {
    self->_registeredForContextUpdates = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"navStatusDidChange:" name:AFPreferencesNavStatusDidChangeNotification object:0];
    [v3 addObserver:self selector:"updateBackgroundContextIfHomeKitInfoChanged" name:@"ADCurrentHomeKitHomeChanged" object:0];
    [v3 addObserver:self selector:"_callStateDidChange:" name:@"ADCallStateDidChangeNotification" object:0];
    [v3 addObserver:self selector:"_playbackDevicesDidChange:" name:@"ADCompanionServicePlaybackDevicesDidChangeNotification" object:0];
    v4 = +[SOMediaNowPlayingObserver defaultObserver];
    [v4 addListener:self];

    if (((AFIsHorseman() & 1) != 0 || AFIsATV()) && self->_deviceProblemsRegistrationToken == -1)
    {
      LODWORD(out_token) = -1;
      objc_initWeak(location, self);
      bgContextQueue = self->_bgContextQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100111D00;
      handler[3] = &unk_100519768;
      objc_copyWeak(&v18, location);
      if (!notify_register_dispatch("com.apple.sharing.problems", &out_token, bgContextQueue, handler))
      {
        self->_deviceProblemsRegistrationToken = out_token;
      }

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);
    }

    if (self->_musicPersonalizationTokenRegistrationToken == -1)
    {
      v16 = -1;
      objc_initWeak(&out_token, self);
      v6 = self->_bgContextQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100111D50;
      v13[3] = &unk_100519768;
      objc_copyWeak(&v14, &out_token);
      v7 = AFCachedFusePersonalizationTokenChanged;
      if (notify_register_dispatch(AFCachedFusePersonalizationTokenChanged, &v16, v6, v13))
      {
        v8 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *location = 136315394;
          *&location[4] = "[ADContextManager _registerForBGUpdates]";
          v20 = 2080;
          v21 = v7;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Could not register for %s notification", location, 0x16u);
        }
      }

      else
      {
        self->_musicPersonalizationTokenRegistrationToken = v16;
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&out_token);
    }

    if (+[AFFeatureFlags isAnnounceEnabled])
    {
      objc_initWeak(location, self);
      homeAnnouncementContextAdaptor = self->_homeAnnouncementContextAdaptor;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000775C;
      v11[3] = &unk_100511FE8;
      v11[4] = self;
      objc_copyWeak(&v12, location);
      [(ADHomeAnnouncementContextAdaptor *)homeAnnouncementContextAdaptor registerSnapshotUpdater:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(location);
    }

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *location = 136315138;
      *&location[4] = "[ADContextManager _registerForBGUpdates]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s observing notifications", location, 0xCu);
    }
  }
}

- (BOOL)_inlineUpdatePhoneState
{
  v3 = +[ADCommandCenter sharedCommandCenter];
  v4 = [v3 _isInCall];
  v5 = [v3 _hasIncomingCall];
  v6 = [(AFInstanceContext *)self->_instanceContext supportsTelephony];
  v7 = objc_alloc_init(SAPhoneCallState);
  [v7 setActive:v6 & v4];
  [v7 setIncoming:v6 & v5];
  v8 = [(ADBackgroundContextCache *)self->_bgContext phoneCallState];
  if (v7 | v8)
  {
    v9 = [v7 isEqual:v8] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [NSNumber numberWithBool:v9];
    v13 = [NSNumber numberWithBool:v6 & v4];
    v14 = [NSNumber numberWithBool:v6 & v5];
    *buf = 136315906;
    v17 = "[ADContextManager _inlineUpdatePhoneState]";
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #callState callState did change: %@, active: %@, incoming: %@", buf, 0x2Au);
  }

  if (v9)
  {
    [(ADBackgroundContextCache *)self->_bgContext setPhoneCallState:v7];
  }

  return v9;
}

- (BOOL)_inlineUpdateCurrentHomeKitHome
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10010CAC0;
  v15 = sub_10010CAD0;
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000952C;
  block[3] = &unk_10051E1C8;
  block[4] = &v11;
  dispatch_sync(qword_100590140, block);
  v3 = v12[5];
  _Block_object_dispose(&v11, 8);

  v4 = [v3 absoluteString];

  if ([v4 length])
  {
    v5 = objc_alloc_init(SAHACurrentHome);
    [v5 setCurrentHomeIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ADBackgroundContextCache *)self->_bgContext currentHome];
  v7 = v6;
  if (v5 | v6 && ([v6 isEqual:v5] & 1) == 0)
  {
    [(ADBackgroundContextCache *)self->_bgContext setCurrentHome:v5];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_fetchContextSnapshotForCurrentRequest
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    currentRequestInfoUUID = self->_currentRequestInfoUUID;
    *buf = 136315394;
    v38 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]";
    v39 = 2112;
    v40 = currentRequestInfoUUID;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s _currentRequestInfoUUID = %@", buf, 0x16u);
  }

  v4 = self->_currentRequestInfoUUID;
  self->_contextSnapshotFetchTimedOut = 0;
  +[NSUUID UUID];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000E5B4;
  v33[3] = &unk_100514C98;
  v5 = v33[4] = self;
  v34 = v5;
  v6 = v4;
  v35 = v6;
  v7 = objc_retainBlock(v33);
  (v7[2])(v7, &__NSArray0__struct);
  v8 = self->_analytics;
  v9 = mach_absolute_time();
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  deviceCircleManager = self->_deviceCircleManager;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001019C;
  v30[3] = &unk_100511D98;
  v12 = v8;
  v31 = v12;
  v32 = v9;
  [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v30];
  [(ADContextManager *)self _logFetchLocalContextStarted:v5];
  [(ADContextManager *)self _logContextCollectorFetchStarted:v5];
  if (AFSupportsHALOnDemandRapportConnection())
  {
    v13 = 3.6;
  }

  else
  {
    v13 = 1.6;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v20 = v14;
    v21 = [NSNumber numberWithDouble:v13];
    *buf = 136315394;
    v38 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]";
    v39 = 2112;
    v40 = v21;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s #hal context fetch timeout value: %@", buf, 0x16u);
  }

  v36 = AFDeviceContextKeyAll;
  v15 = [NSArray arrayWithObjects:&v36 count:1];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100010DD0;
  v27[3] = &unk_100511DC0;
  v27[4] = self;
  v29 = v7;
  v28 = v5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100014268;
  v22[3] = &unk_100511F98;
  v25 = v29;
  v26 = Milliseconds;
  v22[4] = self;
  v23 = v12;
  v24 = v28;
  v16 = v28;
  v17 = v12;
  v18 = v29;
  [(ADContextManager *)self getContextIncludingKeys:v15 excludingMandatoryKeys:0 timeOut:v27 localContextCompletion:v22 completion:v13];
}

- (void)_enumerateDeviceContextConnectionsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    deviceContextConnections = self->_deviceContextConnections;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100109234;
    v7[3] = &unk_1005123A8;
    v8 = v4;
    [(NSMutableSet *)deviceContextConnections enumerateObjectsUsingBlock:v7];
  }
}

- (void)_removeDeviceContextConnection:(id)a3
{
  deviceContextConnections = self->_deviceContextConnections;
  v4 = a3;
  [(NSMutableSet *)deviceContextConnections removeObject:v4];
  [v4 invalidate];
}

- (void)_addDeviceContextConnection:(id)a3
{
  v4 = a3;
  deviceContextConnections = self->_deviceContextConnections;
  v8 = v4;
  if (!deviceContextConnections)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_deviceContextConnections;
    self->_deviceContextConnections = v6;

    v4 = v8;
    deviceContextConnections = self->_deviceContextConnections;
  }

  [(NSMutableSet *)deviceContextConnections addObject:v4];
}

- (void)_handleHomeAnnouncementSnapshotUpdate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[ADContextManager _handleHomeAnnouncementSnapshotUpdate:]";
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s snapshot = %@", buf, 0x16u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100109444;
  v6[3] = &unk_10051B778;
  v6[4] = self;
  [(ADContextManager *)self _updateHomeAnnouncementWithContext:&off_1005341F8 supplementalSnapshot:v4 completion:v6];
}

- (void)_updateHomeAnnouncementWithContext:(id)a3 supplementalSnapshot:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADContextManager _updateHomeAnnouncementWithContext:supplementalSnapshot:completion:]";
    v22 = 2112;
    v23 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s supplementalSnapshot = %@", buf, 0x16u);
  }

  [(AFAnalytics *)self->_analytics logEventWithType:4528 context:v8];
  [(AFAnalytics *)self->_analytics _ad_contextLoggerWithEventType:4529 context:v8 completion:v10];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100109724;
  v18[3] = &unk_100512380;
  v12 = v18[4] = self;
  v19 = v12;
  v13 = objc_retainBlock(v18);
  v14 = v13;
  if (v9)
  {
    (v13[2])(v13, v9);
  }

  else
  {
    homeAnnouncementContextAdaptor = self->_homeAnnouncementContextAdaptor;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100109990;
    v16[3] = &unk_100512380;
    v16[4] = self;
    v17 = v13;
    [(ADHomeAnnouncementContextAdaptor *)homeAnnouncementContextAdaptor getSnapshotWithCompletion:v16];
  }
}

- (void)pushSCDAAdvertisementContextToContextCollector:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 contextData];
  [v7 contextFetchDelay];
  v10 = v9;

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(ADContextManager *)self localContextStore];
      objc_initWeak(&location, v11);

      objc_initWeak(&from, self);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100109CD8;
      block[3] = &unk_100512358;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(v19, &location);
      v16 = v8;
      v17 = v6;
      v19[1] = v10;
      dispatch_async(queue, block);

      objc_destroyWeak(v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      goto LABEL_9;
    }

    v13 = @"Invalid context data type";
  }

  else
  {
    v13 = @"Nil Myriad advertisement context";
  }

  v14 = [AFError errorWithCode:30 description:v13];
  if (v6)
  {
    (*(v6 + 2))(v6, 0, v14);
  }

LABEL_9:
}

- (void)pushMyriadAdvertisementContextToContextCollector:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 contextData];
  [v7 contextFetchDelay];
  v10 = v9;

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(ADContextManager *)self localContextStore];
      objc_initWeak(&location, v11);

      objc_initWeak(&from, self);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10010A204;
      block[3] = &unk_100512358;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(v19, &location);
      v16 = v8;
      v17 = v6;
      v19[1] = v10;
      dispatch_async(queue, block);

      objc_destroyWeak(v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      goto LABEL_9;
    }

    v13 = @"Invalid context data type";
  }

  else
  {
    v13 = @"Nil Myriad advertisement context";
  }

  v14 = [AFError errorWithCode:30 description:v13];
  if (v6)
  {
    (*(v6 + 2))(v6, 0, v14);
  }

LABEL_9:
}

- (void)_playbackDevicesDidChange:(id)a3
{
  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A5E8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(bgContextQueue, block);
}

- (void)_updatePlaybackDevicesWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(AFAnalytics *)self->_analytics _ad_contextLoggerWithEventType:4524 context:v6 completion:a4];
  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A804;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(bgContextQueue, block);
}

- (void)_callStateDidChange:(id)a3
{
  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010AAB8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(bgContextQueue, block);
}

- (void)_updateDeviceProblemsWithContext:(id)a3 token:(int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    out_token = 136315394;
    v23 = "[ADContextManager _updateDeviceProblemsWithContext:token:completion:]";
    v24 = 1024;
    LODWORD(v25) = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s token = %d", &out_token, 0x12u);
  }

  [(AFAnalytics *)self->_analytics logEventWithType:4509 context:v8];
  v11 = [(AFAnalytics *)self->_analytics _ad_contextLoggerWithEventType:4510 context:v8 completion:v9];
  state64 = 0;
  if (a4 == -1)
  {
    out_token = -1;
    state = notify_register_check("com.apple.sharing.problems", &out_token);
    if (!state)
    {
      state = notify_get_state(out_token, &state64);
      notify_cancel(out_token);
    }
  }

  else
  {
    state = notify_get_state(a4, &state64);
  }

  v13 = AFSiriLogContextDaemon;
  if (state)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      out_token = 136315394;
      v23 = "[ADContextManager _updateDeviceProblemsWithContext:token:completion:]";
      v24 = 1024;
      LODWORD(v25) = state;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s could not get device problem state. notify.h status = %u", &out_token, 0x12u);
    }

    goto LABEL_64;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    out_token = 136315394;
    v23 = "[ADContextManager _updateDeviceProblemsWithContext:token:completion:]";
    v24 = 2048;
    v25 = state64;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s state = %llu", &out_token, 0x16u);
  }

  if (!state64)
  {
    v14 = 0;
    goto LABEL_59;
  }

  v14 = objc_alloc_init(SAErrorIndicatorStatus);
  v15 = objc_alloc_init(NSMutableArray);
  v16 = v15;
  v17 = state64;
  if ((state64 & 2) != 0)
  {
    [v15 addObject:SAErrorIndicatorStatusValueICloudProblemValue];
    v17 = state64;
    if ((state64 & 4) == 0)
    {
LABEL_15:
      if ((v17 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((state64 & 4) == 0)
  {
    goto LABEL_15;
  }

  [v16 addObject:SAErrorIndicatorStatusValueITunesProblemValue];
  v17 = state64;
  if ((state64 & 8) == 0)
  {
LABEL_16:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v16 addObject:SAErrorIndicatorStatusValueHomeKitProblemValue];
  v17 = state64;
  if ((state64 & 0x10) == 0)
  {
LABEL_17:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v16 addObject:SAErrorIndicatorStatusValueWiFiProblemValue];
  v17 = state64;
  if ((state64 & 0x20) == 0)
  {
LABEL_18:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v14 setDeviceFixingProblems:1];
  v17 = state64;
  if ((state64 & 0x40) == 0)
  {
LABEL_19:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v16 addObject:SAErrorIndicatorStatusValueWiFiPerformanceProblemValue];
  v17 = state64;
  if ((state64 & 0x80) == 0)
  {
LABEL_20:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v16 addObject:SAErrorIndicatorStatusValueInternetProblemValue];
  v17 = state64;
  if ((state64 & 0x100) == 0)
  {
LABEL_21:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v16 addObject:SAErrorIndicatorStatusValueHardwareProblemValue];
  v17 = state64;
  if ((state64 & 0x200) == 0)
  {
LABEL_22:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v16 addObject:SAErrorIndicatorStatusValueBluetoothProblemValue];
  v17 = state64;
  if ((state64 & 0x400) == 0)
  {
LABEL_23:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v16 addObject:SAErrorIndicatorStatusValueThermalProblemValue];
  v17 = state64;
  if ((state64 & 0x800) == 0)
  {
LABEL_24:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v16 addObject:SAErrorIndicatorStatusValueRecoveryValue];
  v17 = state64;
  if ((state64 & 0x1000) == 0)
  {
LABEL_25:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v16 addObject:SAErrorIndicatorStatusValueStereoNotFoundValue];
  v17 = state64;
  if ((state64 & 0x2000) == 0)
  {
LABEL_26:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v16 addObject:SAErrorIndicatorStatusValueStereoVersionValue];
  v17 = state64;
  if ((state64 & 0x4000) == 0)
  {
LABEL_27:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v16 addObject:SAErrorIndicatorStatusValueStereoErrorValue];
  v17 = state64;
  if ((state64 & 0x8000) == 0)
  {
LABEL_28:
    if ((v17 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v16 addObject:SAErrorIndicatorStatusValueVPNValue];
  v17 = state64;
  if ((state64 & 0x10000) == 0)
  {
LABEL_29:
    if ((v17 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v16 addObject:SAErrorIndicatorStatusValueWiFi8021xValue];
  v17 = state64;
  if ((state64 & 0x20000) == 0)
  {
LABEL_30:
    if ((v17 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v16 addObject:SAErrorIndicatorStatusValueCDPValue];
  v17 = state64;
  if ((state64 & 0x40000) == 0)
  {
LABEL_31:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v16 addObject:SAErrorIndicatorStatusValueNetworkProfileValue];
  v17 = state64;
  if ((state64 & 0x80000) == 0)
  {
LABEL_32:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v16 addObject:SAErrorIndicatorStatusValueNetworkNotShareableValue];
  LOBYTE(v17) = state64;
  if ((state64 & 0x100000) == 0)
  {
LABEL_33:
    if ((v17 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_56:
    if (![v16 count])
    {
      [v16 addObject:SAErrorIndicatorStatusValueGenericProblemValue];
    }

    goto LABEL_58;
  }

LABEL_55:
  [v16 addObject:SAErrorIndicatorStatusValueNetworkProfileRequiredValue];
  if (state64)
  {
    goto LABEL_56;
  }

LABEL_58:
  [v14 setValues:v16];

LABEL_59:
  v18 = [(ADBackgroundContextCache *)self->_bgContext errorIndicatorStatus];
  v19 = v18;
  if (v14 | v18 && ([v18 isEqual:v14] & 1) == 0)
  {
    [(ADBackgroundContextCache *)self->_bgContext setErrorIndicatorStatus:v14];
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v11[2](v11, v20);

LABEL_64:
}

- (void)_handleDeviceProblemsChangedWithToken:(int)a3
{
  v3 = *&a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[ADContextManager _handleDeviceProblemsChangedWithToken:]";
    v9 = 1024;
    v10 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s token = %d", buf, 0x12u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010B29C;
  v6[3] = &unk_10051B778;
  v6[4] = self;
  [(ADContextManager *)self _updateDeviceProblemsWithContext:&off_100534180 token:v3 completion:v6];
}

- (void)updateBackgroundContextIfNowPlayingInfoChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B400;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_bgContextQueue, v3);
}

- (void)_reallyUpdateBackgroundContextIfNowPlayingInfoChangedForReason:(id)a3
{
  v4 = a3;
  if (![(__CFString *)v4 length])
  {

    v4 = @"poll";
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADContextManager _reallyUpdateBackgroundContextIfNowPlayingInfoChangedForReason:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v8 = @"source";
  v9 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B574;
  v7[3] = &unk_10051B778;
  v7[4] = self;
  [(ADContextManager *)self _updateNowPlayingInfoWithContext:v6 completion:v7];
}

- (void)_updateNowPlayingInfoWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dispatch_group_create();
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADContextManager _updateNowPlayingInfoWithContext:completion:]";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s group=%p canceling _nowPlayingCoalescingTimer because we are starting an update now", buf, 0x16u);
  }

  [(ADContextManager *)self _cancelNowPlayingCoalescingTimer];
  v10 = [(AFAnalytics *)self->_analytics _ad_contextLoggerWithEventType:4506 context:v7 completion:v6];

  [(AFAnalytics *)self->_analytics logEventWithType:4505 context:v7];
  v13 = v8;
  v11 = v10;
  v12 = v8;
  AFGetNowPlayingQueueState();
}

- (void)_scheduleNowPlayingRefreshForReason:(id)a3 isPlaying:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADContextManager _scheduleNowPlayingRefreshForReason:isPlaying:]";
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s reason = %@, isPlaying = %@", buf, 0x20u);
  }

  if (v7 && mach_absolute_time() <= self->_ignoreNowPlayingUpdatesAfterTimestamp)
  {
    v19 = kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey;
    v20 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [(AFAnalytics *)self->_analytics logEventWithType:2801 context:v9];
  }

  if (!self->_nowPlayingCoalescingTimer)
  {
    v10 = [[NSMutableSet alloc] initWithCapacity:2];
    coalescedNowPlayingUpdateSources = self->_coalescedNowPlayingUpdateSources;
    self->_coalescedNowPlayingUpdateSources = v10;

    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_bgContextQueue);
    nowPlayingCoalescingTimer = self->_nowPlayingCoalescingTimer;
    self->_nowPlayingCoalescingTimer = v12;

    v14 = self->_nowPlayingCoalescingTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10010BC00;
    handler[3] = &unk_10051DFE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    v15 = self->_nowPlayingCoalescingTimer;
    v16 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_nowPlayingCoalescingTimer);
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[ADContextManager _scheduleNowPlayingRefreshForReason:isPlaying:]";
      v23 = 2048;
      v24 = 0x3FB999999999999ALL;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Updating NowPlaying info in %.4g seconds", buf, 0x16u);
    }
  }

  if (![(__CFString *)v6 length])
  {

    v6 = @"UNKNOWN";
  }

  [(NSMutableSet *)self->_coalescedNowPlayingUpdateSources addObject:v6];
}

- (void)nowPlayingObserverNowPlayingInfoDidChange:(id)a3
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADContextManager nowPlayingObserverNowPlayingInfoDidChange:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s nowPlayingObserver = %@", buf, 0x16u);
  }

  bgContextQueue = self->_bgContextQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010BE5C;
  v8[3] = &unk_10051D770;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(bgContextQueue, v8);
}

- (void)nowPlayingObserver:(id)a3 playbackStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5 lastPlayingDate:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = AFMediaPlaybackStateGetName();
    v15 = AFMediaPlaybackStateGetName();
    *buf = 136316162;
    v19 = "[ADContextManager nowPlayingObserver:playbackStateDidChangeFrom:to:lastPlayingDate:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s nowPlayingObserver = %@, fromState = %@, toState = %@, lastPlayingDate = %@", buf, 0x34u);
  }

  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C050;
  block[3] = &unk_10051C678;
  block[4] = self;
  block[5] = a5;
  block[6] = a2;
  dispatch_async(bgContextQueue, block);
}

- (void)navStatusDidChange:(id)a3
{
  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C148;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(bgContextQueue, block);
}

- (void)_updateNavStatusWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = self->_analytics;
  v9 = [(AFAnalytics *)v8 _ad_contextLoggerWithEventType:4504 context:v7 completion:a4];
  [(AFAnalytics *)v8 logEventWithType:4503 context:v7];
  [(AFAnalytics *)v8 logEventWithType:4521 context:v7];
  v10 = [(ADBackgroundContextCache *)self->_bgContext navStatus];
  v11 = [(ADBackgroundContextCache *)self->_bgContext localSearchGetNavigationStatusCompleted];
  v12 = +[AFPreferences sharedPreferences];
  v13 = [v12 currentNavigationState];

  IsNavigating = AFNavigationStateIsNavigating();
  v15 = objc_alloc_init(SANavStatus);
  if (v13 <= 4)
  {
    v4 = **(&off_100516D78 + v13);
  }

  [v15 setStatusValue:v4];

  v36 = v10;
  if (v10 | v15 && ([v15 isEqual:v10] & 1) == 0)
  {
    [(ADBackgroundContextCache *)self->_bgContext setNavStatus:v15];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = IsNavigating;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v46[0] = v7;
    v44 = @"isNavigating";
    v33 = [NSNumber numberWithBool:1];
    v45 = v33;
    [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v18 = v34 = v9;
    v46[1] = v18;
    [NSArray arrayWithObjects:v46 count:2];
    v19 = v7;
    v20 = self;
    v21 = v8;
    v22 = v15;
    v23 = IsNavigating;
    v25 = v24 = v11;
    v26 = AFAnalyticsContextsMerge();

    v11 = v24;
    IsNavigating = v23;
    v15 = v22;
    v8 = v21;
    self = v20;
    v7 = v19;

    v9 = v34;
  }

  else
  {
    v26 = v7;
  }

  [(AFAnalytics *)v8 logEventWithType:4522 context:v26];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10010C668;
  v39[3] = &unk_100512290;
  v27 = v11;
  v40 = v27;
  v41 = self;
  v28 = v9;
  v42 = v28;
  v43 = v16;
  v29 = objc_retainBlock(v39);
  v30 = v29;
  if (IsNavigating)
  {
    v31 = v36;
    if (v27)
    {
      (v29[2])(v29, v27);
    }

    else
    {
      v35 = objc_alloc_init(SALocalSearchGetNavigationStatus);
      v32 = +[ADCommandCenter sharedCommandCenter];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10010C700;
      v37[3] = &unk_1005122B8;
      v37[4] = self;
      v38 = v30;
      [v32 _sendServiceCommand:v35 completion:v37];
    }
  }

  else
  {
    (v29[2])(v29, 0);
    v31 = v36;
  }
}

- (void)updateBackgroundContextIfHomeKitInfoChanged
{
  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C97C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(bgContextQueue, block);
}

- (void)_updateBackgroundContextIfMusicPersonalizationTokenChanged
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10010CB4C;
  v2[3] = &unk_10051B778;
  v2[4] = self;
  [(ADContextManager *)self _updateMusicPersonalizationTokenWithContext:&off_100534108 completion:v2];
}

- (void)_updateMusicPersonalizationTokenWithContext:(id)a3 completion:(id)a4
{
  analytics = self->_analytics;
  v7 = a4;
  v8 = a3;
  [(AFAnalytics *)analytics logEventWithType:4515 context:v8];
  v9 = [(AFAnalytics *)self->_analytics _ad_contextLoggerWithEventType:4516 context:v8 completion:v7];

  [off_10058B438() sharedProvider];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010CD2C;
  v12[3] = &unk_1005121C8;
  v13 = v12[4] = self;
  v14 = v9;
  v10 = v9;
  v11 = v13;
  [v11 getTokenForcingRefresh:0 completion:v12];
}

- (void)_updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  [off_10058B438() sharedProvider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010D3C4;
  v10 = v9[3] = &unk_100512178;
  v11 = self;
  v13 = a3;
  v12 = v6;
  v7 = v6;
  v8 = v10;
  [v8 getAllTokensForAssistantForcingRefresh:0 completion:v9];
}

- (id)_makeUserTokenStatusWithICTokenStatus:(id)a3 icError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SAUserTokenStatus);
  if (v6)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    [v7 setErrorCode:v8];
  }

  else
  {
    v9 = [v5 lastError];
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
    [v7 setErrorCode:v10];

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 shouldExcludeFromBackgroundRefresh]);
    [v7 setShouldExcludeFromBackgroundRefresh:v11];

    [v5 lastUpdateAttemptTime];
    v8 = [NSNumber numberWithDouble:?];
    [v7 setLastUpdateAttemptTime:v8];
  }

  return v7;
}

- (void)_updateSingleUserMusicPersonalizationTokenFromKeychainWithCompletion:(id)a3
{
  v7 = a3;
  v4 = AFKeychainValueForAccountAndKey();
  if ([v4 length])
  {
    v5 = [[NSString alloc] initWithData:v4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ADBackgroundContextCache *)self->_bgContext musicPersonalizationToken];
  if (([v6 isEqual:v5] & 1) == 0)
  {
    [(ADBackgroundContextCache *)self->_bgContext setMusicPersonalizationToken:v5];
    v7[2](v7, 1);
  }
}

- (void)_handleContextSnapshotPush:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"request_id"];
  if (v8)
  {
    if (!self->_contextSnapshotByForeignRequestID)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      contextSnapshotByForeignRequestID = self->_contextSnapshotByForeignRequestID;
      self->_contextSnapshotByForeignRequestID = v9;
    }

    v11 = objc_alloc_init(NSMutableArray);
    v12 = [(ADDeviceCircleManager *)self->_deviceCircleManager localPeerInfo];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v36 = "[ADContextManager _handleContextSnapshotPush:completion:]";
      v37 = 2112;
      v38 = v8;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal received context_snapshot_push for request %@:", buf, 0x16u);
    }

    v14 = [v6 objectForKey:@"context_snapshot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10010E354;
    v32[3] = &unk_100514E80;
    v18 = v12;
    v33 = v18;
    v19 = v11;
    v34 = v19;
    [v15 enumerateKeysAndObjectsUsingBlock:v32];

    v20 = [v6 objectForKey:@"context_snapshot_by_assistant_identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10010E544;
    v29[3] = &unk_100514E80;
    v22 = v18;
    v30 = v22;
    v17 = v19;
    v31 = v17;
    [v21 enumerateKeysAndObjectsUsingBlock:v29];

    v23 = self->_contextSnapshotByForeignRequestID;
    v24 = sub_10000E10C(v17);
    [(NSMutableDictionary *)v23 setObject:v24 forKey:v8];

    v25 = dispatch_time(0, 12000000000);
    queue = self->_queue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10010E734;
    v27[3] = &unk_10051E010;
    v27[4] = self;
    v28 = v8;
    dispatch_after(v25, queue, v27);
    if (v7)
    {
      v7[2](v7, 0);
    }

    goto LABEL_18;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v36 = "[ADContextManager _handleContextSnapshotPush:completion:]";
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s #hal malformed message: missing request ID", buf, 0xCu);
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    v17 = [AFError errorWithCode:11];
    (v7)[2](v7, v17);
LABEL_18:
  }

LABEL_19:
}

- (void)_handlePushContextMessage:(id)a3 fromDeviceWithPeerInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(queue);
  v24 = [(ADContextManager *)self remoteContextStore];
  v12 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v11 fromLocalDevice:0 contextCollectorSource:0];
  v13 = [v11 objectForKey:@"included_context_types_in_request"];
  v14 = [v11 objectForKey:@"excluded_context_keys_in_request"];
  v15 = [v11 objectForKey:@"included_context_types_in_response"];
  v16 = [v11 objectForKey:@"excluded_context_keys_in_response"];
  v17 = [v11 objectForKey:@"prefers_assistant_identifiers"];

  objc_opt_class();
  v18 = 0;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  v19 = [v18 BOOLValue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10010E984;
  v25[3] = &unk_1005167F0;
  v26 = v15;
  v27 = self;
  v31 = v19;
  v28 = v16;
  v29 = objc_alloc_init(NSMutableDictionary);
  v30 = v8;
  v20 = v8;
  v21 = v29;
  v22 = v16;
  v23 = v15;
  [v24 setDeviceContext:v12 includedKeys:v13 excludedKeys:v14 forDeviceWithPeerInfo:v10 completion:v25];
}

- (void)_handleAggregateContextFetchWithMessage:(id)a3 fromDeviceWithPeerInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = +[AFAnalytics sharedAnalytics];
    [v11 logEventWithType:4586 context:0];

    v12 = dispatch_group_create();
    v13 = [v8 objectForKey:@"prefers_assistant_identifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v55 = [v14 BOOLValue];
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x3032000000;
    v92[3] = sub_10010CAC0;
    v92[4] = sub_10010CAD0;
    v93 = 0;
    dispatch_group_enter(v12);
    localContextStore = self->_localContextStore;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10010FC24;
    v89[3] = &unk_100512038;
    v91 = v92;
    group = v12;
    v90 = group;
    [(ADLocalContextStore *)localContextStore getLocalContextWithPrivacyClass:50 completion:v89];
    v87[0] = 0;
    v87[1] = v87;
    v87[2] = 0x3032000000;
    v87[3] = sub_10010CAC0;
    v87[4] = sub_10010CAD0;
    v88 = 0;
    if (!self->_collectingContext && !+[AFFeatureFlags isCrossDeviceTVControlFromWatchEnabled])
    {
      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%s Direct force fetch requested from %@", buf, 0x16u);
      }

      goto LABEL_61;
    }

    v16 = [v8 objectForKey:@"force_fetch_assistant_identifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;

      if (v17)
      {
        v18 = objc_alloc_init(NSMutableSet);
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v83 objects:v101 count:16];
        if (v20)
        {
          v21 = *v84;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v84 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = sub_10001A3B0(*(*(&v83 + 1) + 8 * i));
              if (v23)
              {
                [v18 addObject:v23];
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v83 objects:v101 count:16];
          }

          while (v20);
        }

        if (v18)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
    }

    v24 = [v8 objectForKey:@"forceFetchingContextFrom"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = 0;
      v36 = 1;
LABEL_45:

LABEL_50:
      v38 = [v18 count];
      v39 = AFSiriLogContextDaemon;
      v40 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
      if (v38)
      {
        if (v40)
        {
          *buf = 136315394;
          *&buf[4] = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s #hal Relaying force fetch request from %@", buf, 0x16u);
        }

        dispatch_group_enter(group);
        remoteContextStore = self->_remoteContextStore;
        v42 = [v18 allObjects];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_10010FD0C;
        v71[3] = &unk_100512060;
        v72 = v18;
        v74 = v87;
        v73 = group;
        [(ADRemoteContextStore *)remoteContextStore fetchContextSnapshotFromDevicesWithPeerInfo:v42 completion:v71];
      }

      else if (v36)
      {
        if (v40)
        {
          *buf = 136315394;
          *&buf[4] = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s #hal Regular context fetch request from %@", buf, 0x16u);
        }

        dispatch_group_enter(group);
        v43 = self->_remoteContextStore;
        v98 = AFDeviceContextKeyAll;
        v44 = [NSArray arrayWithObjects:&v98 count:1];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_10010FEA4;
        v68[3] = &unk_100512088;
        v70 = v87;
        v69 = group;
        [(ADRemoteContextStore *)v43 getContextSnapshotIncludingKeys:v44 excludingMandatoryKeys:0 completion:v68];
      }

      else if (v40)
      {
        *buf = 136315394;
        *&buf[4] = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s #hal Direct force fetch requested from %@", buf, 0x16u);
      }

LABEL_61:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v95 = sub_10010CAC0;
      v96 = sub_10010CAD0;
      v97 = 0;
      v45 = [AFSafetyBlock alloc];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100110020;
      v61[3] = &unk_1005120B0;
      v67 = v55;
      v61[4] = self;
      v64 = buf;
      v65 = v92;
      v66 = v87;
      v62 = v9;
      v63 = v10;
      v46 = [v45 initWithBlock:v61];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011066C;
      block[3] = &unk_10051DFE8;
      v48 = v46;
      v60 = v48;
      dispatch_group_notify(group, queue, block);
      v49 = [AFWatchdogTimer alloc];
      v50 = self->_queue;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100110678;
      v57[3] = &unk_10051DFE8;
      v51 = v48;
      v58 = v51;
      v52 = [v49 initWithTimeoutInterval:v50 onQueue:v57 timeoutHandler:0.75];
      v53 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v52;

      [*(*&buf[8] + 40) start];
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(v87, 8);
      _Block_object_dispose(v92, 8);

      goto LABEL_62;
    }

    v25 = v24;

    if (v25)
    {
      v18 = objc_alloc_init(NSMutableSet);
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v79 objects:v100 count:16];
      if (v27)
      {
        v28 = *v80;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v80 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = sub_100188240(*(*(&v79 + 1) + 8 * j));
            if (v30)
            {
              [v18 addObject:v30];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v79 objects:v100 count:16];
        }

        while (v27);
      }

      if (v18)
      {
LABEL_33:
        v54 = v8;
        v24 = [(ADDeviceCircleManager *)self->_deviceCircleManager localPeerInfo];
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v31 = [v18 copy];
        v32 = [v31 countByEnumeratingWithState:&v75 objects:v99 count:16];
        if (v32)
        {
          v33 = *v76;
          do
          {
            for (k = 0; k != v32; k = k + 1)
            {
              if (*v76 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v35 = *(*(&v75 + 1) + 8 * k);
              if ((sub_10001A834(v35, v24) & 1) != 0 || sub_10001A834(v35, v9))
              {
                [v18 removeObject:v35];
              }
            }

            v32 = [v31 countByEnumeratingWithState:&v75 objects:v99 count:16];
          }

          while (v32);
        }

        v8 = v54;
        v36 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v18 = 0;
    }

    v36 = 1;
    goto LABEL_50;
  }

LABEL_62:
}

- (void)rapportLink:(id)a3 didReceiveMessage:(id)a4 ofType:(id)a5 fromPeer:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v13 idsDeviceUniqueIdentifier];
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v27 = "[ADContextManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v15;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s type: %@, message: %@, device ID: %@", buf, 0x2Au);
  }

  if (![v12 isEqualToString:@"agg_context_fetch"])
  {
    if ([v12 isEqualToString:@"context_push"])
    {
      if (self->_collectingContext)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001109F8;
        v24[3] = &unk_10051CF08;
        v25 = v14;
        [(ADContextManager *)self _handlePushContextMessage:v11 fromDeviceWithPeerInfo:v13 completion:v24];
        v17 = v25;
LABEL_10:

        goto LABEL_18;
      }

      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "[ADContextManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s #hal Not collecting context. Ignored", buf, 0xCu);
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      else if (!v14)
      {
        goto LABEL_18;
      }

      v19 = 2901;
    }

    else
    {
      if ([v12 isEqualToString:@"context_snapshot_push"])
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100110A14;
        v22[3] = &unk_10051D2F0;
        v23 = v14;
        [(ADContextManager *)self _handleContextSnapshotPush:v11 completion:v22];
        v17 = v23;
        goto LABEL_10;
      }

      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "[ADContextManager rapportLink:didReceiveMessage:ofType:fromPeer:completion:]";
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v15;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Unexpected request to handle message: %@, from device: %@", buf, 0x20u);
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      else if (!v14)
      {
        goto LABEL_18;
      }

      v19 = 2900;
    }

    v21 = [AFError errorWithCode:v19];
    (*(v14 + 2))(v14, 0, v21);

    goto LABEL_18;
  }

  [(ADContextManager *)self _handleAggregateContextFetchWithMessage:v11 fromDeviceWithPeerInfo:v13 completion:v14];
LABEL_18:
}

- (void)rapportLinkDidInvalidate:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADContextManager rapportLinkDidInvalidate:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s ", &v5, 0xCu);
  }

  [(ADContextManager *)self _resetContextLinkAndReconnectNow:0];
}

- (void)rapportLinkDidInterrupt:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADContextManager rapportLinkDidInterrupt:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s ", &v5, 0xCu);
  }

  [(ADContextManager *)self _resetContextLinkAndReconnectNow:1];
}

- (void)_resetContextLinkAndReconnectNow:(BOOL)a3
{
  v3 = a3;
  [(ADRapportLink *)self->_rapportLink removeListener:self];
  [(ADRapportLink *)self->_rapportLink invalidate];
  rapportLink = self->_rapportLink;
  self->_rapportLink = 0;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100110CF4;
  v12[3] = &unk_10051DFE8;
  v12[4] = self;
  v6 = objc_retainBlock(v12);
  v7 = v6;
  if (v3)
  {
    (v6[2])(v6);
  }

  else
  {
    v8 = dispatch_time(0, 20000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100110D68;
    block[3] = &unk_10051E038;
    block[4] = self;
    v11 = v7;
    dispatch_after(v8, queue, block);
  }
}

- (void)localContextStore:(id)a3 didUpdateDeviceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110E4C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)contextCollectorChangedToDevicesWithIdentifiers:(id)a3 localDeviceIsCollector:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110F98;
  block[3] = &unk_10051C890;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)deviceContextConnection:(id)a3 getLocalDeviceContextWithCompletion:(id)a4
{
  if (a4)
  {
    [(ADContextManager *)self getLocalContextWithPrivacyClass:10 completion:?];
  }
}

- (void)deviceContextConnectionDidInvalidate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001111D4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  if (self->_deviceContextServiceListener != a3)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (!AFConnectionHasEntitlement())
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[ADContextManager listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Reject the connection as it's missing entitlement", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v7 = [[ADDeviceContextConnection alloc] initWithQueue:self->_queue xpcConnection:v6 delegate:self];
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100111364;
  v13[3] = &unk_10051E010;
  v13[4] = self;
  v14 = v7;
  v9 = v7;
  dispatch_async(queue, v13);

  v10 = 1;
LABEL_7:

  return v10;
}

- (id)_dataSourceInfoWithProximity:(int64_t)a3 deviceContext:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SADataSourceInfo);
  v7 = SAProximityHintUnknownValue;
  if (a3 > 2999)
  {
    if (a3 == 4000)
    {
      v8 = &SAProximityHintPrimaryValue;
    }

    else
    {
      if (a3 != 3000)
      {
        goto LABEL_11;
      }

      v8 = &SAProximityHintImmediateValue;
    }
  }

  else if (a3 == 1000)
  {
    v8 = &SAProximityHintFarValue;
  }

  else
  {
    if (a3 != 2000)
    {
      goto LABEL_11;
    }

    v8 = &SAProximityHintNearbyValue;
  }

  v9 = *v8;

  v7 = v9;
LABEL_11:
  [v6 setProximityHint:v7];
  v10 = [v5 identifier];
  v11 = [v10 UUIDString];
  [v6 setContextIdentifier:v11];

  v12 = [v5 deviceInfo];

  v13 = [v12 isCommunalDevice];
  v14 = &SASourceDeviceOwnershipCommunalValue;
  if (!v13)
  {
    v14 = &SASourceDeviceOwnershipPersonalValue;
  }

  [v6 setSourceDeviceOwnership:*v14];

  return v6;
}

- (id)_alarmAceObjectFromAlarm:(id)a3 withProximity:(int64_t)a4 inDeviceContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(SAAlarmObject);
  v11 = [v8 alarmURL];
  [v10 setIdentifier:v11];

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 hour]);
  [v10 setHour:v12];

  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 minute]);
  [v10 setMinute:v13];

  v14 = [v8 repeatOptions];
  if (!v14)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v15 = v14;
  v16 = objc_alloc_init(NSMutableArray);
  v17 = v16;
  if (v15)
  {
    [v16 addObject:SAAlarmDayOfWeekMondayValue];
    if ((v15 & 2) == 0)
    {
LABEL_4:
      if ((v15 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v17 addObject:SAAlarmDayOfWeekTuesdayValue];
  if ((v15 & 4) == 0)
  {
LABEL_5:
    if ((v15 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v17 addObject:SAAlarmDayOfWeekWednesdayValue];
  if ((v15 & 8) == 0)
  {
LABEL_6:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v17 addObject:SAAlarmDayOfWeekThursdayValue];
  if ((v15 & 0x10) == 0)
  {
LABEL_7:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [v17 addObject:SAAlarmDayOfWeekSaturdayValue];
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_15:
  [v17 addObject:SAAlarmDayOfWeekFridayValue];
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v15 & 0x40) != 0)
  {
LABEL_17:
    [v17 addObject:SAAlarmDayOfWeekSundayValue];
  }

LABEL_18:
  if ([v17 count])
  {
    v18 = [NSArray arrayWithArray:v17];
  }

  else
  {
    v25 = SAAlarmDayOfWeekNeverValue;
    v18 = [NSArray arrayWithObjects:&v25 count:1];
  }

  v19 = v18;
  [v10 setFrequency:v18];
  v20 = [v8 title];
  [v10 setLabel:v20];

  v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isFiring]);
  [v10 setFiring:v21];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isEnabled]);
  [v10 setEnabled:v22];

  v23 = [(ADContextManager *)self _dataSourceInfoWithProximity:a4 deviceContext:v9];

  [v10 setDataSourceInfo:v23];

  return v10;
}

- (id)_timerAceObjectFromTimer:(id)a3 withProximity:(int64_t)a4 inDeviceContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(SATimerObject);
  v11 = [v8 timerURL];
  [v10 setIdentifier:v11];

  if (![v8 isFiring])
  {
    v13 = [v8 state];
    v12 = 0;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = &SATimerStatePausedValue;
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_13;
        }

        v14 = &SATimerStateRunningValue;
      }
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_13;
      }

      v14 = &SATimerStateStoppedValue;
    }

    else
    {
      v14 = &SATimerStateUndefinedValue;
    }

    v12 = *v14;
    goto LABEL_13;
  }

  v12 = SATimerStateFiringValue;
  [v10 setIsFiring:&__kCFBooleanTrue];
LABEL_13:
  [v10 setState:v12];
  if ([v8 state] == 1 || objc_msgSend(v8, "state") == 2)
  {
    [v8 fireTimeInterval];
    v15 = [NSNumber numberWithDouble:?];
    [v10 setTimerValue:v15];
  }

  if ([v8 state] == 3)
  {
    v16 = [v8 fireDate];
    [v16 timeIntervalSinceNow];
    v17 = [NSNumber numberWithDouble:?];
    [v10 setTimerValue:v17];
  }

  v18 = [v8 title];
  [v10 setTitle:v18];

  v19 = SATimerTypeUndefinedValue;
  v20 = [v8 type];
  if (v20 == 1)
  {
    v21 = &SATimerTypeDefaultValue;
  }

  else
  {
    if (v20 != 2)
    {
      goto LABEL_23;
    }

    v21 = &SATimerTypeSleepTimerValue;
  }

  v22 = *v21;

  v19 = v22;
LABEL_23:
  [v10 setType:v19];
  v23 = [(ADContextManager *)self _dataSourceInfoWithProximity:a4 deviceContext:v9];

  [v10 setDataSourceInfo:v23];

  return v10;
}

- (void)_setCollectingContext:(BOOL)a3
{
  if (self->_collectingContext != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADContextManager _setCollectingContext:]";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #hal %d", &v7, 0x12u);
    }

    self->_collectingContext = v3;
    remoteContextStore = self->_remoteContextStore;
    if (v3)
    {
      [(ADRemoteContextStore *)remoteContextStore startCollectingContext];
    }

    else
    {
      [(ADRemoteContextStore *)remoteContextStore stopCollectingContext];
    }
  }
}

- (void)_unregisterForBGUpdates
{
  if (self->_registeredForContextUpdates)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADContextManager _unregisterForBGUpdates]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s No longer observing notifications", &v8, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:AFPreferencesNavStatusDidChangeNotification object:0];
    [v4 removeObserver:self name:@"ADCurrentHomeKitHomeChanged" object:0];
    [v4 removeObserver:self name:@"ADCallStateDidChangeNotification" object:0];
    v5 = +[SOMediaNowPlayingObserver defaultObserver];
    [v5 removeListener:self];

    deviceProblemsRegistrationToken = self->_deviceProblemsRegistrationToken;
    if (deviceProblemsRegistrationToken != -1)
    {
      notify_cancel(deviceProblemsRegistrationToken);
      self->_deviceProblemsRegistrationToken = -1;
    }

    musicPersonalizationTokenRegistrationToken = self->_musicPersonalizationTokenRegistrationToken;
    if (musicPersonalizationTokenRegistrationToken != -1)
    {
      notify_cancel(musicPersonalizationTokenRegistrationToken);
      self->_musicPersonalizationTokenRegistrationToken = -1;
    }

    [(ADHomeAnnouncementContextAdaptor *)self->_homeAnnouncementContextAdaptor unregisterSnapshotUpdater];
    self->_registeredForContextUpdates = 0;
  }
}

- (void)getBackgroundContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADContextManager getBackgroundContext:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100111ED0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(self->_bgContextQueue, v7);
}

- (void)preheatBackgroundContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADContextManager preheatBackgroundContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADContextManager *)self getBackgroundContext:0];
}

- (void)_getBackgroundContext:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v6 = self->_analytics;
  v49 = @"group";
  v7 = [NSNumber numberWithLong:v5];
  v50 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];

  [(AFAnalytics *)v6 logEventWithType:4501 context:v8];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    bgContext = self->_bgContext;
    v44 = "[ADContextManager _getBackgroundContext:]";
    *buf = 136315650;
    if (bgContext)
    {
      v11 = "(cache read)";
    }

    else
    {
      v11 = "(regenerating all values)";
    }

    v45 = 2048;
    v46 = v5;
    v47 = 2080;
    v48 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Start ctxg=%p %s", buf, 0x20u);
  }

  if (!self->_bgContext)
  {
    v12 = objc_alloc_init(ADBackgroundContextCache);
    v13 = self->_bgContext;
    self->_bgContext = v12;

    [(ADContextManager *)self _registerForBGUpdates];
    if (AFDeviceSupportsNavigation())
    {
      dispatch_group_enter(v5);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1001124C8;
      v41[3] = &unk_10051B778;
      v42 = v5;
      [(ADContextManager *)self _updateNavStatusWithContext:v8 completion:v41];
    }

    dispatch_group_enter(v5);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10011258C;
    v39[3] = &unk_10051B778;
    v14 = v5;
    v40 = v14;
    [(ADContextManager *)self _updateNowPlayingInfoWithContext:v8 completion:v39];
    dispatch_group_enter(v14);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100112650;
    v37[3] = &unk_10051B778;
    v15 = v14;
    v38 = v15;
    [(ADContextManager *)self _updatePlaybackDevicesWithContext:v8 completion:v37];
    dispatch_group_enter(v15);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100112714;
    v35[3] = &unk_10051B778;
    v16 = v15;
    v36 = v16;
    [(ADContextManager *)self _updateSimpleThingsWithContext:v8 completion:v35];
    if ((AFIsHorseman() & 1) != 0 || AFIsATV())
    {
      dispatch_group_enter(v16);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001127D8;
      v33[3] = &unk_10051B778;
      v34 = v16;
      [(ADContextManager *)self _updateDeviceProblemsWithContext:v8 token:0xFFFFFFFFLL completion:v33];
    }

    dispatch_group_enter(v16);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10011289C;
    v31[3] = &unk_10051B778;
    v17 = v16;
    v32 = v17;
    [(ADContextManager *)self _updateMusicPersonalizationTokenWithContext:v8 completion:v31];
    if (+[AFFeatureFlags isAnnounceEnabled])
    {
      dispatch_group_enter(v17);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100112960;
      v29[3] = &unk_10051B778;
      v30 = v17;
      [(ADContextManager *)self _updateHomeAnnouncementWithContext:v8 supplementalSnapshot:0 completion:v29];
    }
  }

  bgContextQueue = self->_bgContextQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100112A24;
  v23[3] = &unk_10051D2A0;
  v24 = v6;
  v25 = v8;
  v26 = v5;
  v27 = self;
  v28 = v4;
  v19 = v4;
  v20 = v5;
  v21 = v8;
  v22 = v6;
  dispatch_group_notify(v20, bgContextQueue, v23);
}

- (void)_updateSimpleThingsWithContext:(id)a3 completion:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = self->_analytics;
  [(AFAnalytics *)v7 logEventWithType:4519 context:v16];
  if ([(AFInstanceContext *)self->_instanceContext supportsTelephony])
  {
    [(AFAnalytics *)v7 logEventWithType:4517 context:v16];
    v8 = [(ADContextManager *)self _inlineUpdatePhoneState];
    v9 = v8;
    v10 = sub_1000090A4(v16, v8);
    [(AFAnalytics *)v7 logEventWithType:4518 context:v10];
  }

  else
  {
    v9 = 0;
  }

  [(AFAnalytics *)self->_analytics logEventWithType:4511 context:v16];
  v11 = [(ADContextManager *)self _inlineUpdateCurrentHomeKitHome];
  v12 = v11;
  analytics = self->_analytics;
  v14 = sub_1000090A4(v16, v11);
  [(AFAnalytics *)analytics logEventWithType:4512 context:v14];

  v15 = sub_1000090A4(v16, v9 | v12);
  [(AFAnalytics *)v7 logEventWithType:4520 context:v15];

  if (v6)
  {
    v6[2](v6, v9 | v12);
  }
}

- (void)_logForceFetchWithStartTime:(unint64_t)a3 forceFetchCount:(unint64_t)a4 forceFetchError:(id)a5 halMetricsId:(id)a6
{
  v10 = a5;
  v11 = a6;
  metricsQueue = self->_metricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112D9C;
  block[3] = &unk_10051D628;
  block[4] = self;
  v16 = v11;
  v18 = a3;
  v19 = a4;
  v17 = v10;
  v13 = v10;
  v14 = v11;
  dispatch_async(metricsQueue, block);
}

- (void)_logForceFetchContextFailedWithHALMetricsId:(id)a3 contextId:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 domain];
  LODWORD(a3) = [v10 isEqualToString:kAFAssistantErrorDomain];

  if (a3)
  {
    v11 = [v7 code];
    if (v11 == 1013)
    {
      v12 = 3;
    }

    else
    {
      v12 = v11 == 3102;
    }
  }

  else
  {
    v12 = 2 * (v7 == 0);
  }

  v13 = objc_alloc_init(HALSchemaHALForceFetchFailed);
  [v13 setFailureReason:v12];
  v14 = objc_alloc_init(HALSchemaHALClientEvent);
  v15 = objc_alloc_init(HALSchemaHALForceFetchContext);
  [v15 setContextId:v8];

  [v15 setFailed:v13];
  [v14 setForceFetchContext:v15];
  v16 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v17 = [[SISchemaUUID alloc] initWithNSUUID:v9];

  [v16 setHalId:v17];
  [v14 setEventMetadata:v16];
  v18 = +[AssistantSiriAnalytics sharedStream];
  [v18 emitMessage:v14];

  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[ADContextManager _logForceFetchContextFailedWithHALMetricsId:contextId:error:]";
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s #hal Emitted forceFetch.failed event %@ to sharedStream", &v20, 0x16u);
  }
}

- (void)_logForceFetchContextEndedWithHALMetricsId:(id)a3 contextId:(id)a4 forceFetchCount:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(HALSchemaHALForceFetchEnded);
  [v9 setNumDeviceContextsFetched:a5];
  v10 = objc_alloc_init(HALSchemaHALClientEvent);
  v11 = objc_alloc_init(HALSchemaHALForceFetchContext);
  [v11 setContextId:v7];

  [v11 setEnded:v9];
  [v10 setForceFetchContext:v11];
  v12 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v13 = [[SISchemaUUID alloc] initWithNSUUID:v8];

  [v12 setHalId:v13];
  [v10 setEventMetadata:v12];
  v14 = +[AssistantSiriAnalytics sharedStream];
  [v14 emitMessage:v10];

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADContextManager _logForceFetchContextEndedWithHALMetricsId:contextId:forceFetchCount:]";
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s #hal Emitted forceFetch.ended event %@ to sharedStream", &v16, 0x16u);
  }
}

- (void)_logForceFetchContextStartedWithHALMetricsId:(id)a3 contextId:(id)a4 timestamp:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(HALSchemaHALForceFetchStarted);
  [v9 setExists:1];
  v10 = objc_alloc_init(HALSchemaHALClientEvent);
  v11 = objc_alloc_init(HALSchemaHALForceFetchContext);
  [v11 setContextId:v7];

  [v11 setStartedOrChanged:v9];
  [v10 setForceFetchContext:v11];
  v12 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v13 = [[SISchemaUUID alloc] initWithNSUUID:v8];

  [v12 setHalId:v13];
  [v10 setEventMetadata:v12];
  v14 = +[AssistantSiriAnalytics sharedStream];
  [v14 emitMessage:v10 timestamp:a5];

  mach_absolute_time();
  AFMachAbsoluteTimeGetTimeInterval();
  v16 = v15;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADContextManager _logForceFetchContextStartedWithHALMetricsId:contextId:timestamp:]";
    v20 = 2048;
    v21 = v16;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s #hal Emitted forceFetch.started event (%fs ago): %@ to sharedStream", &v18, 0x20u);
  }
}

- (void)_logFetchLocalContextEnded:(id)a3
{
  v4 = a3;
  metricsQueue = self->_metricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001134A0;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(metricsQueue, block);
}

- (void)_logFetchLocalContextStarted:(id)a3
{
  v4 = a3;
  metricsQueue = self->_metricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001136B8;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(metricsQueue, block);
}

- (void)_logContextCollectorFetchFailed:(id)a3
{
  v4 = a3;
  metricsQueue = self->_metricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001138D0;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(metricsQueue, block);
}

- (void)_logContextCollectorFetchEnded:(id)a3 numDeviceContextsFetched:(unint64_t)a4
{
  v6 = a3;
  metricsQueue = self->_metricsQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100113AEC;
  v9[3] = &unk_10051D770;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(metricsQueue, v9);
}

- (void)_logContextCollectorFetchStarted:(id)a3
{
  v4 = a3;
  metricsQueue = self->_metricsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113D0C;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(metricsQueue, block);
}

- (void)_stopPeriodicContextFetchFromNearbyDevices
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADContextManager _stopPeriodicContextFetchFromNearbyDevices]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  [(AFWatchdogTimer *)self->_contextRefreshTimer cancel];
  contextRefreshTimer = self->_contextRefreshTimer;
  self->_contextRefreshTimer = 0;
}

- (void)_startPeriodicContextFetchFromNearbyDevices
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[ADContextManager _startPeriodicContextFetchFromNearbyDevices]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v4 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011407C;
  v8[3] = &unk_10051DFE8;
  v8[4] = self;
  v6 = [v4 initWithTimeoutInterval:queue onQueue:v8 timeoutHandler:14400.0];
  contextRefreshTimer = self->_contextRefreshTimer;
  self->_contextRefreshTimer = v6;

  [(AFWatchdogTimer *)self->_contextRefreshTimer start];
}

- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v8 = a4;
  v9 = [v8 uuid];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = v10;
    v15 = [NSNumber numberWithInteger:a5];
    currentRequestInfoUUID = self->_currentRequestInfoUUID;
    *buf = 136315906;
    v23 = "[ADContextManager requestLifecycleObserver:requestDidEndWithInfo:origin:client:]";
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = currentRequestInfoUUID;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #hal requestDidEndWithInfo origin:%@, uuid: %@. _currentRequestInfoUUID: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100114444;
  v17[3] = &unk_10051DBB8;
  v18 = v9;
  v19 = self;
  v20 = v8;
  v21 = a5;
  v12 = v8;
  v13 = v9;
  dispatch_async(queue, v17);
}

- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  v8 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001146C0;
  block[3] = &unk_10051E128;
  v13 = self;
  v14 = a5;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)getContextSnapshotForForeignRequestID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114A80;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)pushContextSnapshotForCurrentRequestWithID:(id)a3 toDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (AFSupportsHALContextDonation())
  {
    if (v6)
    {
      v8 = [v7 afPeerInfo];
      v9 = sub_10001A498(v8, 0);

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100114C6C;
      v12[3] = &unk_100514C98;
      v13 = v6;
      v14 = self;
      v15 = v9;
      v10 = v9;
      [(ADContextManager *)self getContextSnapshotForCurrentRequestWithCompletion:v12];
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v17 = "[ADContextManager pushContextSnapshotForCurrentRequestWithID:toDevice:]";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s #hal No request ID specified, skipping", buf, 0xCu);
      }
    }
  }
}

- (void)getContextSnapshotForCurrentRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADContextManager getContextSnapshotForCurrentRequestWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  if (v4)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = sub_10010CAC0;
    v25 = sub_10010CAD0;
    v26 = 0;
    v6 = [AFSafetyBlock alloc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100115550;
    v19[3] = &unk_10051C8B8;
    p_buf = &buf;
    v19[4] = self;
    v20 = v4;
    v7 = [v6 initWithBlock:v19];
    objc_initWeak(&location, v7);
    v8 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001155D0;
    v16[3] = &unk_10051C650;
    objc_copyWeak(&v17, &location);
    v16[4] = self;
    v10 = [v8 initWithTimeoutInterval:queue onQueue:v16 timeoutHandler:1.7];
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;

    [*(*(&buf + 1) + 40) start];
    v12 = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001156A8;
    v14[3] = &unk_10051E010;
    v14[4] = self;
    v15 = v7;
    v13 = v7;
    dispatch_async(v12, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }
}

- (void)_getDevicesWithContexts:(id)a3 passingTest:(id)a4 capabilitesPassingTest:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v27 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v25 = v12;
    v26 = objc_alloc_init(NSMutableArray);
    v14 = dispatch_group_create();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v10;
    v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v37 + 1) + 8 * i) content];
          if (v11[2](v11, v19))
          {
            v20 = [v19 deviceInfo];
            dispatch_group_enter(v14);
            deviceCircleManager = self->_deviceCircleManager;
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_1001161F4;
            v32[3] = &unk_100511D30;
            v32[4] = self;
            v36 = v27;
            v33 = v26;
            v34 = v20;
            v35 = v14;
            v22 = v20;
            [(ADDeviceCircleManager *)deviceCircleManager getCapabilitiesForDevice:v22 completion:v32];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100116304;
    block[3] = &unk_10051E038;
    v13 = v25;
    v30 = v26;
    v31 = v25;
    v24 = v26;
    dispatch_group_notify(v14, queue, block);
  }
}

- (void)getDeviceContextsForKeys:(id)a3 forForeignRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[ADContextManager getDeviceContextsForKeys:forForeignRequestID:includesNearbyDevices:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s #hal", buf, 0xCu);
  }

  if (v12)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100116608;
    v23[3] = &unk_100511D08;
    v26 = v7;
    v23[4] = self;
    v24 = v10;
    v25 = v12;
    v14 = objc_retainBlock(v23);
    v15 = v14;
    if (v11)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10011686C;
      v21[3] = &unk_10051CD10;
      v22 = v14;
      [(ADContextManager *)self getContextSnapshotForForeignRequestID:v11 completion:v21];
      v16 = v22;
    }

    else if (v7)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10011687C;
      v19[3] = &unk_10051DD70;
      v19[4] = self;
      v20 = v14;
      [(ADContextManager *)self getContextSnapshotForCurrentRequestWithCompletion:v19];
      v16 = v20;
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100116934;
      v17[3] = &unk_100516340;
      v17[4] = self;
      v18 = v14;
      [(ADContextManager *)self getLocalContextWithPrivacyClass:10 completion:v17];
      v16 = v18;
    }
  }
}

- (void)getLocalContextWithPrivacyClass:(int64_t)a3 completion:(id)a4
{
  if (a4)
  {
    [(ADLocalContextStore *)self->_localContextStore getLocalContextWithPrivacyClass:a3 completion:?];
  }
}

- (void)getContextIncludingKeys:(id)a3 excludingMandatoryKeys:(id)a4 timeOut:(double)a5 localContextCompletion:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = +[NSUUID UUID];
  v17 = [v16 UUIDString];
  v18 = [v17 componentsSeparatedByString:@"-"];
  v19 = [v18 firstObject];

  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v31 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]";
    v32 = 2112;
    v33 = v19;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s #hal (%@) includedKeys: %@, excludedKeys: %@, timeOut: %f", buf, 0x34u);
  }

  kdebug_trace();
  if (v15)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100117430;
    block[3] = &unk_100511CB8;
    v23 = v19;
    v24 = self;
    v27 = v15;
    v29 = a5;
    v28 = v14;
    v25 = v12;
    v26 = v13;
    dispatch_async(queue, block);
  }
}

- (void)_getNowPlayingMediaIsResumable:(id)a3
{
  v4 = a3;
  v5 = [(ADBackgroundContextCache *)self->_bgContext queueState];
  v6 = [v5 applicationIdentifier];
  if ([v6 isEqualToString:@"com.apple.sirireaderd"])
  {
    v7 = [v5 state] == 2;
  }

  else
  {
    v8 = [v5 applicationIdentifier];
    if ([v8 isEqualToString:@"com.apple.siri.sirireaderd"])
    {
      v7 = [v5 state] == 2;
    }

    else
    {
      v7 = 0;
    }
  }

  if ([v5 state] != 1 && !v7)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[ADContextManager _getNowPlayingMediaIsResumable:]";
      v10 = "%s Now playing media was not interrupted. It should not be resumed.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, &v23, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v11 = [v5 listeningToItem];
  v12 = [v11 mediaType];
  v13 = [v12 isEqualToString:SANPMediaTypeVideoValue];

  if (v13)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[ADContextManager _getNowPlayingMediaIsResumable:]";
      v10 = "%s Interrupted media is video. It should not be resumed.";
      goto LABEL_14;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  v15 = objc_opt_class();
  v16 = [v5 applicationIdentifier];
  LODWORD(v15) = [v15 _isResumableFirstPartyBundleID:v16];

  if (v15)
  {
    v17 = AFSiriLogContextDaemon;
    v14 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[ADContextManager _getNowPlayingMediaIsResumable:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Interrupted now playing app is a resumable first party app.", &v23, 0xCu);
    }
  }

  else
  {
    v18 = [v5 applicationIdentifier];
    v19 = [LSApplicationProxy applicationProxyForIdentifier:v18];

    v20 = objc_opt_class();
    v21 = [v19 genreID];
    v14 = [v20 _isResumableThirdPartyGenreID:v21];

    if (v14)
    {
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v23 = 136315138;
        v24 = "[ADContextManager _getNowPlayingMediaIsResumable:]";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Interrupted now playing app has a resumable third party genre.", &v23, 0xCu);
      }
    }
  }

LABEL_16:
  if (v4)
  {
    v4[2](v4, v14);
  }
}

- (void)getNowPlayingMediaIsResumable:(id)a3
{
  v4 = a3;
  bgContextQueue = self->_bgContextQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001188F4;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(bgContextQueue, v7);
}

- (void)getDomainObjectFromMessageContext:(id)a3 completion:(id)a4
{
  v11 = a4;
  if (v11)
  {
    v7 = a3;
    v8 = AFMessagesGetDomainObjectsFromContext();

    v11[2](v11, v8);
  }

  else
  {
    v9 = a3;
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ADContextManager.m" lineNumber:891 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    v8 = AFMessagesGetDomainObjectsFromContext();
  }
}

- (void)markBulletinAsAcknolwedgedForDomainObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 identifier];
    v6 = [v5 URLByDeletingPathExtension];
    v7 = [v6 lastPathComponent];

    if ([v7 length])
    {
      v8 = objc_alloc_init(off_10058B430());
      v9 = -[NSObject voicemailWithIdentifier:](v8, "voicemailWithIdentifier:", [v7 integerValue]);
      v10 = AFSiriLogContextDaemon;
      if (v9)
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v15 = 136315394;
          v16 = "[ADContextManager markBulletinAsAcknolwedgedForDomainObject:]";
          v17 = 2112;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Marking voicemail as played: %@", &v15, 0x16u);
        }

        v11 = [v8 markVoicemailAsRead:v9];
      }

      else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = v10;
        v14 = [v4 identifier];
        v15 = 136315394;
        v16 = "[ADContextManager markBulletinAsAcknolwedgedForDomainObject:]";
        v17 = 2112;
        v18 = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unable to find voicemail: %@", &v15, 0x16u);
      }
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        goto LABEL_13;
      }

      v8 = v12;
      v9 = [v4 identifier];
      v15 = 136315650;
      v16 = "[ADContextManager markBulletinAsAcknolwedgedForDomainObject:]";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Voicemail contains invalid identifier: %@, %@", &v15, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)getAlertContextWithBulletins:(id)a3 externalAlarmSnapshot:(id)a4 timerSnapshot:(id)a5 nlAlertContextCompletion:(id)a6 fullAlertContextCompletion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39 = a7;
  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = dispatch_group_create();
  v17 = dispatch_group_create();
  dispatch_group_enter(v16);
  dispatch_group_enter(v17);
  v18 = sub_10006C1DC();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011912C;
  block[3] = &unk_10051DB18;
  v57 = v11;
  v19 = v15;
  v58 = v19;
  v20 = v16;
  v59 = v20;
  v21 = v17;
  v60 = v21;
  v40 = v11;
  dispatch_async(v18, block);

  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = objc_alloc_init(NSMutableDictionary);
  dispatch_group_enter(v20);
  dispatch_group_enter(v21);
  v24 = sub_10006C1DC();
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1001193B4;
  v47[3] = &unk_1005141E8;
  v48 = v12;
  v49 = self;
  v50 = v22;
  v51 = v13;
  v52 = v23;
  v25 = v19;
  v53 = v25;
  v54 = v20;
  v55 = v21;
  v26 = v21;
  v27 = v20;
  v38 = v23;
  v28 = v13;
  v29 = v22;
  v30 = v12;
  dispatch_async(v24, v47);

  v31 = sub_10006C1DC();
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10011969C;
  v44[3] = &unk_10051E038;
  v32 = v25;
  v45 = v32;
  v46 = v14;
  v33 = v14;
  dispatch_group_notify(v27, v31, v44);

  v34 = sub_10006C1DC();
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100119720;
  v41[3] = &unk_10051E038;
  v42 = v32;
  v43 = v39;
  v35 = v39;
  v36 = v32;
  dispatch_group_notify(v26, v34, v41);
}

- (void)_getCurrentUserActivityOnQueue:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10010CAC0;
  v20[4] = sub_10010CAD0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10010CAC0;
  v18[4] = sub_10010CAD0;
  v19 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100119C38;
  v14[3] = &unk_100511BF0;
  v8 = v7;
  v15 = v8;
  v16 = v20;
  v17 = v18;
  if (([NSUserActivity _currentUserActivityUUIDWithOptions:0 completionHandler:v14]& 1) == 0)
  {
    dispatch_group_leave(v8);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100119E6C;
  v10[3] = &unk_100511C18;
  v11 = v6;
  v12 = v20;
  v13 = v18;
  v9 = v6;
  dispatch_group_notify(v8, v5, v10);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

- (void)getAppContextForDeviceState:(int64_t)a3 applicationInfos:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    if ((v6 & 2) != 0)
    {
      v10 = [(ADContextManager *)self _filteredApplicationInfosForLockedStark:v8];
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("ContextCollation", v11);

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011A3D4;
  v16[3] = &unk_10051E0D8;
  v17 = v8;
  v18 = v12;
  v19 = self;
  v20 = v9;
  v13 = v9;
  v14 = v12;
  v15 = v8;
  dispatch_async(v14, v16);
}

- (id)_appInfoWithBundleID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SAAppInfo);
  v5 = objc_alloc_init(SASyncAppIdentifyingInfo);
  [v5 setBundleId:v3];

  [v4 setAppIdentifyingInfo:v5];

  return v4;
}

- (id)_filteredApplicationInfosForLockedStark:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v9 = [v8 identifier];
      v10 = [v9 isEqualToString:@"com.apple.Maps"];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v8;

    if (v12)
    {
      v18 = v12;
      v11 = [NSArray arrayWithObjects:&v18 count:1];
      goto LABEL_12;
    }

    v11 = 0;
  }

  else
  {
LABEL_9:
    v11 = 0;
    v12 = v3;
LABEL_12:
  }

  return v11;
}

- (void)keepReportingNowPlayingTimingEventsHeuristically
{
  mach_absolute_time();
  self->_ignoreNowPlayingUpdatesAfterTimestamp = AFMachAbsoluteTimeAddTimeInterval();
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADContextManager keepReportingNowPlayingTimingEventsHeuristically]";
    v6 = 2048;
    v7 = 0x403E000000000000;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Recording performance numbers on NowPlaying updates for %g seconds", &v4, 0x16u);
  }
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[ADContextManager dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(ADContextManager *)self _cancelNowPlayingCoalescingTimer];
  [(ADContextManager *)self _unregisterForBGUpdates];
  [(ADHomeAnnouncementContextAdaptor *)self->_homeAnnouncementContextAdaptor invalidate];
  homeAnnouncementContextAdaptor = self->_homeAnnouncementContextAdaptor;
  self->_homeAnnouncementContextAdaptor = 0;

  v5.receiver = self;
  v5.super_class = ADContextManager;
  [(ADContextManager *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  bgContextQueue = self->_bgContextQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011B444;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(bgContextQueue, v7);
}

- (void)_setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      v5 = [(ADContextManager *)self _registerForBGUpdates];
    }

    else
    {
      v5 = [(ADContextManager *)self _unregisterForBGUpdates];
    }

    v6 = obj;
  }

  _objc_release_x1(v5, v6);
}

- (void)_initialize
{
  v3 = +[AFAnalytics sharedAnalytics];
  analytics = self->_analytics;
  self->_analytics = v3;

  *&self->_alertContextIsDirty = 257;
  bgContext = self->_bgContext;
  self->_bgContext = 0;
}

- (void)reset
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADContextManager reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  bgContextQueue = self->_bgContextQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B630;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(bgContextQueue, block);
}

- (id)_contextLinkMessageOptions
{
  v4 = RPOptionStatusFlags;
  v5 = &off_1005338A8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (id)_configuredContextLink
{
  v3 = AFSupportsHALOnDemandRapportConnection();
  v4 = v3;
  v5 = 1;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10011B830;
  v14 = &unk_100511AF0;
  if (!v3)
  {
    v5 = 2;
  }

  v15 = v5;
  v16 = v3;
  v6 = [ADRapportLinkConfiguration newWithBuilder:&v11];
  v7 = [ADRapportLink alloc];
  v8 = [(ADRapportLink *)v7 initWithQueue:self->_queue configuration:v6, v11, v12, v13, v14];
  v9 = [(ADContextManager *)self _contextLinkMessageOptions];
  [(ADRapportLink *)v8 registerRequestID:@"com.apple.siri.rapport-link.request.generic" options:v9];
  if ((v4 & 1) == 0)
  {
    [(ADRapportLink *)v8 setRequestHandler:self forRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"context_push"];
    [(ADRapportLink *)v8 setRequestHandler:self forRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"agg_context_fetch"];
    [(ADRapportLink *)v8 setRequestHandler:self forRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"context_snapshot_push"];
    [(ADRapportLink *)v8 activateWithCompletion:&stru_100511B10];
  }

  return v8;
}

- (id)_configuredRemoteContextStoreWithRapportLink:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ADRemoteContextStore alloc] initWithRapportLink:v6 queue:v5];

  return v7;
}

- (id)_configuredLocalContextStoreWithInstanceContext:(id)a3 rapportLink:(id)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[ADLocalContextStore alloc] initWithInstanceContext:v10 rapportLink:v9 queue:v8 delegate:self];

  return v11;
}

- (id)_initWithDelegate:(id)a3 deviceCircleManager:(id)a4 deviceProximityManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v54.receiver = self;
  v54.super_class = ADContextManager;
  v11 = [(ADContextManager *)&v54 init];
  if (v11)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "[ADContextManager _initWithDelegate:deviceCircleManager:deviceProximityManager:]";
      v57 = 2048;
      v58 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    if (qword_100590148 != -1)
    {
      dispatch_once(&qword_100590148, &stru_1005121E8);
    }

    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v11->_deviceCircleManager, a4);
    objc_storeStrong(&v11->_deviceProximityManager, a5);
    [(ADContextManager *)v11 _initialize];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("BackgroundContextQueue", v13);
    bgContextQueue = v11->_bgContextQueue;
    v11->_bgContextQueue = v14;

    *&v11->_deviceProblemsRegistrationToken = -1;
    [(ADContextManager *)v11 keepReportingNowPlayingTimingEventsHeuristically];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);

    v18 = dispatch_queue_create("ContextQueue", v17);
    queue = v11->_queue;
    v11->_queue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_BACKGROUND, 0);

    v22 = dispatch_queue_create("com.apple.assistant.MetricsQueue", v21);
    metricsQueue = v11->_metricsQueue;
    v11->_metricsQueue = v22;

    v24 = +[AFInstanceContext currentContext];
    instanceContext = v11->_instanceContext;
    v11->_instanceContext = v24;

    v26 = objc_alloc_init(NSMutableSet);
    contextSnapshotsReadUUIDs = v11->_contextSnapshotsReadUUIDs;
    v11->_contextSnapshotsReadUUIDs = v26;

    v28 = [(ADContextManager *)v11 _configuredContextLink];
    rapportLink = v11->_rapportLink;
    v11->_rapportLink = v28;

    [(ADRapportLink *)v11->_rapportLink addListener:v11];
    v30 = [(ADContextManager *)v11 _configuredRemoteContextStoreWithRapportLink:v11->_rapportLink queue:v11->_queue];
    remoteContextStore = v11->_remoteContextStore;
    v11->_remoteContextStore = v30;

    v32 = +[ADRequestLifecycleObserver sharedObserver];
    [v32 addListener:v11];

    [(ADDeviceCircleManager *)v11->_deviceCircleManager addListener:v11];
    deviceCircleManager = v11->_deviceCircleManager;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10011C104;
    v52[3] = &unk_100515378;
    v34 = v11;
    v53 = v34;
    [(ADDeviceCircleManager *)deviceCircleManager getContextCollectorDeviceIdentifiersWithCompletion:v52];
    v35 = [v34 _configuredLocalContextStoreWithInstanceContext:v11->_instanceContext rapportLink:v11->_rapportLink queue:v11->_queue];
    v36 = v34[31];
    v34[31] = v35;

    if (+[AFFeatureFlags isAnnounceEnabled])
    {
      v37 = [[ADHomeAnnouncementContextAdaptor alloc] initWithInstanceContext:v11->_instanceContext];
      v38 = v34[13];
      v34[13] = v37;
    }

    v39 = [(AFInstanceContext *)v11->_instanceContext createXPCListenerWithMachServiceName:kAssistantDeviceContextServiceName];
    v40 = v34[28];
    v34[28] = v39;

    [v34[28] setDelegate:v34];
    [v34[28] _setQueue:v11->_queue];
    [v34[28] resume];
    v41 = v11->_queue;
    v42 = +[ADQueueMonitor sharedMonitor];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10011C198;
    v50[3] = &unk_10051C2E0;
    v51 = v41;
    v43 = v41;
    [v42 addQueue:v43 heartBeatInterval:v50 timeoutInterval:5.0 timeoutHandler:5.0];

    v44 = v11->_bgContextQueue;
    v45 = +[ADQueueMonitor sharedMonitor];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10011C2B4;
    v48[3] = &unk_10051C2E0;
    v49 = v44;
    v46 = v44;
    [v45 addQueue:v46 heartBeatInterval:v48 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v11;
}

- (ADContextManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[ADDeviceCircleManager sharedInstance];
  v6 = +[ADDeviceProximityManager sharedManager];
  v7 = [(ADContextManager *)self _initWithDelegate:v4 deviceCircleManager:v5 deviceProximityManager:v6];

  return v7;
}

+ (BOOL)_isResumableThirdPartyGenreID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToNumber:&off_1005338C0] & 1) != 0 || (objc_msgSend(v3, "isEqualToNumber:", &off_1005338D8))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToNumber:&off_1005338F0];
  }

  return v4;
}

+ (BOOL)_isResumableFirstPartyBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.podcasts") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.iBooks") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.NanoMusic") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.NanoRadio") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.NanoBooks") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.sirireaderd"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.siri.sirireaderd"];
  }

  return v4;
}

@end