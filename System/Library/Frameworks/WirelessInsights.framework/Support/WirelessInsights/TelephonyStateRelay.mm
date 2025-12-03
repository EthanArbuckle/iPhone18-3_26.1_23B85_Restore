@interface TelephonyStateRelay
+ (TelephonyStateRelay)sharedInstance;
+ (id)deriveDataIcon:(unint64_t)icon stewieState:(id)state;
+ (void)setError:(id *)error code:(int64_t)code message:(id)message;
- (BOOL)getAirplaneModeActive:(id *)active;
- (BOOL)getInterfaceCostExpensive:(id)expensive error:(id *)error;
- (BOOL)getIsSatelliteProvisioned:(id)provisioned error:(id *)error;
- (BOOL)getLowDataMode:(id)mode error:(id *)error;
- (BOOL)isCallActiveOnContextOtherThan:(id)than;
- (BOOL)isMultiSim;
- (CTXPCServiceSubscriptionContext)lastDataSimContext;
- (NSString)lastDataSimRegistrationStatus;
- (TelephonyStateRelay)init;
- (id).cxx_construct;
- (id)copyCTRegistrationStatus:(id)status error:(id *)error;
- (id)fetchDataSimRegistrationStatus;
- (id)findDelegateEntryByDelegate:(id)delegate;
- (id)getCTSignalStrengthInfo:(id)info error:(id *)error;
- (id)getHomeCarrierMCC:(id)c error:(id *)error;
- (id)getHomeCarrierMNC:(id)c error:(id *)error;
- (id)getTelephonyClientInstance;
- (void)addTelephonyStateDelegate:(id)delegate withQueue:(dispatch_queue_s *)queue;
- (void)airplaneModeStatusChanged;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)ctServerCellularTransmitStateNotification:(__CFDictionary *)notification;
- (void)ctServerRadioStateChangedNotification:(__CFDictionary *)notification;
- (void)currentDataSimChanged:(id)changed;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
- (void)getAirplaneModeStatus:(id)status;
- (void)getRadioAccessTechnology:(id)technology delegate:(id)delegate;
- (void)getRadioStateForDelegate:(id)delegate;
- (void)getSatelliteRegistrationStatus:(id)status delegate:(id)delegate;
- (void)handleContextUpdated:(id)updated forKey:(int)key withState:(id)state;
- (void)handleCurrentDataSimChanged:(id)changed;
- (void)handlePlmnChanged:(id)changed plmn:(id)plmn;
- (void)handleRadioAccessTechnologyChanged:(id)changed info:(id)info;
- (void)handleRegistrationStatusChanged:(id)changed;
- (void)handleSignalStrengthChangedExternal:(id)external info:(id)info;
- (void)handleTUCallCenterCallStatusChangedNotification;
- (void)registerAirplaneModeCallbacks;
- (void)removeTelephonyStateDelegate:(id)delegate;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)subscriptionInfoDidChange;
@end

@implementation TelephonyStateRelay

+ (TelephonyStateRelay)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D1A8;
  block[3] = &unk_1002AB480;
  block[4] = self;
  if (qword_1002D8390 != -1)
  {
    dispatch_once(&qword_1002D8390, block);
  }

  v2 = qword_1002D8388;

  return v2;
}

- (void)handleTUCallCenterCallStatusChangedNotification
{
  telephonyClientQueue = self->_telephonyClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015AB0;
  block[3] = &unk_1002AB4D0;
  block[4] = self;
  dispatch_async(telephonyClientQueue, block);
}

- (TelephonyStateRelay)init
{
  v44.receiver = self;
  v44.super_class = TelephonyStateRelay;
  v2 = [(TelephonyStateRelay *)&v44 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableSet);
    delegates = v3->_delegates;
    v3->_delegates = v4;

    v3->_telephonyClientQueue = dispatch_queue_create("com.apple.wirelessinsightsd.TelephonyStateRelay.CallbackQueue", 0);
    getTelephonyClientInstance = [(TelephonyStateRelay *)v3 getTelephonyClientInstance];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = getTelephonyClientInstance;

    v8 = [[CTStewieStateMonitor alloc] initWithDelegate:v3 queue:v3->_telephonyClientQueue];
    stewieStateMonitor = v3->_stewieStateMonitor;
    v3->_stewieStateMonitor = v8;

    v10 = v3->_coreTelephonyClient;
    v43 = 0;
    v11 = [(CoreTelephonyClient *)v10 getCurrentDataSubscriptionContextSync:&v43];
    v12 = v43;
    lastDataSimContext = v3->_lastDataSimContext;
    v3->_lastDataSimContext = v11;

    [(CTStewieStateMonitor *)v3->_stewieStateMonitor start];
    v14 = [TUCallCenter callCenterWithQueue:v3->_telephonyClientQueue];
    tuCallCenter = v3->_tuCallCenter;
    v3->_tuCallCenter = v14;

    [(TelephonyStateRelay *)v3 registerAirplaneModeCallbacks];
    v3->_isMultiSim = [(TelephonyStateRelay *)v3 isMultiSim];
    telephonyClientQueue = v3->_telephonyClientQueue;
    location = _CTServerConnectionCreateOnTargetQueue();
    sub_10007D6F0(&v3->_ctServerConnection.fRef, &location);
    objc_initWeak(&location, v3);
    fRef = v3->_ctServerConnection.fRef;
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_10007D72C;
    v40 = &unk_1002AD7B8;
    objc_copyWeak(&v41, &location);
    _CTServerConnectionRegisterBlockForNotification();
    v36 = 5;
    v18 = v3->_ctServerConnection.fRef;
    _CTServerConnectionGetRadioState();
    v19 = [NSNumber numberWithInt:5];
    radioState = v3->_radioState;
    v3->_radioState = v19;

    cellularTransmitState = v3->_cellularTransmitState;
    v3->_cellularTransmitState = @"unknown";

    v22 = v3->_ctServerConnection.fRef;
    objc_copyWeak(&v35, &location);
    _CTServerConnectionRegisterBlockForNotification();
    v23 = v3->_ctServerConnection.fRef;
    if (!_CTServerConnectionCopyCellularTransmitState())
    {
      [(TelephonyStateRelay *)v3 ctServerCellularTransmitStateNotification:0];
    }

    v24 = [NSMutableArray alloc];
    v25 = [NSString stringWithUTF8String:"NotSet"];
    v45[0] = v25;
    v26 = [NSString stringWithUTF8String:"NotSet"];
    v45[1] = v26;
    v27 = [NSArray arrayWithObjects:v45 count:2];
    v28 = [v24 initWithArray:v27];
    currentRadioAccessTechnology = v3->_currentRadioAccessTechnology;
    v3->_currentRadioAccessTechnology = v28;

    v30 = [[NSMutableArray alloc] initWithArray:&off_1002BF8A8];
    currentSatelliteStatus = v3->_currentSatelliteStatus;
    v3->_currentSatelliteStatus = v30;

    activeCallServices = v3->_activeCallServices;
    v3->_activeCallServices = 0;

    [(TelephonyStateRelay *)v3 handleTUCallCenterCallStatusChangedNotification];
    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v3 selector:"handleTUCallCenterCallStatusChangedNotification" name:TUCallCenterCallStatusChangedNotification object:0];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    [(CoreTelephonyClient *)coreTelephonyClient setDelegate:0];
  }

  if (self->_ctServerConnection.fRef)
  {
    _CTServerConnectionUnregisterForAllNotifications();
  }

  [(NSMutableSet *)self->_delegates removeAllObjects];
  v4.receiver = self;
  v4.super_class = TelephonyStateRelay;
  [(TelephonyStateRelay *)&v4 dealloc];
}

- (void)addTelephonyStateDelegate:(id)delegate withQueue:(dispatch_queue_s *)queue
{
  delegateCopy = delegate;
  v7 = delegateCopy;
  if (delegateCopy)
  {
    if (queue)
    {
      telephonyClientQueue = self->_telephonyClientQueue;
      if (telephonyClientQueue)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007D93C;
        block[3] = &unk_1002AB848;
        selfCopy = self;
        queueCopy = queue;
        v10 = delegateCopy;
        dispatch_async(telephonyClientQueue, block);
      }
    }
  }
}

- (void)removeTelephonyStateDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    telephonyClientQueue = self->_telephonyClientQueue;
    if (telephonyClientQueue)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10007DA6C;
      v7[3] = &unk_1002AD7E0;
      v7[4] = self;
      v8 = delegateCopy;
      dispatch_async(telephonyClientQueue, v7);
    }
  }
}

- (id)getTelephonyClientInstance
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    v3 = coreTelephonyClient;
  }

  else
  {
    v3 = [[CoreTelephonyClient alloc] initWithQueue:self->_telephonyClientQueue];
    [(CoreTelephonyClient *)v3 setDelegate:self];
  }

  return v3;
}

- (void)registerAirplaneModeCallbacks
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, "com.apple.wirelessinsightsd.TelephonyStateRelayPrefs", 0x600u);
  v14 = v3;
  if (v3)
  {
    v4 = v3;
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, "com.apple.radios.plist", 0x600u);
    v13 = v5;
    if (v5)
    {
      context.version = SCPreferencesCreate(kCFAllocatorDefault, v4, v5);
      sub_10007DE40(&self->_airplaneModePrefs.fRef, &context);
      fRef = self->_airplaneModePrefs.fRef;
      if (fRef)
      {
        context.version = 0;
        context.info = self;
        memset(&context.retain, 0, 24);
        if (SCPreferencesSetCallback(fRef, sub_10007DE7C, &context))
        {
          if (!SCPreferencesSetDispatchQueue(self->_airplaneModePrefs.fRef, self->_telephonyClientQueue) && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_1002019D0();
          }
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          sub_100201A04();
        }

        v11 = 0;
        v7 = [(TelephonyStateRelay *)self getAirplaneModeActive:&v11];
        v8 = v11;
        self->_airplaneModeActive = v7;
        if (v8)
        {
          v9 = *(qword_1002DBE98 + 48);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            localizedDescription = [v8 localizedDescription];
            *buf = 138412290;
            v16 = localizedDescription;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TelephonyStateRelay:#N Unable to fetch airplane mode status: %@", buf, 0xCu);
          }

          self->_airplaneModeActive = 0;
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_100201A38();
      }

      CFRelease(v5);
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100201A6C();
    }

    CFRelease(v4);
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_100201AA0();
  }
}

- (BOOL)getAirplaneModeActive:(id *)active
{
  if (self->_airplaneModePrefs.fRef)
  {
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, "AirplaneMode", 0x600u);
    if (v5)
    {
      v6 = v5;
      SCPreferencesSynchronize(self->_airplaneModePrefs.fRef);
      SCPreferencesLock(self->_airplaneModePrefs.fRef, 1u);
      Value = SCPreferencesGetValue(self->_airplaneModePrefs.fRef, v6);
      SCPreferencesUnlock(self->_airplaneModePrefs.fRef);
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFBooleanGetTypeID())
        {
          bOOLValue = [Value BOOLValue];

LABEL_12:
          CFRelease(v6);
          return bOOLValue;
        }

        CFRelease(Value);
        v10 = @"Returned value for airplane mode status is of unexpected type";
      }

      else
      {
        v10 = @"Could not retrieve airplane mode preference";
      }

      [TelephonyStateRelay setError:active code:0 message:v10];
      bOOLValue = 0;
      goto LABEL_12;
    }

    [TelephonyStateRelay setError:active code:0 message:@"Could not allocate preference name"];
  }

  else
  {
    [TelephonyStateRelay setError:active code:0 message:@"Airplane mode preferences not set, cannot fetch status"];
  }

  return 0;
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  [(TelephonyStateRelay *)self handleCellMonitorUpdate:updateCopy info:infoCopy];
  [(TelephonyStateRelay *)self handleRadioAccessTechnologyChanged:updateCopy info:infoCopy];
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  [(TelephonyStateRelay *)self handleSignalStrengthChanged:changedCopy info:infoCopy];
  [(TelephonyStateRelay *)self handleSignalStrengthChangedExternal:changedCopy info:infoCopy];
}

- (void)currentDataSimChanged:(id)changed
{
  changedCopy = changed;
  os_unfair_lock_lock(&self->_lock);
  if (([(CTXPCServiceSubscriptionContext *)self->_lastDataSimContext isEqual:changedCopy]& 1) == 0)
  {
    v6 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uuid = [changedCopy uuid];
      isMultiSim = self->_isMultiSim;
      v9 = 138412546;
      v10 = uuid;
      v11 = 1024;
      v12 = isMultiSim;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TelephonyStateRelay:#I Data context changed to %@: _isMultiSim: %{BOOL}d", &v9, 0x12u);
    }

    objc_storeStrong(&self->_lastDataSimContext, changed);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(TelephonyStateRelay *)self handleCurrentDataSimChanged:changedCopy];
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  [(TelephonyStateRelay *)self handleDisplayStatusChanged:changedCopy displayStatus:statusCopy];
  [(TelephonyStateRelay *)self handleRegistrationStatusChanged:changedCopy];
  -[TelephonyStateRelay handleSatelliteRegistrationStatusForContext:changedTo:](self, "handleSatelliteRegistrationStatusForContext:changedTo:", changedCopy, [statusCopy isSatelliteSystem]);
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  contextCopy = context;
  changedCopy = changed;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    uuid = [contextCopy uuid];
    sub_100201AD4(uuid, changedCopy, &v11);
  }

  v9 = [changedCopy valueForKey:kCTCapabilitySatellite];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 valueForKey:kCTCapabilityStatus];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [(TelephonyStateRelay *)self handleSatelliteCapabilityChanged:contextCopy info:v10];
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100201B2C();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100201B60();
  }
}

- (void)subscriptionInfoDidChange
{
  self->_isMultiSim = [(TelephonyStateRelay *)self isMultiSim];

  [(TelephonyStateRelay *)self handleSubscriptionInfoChanged];
}

- (void)ctServerRadioStateChangedNotification:(__CFDictionary *)notification
{
  if (notification)
  {
    v4 = CFDictionaryGetValue(notification, kCTRadioStateKey);
    if (v4)
    {
      if (![(NSNumber *)self->_radioState isEqualToNumber:v4])
      {
        objc_storeStrong(&self->_radioState, v4);
        [(TelephonyStateRelay *)self handleRadioStateChangedTo:v4];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100201B94();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100201BC8();
  }
}

- (void)ctServerCellularTransmitStateNotification:(__CFDictionary *)notification
{
  if (notification)
  {
    v4 = CFDictionaryGetValue(notification, kKeyCTCellularTransmitState);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      if (![(NSString *)self->_cellularTransmitState isEqualToString:v5])
      {
        objc_storeStrong(&self->_cellularTransmitState, v4);
        [(TelephonyStateRelay *)self handleCellularTransmitStateChangedTo:v5];
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100201BFC();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100201C30();
  }
}

- (id)getCTSignalStrengthInfo:(id)info error:(id *)error
{
  v4 = [(CoreTelephonyClient *)self->_coreTelephonyClient getSignalStrengthInfo:info error:error];

  return v4;
}

- (id)copyCTRegistrationStatus:(id)status error:(id *)error
{
  statusCopy = status;
  coreTelephonyClient = [(TelephonyStateRelay *)self coreTelephonyClient];
  v8 = [coreTelephonyClient copyRegistrationStatus:statusCopy error:error];

  os_unfair_lock_lock(&self->_lock);
  if ([(CTXPCServiceSubscriptionContext *)self->_lastDataSimContext isEqual:statusCopy])
  {
    objc_storeStrong(&self->_lastDataSimRegistrationStatus, v8);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)getLowDataMode:(id)mode error:(id *)error
{
  v6 = [CTServiceDescriptor descriptorWithSubscriptionContext:mode];
  LOBYTE(error) = [(CoreTelephonyClient *)self->_coreTelephonyClient lowDataMode:v6 error:error];

  return error;
}

- (BOOL)getInterfaceCostExpensive:(id)expensive error:(id *)error
{
  v6 = [CTServiceDescriptor descriptorWithSubscriptionContext:expensive];
  LOBYTE(error) = [(CoreTelephonyClient *)self->_coreTelephonyClient interfaceCostExpensive:v6 error:error];

  return error;
}

- (NSString)lastDataSimRegistrationStatus
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastDataSimRegistrationStatus;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CTXPCServiceSubscriptionContext)lastDataSimContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastDataSimContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)fetchDataSimRegistrationStatus
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastDataSimContext;
  if (v3)
  {
    os_unfair_lock_unlock(&self->_lock);
    v4 = 0;
LABEL_5:
    v10 = v4;
    v7 = [(TelephonyStateRelay *)self copyCTRegistrationStatus:v3 error:&v10];
    v8 = v10;

    v4 = v8;
    goto LABEL_6;
  }

  coreTelephonyClient = self->_coreTelephonyClient;
  v11 = 0;
  v6 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContextSync:&v11];
  v4 = v11;
  objc_storeStrong(&self->_lastDataSimContext, v6);
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v3 = v6;
    goto LABEL_5;
  }

  v3 = 0;
  v7 = 0;
LABEL_6:

  return v7;
}

- (void)getRadioStateForDelegate:(id)delegate
{
  delegateCopy = delegate;
  telephonyClientQueue = self->_telephonyClientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007EB6C;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(telephonyClientQueue, v7);
}

- (void)getRadioAccessTechnology:(id)technology delegate:(id)delegate
{
  technologyCopy = technology;
  delegateCopy = delegate;
  telephonyClientQueue = self->_telephonyClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007ED90;
  block[3] = &unk_1002AD808;
  v12 = technologyCopy;
  selfCopy = self;
  v14 = delegateCopy;
  v9 = delegateCopy;
  v10 = technologyCopy;
  dispatch_async(telephonyClientQueue, block);
}

- (void)getSatelliteRegistrationStatus:(id)status delegate:(id)delegate
{
  statusCopy = status;
  delegateCopy = delegate;
  telephonyClientQueue = self->_telephonyClientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F04C;
  block[3] = &unk_1002AD808;
  v12 = statusCopy;
  selfCopy = self;
  v14 = delegateCopy;
  v9 = delegateCopy;
  v10 = statusCopy;
  dispatch_async(telephonyClientQueue, block);
}

- (void)getAirplaneModeStatus:(id)status
{
  statusCopy = status;
  telephonyClientQueue = self->_telephonyClientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F2A4;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(telephonyClientQueue, v7);
}

- (BOOL)getIsSatelliteProvisioned:(id)provisioned error:(id *)error
{
  v6 = 0;
  *error = [(CoreTelephonyClient *)self->_coreTelephonyClient context:provisioned getCapability:kCTCapabilitySatellite status:&v6 with:0];
  return v6;
}

- (id)getHomeCarrierMCC:(id)c error:(id *)error
{
  v4 = [(CoreTelephonyClient *)self->_coreTelephonyClient copyMobileSubscriberCountryCode:c error:error];

  return v4;
}

- (id)getHomeCarrierMNC:(id)c error:(id *)error
{
  v4 = [(CoreTelephonyClient *)self->_coreTelephonyClient copyMobileSubscriberNetworkCode:c error:error];

  return v4;
}

- (void)handleCurrentDataSimChanged:(id)changed
{
  changedCopy = changed;
  fetchDataSimRegistrationStatus = [(TelephonyStateRelay *)self fetchDataSimRegistrationStatus];
  [(TelephonyStateRelay *)self handleContextUpdated:changedCopy forKey:3 withState:0];
}

- (void)handleRegistrationStatusChanged:(id)changed
{
  changedCopy = changed;
  if (changedCopy)
  {
    coreTelephonyClient = [(TelephonyStateRelay *)self coreTelephonyClient];
    v14 = 0;
    v6 = [coreTelephonyClient copyRegistrationStatus:changedCopy error:&v14];
    v7 = v14;

    os_unfair_lock_lock(&self->_lock);
    if ([(CTXPCServiceSubscriptionContext *)self->_lastDataSimContext isEqual:changedCopy])
    {
      objc_storeStrong(&self->_lastDataSimRegistrationStatus, v6);
    }

    os_unfair_lock_unlock(&self->_lock);
    v8 = *(qword_1002DBE98 + 48);
    if (v7 || !v6)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v7 localizedDescription];
        sub_100201C64(localizedDescription, buf, v8);
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        uuid = [changedCopy uuid];
        isMultiSim = self->_isMultiSim;
        *buf = 138412802;
        v16 = uuid;
        v17 = 2112;
        v18 = v6;
        v19 = 1024;
        v20 = isMultiSim;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "TelephonyStateRelay:#D Registration status change for context %@: %@, _isMultiSim: %{BOOL}d", buf, 0x1Cu);
      }

      if (+[WISTelephonyUtils isRegistrationDisplayStatusOutOfService:](WISTelephonyUtils, "isRegistrationDisplayStatusOutOfService:", v6) && ([changedCopy uuid], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[TelephonyStateRelay isCallActiveOnContextOtherThan:](self, "isCallActiveOnContextOtherThan:", v9), v9, v10))
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          sub_100201CB0();
        }
      }

      else
      {
        [(TelephonyStateRelay *)self handleContextUpdated:changedCopy forKey:8 withState:v6];
      }
    }
  }
}

- (void)handleSignalStrengthChangedExternal:(id)external info:(id)info
{
  externalCopy = external;
  infoCopy = info;
  uuid = [externalCopy uuid];
  v9 = [(TelephonyStateRelay *)self isCallActiveOnContextOtherThan:uuid];

  if (v9)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100201CE4();
    }
  }

  else
  {
    [(TelephonyStateRelay *)self handleContextUpdated:externalCopy forKey:18 withState:infoCopy];
  }
}

- (void)handlePlmnChanged:(id)changed plmn:(id)plmn
{
  plmnCopy = plmn;
  v6 = [CTXPCServiceSubscriptionContext contextWithServiceDescriptor:changed];
  [(TelephonyStateRelay *)self handleContextUpdated:v6 forKey:2 withState:plmnCopy];
}

- (void)handleRadioAccessTechnologyChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  v7 = [WISTelephonyUtils getServingCellInfo:info];
  v20 = 0;
  v8 = [WISTelephonyUtils getRATFromCellInfo:v7 error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v11 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 138412290;
      v22 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TelephonyStateRelay:#N Error while fetching RAT: %@", buf, 0xCu);
    }
  }

  else
  {
    slotID = [changedCopy slotID];
    if (slotID == 1)
    {
      p_currentRadioAccessTechnology = &self->_currentRadioAccessTechnology;
      v18 = [(NSMutableArray *)self->_currentRadioAccessTechnology objectAtIndexedSubscript:0];
      v19 = [v8 isEqual:v18];

      if ((v19 & 1) == 0)
      {
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if (slotID != 2)
      {
LABEL_15:
        [(TelephonyStateRelay *)self handleContextUpdated:changedCopy forKey:9 withState:v8];
        goto LABEL_16;
      }

      p_currentRadioAccessTechnology = &self->_currentRadioAccessTechnology;
      v15 = [(NSMutableArray *)self->_currentRadioAccessTechnology objectAtIndexedSubscript:1];
      v16 = [v8 isEqual:v15];

      if ((v16 & 1) == 0)
      {
        v17 = 1;
LABEL_14:
        [(NSMutableArray *)*p_currentRadioAccessTechnology setObject:v8 atIndexedSubscript:v17];
        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

- (void)airplaneModeStatusChanged
{
  v8 = 0;
  v3 = [(TelephonyStateRelay *)self getAirplaneModeActive:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v4 localizedDescription];
      sub_100201D18(localizedDescription, v9, v5);
    }
  }

  else if (self->_airplaneModeActive != v3)
  {
    self->_airplaneModeActive = v3;
    v7 = [NSNumber numberWithBool:v3];
    [(TelephonyStateRelay *)self handleContextUpdated:0 forKey:7 withState:v7];
  }
}

+ (id)deriveDataIcon:(unint64_t)icon stewieState:(id)state
{
  stateCopy = state;
  if ([stateCopy displayStewieInStatusBar] && (objc_msgSend(stateCopy, "displayInactiveSOSInStatusBar") & 1) != 0)
  {
    v6 = "SOS over Satellite";
LABEL_8:
    v7 = [NSString stringWithUTF8String:v6];
    goto LABEL_9;
  }

  if ([stateCopy displayStewieInStatusBar])
  {
    v6 = "Satellite";
    goto LABEL_8;
  }

  if ([stateCopy displayInactiveSOSInStatusBar])
  {
    v6 = "SOS";
    goto LABEL_8;
  }

  v7 = [WISSystemStatusSimulacrum WISSSDataConnectionTypeToString:icon];
LABEL_9:
  v8 = v7;

  return v8;
}

- (BOOL)isMultiSim
{
  if (!self->_coreTelephonyClient)
  {
    return 0;
  }

  coreTelephonyClient = [(TelephonyStateRelay *)self coreTelephonyClient];
  v11 = 0;
  v3 = [coreTelephonyClient getSubscriptionInfoWithError:&v11];
  v4 = v11;

  if (v4 || !v3)
  {
    v8 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v4 localizedDescription];
      sub_100201D64(localizedDescription, v12, v8);
    }

    v7 = 0;
  }

  else
  {
    subscriptionsInUse = [v3 subscriptionsInUse];
    if (subscriptionsInUse)
    {
      v6 = [WISTelephonyUtils sanitizedSubscriptions:subscriptionsInUse];
      v7 = [v6 count] > 1;
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_100201DB0();
      }

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isCallActiveOnContextOtherThan:(id)than
{
  thanCopy = than;
  v5 = thanCopy;
  if (self->_isMultiSim)
  {
    tuCallCenter = self->_tuCallCenter;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000802D0;
    v9[3] = &unk_1002AD830;
    v10 = thanCopy;
    v7 = [(TUCallCenter *)tuCallCenter anyCallPassesTest:v9];
    if (v7 && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100201DE4();
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)handleContextUpdated:(id)updated forKey:(int)key withState:(id)state
{
  updatedCopy = updated;
  stateCopy = state;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_delegates;
  v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        queue = [v13 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000805BC;
        block[3] = &unk_1002AD858;
        block[4] = v13;
        v17 = updatedCopy;
        keyCopy = key;
        v18 = stateCopy;
        dispatch_async(queue, block);
      }

      v10 = [(NSMutableSet *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (id)findDelegateEntryByDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_delegates;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 matchesDelegate:{delegateCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (void)setError:(id *)error code:(int64_t)code message:(id)message
{
  messageCopy = message;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setValue:messageCopy forKey:NSLocalizedDescriptionKey];
  v8 = [NSString stringWithUTF8String:"TelephonyStateRelay"];
  *error = [NSError errorWithDomain:v8 code:code userInfo:v7];
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 9) = 0;
  return self;
}

@end