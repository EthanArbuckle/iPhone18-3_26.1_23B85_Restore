@interface ADDaemon
+ (id)sharedDaemon;
- (ADDaemon)init;
- (BOOL)_analyticsListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_analyticsObservationListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_audioSessionAssertionServiceListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_clientListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_dictationListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_locationServiceListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_managedStorageListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_notificationServiceListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_securityListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_settingsListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)_synapseSyncListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)siriCapabilitiesServiceListenerShouldAcceptNewConnection:(id)connection;
- (id)_peerLocationService;
- (id)_proxyService;
- (id)_synapseAppBundleIDFromPossibleDeamonBundleID:(id)d;
- (void)_bundleID:(id *)d andPath:(id *)path forXPCConnection:(id)connection;
- (void)_daemonDidLaunchWithContext:(id)context;
- (void)_daemonWillShutdown;
- (void)_deleteSyncItemsDatabase;
- (void)_enabledBitsChanged:(id)changed;
- (void)_registerForSyncNotifications;
- (void)_registerSyncCoalescedJob;
- (void)_setupAccessibility;
- (void)_setupAnalyticsListener;
- (void)_setupAnalyticsObservationListener;
- (void)_setupAudioSessionAssertionServiceListener;
- (void)_setupClientListener;
- (void)_setupClientLiteListener;
- (void)_setupCloudKit;
- (void)_setupDictationListener;
- (void)_setupDistributedNotificationHandlers;
- (void)_setupExternalRequestListener;
- (void)_setupIDSServices;
- (void)_setupInternal;
- (void)_setupLocationService;
- (void)_setupLocationServiceListener;
- (void)_setupManagedStorageListener;
- (void)_setupMobileGestaltNotificationHandlers;
- (void)_setupNotificationServiceListener;
- (void)_setupNotifyHandlers;
- (void)_setupPairedSync;
- (void)_setupPommesSearchService;
- (void)_setupRapportServices;
- (void)_setupSecurityListener;
- (void)_setupSessionLanguage;
- (void)_setupSettingsListener;
- (void)_setupSiriAnalyticsListener;
- (void)_setupSynapseSyncListener;
- (void)_setupSyncListener;
- (void)_setupTetherListener;
- (void)_setupWirelessCoexManagerSubscription;
- (void)_syncForReason:(id)reason withCoalescing:(BOOL)coalescing;
- (void)dealloc;
- (void)keepAlive;
- (void)runWithLaunchContext:(id)context;
- (void)scheduleDestroyJob;
- (void)scheduleUnlockedWork:(id)work;
- (void)scheduleValidationRefreshForInterval:(double)interval;
- (void)setupSiriCapabilitiesService;
- (void)setupSiriCapabilitiesServiceListener;
- (void)startUIRequestWithInfo:(id)info;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncForReason:(id)reason withCoalescing:(BOOL)coalescing;
@end

@implementation ADDaemon

- (void)_setupAccessibility
{
  sharedSystemShellSwitcher = [off_10058B1E0() sharedSystemShellSwitcher];
  [sharedSystemShellSwitcher signalSiriAvailability];
}

- (void)scheduleUnlockedWork:(id)work
{
  workCopy = work;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E5B78;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_async(queue, v7);
}

- (void)scheduleValidationRefreshForInterval:(double)interval
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "_ADValidationRefreshCriteriaForInterval";
    v10 = 2048;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %lf", &v8, 0x16u);
  }

  if (interval >= 0.0)
  {
    intervalCopy2 = interval;
  }

  else
  {
    intervalCopy2 = XPC_ACTIVITY_INTERVAL_1_DAY;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, intervalCopy2);
  if (intervalCopy2 * 0.5 > interval)
  {
    intervalCopy3 = 0.0;
    if (interval >= 0.0)
    {
      intervalCopy3 = interval;
    }

    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, intervalCopy3);
  }

  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  sub_100286CD4("com.apple.siri.xpc_activity.refresh_validation", v6, &stru_100518A78, &stru_100518AB8);
}

- (void)scheduleDestroyJob
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_DELAY, 15);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  sub_100286CD4("com.apple.siri.xpc_activity.destroy", xdict, &stru_100518AD8, &stru_100518AF8);
}

- (void)_syncForReason:(id)reason withCoalescing:(BOOL)coalescing
{
  coalescingCopy = coalescing;
  reasonCopy = reason;
  if (sub_100009F40())
  {
    v7 = +[ADDaemon sharedDaemon];
    [v7 keepAlive];

    sub_1002F3490(reasonCopy);
    syncReasonsQueued = self->_syncReasonsQueued;
    if (!syncReasonsQueued)
    {
      v9 = objc_alloc_init(NSMutableSet);
      v10 = self->_syncReasonsQueued;
      self->_syncReasonsQueued = v9;

      syncReasonsQueued = self->_syncReasonsQueued;
    }

    [(NSMutableSet *)syncReasonsQueued addObject:reasonCopy];
    if (coalescingCopy && self->_lastSyncRequested && (v11 = mach_absolute_time(), v11 < AFMachAbsoluteTimeAddTimeInterval()))
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v17 = self->_syncReasonsQueued;
        *buf = 136315394;
        v20 = "[ADDaemon _syncForReason:withCoalescing:]";
        v21 = 2112;
        v22 = v17;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Sync requested recently; sync reasons enqueued: %@", buf, 0x16u);
      }

      if (!self->_syncActivityRegistered)
      {
        v13 = dispatch_time(0, 3000000000);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E6164;
        block[3] = &unk_10051DFE8;
        block[4] = self;
        dispatch_after(v13, queue, block);
      }
    }

    else
    {
      [(ADDaemon *)self _registerSyncCoalescedJob];
    }
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = &stru_10051F508;
      if (reasonCopy)
      {
        v16 = reasonCopy;
      }

      *buf = 136315394;
      v20 = "[ADDaemon _syncForReason:withCoalescing:]";
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ignoring request to sync %@", buf, 0x16u);
    }
  }
}

- (void)syncForReason:(id)reason withCoalescing:(BOOL)coalescing
{
  reasonCopy = reason;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E6214;
  block[3] = &unk_10051C890;
  block[4] = self;
  v10 = reasonCopy;
  coalescingCopy = coalescing;
  v8 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)_registerSyncCoalescedJob
{
  self->_lastSyncRequested = mach_absolute_time();
  if (self->_syncActivityRegistered)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ADDaemon _registerSyncCoalescedJob]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Sync now activity already registered", &buf, 0xCu);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E6560;
    v9[3] = &unk_10051DFE8;
    v9[4] = self;
    v4 = v9;
    if (sub_100009F40())
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v13 = sub_100286BDC;
      v14 = &unk_100518890;
      v15 = v4;
      v5 = objc_retainBlock(&buf);
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, 0);
      xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
      xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 0);
      xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
      xpc_dictionary_set_string(v6, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL);
      sub_100286CD4("com.apple.siri.xpc_activity.sync.now", v6, 0, v5);
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 136315138;
        v11 = "ADRegisterSyncNowActivity";
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s sync now xpc activity registered", v10, 0xCu);
      }
    }

    else
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "ADRegisterSyncNowActivity";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Skipped register XPC activitiy for SyncNow because sync is disabled", &buf, 0xCu);
      }
    }

    self->_syncActivityRegistered = 1;
  }
}

- (void)_setupSessionLanguage
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 setLanguageCodeIfNeeded];

  v5 = +[ADCommandCenter sharedCommandCenter];
  v3 = +[ADPreferences sharedPreferences];
  outputVoice = [v3 outputVoice];
  [v5 _outputVoice_setOutputVoice:outputVoice];
}

- (void)_daemonWillShutdown
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADDaemon _daemonWillShutdown]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s assistantd shutting down\n\n", &v5, 0xCu);
  }

  v3 = +[ADCommandCenter sharedCommandCenter];
  [v3 prepareForShutdown];

  v4 = +[SNNetworkManager sharedInstance];
  [v4 unregisterClient];
}

- (void)_daemonDidLaunchWithContext:(id)context
{
  AFLogInitIfNeeded();
  v4 = sub_10021532C();
  v5 = qword_100590558;
  qword_100590558 = v4;

  AFInstallCommonSignalHandlers();
  if (qword_100590148 != -1)
  {
    dispatch_once(&qword_100590148, &stru_1005121E8);
  }

  v6 = +[AFInstanceContext currentContext];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[ADDaemon _daemonDidLaunchWithContext:]";
    v29 = 2080;
    v30 = "MobileAssistantDaemons-3505.26.1.11.1";
    v31 = 2080;
    v32 = "141";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assistantd launched build %s~%s", buf, 0x20u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000E6BB0;
  v26[3] = &unk_10051DFE8;
  v26[4] = self;
  v8 = objc_retainBlock(v26);
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

  v11 = dispatch_queue_create("com.apple.assistantd.trial", v10);
  trialExperimentsQueue = self->_trialExperimentsQueue;
  self->_trialExperimentsQueue = v11;

  [ADExperimentManager tracerAllocationsWithQueue:self->_trialExperimentsQueue];
  v13 = self->_queue;
  v14 = +[ADQueueMonitor sharedMonitor];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_1000E76C0;
  v24 = &unk_10051C2E0;
  v25 = v13;
  v15 = v13;
  [v14 addQueue:v15 heartBeatInterval:&v21 timeoutInterval:5.0 timeoutHandler:5.0];

  v16 = [AFInstanceContext defaultContext:v21];
  instanceContext = self->_instanceContext;
  self->_instanceContext = v16;

  (v8[2])(v8);
  LOBYTE(v14) = objc_opt_respondsToSelector();
  v18 = AFSiriLogContextDaemon;
  v19 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v19)
    {
      *buf = 136315138;
      v28 = "[ADDaemon _daemonDidLaunchWithContext:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s ADDaemon is syncing Montara preferences...", buf, 0xCu);
    }

    [GATSettings performSelector:"syncSharedPreferences"];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[ADDaemon _daemonDidLaunchWithContext:]";
      v20 = "%s ADDaemon returned from syncing Montara preferences.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
    }
  }

  else if (v19)
  {
    *buf = 136315138;
    v28 = "[ADDaemon _daemonDidLaunchWithContext:]";
    v20 = "%s ADDaemon is not syncing Montara preferences since the syncSharedPreferences selector is not yet available";
    goto LABEL_12;
  }
}

- (void)_setupPommesSearchService
{
  if ((AFIsHorseman() & 1) == 0)
  {
    self->_pommesSearchServiceLauncher = objc_alloc_init(PommesSearchServiceLauncher);

    _objc_release_x1();
  }
}

- (void)_setupWirelessCoexManagerSubscription
{
  if (AFDeviceSupportsWiFiLPASMode() && _AFPreferencesiRATManagerRecommendationEnabled())
  {
    v2 = +[SNNetworkManager sharedInstance];
    [v2 registerClient];
  }
}

- (void)_setupCloudKit
{
  if (AFProcessIsRunningAsInstance())
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v5 = "[ADDaemon _setupCloudKit]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Skipping setup for CloudKit because the process is running as an instance of a multi-instance service.", buf, 0xCu);
    }
  }

  else
  {
    v3 = +[ADCloudKitManager sharedManager];
    [v3 enablePushNotifications];
  }
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  sessionCopy = session;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADDaemon syncCoordinator:beginSyncSession:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7C04;
  block[3] = &unk_10051DFE8;
  v10 = sessionCopy;
  v8 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)_setupPairedSync
{
  v3 = [off_10058B1D8() syncCoordinatorWithServiceName:@"com.apple.pairedsync.siri"];
  [v3 setDelegate:self];
}

- (void)_setupClientLiteListener
{
  v3 = objc_alloc_init(ADClientLiteListener);
  clientLiteListener = self->_clientLiteListener;
  self->_clientLiteListener = v3;

  v5 = self->_clientLiteListener;

  [(ADClientLiteListener *)v5 listen];
}

- (void)_setupExternalRequestListener
{
  v3 = objc_alloc_init(ADExternalRequestListener);
  externalRequestListener = self->_externalRequestListener;
  self->_externalRequestListener = v3;

  [(ADExternalRequestListener *)self->_externalRequestListener listen];

  sub_10021619C();
}

- (void)_setupTetherListener
{
  v3 = objc_alloc_init(ADSiriTetherListener);
  siriTetherListener = self->_siriTetherListener;
  self->_siriTetherListener = v3;

  v5 = self->_siriTetherListener;

  [(ADSiriTetherListener *)v5 listen];
}

- (void)_registerForSyncNotifications
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, sub_1000E7FF0, kCFLocaleCurrentLocaleDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_enabledBitsChanged:" name:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];
  v4 = +[ADFMIPListener sharedListener];
  [v4 startListening];
}

- (void)_enabledBitsChanged:(id)changed
{
  v4 = sub_1002F3D78(@"ADPreferencesEnabledBitsDidChangeNotification");
  [(ADDaemon *)self syncForReason:v4 withCoalescing:1];
}

- (void)_setupSyncListener
{
  if (sub_10000A094())
  {
    v3 = dispatch_get_global_queue(0, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.assistant.sync", v3, 1uLL);
    syncListener = self->_syncListener;
    self->_syncListener = mach_service;

    xpc_connection_set_event_handler(self->_syncListener, &stru_100511300);
    v6 = self->_syncListener;

    xpc_connection_resume(v6);
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADDaemon _setupSyncListener]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Skipping setup for sync listener because the process is running as an instance of a multi-instance service, or the device can never sync", &v8, 0xCu);
    }
  }
}

- (void)_deleteSyncItemsDatabase
{
  if (qword_100590598 != -1)
  {
    dispatch_once(&qword_100590598, &stru_100516CF8);
  }

  v2 = qword_100590590;
  v3 = [v2 stringByAppendingPathComponent:@"SiriSyncItems.db"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];
  v6 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ADDaemon _deleteSyncItemsDatabase]";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Removing Sync DB at %@", buf, 0x16u);
    }

    v11 = 0;
    v7 = [v4 removeItemAtPath:v3 error:&v11];
    v8 = v11;
    v9 = v8;
    if (!v7 || v8)
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "[ADDaemon _deleteSyncItemsDatabase]";
        v14 = 2112;
        v15 = v3;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to remove Sync DB at %@ err: %@", buf, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v13 = "[ADDaemon _deleteSyncItemsDatabase]";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Sync DB doesn't exist at %@", buf, 0x16u);
  }
}

- (void)_setupMobileGestaltNotificationHandlers
{
  if (!self->_mg_notification_token)
  {
    v4 = @"UserAssignedDeviceName";
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    self->_mg_notification_token = MGRegisterForUpdates();
  }
}

- (void)_setupDistributedNotificationHandlers
{
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E8C20;
  handler[3] = &unk_10051A6B0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", queue, handler);
}

- (void)_setupNotifyHandlers
{
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E8EEC;
  handler[3] = &unk_10051A6B0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", queue, handler);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_clientListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _clientListenerShouldAcceptNewConnection:connectionCopy];
LABEL_26:
    v8 = v9;
    goto LABEL_27;
  }

  if (self->_settingsListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _settingsListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_dictationListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _dictationListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_managedStorageListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _managedStorageListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_synapseSyncListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _synapseSyncListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_analyticsListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _analyticsListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_securityListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _securityListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_analyticsObservationListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _analyticsObservationListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_notificationServiceListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _notificationServiceListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_audioSessionAssertionServiceListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _audioSessionAssertionServiceListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_locationServiceListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self _locationServiceListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  if (self->_siriCapabilitiesServiceListener == listenerCopy)
  {
    v9 = [(ADDaemon *)self siriCapabilitiesServiceListenerShouldAcceptNewConnection:connectionCopy];
    goto LABEL_26;
  }

  v8 = 0;
LABEL_27:

  return v8;
}

- (BOOL)_audioSessionAssertionServiceListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "[ADDaemon _audioSessionAssertionServiceListenerShouldAcceptNewConnection:]";
      *&buf[12] = 2112;
      *&buf[14] = connectionCopy;
      *&buf[22] = 1024;
      LODWORD(v15) = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ Audio Session Assertion Service Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v15 = sub_1000E99B0;
    v16 = sub_1000E99C0;
    v17 = [[ADAudioSessionAssertionConnection alloc] initWithXPCConnection:connectionCopy];
    v7 = AFAudioSessionAssertionServiceXPCInterface();
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:*(*&buf[8] + 40)];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E99C8;
    v12[3] = &unk_100511280;
    v13 = processIdentifier;
    v12[4] = buf;
    [connectionCopy setInvalidationHandler:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E9AA8;
    v10[3] = &unk_100511280;
    v11 = processIdentifier;
    v10[4] = buf;
    [connectionCopy setInterruptionHandler:v10];
    [connectionCopy resume];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[ADDaemon _audioSessionAssertionServiceListenerShouldAcceptNewConnection:]";
      *&buf[12] = 2112;
      *&buf[14] = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@ Audio Session Assertion Service Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)_setupAudioSessionAssertionServiceListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantAudioSessionAssertionServiceName];
  audioSessionAssertionServiceListener = self->_audioSessionAssertionServiceListener;
  self->_audioSessionAssertionServiceListener = v3;

  [(NSXPCListener *)self->_audioSessionAssertionServiceListener setDelegate:self];
  v5 = self->_audioSessionAssertionServiceListener;

  [(NSXPCListener *)v5 resume];
}

- (BOOL)_notificationServiceListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v17 = "[ADDaemon _notificationServiceListenerShouldAcceptNewConnection:]";
      v18 = 2112;
      v19 = connectionCopy;
      v20 = 1024;
      v21 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ Notification Service Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFUserNotificationService];
    [connectionCopy setExportedInterface:v7];

    v8 = [[ADUserNotificationServiceProvider alloc] initWithConnection:connectionCopy bundleIdentifier:0 notificationCategories:0];
    [connectionCopy setExportedObject:v8];

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFUserNotificationServiceDelegate];
    [connectionCopy setRemoteObjectInterface:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E9E88;
    v14[3] = &unk_10051A380;
    v15 = processIdentifier;
    [connectionCopy setInvalidationHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E9F44;
    v12[3] = &unk_10051A380;
    v13 = processIdentifier;
    [connectionCopy setInterruptionHandler:v12];
    [connectionCopy resume];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[ADDaemon _notificationServiceListenerShouldAcceptNewConnection:]";
      v18 = 2112;
      v19 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ Notification Service Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)_setupNotificationServiceListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantNotificationServiceName];
  notificationServiceListener = self->_notificationServiceListener;
  self->_notificationServiceListener = v3;

  [(NSXPCListener *)self->_notificationServiceListener setDelegate:self];
  [(NSXPCListener *)self->_notificationServiceListener resume];
  v5 = +[ADUserNotificationServiceProvider personalDomainNotificationProvider];
}

- (BOOL)_securityListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "[ADDaemon _securityListenerShouldAcceptNewConnection:]";
      v17 = 2112;
      v18 = connectionCopy;
      v19 = 1024;
      v20 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ Security Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v7 = AFSecurityServiceGetXPCInterface();
    [connectionCopy setExportedInterface:v7];

    v8 = +[ADSecurityService sharedService];
    [connectionCopy setExportedObject:v8];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EA2BC;
    v13[3] = &unk_10051A380;
    v14 = processIdentifier;
    [connectionCopy setInvalidationHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000EA378;
    v11[3] = &unk_10051A380;
    v12 = processIdentifier;
    [connectionCopy setInterruptionHandler:v11];
    [connectionCopy resume];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADDaemon _securityListenerShouldAcceptNewConnection:]";
      v17 = 2112;
      v18 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s %@ Security Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)_setupSecurityListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantSecurityServiceName];
  securityListener = self->_securityListener;
  self->_securityListener = v3;

  [(NSXPCListener *)self->_securityListener setDelegate:self];
  v5 = self->_securityListener;

  [(NSXPCListener *)v5 resume];
}

- (BOOL)_analyticsObservationListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADDaemon _analyticsObservationListenerShouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = connectionCopy;
      v21 = 1024;
      v22 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ Analytics Observation Connection Connected (pid=%d])", buf, 0x1Cu);
    }

    v7 = +[ADAnalyticsService sharedService];
    [connectionCopy setExportedObject:v7];

    v8 = AFAnalyticsObservationServiceGetXPCInterface();
    [connectionCopy setExportedInterface:v8];

    v9 = AFAnalyticsObserverGetXPCInterface();
    [connectionCopy setRemoteObjectInterface:v9];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EA728;
    v15[3] = &unk_10051A380;
    v16 = processIdentifier;
    [connectionCopy setInvalidationHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000EA804;
    v13[3] = &unk_10051A380;
    v14 = processIdentifier;
    [connectionCopy setInterruptionHandler:v13];
    v10 = +[ADAnalyticsService sharedService];
    [v10 setObserverConnection:connectionCopy];

    [connectionCopy resume];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[ADDaemon _analyticsObservationListenerShouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@ Analytics Observation Connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)_setupAnalyticsObservationListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantAnalyticsObservationServiceName];
  analyticsObservationListener = self->_analyticsObservationListener;
  self->_analyticsObservationListener = v3;

  [(NSXPCListener *)self->_analyticsObservationListener setDelegate:self];
  v5 = self->_analyticsObservationListener;

  [(NSXPCListener *)v5 resume];
}

- (BOOL)_analyticsListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[ADDaemon _analyticsListenerShouldAcceptNewConnection:]";
    v25 = 2112;
    v26 = connectionCopy;
    v27 = 1024;
    v28 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ Analytics Connection Connected (pid=%d])", buf, 0x1Cu);
  }

  v6 = AFAnalyticsServiceGetXPCInterface();
  [connectionCopy setExportedInterface:v6];

  v7 = +[ADAnalyticsService sharedService];
  [connectionCopy setExportedObject:v7];

  XPCInterface = AFAnalyticsServiceDelegateGetXPCInterface();
  [connectionCopy setRemoteObjectInterface:XPCInterface];

  objc_initWeak(buf, connectionCopy);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000EABF0;
  v20[3] = &unk_100511258;
  v22 = processIdentifier;
  objc_copyWeak(&v21, buf);
  [connectionCopy setInvalidationHandler:v20];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000EACE0;
  v17 = &unk_100511258;
  v19 = processIdentifier;
  objc_copyWeak(&v18, buf);
  [connectionCopy setInterruptionHandler:&v14];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

  v11 = dispatch_queue_create(0, v10);
  [connectionCopy _setQueue:{v11, v14, v15, v16, v17}];

  v12 = +[ADAnalyticsService sharedService];
  [v12 connectionConnected:connectionCopy];

  [connectionCopy resume];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  return 1;
}

- (void)_setupAnalyticsListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantAnalyticsServiceName];
  analyticsListener = self->_analyticsListener;
  self->_analyticsListener = v3;

  [(NSXPCListener *)self->_analyticsListener setDelegate:self];
  v5 = self->_analyticsListener;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UTILITY, 0);

  v8 = dispatch_queue_create(0, v7);
  [(NSXPCListener *)v5 _setQueue:v8];

  v9 = self->_analyticsListener;

  [(NSXPCListener *)v9 resume];
}

- (void)_setupSiriAnalyticsListener
{
  v2 = +[ADSiriAnalyticsServiceHost sharedSiriAnalyticsServiceHost];
  [v2 setupXPCListener];
}

- (BOOL)_managedStorageListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADDaemon _managedStorageListenerShouldAcceptNewConnection:]";
      v19 = 2112;
      v20 = connectionCopy;
      v21 = 1024;
      v22 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ Managed Storage Connection Connected (pid=%d)", buf, 0x1Cu);
    }

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFManagedStorageService];
    [connectionCopy setExportedInterface:v7];

    v8 = objc_alloc_init(ADManagedStorageConnection);
    [connectionCopy setExportedObject:v8];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000EB098;
    v14 = &unk_1005114D0;
    v15 = v8;
    v16 = processIdentifier;
    v9 = v8;
    [connectionCopy setInvalidationHandler:&v11];
    [connectionCopy resume];
  }

  return HasEntitlement;
}

- (void)_setupManagedStorageListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantManagedStorageServiceName];
  managedStorageListener = self->_managedStorageListener;
  self->_managedStorageListener = v3;

  [(NSXPCListener *)self->_managedStorageListener setDelegate:self];
  v5 = self->_managedStorageListener;

  [(NSXPCListener *)v5 resume];
}

- (BOOL)_synapseSyncListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = kAssistantSiriDeveloperEntitlement;
  if (AFConnectionHasEntitlement() & 1) != 0 || (AFConnectionHasEntitlement())
  {
    processIdentifier = [connectionCopy processIdentifier];
    v22 = 0;
    v23 = 0;
    [(ADDaemon *)self _bundleID:&v23 andPath:&v22 forXPCConnection:connectionCopy];
    v7 = v23;
    v8 = v22;
    v9 = [(ADDaemon *)self _synapseAppBundleIDFromPossibleDeamonBundleID:v7];

    v10 = v9 != 0;
    v11 = AFSiriLogContextDaemon;
    if (v9)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v27 = "[ADDaemon _synapseSyncListenerShouldAcceptNewConnection:]";
        v28 = 1024;
        *v29 = processIdentifier;
        *&v29[4] = 2112;
        *&v29[6] = v9;
        *&v29[14] = 2112;
        *&v29[16] = connectionCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s assistantd accepted connection from app (pid=%d bundleID=%@) %@", buf, 0x26u);
      }

      v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ADIntentPreferencesAndVocabularyUpdateService];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v13 = [NSArray arrayWithObjects:v25 count:2];
      v14 = [NSSet setWithArray:v13];
      [v12 setClasses:v14 forSelector:"recordVocabulary:forIntentSlot:withValidationCompletion:" argumentIndex:0 ofReply:0];

      v24[0] = objc_opt_class();
      v24[1] = objc_opt_class();
      v15 = [NSArray arrayWithObjects:v24 count:2];
      v16 = [NSSet setWithArray:v15];
      [v12 setClasses:v16 forSelector:"recordVocabulary:forIntentSlot:onBehalfOf:withValidationCompletion:" argumentIndex:0 ofReply:0];

      [connectionCopy setExportedInterface:v12];
      v17 = [[ADIntentVocabularyUpdateConnection alloc] initWithBundleID:v9 path:v8 canDonateOnBehalfOfApps:AFConnectionHasEntitlement()];
      [connectionCopy setExportedObject:v17];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000EB5FC;
      v20[3] = &unk_10051A380;
      v21 = processIdentifier;
      [connectionCopy setInvalidationHandler:v20];
      [connectionCopy resume];
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[ADDaemon _synapseSyncListenerShouldAcceptNewConnection:]";
      v28 = 2112;
      *v29 = connectionCopy;
      *&v29[8] = 1024;
      *&v29[10] = processIdentifier;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@ Rejecting connection, because no kCFBundleIdentifierKey could be found for pid=%d but we expected it to be a .app bundle", buf, 0x1Cu);
    }
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[ADDaemon _synapseSyncListenerShouldAcceptNewConnection:]";
      v28 = 2112;
      *v29 = v5;
      *&v29[8] = 2114;
      *&v29[10] = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s no '%@' entitlement for connection %{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_synapseAppBundleIDFromPossibleDeamonBundleID:(id)d
{
  dCopy = d;
  if ([(__CFString *)dCopy isEqualToString:@"com.apple.imagent"])
  {

    dCopy = @"com.apple.MobileSMS";
  }

  if ([&off_100533638 containsObject:dCopy])
  {

    dCopy = @"com.apple.mobileslideshow";
  }

  return dCopy;
}

- (void)_bundleID:(id *)d andPath:(id *)path forXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8 = connectionCopy;
  error = 0;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v9 = SecTaskCreateWithAuditToken(0, &token);
  if (v9)
  {
    v10 = v9;
    v11 = SecTaskCopySigningIdentifier(v9, &error);
    v12 = error;
    if (error)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 136315650;
        *&token.val[1] = "[ADDaemon _bundleID:andPath:forXPCConnection:]";
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v8;
        HIWORD(token.val[5]) = 2112;
        *&token.val[6] = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Could not get signing identifier. Connection: %@, error:  %@", &token, 0x20u);
        v12 = error;
      }

      CFRelease(v12);
    }

    if (!v11)
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 136315394;
        *&token.val[1] = "[ADDaemon _bundleID:andPath:forXPCConnection:]";
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v8;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Could not get the bundle identifier. Connection: %@", &token, 0x16u);
      }
    }

    CFRelease(v10);
    v15 = 0;
    v16 = path != 0;
    if (path && v11)
    {
      v25 = 0;
      v15 = [LSBundleRecord bundleRecordWithBundleIdentifier:v11 allowPlaceholder:0 error:&v25];
      v17 = v25;
      if (!v15)
      {
        v18 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v19 = &stru_10051F508;
          token.val[0] = 136315650;
          *&token.val[1] = "[ADDaemon _bundleID:andPath:forXPCConnection:]";
          LOWORD(token.val[3]) = 2112;
          if (v17)
          {
            v19 = v17;
          }

          *(&token.val[3] + 2) = v8;
          HIWORD(token.val[5]) = 2112;
          *&token.val[6] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Could not get bundle path for other-side of XPC connection %@ %@", &token, 0x20u);
        }
      }

      v16 = 1;
    }
  }

  else
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      token.val[0] = 136315394;
      *&token.val[1] = "[ADDaemon _bundleID:andPath:forXPCConnection:]";
      LOWORD(token.val[3]) = 2112;
      *(&token.val[3] + 2) = v8;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Could not create task with audit token. Connection: %@", &token, 0x16u);
    }

    v11 = 0;
    v15 = 0;
    v16 = path != 0;
  }

  v21 = [v15 URL];
  path = [v21 path];

  if (d)
  {
    v23 = v11;
    *d = v11;
  }

  if (v16)
  {
    v24 = path;
    *path = path;
  }
}

- (void)_setupSynapseSyncListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kINVocabularyUpdateServiceName];
  synapseSyncListener = self->_synapseSyncListener;
  self->_synapseSyncListener = v3;

  [(NSXPCListener *)self->_synapseSyncListener setDelegate:self];
  v5 = self->_synapseSyncListener;

  [(NSXPCListener *)v5 resume];
}

- (void)_setupSettingsListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantSettingsServiceName];
  settingsListener = self->_settingsListener;
  self->_settingsListener = v3;

  [(NSXPCListener *)self->_settingsListener setDelegate:self];
  [(NSXPCListener *)self->_settingsListener resume];
  if (AFIsInternalInstall())
  {
    v5 = dispatch_get_global_queue(17, 0);
    dispatch_async(v5, &stru_100511230);
  }
}

- (BOOL)_settingsListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = kAssistantSettingsEntitlement;
  if (AFConnectionHasEntitlement() & 1) != 0 || (v5 = kAssistantClientEntitlement, (AFConnectionHasEntitlement()))
  {
    processIdentifier = [connectionCopy processIdentifier];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v24 = "[ADDaemon _settingsListenerShouldAcceptNewConnection:]";
      v25 = 2112;
      *v26 = connectionCopy;
      *&v26[8] = 1024;
      *&v26[10] = processIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ Settings Connection Connected (pid=%d)", buf, 0x1Cu);
    }

    v8 = +[ADCommandCenter sharedCommandCenter];
    [v8 sanityCheckAutodownloadedAssetsForced:0];

    v9 = AFSettingsServiceDelegateXPCInterface();
    [connectionCopy setRemoteObjectInterface:v9];

    v10 = AFSettingsServiceXPCInterface();
    [connectionCopy setExportedInterface:v10];

    v11 = [[ADSettingsClient alloc] initWithXPCConnection:connectionCopy];
    [connectionCopy setExportedObject:v11];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000EBE40;
    v20 = &unk_1005114D0;
    v21 = v11;
    v22 = processIdentifier;
    v12 = v11;
    [connectionCopy setInvalidationHandler:&v17];
    [connectionCopy resume];

    v13 = 1;
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
      *buf = 136315906;
      v24 = "[ADDaemon _settingsListenerShouldAcceptNewConnection:]";
      v25 = 1024;
      *v26 = [connectionCopy processIdentifier];
      *&v26[4] = 2112;
      *&v26[6] = v4;
      v27 = 2112;
      v28 = v5;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Rejecting attempt to connect by pid=%d because it is missing one of the entitlements %@ or %@ (either will do)", buf, 0x26u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)_setupDictationListener
{
  v3 = objc_alloc_init(NSCountedSet);
  dictationPidSet = self->_dictationPidSet;
  self->_dictationPidSet = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);

  v7 = dispatch_queue_create(0, v6);
  dictationListenerQueue = self->_dictationListenerQueue;
  self->_dictationListenerQueue = v7;

  v9 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantDictationServiceName];
  dictationListener = self->_dictationListener;
  self->_dictationListener = v9;

  [(NSXPCListener *)self->_dictationListener setDelegate:self];
  [(NSXPCListener *)self->_dictationListener _setQueue:self->_dictationListenerQueue];
  v11 = self->_dictationListener;

  [(NSXPCListener *)v11 resume];
}

- (BOOL)_dictationListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = [NSNumber numberWithInt:processIdentifier];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[ADDaemon _dictationListenerShouldAcceptNewConnection:]";
    v29 = 2112;
    v30 = connectionCopy;
    v31 = 1024;
    v32 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ Dictation Connection Connected (pid=%d])", buf, 0x1Cu);
  }

  v8 = [(NSCountedSet *)self->_dictationPidSet countForObject:v6];
  if (v8 >= 0x10)
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v28 = "[ADDaemon _dictationListenerShouldAcceptNewConnection:]";
      v29 = 1024;
      LODWORD(v30) = processIdentifier;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%s Too many connections from pid %d, refusing connection", buf, 0x12u);
    }
  }

  else
  {
    v9 = +[ADQueueMonitor sharedMonitor];
    [v9 beginMonitoring];

    v10 = +[ADAnalyticsService sharedService];
    [v10 beginEventsGrouping];

    [(NSCountedSet *)self->_dictationPidSet addObject:v6];
    v11 = AFDictationServiceDelegateXPCInterface();
    [connectionCopy setRemoteObjectInterface:v11];

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFDictationService];
    [connectionCopy setExportedInterface:v12];

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    v14 = [[ADDictationConnection alloc] initWithServiceDelegate:remoteObjectProxy];
    [connectionCopy setExportedObject:v14];
    queue = [(ADDictationConnection *)v14 queue];
    [connectionCopy _setQueue:queue];

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000EC2EC;
    v22 = &unk_10051B508;
    v26 = processIdentifier;
    v23 = v14;
    selfCopy = self;
    v25 = v6;
    v16 = v14;
    [connectionCopy setInvalidationHandler:&v19];
    [connectionCopy resume];
  }

  return v8 < 0x10;
}

- (void)startUIRequestWithInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC55C;
  block[3] = &unk_10051DFE8;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, block);
}

- (BOOL)_clientListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v36 = 0;
  [(ADDaemon *)self _bundleID:&v36 andPath:0 forXPCConnection:connectionCopy];
  v6 = v36;
  if ((AFIsHorseman() & 1) != 0 || ![v6 isEqualToString:@"com.apple.springboard"])
  {
    v12 = kAssistantClientEntitlement;
    if ((AFConnectionHasEntitlement() & 1) == 0)
    {
      v29 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315650;
        *&v43[4] = "[ADDaemon _clientListenerShouldAcceptNewConnection:]";
        *&v43[12] = 1024;
        *&v43[14] = processIdentifier;
        *&v43[18] = 2112;
        *&v43[20] = v12;
        v9 = "%s Rejecting connection attempt by PID %d because it is missing the entitlement %@";
        v10 = v29;
        v11 = 28;
        goto LABEL_21;
      }

LABEL_18:
      v28 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = kAssistantClientEntitlement;
    if ((AFConnectionHasEntitlementCached() & 1) == 0)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315650;
        *&v43[4] = "[ADDaemon _clientListenerShouldAcceptNewConnection:]";
        *&v43[12] = 2112;
        *&v43[14] = v6;
        *&v43[22] = 2112;
        *&v43[24] = v7;
        v9 = "%s Rejecting connection attempt by %@ because it is missing the entitlement %@";
        v10 = v8;
        v11 = 32;
LABEL_21:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, v43, v11);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  *v43 = 0;
  *&v43[8] = v43;
  *&v43[16] = 0x3032000000;
  *&v43[24] = sub_1000E99B0;
  v44 = sub_1000E99C0;
  v45 = os_transaction_create();
  v13 = +[ADQueueMonitor sharedMonitor];
  [v13 beginMonitoring];

  v14 = +[ADAnalyticsService sharedService];
  [v14 beginEventsGrouping];

  if (AFIsNano() && (AFDeviceSupportsSiriUOD() & 1) == 0)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[ADDaemon _clientListenerShouldAcceptNewConnection:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Preheating session on client connection", buf, 0xCu);
    }

    v16 = +[ADCommandCenter sharedCommandCenter];
    [v16 preheatWithStyle:3 forOptions:0 completion:0];
  }

  v17 = +[ADCommandCenter sharedCommandCenter];
  if (AFIsHorseman())
  {
    [v17 showingVisibleAssistantUIForReason:@"ADLocationInUseReasonHorsemanConnected" completion:0];
  }

  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "[ADDaemon _clientListenerShouldAcceptNewConnection:]";
    v39 = 2112;
    v40 = connectionCopy;
    v41 = 1024;
    v42 = processIdentifier;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s %@ Client Connection Connected (pid=%d])", buf, 0x1Cu);
  }

  v19 = AFClientServiceDelegateXPCInterface();
  [connectionCopy setRemoteObjectInterface:v19];

  v20 = AFClientServiceXPCInterface();
  [connectionCopy setExportedInterface:v20];

  v21 = qword_100590558;
  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_UNSPECIFIED, 0);

  v24 = dispatch_queue_create_with_target_V2(0, v23, v21);
  [connectionCopy _setQueue:v24];

  v25 = [[ADClientConnection alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v25];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000ECAE4;
  v31[3] = &unk_1005111F0;
  v26 = v25;
  v32 = v26;
  v35 = processIdentifier;
  v27 = v17;
  v33 = v27;
  v34 = v43;
  [connectionCopy setInvalidationHandler:v31];
  [v27 clientConnected:v26];
  [connectionCopy resume];

  _Block_object_dispose(v43, 8);
  v28 = 1;
LABEL_19:

  return v28;
}

- (void)_setupClientListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAssistantClientServiceName];
  clientListener = self->_clientListener;
  self->_clientListener = v3;

  [(NSXPCListener *)self->_clientListener setDelegate:self];
  v5 = self->_clientListener;
  v6 = qword_100590558;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UNSPECIFIED, 0);

  v9 = dispatch_queue_create_with_target_V2(0, v8, v6);
  [(NSXPCListener *)v5 _setQueue:v9];

  v10 = self->_clientListener;

  [(NSXPCListener *)v10 resume];
}

- (id)_peerLocationService
{
  if (!self->_peerLocationManagerRemote && AFSupportsPairedDevice())
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADDaemon _peerLocationService]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Starting Peer Location Service", &v8, 0xCu);
    }

    v4 = objc_alloc_init(ADPeerLocationRemote);
    peerLocationManagerRemote = self->_peerLocationManagerRemote;
    self->_peerLocationManagerRemote = v4;
  }

  v6 = self->_peerLocationManagerRemote;

  return v6;
}

- (id)_proxyService
{
  if (!self->_proxyRemote && AFSupportsPairedDevice())
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADDaemon _proxyService]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Starting Siri Connection Proxy", &v8, 0xCu);
    }

    v4 = objc_alloc_init(ADSiriConnectionRemote);
    proxyRemote = self->_proxyRemote;
    self->_proxyRemote = v4;
  }

  v6 = self->_proxyRemote;

  return v6;
}

- (void)_setupIDSServices
{
  if ((AFIsNano() & 1) == 0)
  {
    _proxyService = [(ADDaemon *)self _proxyService];
    _peerLocationService = [(ADDaemon *)self _peerLocationService];
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  _sharedDataService = [v5 _sharedDataService];

  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 listenForSharedDataFromCloud];

  v8 = +[ADPeerCloudService sharedInstance];
  [v8 startListeningForRemote];
}

- (BOOL)siriCapabilitiesServiceListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (AFConnectionHasEntitlement() & 1) != 0 || (AFConnectionHasEntitlement() & 1) != 0 || (AFConnectionHasEntitlement())
  {
    processIdentifier = [connectionCopy processIdentifier];
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "[ADDaemon siriCapabilitiesServiceListenerShouldAcceptNewConnection:]";
      v13 = 2112;
      v14 = connectionCopy;
      v15 = 1024;
      v16 = processIdentifier;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@ Siri Capabilities Service Connection Connected (pid=%d])", &v11, 0x1Cu);
    }

    v6 = +[ADSiriCapabilitiesService sharedService];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFSiriCapabilitiesServiceClientInterface];
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:v6];
    [connectionCopy resume];

    v8 = 1;
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADDaemon siriCapabilitiesServiceListenerShouldAcceptNewConnection:]";
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ Siri Capabilities Service Connection does not have required entitlements.", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)setupSiriCapabilitiesServiceListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAFSiriCapabilitiesServiceClientMachServiceName];
  siriCapabilitiesServiceListener = self->_siriCapabilitiesServiceListener;
  self->_siriCapabilitiesServiceListener = v3;

  [(NSXPCListener *)self->_siriCapabilitiesServiceListener setDelegate:self];
  v5 = self->_siriCapabilitiesServiceListener;

  [(NSXPCListener *)v5 resume];
}

- (void)setupSiriCapabilitiesService
{
  v2 = +[ADSiriCapabilitiesService sharedService];
}

- (BOOL)_locationServiceListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[ADDaemon _locationServiceListenerShouldAcceptNewConnection:]";
      v14 = 2112;
      v15 = connectionCopy;
      v16 = 1024;
      v17 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@ Location Service Connection Connected (pid=%d])", &v12, 0x1Cu);
    }

    v7 = +[ADLocationService sharedService];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFLocationServiceInterface];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:v7];
    dispatchQueue = [v7 dispatchQueue];
    [connectionCopy _setQueue:dispatchQueue];

    [connectionCopy resume];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADDaemon _locationServiceListenerShouldAcceptNewConnection:]";
      v14 = 2112;
      v15 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ Location Service Connection does not have required entitlements.", &v12, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)_setupLocationServiceListener
{
  v3 = [(AFInstanceContext *)self->_instanceContext createXPCListenerWithMachServiceName:kAFLocationServiceMachServiceName];
  locationServiceListener = self->_locationServiceListener;
  self->_locationServiceListener = v3;

  [(NSXPCListener *)self->_locationServiceListener setDelegate:self];
  v5 = self->_locationServiceListener;
  v6 = +[ADLocationService sharedService];
  dispatchQueue = [v6 dispatchQueue];
  [(NSXPCListener *)v5 _setQueue:dispatchQueue];

  v8 = self->_locationServiceListener;

  [(NSXPCListener *)v8 resume];
}

- (void)_setupLocationService
{
  v2 = +[ADLocationService sharedService];
}

- (void)_setupRapportServices
{
  if (AFIsHorseman())
  {
    v3 = +[ADMyriadService sharedService];
  }

  v4 = +[ADCoreSpeechService sharedService];
  v5 = +[ADCompanionService sharedInstance];
  [v5 startListeningForRemote];

  queue = self->_queue;

  xpc_set_event_stream_handler("com.apple.rapport.matching", queue, &stru_1005111C8);
}

- (void)_setupInternal
{
  if (AFIsInternalInstall() && _AFPreferencesNetworkLoggingEnabled())
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[ADDaemon _setupInternal]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Enabling CFNetwork diagnostics", &v3, 0xCu);
    }

    setenv("CFNETWORK_DIAGNOSTICS", "3", 1);
    setenv("CFNETWORK_DIAGNOSTICS_NO_SYSLOG", "1", 1);
  }
}

- (void)keepAlive
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_1000E99B0;
  v6[4] = sub_1000E99C0;
  v7 = os_transaction_create();
  v3 = dispatch_time(0, 10000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED990;
  block[3] = &unk_10051E1C8;
  block[4] = v6;
  dispatch_after(v3, queue, block);
  _Block_object_dispose(v6, 8);
}

- (void)runWithLaunchContext:(id)context
{
  contextCopy = context;
  v4 = objc_autoreleasePoolPush();
  CFBundleGetMainBundle();
  [(ADDaemon *)self _daemonDidLaunchWithContext:contextCopy];
  objc_autoreleasePoolPop(v4);
  v5 = +[NSRunLoop mainRunLoop];
  [v5 run];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_clientListener setDelegate:0];
  [(NSXPCListener *)self->_dictationListener setDelegate:0];
  [(NSXPCListener *)self->_settingsListener setDelegate:0];
  [(NSXPCListener *)self->_synapseSyncListener setDelegate:0];
  [(NSXPCListener *)self->_managedStorageListener setDelegate:0];
  [(NSXPCListener *)self->_analyticsListener setDelegate:0];
  [(NSXPCListener *)self->_securityListener setDelegate:0];
  [(NSXPCListener *)self->_analyticsObservationListener setDelegate:0];
  [(NSXPCListener *)self->_notificationServiceListener setDelegate:0];
  [(NSXPCListener *)self->_audioSessionAssertionServiceListener setDelegate:0];
  v3.receiver = self;
  v3.super_class = ADDaemon;
  [(ADDaemon *)&v3 dealloc];
}

- (ADDaemon)init
{
  v9.receiver = self;
  v9.super_class = ADDaemon;
  v2 = [(ADDaemon *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_attr_make_initially_inactive(v4);

    v6 = dispatch_queue_create("ADDaemon", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (id)sharedDaemon
{
  if (qword_1005900A0 != -1)
  {
    dispatch_once(&qword_1005900A0, &stru_1005111A8);
  }

  v3 = qword_100590098;

  return v3;
}

@end