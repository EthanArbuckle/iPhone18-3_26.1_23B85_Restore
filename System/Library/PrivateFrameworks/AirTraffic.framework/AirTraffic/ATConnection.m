@interface ATConnection
- (ATConnection)init;
- (ATConnectionDelegate)delegate;
- (BOOL)getDataRestoreIsComplete;
- (BOOL)isSyncing:(BOOL *)a3 automatically:(BOOL *)a4 wirelessly:(BOOL *)a5;
- (id)getAssetMetrics;
- (id)restoreDeviceWithIdentifier:(id)a3;
- (void)_handleDisconnect;
- (void)_sendStatusRegistrationWithCompletion:(id)a3;
- (void)cancelSync;
- (void)clearSyncData;
- (void)connection:(id)a3 updatedAssets:(id)a4;
- (void)connection:(id)a3 updatedProgress:(id)a4;
- (void)connectionWasInterrupted:(id)a3;
- (void)dealloc;
- (void)initiateAssetDownloadSessionsWithCompletion:(id)a3;
- (void)lowBatteryNotification;
- (void)prioritizeAsset:(id)a3 forDataclass:(id)a4;
- (void)purgePartialAsset:(id)a3 forDataclass:(id)a4;
- (void)registerForAssetProgressForDataclass:(id)a3;
- (void)registerForStatus;
- (void)requestKeybagSyncToPairedDevice;
- (void)requestSyncForLibrary:(id)a3;
- (void)unregisterForStatus;
@end

@implementation ATConnection

- (ATConnection)init
{
  v32.receiver = self;
  v32.super_class = ATConnection;
  v2 = [(ATConnection *)&v32 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__ATConnection_init__block_invoke;
    handler[3] = &unk_278C6D9E8;
    objc_copyWeak(&v30, &location);
    notify_register_dispatch("com.apple.atc.started", &v2->_atcRunningToken, v3, handler);

    state64 = 0;
    notify_get_state(v2->_atcRunningToken, &state64);
    if (state64)
    {
      v2->_atcRunning = 1;
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registeredDataclasses = v2->_registeredDataclasses;
    v2->_registeredDataclasses = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.atc.xpc" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162FF0];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v9];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285160630];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    [v10 setClasses:v16 forSelector:sel_connection_updatedProgress_ argumentIndex:1 ofReply:0];

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    [v10 setClasses:v19 forSelector:sel_connection_updatedAssets_ argumentIndex:1 ofReply:0];

    [(NSXPCConnection *)v2->_xpcConnection setExportedInterface:v10];
    v20 = [MEMORY[0x277D27F50] proxyWithObject:v2 protocol:&unk_285160630];
    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v20];

    v21 = v2->_xpcConnection;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __20__ATConnection_init__block_invoke_106;
    v26[3] = &unk_278C6DA10;
    objc_copyWeak(&v27, &location);
    [(NSXPCConnection *)v21 setInterruptionHandler:v26];
    v22 = v2->_xpcConnection;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __20__ATConnection_init__block_invoke_108;
    v24[3] = &unk_278C6DA10;
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)v22 setInvalidationHandler:v24];
    [(NSXPCConnection *)v2->_xpcConnection resume];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (ATConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)connection:(id)a3 updatedAssets:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__ATConnection_connection_updatedAssets___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __41__ATConnection_connection_updatedAssets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 connection:*(a1 + 32) updatedAssets:*(a1 + 40)];
  }
}

- (void)connection:(id)a3 updatedProgress:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ATConnection_connection_updatedProgress___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __43__ATConnection_connection_updatedProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 connection:*(a1 + 32) updatedProgress:*(a1 + 40)];
  }
}

- (void)connectionWasInterrupted:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ATConnection_connectionWasInterrupted___block_invoke;
  block[3] = &unk_278C6DBE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__ATConnection_connectionWasInterrupted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 connectionWasInterrupted:*(a1 + 32)];
  }
}

- (void)initiateAssetDownloadSessionsWithCompletion:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__ATConnection_initiateAssetDownloadSessionsWithCompletion___block_invoke;
  v11[3] = &unk_278C6DA58;
  v6 = v4;
  v12 = v6;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ATConnection_initiateAssetDownloadSessionsWithCompletion___block_invoke_2;
  v9[3] = &unk_278C6DA58;
  v10 = v6;
  v8 = v6;
  [v7 initiateAssetDownloadSessionsWithCompletion:v9];
}

uint64_t __60__ATConnection_initiateAssetDownloadSessionsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __60__ATConnection_initiateAssetDownloadSessionsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)getDataRestoreIsComplete
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "check data restore state", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_183];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ATConnection_getDataRestoreIsComplete__block_invoke_184;
  v6[3] = &unk_278C6DAF0;
  v6[4] = &v8;
  [v4 getDataRestoreIsCompleteWithCompletion:v6];

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __40__ATConnection_getDataRestoreIsComplete__block_invoke_184(uint64_t a1, void *a2, char a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_ERROR, "check data restore state failed. err=%{public}@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __40__ATConnection_getDataRestoreIsComplete__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "check data restore state - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)getAssetMetrics
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1249;
  v13 = __Block_byref_object_dispose__1250;
  v14 = 0;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "get asset metrics", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_180];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ATConnection_getAssetMetrics__block_invoke_181;
  v7[3] = &unk_278C6DA80;
  v7[4] = &v9;
  [v4 getAssetMetricswithCompletion:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __31__ATConnection_getAssetMetrics__block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_23EC61000, v7, OS_LOG_TYPE_ERROR, "get asset metrics failed. err=%{public}@", &v9, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __31__ATConnection_getAssetMetrics__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "get asset metrics - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)restoreDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1249;
  v15 = __Block_byref_object_dispose__1250;
  v16 = 0;
  xpcConnection = self->_xpcConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__ATConnection_restoreDeviceWithIdentifier___block_invoke;
  v10[3] = &unk_278C6DAC8;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ATConnection_restoreDeviceWithIdentifier___block_invoke_2;
  v9[3] = &unk_278C6DAC8;
  v9[4] = &v11;
  [v6 restoreFromDeviceWithIdentifier:v4 completion:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __50__ATConnection_openDeviceMessageLinkWithPriority___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "Open device message link with priority %d - failed to obtain remote proxy. err=%{public}@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __50__ATConnection_openDeviceMessageLinkWithPriority___block_invoke_178(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7[0] = 67109378;
      v7[1] = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "Open device message link with priority %d failed. err=%{public}@", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSyncing:(BOOL *)a3 automatically:(BOOL *)a4 wirelessly:(BOOL *)a5
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1249;
  v19 = __Block_byref_object_dispose__1250;
  v20 = 0;
  v8 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_165];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__ATConnection_isSyncing_automatically_wirelessly___block_invoke_166;
  v14[3] = &unk_278C6DA80;
  v14[4] = &v15;
  [v8 getSyncStateWithCompletion:v14];

  if (a3)
  {
    v9 = [v16[5] objectForKey:@"Syncing"];
    *a3 = [v9 BOOLValue];
  }

  if (a4)
  {
    v10 = [v16[5] objectForKey:@"Automatic"];
    *a4 = [v10 BOOLValue];
  }

  if (a5)
  {
    v11 = [v16[5] objectForKey:@"Wireless"];
    *a5 = [v11 BOOLValue];
  }

  v12 = v16[5] != 0;
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __51__ATConnection_isSyncing_automatically_wirelessly___block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_23EC61000, v7, OS_LOG_TYPE_ERROR, "failed to get sync state. err=%{public}@", &v9, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __51__ATConnection_isSyncing_automatically_wirelessly___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "isSyncing - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __29__ATConnection_keepATCAlive___block_invoke_161(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "keep ATC alive failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __29__ATConnection_keepATCAlive___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "keep ATC alive - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)lowBatteryNotification
{
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "low battery notification", v5, 2u);
  }

  v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_155];
  [v4 lowBatteryNotificationWithCompletion:&__block_literal_global_158];
}

void __38__ATConnection_lowBatteryNotification__block_invoke_156(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "low battery notification failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __38__ATConnection_lowBatteryNotification__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "low battery notification - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)clearSyncData
{
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "clear sync data", v5, 2u);
  }

  v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_150];
  [v4 clearSyncDataWithCompletion:&__block_literal_global_153];
}

void __29__ATConnection_clearSyncData__block_invoke_151(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "clear sync data failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __29__ATConnection_clearSyncData__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "clear sync data - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerForAssetProgressForDataclass:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_registeredDataclasses containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_registeredDataclasses addObject:v4];
    if (self->_atcRunning)
    {
      [(ATConnection *)self _sendStatusRegistrationWithCompletion:&__block_literal_global_148];
    }

    else
    {
      [(ATConnection *)self connection:self updatedAssets:MEMORY[0x277CBEBF8]];
    }
  }
}

- (void)_sendStatusRegistrationWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    registeredDataclasses = self->_registeredDataclasses;
    if (self->_registerForStatus)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    *buf = 136315394;
    v20 = v7;
    v21 = 2114;
    v22 = registeredDataclasses;
    _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_DEFAULT, "sending async registration %s message, dataclasses %{public}@", buf, 0x16u);
  }

  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__ATConnection__sendStatusRegistrationWithCompletion___block_invoke;
  v17[3] = &unk_278C6DA58;
  v9 = v4;
  v18 = v9;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];
  v11 = self->_registeredDataclasses;
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_registerForStatus];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__ATConnection__sendStatusRegistrationWithCompletion___block_invoke_146;
  v15[3] = &unk_278C6DA58;
  v16 = v9;
  v13 = v9;
  [v10 registerForStatusOfDataclasses:v11 enabled:v12 withCompletion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __54__ATConnection__sendStatusRegistrationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "sending async registration - failed to obtain remote proxy. err=%{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ATConnection__sendStatusRegistrationWithCompletion___block_invoke_146(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)unregisterForStatus
{
  if (self->_registerForStatus)
  {
    self->_registerForStatus = 0;
    if (self->_atcRunning)
    {
      [(ATConnection *)self _sendStatusRegistrationWithCompletion:&__block_literal_global_143];
    }
  }
}

- (void)registerForStatus
{
  if (!self->_registerForStatus)
  {
    self->_registerForStatus = 1;
    if (self->_atcRunning)
    {
      [(ATConnection *)self _sendStatusRegistrationWithCompletion:&__block_literal_global_141];
    }
  }
}

- (void)purgePartialAsset:(id)a3 forDataclass:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_23EC61000, v8, OS_LOG_TYPE_DEFAULT, "purge partial asset:%{public}@ for data class:%{public}@", &v11, 0x16u);
  }

  v9 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_136];
  [v9 purgePartialAsset:v6 forDataclass:v7 withCompletion:&__block_literal_global_139];

  v10 = *MEMORY[0x277D85DE8];
}

void __47__ATConnection_purgePartialAsset_forDataclass___block_invoke_137(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "purge partial asset failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __47__ATConnection_purgePartialAsset_forDataclass___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "purge partial asset - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)prioritizeAsset:(id)a3 forDataclass:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_23EC61000, v8, OS_LOG_TYPE_DEFAULT, "prioritize asset - %{public}@ %{public}@", &v11, 0x16u);
  }

  v9 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_131];
  [v9 prioritizeAsset:v6 forDataclass:v7 withCompletion:&__block_literal_global_134];

  v10 = *MEMORY[0x277D85DE8];
}

void __45__ATConnection_prioritizeAsset_forDataclass___block_invoke_132(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "prioritize asset failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __45__ATConnection_prioritizeAsset_forDataclass___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "prioritize asset - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelSync
{
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "Cancel sync", v5, 2u);
  }

  v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_126];
  [v4 cancelSyncWithCompletion:&__block_literal_global_129];
}

void __26__ATConnection_cancelSync__block_invoke_127(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "cancel sync failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __26__ATConnection_cancelSync__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "cancel sync - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestKeybagSyncToPairedDevice
{
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "requesting keybag sync to paired device", v5, 2u);
  }

  v4 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_121];
  [v4 requestKeybagSyncToPairedDeviceWithCompletion:&__block_literal_global_124];
}

void __47__ATConnection_requestKeybagSyncToPairedDevice__block_invoke_122(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "requesting keybag sync to paired device failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __47__ATConnection_requestKeybagSyncToPairedDevice__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "requesting keybag sync to paired device - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__ATConnection_requestSyncForPairedDeviceWithPriority___block_invoke_117(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "request sync for paired device failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__ATConnection_requestSyncForPairedDeviceWithPriority___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "request sync for paired device - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestSyncForLibrary:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_DEFAULT, "Sync request for library %{public}@", &v8, 0xCu);
  }

  v6 = [(NSXPCConnection *)self->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1270];
  [v6 requestSyncForLibrary:v4 withCompletion:&__block_literal_global_114];

  v7 = *MEMORY[0x277D85DE8];
}

void __38__ATConnection_requestSyncForLibrary___block_invoke_112(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "request sync for library failed. err=%{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __38__ATConnection_requestSyncForLibrary___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "request sync for library - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleDisconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionWasInterrupted:self];
  }
}

- (void)dealloc
{
  atcRunningToken = self->_atcRunningToken;
  if (atcRunningToken)
  {
    notify_cancel(atcRunningToken);
    self->_atcRunningToken = 0;
  }

  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v6.receiver = self;
  v6.super_class = ATConnection;
  [(ATConnection *)&v6 dealloc];
}

void __20__ATConnection_init__block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_DEFAULT, "Got ATC startup notification", buf, 2u);
    }

    state64 = 0;
    state = notify_get_state(a2, &state64);
    if (state || !state64)
    {
      v7 = os_log_create("com.apple.amp.AirTraffic", "XPC");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v13 = state;
        v14 = 2048;
        v15 = state64;
        _os_log_impl(&dword_23EC61000, v7, OS_LOG_TYPE_DEFAULT, "Error getting state - startupState %u, state %llu", buf, 0x12u);
      }

      WeakRetained[36] = 0;
    }

    else if (WeakRetained[36])
    {
      v6 = os_log_create("com.apple.amp.AirTraffic", "XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_DEFAULT, "Not sending status registration", buf, 2u);
      }
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __20__ATConnection_init__block_invoke_2;
      v9[3] = &unk_278C6D9C0;
      v10 = WeakRetained;
      [v10 _sendStatusRegistrationWithCompletion:v9];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __20__ATConnection_init__block_invoke_106(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23EC61000, v2, OS_LOG_TYPE_DEFAULT, "xpc connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDisconnect];
}

void __20__ATConnection_init__block_invoke_108(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23EC61000, v2, OS_LOG_TYPE_DEFAULT, "xpc connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDisconnect];
}

void __20__ATConnection_init__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_DEFAULT, "sending async registration finished with err=%{public}@", &v6, 0xCu);
  }

  *(*(a1 + 32) + 36) = 1;
  v5 = *MEMORY[0x277D85DE8];
}

@end