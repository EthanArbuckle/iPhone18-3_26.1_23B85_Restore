@interface AKAttestationSigner
+ (AKAttestationSigner)sharedSigner;
- (AKAttestationSigner)init;
- (id)_attestationWithCertificates:(id)certificates error:(id *)error;
- (id)_signatureForData:(id)data withReferenceKey:(__SecKey *)key error:(id *)error;
- (void)_baaSignatureForData:(id)data completion:(id)completion;
- (void)_baaSignaturesForData:(id)data completion:(id)completion;
- (void)signatureForData:(id)data options:(id)options completion:(id)completion;
- (void)signaturesForData:(id)data options:(id)options completion:(id)completion;
@end

@implementation AKAttestationSigner

+ (AKAttestationSigner)sharedSigner
{
  v5 = &sharedSigner_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_10);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedSigner_sharedSigner;

  return v2;
}

uint64_t __35__AKAttestationSigner_sharedSigner__block_invoke()
{
  v0 = objc_alloc_init(AKAttestationSigner);
  v1 = sharedSigner_sharedSigner;
  sharedSigner_sharedSigner = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (AKAttestationSigner)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKAttestationSigner;
  v9 = [(AKAttestationSigner *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.authkit.ATTQ", v6);
    attestationQueue = v9->_attestationQueue;
    v9->_attestationQueue = v2;
    MEMORY[0x1E69E5920](attestationQueue);
    MEMORY[0x1E69E5920](v6);
  }

  v5 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)signatureForData:(id)data options:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v28 = 0;
  objc_storeStrong(&v28, options);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v11 = [v28 objectForKeyedSubscript:@"AKAttestationUseDeviceCheckKeychainAccess"];
  [v11 BOOLValue];
  MEMORY[0x1E69E5920](v11);
  if ([location[0] length])
  {
    v7 = [v28 objectForKeyedSubscript:@"AKAttestationUseDeviceCheckKeychainAccess"];
    bOOLValue = [v7 BOOLValue];
    MEMORY[0x1E69E5920](v7);
    if (bOOLValue)
    {
      [(AKAttestationSigner *)selfCopy _baaSignatureForData:location[0] completion:v27];
    }

    else
    {
      v22 = _AKAttestationOptionsFromOptions(v28);
      attestationQueue = selfCopy->_attestationQueue;
      v5 = v22;
      v14 = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __59__AKAttestationSigner_signatureForData_options_completion___block_invoke;
      v18 = &unk_1E73D4C70;
      v19 = MEMORY[0x1E69E5928](selfCopy);
      v20 = MEMORY[0x1E69E5928](location[0]);
      v21 = MEMORY[0x1E69E5928](v27);
      SDeviceIdentityIssueClientCertificateWithCompletion(attestationQueue, v5, &v14);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v22, 0);
    }

    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_debug_impl(&dword_193225000, log, type, "AKAttestationSigner signatureForData: - No data, nothing to sign.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    (*(v27 + 2))(v27, 0, 0);
    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __59__AKAttestationSigner_signatureForData_options_completion___block_invoke(void *a1, uint64_t a2, id obj, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a1;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27[1] = a1;
  if (v30 && location)
  {
    v27[0] = 0;
    v4 = a1[4];
    v5 = a1[5];
    v25 = 0;
    v14 = [v4 _signatureForData:v5 withReferenceKey:v30 error:&v25];
    objc_storeStrong(v27, v25);
    v26 = v14;
    if (v14)
    {
      v24 = 0;
      v6 = a1[4];
      v22 = 0;
      v13 = [v6 _attestationWithCertificates:location error:&v22];
      objc_storeStrong(&v24, v22);
      v23 = v13;
      (*(a1[6] + 16))();
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }

    else
    {
      (*(a1[6] + 16))();
    }

    objc_storeStrong(&v26, 0);
    objc_storeStrong(v27, 0);
  }

  else if (v28)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v32, v28);
      _os_log_error_impl(&dword_193225000, v21, v20, "Failed to BAA, error: %@", v32, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v11 = a1[6];
    v12 = _AKAttestationErrorCreateWithUnderlyingError(-10001, v28);
    (*(v11 + 16))(v11, 0);
    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v9 = v19;
      v10 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_193225000, v9, v10, "Failed to BAA, unknown error!", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v7 = a1[6];
    v8 = _AKAttestationErrorCreate(-10001);
    (*(v7 + 16))(v7, 0);
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)signaturesForData:(id)data options:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v28 = 0;
  objc_storeStrong(&v28, options);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v11 = [v28 objectForKeyedSubscript:@"AKAttestationUseDeviceCheckKeychainAccess"];
  [v11 BOOLValue];
  MEMORY[0x1E69E5920](v11);
  if ([location[0] count])
  {
    v7 = [v28 objectForKeyedSubscript:@"AKAttestationUseDeviceCheckKeychainAccess"];
    bOOLValue = [v7 BOOLValue];
    MEMORY[0x1E69E5920](v7);
    if (bOOLValue)
    {
      [(AKAttestationSigner *)selfCopy _baaSignaturesForData:location[0] completion:v27];
    }

    else
    {
      v22 = _AKAttestationOptionsFromOptions(v28);
      attestationQueue = selfCopy->_attestationQueue;
      v5 = v22;
      v14 = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __60__AKAttestationSigner_signaturesForData_options_completion___block_invoke;
      v18 = &unk_1E73D4C70;
      v19 = MEMORY[0x1E69E5928](location[0]);
      v20 = MEMORY[0x1E69E5928](selfCopy);
      v21 = MEMORY[0x1E69E5928](v27);
      SDeviceIdentityIssueClientCertificateWithCompletion(attestationQueue, v5, &v14);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v22, 0);
    }

    v23 = 0;
  }

  else
  {
    v26 = _AKLogSystem();
    v25 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_debug_impl(&dword_193225000, log, type, "AKAttestationSigner signaturesForData: - No data, nothing to sign.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    (*(v27 + 2))(v27, 0, 0);
    v23 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __60__AKAttestationSigner_signaturesForData_options_completion___block_invoke(uint64_t a1, void *a2, id obj, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = a1;
  v41 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38[1] = a1;
  if (v41 && location)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 838860800;
    v35 = 48;
    v36 = __Block_byref_object_copy__4;
    v37 = __Block_byref_object_dispose__4;
    v38[0] = 0;
    v14 = *(a1 + 32);
    v25 = MEMORY[0x1E69E9820];
    v26 = -1073741824;
    v27 = 0;
    v28 = __60__AKAttestationSigner_signaturesForData_options_completion___block_invoke_31;
    v29 = &unk_1E73D4C98;
    v30[0] = MEMORY[0x1E69E5928](*(a1 + 40));
    v30[2] = v41;
    v30[1] = &v32;
    v31 = [v14 aaf_mapStoppable:&v25];
    v13 = [*(a1 + 32) count];
    if (v13 == [v31 count])
    {
      v24 = 0;
      v4 = *(a1 + 40);
      v22 = 0;
      v12 = [v4 _attestationWithCertificates:location error:&v22];
      objc_storeStrong(&v24, v22);
      v23 = v12;
      (*(*(a1 + 48) + 16))();
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }

    else
    {
      v5 = v33[5];
      (*(*(a1 + 48) + 16))();
    }

    objc_storeStrong(&v31, 0);
    objc_storeStrong(v30, 0);
    _Block_object_dispose(&v32, 8);
    objc_storeStrong(v38, 0);
  }

  else if (v39)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v43, v39);
      _os_log_error_impl(&dword_193225000, v21, v20, "Failed to BAA, error: %@", v43, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v11 = *(a1 + 48);
    v10 = _AKAttestationErrorCreateWithUnderlyingError(-10001, v39);
    (*(v11 + 16))(v11, 0);
    MEMORY[0x1E69E5920](v10);
  }

  else
  {
    oslog = _AKLogSystem();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v8 = oslog;
      v9 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_193225000, v8, v9, "Failed to BAA, unknown error!", v17, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = *(a1 + 48);
    v6 = _AKAttestationErrorCreate(-10001);
    (*(v7 + 16))(v7, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

id __60__AKAttestationSigner_signaturesForData_options_completion___block_invoke_31(void *a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = a4;
  v20[1] = a1;
  v20[0] = 0;
  v4 = a1[4];
  v5 = a1[6];
  v18 = 0;
  v13 = [v4 _signatureForData:v22 withReferenceKey:v5 error:&v18];
  objc_storeStrong(v20, v18);
  v19 = v13;
  if (v13)
  {
    v24 = MEMORY[0x1E69E5928](v19);
    v17 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v9 = type;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_193225000, log, v9, "Failed to generate signatures, bailing!", v14, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong((*(a1[5] + 8) + 40), v20[0]);
    *v21 = 1;
    v24 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v6 = v24;

  return v6;
}

- (void)_baaSignaturesForData:(id)data completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  if (DeviceCheckInternalLibraryCore(0))
  {
    v4 = objc_alloc_init(getDCBAASigningControllerClass());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v16 = v4;
  if (v4)
  {
    v8 = v16;
    v7 = location[0];
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __56__AKAttestationSigner__baaSignaturesForData_completion___block_invoke;
    v14 = &unk_1E73D4CC0;
    v15 = MEMORY[0x1E69E5928](v17);
    [v8 baaSignaturesForData:v7 completion:&v10];
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v5 = v17;
    v6 = _AKAttestationErrorCreate(-10000);
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __56__AKAttestationSigner__baaSignaturesForData_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_baaSignatureForData:(id)data completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  if (DeviceCheckInternalLibraryCore(0))
  {
    v4 = objc_alloc_init(getDCBAASigningControllerClass());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v16 = v4;
  if (v4)
  {
    v8 = v16;
    v7 = location[0];
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __55__AKAttestationSigner__baaSignatureForData_completion___block_invoke;
    v14 = &unk_1E73D4CE8;
    v15 = MEMORY[0x1E69E5928](v17);
    [v8 baaSignatureForData:v7 completion:&v10];
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v5 = v17;
    v6 = _AKAttestationErrorCreate(-10000);
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __55__AKAttestationSigner__baaSignatureForData_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_signatureForData:(id)data withReferenceKey:(__SecKey *)key error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  keyCopy = key;
  errorCopy = error;
  error = 0;
  v22 = SecKeyCreateSignature(key, *MEMORY[0x1E697B128], location[0], &error);
  errorCopy2 = error;
  if (v22)
  {
    v27 = MEMORY[0x1E69E5928](v22);
    v20 = 1;
  }

  else
  {
    if (errorCopy2)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v28, errorCopy2);
        _os_log_error_impl(&dword_193225000, oslog, type, "Failed to BAA, failed to generate signature: %@", v28, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (errorCopy)
      {
        v12 = _AKAttestationErrorCreateWithUnderlyingError(-10001, errorCopy2);
        v5 = v12;
        *errorCopy = v12;
      }
    }

    else
    {
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v10 = v17;
        v11 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_error_impl(&dword_193225000, v10, v11, "Failed to BAA, failed to generate signature: unknown error!", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      if (errorCopy)
      {
        v9 = _AKAttestationErrorCreate(-10001);
        v6 = v9;
        *errorCopy = v9;
      }
    }

    v27 = 0;
    v20 = 1;
  }

  objc_storeStrong(&errorCopy2, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v7 = v27;

  return v7;
}

- (id)_attestationWithCertificates:(id)certificates error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, certificates);
  errorCopy = error;
  v21 = [location[0] aaf_map:&__block_literal_global_37];
  v26 = @"certs";
  v27[0] = v21;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v19 = 0;
  v17 = 0;
  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v20 options:0 error:&v17];
  objc_storeStrong(&v19, v17);
  v18 = v10;
  if (!v10)
  {
    goto LABEL_8;
  }

  v16 = [v18 mutableCopy];
  v15 = 0;
  obj = 0;
  [v16 compressUsingAlgorithm:3 error:&obj];
  objc_storeStrong(&v15, obj);
  if (v15)
  {
    if (errorCopy)
    {
      v9 = _AKAttestationErrorCreateWithUnderlyingError(-10001, v15);
      v4 = v9;
      *errorCopy = v9;
    }

    v13 = 0;
  }

  else
  {
    v24 = [v16 copy];
    v13 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  if (!v13)
  {
LABEL_8:
    if (v19)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v25, v19);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to BAA, failed to serialize: %@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (errorCopy)
      {
        v8 = _AKAttestationErrorCreateWithUnderlyingError(-10001, v19);
        v5 = v8;
        *errorCopy = v8;
      }
    }

    v24 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v24;

  return v6;
}

id __58__AKAttestationSigner__attestationWithCertificates_error___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = SecCertificateCopyData(location[0]);
  v4 = [v5[0] base64EncodedStringWithOptions:0];
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end