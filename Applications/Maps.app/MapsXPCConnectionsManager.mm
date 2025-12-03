@interface MapsXPCConnectionsManager
+ (id)sharedManager;
- (MapsXPCConnectionsManager)init;
- (void)_fetchListenerEndpoints;
- (void)_handleInvalidatedConnection:(id)connection;
- (void)_initializeBrokerConnectionIfNeeded;
- (void)dealloc;
- (void)listenerEndpointDidChange:(id)change forIdentifier:(id)identifier;
@end

@implementation MapsXPCConnectionsManager

+ (id)sharedManager
{
  if (qword_10195F1A0 != -1)
  {
    dispatch_once(&qword_10195F1A0, &stru_101654168);
  }

  v3 = qword_10195F198;

  return v3;
}

- (MapsXPCConnectionsManager)init
{
  v6.receiver = self;
  v6.super_class = MapsXPCConnectionsManager;
  v2 = [(MapsXPCConnectionsManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MapsXPCConnectionsManager *)v2 _initializeBrokerConnectionIfNeeded];
    [(MapsXPCConnectionsManager *)v3 _fetchListenerEndpoints];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_100DAA32C, @"com.apple.Maps.mapspushd.DidLaunchNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)_initializeBrokerConnectionIfNeeded
{
  v3 = sub_100E9E6E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager _initializeBrokerConnectionIfNeeded", buf, 2u);
  }

  if (self->_brokerConnection)
  {
    v4 = sub_100E9E6E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager broker connection already exists", buf, 2u);
    }
  }

  else
  {
    v5 = +[NSXPCConnection _maps_mapsConnectionBrokerEndpointProviderConnection];
    brokerConnection = self->_brokerConnection;
    self->_brokerConnection = v5;

    [(NSXPCConnection *)self->_brokerConnection setExportedObject:self];
    v7 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointConsumerInterface];
    [(NSXPCConnection *)self->_brokerConnection setExportedInterface:v7];

    v8 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointProviderInterface];
    [(NSXPCConnection *)self->_brokerConnection setRemoteObjectInterface:v8];

    objc_initWeak(buf, self);
    objc_initWeak(&location, self->_brokerConnection);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100DAA248;
    v14[3] = &unk_101654190;
    objc_copyWeak(&v15, buf);
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_brokerConnection setInvalidationHandler:v14];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100DAA2AC;
    v12 = &unk_101661B98;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)self->_brokerConnection setInterruptionHandler:&v9];
    [(NSXPCConnection *)self->_brokerConnection resume:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

- (void)_fetchListenerEndpoints
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000080F0;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  if (+[NSThread isMainThread])
  {
    (v2[2])(v2);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F750;
    block[3] = &unk_101661760;
    v4 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)listenerEndpointDidChange:(id)change forIdentifier:(id)identifier
{
  changeCopy = change;
  identifierCopy = identifier;
  v7 = sub_100E9E6E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "[MapsXPCConnectionsManager listenerEndpointDidChange:forIdentifier:]";
    v15 = 2112;
    v16 = changeCopy;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager %s %@ %@", buf, 0x20u);
  }

  if ([identifierCopy isEqualToString:@"kSiriPluginXPCEndpointIdentifier"])
  {
    v8 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v9 = sub_100DA9DB8;
LABEL_9:
    v8[2] = v9;
    v8[3] = &unk_101661B18;
    v8[4] = changeCopy;
    dispatch_async(&_dispatch_main_q, v8);

    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"kCompanionDaemonXPCEndpointIdentifier"])
  {
    v8 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v9 = sub_100DA9E10;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"kPushDaemonXPCEndpointIdentifier"])
  {
    v8 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v9 = sub_100DA9E68;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_handleInvalidatedConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100DAA0C4;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v5 = connectionCopy;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  if (+[NSThread isMainThread])
  {
    (v6[2])(v6);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DAA1EC;
    v7[3] = &unk_101661760;
    v8 = v6;
    dispatch_async(&_dispatch_main_q, v7);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_brokerConnection invalidate];
  v3.receiver = self;
  v3.super_class = MapsXPCConnectionsManager;
  [(MapsXPCConnectionsManager *)&v3 dealloc];
}

@end