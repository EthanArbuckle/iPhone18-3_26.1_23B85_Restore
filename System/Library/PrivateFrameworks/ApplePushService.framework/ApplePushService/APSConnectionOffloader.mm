@interface APSConnectionOffloader
- (APSConnectionOffloadingDelegate)offloadDelegate;
- (APSOffloadMetricReporter)metricDelegate;
- (BOOL)_establishTightbeamInterface;
- (unsigned)APSInterfaceToAONInterface:(int64_t)interface;
- (unsigned)PCAddressFamilyToAONAddressFamily:(int)family;
- (void)offloadKeepAlive:(int64_t)alive;
- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents;
- (void)sendAPOriginatedKeepAlive:(int64_t)alive;
- (void)stopOffloading;
@end

@implementation APSConnectionOffloader

- (BOOL)_establishTightbeamInterface
{
  if ((sub_100013188() & 1) == 0)
  {
    v7 = +[APSLog offloader];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: This device does not support AOP2.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  rpc_init();
  server_by_name = rpc_get_server_by_name("com.apple.aop2.uapsd.apsd");
  v4 = +[APSLog offloader];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v18 = 2048;
    v19 = server_by_name;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Got server for micro apsd %p", buf, 0x16u);
  }

  __strlcpy_chk();
  v5 = rpc_interface_open(server_by_name, buf, 0, &self->_serverEndpoint, &self->_clientEndpoint);
  v6 = +[APSLog offloader];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy3 = self;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Opened rpc interface with error %d", &v12, 0x12u);
  }

  if (v5)
  {
    rpc_release_server(server_by_name);
LABEL_11:
    LOBYTE(v8) = 0;
    return v8;
  }

  [(APSConnectionOffloader *)self serverEndpoint];
  sub_1000C4264(&self->_device);
  v10 = [[APSConnectionOffloadServer alloc] initWithServerEndpoint:[(APSConnectionOffloader *)self clientEndpoint]];
  v11 = v10;
  v8 = v10 != 0;
  if (v10)
  {
    [(APSConnectionOffloadServer *)v10 setDelegate:self];
    [(APSConnectionOffloader *)self setServer:v11];
  }

  else
  {
    self->_clientEndpoint = 0;
    self->_serverEndpoint = 0;
    self->_device.connection = 0;
    [(APSConnectionOffloader *)self setServerEndpoint:0];
  }

  rpc_release_server(server_by_name);

  return v8;
}

- (unsigned)PCAddressFamilyToAONAddressFamily:(int)family
{
  if (!family)
  {
    return 4;
  }

  if (family == 1)
  {
    return 6;
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"APSConnectionOffloader.m" lineNumber:132 description:@"Unexpected address family"];

  return -1;
}

- (void)offloadKeepAlive:(int64_t)alive
{
  v5 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:?];
  v6 = +[APSLog offloader];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(alive);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Offloading keep alive to AOP on interface %@", &v8, 0x16u);
  }

  sub_1000C3DA8(&self->_device, v5);
}

- (void)sendAPOriginatedKeepAlive:(int64_t)alive
{
  v5 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:?];
  v6 = +[APSLog offloader];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(alive);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Forcing AP Keep Alive on interface %@", &v8, 0x16u);
  }

  sub_1000C40F0(&self->_device, v5);
}

- (void)stopOffloading
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:v3, v11, v12, v13, v14, selfCopy, v16];
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = [(APSConnectionOffloader *)self PCAddressFamilyToAONAddressFamily:v7, v11, v12, v13, v14, selfCopy, v16];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_1000BCBD8;
      v14 = &unk_100189E68;
      selfCopy = self;
      BYTE4(v16) = v6;
      LODWORD(v16) = v7;
      sub_1000C3F1C(&self->_device, v6, v10);
      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
}

- (unsigned)APSInterfaceToAONInterface:(int64_t)interface
{
  if (!interface)
  {
    return 0;
  }

  if (interface == 1)
  {
    return 1;
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"APSConnectionOffloader.m" lineNumber:194 description:@"Unexpected interface"];

  return -1;
}

- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents
{
  metricDelegate = [(APSConnectionOffloader *)self metricDelegate];
  v7 = *droppedEvents;
  [metricDelegate reportOffloadEvents:events droppedEvents:&v7];
}

- (APSConnectionOffloadingDelegate)offloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_offloadDelegate);

  return WeakRetained;
}

- (APSOffloadMetricReporter)metricDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricDelegate);

  return WeakRetained;
}

@end