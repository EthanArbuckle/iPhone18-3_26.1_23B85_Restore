@interface AKAbsintheSigner
+ (id)sharedSigner;
- (BOOL)_didSigningContextExpire;
- (id)_sessionInfoFromCertificateData:(id)data;
- (id)signatureForURLRequest:(id)request;
- (void)_createSigningContextWithCompletionHandler:(id)handler;
- (void)_destroySigningContext;
- (void)_establishSessionWithInfo:(id)info sessionURL:(id)l completionHandler:(id)handler;
- (void)_generateSignatureForRequest:(id)request completionHandler:(id)handler;
- (void)dealloc;
- (void)signatureForURLRequest:(id)request completionHandler:(id)handler;
@end

@implementation AKAbsintheSigner

+ (id)sharedSigner
{
  v5 = &sharedSigner_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_39);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedSigner_sharedSigner_0;

  return v2;
}

uint64_t __32__AKAbsintheSigner_sharedSigner__block_invoke()
{
  v0 = objc_alloc_init(AKAbsintheSigner);
  v1 = sharedSigner_sharedSigner_0;
  sharedSigner_sharedSigner_0 = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (id)signatureForURLRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = 0;
  v15 = &v14;
  v16 = 838860800;
  v17 = 48;
  v18 = __Block_byref_object_copy__11;
  v19 = __Block_byref_object_dispose__11;
  v20 = 0;
  v13 = dispatch_semaphore_create(0);
  v6 = selfCopy;
  v5 = location[0];
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __43__AKAbsintheSigner_signatureForURLRequest___block_invoke;
  v11 = &unk_1E73D80F0;
  v12[1] = &v14;
  v12[0] = MEMORY[0x1E69E5928](v13);
  [(AKAbsintheSigner *)v6 signatureForURLRequest:v5 completionHandler:&v7];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x1E69E5928](v15[5]);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v14, 8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __43__AKAbsintheSigner_signatureForURLRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)signatureForURLRequest:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  v5 = selfCopy;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __61__AKAbsintheSigner_signatureForURLRequest_completionHandler___block_invoke;
  v10 = &unk_1E73D8118;
  v11 = MEMORY[0x1E69E5928](selfCopy);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v13 = MEMORY[0x1E69E5928](v14);
  [(AKAbsintheSigner *)v5 _createSigningContextWithCompletionHandler:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __61__AKAbsintheSigner_signatureForURLRequest_completionHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v5)
  {
    [*(a1 + 32) _generateSignatureForRequest:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)_generateSignatureForRequest:(id)request completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v33 = 0;
  objc_storeStrong(&v33, handler);
  v21 = [location[0] valueForHTTPHeaderField:@"X-MMe-Client-Info"];
  v32 = [v21 dataUsingEncoding:4];
  MEMORY[0x1E69E5920](v21);
  if (!v32)
  {
    v31 = _AKLogSystem();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      type = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_error_impl(&dword_193225000, log, type, "Nothing to sign. Using dummy data.", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:"L" length:1];
    v5 = v32;
    v32 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v37, location[0]);
    _os_log_impl(&dword_193225000, v28, v27, "Generating signature for body of URL request: %@...", v37, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v26 = 0;
  v25 = 0;
  v24 = 0;
  context = selfCopy->_context;
  v15 = v32;
  v6 = v32;
  bytes = [v15 bytes];
  t1BoNctgaUu66(context, bytes, [v32 length], &v25);
  v23 = v7;
  if (v7)
  {
    v22 = _AKLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v23];
      __os_log_helper_16_2_1_8_64(v36, v14);
      _os_log_error_impl(&dword_193225000, v22, OS_LOG_TYPE_ERROR, "NACSign failed with status %@.", v36, 0xCu);
      MEMORY[0x1E69E5920](v14);
    }

    objc_storeStrong(&v22, 0);
    v12 = v33;
    v13 = _AKAbsintheErrorWithCode(-9002);
    v12[2](v12, 0);
    MEMORY[0x1E69E5920](v13);
  }

  else
  {
    if (v25)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v25 length:v24];
      v9 = v26;
      v26 = v8;
      MEMORY[0x1E69E5920](v9);
      Be81a395Bf0(v25);
    }

    v10 = v33;
    v11 = [v26 base64EncodedStringWithOptions:0];
    v10[2]();
    MEMORY[0x1E69E5920](v11);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_createSigningContextWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  if (!selfCopy->_context)
  {
    goto LABEL_7;
  }

  if ([(AKAbsintheSigner *)selfCopy _didSigningContextExpire])
  {
    [(AKAbsintheSigner *)selfCopy _destroySigningContext];
LABEL_7:
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v17;
      v5 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_193225000, v4, v5, "Creating new signing context...", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v3 = [AKURLBag bagForAltDSID:0];
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __63__AKAbsintheSigner__createSigningContextWithCompletionHandler___block_invoke;
    v12 = &unk_1E73D7E38;
    v14 = MEMORY[0x1E69E5928](location[0]);
    v13 = MEMORY[0x1E69E5928](selfCopy);
    [v3 requestNewURLBagIfNecessaryWithCompletion:&v8];
    MEMORY[0x1E69E5920](v3);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    v18 = 0;
    goto LABEL_10;
  }

  v21 = _AKLogSystem();
  v20 = 2;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_debug_impl(&dword_193225000, log, type, "Using a previously generated Absinthe context", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  (*(location[0] + 2))(location[0], 1, 0);
  v18 = 1;
LABEL_10:
  objc_storeStrong(location, 0);
}

void __63__AKAbsintheSigner__createSigningContextWithCompletionHandler___block_invoke(void *a1, char a2, id obj)
{
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35[1] = a1;
  if ((v37 & 1) == 0)
  {
    v17 = _AKLogSystem();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v4 = v17;
      v5 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, v4, v5, "Failed to fetch URL bag prior to Absinthe signing", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    (*(a1[5] + 16))();
    goto LABEL_17;
  }

  v13 = [AKURLBag bagForAltDSID:0];
  v35[0] = [v13 absintheCertURL];
  MEMORY[0x1E69E5920](v13);
  if (v35[0])
  {
    v10 = [AKURLBag bagForAltDSID:0];
    v30 = [v10 absintheSessionURL];
    MEMORY[0x1E69E5920](v10);
    if (v30)
    {
      v26 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v35[0]];
      [v26 ak_addClientInfoHeader];
      v7 = +[AKURLSession sharedURLSession];
      v6 = v26;
      v18 = MEMORY[0x1E69E9820];
      v19 = -1073741824;
      v20 = 0;
      v21 = __63__AKAbsintheSigner__createSigningContextWithCompletionHandler___block_invoke_10;
      v22 = &unk_1E73D4D78;
      v23 = MEMORY[0x1E69E5928](a1[4]);
      v24 = MEMORY[0x1E69E5928](v30);
      v25 = MEMORY[0x1E69E5928](a1[5]);
      v3 = [v7 beginDataTaskWithRequest:v6 completionHandler:&v18];
      MEMORY[0x1E69E5920](v7);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v26, 0);
      v31 = 0;
    }

    else
    {
      v29 = _AKLogSystem();
      v28 = 16;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v8 = v29;
        v9 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_error_impl(&dword_193225000, v8, v9, "No URL for Absinthe signing session!", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      (*(a1[5] + 16))();
      v31 = 1;
    }

    objc_storeStrong(&v30, 0);
  }

  else
  {
    v34 = _AKLogSystem();
    v33 = 16;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      log = v34;
      type = v33;
      __os_log_helper_16_0_0(v32);
      _os_log_error_impl(&dword_193225000, log, type, "No URL for Absinthe signing cert!", v32, 2u);
    }

    objc_storeStrong(&v34, 0);
    (*(a1[5] + 16))();
    v31 = 1;
  }

  objc_storeStrong(v35, 0);
  if (!v31)
  {
LABEL_17:
    v31 = 0;
  }

  objc_storeStrong(&location, 0);
}

void __63__AKAbsintheSigner__createSigningContextWithCompletionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18[1] = a1;
  if (!location[0] || v19)
  {
    if (v19)
    {
      v17 = _AKLogSystem();
      v16 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        log = v17;
        type = v16;
        v7 = [v19 localizedDescription];
        v15 = MEMORY[0x1E69E5928](v7);
        __os_log_helper_16_2_1_8_64(v22, v15);
        _os_log_error_impl(&dword_193225000, log, type, "No Absinthe cert! Error: %@", v22, 0xCu);
        MEMORY[0x1E69E5920](v7);
        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v17, 0);
    }

    v4 = *(a1 + 48);
    v13 = 0;
    if (v19)
    {
      (*(v4 + 16))(v4, 0, v19);
    }

    else
    {
      v14 = _AKAbsintheErrorWithCode(-9004);
      v13 = 1;
      (*(v4 + 16))(v4, 0, v14);
    }

    if (v13)
    {
      MEMORY[0x1E69E5920](v14);
    }
  }

  else
  {
    v18[0] = [*(a1 + 32) _sessionInfoFromCertificateData:location[0]];
    if (v18[0])
    {
      [*(a1 + 32) _establishSessionWithInfo:v18[0] sessionURL:*(a1 + 40) completionHandler:*(a1 + 48)];
    }

    else
    {
      v8 = *(a1 + 48);
      v9 = _AKAbsintheErrorWithCode(-9003);
      (*(v8 + 16))(v8, 0);
      MEMORY[0x1E69E5920](v9);
    }

    objc_storeStrong(v18, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_sessionInfoFromCertificateData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(location[0], "length")}];
    __os_log_helper_16_2_1_8_64(v27, v12);
    _os_log_debug_impl(&dword_193225000, v23, v22, "Got Absinthe cert: %@ bytes", v27, 0xCu);
    MEMORY[0x1E69E5920](v12);
  }

  objc_storeStrong(&v23, 0);
  v21 = 0;
  v20 = 0;
  v10 = location[0];
  v3 = location[0];
  bytes = [v10 bytes];
  KxmB0CKvgWt(bytes, [location[0] length]);
  v19 = v4;
  if (v4)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:v19];
      __os_log_helper_16_2_1_8_64(v26, v9);
      _os_log_error_impl(&dword_193225000, v18, v17, "NACInit failed with status: %@", v26, 0xCu);
      MEMORY[0x1E69E5920](v9);
    }

    objc_storeStrong(&v18, 0);
    v25 = 0;
    v16 = 1;
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v7 = v15;
      v8 = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_193225000, v7, v8, "NACInit did not return an session info bytes!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v25 = 0;
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v5 = v25;

  return v5;
}

- (void)_establishSessionWithInfo:(id)info sessionURL:(id)l completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v21 = 0;
  objc_storeStrong(&v21, l);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  v5 = objc_alloc(MEMORY[0x1E695AC18]);
  v19 = [v5 initWithURL:v21];
  v9 = v19;
  v10 = [location[0] base64EncodedStringWithOptions:0];
  [v9 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v10);
  [v19 ak_addClientInfoHeader];
  v12 = +[AKURLSession sharedURLSession];
  v11 = v19;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __75__AKAbsintheSigner__establishSessionWithInfo_sessionURL_completionHandler___block_invoke;
  v16 = &unk_1E73D8140;
  v18 = MEMORY[0x1E69E5928](v20);
  v17 = MEMORY[0x1E69E5928](selfCopy);
  v6 = [v12 beginDataTaskWithRequest:v11 completionHandler:?];
  MEMORY[0x1E69E5920](v12);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __75__AKAbsintheSigner__establishSessionWithInfo_sessionURL_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v51 = 0;
  objc_storeStrong(&v51, a3);
  v50 = 0;
  objc_storeStrong(&v50, a4);
  v49[1] = a1;
  if (!location[0])
  {
    if (v50)
    {
      v27 = _AKLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v53, v50);
        _os_log_error_impl(&dword_193225000, v27, OS_LOG_TYPE_ERROR, "Request for Absinthe session failed with error: %@", v53, 0xCu);
      }

      objc_storeStrong(&v27, 0);
    }

    (*(a1[5] + 16))();
    goto LABEL_33;
  }

  v49[0] = 0;
  v47 = 0;
  v23 = [MEMORY[0x1E696ACB0] JSONObjectWithData:location[0] options:0 error:&v47];
  objc_storeStrong(v49, v47);
  v48 = v23;
  if (!v49[0] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = [v48 objectForKeyedSubscript:@"session-info"];
    if (v42)
    {
      v39 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v42 options:0];
      if (v39)
      {
        v36 = _AKLogSystem();
        v35 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v17 = v36;
          v18 = v35;
          __os_log_helper_16_0_0(v34);
          _os_log_debug_impl(&dword_193225000, v17, v18, "Calling NACKeyEstablishment...", v34, 2u);
        }

        objc_storeStrong(&v36, 0);
        v16 = *(a1[4] + 8);
        v14 = v39;
        v4 = v39;
        v15 = [v14 bytes];
        nDYmeMqvWb(v16, v15, [v39 length]);
        v33 = v5;
        if (v5)
        {
          oslog = _AKLogSystem();
          v31 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v13 = [MEMORY[0x1E696AD98] numberWithInt:v33];
            __os_log_helper_16_2_1_8_64(v54, v13);
            _os_log_error_impl(&dword_193225000, oslog, v31, "NACKeyEstablishment failed with result: %@", v54, 0xCu);
            MEMORY[0x1E69E5920](v13);
          }

          objc_storeStrong(&oslog, 0);
          v11 = a1[5];
          v12 = _AKAbsintheErrorWithCode(-9005);
          (*(v11 + 16))(v11, 0);
          MEMORY[0x1E69E5920](v12);
          v43 = 1;
        }

        else
        {
          v30 = _AKLogSystem();
          v29 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v30;
            v10 = v29;
            __os_log_helper_16_0_0(v28);
            _os_log_impl(&dword_193225000, v9, v10, "NACKeyEstablishment for new context. Ready for use!", v28, 2u);
          }

          objc_storeStrong(&v30, 0);
          v6 = [MEMORY[0x1E695DF00] date];
          v7 = a1[4];
          v8 = *(v7 + 16);
          *(v7 + 16) = v6;
          MEMORY[0x1E69E5920](v8);
          (*(a1[5] + 16))();
          v43 = 0;
        }
      }

      else
      {
        v38 = _AKLogSystem();
        v37 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v55, @"session-info");
          _os_log_error_impl(&dword_193225000, v38, v37, "Invalid value for key %@", v55, 0xCu);
        }

        objc_storeStrong(&v38, 0);
        v19 = a1[5];
        v20 = _AKAbsintheErrorWithCode(-9005);
        (*(v19 + 16))(v19, 0);
        MEMORY[0x1E69E5920](v20);
        v43 = 1;
      }

      objc_storeStrong(&v39, 0);
    }

    else
    {
      v41 = _AKLogSystem();
      v40 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v56, @"session-info");
        _os_log_error_impl(&dword_193225000, v41, v40, "Missing value for key %@", v56, 0xCu);
      }

      objc_storeStrong(&v41, 0);
      v21 = a1[5];
      v22 = _AKAbsintheErrorWithCode(-9005);
      (*(v21 + 16))(v21, 0);
      MEMORY[0x1E69E5920](v22);
      v43 = 1;
    }

    objc_storeStrong(&v42, 0);
  }

  else
  {
    v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:location[0] encoding:4];
    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v57, v46, v49[0]);
      _os_log_error_impl(&dword_193225000, v45, v44, "Could not parse Absinthe session response data: %@. Details: %@", v57, 0x16u);
    }

    objc_storeStrong(&v45, 0);
    (*(a1[5] + 16))();
    v43 = 1;
    objc_storeStrong(&v46, 0);
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(v49, 0);
  if (!v43)
  {
LABEL_33:
    v43 = 0;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_destroySigningContext
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_debug_impl(&dword_193225000, log, type, "Attempting to destroy absinthe context", v4, 2u);
  }

  objc_storeStrong(location, 0);
  if (selfCopy->_context)
  {
    IW1PcFszqNK(selfCopy->_context);
    selfCopy->_context = 0;
  }
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKAbsintheSigner *)self _destroySigningContext];
  v2.receiver = selfCopy;
  v2.super_class = AKAbsintheSigner;
  [(AKAbsintheSigner *)&v2 dealloc];
}

- (BOOL)_didSigningContextExpire
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_contextCreationDate];
  v5 = v2;
  MEMORY[0x1E69E5920](date);
  return v5 > 240.0;
}

@end