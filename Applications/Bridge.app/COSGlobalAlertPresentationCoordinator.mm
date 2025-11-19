@interface COSGlobalAlertPresentationCoordinator
+ (id)sharedInstance;
- (COSGlobalAlertPresentationCoordinator)init;
- (id)stringForAlertType:(unint64_t)a3;
- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
- (int64_t)getHighestPriorityGlobalAlert;
- (unint64_t)readNotifyToken:(int)a3;
- (void)_dismissModalAlert:(unint64_t)a3;
- (void)_enumerateAlertPresenterObservers:(id)a3 withCompletion:(id)a4;
- (void)_initialSyncStateObserverClientCanRetryFailedRequests;
- (void)_presentModalAlert:(unint64_t)a3;
- (void)_recordInitialSyncBeganMetricIfNecessary;
- (void)addAlertPresenterObserver:(id)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)dealloc;
- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4;
- (void)nanoRegistryStatusChanged:(id)a3;
- (void)reRegisterForNanoRegistryAndPairSyncNotifications;
- (void)registerAppDelegateNotifications;
- (void)registerNanoRegistryNotifications;
- (void)registerPairedSyncNotifications;
- (void)removeAlertPresenterObserver:(id)a3;
- (void)setNanoRegistryStatus:(unint64_t)a3;
- (void)setPairedSyncProgress:(double)a3;
- (void)setPairedSyncSaysSyncActive:(BOOL)a3;
- (void)setPairedSyncSaysSyncNeeded:(BOOL)a3;
- (void)supportsMigrationSync;
- (void)syncSessionObserver:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4;
- (void)syncSessionObserver:(id)a3 receivedSyncSession:(id)a4;
- (void)unregisterAppDelegateNotifications;
- (void)unregisterNanoRegistryNotifications;
- (void)unregisterPairedSyncNotifications;
- (void)update;
- (void)updateActiveDeviceChange;
- (void)updateAlerts;
- (void)updateSyncProgress:(BOOL)a3;
@end

@implementation COSGlobalAlertPresentationCoordinator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005CB4;
  block[3] = &unk_100268108;
  block[4] = a1;
  if (qword_1002BD5C8 != -1)
  {
    dispatch_once(&qword_1002BD5C8, block);
  }

  v2 = qword_1002BD5C0;

  return v2;
}

- (COSGlobalAlertPresentationCoordinator)init
{
  v10.receiver = self;
  v10.super_class = COSGlobalAlertPresentationCoordinator;
  v2 = [(COSGlobalAlertPresentationCoordinator *)&v10 init];
  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Created %p", buf, 0xCu);
    }

    v4 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v4;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    alertTypeStrings = v2->_alertTypeStrings;
    v2->_alertTypeStrings = &off_100281828;

    v2->_alertType = -1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E70C;
    block[3] = &unk_1002682F0;
    v9 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v2;
}

- (int64_t)getHighestPriorityGlobalAlert
{
  if ((self->_activeGlobalAlerts & 2) != 0)
  {
    return 1;
  }

  else
  {
    return (self->_activeGlobalAlerts & 1) - 1;
  }
}

- (void)registerAppDelegateNotifications
{
  if (!self->_appDelegateNotificationsRegistered)
  {
    self->_appDelegateNotificationsRegistered = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }
}

- (void)registerPairedSyncNotifications
{
  if (!self->_pairedSyncISSObserver)
  {
    v3 = [[PSYInitialSyncStateObserver alloc] initWithDelegate:self];
    pairedSyncISSObserver = self->_pairedSyncISSObserver;
    self->_pairedSyncISSObserver = v3;

    [(COSGlobalAlertPresentationCoordinator *)self _initialSyncStateObserverClientCanRetryFailedRequests];
  }

  if (!self->_progressObserver)
  {
    v5 = objc_alloc_init(PSYSyncSessionObserver);
    progressObserver = self->_progressObserver;
    self->_progressObserver = v5;

    [(PSYSyncSessionObserver *)self->_progressObserver setDelegate:self];
    objc_initWeak(&location, self);
    v7 = self->_progressObserver;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000FC10;
    v8[3] = &unk_10026B4C0;
    objc_copyWeak(&v9, &location);
    [(PSYSyncSessionObserver *)v7 startObservingSyncSessionsWithCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_initialSyncStateObserverClientCanRetryFailedRequests
{
  v3 = sub_10000DB38();
  v4 = v3;
  if (v3)
  {
    pairedSyncISSObserver = self->_pairedSyncISSObserver;
    v6 = [v3 valueForProperty:NRDevicePropertyPairingID];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CFB84;
    v7[3] = &unk_1002682C8;
    v7[4] = self;
    [(PSYInitialSyncStateObserver *)pairedSyncISSObserver requestInitialNonMigrationSyncStateForPairingIdentifier:v6 completion:v7];
  }

  else
  {
    [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncNeeded:0];
  }
}

- (void)registerNanoRegistryNotifications
{
  if (!self->_nanoRegistryNotificationsRegistered)
  {
    self->_nanoRegistryNotificationsRegistered = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"nanoRegistryStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

    v5 = +[NRPairedDeviceRegistry sharedInstance];
    -[COSGlobalAlertPresentationCoordinator setNanoRegistryStatus:](self, "setNanoRegistryStatus:", [v5 status]);

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"update" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"update" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"update" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"update" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"update" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
  }
}

- (void)update
{
  [(COSGlobalAlertPresentationCoordinator *)self updateActiveDeviceChange];
  [(COSGlobalAlertPresentationCoordinator *)self updateAlerts];
  v3 = [(COSGlobalAlertPresentationCoordinator *)self getHighestPriorityGlobalAlert];
  v4 = v3;
  alertType = self->_alertType;
  if (v3 != -1 && alertType == v3)
  {
    goto LABEL_10;
  }

  if (self->_isPresented && !self->_isPresenting)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(COSGlobalAlertPresentationCoordinator *)self stringForAlertType:alertType];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Dismissing VC %@", buf, 0xCu);
    }

    self->_isPresenting = 1;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D0EAC;
    v13[3] = &unk_10026B530;
    v13[4] = self;
    v13[5] = v4;
    v13[6] = alertType;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D0FFC;
    v12[3] = &unk_100268220;
    v12[4] = self;
    v12[5] = alertType;
    [(COSGlobalAlertPresentationCoordinator *)self _enumerateAlertPresenterObservers:v13 withCompletion:v12];
  }

  if (v4 != -1)
  {
LABEL_10:
    if (!self->_isPresented && !self->_isPresenting)
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(COSGlobalAlertPresentationCoordinator *)self stringForAlertType:v4];
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Displaying VC %@", buf, 0xCu);
      }

      self->_isPresenting = 1;
      self->_alertType = v4;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000D10D4;
      v11[3] = &unk_10026B558;
      v11[4] = self;
      v11[5] = v4;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000D1220;
      v10[3] = &unk_100268220;
      v10[4] = self;
      v10[5] = v4;
      [(COSGlobalAlertPresentationCoordinator *)self _enumerateAlertPresenterObservers:v11 withCompletion:v10];
      if (!self->_alertType)
      {
        [(COSGlobalAlertPresentationCoordinator *)self updateSyncProgress:1];
      }
    }
  }
}

- (void)updateActiveDeviceChange
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];

  v7 = [v6 valueForProperty:NRDevicePropertyIsArchived];
  LODWORD(v5) = [v7 BOOLValue];

  if (v5)
  {

    v6 = 0;
  }

  if ([v3 compatibilityState] != 3 && objc_msgSend(v3, "compatibilityState") != 4 && objc_msgSend(v3, "compatibilityState") != 5)
  {

    v6 = 0;
  }

  v8 = [v6 valueForProperty:NRDevicePropertyPairingID];
  if (v8 != self->_activeDeviceID)
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      activeDeviceID = self->_activeDeviceID;
      v11 = 138543618;
      v12 = activeDeviceID;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Paired device changed from %{public}@ to %{public}@", &v11, 0x16u);
    }

    objc_storeStrong(&self->_activeDeviceID, v8);
    self->_lastDisplayedSyncProgress = 0.0;
    self->_pairedSyncProgress = 0.0;
    self->_pairedSyncSaysSyncActive = 0;
    self->_pairedSyncSaysSyncNeeded = 0;
  }
}

- (void)updateAlerts
{
  self->_nanoRegistrySaysDeviceDisconnected = [NRConnectivitySubscriber getDropoutCounter:0];
  if ((self->_pairedSyncSaysSyncNeeded || self->_pairedSyncSaysSyncActive) && (PBisInMigrationSync() & 1) == 0)
  {
    [(COSGlobalAlertPresentationCoordinator *)self _presentModalAlert:0];
  }

  else
  {
    [(COSGlobalAlertPresentationCoordinator *)self _dismissModalAlert:0];
  }

  nanoRegistryStatus = self->_nanoRegistryStatus;
  if (!nanoRegistryStatus || nanoRegistryStatus == 2)
  {

    [(COSGlobalAlertPresentationCoordinator *)self _dismissModalAlert:1];
  }

  else if (nanoRegistryStatus == 5)
  {

    [(COSGlobalAlertPresentationCoordinator *)self _presentModalAlert:1];
  }
}

- (void)reRegisterForNanoRegistryAndPairSyncNotifications
{
  [(COSGlobalAlertPresentationCoordinator *)self unregisterNanoRegistryNotifications];
  [(COSGlobalAlertPresentationCoordinator *)self unregisterPairedSyncNotifications];
  [(COSGlobalAlertPresentationCoordinator *)self registerPairedSyncNotifications];

  [(COSGlobalAlertPresentationCoordinator *)self registerNanoRegistryNotifications];
}

- (void)unregisterNanoRegistryNotifications
{
  if (self->_nanoRegistryNotificationsRegistered)
  {
    self->_nanoRegistryNotificationsRegistered = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:NRPairedDeviceRegistryStatusDidChange object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
  }
}

- (void)unregisterPairedSyncNotifications
{
  [(PSYInitialSyncStateObserver *)self->_pairedSyncISSObserver setDelegate:0];
  pairedSyncISSObserver = self->_pairedSyncISSObserver;
  self->_pairedSyncISSObserver = 0;

  progressObserver = self->_progressObserver;
  self->_progressObserver = 0;
}

- (void)dealloc
{
  [(COSGlobalAlertPresentationCoordinator *)self unregisterAppDelegateNotifications];
  [(COSGlobalAlertPresentationCoordinator *)self unregisterNanoRegistryNotifications];
  [(COSGlobalAlertPresentationCoordinator *)self unregisterPairedSyncNotifications];
  v3.receiver = self;
  v3.super_class = COSGlobalAlertPresentationCoordinator;
  [(COSGlobalAlertPresentationCoordinator *)&v3 dealloc];
}

- (void)unregisterAppDelegateNotifications
{
  if (self->_appDelegateNotificationsRegistered)
  {
    self->_appDelegateNotificationsRegistered = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: applicationDidBecomeActive:", v5, 2u);
  }

  [(COSGlobalAlertPresentationCoordinator *)self reRegisterForNanoRegistryAndPairSyncNotifications];
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: applicationWillResignActive:", v5, 2u);
  }

  [(COSGlobalAlertPresentationCoordinator *)self unregisterNanoRegistryNotifications];
  [(COSGlobalAlertPresentationCoordinator *)self unregisterPairedSyncNotifications];
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: applicationDidEnterBackground:", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5 = dispatch_time(0, 5000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CFAC8;
  v6[3] = &unk_100269DD0;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  dispatch_after(v5, &_dispatch_main_q, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4
{
  v5 = a4;
  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v8 = [v6 deviceForPairingID:v5];

  v7 = [v8 valueForProperty:NRDevicePropertyIsActive];
  if ([v7 BOOLValue])
  {
    [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncActive:0];
  }

  [(COSGlobalAlertPresentationCoordinator *)self _initialSyncStateObserverClientCanRetryFailedRequests];
}

- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4
{
  v5 = a4;
  v6 = [v5 updatedSession];
  v7 = [v6 syncSessionType];

  if (v7 != 1)
  {
    v8 = [v5 updatedSession];
    [v8 sessionProgress];
    [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncProgress:?];

    v9 = [v5 updatedSession];
    if (v9)
    {
      v10 = [v5 updatedSession];
      if ([v10 syncSessionState] == 1)
      {
        v11 = [v5 updatedSession];
        if ([v11 syncSessionType])
        {
          [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncActive:0];
        }

        else
        {
          v12 = +[NRPairedDeviceRegistry sharedInstance];
          -[COSGlobalAlertPresentationCoordinator setPairedSyncSaysSyncActive:](self, "setPairedSyncSaysSyncActive:", [v12 compatibilityState] == 4);
        }
      }

      else
      {
        [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncActive:0];
      }
    }

    else
    {
      [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncActive:0];
    }

    v13 = [v5 updatedSession];
    -[COSGlobalAlertPresentationCoordinator setSessionType:](self, "setSessionType:", [v13 syncSessionType]);

    if ([(COSGlobalAlertPresentationCoordinator *)self pairedSyncSaysSyncActive])
    {
      v14 = [v5 updatedSession];
      if ([v14 syncSessionType])
      {
      }

      else
      {
        v15 = [(COSGlobalAlertPresentationCoordinator *)self recordedSyncBeganMetric];

        if ((v15 & 1) == 0)
        {
          v16 = pbb_bridge_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315138;
            v18 = "[COSGlobalAlertPresentationCoordinator syncSessionObserver:didReceiveUpdate:]";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - initial sync is active and we have not recorded a metric, checking to see if we need to", &v17, 0xCu);
          }

          [(COSGlobalAlertPresentationCoordinator *)self _recordInitialSyncBeganMetricIfNecessary];
        }
      }
    }
  }
}

- (void)syncSessionObserver:(id)a3 receivedSyncSession:(id)a4
{
  v5 = a4;
  if ([v5 syncSessionType] != 1)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[COSGlobalAlertPresentationCoordinator syncSessionObserver:receivedSyncSession:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: (%s)", &v8, 0xCu);
    }

    [v5 sessionProgress];
    [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncProgress:?];
    if (v5 && [v5 syncSessionState] == 1 && objc_msgSend(v5, "syncSessionType") != 1)
    {
      v7 = +[NRPairedDeviceRegistry sharedInstance];
      -[COSGlobalAlertPresentationCoordinator setPairedSyncSaysSyncActive:](self, "setPairedSyncSaysSyncActive:", [v7 compatibilityState] == 4);
    }

    else
    {
      [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncActive:0];
    }
  }
}

- (void)syncSessionObserver:(id)a3 didInvalidateSyncSession:(id)a4
{
  if ([a4 syncSessionType] != 1)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[COSGlobalAlertPresentationCoordinator syncSessionObserver:didInvalidateSyncSession:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: (%s)", &v6, 0xCu);
    }

    [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncProgress:100.0];
    [(COSGlobalAlertPresentationCoordinator *)self setPairedSyncSaysSyncActive:0];
  }
}

- (void)supportsMigrationSync
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "supportsMigrationSync", v3, 2u);
  }
}

- (void)setPairedSyncProgress:(double)a3
{
  if (self->_pairedSyncProgress != a3)
  {
    self->_pairedSyncProgress = a3;
    [(COSGlobalAlertPresentationCoordinator *)self updateSyncProgress:0];
  }
}

- (void)setPairedSyncSaysSyncActive:(BOOL)a3
{
  if (self->_pairedSyncSaysSyncActive != a3)
  {
    v3 = a3;
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: setPairedSyncSaysSyncActive: %@", &v7, 0xCu);
    }

    self->_pairedSyncSaysSyncActive = v3;
    [(COSGlobalAlertPresentationCoordinator *)self update];
  }
}

- (void)_recordInitialSyncBeganMetricIfNecessary
{
  v3 = [UIApp setupController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pairingReportManager];
    v6 = v5;
    if (v5)
    {
      [v5 addPairingTimeEventToPairingReportPlist:69 withValue:&__kCFBooleanTrue withError:0];
      [(COSGlobalAlertPresentationCoordinator *)self setRecordedSyncBeganMetric:1];
    }
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We attempted to record an intial sync metric while out of Setup, will not record anything", v8, 2u);
    }
  }
}

- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  out_token = -1;
  v9 = [a3 UTF8String];
  if (v8)
  {
    notify_register_dispatch(v9, &out_token, v7, v8);
  }

  else
  {
    notify_register_check(v9, &out_token);
  }

  v10 = out_token;

  return v10;
}

- (unint64_t)readNotifyToken:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

- (void)setPairedSyncSaysSyncNeeded:(BOOL)a3
{
  if (self->_pairedSyncSaysSyncNeeded != a3)
  {
    v3 = a3;
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: setPairedSyncSaysSyncNeeded: %@", &v7, 0xCu);
    }

    self->_pairedSyncSaysSyncNeeded = v3;
    if (!v3)
    {
      if ([(COSGlobalAlertPresentationCoordinator *)self recordedSyncBeganMetric])
      {
        [(COSGlobalAlertPresentationCoordinator *)self setRecordedSyncBeganMetric:0];
      }
    }

    [(COSGlobalAlertPresentationCoordinator *)self update];
  }
}

- (void)setNanoRegistryStatus:(unint64_t)a3
{
  if (self->_nanoRegistryStatus != a3)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: setNanoRegistryStatus: %ld", &v6, 0xCu);
    }

    self->_nanoRegistryStatus = a3;
    [(COSGlobalAlertPresentationCoordinator *)self update];
  }
}

- (void)nanoRegistryStatusChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NRPairedDeviceRegistryStatusKey];

  -[COSGlobalAlertPresentationCoordinator setNanoRegistryStatus:](self, "setNanoRegistryStatus:", [v5 integerValue]);
}

- (void)_presentModalAlert:(unint64_t)a3
{
  activeGlobalAlerts = self->_activeGlobalAlerts;
  v5 = 1 << a3;
  v6 = activeGlobalAlerts | v5;
  if (activeGlobalAlerts != (activeGlobalAlerts | v5))
  {
    self->_activeGlobalAlerts = v6;
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = a3;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: _presentModalAlert:%ld = %x", &v8, 0x12u);
    }
  }
}

- (void)_dismissModalAlert:(unint64_t)a3
{
  activeGlobalAlerts = self->_activeGlobalAlerts;
  v5 = activeGlobalAlerts & ~(1 << a3);
  if (activeGlobalAlerts != v5)
  {
    self->_activeGlobalAlerts = v5;
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_activeGlobalAlerts;
      v9 = 134218240;
      v10 = a3;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: _dismissModalAlert:%ld = %x", &v9, 0x12u);
    }
  }
}

- (void)addAlertPresenterObserver:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v16 = 134218242;
    v17 = v4;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: adding observer %p %@", &v16, 0x16u);
  }

  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:v4];
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSHashTable *)self->_observers count];
    v16 = 134217984;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: observers count %ld", &v16, 0xCu);
  }

  os_unfair_lock_unlock(&self->_observersLock);
  v10 = [(COSGlobalAlertPresentationCoordinator *)self getHighestPriorityGlobalAlert];
  if (v10 != -1)
  {
    v11 = v10;
    if (self->_isPresenting || self->_isPresented) && (objc_opt_respondsToSelector())
    {
      v12 = pbb_bridge_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(COSGlobalAlertPresentationCoordinator *)self stringForAlertType:v11];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412802;
        v17 = v13;
        v18 = 2048;
        v19 = v4;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: New observer- requesting display of VC %@ to %p %@", &v16, 0x20u);
      }

      [v4 globalAlertPresentationCoordinator:self presentAlert:v11 withCompletion:&stru_10026B4E0];
    }
  }
}

- (void)removeAlertPresenterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_enumerateAlertPresenterObservers:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_observersLock);
  v8 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = [v8 count];
  if (v22[3])
  {
    if (v7)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000D0E24;
      v18[3] = &unk_10026B508;
      v20 = &v21;
      v19 = v7;
      v9 = objc_retainBlock(v18);
    }

    else
    {
      v9 = 0;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          (*(v6 + 2))(v6, *(*(&v14 + 1) + 8 * v13), v9);
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v11);
    }
  }

  else if (v7)
  {
    dispatch_async(&_dispatch_main_q, v7);
  }

  _Block_object_dispose(&v21, 8);
}

- (id)stringForAlertType:(unint64_t)a3
{
  if (a3 == -1)
  {
    v5 = @"None";
  }

  else
  {
    v5 = [(NSArray *)self->_alertTypeStrings objectAtIndexedSubscript:v3];
  }

  return v5;
}

- (void)updateSyncProgress:(BOOL)a3
{
  v3 = a3;
  v5 = [(COSGlobalAlertPresentationCoordinator *)self getHighestPriorityGlobalAlert];
  if (v3)
  {
    self->_pendingSyncProgressForce = 1;
  }

  if (!v5)
  {
    if (self->_pendingSyncProgressForce)
    {
      pairedSyncProgress = self->_pairedSyncProgress;
    }

    else
    {
      pairedSyncProgress = self->_pairedSyncProgress;
      if ((self->_lastDisplayedSyncProgress * 100.0) == (pairedSyncProgress * 100.0))
      {
        return;
      }
    }

    self->_pendingSyncProgressForce = 0;
    self->_lastDisplayedSyncProgress = pairedSyncProgress;
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_pairedSyncProgress;
      *buf = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Sync progress update %1.2f", buf, 0xCu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D145C;
    v9[3] = &unk_10026B580;
    v9[4] = self;
    [(COSGlobalAlertPresentationCoordinator *)self _enumerateAlertPresenterObservers:v9 withCompletion:&stru_10026B5A0];
  }
}

@end