@interface CNDLimitedAccessSyncService
+ (id)log;
+ (id)sharedInstance;
- (BOOL)startLimitedAccessTableUpdateEventNotifyWatchTimer;
- (CNDLimitedAccessSyncService)init;
- (id)beginService;
- (id)convertStringtoIntArray:(id)a3;
- (void)cancelLimitedAccessTableUpdateEventNotifyWatchTimer;
- (void)connectWithCompanionDevice;
- (void)handleBundleIdentifiers:(id)a3;
- (void)handleNotificationName:(id)a3;
- (void)invalidateCompanionClient;
- (void)notifyConnectedWatch;
- (void)onEventhandler:(id)a3;
- (void)onRapportDeviceFound:(id)a3;
- (void)onRapportDeviceLost:(id)a3;
- (void)sendSyncRequest;
@end

@implementation CNDLimitedAccessSyncService

+ (id)log
{
  if (qword_10004E1D0 != -1)
  {
    sub_10002D5A4();
  }

  v3 = qword_10004E1D8;

  return v3;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012B38;
  block[3] = &unk_100045580;
  block[4] = a1;
  if (qword_10004E1E0 != -1)
  {
    dispatch_once(&qword_10004E1E0, block);
  }

  v2 = qword_10004E1E8;

  return v2;
}

- (CNDLimitedAccessSyncService)init
{
  v7.receiver = self;
  v7.super_class = CNDLimitedAccessSyncService;
  v2 = [(CNDLimitedAccessSyncService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.contactsd.Sync", 0);
    fDispatchQueue = v2->_fDispatchQueue;
    v2->_fDispatchQueue = v3;

    v5 = [(CNDLimitedAccessSyncService *)v2 beginService];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)beginService
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "beginService", buf, 2u);
  }

  v4 = objc_alloc_init(RPCompanionLinkClient);
  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = v4;

  [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:32];
  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100012E3C;
  v13[3] = &unk_100045CF0;
  objc_copyWeak(&v14, buf);
  [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012E98;
  v11[3] = &unk_100045CF0;
  objc_copyWeak(&v12, buf);
  [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:v11];
  v6 = self->_discoveryClient;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012EF4;
  v10[3] = &unk_100045D18;
  v10[4] = self;
  [(RPCompanionLinkClient *)v6 registerRequestID:@"com.apple.contacts.LimitedAccessSync" options:0 handler:v10];
  v7 = self->_discoveryClient;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013194;
  v9[3] = &unk_100045D40;
  v9[4] = self;
  [(RPCompanionLinkClient *)v7 activateWithCompletion:v9];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  return self;
}

- (void)onRapportDeviceFound:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 model];
    v8 = [v5 name];
    v9 = [v5 effectiveIdentifier];
    v12 = 138412803;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#Rapport discovered nearby device model:%@, name:%@,effectiveID:%{private}@ ", &v12, 0x20u);
  }

  v10 = [v5 effectiveIdentifier];
  v11 = [v10 hasPrefix:@"BTPipe"];

  if (v11)
  {
    objc_storeStrong(&self->_linkedDevice, a3);
  }
}

- (void)onRapportDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(RPCompanionLinkDevice *)v4 name];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Device Lost:name:%@", &v9, 0xCu);
  }

  linkedDevice = self->_linkedDevice;
  if (linkedDevice == v4)
  {
    self->_linkedDevice = 0;

    companionClient = self->_companionClient;
    self->_companionClient = 0;

    [(CNDLimitedAccessSyncService *)self cancelLimitedAccessTableUpdateEventNotifyWatchTimer];
  }
}

- (void)invalidateCompanionClient
{
  [(RPCompanionLinkClient *)self->_companionClient invalidate];
  companionClient = self->_companionClient;
  self->_companionClient = 0;
}

- (void)onEventhandler:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 objectForKeyedSubscript:@"kABLimitedAccessEventKeyType"];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "onEventhandler eventDict %@", &v10, 0xCu);
  }

  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"kABLimitedAccessEventKeyType"];
    v8 = [v7 isEqualToString:@"SyncTableUpdate"];

    if (v8)
    {
      if (self->_companionClient)
      {
        v9 = [objc_opt_class() log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "connectWithCompanionDevice activated, sendSyncRequest", &v10, 2u);
        }

        [(CNDLimitedAccessSyncService *)self sendSyncRequest];
      }

      else
      {
        [(CNDLimitedAccessSyncService *)self connectWithCompanionDevice];
      }
    }
  }
}

- (void)connectWithCompanionDevice
{
  v3 = [objc_opt_class() log];
  v4 = v3;
  if (self->_linkedDevice)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = [(RPCompanionLinkDevice *)self->_linkedDevice effectiveIdentifier];
      v6 = [(RPCompanionLinkDevice *)self->_linkedDevice model];
      *buf = 138478083;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "connecting with companion device, activating %{private}@ %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(RPCompanionLinkClient);
    companionClient = self->_companionClient;
    self->_companionClient = v7;

    [(RPCompanionLinkClient *)self->_companionClient setControlFlags:32];
    [(RPCompanionLinkClient *)self->_companionClient setDestinationDevice:self->_linkedDevice];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100013868;
    v14[3] = &unk_1000455E8;
    v9 = v4;
    v15 = v9;
    [(RPCompanionLinkClient *)self->_companionClient setInvalidationHandler:v14];
    v10 = self->_companionClient;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000138C8;
    v11[3] = &unk_100045D68;
    v12 = v9;
    v13 = self;
    [(RPCompanionLinkClient *)v10 activateWithCompletion:v11];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002D630();
  }
}

- (void)notifyConnectedWatch
{
  v3 = [objc_opt_class() log];
  linkedDevice = self->_linkedDevice;
  v5 = [objc_opt_class() log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (linkedDevice)
  {
    if (v6)
    {
      v7 = [(RPCompanionLinkDevice *)self->_linkedDevice effectiveIdentifier];
      v8 = [(RPCompanionLinkDevice *)self->_linkedDevice model];
      *buf = 138478083;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Activating connection with device %{private}@ %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(RPCompanionLinkClient);
    companionClient = self->_companionClient;
    self->_companionClient = v9;

    [(RPCompanionLinkClient *)self->_companionClient setControlFlags:32];
    [(RPCompanionLinkClient *)self->_companionClient setDestinationDevice:self->_linkedDevice];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013C30;
    v13[3] = &unk_1000455E8;
    v14 = v3;
    [(RPCompanionLinkClient *)self->_companionClient setInvalidationHandler:v13];
    v11 = self->_companionClient;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013C90;
    v12[3] = &unk_100045D40;
    v12[4] = self;
    [(RPCompanionLinkClient *)v11 activateWithCompletion:v12];
    v5 = v14;
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "No Active device", buf, 2u);
  }
}

- (void)handleNotificationName:(id)a3
{
  if ([a3 isEqualToString:@"CNContactStoreLimitedAccessDidChangeNotification"])
  {

    [(CNDLimitedAccessSyncService *)self startLimitedAccessTableUpdateEventNotifyWatchTimer];
  }
}

- (void)handleBundleIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "handleBundleIdentifiers unregistered app", buf, 2u);
  }

  v6 = [(CNDLimitedAccessSyncService *)self fDispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000140B0;
  v8[3] = &unk_100045690;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (id)convertStringtoIntArray:(id)a3
{
  v3 = [a3 componentsSeparatedByString:{@", "}];
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v12 + 1) + 8 * i) intValue]);
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)sendSyncRequest
{
  v22 = RPOptionStatusFlags;
  v23 = &off_100046EE0;
  v3 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v4 = objc_alloc_init(CNContactStore);
  v15 = 0;
  v5 = [v4 getLimitedAccessLastSyncSequenceNumber:&v15];
  v6 = v15;
  if (!v5 || [v5 integerValue] == -1)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002D698();
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "sendSyncRequest lastSyncedSequenceNumber = %@ ", buf, 0xCu);
    }

    v20 = @"LastSyncedSequenceNumber";
    v21 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(RPCompanionLinkClient *)self->_companionClient destinationDevice];
      v11 = [v10 effectiveIdentifier];
      *buf = 138478083;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "sendRequest device %{private}@ last sequence num %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001464C;
    v13[3] = &unk_100045D90;
    v13[4] = self;
    v14 = v4;
    [(RPCompanionLinkClient *)companionClient sendRequestID:@"com.apple.contacts.LimitedAccessSync" request:v8 options:v3 responseHandler:v13];
  }
}

- (BOOL)startLimitedAccessTableUpdateEventNotifyWatchTimer
{
  [(CNDLimitedAccessSyncService *)self cancelLimitedAccessTableUpdateEventNotifyWatchTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_fDispatchQueue);
  fLimitedAccessTableUpdateEventNotifyTimer = self->_fLimitedAccessTableUpdateEventNotifyTimer;
  self->_fLimitedAccessTableUpdateEventNotifyTimer = v3;

  v5 = self->_fLimitedAccessTableUpdateEventNotifyTimer;
  if (v5)
  {
    v6 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    v7 = self->_fLimitedAccessTableUpdateEventNotifyTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100014AD0;
    handler[3] = &unk_1000455E8;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_fLimitedAccessTableUpdateEventNotifyTimer);
  }

  return v5 != 0;
}

- (void)cancelLimitedAccessTableUpdateEventNotifyWatchTimer
{
  if (self->_fLimitedAccessTableUpdateEventNotifyTimer)
  {
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling fLimitedAccessTableUpdateEventNotifyTimer", v5, 2u);
    }

    dispatch_source_cancel(self->_fLimitedAccessTableUpdateEventNotifyTimer);
    fLimitedAccessTableUpdateEventNotifyTimer = self->_fLimitedAccessTableUpdateEventNotifyTimer;
    self->_fLimitedAccessTableUpdateEventNotifyTimer = 0;
  }
}

@end