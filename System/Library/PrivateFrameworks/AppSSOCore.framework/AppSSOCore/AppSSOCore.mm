BOOL appSSO_willHandle(uint64_t a1, uint64_t a2)
{
  if (appSSO_init_onceToken != -1)
  {
    appSSO_init_cold_1();
  }

  if (_useAppSSO != 1)
  {
    return 0;
  }

  return [SOAuthorizationCore _canPerformAuthorizationWithURL:a1 responseCode:a2 callerBundleIdentifier:0 useInternalExtensions:0];
}

void __appSSO_init_block_invoke()
{
  v0 = +[SOUtils currentProcessName];
  if ([&unk_1F49EB680 containsObject:v0])
  {
    v1 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __appSSO_init_block_invoke_cold_6();
    }

LABEL_10:

    _useAppSSO = 0;
    return;
  }

  if (!+[SOUtils isAppSSOServiceAvailable])
  {
    v1 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __appSSO_init_block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  if ([&unk_1F49EB668 containsObject:v0])
  {
    v2 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __appSSO_init_block_invoke_cold_5();
    }
  }

  else
  {
    v3 = +[SOUtils currentProcessContainerPath];

    if (!v3)
    {
      v1 = SO_LOG_SOClientImpl();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        __appSSO_init_block_invoke_cold_4();
      }

      goto LABEL_10;
    }

    if (+[SOUtils currentProcessIsSandboxed](SOUtils, "currentProcessIsSandboxed") && !+[SOUtils sandboxAllowsXPC:](SOUtils, "sandboxAllowsXPC:", [@"com.apple.AppSSO.service-xpc" UTF8String]))
    {
      v1 = SO_LOG_SOClientImpl();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        __appSSO_init_block_invoke_cold_2();
      }

      goto LABEL_10;
    }

    v2 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __appSSO_init_block_invoke_cold_3();
    }
  }

  _useAppSSO = 1;
  v4 = dispatch_queue_create("com.apple.AppSSO.client-delegate-queue", MEMORY[0x1E69E96A8]);
  v5 = _delegateQueue;
  _delegateQueue = v4;

  v6 = [SOErrorHelper silentInternalErrorWithMessage:@"unexpected response from the extension - check type of the extension (redirect/credential)"];
  v7 = _unexpectedResponseError;
  _unexpectedResponseError = v6;

  v8 = [SOErrorHelper silentInternalErrorWithMessage:@"AppSSO not permitted"];
  v9 = _noAppSSOError;
  _noAppSSOError = v8;

  v10 = objc_alloc_init(SOAuthorizationPool);
  v11 = _authorizationPool;
  _authorizationPool = v10;
}

id SO_LOG_SOClientImpl()
{
  if (SO_LOG_SOClientImpl_once != -1)
  {
    SO_LOG_SOClientImpl_cold_1();
  }

  v1 = SO_LOG_SOClientImpl_log;

  return v1;
}

id SO_LOG_SOUtils()
{
  if (SO_LOG_SOUtils_once != -1)
  {
    SO_LOG_SOUtils_cold_1();
  }

  v1 = SO_LOG_SOUtils_log;

  return v1;
}

void sub_1CA239D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SO_LOG_SOConfigurationClient()
{
  if (SO_LOG_SOConfigurationClient_once != -1)
  {
    SO_LOG_SOConfigurationClient_cold_1();
  }

  v1 = SO_LOG_SOConfigurationClient_log;

  return v1;
}

id SO_LOG_SOConfiguration()
{
  if (SO_LOG_SOConfiguration_once != -1)
  {
    SO_LOG_SOConfiguration_cold_1();
  }

  v1 = SO_LOG_SOConfiguration_log;

  return v1;
}

id SO_LOG_SOClient()
{
  if (SO_LOG_SOClient_once != -1)
  {
    SO_LOG_SOClient_cold_1();
  }

  v1 = SO_LOG_SOClient_log;

  return v1;
}

void sub_1CA23A5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SO_LOG_SOServiceConnection()
{
  if (SO_LOG_SOServiceConnection_once != -1)
  {
    SO_LOG_SOServiceConnection_cold_1();
  }

  v1 = SO_LOG_SOServiceConnection_log;

  return v1;
}

id SO_LOG_SOConfigurationVersion()
{
  if (SO_LOG_SOConfigurationVersion_once != -1)
  {
    SO_LOG_SOConfigurationVersion_cold_1();
  }

  v1 = SO_LOG_SOConfigurationVersion_log;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SO_LOG_SOErrorHelper()
{
  if (SO_LOG_SOErrorHelper_once != -1)
  {
    SO_LOG_SOErrorHelper_cold_1();
  }

  v1 = SO_LOG_SOErrorHelper_log;

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t _isStaticCodeSignedBy(const __SecCode *a1, uint64_t a2, uint64_t a3)
{
  errors = 0;
  requirement = 0;
  if (a2 > 7)
  {
    if (a2 == 8)
    {
      v5 = @"anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.1.7] exists";
      goto LABEL_15;
    }

    if (a2 != 16)
    {
      if (a2 == 32)
      {
        v5 = @"anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.1.12] exists";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v5 = @"anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.1.4] exists";
  }

  else
  {
    if (a2 == 1)
    {
      v5 = @"anchor apple";
      goto LABEL_15;
    }

    if (a2 != 2)
    {
      if (a2 == 4)
      {
        v5 = @"anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.2.6] exists and certificate leaf[field.1.2.840.113635.100.6.1.13] exists";
        goto LABEL_15;
      }

LABEL_12:
      v5 = 0;
      goto LABEL_15;
    }

    v5 = @"anchor apple generic and certificate leaf[field.1.2.840.113635.100.6.1.9] exists";
  }

LABEL_15:
  if (SecRequirementCreateWithStringAndErrors(v5, 0, &errors, &requirement))
  {
    if (!a3)
    {
      goto LABEL_22;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRequirementCreateWithStringAndErros(%@) failed with %@", v5, errors];
    goto LABEL_18;
  }

  v7 = SecStaticCodeCheckValidityWithErrors(a1, 0, requirement, &errors);
  if (v7)
  {
    if (v7 == -67050)
    {
      goto LABEL_21;
    }

    if (a3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"SecStaticCodeCheckValidityWithErrors() failed with %@", errors, v9];
      v6 = LABEL_18:;
      *a3 = [SOErrorHelper internalErrorWithMessage:v6];

LABEL_21:
      a3 = 0;
    }
  }

  else
  {
    a3 = 1;
  }

LABEL_22:
  if (requirement)
  {
    CFRelease(requirement);
  }

  if (errors)
  {
    CFRelease(errors);
  }

  return a3;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id SO_LOG_SOFullProfile()
{
  if (SO_LOG_SOFullProfile_once != -1)
  {
    SO_LOG_SOFullProfile_cold_1();
  }

  v1 = SO_LOG_SOFullProfile_log;

  return v1;
}

id SO_LOG_SOAuthorizationCore()
{
  if (SO_LOG_SOAuthorizationCore_once != -1)
  {
    SO_LOG_SOAuthorizationCore_cold_1();
  }

  v1 = SO_LOG_SOAuthorizationCore_log;

  return v1;
}

void sub_1CA246DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA247074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void appSSO_init()
{
  if (appSSO_init_onceToken != -1)
  {
    appSSO_init_cold_1();
  }
}

BOOL appSSO_willPerform(uint64_t a1, uint64_t a2)
{
  if (appSSO_init_onceToken != -1)
  {
    appSSO_init_cold_1();
  }

  if (_useAppSSO != 1)
  {
    return 0;
  }

  return [SOAuthorizationCore _canPerformAuthorizationWithURL:a1 responseCode:a2 callerBundleIdentifier:0 useInternalExtensions:0];
}

void appSSO_performResponse(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = v11;
  if (_useAppSSO)
  {
    v13 = objc_alloc_init(SOAuthorizationParametersCore);
    [(SOAuthorizationParametersCore *)v13 setUrl:a1];
    [(SOAuthorizationParametersCore *)v13 setHttpHeaders:a2];
    [(SOAuthorizationParametersCore *)v13 setHttpBody:a3];
    [(SOAuthorizationParametersCore *)v13 setAuditTokenData:a5];
    [(SOAuthorizationParametersCore *)v13 setUseInternalExtensions:0];
    [(SOAuthorizationParametersCore *)v13 setResponseCode:0];
    [(SOAuthorizationParametersCore *)v13 setCfNetworkInterception:1];
    v14 = objc_alloc_init(SOAuthorizationCore);
    v15 = objc_alloc_init(SOAuthorizationResultClientImpl);
    [(SOAuthorizationResultClientImpl *)v15 setAuthorizationHandleResponseCompletion:v12];
    if (a4)
    {
      v18 = @"noUserInterface";
      v19[0] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [(SOAuthorizationCore *)v14 setAuthorizationOptions:v16];
    }

    else
    {
      [(SOAuthorizationCore *)v14 setAuthorizationOptions:MEMORY[0x1E695E0F8]];
    }

    [(SOAuthorizationCore *)v14 setEnableUserInteraction:(a4 & 2) == 0];
    [(SOAuthorizationCore *)v14 setDelegate:v15];
    [(SOAuthorizationCore *)v14 setDelegateDispatchQueue:_delegateQueue];
    [_authorizationPool addAuthorization:v14 delegate:v15];
    [(SOAuthorizationCore *)v14 beginAuthorizationWithParameters:v13];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0, _noAppSSOError);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void appSSO_performResponseCredential(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = v9;
  if (_useAppSSO)
  {
    v11 = objc_alloc_init(SOAuthorizationParametersCore);
    [(SOAuthorizationParametersCore *)v11 setUrl:a1];
    [(SOAuthorizationParametersCore *)v11 setHttpHeaders:a2];
    v12 = [MEMORY[0x1E695DEF0] data];
    [(SOAuthorizationParametersCore *)v11 setHttpBody:v12];

    [(SOAuthorizationParametersCore *)v11 setAuditTokenData:a4];
    [(SOAuthorizationParametersCore *)v11 setUseInternalExtensions:0];
    [(SOAuthorizationParametersCore *)v11 setResponseCode:401];
    [(SOAuthorizationParametersCore *)v11 setCfNetworkInterception:1];
    v13 = objc_alloc_init(SOAuthorizationCore);
    v14 = objc_alloc_init(SOAuthorizationResultClientImpl);
    [(SOAuthorizationResultClientImpl *)v14 setAuthorizationHandleCredentialCompletion:v10];
    if (a3)
    {
      v17 = @"noUserInterface";
      v18[0] = MEMORY[0x1E695E118];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(SOAuthorizationCore *)v13 setAuthorizationOptions:v15];
    }

    else
    {
      [(SOAuthorizationCore *)v13 setAuthorizationOptions:MEMORY[0x1E695E0F8]];
    }

    [(SOAuthorizationCore *)v13 setEnableUserInteraction:(a3 & 2) == 0];
    [(SOAuthorizationCore *)v13 setDelegate:v14];
    [(SOAuthorizationCore *)v13 setDelegateDispatchQueue:_delegateQueue];
    [_authorizationPool addAuthorization:v13 delegate:v14];
    [(SOAuthorizationCore *)v13 beginAuthorizationWithParameters:v11];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, _noAppSSOError);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void appSSO_handleResponse(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = v11;
  if (_useAppSSO)
  {
    v13 = objc_alloc_init(SOAuthorizationParametersCore);
    [(SOAuthorizationParametersCore *)v13 setUrl:a1];
    [(SOAuthorizationParametersCore *)v13 setHttpHeaders:a2];
    [(SOAuthorizationParametersCore *)v13 setHttpBody:a3];
    [(SOAuthorizationParametersCore *)v13 setAuditTokenData:a5];
    [(SOAuthorizationParametersCore *)v13 setUseInternalExtensions:0];
    [(SOAuthorizationParametersCore *)v13 setResponseCode:0];
    [(SOAuthorizationParametersCore *)v13 setCfNetworkInterception:1];
    v14 = objc_alloc_init(SOAuthorizationCore);
    v15 = objc_alloc_init(SOAuthorizationResultClientImpl);
    [(SOAuthorizationResultClientImpl *)v15 setAuthorizationHandleResponseCompletion:v12];
    if (a4)
    {
      v18 = @"noUserInterface";
      v19[0] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [(SOAuthorizationCore *)v14 setAuthorizationOptions:v16];
    }

    else
    {
      [(SOAuthorizationCore *)v14 setAuthorizationOptions:MEMORY[0x1E695E0F8]];
    }

    [(SOAuthorizationCore *)v14 setEnableUserInteraction:(a4 & 2) == 0];
    [(SOAuthorizationCore *)v14 setDelegate:v15];
    [(SOAuthorizationCore *)v14 setDelegateDispatchQueue:_delegateQueue];
    [_authorizationPool addAuthorization:v14 delegate:v15];
    [(SOAuthorizationCore *)v14 beginAuthorizationWithParameters:v13];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0, _noAppSSOError);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void appSSO_handleResponseImpersonationCredential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void *a8)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v15 = a8;
  v16 = v15;
  if (_useAppSSO)
  {
    if (a4 < 3)
    {
      v19 = objc_alloc_init(SOAuthorizationParametersCore);
      [(SOAuthorizationParametersCore *)v19 setUrl:a1];
      [(SOAuthorizationParametersCore *)v19 setHttpHeaders:a2];
      v20 = [MEMORY[0x1E695DEF0] data];
      [(SOAuthorizationParametersCore *)v19 setHttpBody:v20];

      [(SOAuthorizationParametersCore *)v19 setAuditTokenData:a6];
      [(SOAuthorizationParametersCore *)v19 setUseInternalExtensions:0];
      [(SOAuthorizationParametersCore *)v19 setResponseCode:a3];
      [(SOAuthorizationParametersCore *)v19 setCfNetworkInterception:1];
      [(SOAuthorizationParametersCore *)v19 setImpersonationBundleIdentifier:a7];
      v21 = objc_alloc_init(SOAuthorizationCore);
      v22 = objc_alloc_init(SOAuthorizationResultClientImpl);
      [(SOAuthorizationResultClientImpl *)v22 setAuthorizationHandleCredentialCompletion:v16];
      if (a5)
      {
        v25 = @"noUserInterface";
        v26[0] = MEMORY[0x1E695E118];
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        [(SOAuthorizationCore *)v21 setAuthorizationOptions:v23];
      }

      else
      {
        [(SOAuthorizationCore *)v21 setAuthorizationOptions:MEMORY[0x1E695E0F8]];
      }

      [(SOAuthorizationCore *)v21 setEnableUserInteraction:(a5 & 2) == 0];
      [(SOAuthorizationCore *)v21 setDelegate:v22];
      [(SOAuthorizationCore *)v21 setDelegateDispatchQueue:_delegateQueue];
      [_authorizationPool addAuthorization:v21 delegate:v22];
      [(SOAuthorizationCore *)v21 beginAuthorizationWithParameters:v19];
    }

    else
    {
      v17 = SO_LOG_SOClientImpl();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        appSSO_handleResponseImpersonationCredential_cold_1(v17);
      }

      if (v16)
      {
        v18 = [SOErrorHelper errorWithCode:-1];
LABEL_9:
        (v16)[2](v16, 0, v18);
      }
    }
  }

  else if (v15)
  {
    v18 = _noAppSSOError;
    goto LABEL_9;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void appSSO_handleResponseImpersonationCredential_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = 3;
  _os_log_error_impl(&dword_1CA238000, log, OS_LOG_TYPE_ERROR, "Authorization retry limit (%d) exceeded.", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}