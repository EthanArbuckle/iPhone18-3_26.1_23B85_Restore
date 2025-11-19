@interface CARSetupPromptDirector
- (CARSetupPromptDirector)initWithPresenter:(id)a3;
- (CARSetupPromptPresenting)presenter;
- (id)_remoteAssetProgress;
- (void)_presenterIsReady;
- (void)_servicePerform:(id)a3;
- (void)_setupConnection;
- (void)_synchronous_servicePerform:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)presenterDidDismiss;
@end

@implementation CARSetupPromptDirector

- (CARSetupPromptDirector)initWithPresenter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CARSetupPromptDirector;
  v5 = [(CARSetupPromptDirector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presenter, v4);
    [(CARSetupPromptDirector *)v6 _setupConnection];
    [(CARSetupPromptDirector *)v6 _presenterIsReady];
  }

  return v6;
}

- (void)dealloc
{
  [(CARSetupPromptDirector *)self invalidate];
  v3.receiver = self;
  v3.super_class = CARSetupPromptDirector;
  [(CARSetupPromptDirector *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = [(CARSetupPromptDirector *)self connection];
  [v3 invalidate];

  [(CARSetupPromptDirector *)self setConnection:0];
}

- (void)presenterDidDismiss
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "presenterDidDismiss", v4, 2u);
  }

  [(CARSetupPromptDirector *)self _synchronous_servicePerform:&stru_100010588];
}

- (void)_presenterIsReady
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "presenterIsReady", v4, 2u);
  }

  [(CARSetupPromptDirector *)self _synchronous_servicePerform:&stru_1000105E8];
}

- (id)_remoteAssetProgress
{
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "requesting remote asset progress", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_100006E98;
  v13 = sub_100006EA8;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006EB0;
  v8[3] = &unk_100010650;
  v8[4] = buf;
  [(CARSetupPromptDirector *)self _servicePerform:v8];
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(v10 + 5);
    *v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "remote asset progress: %@", v15, 0xCu);
  }

  v6 = *(v10 + 5);
  _Block_object_dispose(buf, 8);

  return v6;
}

- (void)_setupConnection
{
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.carkit.setupPromptDirector.service" options:4096];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSetupPromptDirectorService];
  [v3 setRemoteObjectInterface:v4];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRSetupPromptPresenterService];
  [v3 setExportedInterface:v5];
  v6 = objc_alloc_init(CARSetupPromptPresenterProxy);
  [(CARSetupPromptPresenterProxy *)v6 setDirector:self];
  [v3 setExportedObject:v6];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000071DC;
  v9[3] = &unk_100010678;
  objc_copyWeak(&v10, &location);
  [v3 setInterruptionHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000072D8;
  v7[3] = &unk_100010678;
  objc_copyWeak(&v8, &location);
  [v3 setInvalidationHandler:v7];
  [v3 resume];
  [(CARSetupPromptDirector *)self setConnection:v3];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_servicePerform:(id)a3
{
  v4 = a3;
  v5 = [(CARSetupPromptDirector *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_1000106B8];

  v4[2](v4, v6);
}

- (void)_synchronous_servicePerform:(id)a3
{
  v4 = a3;
  v5 = [(CARSetupPromptDirector *)self connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000106D8];

  v4[2](v4, v6);
}

- (CARSetupPromptPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end