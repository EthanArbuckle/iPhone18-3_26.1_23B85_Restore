@interface AKAppleIDSigningController
- (AKAppleIDSigningController)init;
- (AKAppleIDSigningController)initWithDaemonXPCEndpoint:(id)endpoint;
- (id)_connection;
- (id)_parseDERCertificatesFromChain:(id)chain error:(id *)error;
- (void)_additionalAbsintheHeadersForRequest:(id)request completion:(id)completion;
- (void)_additionalAttestationHeadersForRequest:(id)request options:(id)options completion:(id)completion;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)absintheSignatureForData:(id)data completion:(id)completion;
- (void)attestationDataForRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)signWithBAAHeaders:(id)headers completion:(id)completion;
- (void)signaturesForData:(id)data options:(id)options completion:(id)completion;
- (void)signingHeadersForRequest:(id)request completion:(id)completion;
@end

@implementation AKAppleIDSigningController

- (AKAppleIDSigningController)init
{
  v4 = 0;
  v4 = [(AKAppleIDSigningController *)self initWithDaemonXPCEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAppleIDSigningController)initWithDaemonXPCEndpoint:(id)endpoint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKAppleIDSigningController;
  selfCopy = [(AKAppleIDSigningController *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_listenerEndpoint, location[0]);
    v4 = objc_alloc_init(AKAppleIDAuthenticationController);
    authenticationController = selfCopy->_authenticationController;
    selfCopy->_authenticationController = v4;
    MEMORY[0x1E69E5920](authenticationController);
    selfCopy->_signerLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.authkit.signingQ", v10);
    signingQueue = selfCopy->_signingQueue;
    selfCopy->_signingQueue = v6;
    MEMORY[0x1E69E5920](signingQueue);
    MEMORY[0x1E69E5920](v10);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NSXPCConnection *)self->_connection invalidate];
  v2.receiver = selfCopy;
  v2.super_class = AKAppleIDSigningController;
  [(AKAppleIDSigningController *)&v2 dealloc];
}

- (id)_connection
{
  v10[2] = self;
  v10[1] = a2;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __41__AKAppleIDSigningController__connection__block_invoke;
  v9 = &unk_1E73D4B18;
  v10[0] = MEMORY[0x1E69E5928](self);
  v4 = ak_unfair_lock_perform_with_result_1(&self->_signerLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

id __41__AKAppleIDSigningController__connection__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (!*(a1[4] + 4))
  {
    objc_initWeak(location, a1[4]);
    v23 = MEMORY[0x1E69E9820];
    v24 = -1073741824;
    v25 = 0;
    v26 = __41__AKAppleIDSigningController__connection__block_invoke_2;
    v27 = &unk_1E73D4B18;
    v28 = MEMORY[0x1E69E5928](a1[4]);
    v29 = MEMORY[0x193B165F0](&v23);
    v1 = (*(v29 + 2))();
    v2 = a1[4];
    v3 = v2[4];
    v2[4] = v1;
    MEMORY[0x1E69E5920](v3);
    v9 = *(a1[4] + 4);
    v8 = +[AKAppleIDSigningDaemonInterface XPCInterface];
    [v9 setRemoteObjectInterface:?];
    MEMORY[0x1E69E5920](v8);
    v7 = *(a1[4] + 4);
    v17 = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = __41__AKAppleIDSigningController__connection__block_invoke_3;
    v21 = &unk_1E73D34E8;
    objc_copyWeak(&v22, location);
    [v7 setInterruptionHandler:&v17];
    v6 = *(a1[4] + 4);
    v11 = MEMORY[0x1E69E9820];
    v12 = -1073741824;
    v13 = 0;
    v14 = __41__AKAppleIDSigningController__connection__block_invoke_4;
    v15 = &unk_1E73D34E8;
    objc_copyWeak(&v16, location);
    [v6 setInvalidationHandler:&v11];
    [*(a1[4] + 4) resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v22);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_destroyWeak(location);
  }

  v4 = *(a1[4] + 4);

  return v4;
}

id __41__AKAppleIDSigningController__connection__block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*(*(a1 + 32) + 24)];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ak.anisette.xpc" options:0];
  }

  return v2;
}

void __41__AKAppleIDSigningController__connection__block_invoke_3(id *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = objc_loadWeakRetained(a1 + 4);
  [v1[0] _connectionInterrupted];
  objc_storeStrong(v1, 0);
}

void __41__AKAppleIDSigningController__connection__block_invoke_4(id *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = objc_loadWeakRetained(a1 + 4);
  [v1[0] _connectionInvalidated];
  objc_storeStrong(v1, 0);
}

- (void)_connectionInterrupted
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v12 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v12;
    __os_log_helper_16_0_0(v11);
    _os_log_error_impl(&dword_193225000, log, type, "Connection to akd signer was interrupted!", v11, 2u);
  }

  objc_storeStrong(location, 0);
  p_signerLock = &selfCopy->_signerLock;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__AKAppleIDSigningController__connectionInterrupted__block_invoke;
  v9 = &unk_1E73D34C0;
  v10 = MEMORY[0x1E69E5928](selfCopy);
  ak_unfair_lock_perform_1(p_signerLock, &v5);
  objc_storeStrong(&v10, 0);
}

- (void)_connectionInvalidated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v12 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v12;
    __os_log_helper_16_0_0(v11);
    _os_log_debug_impl(&dword_193225000, log, type, "Connection to akd signer was invalidated: this is fine.™", v11, 2u);
  }

  objc_storeStrong(location, 0);
  p_signerLock = &selfCopy->_signerLock;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__AKAppleIDSigningController__connectionInvalidated__block_invoke;
  v9 = &unk_1E73D34C0;
  v10 = MEMORY[0x1E69E5928](selfCopy);
  ak_unfair_lock_perform_1(p_signerLock, &v5);
  objc_storeStrong(&v10, 0);
}

- (void)absintheSignatureForData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  v30 = _os_activity_create(&dword_193225000, "authkit/absinthe-signature-for-data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v31 = v30;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v30, &state);
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __66__AKAppleIDSigningController_absintheSignatureForData_completion___block_invoke;
  v25 = &unk_1E73D61D8;
  v26 = MEMORY[0x1E69E5928](selfCopy);
  v27 = MEMORY[0x1E69E5928](v32);
  v28 = MEMORY[0x193B165F0](&v21);
  _connection = [(AKAppleIDSigningController *)selfCopy _connection];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __66__AKAppleIDSigningController_absintheSignatureForData_completion___block_invoke_2;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v28);
  v20 = [_connection remoteObjectProxyWithErrorHandler:&v14];
  MEMORY[0x1E69E5920](_connection);
  v5 = v20;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __66__AKAppleIDSigningController_absintheSignatureForData_completion___block_invoke_103;
  v12 = &unk_1E73D3F48;
  v13 = MEMORY[0x1E69E5928](v28);
  [v5 absintheSignatureForData:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void __66__AKAppleIDSigningController_absintheSignatureForData_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[5] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __66__AKAppleIDSigningController_absintheSignatureForData_completion___block_invoke_2(NSObject *a1, void *a2)
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
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote signing service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __66__AKAppleIDSigningController_absintheSignatureForData_completion___block_invoke_103(void *a1, void *a2, void *a3)
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
      _os_log_error_impl(&dword_193225000, v11[0], v10, "Remote signing service returned an error: %@", v14, 0xCu);
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
      _os_log_debug_impl(&dword_193225000, v3, v4, "Remote signing service successfully signed data.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)signaturesForData:(id)data options:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v36 = 0;
  objc_storeStrong(&v36, options);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v33 = _os_activity_create(&dword_193225000, "authkit/signatures-for-data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34 = v33;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v33, &state);
  v24 = MEMORY[0x1E69E9820];
  v25 = -1073741824;
  v26 = 0;
  v27 = __67__AKAppleIDSigningController_signaturesForData_options_completion___block_invoke;
  v28 = &unk_1E73D6200;
  v29 = MEMORY[0x1E69E5928](selfCopy);
  v30 = MEMORY[0x1E69E5928](v35);
  v31 = MEMORY[0x193B165F0](&v24);
  _connection = [(AKAppleIDSigningController *)selfCopy _connection];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __67__AKAppleIDSigningController_signaturesForData_options_completion___block_invoke_2;
  v21 = &unk_1E73D3510;
  v22 = MEMORY[0x1E69E5928](v31);
  v23 = [_connection remoteObjectProxyWithErrorHandler:&v17];
  MEMORY[0x1E69E5920](_connection);
  v7 = v23;
  v5 = location[0];
  v6 = v36;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __67__AKAppleIDSigningController_signaturesForData_options_completion___block_invoke_105;
  v15 = &unk_1E73D4CC0;
  v16 = MEMORY[0x1E69E5928](v31);
  [v7 signaturesForData:v5 options:v6 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void __67__AKAppleIDSigningController_signaturesForData_options_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  (*(a1[5] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void __67__AKAppleIDSigningController_signaturesForData_options_completion___block_invoke_2(NSObject *a1, void *a2)
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
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote signing service returned an error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __67__AKAppleIDSigningController_signaturesForData_options_completion___block_invoke_105(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  if (v14)
  {
    v13[0] = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v17, v14);
      _os_log_error_impl(&dword_193225000, v13[0], v12, "Remote signing service returned an error: %@", v17, 0xCu);
    }

    objc_storeStrong(v13, 0);
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v4 = v11;
      v5 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_debug_impl(&dword_193225000, v4, v5, "Remote signing service successfully signed data.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)attestationDataForRequest:(id)request completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v19, selfCopy, location[0]);
    _os_log_debug_impl(&dword_193225000, v15, v14, "%@: Generating attestation data for request (%@)", v19, 0x16u);
  }

  objc_storeStrong(&v15, 0);
  v5 = selfCopy;
  v4 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __67__AKAppleIDSigningController_attestationDataForRequest_completion___block_invoke;
  v11 = &unk_1E73D4BA0;
  v12 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E5928](v16);
  [(AKAppleIDSigningController *)v5 signingHeadersForRequest:v4 completion:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __67__AKAppleIDSigningController_attestationDataForRequest_completion___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (v11)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v14, a1[4], v11);
      _os_log_error_impl(&dword_193225000, v10[0], v9, "%@: Failed to generate attestation data with error (%@)", v14, 0x16u);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v13, a1[4], location[0]);
      _os_log_impl(&dword_193225000, oslog, v7, "%@: Generated additional headers for attestation (%@)", v13, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = [AKAttestationData alloc];
  v6 = [(AKAttestationData *)v3 initWithDictionary:location[0]];
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)signingHeadersForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  authenticationController = [(AKAppleIDSigningController *)selfCopy authenticationController];
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke;
  v10 = &unk_1E73D6340;
  v11 = MEMORY[0x1E69E5928](selfCopy);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v14);
  [AKAppleIDAuthenticationController fetchURLBagForAltDSID:authenticationController completion:"fetchURLBagForAltDSID:completion:"];
  MEMORY[0x1E69E5920](authenticationController);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v71 = 0;
  objc_storeStrong(&v71, a3);
  v70[1] = a1;
  if (location[0])
  {
    v67 = dispatch_group_create();
    v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_initWeak(&v65, *(a1 + 32));
    v61[0] = 0;
    v61[1] = v61;
    v62 = 0x20000000;
    v63 = 32;
    v64 = 0;
    v50 = MEMORY[0x1E69E9820];
    v51 = -1073741824;
    v52 = 0;
    v53 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_155;
    v54 = &unk_1E73D6278;
    v58[1] = v61;
    v55 = MEMORY[0x1E69E5928](v67);
    v56 = MEMORY[0x1E69E5928](*(a1 + 32));
    v57 = MEMORY[0x1E69E5928](*(a1 + 40));
    objc_copyWeak(&v59, &v65);
    v58[0] = MEMORY[0x1E69E5928](v66);
    v60 = MEMORY[0x193B165F0](&v50);
    v37 = MEMORY[0x1E69E9820];
    v38 = -1073741824;
    v39 = 0;
    v40 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_157;
    v41 = &unk_1E73D62F0;
    v42 = MEMORY[0x1E69E5928](v67);
    v43 = MEMORY[0x1E69E5928](*(a1 + 32));
    v44 = MEMORY[0x1E69E5928](*(a1 + 40));
    objc_copyWeak(&v48, &v65);
    v45 = MEMORY[0x1E69E5928](v66);
    v46 = MEMORY[0x1E69E5928](v71);
    v47 = MEMORY[0x1E69E5928](v60);
    v49 = MEMORY[0x193B165F0](&v37);
    v36 = 1;
    v14 = objc_opt_class();
    v13 = [location[0] objectForKeyedSubscript:@"cfgs"];
    v35 = _AKSafeCast_6(v14, v13);
    MEMORY[0x1E69E5920](v13);
    v12 = objc_opt_class();
    v11 = [v35 objectForKeyedSubscript:@"abs-enable"];
    v34 = _AKSafeCast_6(v12, v11);
    MEMORY[0x1E69E5920](v11);
    if (v34)
    {
      (*(v60 + 2))();
      v36 = 0;
    }

    else
    {
      oslog = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v9 = oslog;
        v10 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_debug_impl(&dword_193225000, v9, v10, "Absinthe not enabled", v31, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v8 = objc_opt_class();
    v7 = [v35 objectForKeyedSubscript:@"baa-interval"];
    v30 = _AKSafeCast_6(v8, v7);
    MEMORY[0x1E69E5920](v7);
    v29 = [MEMORY[0x1E695DF90] dictionary];
    if (v30)
    {
      [v29 setObject:v30 forKeyedSubscript:@"AKAttestationSignerValidity"];
      (*(v49 + 2))(v49, v29);
      v36 = 0;
    }

    else
    {
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v5 = v28;
        v6 = v27;
        __os_log_helper_16_0_0(v26);
        _os_log_debug_impl(&dword_193225000, v5, v6, "No baaInterval", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
    }

    if (v36)
    {
      (*(v60 + 2))();
    }

    group = v67;
    queue = *(*(a1 + 32) + 16);
    v19 = MEMORY[0x1E69E9820];
    v20 = -1073741824;
    v21 = 0;
    v22 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_162;
    v23 = &unk_1E73D6318;
    v24 = MEMORY[0x1E69E5928](v66);
    v25 = MEMORY[0x1E69E5928](*(a1 + 48));
    dispatch_group_notify(group, queue, &v19);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v45, 0);
    objc_destroyWeak(&v48);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(v58, 0);
    objc_destroyWeak(&v59);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v55, 0);
    _Block_object_dispose(v61, 8);
    objc_destroyWeak(&v65);
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
  }

  else
  {
    v70[0] = _AKLogSystem();
    v69 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v70[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v70[0];
      type = v69;
      __os_log_helper_16_0_0(v68);
      _os_log_impl(&dword_193225000, log, type, "urlBag not present", v68, 2u);
    }

    objc_storeStrong(v70, 0);
    [*(a1 + 32) _additionalAbsintheHeadersForRequest:*(a1 + 40) completion:*(a1 + 48)];
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_155(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    dispatch_group_enter(*(a1 + 32));
    v2 = *(a1 + 40);
    v1 = *(a1 + 48);
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_2;
    v8 = &unk_1E73D6250;
    objc_copyWeak(v11, (a1 + 72));
    v9 = MEMORY[0x1E69E5928](*(a1 + 56));
    v10 = MEMORY[0x1E69E5928](*(a1 + 32));
    [v2 _additionalAbsintheHeadersForRequest:v1 completion:&v4];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    objc_destroyWeak(v11);
  }
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 48));
  queue = *(v16[0] + 2);
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_3;
  v10 = &unk_1E73D6228;
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](*(a1 + 32));
  v13 = MEMORY[0x1E69E5928](v17);
  v14 = MEMORY[0x1E69E5928](v16[0]);
  v15 = MEMORY[0x1E69E5928](*(a1 + 40));
  dispatch_async(queue, &v6);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) allKeys];
    __os_log_helper_16_2_1_8_64(v9, v3);
    _os_log_debug_impl(&dword_193225000, location[0], v6, "We have additional absinthe headers %@", v9, 0xCu);
    MEMORY[0x1E69E5920](v3);
  }

  objc_storeStrong(location, 0);
  if (*(a1 + 32))
  {
    [*(a1 + 40) addEntriesFromDictionary:*(a1 + 32)];
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, *(a1 + 48));
      _os_log_error_impl(&dword_193225000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch absinthe headers, error: %@", v8, 0xCu);
    }

    objc_storeStrong(&v5, 0);
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "code")}];
    v1 = [v2 stringValue];
    *(*(a1 + 56) + 40);
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v1);
    MEMORY[0x1E69E5920](v2);
  }

  dispatch_group_leave(*(a1 + 64));
  *MEMORY[0x1E69E9840];
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_157(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21[1] = a1;
  dispatch_group_enter(*(a1 + 32));
  v21[0] = _AKLogSystem();
  v20 = 2;
  if (os_log_type_enabled(v21[0], OS_LOG_TYPE_DEBUG))
  {
    log = v21[0];
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_debug_impl(&dword_193225000, log, type, "Requesting additional Attestation for header", v19, 2u);
  }

  objc_storeStrong(v21, 0);
  v4 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_158;
  v12 = &unk_1E73D62C8;
  objc_copyWeak(&v18, (a1 + 80));
  v13 = MEMORY[0x1E69E5928](*(a1 + 56));
  v14 = MEMORY[0x1E69E5928](*(a1 + 64));
  v15 = MEMORY[0x1E69E5928](*(a1 + 40));
  v17 = MEMORY[0x1E69E5928](*(a1 + 72));
  v16 = MEMORY[0x1E69E5928](*(a1 + 32));
  [v4 _additionalAttestationHeadersForRequest:v2 options:v3 completion:&v8];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v18);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18[1] = a1;
  v18[0] = objc_loadWeakRetained((a1 + 72));
  queue = *(v18[0] + 2);
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_2_159;
  v10 = &unk_1E73D62A0;
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](*(a1 + 32));
  v13 = MEMORY[0x1E69E5928](v19);
  v14 = MEMORY[0x1E69E5928](*(a1 + 40));
  v15 = MEMORY[0x1E69E5928](*(a1 + 48));
  v17 = MEMORY[0x1E69E5928](*(a1 + 64));
  v16 = MEMORY[0x1E69E5928](*(a1 + 56));
  dispatch_async(queue, &v6);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_2_159(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) allKeys];
    __os_log_helper_16_2_1_8_64(v19, v11);
    _os_log_debug_impl(&dword_193225000, location[0], v16, "We have attesation headers: %@", v19, 0xCu);
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(location, 0);
  if (*(a1 + 32))
  {
    [*(a1 + 40) addEntriesFromDictionary:*(a1 + 32)];
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, *(a1 + 48));
      _os_log_error_impl(&dword_193225000, v15, v14, "Failed to fetch attestation headers, error: %@", v18, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 56), "code")}];
    v13 = [v8 stringValue];
    MEMORY[0x1E69E5920](v8);
    v9 = [*(a1 + 56) underlyingErrors];
    v10 = [v9 count];
    MEMORY[0x1E69E5920](v9);
    if (v10)
    {
      v4 = MEMORY[0x1E696AD98];
      v7 = [*(a1 + 56) underlyingErrors];
      v6 = [v7 firstObject];
      v5 = [v4 numberWithInteger:{objc_msgSend(v6, "code")}];
      v1 = [v5 stringValue];
      v2 = v13;
      v13 = v1;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v5);
      MEMORY[0x1E69E5920](v6);
      MEMORY[0x1E69E5920](v7);
    }

    if (*(*(a1 + 64) + 40))
    {
      v3 = @"X-Apple-Proxied-Baa-E";
    }

    else
    {
      v3 = @"X-Apple-Baa-E";
    }

    [*(a1 + 40) setObject:v13 forKeyedSubscript:v3];
    (*(*(a1 + 80) + 16))();
    objc_storeStrong(&v13, 0);
  }

  dispatch_group_leave(*(a1 + 72));
  *MEMORY[0x1E69E9840];
}

uint64_t __79__AKAppleIDSigningController_Convenience__signingHeadersForRequest_completion___block_invoke_162(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v6, [*(a1 + 32) count]);
    _os_log_debug_impl(&dword_193225000, location[0], OS_LOG_TYPE_DEBUG, "returing %lu additional headers", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = (*(a1 + 40) + 16);
  v3 = [*(a1 + 32) copy];
  (*v2)();
  result = MEMORY[0x1E69E5920](v3);
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)signWithBAAHeaders:(id)headers completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v5 = selfCopy;
  v4 = location[0];
  v19 = @"AKAttestationUseDeviceCheckKeychainAccess";
  v20[0] = &unk_1F07B4EB0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __73__AKAppleIDSigningController_Convenience__signWithBAAHeaders_completion___block_invoke;
  v12 = &unk_1E73D6340;
  v13 = MEMORY[0x1E69E5928](selfCopy);
  v14 = MEMORY[0x1E69E5928](location[0]);
  v15 = MEMORY[0x1E69E5928](v16);
  [(AKAppleIDSigningController *)v5 _additionalAttestationHeadersForRequest:v4 options:v6 completion:&v8];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSigningController_Convenience__signWithBAAHeaders_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  queue = *(a1[4] + 16);
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __73__AKAppleIDSigningController_Convenience__signWithBAAHeaders_completion___block_invoke_2;
  v10 = &unk_1E73D6390;
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](v16);
  v13 = MEMORY[0x1E69E5928](a1[5]);
  v14 = MEMORY[0x1E69E5928](a1[4]);
  v15[0] = MEMORY[0x1E69E5928](a1[6]);
  dispatch_async(queue, &v6);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDSigningController_Convenience__signWithBAAHeaders_completion___block_invoke_2(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v87[2] = a1;
  v87[1] = a1;
  v87[0] = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (*(a1 + 32))
  {
    [v87[0] addEntriesFromDictionary:*(a1 + 32)];
  }

  else
  {
    location = _AKLogSystem();
    v85 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v93, *(a1 + 40));
      _os_log_error_impl(&dword_193225000, location, v85, "Failed to fetch attestation headers, error: %@", v93, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v84 = [v38 stringValue];
    MEMORY[0x1E69E5920](v38);
    v39 = [*(a1 + 40) underlyingErrors];
    v40 = [v39 count];
    MEMORY[0x1E69E5920](v39);
    if (v40)
    {
      v34 = MEMORY[0x1E696AD98];
      v37 = [*(a1 + 40) underlyingErrors];
      v36 = [v37 firstObject];
      v35 = [v34 numberWithInteger:{objc_msgSend(v36, "code")}];
      v1 = [v35 stringValue];
      v2 = v84;
      v84 = v1;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v35);
      MEMORY[0x1E69E5920](v36);
      MEMORY[0x1E69E5920](v37);
    }

    [v87[0] setObject:v84 forKeyedSubscript:@"X-Apple-Baa-E"];
    v83 = [*(a1 + 40) ak_allUnderlyingErrors];
    v82 = [MEMORY[0x1E695DF70] array];
    v32 = v83;
    v76 = MEMORY[0x1E69E9820];
    v77 = -1073741824;
    v78 = 0;
    v79 = __73__AKAppleIDSigningController_Convenience__signWithBAAHeaders_completion___block_invoke_165;
    v80 = &unk_1E73D6368;
    v81 = MEMORY[0x1E69E5928](v82);
    [v32 enumerateObjectsUsingBlock:&v76];
    v33 = [v82 componentsJoinedByString:@"|"];
    [v87[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v33);
    objc_storeStrong(&v81, 0);
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v84, 0);
  }

  if (SDeviceIdentityIsSupported())
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"2";
  }

  [v87[0] setObject:v3 forKeyedSubscript:@"X-Apple-Baa-Avail"];
  v75 = [*(a1 + 48) HTTPBody];
  if (v75)
  {
    v30 = [MEMORY[0x1E695DF00] date];
    v74 = [v30 ak_serverFriendlyString];
    MEMORY[0x1E69E5920](v30);
    v73 = [v75 ak_SHA256Data];
    v31 = [v73 aaf_toHexString];
    v72 = [v31 lowercaseString];
    MEMORY[0x1E69E5920](v31);
    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v72, v74];
    v70 = [v71 dataUsingEncoding:4];
    v69 = 0;
    v68 = 0;
    v67 = 0;
    if (SDeviceIdentityIsSupported())
    {
      v66 = v69;
      v65 = v68;
      v29 = SDeviceIdentityCreateHostSignature(v70, 0, &v66, &v65);
      objc_storeStrong(&v69, v66);
      objc_storeStrong(&v68, v65);
      v4 = v67;
      v67 = v29;
      MEMORY[0x1E69E5920](v4);
    }

    else
    {
      v64 = _AKLogSystem();
      v63 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v27 = v64;
        v28 = v63;
        __os_log_helper_16_0_0(v62);
        _os_log_error_impl(&dword_193225000, v27, v28, "DeviceIdentity not available", v62, 2u);
      }

      objc_storeStrong(&v64, 0);
      v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7066];
      v6 = v68;
      v68 = v5;
      MEMORY[0x1E69E5920](v6);
    }

    if (v68)
    {
      v61 = _AKLogSystem();
      v60 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v92, v68);
        _os_log_error_impl(&dword_193225000, v61, v60, "Failed to fetch host attestation headers, error: %@", v92, 0xCu);
      }

      objc_storeStrong(&v61, 0);
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v68, "code")}];
      v59 = [v24 stringValue];
      MEMORY[0x1E69E5920](v24);
      v25 = [v68 underlyingErrors];
      v26 = [v25 count];
      MEMORY[0x1E69E5920](v25);
      if (v26)
      {
        v20 = MEMORY[0x1E696AD98];
        v23 = [v68 underlyingErrors];
        v22 = [v23 firstObject];
        v21 = [v20 numberWithInteger:{objc_msgSend(v22, "code")}];
        v7 = [v21 stringValue];
        v8 = v59;
        v59 = v7;
        MEMORY[0x1E69E5920](v8);
        MEMORY[0x1E69E5920](v21);
        MEMORY[0x1E69E5920](v22);
        MEMORY[0x1E69E5920](v23);
      }

      [v87[0] setObject:v59 forKeyedSubscript:@"X-Apple-Host-Baa-E"];
      objc_storeStrong(&v59, 0);
    }

    if (v67 && v69)
    {
      v58 = _AKLogSystem();
      v57 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v18 = v58;
        v19 = v57;
        __os_log_helper_16_0_0(v56);
        _os_log_debug_impl(&dword_193225000, v18, v19, "Received signed host data and certificate chain", v56, 2u);
      }

      objc_storeStrong(&v58, 0);
      v55 = 0;
      v9 = *(a1 + 56);
      v53 = 0;
      v17 = [v9 _parseDERCertificatesFromChain:v69 error:&v53];
      objc_storeStrong(&v55, v53);
      v54 = v17;
      if (!v55)
      {
        v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
        for (i = 0; i < 2; ++i)
        {
          v16 = [v54 objectAtIndexedSubscript:i];
          v15 = [v16 base64EncodedStringWithOptions:0];
          [v52 addObject:?];
          MEMORY[0x1E69E5920](v15);
          MEMORY[0x1E69E5920](v16);
        }

        oslog = _AKLogSystem();
        v49 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v91, v69);
          _os_log_debug_impl(&dword_193225000, oslog, v49, "hostCertificateChain: %@", v91, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v89 = @"certs";
        v90 = v52;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v47 = 0;
        v45 = 0;
        v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v48 options:0 error:&v45];
        objc_storeStrong(&v47, v45);
        v46 = v14;
        if (v14)
        {
          v44 = [v46 aaf_toCompressedData:517];
          v43 = [v44 base64EncodedStringWithOptions:?];
          [v87[0] setObject:v43 forKeyedSubscript:@"X-Apple-Host-Baa"];
          v13 = [v67 base64EncodedStringWithOptions:0];
          [v87[0] setObject:? forKeyedSubscript:?];
          MEMORY[0x1E69E5920](v13);
          objc_storeStrong(&v43, 0);
          objc_storeStrong(&v44, 0);
        }

        else
        {
          v42 = _AKLogSystem();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v88, v47);
            _os_log_error_impl(&dword_193225000, v42, OS_LOG_TYPE_ERROR, "Failed to process host certificate chain, error: %@", v88, 0xCu);
          }

          objc_storeStrong(&v42, 0);
        }

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v52, 0);
      }

      objc_storeStrong(&v54, 0);
      objc_storeStrong(&v55, 0);
    }

    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v68, 0);
    objc_storeStrong(&v69, 0);
    objc_storeStrong(&v70, 0);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v74, 0);
  }

  v11 = (*(a1 + 64) + 16);
  v12 = [v87[0] copy];
  v10 = *(a1 + 40);
  (*v11)();
  MEMORY[0x1E69E5920](v12);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(v87, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSigningController_Convenience__signWithBAAHeaders_completion___block_invoke_165(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = a1[4];
  v3 = MEMORY[0x1E696AEC0];
  v6 = [location[0] domain];
  v5 = [v3 stringWithFormat:@"%@:%ld", v6, objc_msgSend(location[0], "code")];
  [v4 addObject:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
}

- (id)_parseDERCertificatesFromChain:(id)chain error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, chain);
  errorCopy = error;
  v31 = 0;
  memset(__b, 0, sizeof(__b));
  bytes = 0;
  v29 = 0;
  v28 = 0;
  v18 = location[0];
  v4 = location[0];
  bytes = [v18 bytes];
  v19 = bytes;
  v29 = v19 + [location[0] length];
  v27 = CTParseCertificateSet(bytes, v29, __b, 3, &v28);
  if (!v27 && v28)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = [v6 initWithCapacity:v28];
    v8 = v31;
    v31 = v7;
    MEMORY[0x1E69E5920](v8);
    for (i = 0; ; ++i)
    {
      if (i >= v28)
      {
        v34 = MEMORY[0x1E69E5928](v31);
        v24 = 1;
        goto LABEL_19;
      }

      if (!*&__b[i] || !*(&__b[i] + 1))
      {
        break;
      }

      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*&__b[i] length:*(&__b[i] + 1)];
      [v31 setObject:? atIndexedSubscript:?];
      MEMORY[0x1E69E5920](v15);
    }

    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v13 = v22;
      v14 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_193225000, v13, v14, "Invalid certData", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    if (errorCopy)
    {
      v12 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7066];
      v9 = v12;
      *errorCopy = v12;
    }

    v34 = 0;
    v24 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_2_4_0_8_0(v35, v27, v28);
      _os_log_error_impl(&dword_193225000, oslog, type, "Failed to parse certificate set. rc=%d, numCerts=%zu", v35, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v16 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7066];
      v5 = v16;
      *errorCopy = v16;
    }

    v34 = 0;
    v24 = 1;
  }

LABEL_19:
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v10 = v34;

  return v10;
}

- (void)_additionalAbsintheHeadersForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  objc_initWeak(&from, selfCopy);
  v5 = selfCopy;
  hTTPBody = [location[0] HTTPBody];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __91__AKAppleIDSigningController_Convenience___additionalAbsintheHeadersForRequest_completion___block_invoke;
  v11 = &unk_1E73D63B8;
  objc_copyWeak(v13, &from);
  v12 = MEMORY[0x1E69E5928](v15);
  [(AKAppleIDSigningController *)v5 absintheSignatureForData:hTTPBody completion:&v7];
  MEMORY[0x1E69E5920](hTTPBody);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&from);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __91__AKAppleIDSigningController_Convenience___additionalAbsintheHeadersForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      if (*(v24[0] + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v32, v3);
      _os_log_debug_impl(&dword_193225000, v23, v22, "Absinthe data generated for proxy %@", v32, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    v13 = *(a1 + 32);
    v4 = @"X-MMe-Proxied-Nas-Qualify";
    if ((*(v24[0] + 40) & 1) == 0)
    {
      v4 = @"X-MMe-Nas-Qualify";
    }

    v30 = v4;
    v31 = location[0];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    (*(v13 + 16))();
    MEMORY[0x1E69E5920](v14);
  }

  else if (v25)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v29, v25);
      _os_log_error_impl(&dword_193225000, v21, v20, "Absinthe error %@", v29, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v10 = *(a1 + 32);
    v9 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696AA08];
    v28 = v25;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v11 = [v9 ak_errorWithCode:-7066 userInfo:?];
    (*(v10 + 16))(v10, 0);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v7 = v19;
      v8 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_193225000, v7, v8, "Unknown absinthe error", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7066];
    (*(v5 + 16))(v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_additionalAttestationHeadersForRequest:(id)request options:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v42 = 0;
  objc_storeStrong(&v42, options);
  v41 = 0;
  objc_storeStrong(&v41, completion);
  v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  date = [MEMORY[0x1E695DF00] date];
  ak_serverFriendlyString = [date ak_serverFriendlyString];
  MEMORY[0x1E69E5920](date);
  v17 = [v42 objectForKeyedSubscript:@"AKAttestationUseDeviceCheckKeychainAccess"];
  bOOLValue = [v17 BOOLValue];
  MEMORY[0x1E69E5920](v17);
  if (bOOLValue)
  {
    [v39 setObject:ak_serverFriendlyString forKeyedSubscript:@"X-Apple-I-Client-Time"];
    hTTPBody = [location[0] HTTPBody];
    if (hTTPBody)
    {
      ak_SHA256Data = [hTTPBody ak_SHA256Data];
      aaf_toHexString = [ak_SHA256Data aaf_toHexString];
      lowercaseString = [aaf_toHexString lowercaseString];
      MEMORY[0x1E69E5920](aaf_toHexString);
      [v39 setObject:lowercaseString forKeyedSubscript:@"X-Apple-I-Payload-Hash"];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", lowercaseString, ak_serverFriendlyString];
      v33 = [v34 dataUsingEncoding:4];
      [v40 setObject:v33 forKeyedSubscript:@"X-Apple-I-Baa-S"];
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&lowercaseString, 0);
      objc_storeStrong(&ak_SHA256Data, 0);
    }

    v14 = +[AKDevice currentDevice];
    uniqueDeviceIdentifier = [v14 uniqueDeviceIdentifier];
    v32 = [uniqueDeviceIdentifier dataUsingEncoding:4];
    MEMORY[0x1E69E5920](uniqueDeviceIdentifier);
    MEMORY[0x1E69E5920](v14);
    if (v32)
    {
      [v40 setObject:v32 forKeyedSubscript:@"X-Mme-Device-Id-S"];
    }

    if (+[AKDevice hasUniqueDeviceIdentifier])
    {
      v12 = +[AKDevice currentDevice];
      provisioningDeviceIdentifier = [v12 provisioningDeviceIdentifier];
      v31 = [provisioningDeviceIdentifier dataUsingEncoding:4];
      MEMORY[0x1E69E5920](provisioningDeviceIdentifier);
      MEMORY[0x1E69E5920](v12);
      if (v31)
      {
        [v40 setObject:v31 forKeyedSubscript:@"X-Apple-I-Provisioning-Device-Id-S"];
      }

      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&hTTPBody, 0);
  }

  v10 = +[AKDevice currentDevice];
  serverFriendlyDescription = [v10 serverFriendlyDescription];
  v30 = [serverFriendlyDescription dataUsingEncoding:4];
  MEMORY[0x1E69E5920](serverFriendlyDescription);
  MEMORY[0x1E69E5920](v10);
  if (v30)
  {
    if (selfCopy->_isProxy)
    {
      v5 = @"X-MMe-Proxied-Client-Info-S";
    }

    else
    {
      v5 = @"X-MMe-Client-Info-S";
    }

    [v40 setObject:v30 forKeyedSubscript:v5];
  }

  objc_initWeak(&v29, selfCopy);
  v8 = selfCopy;
  v6 = v40;
  v7 = v42;
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __102__AKAppleIDSigningController_Convenience___additionalAttestationHeadersForRequest_options_completion___block_invoke;
  v25 = &unk_1E73D6400;
  objc_copyWeak(&v28, &v29);
  v26 = MEMORY[0x1E69E5928](v39);
  v27 = MEMORY[0x1E69E5928](v41);
  [(AKAppleIDSigningController *)v8 signaturesForData:v6 options:v7 completion:&v21];
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v29);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&ak_serverFriendlyString, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

void __102__AKAppleIDSigningController_Convenience___additionalAttestationHeadersForRequest_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35 = 0;
  objc_storeStrong(&v35, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33[1] = a1;
  v33[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0])
  {
    v18 = [location[0] aaf_map:&__block_literal_global_17];
    v32 = [v18 mutableCopy];
    MEMORY[0x1E69E5920](v18);
    v31 = [v35 base64EncodedStringWithOptions:0];
    if (v31)
    {
      if (*(v33[0] + 40))
      {
        v4 = @"X-Apple-Proxied-Baa";
      }

      else
      {
        v4 = @"X-Apple-Baa";
      }

      [v32 setObject:v31 forKeyedSubscript:v4];
    }

    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v32];
    [v30 addEntriesFromDictionary:*(a1 + 32)];
    v29 = _AKLogSystem();
    v28 = 2;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      log = v29;
      type = v28;
      v17 = [v32 allKeys];
      v27 = MEMORY[0x1E69E5928](v17);
      __os_log_helper_16_2_1_8_64(v40, v27);
      _os_log_debug_impl(&dword_193225000, log, type, "Attestation signature headers %@", v40, 0xCu);
      MEMORY[0x1E69E5920](v17);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v13 = (*(a1 + 40) + 16);
    v14 = [v30 copy];
    (*v13)();
    MEMORY[0x1E69E5920](v14);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else if (v34)
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v39, v34);
      _os_log_error_impl(&dword_193225000, v26, v25, "Attestation error %@", v39, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    v10 = *(a1 + 40);
    v9 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696AA08];
    v38 = v34;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v11 = [v9 ak_errorWithCode:-7066 userInfo:?];
    (*(v10 + 16))(v10, 0);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v7 = v24;
      v8 = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_error_impl(&dword_193225000, v7, v8, "Unknown attestation error", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7066];
    (*(v5 + 16))(v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

id __102__AKAppleIDSigningController_Convenience___additionalAttestationHeadersForRequest_options_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [v6 base64EncodedStringWithOptions:0];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end