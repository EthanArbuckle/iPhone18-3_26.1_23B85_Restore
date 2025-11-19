@interface AKAnisetteProvisioningController
- (AKAnisetteProvisioningController)init;
- (AKAnisetteProvisioningController)initWithConnectionConfiguration:(id)a3 device:(id)a4 provider:(id)a5;
- (id)_anisetteServiceConnection;
- (id)_attestationDataForRequestData:(id)a3 error:(id *)a4;
- (id)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 error:(id *)a4;
- (id)anisetteDataForURLRequest:(id)a3 error:(id *)a4;
- (id)attestationDataForRequestData:(id)a3 error:(id *)a4;
- (id)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 error:(id *)a4;
- (id)initForDevice:(id)a3 provider:(id)a4;
- (void)_attestationDataForRequestData:(id)a3 completion:(id)a4;
- (void)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4;
- (void)_setTimeAdjustmentWithServerTime:(id)a3 completion:(id)a4;
- (void)_tearDownConnection;
- (void)anisetteDataForURLRequest:(id)a3 completion:(id)a4;
- (void)anisetteDataWithCompletion:(id)a3;
- (void)attestationDataForRequest:(id)a3 completion:(id)a4;
- (void)attestationDataForRequestData:(id)a3 completion:(id)a4;
- (void)eraseWithCompletion:(id)a3;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4;
- (void)fetchPeerAttestationDataForRequest:(id)a3 completion:(id)a4;
- (void)handleAttestationResponseWithResponseData:(id)a3 completion:(id)a4;
- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4;
- (void)postAttestationAnalytics:(id)a3 completion:(id)a4;
- (void)provisionWithCompletion:(id)a3;
- (void)refreshBAADeviceTokenWithCompletion:(id)a3;
- (void)resetDeviceIdentityWithCompletion:(id)a3;
- (void)setTimeAdjustmentWithServerTime:(id)a3 completion:(id)a4;
- (void)shouldAllowReprovisionForHostName:(id)a3 completion:(id)a4;
- (void)syncWithSIMData:(id)a3 completion:(id)a4;
@end

@implementation AKAnisetteProvisioningController

- (AKAnisetteProvisioningController)init
{
  v4 = 0;
  v4 = [(AKAnisetteProvisioningController *)self initForDevice:0 provider:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (id)_anisetteServiceConnection
{
  v3 = [(AKAnisetteProvisioningController *)self connectionManager];
  v4 = [(AKClientConnectionLifecycleManager *)v3 activeServiceConnection];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

- (id)initForDevice:(id)a3 provider:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = objc_alloc_init(AKXPCConnectionConfiguration);
  [(AKXPCConnectionConfiguration *)v8 setMachServiceName:@"com.apple.ak.anisette.xpc"];
  v4 = v11;
  v11 = 0;
  v11 = [(AKAnisetteProvisioningController *)v4 initWithConnectionConfiguration:v8 device:location[0] provider:v9];
  v7 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (AKAnisetteProvisioningController)initWithConnectionConfiguration:(id)a3 device:(id)a4 provider:(id)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v5 = v28;
  v28 = 0;
  v24.receiver = v5;
  v24.super_class = AKAnisetteProvisioningController;
  v28 = [(AKAnisetteProvisioningController *)&v24 init];
  objc_storeStrong(&v28, v28);
  if (v28)
  {
    v21 = [location[0] remoteObjectInterface];
    MEMORY[0x1E69E5920](v21);
    if (!v21)
    {
      v19 = location[0];
      v20 = +[AKAnisetteProvisioningDaemonInterface XPCInterface];
      [v19 setRemoteObjectInterface:?];
      MEMORY[0x1E69E5920](v20);
    }

    v18 = [location[0] exportedInterface];
    MEMORY[0x1E69E5920](v18);
    if (!v18)
    {
      v16 = location[0];
      v17 = +[AKAnisetteProvisioningClientInterface XPCInterface];
      [v16 setExportedInterface:?];
      MEMORY[0x1E69E5920](v17);
    }

    v14 = [location[0] exportedObject];
    v15 = 0;
    if (!v14)
    {
      v15 = v25 != 0;
    }

    MEMORY[0x1E69E5920](v14);
    if (v15)
    {
      v12 = location[0];
      v6 = [_AKAnisetteProviderProxy alloc];
      v13 = [(_AKAnisetteProviderProxy *)v6 initWithProvider:v25];
      [v12 setExportedObject:?];
      MEMORY[0x1E69E5920](v13);
    }

    v7 = [AKClientConnectionLifecycleManager alloc];
    v8 = [(AKClientConnectionLifecycleManager *)v7 initWithConfiguration:location[0]];
    connectionManager = v28->_connectionManager;
    v28->_connectionManager = v8;
    MEMORY[0x1E69E5920](connectionManager);
    objc_storeStrong(&v28->_targetDevice, v26);
    objc_storeStrong(&v28->_anisetteDataProvider, v25);
  }

  v11 = MEMORY[0x1E69E5928](v28);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  return v11;
}

- (void)provisionWithCompletion:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45[0] = 0;
  v45[1] = v45;
  v46 = 838860800;
  v47 = 48;
  v48 = __Block_byref_object_copy__15;
  v49 = __Block_byref_object_dispose__15;
  v50 = MEMORY[0x1E69E5928](v52);
  v43 = _os_activity_create(&dword_193225000, "authkit/anisette-provision", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v44 = v43;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v43, &state);
  v41 = os_transaction_create();
  v40 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v39 = _AKSignpostCreate(v10);
  *(&v39 + 1) = v3;
  MEMORY[0x1E69E5920](v10);
  v38 = _AKSignpostLogSystem();
  v37 = 1;
  v36 = v39;
  if (v39 && v36 != -1 && os_signpost_enabled(v38))
  {
    log = v38;
    type = v37;
    spid = v36;
    __os_log_helper_16_0_0(v35);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "ProvisionAnisette", " enableTelemetry=YES ", v35, 2u);
  }

  objc_storeStrong(&v38, 0);
  v34 = _AKSignpostLogSystem();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v53, v39);
    _os_log_impl(&dword_193225000, v34, v33, "BEGIN [%lld]: ProvisionAnisette  enableTelemetry=YES ", v53, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v40 = v39;
  v24 = MEMORY[0x1E69E9820];
  v25 = -1073741824;
  v26 = 0;
  v27 = __60__AKAnisetteProvisioningController_provisionWithCompletion___block_invoke;
  v28 = &unk_1E73D8FF0;
  v31 = v39;
  v30[1] = v45;
  v30[0] = MEMORY[0x1E69E5928](location[0]);
  v29 = MEMORY[0x1E69E5928](v41);
  v32 = MEMORY[0x193B165F0](&v24);
  v6 = [(AKAnisetteProvisioningController *)v52 _anisetteServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __60__AKAnisetteProvisioningController_provisionWithCompletion___block_invoke_6;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v32);
  v23 = [v6 remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](v6);
  v5 = v23;
  targetDevice = v52->_targetDevice;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __60__AKAnisetteProvisioningController_provisionWithCompletion___block_invoke_8;
  v15 = &unk_1E73D3B38;
  v16 = MEMORY[0x1E69E5928](v32);
  [v5 provisionAnisetteForDevice:targetDevice completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
  objc_storeStrong(&v41, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v44, 0);
  _Block_object_dispose(v45, 8);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __60__AKAnisetteProvisioningController_provisionWithCompletion___block_invoke(void *a1, char a2, id obj)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v12 = _AKSignpostGetNanoseconds(a1[7], a1[8]) / 1000000000.0;
  v11 = _AKSignpostLogSystem();
  v10 = 2;
  v9 = a1[7];
  if (v9 && v9 != -1 && os_signpost_enabled(v11))
  {
    log = v11;
    type = v10;
    spid = v9;
    __os_log_helper_16_0_0(v8);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "ProvisionAnisette", "", v8, 2u);
  }

  objc_storeStrong(&v11, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[7], *&v12);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:ProvisionAnisette ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[6] + 8) + 40), 0);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __60__AKAnisetteProvisioningController_provisionWithCompletion___block_invoke_6(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __60__AKAnisetteProvisioningController_provisionWithCompletion___block_invoke_8(void *a1, char a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (location)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, location);
      _os_log_error_impl(&dword_193225000, v10[0], v9, "Remote Anisette service returned an error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote Anisette service successfuly provisioned.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)shouldAllowReprovisionForHostName:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = +[AKURLBag sharedBag];
  v5 = v13;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __81__AKAnisetteProvisioningController_shouldAllowReprovisionForHostName_completion___block_invoke;
  v10 = &unk_1E73D9018;
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](v14);
  [v5 grandSlamEndpointIdentifiersWithCompletion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __81__AKAnisetteProvisioningController_shouldAllowReprovisionForHostName_completion___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  oslog[1] = a1;
  if ([location[0] count])
  {
    memset(__b, 0, sizeof(__b));
    v9 = MEMORY[0x1E69E5928](location[0]);
    v10 = [v9 countByEnumeratingWithState:__b objects:v25 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(__b[1] + 8 * v7);
        if (([(objc_class *)a1[4].isa containsString:v17]& 1) != 0)
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [v9 countByEnumeratingWithState:__b objects:v25 count:16];
          if (!v8)
          {
            goto LABEL_19;
          }
        }
      }

      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_3_2_8_65_8_65(v24, a1[4].isa, v17);
        _os_log_debug_impl(&dword_193225000, v15, v14, "Allow reprovision for hostname: %{private}@, with keyword:  %{private}@", v24, 0x16u);
      }

      objc_storeStrong(&v15, 0);
      if (a1[5].isa)
      {
        (*(a1[5].isa + 2))();
      }

      v18 = 1;
    }

    else
    {
LABEL_19:
      v18 = 0;
    }

    MEMORY[0x1E69E5920](v9);
    if (!v18)
    {
      v13 = _AKLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_3_2_8_65_8_65(v23, a1[4].isa, location[0]);
        _os_log_error_impl(&dword_193225000, v13, OS_LOG_TYPE_ERROR, "Reprovision request is not allow for hostname: %{private}@, because it does not contain any keyword from: %{private}@", v23, 0x16u);
      }

      objc_storeStrong(&v13, 0);
      if (a1[5].isa)
      {
        isa = a1[5].isa;
        v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAnisetteError" code:-8002 userInfo:0];
        (*(isa + 2))(isa, 0);
        MEMORY[0x1E69E5920](v4);
      }

      v18 = 0;
    }
  }

  else
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_3_1_8_65(v26, a1[4].isa);
      _os_log_debug_impl(&dword_193225000, oslog[0], type, "No GS keywords returned from idMS, allowing reprovision request for hostname: %{private}@", v26, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }

    v18 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)syncWithSIMData:(id)a3 completion:(id)a4
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v34[0] = 0;
  v34[1] = v34;
  v35 = 838860800;
  v36 = 48;
  v37 = __Block_byref_object_copy__15;
  v38 = __Block_byref_object_dispose__15;
  v39 = MEMORY[0x1E69E5928](v42);
  v32 = _os_activity_create(&dword_193225000, "authkit/sync-sim", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v33 = v32;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v32, &state);
  v30 = os_transaction_create();
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __63__AKAnisetteProvisioningController_syncWithSIMData_completion___block_invoke;
  v26 = &unk_1E73D9040;
  v28[1] = v34;
  v28[0] = MEMORY[0x1E69E5928](v40);
  v27 = MEMORY[0x1E69E5928](v30);
  v29 = MEMORY[0x193B165F0](&v22);
  v7 = [(AKAnisetteProvisioningController *)v42 _anisetteServiceConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __63__AKAnisetteProvisioningController_syncWithSIMData_completion___block_invoke_2;
  v19 = &unk_1E73D3510;
  v20 = MEMORY[0x1E69E5928](v29);
  v21 = [v7 remoteObjectProxyWithErrorHandler:&v15];
  MEMORY[0x1E69E5920](v7);
  v6 = v21;
  v4 = location[0];
  targetDevice = v42->_targetDevice;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __63__AKAnisetteProvisioningController_syncWithSIMData_completion___block_invoke_13;
  v13 = &unk_1E73D3B38;
  v14 = MEMORY[0x1E69E5928](v29);
  [v6 syncAnisetteWithSIMData:v4 device:targetDevice completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v30, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v33, 0);
  _Block_object_dispose(v34, 8);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

void __63__AKAnisetteProvisioningController_syncWithSIMData_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), 0);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __63__AKAnisetteProvisioningController_syncWithSIMData_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __63__AKAnisetteProvisioningController_syncWithSIMData_completion___block_invoke_13(void *a1, char a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (location)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, location);
      _os_log_error_impl(&dword_193225000, v10[0], v9, "Remote Anisette service returned an error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote Anisette service successfuly resynced provisioning data.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)eraseWithCompletion:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45[0] = 0;
  v45[1] = v45;
  v46 = 838860800;
  v47 = 48;
  v48 = __Block_byref_object_copy__15;
  v49 = __Block_byref_object_dispose__15;
  v50 = MEMORY[0x1E69E5928](v52);
  v43 = _os_activity_create(&dword_193225000, "authkit/anisette-erase", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v44 = v43;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v43, &state);
  v41 = os_transaction_create();
  v40 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v39 = _AKSignpostCreate(v10);
  *(&v39 + 1) = v3;
  MEMORY[0x1E69E5920](v10);
  v38 = _AKSignpostLogSystem();
  v37 = 1;
  v36 = v39;
  if (v39 && v36 != -1 && os_signpost_enabled(v38))
  {
    log = v38;
    type = v37;
    spid = v36;
    __os_log_helper_16_0_0(v35);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "EraseAnisette", "", v35, 2u);
  }

  objc_storeStrong(&v38, 0);
  v34 = _AKSignpostLogSystem();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v53, v39);
    _os_log_impl(&dword_193225000, v34, v33, "BEGIN [%lld]: EraseAnisette ", v53, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v40 = v39;
  v24 = MEMORY[0x1E69E9820];
  v25 = -1073741824;
  v26 = 0;
  v27 = __56__AKAnisetteProvisioningController_eraseWithCompletion___block_invoke;
  v28 = &unk_1E73D8FF0;
  v31 = v39;
  v30[1] = v45;
  v30[0] = MEMORY[0x1E69E5928](location[0]);
  v29 = MEMORY[0x1E69E5928](v41);
  v32 = MEMORY[0x193B165F0](&v24);
  v6 = [(AKAnisetteProvisioningController *)v52 _anisetteServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __56__AKAnisetteProvisioningController_eraseWithCompletion___block_invoke_15;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v32);
  v23 = [v6 remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](v6);
  v5 = v23;
  targetDevice = v52->_targetDevice;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __56__AKAnisetteProvisioningController_eraseWithCompletion___block_invoke_16;
  v15 = &unk_1E73D3B38;
  v16 = MEMORY[0x1E69E5928](v32);
  [v5 eraseAnisetteForDevice:targetDevice completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
  objc_storeStrong(&v41, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v44, 0);
  _Block_object_dispose(v45, 8);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __56__AKAnisetteProvisioningController_eraseWithCompletion___block_invoke(void *a1, char a2, id obj)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v12 = _AKSignpostGetNanoseconds(a1[7], a1[8]) / 1000000000.0;
  v11 = _AKSignpostLogSystem();
  v10 = 2;
  v9 = a1[7];
  if (v9 && v9 != -1 && os_signpost_enabled(v11))
  {
    log = v11;
    type = v10;
    spid = v9;
    __os_log_helper_16_0_0(v8);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "EraseAnisette", "", v8, 2u);
  }

  objc_storeStrong(&v11, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[7], *&v12);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:EraseAnisette ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[6] + 8) + 40), 0);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __56__AKAnisetteProvisioningController_eraseWithCompletion___block_invoke_15(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __56__AKAnisetteProvisioningController_eraseWithCompletion___block_invoke_16(void *a1, char a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (location)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, location);
      _os_log_error_impl(&dword_193225000, v10[0], v9, "Remote Anisette service returned an error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote Anisette service successfuly erased provisioning data.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)anisetteDataForURLRequest:(id)a3 error:(id *)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 1;
  if (location[0])
  {
    v9 = [location[0] ak_usesHTTPSScheme];
  }

  if (v9)
  {
    v12 = [(AKAnisetteProvisioningController *)v11 fetchAnisetteDataAndProvisionIfNecessary:1 error:a4];
  }

  else
  {
    if (a4)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAnisetteError" code:-8012 userInfo:0];
      v4 = v7;
      *a4 = v7;
    }

    v12 = 0;
  }

  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (void)anisetteDataWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAnisetteProvisioningController *)v4 anisetteDataForURLRequest:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)anisetteDataForURLRequest:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v13 = _os_activity_create(&dword_193225000, "authkit/anisette-for-request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14 = v13;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  if (!location[0] || [location[0] ak_usesHTTPSScheme])
  {
    [(AKAnisetteProvisioningController *)v17 fetchAnisetteDataAndProvisionIfNecessary:1 withCompletion:v15];
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_193225000, log, type, "Not allowed to use Anisette data with non-HTTPS URLs.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    if (v15)
    {
      v5 = v15;
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAnisetteError" code:-8012 userInfo:0];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v4);
    }
  }

  os_activity_scope_leave(&state);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = self;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v43 = _os_activity_create(&dword_193225000, "authkit/fetch-anisette", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v44 = v43;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v43, &state);
  v41 = 0uLL;
  v20 = _AKSignpostLogSystem();
  *&v40 = _AKSignpostCreate(v20);
  *(&v40 + 1) = v4;
  MEMORY[0x1E69E5920](v20);
  location = _AKSignpostLogSystem();
  v38 = 1;
  v37 = v40;
  if (v40 && v37 != -1 && os_signpost_enabled(location))
  {
    log = location;
    type = v38;
    spid = v37;
    __os_log_helper_16_0_0(v36);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAnisette", "", v36, 2u);
  }

  objc_storeStrong(&location, 0);
  v35 = _AKSignpostLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v50, v40);
    _os_log_impl(&dword_193225000, v35, v34, "BEGIN [%lld]: FetchAnisette ", v50, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  v41 = v40;
  v33 = 0;
  obj = 0;
  v16 = [(AKAnisetteProvisioningController *)v48 _fetchAnisetteDataAndProvisionIfNecessary:v46 error:&obj];
  objc_storeStrong(&v33, obj);
  v32 = v16;
  if ([v33 ak_isXPCServiceError])
  {
    oslog = _AKTrafficLogSubsystem();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v14 = oslog;
      v15 = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_error_impl(&dword_193225000, v14, v15, "Anisette fetch failed with XPC error, retrying...", v28, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v33, 0);
    v27 = v33;
    v13 = [(AKAnisetteProvisioningController *)v48 _fetchAnisetteDataAndProvisionIfNecessary:v46 error:&v27];
    objc_storeStrong(&v33, v27);
    v5 = v32;
    v32 = v13;
    MEMORY[0x1E69E5920](v5);
  }

  if (v45)
  {
    v12 = v33;
    v6 = v33;
    *v45 = v12;
  }

  v26 = _AKSignpostGetNanoseconds(v41, *(&v41 + 1)) / 1000000000.0;
  v25 = _AKSignpostLogSystem();
  v24 = 2;
  v23 = v41;
  if (v41 && v23 != -1 && os_signpost_enabled(v25))
  {
    v9 = v25;
    v10 = v24;
    v11 = v23;
    __os_log_helper_16_0_0(v22);
    _os_signpost_emit_with_name_impl(&dword_193225000, v9, v10, v11, "FetchAnisette", "", v22, 2u);
  }

  objc_storeStrong(&v25, 0);
  v21 = _AKSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v49, v41, *&v26);
    _os_log_impl(&dword_193225000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAnisette ", v49, 0x16u);
  }

  objc_storeStrong(&v21, 0);
  v8 = MEMORY[0x1E69E5928](v32);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v44, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = self;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 838860800;
  v34 = 48;
  v35 = __Block_byref_object_copy__15;
  v36 = __Block_byref_object_dispose__15;
  v37 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__15;
  v29 = __Block_byref_object_dispose__15;
  v30 = 0;
  v9 = [(AKAnisetteProvisioningController *)self _anisetteServiceConnection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __84__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_error___block_invoke;
  v21 = &unk_1E73D3C50;
  v22 = &v24;
  location = [v9 synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](v9);
  targetDevice = v41->_targetDevice;
  oslog[1] = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __84__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_error___block_invoke_17;
  v14 = &unk_1E73D9068;
  v15 = &v31;
  v16 = &v24;
  [location fetchAnisetteDataAndProvisionIfNecessary:v39 device:targetDevice completion:?];
  if (v38)
  {
    v8 = v25[5];
    v5 = v8;
    *v38 = v8;
  }

  if (v25[5])
  {
    oslog[0] = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v42, v25[5]);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v42, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  v7 = MEMORY[0x1E69E5928](v32[5]);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  _Block_object_dispose(&v31, 8);
  objc_storeStrong(&v37, 0);
  *MEMORY[0x1E69E9840];

  return v7;
}

void __84__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_error___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __84__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_error___block_invoke_17(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if (*(*(a1[4] + 8) + 40))
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, log, type, "Remote Anisette service returned Anisette data.", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong((*(a1[5] + 8) + 40), v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v29 = _os_activity_create(&dword_193225000, "authkit/fetch-anisette", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v27 = 0uLL;
  v8 = _AKSignpostLogSystem();
  *&v9 = _AKSignpostCreate(v8);
  *(&v9 + 1) = v4;
  v26 = v9;
  MEMORY[0x1E69E5920](v8);
  v25 = _AKSignpostLogSystem();
  v24 = 1;
  v23 = v9;
  if (v9 && v23 != -1 && os_signpost_enabled(v25))
  {
    log = v25;
    type = v24;
    spid = v23;
    __os_log_helper_16_0_0(v22);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAnisette", "", v22, 2u);
  }

  objc_storeStrong(&v25, 0);
  v21 = _AKSignpostLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v35, v26);
    _os_log_impl(&dword_193225000, v21, v20, "BEGIN [%lld]: FetchAnisette ", v35, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v27 = v26;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __92__AKAnisetteProvisioningController_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke;
  v14 = &unk_1E73D90B8;
  v15 = MEMORY[0x1E69E5928](v34);
  v18 = v32;
  v17 = v27;
  v16 = MEMORY[0x1E69E5928](location);
  v19 = MEMORY[0x193B165F0](&v10);
  [(AKAnisetteProvisioningController *)v34 _fetchAnisetteDataAndProvisionIfNecessary:v32 withCompletion:v19];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __92__AKAnisetteProvisioningController_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  if ([v28 ak_isXPCServiceError])
  {
    v27[0] = _AKTrafficLogSubsystem();
    v26 = 16;
    if (os_log_type_enabled(v27[0], OS_LOG_TYPE_ERROR))
    {
      log = v27[0];
      type = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_error_impl(&dword_193225000, log, type, "Anisette fetch failed with XPC error, retrying...", v25, 2u);
    }

    objc_storeStrong(v27, 0);
    [*(a1 + 32) _tearDownConnection];
    v7 = *(a1 + 32);
    v6 = *(a1 + 64);
    v18 = MEMORY[0x1E69E9820];
    v19 = -1073741824;
    v20 = 0;
    v21 = __92__AKAnisetteProvisioningController_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_19;
    v22 = &unk_1E73D9090;
    v24 = *(a1 + 48);
    v23 = MEMORY[0x1E69E5928](*(a1 + 40));
    [v7 _fetchAnisetteDataAndProvisionIfNecessary:v6 & 1 withCompletion:&v18];
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v17 = _AKSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56)) / 1000000000.0;
    v16 = _AKSignpostLogSystem();
    v15 = 2;
    v14 = *(a1 + 48);
    if (v14 && v14 != -1 && os_signpost_enabled(v16))
    {
      v3 = v16;
      v4 = v15;
      spid = v14;
      __os_log_helper_16_0_0(v13);
      _os_signpost_emit_with_name_impl(&dword_193225000, v3, v4, spid, "FetchAnisette", "", v13, 2u);
    }

    objc_storeStrong(&v16, 0);
    oslog = _AKSignpostLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v30, *(a1 + 48), *&v17);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAnisette ", v30, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __92__AKAnisetteProvisioningController_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_19(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[5];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAnisette", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[5], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAnisette ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v19[0] = 0;
  v19[1] = v19;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__15;
  v23 = __Block_byref_object_dispose__15;
  v24 = MEMORY[0x1E69E5928](v28);
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __93__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke;
  v16 = &unk_1E73D90E0;
  v17[1] = v19;
  v17[0] = MEMORY[0x1E69E5928](location);
  v18 = MEMORY[0x193B165F0](&v12);
  v4 = [(AKAnisetteProvisioningController *)v28 _anisetteServiceConnection];
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __93__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_20;
  v9 = &unk_1E73D3510;
  v10 = MEMORY[0x1E69E5928](v18);
  v11 = [v4 remoteObjectProxyWithErrorHandler:&v5];
  MEMORY[0x1E69E5920](v4);
  [v11 fetchAnisetteDataAndProvisionIfNecessary:v26 device:v28->_targetDevice completion:v18];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v17, 0);
  _Block_object_dispose(v19, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
}

void __93__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (v12)
  {
    v11[0] = _AKTrafficLogSubsystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, v12);
      _os_log_error_impl(&dword_193225000, v11[0], v10, "Remote Anisette service returned an error: %@", v14, 0xCu);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote Anisette service returned Anisette data.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __93__AKAnisetteProvisioningController__fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_20(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  if (!location[0])
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No DSID was provided!" userInfo:0];
  }

  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy__15;
  v37 = __Block_byref_object_dispose__15;
  v38 = MEMORY[0x1E69E5928](v41);
  v31 = _os_activity_create(&dword_193225000, "authkit/legacy-anisette", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __77__AKAnisetteProvisioningController_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v27 = &unk_1E73D90E0;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  v8 = [(AKAnisetteProvisioningController *)v41 _anisetteServiceConnection];
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __77__AKAnisetteProvisioningController_legacyAnisetteDataForDSID_withCompletion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [v8 remoteObjectProxyWithErrorHandler:&v16];
  MEMORY[0x1E69E5920](v8);
  v7 = v22;
  v5 = location[0];
  targetDevice = v41->_targetDevice;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __77__AKAnisetteProvisioningController_legacyAnisetteDataForDSID_withCompletion___block_invoke_23;
  v14 = &unk_1E73D9108;
  v15 = MEMORY[0x1E69E5928](v29);
  [v7 legacyAnisetteDataForDSID:v5 device:targetDevice completion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAnisetteProvisioningController_legacyAnisetteDataForDSID_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAnisetteProvisioningController_legacyAnisetteDataForDSID_withCompletion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAnisetteProvisioningController_legacyAnisetteDataForDSID_withCompletion___block_invoke_23(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  if (v12)
  {
    v11[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, v12);
      _os_log_error_impl(&dword_193225000, v11[0], v10, "Remote Anisette service returned an error: %@", v14, 0xCu);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v3 = v9;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote Anisette service returned legacy Anisette data.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchPeerAttestationDataForRequest:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v47[0] = 0;
  v47[1] = v47;
  v48 = 838860800;
  v49 = 48;
  v50 = __Block_byref_object_copy__15;
  v51 = __Block_byref_object_dispose__15;
  v52 = MEMORY[0x1E69E5928](v55);
  v45 = _os_activity_create(&dword_193225000, "authkit/fetch-peer-attestation-data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v46 = v45;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v45, &state);
  v43 = 0uLL;
  v12 = _AKSignpostLogSystem();
  *&v42 = _AKSignpostCreate(v12);
  *(&v42 + 1) = v4;
  MEMORY[0x1E69E5920](v12);
  v41 = _AKSignpostLogSystem();
  v40 = 1;
  v39 = v42;
  if (v42 && v39 != -1 && os_signpost_enabled(v41))
  {
    log = v41;
    type = v40;
    spid = v39;
    __os_log_helper_16_0_0(v38);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAttestation", "", v38, 2u);
  }

  objc_storeStrong(&v41, 0);
  v37 = _AKSignpostLogSystem();
  v36 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v56, v42);
    _os_log_impl(&dword_193225000, v37, v36, "BEGIN [%lld]: FetchAttestation ", v56, 0xCu);
  }

  objc_storeStrong(&v37, 0);
  v43 = v42;
  v28 = MEMORY[0x1E69E9820];
  v29 = -1073741824;
  v30 = 0;
  v31 = __82__AKAnisetteProvisioningController_fetchPeerAttestationDataForRequest_completion___block_invoke;
  v32 = &unk_1E73D9130;
  v34 = v42;
  v33[1] = v47;
  v33[0] = MEMORY[0x1E69E5928](v53);
  v35 = MEMORY[0x193B165F0](&v28);
  v8 = [(AKAnisetteProvisioningController *)v55 _anisetteServiceConnection];
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __82__AKAnisetteProvisioningController_fetchPeerAttestationDataForRequest_completion___block_invoke_25;
  v25 = &unk_1E73D3510;
  v26 = MEMORY[0x1E69E5928](v35);
  v27 = [v8 remoteObjectProxyWithErrorHandler:&v21];
  MEMORY[0x1E69E5920](v8);
  v7 = v27;
  targetDevice = v55->_targetDevice;
  v6 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __82__AKAnisetteProvisioningController_fetchPeerAttestationDataForRequest_completion___block_invoke_26;
  v18 = &unk_1E73D70A8;
  v19 = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x1E69E5928](v35);
  [v7 attestationDataForDevice:targetDevice withRequest:v6 completion:&v14];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v33, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v46, 0);
  _Block_object_dispose(v47, 8);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAnisetteProvisioningController_fetchPeerAttestationDataForRequest_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[6];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAttestation", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[6], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAttestation ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAnisetteProvisioningController_fetchPeerAttestationDataForRequest_completion___block_invoke_25(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __82__AKAnisetteProvisioningController_fetchPeerAttestationDataForRequest_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  if (v17)
  {
    v16[0] = _AKTrafficLogSubsystem();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v17);
      _os_log_error_impl(&dword_193225000, v16[0], v15, "Remote Anisette service returned an error: %@", v20, 0xCu);
    }

    objc_storeStrong(v16, 0);
  }

  else
  {
    v14 = _AKTrafficLogSubsystem();
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v7 = v14;
      v8 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_193225000, v7, v8, "Remote Anisette service returned Attestation data.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  v5 = +[AKConfiguration sharedConfiguration];
  v6 = [v5 shouldEnableAttestationLogging];
  MEMORY[0x1E69E5920](v5);
  if (v6 == 1)
  {
    v11 = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) URL];
      v3 = [location[0] attestationHeaders];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v19, v4, v3, v17);
      _os_log_debug_impl(&dword_193225000, v11, OS_LOG_TYPE_DEBUG, "Attestation for request [%@] - headers [%@], error - [%@]", v19, 0x20u);
      MEMORY[0x1E69E5920](v3);
      MEMORY[0x1E69E5920](v4);
    }

    objc_storeStrong(&v11, 0);
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)attestationDataForRequestData:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = a4;
  v44 = _os_activity_create(&dword_193225000, "authkit/fetch-attestation-data-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v45 = v44;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v44, &state);
  v42 = 0uLL;
  v20 = _AKSignpostLogSystem();
  *&v41 = _AKSignpostCreate(v20);
  *(&v41 + 1) = v4;
  MEMORY[0x1E69E5920](v20);
  v40 = _AKSignpostLogSystem();
  v39 = 1;
  v38 = v41;
  if (v41 && v38 != -1 && os_signpost_enabled(v40))
  {
    log = v40;
    type = v39;
    spid = v38;
    __os_log_helper_16_0_0(v37);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAttestation", "", v37, 2u);
  }

  objc_storeStrong(&v40, 0);
  v36 = _AKSignpostLogSystem();
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v50, v41);
    _os_log_impl(&dword_193225000, v36, v35, "BEGIN [%lld]: FetchAttestation ", v50, 0xCu);
  }

  objc_storeStrong(&v36, 0);
  v42 = v41;
  v34 = 0;
  obj = 0;
  v16 = [(AKAnisetteProvisioningController *)v48 _attestationDataForRequestData:location[0] error:&obj];
  objc_storeStrong(&v34, obj);
  v33 = v16;
  if ([v34 ak_isXPCServiceError])
  {
    oslog = _AKTrafficLogSubsystem();
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v14 = oslog;
      v15 = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_error_impl(&dword_193225000, v14, v15, "Attestation fetch failed with XPC error, retrying...", v29, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKAnisetteProvisioningController *)v48 _tearDownConnection];
    objc_storeStrong(&v34, 0);
    v28 = v34;
    v13 = [(AKAnisetteProvisioningController *)v48 _attestationDataForRequestData:location[0] error:&v28];
    objc_storeStrong(&v34, v28);
    v5 = v33;
    v33 = v13;
    MEMORY[0x1E69E5920](v5);
  }

  if (v46)
  {
    v12 = v34;
    v6 = v34;
    *v46 = v12;
  }

  v27 = _AKSignpostGetNanoseconds(v42, *(&v42 + 1)) / 1000000000.0;
  v26 = _AKSignpostLogSystem();
  v25 = 2;
  v24 = v42;
  if (v42 && v24 != -1 && os_signpost_enabled(v26))
  {
    v9 = v26;
    v10 = v25;
    v11 = v24;
    __os_log_helper_16_0_0(v23);
    _os_signpost_emit_with_name_impl(&dword_193225000, v9, v10, v11, "FetchAttestation", "", v23, 2u);
  }

  objc_storeStrong(&v26, 0);
  v22 = _AKSignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v49, v42, *&v27);
    _os_log_impl(&dword_193225000, v22, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAttestation ", v49, 0x16u);
  }

  objc_storeStrong(&v22, 0);
  v8 = MEMORY[0x1E69E5928](v33);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

- (void)handleAttestationResponseWithResponseData:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = _AKLogSystem();
  v36 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, v37, v36, "Handling attestation response - %@", v42, 0xCu);
  }

  objc_storeStrong(&v37, 0);
  v18 = [location[0] headersFromServer];
  v35 = [v18 objectForKey:@"x-apple-server-time"];
  MEMORY[0x1E69E5920](v18);
  v19 = [location[0] status];
  switch(v19)
  {
    case 441:
      [(AKAnisetteProvisioningController *)v40 resetDeviceIdentityWithCompletion:v38];
      break;
    case 442:
      v28 = _AKLogSystem();
      v27 = 16;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v10 = v28;
        v11 = v27;
        __os_log_helper_16_0_0(v26);
        _os_log_error_impl(&dword_193225000, v10, v11, "The host certificate for the device is invalid. It needs to be renewed to proceed.", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      if (v38)
      {
        v8 = v38;
        v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7001];
        v8[2]();
        MEMORY[0x1E69E5920](v9);
      }

      break;
    case 443:
      if ([v35 length])
      {
        v34 = _AKLogSystem();
        v33 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v34;
          type = v33;
          __os_log_helper_16_0_0(v32);
          _os_log_impl(&dword_193225000, v16, type, "Time adjustment information found with status 443.", v32, 2u);
        }

        objc_storeStrong(&v34, 0);
        [(AKAnisetteProvisioningController *)v40 setTimeAdjustmentWithServerTime:v35 completion:v38];
      }

      else
      {
        v31 = _AKLogSystem();
        v30 = 16;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v14 = v31;
          v15 = v30;
          __os_log_helper_16_0_0(v29);
          _os_log_error_impl(&dword_193225000, v14, v15, "HTTP BAA error 443 without server time received!", v29, 2u);
        }

        objc_storeStrong(&v31, 0);
        if (v38)
        {
          v12 = v38;
          v13 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7010];
          v12[2]();
          MEMORY[0x1E69E5920](v13);
        }
      }

      break;
    default:
      v25 = _AKLogSystem();
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v41, [location[0] status]);
        _os_log_error_impl(&dword_193225000, v25, v24, "Unhandled status code (%ld).", v41, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      if ([v35 length])
      {
        v23 = _AKLogSystem();
        v22 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v23;
          v7 = v22;
          __os_log_helper_16_0_0(v21);
          _os_log_impl(&dword_193225000, v6, v7, "Time adjustment information found in non-443 status.", v21, 2u);
        }

        objc_storeStrong(&v23, 0);
        [(AKAnisetteProvisioningController *)v40 setTimeAdjustmentWithServerTime:v35 completion:v38];
      }

      else if (v38)
      {
        v4 = v38;
        v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7001];
        v4[2]();
        MEMORY[0x1E69E5920](v5);
      }

      break;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_attestationDataForRequestData:(id)a3 error:(id *)a4
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 838860800;
  v34 = 48;
  v35 = __Block_byref_object_copy__15;
  v36 = __Block_byref_object_dispose__15;
  v37 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__15;
  v29 = __Block_byref_object_dispose__15;
  v30 = 0;
  v10 = [(AKAnisetteProvisioningController *)v40 _anisetteServiceConnection];
  v17[3] = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __73__AKAnisetteProvisioningController__attestationDataForRequestData_error___block_invoke;
  v21 = &unk_1E73D3C50;
  v22 = &v24;
  v23 = [v10 synchronousRemoteObjectProxyWithErrorHandler:?];
  MEMORY[0x1E69E5920](v10);
  v9 = v23;
  v8 = location[0];
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __73__AKAnisetteProvisioningController__attestationDataForRequestData_error___block_invoke_28;
  v16 = &unk_1E73D9158;
  v17[0] = MEMORY[0x1E69E5928](location[0]);
  v17[1] = &v24;
  v17[2] = &v31;
  [v9 attestationDataForRequestData:v8 completion:&v12];
  if (v38)
  {
    v7 = v25[5];
    v4 = v7;
    *v38 = v7;
  }

  v6 = MEMORY[0x1E69E5928](v32[5]);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  _Block_object_dispose(&v31, 8);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void __73__AKAnisetteProvisioningController__attestationDataForRequestData_error___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAnisetteProvisioningController__attestationDataForRequestData_error___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  v9 = +[AKConfiguration sharedConfiguration];
  v10 = [v9 shouldEnableAttestationLogging];
  MEMORY[0x1E69E5920](v9);
  if (v10 == 1)
  {
    v17[0] = _AKTrafficLogSubsystem();
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) requestURL];
      v5 = [location[0] attestationHeaders];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v21, v6, v5, v18);
      _os_log_debug_impl(&dword_193225000, v17[0], v16, "Attestation for request [%@] - headers [%@], error - [%@]", v21, 0x20u);
      MEMORY[0x1E69E5920](v5);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(v17, 0);
  }

  if (v18)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v18);
    v15 = _AKTrafficLogSubsystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, v15, v14, "Remote Anisette service returned an error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    v12 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote Anisette service returned Attestation data.", v11, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), location[0]);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)attestationDataForRequestData:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v30 = _os_activity_create(&dword_193225000, "authkit/fetch-attestation-data-async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v31 = v30;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v30, &state);
  v28 = 0uLL;
  v8 = _AKSignpostLogSystem();
  *&v9 = _AKSignpostCreate(v8);
  *(&v9 + 1) = v4;
  v27 = v9;
  MEMORY[0x1E69E5920](v8);
  v26 = _AKSignpostLogSystem();
  v25 = 1;
  v24 = v9;
  if (v9 && v24 != -1 && os_signpost_enabled(v26))
  {
    log = v26;
    type = v25;
    spid = v24;
    __os_log_helper_16_0_0(v23);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAttestation", "", v23, 2u);
  }

  objc_storeStrong(&v26, 0);
  v22 = _AKSignpostLogSystem();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v35, v27);
    _os_log_impl(&dword_193225000, v22, v21, "BEGIN [%lld]: FetchAttestation ", v35, 0xCu);
  }

  objc_storeStrong(&v22, 0);
  v28 = v27;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __77__AKAnisetteProvisioningController_attestationDataForRequestData_completion___block_invoke;
  v15 = &unk_1E73D91A8;
  v16 = MEMORY[0x1E69E5928](v34);
  v17 = MEMORY[0x1E69E5928](location[0]);
  v19 = v28;
  v18 = MEMORY[0x1E69E5928](v32);
  v20 = MEMORY[0x193B165F0](&v11);
  [(AKAnisetteProvisioningController *)v34 _attestationDataForRequestData:location[0] completion:v20];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAnisetteProvisioningController_attestationDataForRequestData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  if ([v28 ak_isXPCServiceError])
  {
    v27[0] = _AKTrafficLogSubsystem();
    v26 = 16;
    if (os_log_type_enabled(v27[0], OS_LOG_TYPE_ERROR))
    {
      log = v27[0];
      type = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_error_impl(&dword_193225000, log, type, "Attestation fetch failed with XPC error, retrying...", v25, 2u);
    }

    objc_storeStrong(v27, 0);
    [*(a1 + 32) _tearDownConnection];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v18 = MEMORY[0x1E69E9820];
    v19 = -1073741824;
    v20 = 0;
    v21 = __77__AKAnisetteProvisioningController_attestationDataForRequestData_completion___block_invoke_29;
    v22 = &unk_1E73D9180;
    v24 = *(a1 + 56);
    v23 = MEMORY[0x1E69E5928](*(a1 + 48));
    [v7 _attestationDataForRequestData:v6 completion:&v18];
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v17 = _AKSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
    v16 = _AKSignpostLogSystem();
    v15 = 2;
    v14 = *(a1 + 56);
    if (v14 && v14 != -1 && os_signpost_enabled(v16))
    {
      v3 = v16;
      v4 = v15;
      spid = v14;
      __os_log_helper_16_0_0(v13);
      _os_signpost_emit_with_name_impl(&dword_193225000, v3, v4, spid, "FetchAttestation", "", v13, 2u);
    }

    objc_storeStrong(&v16, 0);
    oslog = _AKSignpostLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v30, *(a1 + 56), *&v17);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAttestation ", v30, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAnisetteProvisioningController_attestationDataForRequestData_completion___block_invoke_29(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[5];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "FetchAttestation", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[5], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchAttestation ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_attestationDataForRequestData:(id)a3 completion:(id)a4
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v21[0] = 0;
  v21[1] = v21;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = MEMORY[0x1E69E5928](v29);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __78__AKAnisetteProvisioningController__attestationDataForRequestData_completion___block_invoke;
  v17 = &unk_1E73D91D0;
  v19[1] = v21;
  v18 = MEMORY[0x1E69E5928](location[0]);
  v19[0] = MEMORY[0x1E69E5928](v27);
  v20 = MEMORY[0x193B165F0](&v13);
  v4 = [(AKAnisetteProvisioningController *)v29 _anisetteServiceConnection];
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__AKAnisetteProvisioningController__attestationDataForRequestData_completion___block_invoke_30;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v20);
  v12 = [v4 remoteObjectProxyWithErrorHandler:&v6];
  MEMORY[0x1E69E5920](v4);
  [v12 attestationDataForRequestData:location[0] completion:v20];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(v21, 8);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void __78__AKAnisetteProvisioningController__attestationDataForRequestData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), 0);
  if (v17)
  {
    v16[0] = _AKTrafficLogSubsystem();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v17);
      _os_log_error_impl(&dword_193225000, v16[0], v15, "Remote Anisette service returned an error: %@", v20, 0xCu);
    }

    objc_storeStrong(v16, 0);
  }

  else
  {
    v14 = _AKTrafficLogSubsystem();
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v7 = v14;
      v8 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_193225000, v7, v8, "Remote Anisette service returned Attestation data.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v5 = +[AKConfiguration sharedConfiguration];
    v6 = [v5 shouldEnableAttestationLogging];
    MEMORY[0x1E69E5920](v5);
    if (v6 == 1)
    {
      oslog = _AKTrafficLogSubsystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v4 = [*(a1 + 32) requestURL];
        v3 = [location[0] attestationHeaders];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v19, v4, v3, v17);
        _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Attestation for request [%@] - headers [%@], error - [%@]", v19, 0x20u);
        MEMORY[0x1E69E5920](v3);
        MEMORY[0x1E69E5920](v4);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKAnisetteProvisioningController__attestationDataForRequestData_completion___block_invoke_30(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)attestationDataForRequest:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v4 = [AKAttestationRequestData alloc];
  v14 = [(AKAttestationRequestData *)v4 initWithRequest:location[0] requiredHeaders:0];
  v7 = v17;
  v6 = v14;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __73__AKAnisetteProvisioningController_attestationDataForRequest_completion___block_invoke;
  v12 = &unk_1E73D91F8;
  v13 = MEMORY[0x1E69E5928](v15);
  [(AKAnisetteProvisioningController *)v7 attestationDataForRequestData:v6 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAnisetteProvisioningController_attestationDataForRequest_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v4 = [AKAttestationData alloc];
  v5 = [location[0] attestationHeaders];
  v7[0] = [(AKAttestationData *)v4 initWithDictionary:?];
  MEMORY[0x1E69E5920](v5);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)resetDeviceIdentityWithCompletion:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = MEMORY[0x1E69E5928](v31);
  v22 = _os_activity_create(&dword_193225000, "authkit/reset-baa-certs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23 = v22;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v22, &state);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__AKAnisetteProvisioningController_resetDeviceIdentityWithCompletion___block_invoke;
  v18[3] = &unk_1E73D3DB8;
  v19[1] = v24;
  v19[0] = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x193B165F0](v18);
  v4 = [(AKAnisetteProvisioningController *)v31 _anisetteServiceConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __70__AKAnisetteProvisioningController_resetDeviceIdentityWithCompletion___block_invoke_2;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v20);
  v17 = [v4 remoteObjectProxyWithErrorHandler:&v11];
  MEMORY[0x1E69E5920](v4);
  v3 = v17;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __70__AKAnisetteProvisioningController_resetDeviceIdentityWithCompletion___block_invoke_33;
  v9 = &unk_1E73D3510;
  v10 = MEMORY[0x1E69E5928](v20);
  [v3 resetDeviceIdentityWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __70__AKAnisetteProvisioningController_resetDeviceIdentityWithCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __70__AKAnisetteProvisioningController_resetDeviceIdentityWithCompletion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKAnisetteProvisioningController_resetDeviceIdentityWithCompletion___block_invoke_33(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Remote Anisette service returned an error during resetting device identity: %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_193225000, v2, v3, "Remote Anisette service reset BAA certs successfully.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)refreshBAADeviceTokenWithCompletion:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = MEMORY[0x1E69E5928](v31);
  v22 = _os_activity_create(&dword_193225000, "authkit/renew-baa-device-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23 = v22;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v22, &state);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AKAnisetteProvisioningController_refreshBAADeviceTokenWithCompletion___block_invoke;
  v18[3] = &unk_1E73D3DB8;
  v19[1] = v24;
  v19[0] = MEMORY[0x1E69E5928](location[0]);
  v20 = MEMORY[0x193B165F0](v18);
  v4 = [(AKAnisetteProvisioningController *)v31 _anisetteServiceConnection];
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __72__AKAnisetteProvisioningController_refreshBAADeviceTokenWithCompletion___block_invoke_2;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v20);
  v17 = [v4 remoteObjectProxyWithErrorHandler:&v11];
  MEMORY[0x1E69E5920](v4);
  v3 = v17;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKAnisetteProvisioningController_refreshBAADeviceTokenWithCompletion___block_invoke_34;
  v9 = &unk_1E73D3510;
  v10 = MEMORY[0x1E69E5928](v20);
  [v3 refreshBAADeviceTokenWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __72__AKAnisetteProvisioningController_refreshBAADeviceTokenWithCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __72__AKAnisetteProvisioningController_refreshBAADeviceTokenWithCompletion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAnisetteProvisioningController_refreshBAADeviceTokenWithCompletion___block_invoke_34(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Remote Anisette service returned an error during renew BAA device token: %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_193225000, v2, v3, "Remote Anisette service renewed BAA device token successfully.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setTimeAdjustmentWithServerTime:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  if ([(AKAnisetteProvisioningController *)v16 timeSetOperationResult]== 1 || [(AKAnisetteProvisioningController *)v16 timeSetOperationResult]== 2)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_193225000, log, type, "Time has been set already. Doing an early return.", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }

    v10 = 1;
  }

  else if ([location[0] length])
  {
    v4 = +[AKConfiguration sharedConfiguration];
    v5 = [v4 shouldEnableAttestationLogging];
    MEMORY[0x1E69E5920](v4);
    if (v5 == 1)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v17, location[0]);
        _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Calling akd with server time - %@", v17, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    [(AKAnisetteProvisioningController *)v16 _setTimeAdjustmentWithServerTime:location[0] completion:v14];
    v10 = 0;
  }

  else
  {
    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }

    v10 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_setTimeAdjustmentWithServerTime:(id)a3 completion:(id)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v28[0] = 0;
  v28[1] = v28;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__15;
  v32 = __Block_byref_object_dispose__15;
  v33 = MEMORY[0x1E69E5928](v36);
  v26 = _os_activity_create(&dword_193225000, "authkit/resync-server-time", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v27 = v26;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v26, &state);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__AKAnisetteProvisioningController__setTimeAdjustmentWithServerTime_completion___block_invoke;
  v22[3] = &unk_1E73D3DB8;
  v23[1] = v28;
  v23[0] = MEMORY[0x1E69E5928](v34);
  v24 = MEMORY[0x193B165F0](v22);
  v6 = [(AKAnisetteProvisioningController *)v36 _anisetteServiceConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __80__AKAnisetteProvisioningController__setTimeAdjustmentWithServerTime_completion___block_invoke_2;
  v19 = &unk_1E73D3510;
  v20 = MEMORY[0x1E69E5928](v24);
  v21 = [v6 remoteObjectProxyWithErrorHandler:&v15];
  MEMORY[0x1E69E5920](v6);
  v5 = v21;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __80__AKAnisetteProvisioningController__setTimeAdjustmentWithServerTime_completion___block_invoke_35;
  v12 = &unk_1E73D9220;
  v13 = MEMORY[0x1E69E5928](v36);
  v14 = MEMORY[0x1E69E5928](v24);
  [v5 setTimeAdjustmentWithServerTime:v4 completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v27, 0);
  _Block_object_dispose(v28, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAnisetteProvisioningController__setTimeAdjustmentWithServerTime_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __80__AKAnisetteProvisioningController__setTimeAdjustmentWithServerTime_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAnisetteProvisioningController__setTimeAdjustmentWithServerTime_completion___block_invoke_35(uint64_t a1, uint64_t a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (location)
  {
    v10[0] = _AKTrafficLogSubsystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, location);
      _os_log_error_impl(&dword_193225000, v10[0], v9, "Remote Anisette service returned an error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    [*(a1 + 32) setTimeSetOperationResult:v12];
    oslog = _AKTrafficLogSubsystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Successfully set server time adjustment.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)postAttestationAnalytics:(id)a3 completion:(id)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = MEMORY[0x1E69E5928](v32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__AKAnisetteProvisioningController_postAttestationAnalytics_completion___block_invoke;
  v21[3] = &unk_1E73D3DB8;
  v22[1] = v24;
  v22[0] = MEMORY[0x1E69E5928](v30);
  v23 = MEMORY[0x193B165F0](v21);
  v6 = [(AKAnisetteProvisioningController *)v32 _anisetteServiceConnection];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __72__AKAnisetteProvisioningController_postAttestationAnalytics_completion___block_invoke_2;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v23);
  v20 = [v6 remoteObjectProxyWithErrorHandler:&v14];
  MEMORY[0x1E69E5920](v6);
  v5 = v20;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __72__AKAnisetteProvisioningController_postAttestationAnalytics_completion___block_invoke_37;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v23);
  [v5 postAttestationAnalyticsWithData:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v22, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void __72__AKAnisetteProvisioningController_postAttestationAnalytics_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __72__AKAnisetteProvisioningController_postAttestationAnalytics_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKTrafficLogSubsystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote Anisette service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAnisetteProvisioningController_postAttestationAnalytics_completion___block_invoke_37(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Remote Anisette service returned an error: %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_193225000, v2, v3, "Successfully posted analytics.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_tearDownConnection
{
  v2 = [(AKAnisetteProvisioningController *)self connectionManager];
  [(AKClientConnectionLifecycleManager *)v2 teardownServiceConnection];
  MEMORY[0x1E69E5920](v2);
}

@end