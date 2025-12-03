@interface PMSmartPowerNapLocationMonitor
- (BOOL)areAllRemoteDevicesAway;
- (PMSmartPowerNapLocationMonitor)initWithQueue:(id)queue;
- (id)placeToString:(int)string;
- (void)registerForLocalLOISignals;
- (void)registerForRemoteLOISignals;
- (void)updateRemoteLOISyncState:(unint64_t)state;
@end

@implementation PMSmartPowerNapLocationMonitor

- (PMSmartPowerNapLocationMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (qword_1000ACC38 != -1)
  {
    sub_100068204();
  }

  if ((byte_1000ACC30 & 1) != 0 || (v6 = MGGetStringAnswer(), v7 = [v6 isEqualToString:@"iPad"], v6, !v7))
  {
    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PMSmartPowerNapLocationMonitor;
    v8 = [(PMSmartPowerNapLocationMonitor *)&v18 init];
    if (v8)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v9 = qword_1000ACC40;
      v27 = qword_1000ACC40;
      if (!qword_1000ACC40)
      {
        *buf = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_100040498;
        v22 = &unk_1000994A8;
        v23 = &v24;
        sub_100040498(buf);
        v9 = v25[3];
      }

      v10 = v9;
      _Block_object_dispose(&v24, 8);
      v11 = [[v9 alloc] initWithClientName:@"com.apple.powerd"];
      contextSyncClient = v8->_contextSyncClient;
      v8->_contextSyncClient = v11;

      objc_storeStrong(&v8->_queue, queue);
      v13 = +[NSMutableDictionary dictionary];
      remoteLOIs = v8->_remoteLOIs;
      v8->_remoteLOIs = v13;

      [(PMSmartPowerNapLocationMonitor *)v8 registerForLocalLOISignals];
      [(PMSmartPowerNapLocationMonitor *)v8 registerForRemoteLOISignals];
      [(PMSmartPowerNapLocationMonitor *)v8 updateRemoteLOISyncState:1];
    }

    v15 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Initialized SmartPowerNapLocationMonitor", buf, 2u);
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)placeToString:(int)string
{
  if (string > 4)
  {
    return @"Error";
  }

  else
  {
    return *(&off_10009A0D8 + string);
  }
}

- (void)registerForLocalLOISignals
{
  v3 = +[BMStreams semanticLocationStream];
  if (objc_opt_class())
  {
    v4 = [BMBiomeScheduler alloc];
    queue = [(PMSmartPowerNapLocationMonitor *)self queue];
    v6 = [v4 initWithIdentifier:@"com.apple.powerd.biomeLocalLOI" targetQueue:queue];

    publisher = [v3 publisher];
    v8 = [(PMSmartPowerNapLocationMonitor *)self addSPNFiltersToBMDSL:publisher];

    v9 = [v8 subscribeOn:v6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003F874;
    v11[3] = &unk_100099630;
    v11[4] = self;
    v10 = [v9 sinkWithCompletion:&stru_10009A060 receiveInput:v11];

    [(PMSmartPowerNapLocationMonitor *)self setSink:v10];
  }
}

- (void)registerForRemoteLOISignals
{
  v3 = BiomeLibrary();
  contextSync = [v3 ContextSync];
  v5 = [contextSync LOI];

  v6 = [BMBiomeScheduler alloc];
  queue = [(PMSmartPowerNapLocationMonitor *)self queue];
  v8 = [v6 initWithIdentifier:@"com.apple.powerd.biomeRemoteLOI" targetQueue:queue];

  dSLPublisher = [v5 DSLPublisher];
  v10 = [(PMSmartPowerNapLocationMonitor *)self addSPNFiltersToBMDSL:dSLPublisher];

  v11 = [v10 subscribeOn:v8];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003FBE4;
  v13[3] = &unk_100099630;
  v13[4] = self;
  v12 = [v11 sinkWithCompletion:&stru_10009A080 receiveInput:v13];
}

- (void)updateRemoteLOISyncState:(unint64_t)state
{
  queue = [(PMSmartPowerNapLocationMonitor *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003FF4C;
  v6[3] = &unk_100099678;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(queue, v6);
}

- (BOOL)areAllRemoteDevicesAway
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  remoteLOIs = [(PMSmartPowerNapLocationMonitor *)self remoteLOIs];
  v4 = [remoteLOIs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(remoteLOIs);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        remoteLOIs2 = [(PMSmartPowerNapLocationMonitor *)self remoteLOIs];
        v10 = [remoteLOIs2 objectForKeyedSubscript:v8];
        localLOI = [(PMSmartPowerNapLocationMonitor *)self localLOI];

        if (v10 != localLOI)
        {
          ++v5;
        }
      }

      v4 = [remoteLOIs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
    v4 = v5;
  }

  remoteLOIs3 = [(PMSmartPowerNapLocationMonitor *)self remoteLOIs];
  v13 = [remoteLOIs3 count] == v4;

  return v13;
}

@end