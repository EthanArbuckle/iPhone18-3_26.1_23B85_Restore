@interface CoreTelephonyClientMux
- (CoreTelephonyClientMux)init;
- (CoreTelephonyClientMux)initWithEndpoint:(id)a3 sink:(id)a4 systemConfigurationProvider:(id)a5;
- (CoreTelephonyClientMux)initWithSink:(id)a3 systemConfigurationProvider:(id)a4;
- (__CTAssertionType)createCTAssertionForConnectionType:(int)a3 allocator:(__CFAllocator *)a4 proxy:(id)a5;
- (id).cxx_construct;
- (id)_sendConnectionInterruptedNotification_sync:(dispatch_queue_s *);
- (id)addDelegate:(dispatch_queue_s *) queue:(std::unique_ptr<-[CoreTelephonyClientMux)addDelegate:queue:]::$_1>;
- (id)addDelegate:(id *)a1 queue:;
- (id)dealloc;
- (id)proxyWithErrorHandler_sync:(id)a3;
- (id)proxyWithQueue:(dispatch_queue_s *)a3 errorHandler:(id)a4;
- (id)removeDelegate:(dispatch_queue_s *);
- (id)removeDelegate:(id *)a1;
- (id)sink:(dispatch_queue_s *) handleNotification:(std::unique_ptr<-[CoreTelephonyClientMux)sink:handleNotification:]::$_3>;
- (id)sink:(id *)a1 handleNotification:;
- (id)synchronousProxyWithErrorHandler:(id)a3;
- (queue)xpcQueue;
- (uint64_t)_getAssertionTypeId;
- (unint64_t)_getAssertionTypeId;
- (void)_connect_sync;
- (void)_ensureConnectionSetup_sync:(BOOL)a3;
- (void)_registerForNotifications_sync:(id)a3 shouldForce:(BOOL)a4 completion:(id)a5;
- (void)_sendConnectionInterruptedNotification_sync:(id)a3;
- (void)addDelegate:(id)a3 queue:(dispatch_queue_s *)a4;
- (void)dealloc;
- (void)registerBlockForInvalidationNotification:(__CTAssertionType *)a3 callbackQueue:(dispatch_queue_s *)a4 callback:(id)a5;
- (void)removeAssertionForInvalidationNotification:(__CTAssertionType *)a3;
- (void)removeDelegate:(id)a3;
- (void)setXpcQueue:(queue)a3;
- (void)sink:(id)a3 handleNotification:(id)a4;
@end

@implementation CoreTelephonyClientMux

- (CoreTelephonyClientMux)init
{
  v3 = [MuxNotificationSink alloc];
  v4 = objc_opt_new();
  v5 = [(CoreTelephonyClientMux *)self initWithSink:v3 systemConfigurationProvider:v4];

  return v5;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  *(self + 11) = 0;
  return self;
}

- (void)_connect_sync
{
  v3 = *(self + 12);
  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (v3)
  {
    v5 = [v4 initWithListenerEndpoint:*(self + 12)];
  }

  else
  {
    v5 = [v4 initWithMachServiceName:@"com.apple.commcenter.coretelephony.xpc" options:4096];
  }

  v6 = *(self + 10);
  *(self + 10) = v5;

  if (!WeakRetained)
  {
    if (!WeakRetained)
    {
      WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF0671B8];
    }
  }

  v8 = WeakRetained;

  [*(self + 10) setExportedInterface:v8];
  [*(self + 10) setExportedObject:*(self + 13)];
  if (!v9)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF070E90];
    }
  }

  v10 = v9;

  [*(self + 10) setRemoteObjectInterface:v10];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  v19 = [*(self + 10) remoteObjectInterface];
  [v19 setClasses:v18 forSelector:sel_copyCarrierBundleValue_key_bundleType_completion_ argumentIndex:0 ofReply:1];

  v20 = [*(self + 10) remoteObjectInterface];
  [v20 setClasses:v18 forSelector:sel_copyCarrierBundleValue_keyHierarchy_bundleType_completion_ argumentIndex:1 ofReply:0];

  v21 = [*(self + 10) remoteObjectInterface];
  [v21 setClasses:v18 forSelector:sel_copyCarrierBundleValue_keyHierarchy_bundleType_completion_ argumentIndex:0 ofReply:1];

  v22 = [*(self + 10) remoteObjectInterface];
  [v22 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithDefault_key_bundleType_completion_ argumentIndex:0 ofReply:1];

  v23 = [*(self + 10) remoteObjectInterface];
  [v23 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion_ argumentIndex:1 ofReply:0];

  v24 = [*(self + 10) remoteObjectInterface];
  [v24 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion_ argumentIndex:0 ofReply:1];

  v25 = [*(self + 10) remoteObjectInterface];
  [v25 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithCountryBundleLookup_keyHierarchy_matchingInfo_completion_ argumentIndex:1 ofReply:0];

  v26 = [*(self + 10) remoteObjectInterface];
  [v26 setClasses:v18 forSelector:sel_getWiFiCallingSettingPreferences_key_completion_ argumentIndex:0 ofReply:1];

  v27 = [*(self + 10) remoteObjectInterface];
  [v27 setClasses:v18 forSelector:sel_setWiFiCallingSettingPreferences_key_value_completion_ argumentIndex:2 ofReply:0];

  v28 = [*(self + 10) remoteObjectInterface];
  [v28 setClasses:v18 forSelector:sel_setPrefForKey_heirarchy_value_storage_completion_ argumentIndex:2 ofReply:0];

  v29 = [*(self + 10) remoteObjectInterface];
  [v29 setClasses:v18 forSelector:sel_getPrefForKey_heirarchy_storage_completion_ argumentIndex:0 ofReply:1];

  v30 = [*(self + 10) remoteObjectInterface];
  [v30 setClasses:v18 forSelector:sel_getRadioPersonality_completion_ argumentIndex:0 ofReply:1];

  v31 = [*(self + 10) remoteObjectInterface];
  [v31 setClasses:v18 forSelector:sel_getEOSFirmwareUpdateInfo_ argumentIndex:0 ofReply:1];

  v32 = [*(self + 10) remoteObjectInterface];
  [v32 setClasses:v18 forSelector:sel_getPNRPriorityRegistrationListWithCompletion_ argumentIndex:0 ofReply:1];

  v33 = [*(self + 10) exportedInterface];
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  [v33 setClasses:v36 forSelector:sel_launchSimSetupForTransferPlanSelection_completion_ argumentIndex:0 ofReply:0];

  v37 = [*(self + 10) exportedInterface];
  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  [v37 setClasses:v40 forSelector:sel_handleCrossplatformSessionResponse_completion_ argumentIndex:0 ofReply:0];

  objc_initWeak(location, self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __39__CoreTelephonyClientMux__connect_sync__block_invoke;
  v44[3] = &unk_1E6A472E8;
  objc_copyWeak(&v45, location);
  [*(self + 10) setInvalidationHandler:v44];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __39__CoreTelephonyClientMux__connect_sync__block_invoke_435;
  v42[3] = &unk_1E6A472E8;
  objc_copyWeak(&v43, location);
  [*(self + 10) setInterruptionHandler:v42];
  [*(self + 10) _setQueue:*(self + 11)];
  if (isFrameworkLoggingSupported())
  {
    v41 = CTLogClient();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [(CoreTelephonyClientMux *)self + 11 _connect_sync];
    }
  }

  [*(self + 10) resume];
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(location);
}

- (void)dealloc
{
  v3 = *(self + 8);
  *(self + 8) = 0;

  v4 = *(self + 10);
  if (v4)
  {
    v5 = v4;
    v6 = *(self + 10);
    *(self + 10) = 0;

    v7 = *(self + 11);
    v8 = v5;
    operator new();
  }

  if (isFrameworkLoggingSupported())
  {
    v9 = CTLogClient();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux dealloc];
    }
  }

  v10.receiver = self;
  v10.super_class = CoreTelephonyClientMux;
  [(CoreTelephonyClientMux *)&v10 dealloc];
}

void __39__CoreTelephonyClientMux__connect_sync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 8) handleDisconnection];
    [v2 _setReconnectError_sync:0];
    if (isFrameworkLoggingSupported())
    {
      v3 = CTLogClient();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_182E9B000, v3, OS_LOG_TYPE_DEFAULT, "Connection has been invalidated", v5, 2u);
      }
    }

    v4 = v2[10];
    v2[10] = 0;
  }
}

- (CoreTelephonyClientMux)initWithSink:(id)a3 systemConfigurationProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CoreTelephonyClientMux;
  v9 = [(CoreTelephonyClientMux *)&v19 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CoreTelephonyClientMux.xpc.%p", v9];
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create(v11, v13);
    v15 = *(v9 + 11);
    *(v9 + 11) = v14;
    if (v15)
    {
      dispatch_release(v15);
    }

    objc_storeStrong(v9 + 13, a3);
    [*(v9 + 13) setDelegate:v9];
    v16 = objc_opt_new();
    v17 = *(v9 + 8);
    *(v9 + 8) = v16;

    objc_storeStrong(v9 + 9, a4);
    [v9 _initializeConnection_sync];
  }

  return v9;
}

- (CoreTelephonyClientMux)initWithEndpoint:(id)a3 sink:(id)a4 systemConfigurationProvider:(id)a5
{
  objc_storeStrong(self + 12, a3);
  v8 = a5;
  v9 = a4;
  v10 = [(CoreTelephonyClientMux *)self initWithSink:v9 systemConfigurationProvider:v8];

  return v10;
}

- (void)addDelegate:(id)a3 queue:(dispatch_queue_s *)a4
{
  v5 = a3;
  if ([*(self + 9) isCommCenterSupported])
  {
    v6 = self;
    v7 = v5;
    v8 = *(self + 11);
    operator new();
  }

  if (isFrameworkLoggingSupported())
  {
    v9 = CTLogClient();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux addDelegate:queue:];
    }
  }
}

- (void)removeDelegate:(id)a3
{
  if ([*(self + 9) isCommCenterSupported])
  {
    v4 = self;
    v5 = *(self + 11);
    operator new();
  }

  if (isFrameworkLoggingSupported())
  {
    v6 = CTLogClient();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux removeDelegate:];
    }
  }
}

- (void)sink:(id)a3 handleNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  [*(self + 8) handleNotification:v7];
  v8 = NSStringFromSelector([v7 selector]);
  v11 = *(self + 1);
  v9 = (self + 8);
  v10 = v11;
  if (v11 != v9 + 1)
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(v10 + 6);
      if (WeakRetained)
      {
        v13 = v10[1];
        v14 = v10;
        if (v13)
        {
          do
          {
            v15 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v16 = *v15 == v14;
            v14 = v15;
          }

          while (!v16);
        }

        if ([v10[7] containsObject:v8])
          v18 = {;
          [v18 retainArguments];
          v19 = WeakRetained;
          v20 = v10[5];
          v21 = v18;
          operator new();
        }
      }

      else
      {
        v22 = CTLogClient();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(CoreTelephonyClientMux *)&buf sink:v24 handleNotification:v22];
        }
      }

      v10 = v15;
    }

    while (v15 != (v9 + 1));
  }
}

- (id)proxyWithQueue:(dispatch_queue_s *)a3 errorHandler:(id)a4
{
  v17 = self;
  v16 = a3;
  v6 = a4;
  v15 = v6;
  if ([*(self + 9) isCommCenterSupported])
  {
    v11[0] = &v17;
    v11[1] = &v12;
    v11[2] = &v16;
    v11[3] = &v15;
    v12 = 0;
    v7 = *(self + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN8dispatch9sync_implIZ54__CoreTelephonyClientMux_proxyWithQueue_errorHandler__E3__4EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v11;
    dispatch_sync(v7, block);
    v8 = v12;

    v9 = v15;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__CoreTelephonyClientMux_proxyWithQueue_errorHandler___block_invoke;
    v13[3] = &unk_1E6A43D10;
    v9 = v6;
    v14 = v9;
    dispatch_async(a3, v13);

    v8 = 0;
  }

  return v8;
}

void __54__CoreTelephonyClientMux_proxyWithQueue_errorHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
  (*(v1 + 16))(v1);
}

- (id)synchronousProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  if ([*(self + 9) isCommCenterSupported])
  {
    v11 = 0;
    v9[0] = self;
    v9[1] = &v11;
    v10 = _Block_copy(v4);
    v5 = *(self + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN8dispatch9sync_implIZ59__CoreTelephonyClientMux_synchronousProxyWithErrorHandler__E3__5EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v9;
    dispatch_sync(v5, block);

    v6 = v11;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    (*(v4 + 2))(v4, v7);

    v6 = 0;
  }

  return v6;
}

- (id)proxyWithErrorHandler_sync:(id)a3
{
  v4 = a3;
  [(CoreTelephonyClientMux *)self _setReconnectError_sync:0];
  [(CoreTelephonyClientMux *)self _ensureConnectionSetup_sync];
  v5 = [*(self + 10) remoteObjectProxyWithErrorHandler:v4];

  return v5;
}

void __60__CoreTelephonyClientMux__computeNotificationSetForced_sync__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (isFrameworkLoggingSupported())
    {
      v3 = CTLogClient();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __60__CoreTelephonyClientMux__computeNotificationSetForced_sync__block_invoke_cold_1();
      }
    }
  }
}

- (void)_registerForNotifications_sync:(id)a3 shouldForce:(BOOL)a4 completion:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (a4 || ![*(self + 4) isEqualToSet:v9])
  {
    v12 = [(CoreTelephonyClientMux *)self proxyWithErrorHandler_sync:v10];
    if ([v9 count])
    {
      v13 = [v9 allObjects];
    }

    else
    {
      v13 = 0;
    }

    if (isFrameworkLoggingSupported())
    {
      v14 = CTLogClient();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_182E9B000, v14, OS_LOG_TYPE_DEFAULT, "Sending selectors to server: %@", &v16, 0xCu);
      }
    }

    [v12 registerForNotifications:v13 completion:v10];
    objc_storeStrong(self + 4, a3);
  }

  else if (isFrameworkLoggingSupported())
  {
    v11 = CTLogClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux _registerForNotifications_sync:shouldForce:completion:];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __39__CoreTelephonyClientMux__connect_sync__block_invoke_435(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 8) handleDisconnection];
    if (v2[14])
    {
      v3 = CTLogClient();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_182E9B000, v3, OS_LOG_TYPE_DEFAULT, "Reconnection was already attempted", buf, 2u);
      }
    }

    else
    {
      v4 = CTLogClient();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_182E9B000, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted. Attempting to reestablish connection", buf, 2u);
      }

      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __39__CoreTelephonyClientMux__connect_sync__block_invoke_436;
      v5[3] = &unk_1E6A47310;
      v6 = v2;
      [v6 _computeNotificationSetForced_sync:v5];
    }
  }
}

void __39__CoreTelephonyClientMux__connect_sync__block_invoke_436(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _setReconnectError_sync:v3];
  [*(a1 + 32) _sendConnectionInterruptedNotification_sync:v3];
  if (v3)
  {
    v4 = CTLogClient();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__CoreTelephonyClientMux__connect_sync__block_invoke_436_cold_1();
    }
  }

  else
  {
    v5 = CTLogClient();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_182E9B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully reestablished connection", v6, 2u);
    }
  }
}

- (void)_ensureConnectionSetup_sync:(BOOL)a3
{
  v3 = a3;
  if ([*(self + 9) isCommCenterSupported])
  {
    if (!*(self + 10))
    {
      [(CoreTelephonyClientMux *)self _connect_sync];
      if (v3)
      {

        [(CoreTelephonyClientMux *)self _computeNotificationSetForced_sync];
      }
    }
  }

  else if (isFrameworkLoggingSupported())
  {
    v5 = CTLogClient();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux _ensureConnectionSetup_sync:];
    }
  }
}

- (void)_sendConnectionInterruptedNotification_sync:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CTLogClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(self + 7);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_182E9B000, v5, OS_LOG_TYPE_DEFAULT, "_sendConnectionInterruptedNotification_sync, Map size = %lu", buf, 0xCu);
  }

  v7 = *(self + 5);
  if (v7 != (self + 48))
  {
    do
    {
      if (*(v7 + 4))
      {
        v8 = *(v7 + 6);
        if (v8)
        {
          if (*(v7 + 5))
          {
            _Block_copy(v8);
            v9 = v4;
            v10 = *(v7 + 5);
            operator new();
          }
        }
      }

      v11 = CTLogClient();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CoreTelephonyClientMux *)&v16 _sendConnectionInterruptedNotification_sync:v17, v11];
      }

      v12 = *(v7 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v7 + 2);
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (self + 48));
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeAssertionForInvalidationNotification:(__CTAssertionType *)a3
{
  if (a3)
  {
    v7[0] = self;
    v7[1] = a3;
    v5 = *(self + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN8dispatch9sync_implIZ69__CoreTelephonyClientMux_removeAssertionForInvalidationNotification__E3__7EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v7;
    dispatch_sync(v5, block);
  }

  else if (isFrameworkLoggingSupported())
  {
    v6 = CTLogClient();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CoreTelephonyClientMux removeAssertionForInvalidationNotification:];
    }
  }
}

- (unint64_t)_getAssertionTypeId
{
  if ([CoreTelephonyClientMux _getAssertionTypeId]::_predicate != -1)
  {
    [CoreTelephonyClientMux _getAssertionTypeId];
  }

  return [CoreTelephonyClientMux _getAssertionTypeId]::_CTAssertionConnectionTypeID;
}

- (__CTAssertionType)createCTAssertionForConnectionType:(int)a3 allocator:(__CFAllocator *)a4 proxy:(id)a5
{
  v8 = a5;
  [(CoreTelephonyClientMux *)self _getAssertionTypeId];
  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 32) = 0;
    *(Instance + 24) = 0;
    objc_storeStrong((Instance + 16), a5);
    v10->var3 = a3;
    objc_storeWeak(&v10->var2, self);
  }

  else if (isFrameworkLoggingSupported())
  {
    v11 = CTLogClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CoreTelephonyClientMux createCTAssertionForConnectionType:allocator:proxy:];
    }
  }

  return v10;
}

- (void)registerBlockForInvalidationNotification:(__CTAssertionType *)a3 callbackQueue:(dispatch_queue_s *)a4 callback:(id)a5
{
  if (a3)
  {
    if (a5)
    {
      v10[0] = self;
      v10[1] = a3;
      v11 = _Block_copy(a5);
      v12 = a4;
      v9 = *(self + 11);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN8dispatch9sync_implIZ90__CoreTelephonyClientMux_registerBlockForInvalidationNotification_callbackQueue_callback__E3__9EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v10;
      dispatch_sync(v9, block);
    }
  }
}

- (queue)xpcQueue
{
  v3 = *(self + 11);
  *v2 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v3;
}

- (void)setXpcQueue:(queue)a3
{
  v4 = *a3.fObj.fObj;
  if (*a3.fObj.fObj)
  {
    dispatch_retain(*a3.fObj.fObj);
  }

  v5 = *(self + 11);
  *(self + 11) = v4;
  if (v5)
  {

    dispatch_release(v5);
  }
}

- (uint64_t)_getAssertionTypeId
{
  result = _CFRuntimeRegisterClass();
  [CoreTelephonyClientMux _getAssertionTypeId]::_CTAssertionConnectionTypeID = result;
  return result;
}

- (id)dealloc
{
  v3 = a1;
  [*a1 setInvalidationHandler:0];
  [*a1 setInterruptionHandler:0];
  [*a1 invalidate];
  return std::unique_ptr<-[CoreTelephonyClientMux dealloc]::$_0>::~unique_ptr[abi:nn200100](&v3);
}

- (id)addDelegate:(id *)a1 queue:
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0xE0C4087BCC992);
  }

  return a1;
}

- (id)addDelegate:(dispatch_queue_s *) queue:(std::unique_ptr<-[CoreTelephonyClientMux)addDelegate:queue:]::$_1>
{
  v64 = *MEMORY[0x1E69E9840];
  v50 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_retain(*(a1 + 16));
  }

  v52 = 0;
  v53 = 0;
  v47 = a1;
  v3 = *(a1 + 8);
  object = v2;
  objc_initWeak(&v52, v3);
  v45 = &unk_1EF0671B8;
  v4 = v3;
  v5 = objc_opt_new();
  v62 = &unk_1EF063538;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  std::vector<Protocol * {__strong}>::__init_with_size[abi:nn200100]<Protocol * const {__strong}*,Protocol * const {__strong}>(&v54, &v62, &v63, 1uLL);
  v46 = v45;
  v63 = v46;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  std::vector<Protocol * {__strong}>::__init_with_size[abi:nn200100]<Protocol * const {__strong}*,Protocol * const {__strong}>(&v57, &v63, &v64, 1uLL);

  v6 = v46;
  outCount[0] = 0;
  v48 = v6;
  v7 = protocol_copyProtocolList(v6, outCount);
  if (v7 && outCount[0])
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      v60 = v9;
      v10 = v54;
      if (v54 != v55)
      {
        while (*v10 != v9)
        {
          if (++v10 == v55)
          {
            goto LABEL_11;
          }
        }
      }

      if (v10 == v55)
      {
LABEL_11:
        std::vector<Protocol * {__strong}>::push_back[abi:nn200100](&v57, &v60);
        v9 = v60;
      }

      ++v8;
    }

    while (v8 < outCount[0]);
    free(v7);
  }

  v11 = v57;
  v49 = v58;
  if (v57 != v58)
  {
    do
    {
      v12 = *v11;
      for (i = 0; i != 8; i += 2)
      {
        LODWORD(v60) = 0;
        v15 = v14;
        if (v14)
        {
          v16 = v60 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = 0;
          p_name = &v14->name;
          do
          {
            v19 = *p_name;
            if (objc_opt_respondsToSelector())
            {
              v20 = NSStringFromSelector(*p_name);
              [v5 addObject:v20];
            }

            ++v17;
            p_name += 2;
          }

          while (v17 < v60);
          free(v15);
        }
      }

      ++v11;
    }

    while (v11 != v49);
  }

  *outCount = &v57;
  std::vector<Protocol * {__strong}>::__destroy_vector::operator()[abi:nn200100](outCount);

  v57 = &v54;
  std::vector<Protocol * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v57);

  v53 = v5;
  v21 = *v47;
  v23 = *v47 + 16;
  v22 = *v23;
  if (!*v23)
  {
    v25 = *v47 + 16;
    if (v21[1] != v23)
    {
      goto LABEL_41;
    }

    v30 = 0;
    v25 = *v47 + 16;
    v32 = v25;
LABEL_57:
    if (v30)
    {
      v42 = v32 + 1;
    }

    else
    {
      v42 = v25;
    }

    if (*v42)
    {
      goto LABEL_62;
    }

LABEL_61:
    operator new();
  }

  v24 = v47[1];
  v25 = *v47 + 16;
  v26 = *v25;
  do
  {
    v27 = *(v26 + 32);
    v28 = v27 >= v24;
    v29 = v27 < v24;
    if (v28)
    {
      v25 = v26;
    }

    v26 = *(v26 + 8 * v29);
  }

  while (v26);
  if (v25 != v23 && v24 >= *(v25 + 32))
  {
    v37 = object;
    object = 0;
    v38 = *(v25 + 40);
    *(v25 + 40) = v37;
    if (v38)
    {
      dispatch_release(v38);
    }

    v39 = objc_loadWeakRetained(&v52);
    objc_storeWeak((v25 + 48), v39);

    v40 = v53;
    v53 = 0;
    v41 = *(v25 + 56);
    *(v25 + 56) = v40;

    goto LABEL_62;
  }

  v30 = *v25;
  if (v21[1] == v25)
  {
    v32 = v25;
    goto LABEL_57;
  }

  if (v30)
  {
    v31 = *v25;
    do
    {
      v32 = v31;
      v31 = v31[1];
    }

    while (v31);
    goto LABEL_44;
  }

LABEL_41:
  v32 = v25;
  do
  {
    v33 = v32;
    v32 = v32[2];
  }

  while (*v32 == v33);
  v30 = 0;
  v24 = v47[1];
LABEL_44:
  if (v32[4] < v24)
  {
    goto LABEL_57;
  }

  v34 = *v47 + 16;
  if (!v22)
  {
    goto LABEL_61;
  }

  while (1)
  {
    while (1)
    {
      v35 = v22;
      v36 = v22[4];
      if (v24 >= v36)
      {
        break;
      }

      v22 = *v35;
      if (!*v35)
      {
        goto LABEL_61;
      }
    }

    if (v36 >= v24)
    {
      break;
    }

    v22 = v35[1];
    if (!v22)
    {
      goto LABEL_61;
    }
  }

LABEL_62:
  [*v47 _computeNotificationSet_sync:&__block_literal_global_1021];

  objc_destroyWeak(&v52);
  if (object)
  {
    dispatch_release(object);
  }

  result = std::unique_ptr<-[CoreTelephonyClientMux addDelegate:queue:]::$_1>::~unique_ptr[abi:nn200100](&v50);
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)removeDelegate:(id *)a1
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0xC0C402DE288CCLL);
  }

  return a1;
}

- (id)removeDelegate:(dispatch_queue_s *)
{
  v12 = a1;
  v2 = *(a1 + 8);
  v3 = (*a1 + 16);
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_16;
  }

  v5 = (*a1 + 8);
  v6 = v3;
  do
  {
    v7 = v4[4];
    v8 = v7 >= v2;
    v9 = v7 < v2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v6 != v3 && v2 >= v6[4])
  {
  }

  else
  {
LABEL_16:
    if (v2)
    {
      v10 = CTLogClient();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        dispatch::async<[CoreTelephonyClientMux removeDelegate:]::$_2>(dispatch_queue_s *,std::unique_ptr<[CoreTelephonyClientMux removeDelegate:]::$_2>)::{lambda(void *)#1}::__invoke();
      }
    }
  }

  [*a1 _computeNotificationSet_sync:&__block_literal_global_1025];
  return std::unique_ptr<-[CoreTelephonyClientMux removeDelegate:]::$_2>::~unique_ptr[abi:nn200100](&v12);
}

- (id)sink:(id *)a1 handleNotification:
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0x80C40803F642BLL);
  }

  return a1;
}

- (id)sink:(dispatch_queue_s *) handleNotification:(std::unique_ptr<-[CoreTelephonyClientMux)sink:handleNotification:]::$_3>
{
  v2 = a1;
  [a1[1] invokeWithTarget:*a1];
  return std::unique_ptr<-[CoreTelephonyClientMux sink:handleNotification:]::$_3>::~unique_ptr[abi:nn200100](&v2);
}

- (id)_sendConnectionInterruptedNotification_sync:(dispatch_queue_s *)
{
  v5 = a1;
  if (*a1)
  {
    v2 = CTLogClient();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_182E9B000, v2, OS_LOG_TYPE_DEFAULT, "_sendConnectionInterruptedNotification_sync invoke callback", buf, 2u);
    }

    v3 = *(a1 + 8);
    (*(*a1 + 16))();
  }

  return std::unique_ptr<-[CoreTelephonyClientMux sink:handleNotification:]::$_3>::~unique_ptr[abi:nn200100](&v5);
}

@end