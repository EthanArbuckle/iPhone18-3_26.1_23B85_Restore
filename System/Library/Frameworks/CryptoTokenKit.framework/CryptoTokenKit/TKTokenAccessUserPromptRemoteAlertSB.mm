@interface TKTokenAccessUserPromptRemoteAlertSB
+ (BOOL)isAvailable;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (int64_t)promptUserToEvaluateRequest:(id)a3 error:(id *)a4;
- (void)registerTokenAccessRequestCorrelationID:(id)a3 access:(int64_t)a4 reply:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation TKTokenAccessUserPromptRemoteAlertSB

+ (BOOL)isAvailable
{
  if (getBSAuditTokenClass() && getBSProcessHandleClass())
  {
    if (getSBSRemoteAlertConfigurationContextClass() && getSBSRemoteAlertDefinitionClass() && getSBSRemoteAlertHandleClass() && getSBSRemoteAlertPresentationTargetClass() && getSBSRemoteAlertActivationContextClass())
    {
      return 1;
    }

    v3 = TK_LOG_user_prompt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      +[(TKTokenAccessUserPromptRemoteAlertSB *)v3];
    }
  }

  else
  {
    v3 = TK_LOG_user_prompt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      +[(TKTokenAccessUserPromptRemoteAlertSB *)v3];
    }
  }

  return 0;
}

- (int64_t)promptUserToEvaluateRequest:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v44 = a3;
  self->_grantedAccess = 0;
  objc_storeStrong(&self->_accessRequest, a3);
  if (self->_remoteAlertHandle)
  {
    [TKTokenAccessUserPromptRemoteAlertSB promptUserToEvaluateRequest:a2 error:self];
  }

  v7 = [MEMORY[0x1E696B0D8] anonymousListener];
  [v7 setDelegate:self];
  [v7 resume];
  v43 = objc_alloc_init(getSBSRemoteAlertConfigurationContextClass());
  v8 = [v7 endpoint];
  v9 = [v8 _endpoint];
  [v43 setXpcEndpoint:v9];

  v39 = [objc_alloc(getSBSRemoteAlertDefinitionClass()) initWithServiceName:@"com.apple.ctkui" viewControllerClassName:@"TKUITokenAccessPromptVC"];
  v10 = [getSBSRemoteAlertHandleClass() newHandleWithDefinition:v39 configurationContext:v43];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v10;

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self];
  BSAuditTokenClass = getBSAuditTokenClass();
  v13 = [v44 clientConnection];
  v14 = v13;
  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    *location = 0u;
    v46 = 0u;
  }

  v42 = [BSAuditTokenClass tokenFromAuditToken:location];

  v41 = [getBSProcessHandleClass() processHandleForAuditToken:v42];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v15 = getSBSRemoteAlertPresentationTargetPredicateClass_softClass;
  v51 = getSBSRemoteAlertPresentationTargetPredicateClass_softClass;
  if (!getSBSRemoteAlertPresentationTargetPredicateClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    *&v46 = __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke;
    *(&v46 + 1) = &unk_1E86B6FC0;
    v47 = &v48;
    SpringBoardServicesLibraryCore();
    Class = objc_getClass("SBSRemoteAlertPresentationTargetPredicate");
    *(v47[1] + 24) = Class;
    getSBSRemoteAlertPresentationTargetPredicateClass_softClass = *(v47[1] + 24);
    v15 = v49[3];
  }

  v17 = v15;
  _Block_object_dispose(&v48, 8);
  v18 = [v15 predicateForProcess:v41];
  v19 = [objc_alloc(getSBSRemoteAlertPresentationTargetClass()) initWithTargetPredicate:v18];
  [v19 setShouldDismissOnUILock:1];
  v20 = objc_alloc_init(getSBSRemoteAlertActivationContextClass());
  [v20 setPresentationTarget:v19];
  v21 = [[TKTokenAccessUserPromptInfo alloc] initWithTokenAccessRequest:v44];
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
  v54 = @"kTKTokenAccessUserPromptInfo";
  v55[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  [v20 setUserInfo:v23];

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v20];
  v24 = dispatch_semaphore_create(0);
  remoteAlertSemaphore = self->_remoteAlertSemaphore;
  self->_remoteAlertSemaphore = v24;

  objc_initWeak(location, self);
  v26 = self->_remoteAlertSemaphore;
  v27 = dispatch_time(0, 600000000000);
  v28 = dispatch_semaphore_wait(v26, v27);
  if (v28 && (WeakRetained = objc_loadWeakRetained(location), v30 = WeakRetained == 0, WeakRetained, v30))
  {
    v36 = 0;
  }

  else
  {
    if (a4)
    {
      grantedAccess = self->_grantedAccess;
      if (grantedAccess != 1)
      {
        if (v28)
        {
          v32 = @"Access request timed out";
        }

        else
        {
          v32 = @"Access request was cancelled";
        }

        if (grantedAccess == 2)
        {
          v33 = @"User denied access";
        }

        else
        {
          v33 = v32;
        }

        v34 = v33;
        v52 = *MEMORY[0x1E696A278];
        v53 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v35];
      }
    }

    [v7 suspend];
    [v7 invalidate];
    v36 = self->_grantedAccess;
  }

  objc_destroyWeak(location);

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

__CFString *__74__TKTokenAccessUserPromptRemoteAlertSB_promptUserToEvaluateRequest_error___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) == 2)
  {
    return @"User denied access";
  }

  if (*(a1 + 40))
  {
    return @"Access request timed out";
  }

  return @"Access request was cancelled";
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1F5A8D070];
  [v6 setExportedInterface:v7];

  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    v5 = remoteAlertHandle == a3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [(TKTokenAccessUserPromptRemoteAlertSB *)a2 remoteAlertHandleDidActivate:?];
  }

  self->_grantedAccess = 0;
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  p_remoteAlertHandle = &self->_remoteAlertHandle;
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    v7 = remoteAlertHandle == a3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
  }

  else
  {
    [TKTokenAccessUserPromptRemoteAlertSB remoteAlertHandleDidDeactivate:];
    remoteAlertHandle = v8;
  }

  [(SBSRemoteAlertHandle *)remoteAlertHandle invalidate];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    v6 = remoteAlertHandle == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [TKTokenAccessUserPromptRemoteAlertSB remoteAlertHandle:didInvalidateWithError:];
    remoteAlertHandle = v8;
  }

  self->_remoteAlertHandle = 0;

  remoteAlertSemaphore = self->_remoteAlertSemaphore;

  dispatch_semaphore_signal(remoteAlertSemaphore);
}

- (void)registerTokenAccessRequestCorrelationID:(id)a3 access:(int64_t)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(TKTokenAccessRequest *)self->_accessRequest correlationID];
  v12 = [v9 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    [TKTokenAccessUserPromptRemoteAlertSB registerTokenAccessRequestCorrelationID:a2 access:self reply:?];
  }

  v13 = [(TKTokenAccessRequest *)self->_accessRequest correlationID];
  v14 = [v9 isEqual:v13];

  if (v14)
  {
    self->_grantedAccess = a4;
    v15 = [[TKTokenAccessUserPromptInfo alloc] initWithTokenAccessRequest:self->_accessRequest];
    v16 = TK_LOG_user_prompt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessUserPromptRemoteAlertSB registerTokenAccessRequestCorrelationID:v15 access:&self->_grantedAccess reply:v16];
    }
  }

  v10[2](v10);
  dispatch_semaphore_signal(self->_remoteAlertSemaphore);
}

- (void)promptUserToEvaluateRequest:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:82 description:@"Concurrent remote alerts are not yet supported"];
}

- (void)remoteAlertHandleDidActivate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:156 description:@"Received message for unexpected alert handle"];
}

- (void)remoteAlertHandleDidDeactivate:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:162 description:@"Received message for unexpected alert handle"];

  *v0 = *v1;
}

- (void)remoteAlertHandle:didInvalidateWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:168 description:@"Received message for unexpected alert handle"];

  *v0 = *v1;
}

- (void)registerTokenAccessRequestCorrelationID:(uint64_t)a1 access:(uint64_t)a2 reply:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:179 description:@"Received user response for an unexpected request"];
}

- (void)registerTokenAccessRequestCorrelationID:(void *)a1 access:(uint64_t *)a2 reply:(NSObject *)a3 .cold.2(void *a1, uint64_t *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a1 clientDisplayName];
  v7 = [a1 providerDisplayName];
  v8 = v7;
  v9 = @"unknown";
  v10 = *a2;
  if (*a2 == 2)
  {
    v9 = @"denied";
  }

  v12 = 138412802;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  if (v10 == 1)
  {
    v9 = @"granted";
  }

  v16 = 2112;
  v17 = v9;
  _os_log_debug_impl(&dword_1DF413000, a3, OS_LOG_TYPE_DEBUG, "Request to allow '%@' access to token provided by '%@' was '%@'", &v12, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

@end