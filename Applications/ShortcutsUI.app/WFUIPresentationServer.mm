@interface WFUIPresentationServer
- (WFUIPresentationServer)init;
- (void)dealloc;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)start;
@end

@implementation WFUIPresentationServer

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v7 = getWFXPCRunnerLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "[WFUIPresentationServer listener:didReceiveConnection:withContext:]";
    v16 = 2048;
    v17 = CACurrentMediaTime();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s [Performance] UI process received connection, %f", buf, 0x16u);
  }

  v8 = [v6 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.shortcuts.dialogpresentation"];

  if (v9)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001824;
    v13[3] = &unk_100028608;
    v13[4] = self;
    [v6 configureConnection:v13];
    [v6 activate];
    v10 = [(WFUIPresentationServer *)self bannerManager];
    [v10 addConnectedHost:v6];
  }

  else
  {
    v11 = sub_1000017D0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 remoteProcess];
      *buf = 136315394;
      v15 = "[WFUIPresentationServer listener:didReceiveConnection:withContext:]";
      v16 = 2112;
      v17 = *&v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [Server-side] Rejecting connection from process (%@) due to lack of entitlements", buf, 0x16u);
    }

    [v6 invalidate];
  }
}

- (void)start
{
  v3 = [(WFUIPresentationServer *)self listener];

  if (!v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001AEC;
    v6[3] = &unk_1000285B8;
    v6[4] = self;
    v4 = [BSServiceConnectionListener listenerWithConfigurator:v6];
    [v4 activate];
    listener = self->_listener;
    self->_listener = v4;
  }
}

- (void)dealloc
{
  v3 = [(WFUIPresentationServer *)self listener];

  if (v3)
  {
    v4 = sub_1000017D0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[WFUIPresentationServer dealloc]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Connection listener is invalidating because the server is getting deallocated", buf, 0xCu);
    }

    v5 = [(WFUIPresentationServer *)self listener];
    [v5 invalidate];

    listener = self->_listener;
    self->_listener = 0;
  }

  v7.receiver = self;
  v7.super_class = WFUIPresentationServer;
  [(WFUIPresentationServer *)&v7 dealloc];
}

- (WFUIPresentationServer)init
{
  v7.receiver = self;
  v7.super_class = WFUIPresentationServer;
  v2 = [(WFUIPresentationServer *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bannerManager = v2->_bannerManager;
    v2->_bannerManager = v3;

    v5 = v2;
  }

  return v2;
}

@end