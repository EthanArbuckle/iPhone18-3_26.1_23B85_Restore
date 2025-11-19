@interface DCDevice
+ (DCDevice)currentDevice;
- (BOOL)_isSupportedReturningError:(id *)a3;
- (BOOL)isSupported;
- (void)generateTokenWithCompletionHandler:(void *)completion;
@end

@implementation DCDevice

+ (DCDevice)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[DCDevice currentDevice];
  }

  v3 = currentDevice_currentDevice;

  return v3;
}

uint64_t __25__DCDevice_currentDevice__block_invoke()
{
  currentDevice_currentDevice = objc_alloc_init(DCDevice);

  return MEMORY[0x2821F96F8]();
}

- (void)generateTokenWithCompletionHandler:(void *)completion
{
  v3 = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v4 = v15[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__DCDevice_generateTokenWithCompletionHandler___block_invoke;
  v12[3] = &unk_278A45EB8;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxy:v12];
  v7 = +[DCAnalytics shared];
  [v7 sendPerformanceForCategory:1 eventType:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__DCDevice_generateTokenWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278A463A8;
  v8 = v5;
  v10 = v8;
  v11 = &v14;
  [v6 fetchOpaqueBlobWithCompletion:v9];

  _Block_object_dispose(&v14, 8);
}

void __47__DCDevice_generateTokenWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  v2 = +[DCAnalytics shared];
  [v2 sendPayload:0 forEvent:@"com.apple.devicecheck.generateToken" withError:v3];

  (*(*(a1 + 32) + 16))();
}

void __47__DCDevice_generateTokenWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:1 eventType:1];

  v7 = +[DCAnalytics shared];
  [v7 sendPayload:0 forEvent:@"com.apple.devicecheck.generateToken" withError:v5];

  (*(*(a1 + 32) + 16))();
  v8 = [*(*(*(a1 + 40) + 8) + 40) connection];
  [v8 invalidate];
}

- (BOOL)_isSupportedReturningError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__DCDevice__isSupportedReturningError___block_invoke;
  v10[3] = &unk_278A46220;
  v10[4] = &v17;
  v10[5] = &v11;
  v5 = [v4 synchronousRemoteObjectProxy:v10];
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:0 eventType:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__DCDevice__isSupportedReturningError___block_invoke_23;
  v9[3] = &unk_278A463D0;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 isSupportedDeviceWithCompletion:v9];
  if (a3)
  {
    *a3 = v12[5];
  }

  v7 = *(v18 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void __39__DCDevice__isSupportedReturningError___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (DCLogSystem_onceToken_2 != -1)
  {
    __39__DCDevice__isSupportedReturningError___block_invoke_cold_1();
  }

  v4 = DCLogSystem_log_2;
  if (os_log_type_enabled(DCLogSystem_log_2, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v13 = 136315650;
    v14 = "DCDevice.m";
    v15 = 1024;
    v16 = 65;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_238044000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to connect to daemon. { error=%@ }", &v13, 0x1Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  v10 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  v11 = +[DCAnalytics shared];

  [v11 sendPayload:0 forEvent:@"com.apple.devicecheck.isSupported" withError:v10];
  v12 = *MEMORY[0x277D85DE8];
}

void __39__DCDevice__isSupportedReturningError___block_invoke_23(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:0 eventType:1];

  v7 = +[DCAnalytics shared];
  [v7 sendPayload:0 forEvent:@"com.apple.devicecheck.isSupported" withError:v5];

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (BOOL)isSupported
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = [(DCDevice *)self _isSupportedReturningError:&v9];
  v3 = v9;
  if (v3)
  {
    if (DCLogSystem_onceToken_2 != -1)
    {
      [DCDevice isSupported];
    }

    v4 = DCLogSystem_log_2;
    if (os_log_type_enabled(DCLogSystem_log_2, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 localizedDescription];
      *buf = 136315650;
      v11 = "DCDevice.m";
      v12 = 1024;
      v13 = 97;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_238044000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to check if client is supported. { error=%@ }", buf, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

@end