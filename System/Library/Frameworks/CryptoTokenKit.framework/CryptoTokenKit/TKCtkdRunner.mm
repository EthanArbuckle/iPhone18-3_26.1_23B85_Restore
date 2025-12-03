@interface TKCtkdRunner
- (TKCtkdRunner)initWithArgc:(int)argc argv:(const char *)argv;
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
    tokenDriverCache = [(TKCtkdRunner *)self tokenDriverCache];
    v6 = +[NSXPCListener anonymousListener];
    v7 = objc_alloc_init(TKHostKeychainHandler);
    v8 = [(TKHostTokenRegistry *)v4 initWithDriverCache:tokenDriverCache listener:v6 keychain:v7];
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
    tokenRegistry = [(TKCtkdRunner *)self tokenRegistry];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000381C;
    v9[3] = &unk_100038950;
    v9[4] = self;
    v6 = [(TKSmartCardTokenRegistrationRegistry *)v4 initWithHostTokenRegistry:tokenRegistry slotServerConnectionProvider:0 tokenWatcherProvider:v9];
    v7 = self->_smartCardTokenRegistrationRegistry;
    self->_smartCardTokenRegistrationRegistry = v6;

    smartCardTokenRegistrationRegistry = self->_smartCardTokenRegistrationRegistry;
  }

  return smartCardTokenRegistrationRegistry;
}

- (TKCtkdRunner)initWithArgc:(int)argc argv:(const char *)argv
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
        v9 = getopt(argc, argv, "stw");
        if (v9 <= 115)
        {
          break;
        }

        if (v9 == 116)
        {
          tokenRegistry2 = [[NSXPCListener alloc] initWithMachServiceName:v29];
          v16 = [[TKTokenServer alloc] initWithTokenServer:tokenRegistry2];
          tokenServer = v7->_tokenServer;
          v7->_tokenServer = v16;

          tokenRegistry = [(TKCtkdRunner *)v7 tokenRegistry];
          smartCardTokenRegistrationRegistry = [(TKCtkdRunner *)v7 smartCardTokenRegistrationRegistry];
          if (v7->_tokenDriverCache)
          {
            smartCardTokenRegistrationRegistry2 = [(TKCtkdRunner *)v7 smartCardTokenRegistrationRegistry];
            tokenDriverCache = [(TKCtkdRunner *)v7 tokenDriverCache];
            [tokenDriverCache setSmartCardTokenRegistrationRegistry:smartCardTokenRegistrationRegistry2];
          }

          slotWatcher = [[NSXPCListener alloc] initWithMachServiceName:v28];
          v22 = [TKSmartCardTokenRegistrationServer alloc];
          smartCardTokenRegistrationRegistry3 = [(TKCtkdRunner *)v7 smartCardTokenRegistrationRegistry];
          v24 = [(TKSmartCardTokenRegistrationServer *)v22 initWithSmartCardTokenRegistry:smartCardTokenRegistrationRegistry3 listener:slotWatcher];
          smartCardRegistrationServer = v7->_smartCardRegistrationServer;
          v7->_smartCardRegistrationServer = v24;

LABEL_12:
        }

        else if (v9 == 119)
        {
          v10 = [TKSlotWatcher alloc];
          tokenRegistry2 = [(TKCtkdRunner *)v7 tokenRegistry];
          v12 = [(TKSlotWatcher *)v10 initWithTokenRegistry:tokenRegistry2];
          slotWatcher = v7->_slotWatcher;
          v7->_slotWatcher = v12;
          goto LABEL_12;
        }
      }

      if (v9 == 115)
      {
        tokenRegistry2 = [[NSXPCListener alloc] initWithMachServiceName:v27];
        slotWatcher = [[NSXPCListener alloc] initWithMachServiceName:v8];
        v14 = [[TKSlotServer alloc] initWithRegistryListener:tokenRegistry2 clientListener:slotWatcher];
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
  slotWatcher = [(TKCtkdRunner *)self slotWatcher];
  [slotWatcher startWithSlotServer:v5];
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

  sigTermSource = [(TKCtkdRunner *)self sigTermSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003F08;
  handler[3] = &unk_100038710;
  handler[4] = self;
  dispatch_source_set_event_handler(sigTermSource, handler);

  sigTermSource2 = [(TKCtkdRunner *)self sigTermSource];
  dispatch_activate(sigTermSource2);

  signal(15, 1);
  slotServer = [(TKCtkdRunner *)self slotServer];

  if (slotServer)
  {
    slotServer2 = [(TKCtkdRunner *)self slotServer];
    [slotServer2 start];

    LODWORD(out_token) = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100004030;
    v22[3] = &unk_100038978;
    v22[4] = self;
    notify_register_dispatch([@"com.apple.system.loginwindow.desktopUp" UTF8String], &out_token, &_dispatch_main_q, v22);
  }

  tokenServer = [(TKCtkdRunner *)self tokenServer];

  if (tokenServer)
  {
    tokenServer2 = [(TKCtkdRunner *)self tokenServer];
    [tokenServer2 start];
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

  slotWatcher = [(TKCtkdRunner *)self slotWatcher];

  if (slotWatcher)
  {
    [(TKCtkdRunner *)self ensureSlotWatcherIsRunning];
    tokenServer3 = [(TKCtkdRunner *)self tokenServer];

    if (tokenServer3)
    {
      objc_initWeak(&out_token, self);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100004118;
      v18[3] = &unk_1000389A0;
      objc_copyWeak(&v19, &out_token);
      tokenServer4 = [(TKCtkdRunner *)self tokenServer];
      [tokenServer4 setEnsureSlotWatcherIsRunning:v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&out_token);
    }
  }

  smartCardRegistrationServer = [(TKCtkdRunner *)self smartCardRegistrationServer];

  if (smartCardRegistrationServer)
  {
    smartCardRegistrationServer2 = [(TKCtkdRunner *)self smartCardRegistrationServer];
    [smartCardRegistrationServer2 start];
  }
}

@end