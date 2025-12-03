@interface APSConnectionOffloadServer
- (APSConnectionOffloadServer)initWithServerEndpoint:(tb_endpoint_s *)endpoint;
- (APSConnectionOffloadServerDelegate)delegate;
- (void)reportAOPEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(const aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents;
- (void)writeKeepAliveInfoToDisk:(const aonmicroapsd_keepalivestate_s *)disk interface:(unsigned __int8)interface addressFamily:(unsigned __int8)family;
@end

@implementation APSConnectionOffloadServer

- (APSConnectionOffloadServer)initWithServerEndpoint:(tb_endpoint_s *)endpoint
{
  v20.receiver = self;
  v20.super_class = APSConnectionOffloadServer;
  v4 = [(APSConnectionOffloadServer *)&v20 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v4->_serverEndpoint = endpoint;
  objc_initWeak(&location, v4);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BD080;
  v17[3] = &unk_100189E90;
  objc_copyWeak(&v18, &location);
  v6 = objc_retainBlock(v17);
  v7 = v5[4];
  v5[4] = v6;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BD0E8;
  v15[3] = &unk_100189EB8;
  objc_copyWeak(&v16, &location);
  v8 = objc_retainBlock(v15);
  v9 = v5[5];
  v5[5] = v8;

  v10 = v5[6];
  v5[6] = &stru_100189EF8;

  v11 = sub_1000C5804(v5[2], v5 + 1);
  if (!v11)
  {
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
LABEL_7:
    v13 = v5;
    goto LABEL_8;
  }

  v12 = +[APSLog offloader];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10010D940(v5, v11, v12);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  v13 = 0;
LABEL_8:

  return v13;
}

- (void)reportAOPEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(const aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents
{
  delegate = [(APSConnectionOffloadServer *)self delegate];
  v7 = *droppedEvents;
  [delegate reportOffloadEvents:events droppedEvents:&v7];
}

- (void)writeKeepAliveInfoToDisk:(const aonmicroapsd_keepalivestate_s *)disk interface:(unsigned __int8)interface addressFamily:(unsigned __int8)family
{
  if (!interface)
  {
    v8 = disk->var1 == 0;
    delegate = [(APSConnectionOffloadServer *)self delegate];
    [delegate connectionOffloadSever:self cacheKeepAliveInterval:v8 isInitialGrowth:disk->var0.var0];
  }
}

- (APSConnectionOffloadServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end