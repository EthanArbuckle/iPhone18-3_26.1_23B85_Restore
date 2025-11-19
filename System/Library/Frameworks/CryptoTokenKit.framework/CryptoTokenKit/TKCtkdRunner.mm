@interface TKCtkdRunner
- (TKCtkdRunner)initWithArgc:(int)a3 argv:(const char *)a4;
- (TKHostTokenDriverCache)tokenDriverCache;
- (TKHostTokenRegistry)tokenRegistry;
- (TKSmartCardTokenRegistrationRegistry)smartCardTokenRegistrationRegistry;
- (void)ensureSlotWatcherIsRunning;
- (void)run;
@end

@implementation TKCtkdRunner

- (TKHostTokenDriverCache)tokenDriverCache
{
  tokenDriverCache = self->_tokenDriverCache;
  if (!tokenDriverCache)
  {
    v4 = objc_alloc_init(TKHostTokenDriverCache);
    v5 = self->_tokenDriverCache;
    self->_tokenDriverCache = v4;

    tokenDriverCache = self->_tokenDriverCache;
  }

  return tokenDriverCache;
}

- (TKHostTokenRegistry)tokenRegistry
{
  tokenRegistry = self->_tokenRegistry;
  if (!tokenRegistry)
  {
    v4 = [TKHostTokenRegistry alloc];
    v5 = [(TKCtkdRunner *)self tokenDriverCache];
    v6 = +[NSXPCListener anonymousListener];
    v7 = objc_alloc_init(TKHostKeychainHandler);
    v8 = [(TKHostTokenRegistry *)v4 initWithDriverCache:v5 listener:v6 keychain:v7];
    v9 = self->_tokenRegistry;
    self->_tokenRegistry = v8;

    tokenRegistry = self->_tokenRegistry;
  }

  return tokenRegistry;
}

- (TKSmartCardTokenRegistrationRegistry)smartCardTokenRegistrationRegistry
{
  smartCardTokenRegistrationRegistry = self->_smartCardTokenRegistrationRegistry;
  if (!smartCardTokenRegistrationRegistry)
  {
    v4 = [TKSmartCardTokenRegistrationRegistry alloc];
    v5 = [(TKCtkdRunner *)self tokenRegistry];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000381C;
    v9[3] = &unk_100038950;
    v9[4] = self;
    v6 = [(TKSmartCardTokenRegistrationRegistry *)v4 initWithHostTokenRegistry:v5 slotServerConnectionProvider:0 tokenWatcherProvider:v9];
    v7 = self->_smartCardTokenRegistrationRegistry;
    self->_smartCardTokenRegistrationRegistry = v6;

    smartCardTokenRegistrationRegistry = self->_smartCardTokenRegistrationRegistry;
  }

  return smartCardTokenRegistrationRegistry;
}

- (TKCtkdRunner)initWithArgc:(int)a3 argv:(const char *)a4
{
  v30.receiver = self;
  v30.super_class = TKCtkdRunner;
  v6 = [(TKCtkdRunner *)&v30 init];
  v7 = v6;
  if (v6)
  {
    [(TKCtkdRunner *)v6 initializeSandBox];
    v29 = TKClientTokenServerPortName;
    v27 = TKProtocolSlotRegistryName;
    v28 = TKSmartCardRegistrationClientName;
    v8 = TKProtocolSlotClientName;
    do
    {
      while (1)
      {
        v9 = getopt(a3, a4, "stw");
        if (v9 <= 115)
        {
          break;
        }

        if (v9 == 116)
        {
          v11 = [[NSXPCListener alloc] initWithMachServiceName:v29];
          v16 = [[TKTokenServer alloc] initWithTokenServer:v11];
          tokenServer = v7->_tokenServer;
          v7->_tokenServer = v16;

          v18 = [(TKCtkdRunner *)v7 tokenRegistry];
          v19 = [(TKCtkdRunner *)v7 smartCardTokenRegistrationRegistry];
          if (v7->_tokenDriverCache)
          {
            v20 = [(TKCtkdRunner *)v7 smartCardTokenRegistrationRegistry];
            v21 = [(TKCtkdRunner *)v7 tokenDriverCache];
            [v21 setSmartCardTokenRegistrationRegistry:v20];
          }

          slotWatcher = [[NSXPCListener alloc] initWithMachServiceName:v28];
          v22 = [TKSmartCardTokenRegistrationServer alloc];
          v23 = [(TKCtkdRunner *)v7 smartCardTokenRegistrationRegistry];
          v24 = [(TKSmartCardTokenRegistrationServer *)v22 initWithSmartCardTokenRegistry:v23 listener:slotWatcher];
          smartCardRegistrationServer = v7->_smartCardRegistrationServer;
          v7->_smartCardRegistrationServer = v24;

LABEL_12:
        }

        else if (v9 == 119)
        {
          v10 = [TKSlotWatcher alloc];
          v11 = [(TKCtkdRunner *)v7 tokenRegistry];
          v12 = [(TKSlotWatcher *)v10 initWithTokenRegistry:v11];
          slotWatcher = v7->_slotWatcher;
          v7->_slotWatcher = v12;
          goto LABEL_12;
        }
      }

      if (v9 == 115)
      {
        v11 = [[NSXPCListener alloc] initWithMachServiceName:v27];
        slotWatcher = [[NSXPCListener alloc] initWithMachServiceName:v8];
        v14 = [[TKSlotServer alloc] initWithRegistryListener:v11 clientListener:slotWatcher];
        slotServer = v7->_slotServer;
        v7->_slotServer = v14;

        goto LABEL_12;
      }
    }

    while (v9 != -1);
  }

  return v7;
}

- (void)ensureSlotWatcherIsRunning
{
  v3 = [NSXPCConnection alloc];
  v5 = [v3 initWithMachServiceName:TKProtocolSlotClientName options:4096];
  v4 = [(TKCtkdRunner *)self slotWatcher];
  [v4 startWithSlotServer:v5];
}

- (void)run
{
  v3 = sub_100003EC4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D9D4(self, v3);
  }

  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigTermSource = self->_sigTermSource;
  self->_sigTermSource = v4;

  v6 = [(TKCtkdRunner *)self sigTermSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003F08;
  handler[3] = &unk_100038710;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);

  v7 = [(TKCtkdRunner *)self sigTermSource];
  dispatch_activate(v7);

  signal(15, 1);
  v8 = [(TKCtkdRunner *)self slotServer];

  if (v8)
  {
    v9 = [(TKCtkdRunner *)self slotServer];
    [v9 start];

    LODWORD(out_token) = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100004030;
    v22[3] = &unk_100038978;
    v22[4] = self;
    notify_register_dispatch([@"com.apple.system.loginwindow.desktopUp" UTF8String], &out_token, &_dispatch_main_q, v22);
  }

  v10 = [(TKCtkdRunner *)self tokenServer];

  if (v10)
  {
    v11 = [(TKCtkdRunner *)self tokenServer];
    [v11 start];
  }

  if ([(TKCtkdRunner *)self hasRegistry])
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004090;
    block[3] = &unk_100038710;
    block[4] = self;
    dispatch_async(v12, block);
  }

  v13 = [(TKCtkdRunner *)self slotWatcher];

  if (v13)
  {
    [(TKCtkdRunner *)self ensureSlotWatcherIsRunning];
    v14 = [(TKCtkdRunner *)self tokenServer];

    if (v14)
    {
      objc_initWeak(&out_token, self);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100004118;
      v18[3] = &unk_1000389A0;
      objc_copyWeak(&v19, &out_token);
      v15 = [(TKCtkdRunner *)self tokenServer];
      [v15 setEnsureSlotWatcherIsRunning:v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&out_token);
    }
  }

  v16 = [(TKCtkdRunner *)self smartCardRegistrationServer];

  if (v16)
  {
    v17 = [(TKCtkdRunner *)self smartCardRegistrationServer];
    [v17 start];
  }
}

@end