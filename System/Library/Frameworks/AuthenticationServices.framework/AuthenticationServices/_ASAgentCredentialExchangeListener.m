@interface _ASAgentCredentialExchangeListener
- (BOOL)_atLeastOneAppAvailableForImportForConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_ASAgentCredentialExchangeListener)init;
- (void)_highestCommonVersionNumber:(NSString *)a3 credentialProviderBundleIdentifier:(NSString *)a4 importerBundleIdentifier:(NSString *)a5 completionHandler:(id)a6;
- (void)_requestExportWithConnection:(NSXPCConnection *)a3 credentialProviderBundleIdentifier:(NSString *)a4 windowSceneIdentifier:(NSString *)a5 completionHandler:(id)a6;
- (void)_setSelectedImporterBundleIdentifierForCurrentOperation:(id)a3;
- (void)_setUpExporterConnection:(id)a3 forOperation:(id)a4;
- (void)_setUpImporterConnection:(id)a3 forOperation:(id)a4;
- (void)_showErrorAlert:(unint64_t)a3;
- (void)cancelCurrentOperation;
- (void)continueExportWithCredentials:(id)a3 completionHandler:(id)a4;
- (void)getExportedCredentialData:(id)a3;
- (void)importCredentialsWithToken:(id)a3 completionHandler:(id)a4;
- (void)requestExportForCredentialProvider:(id)a3 windowSceneIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setTokenForImport:(id)a3;
@end

@implementation _ASAgentCredentialExchangeListener

- (_ASAgentCredentialExchangeListener)init
{
  v7.receiver = self;
  v7.super_class = _ASAgentCredentialExchangeListener;
  v2 = [(_ASAgentCredentialExchangeListener *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent.CredentialExchange"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v2->_internalLock._os_unfair_lock_opaque = 0;
    [(NSXPCListener *)v2->_listener resume];
    v5 = v2;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v34 = 0u;
  v35 = 0u;
  if (v7)
  {
    [v7 auditToken];
  }

  v9 = *MEMORY[0x1E69C8E68];
  *buf = v34;
  v37 = v35;
  if (WBSAuditTokenHasEntitlement() & 1) != 0 || (v10 = *MEMORY[0x1E69C8E78], *buf = v34, v37 = v35, (WBSAuditTokenHasEntitlement()))
  {
    os_unfair_lock_lock(&self->_internalLock);
    v11 = self->_currentOperation;
    if (v11)
    {
      *buf = v34;
      v37 = v35;
      v12 = WBSApplicationIdentifierFromAuditToken();
      v33 = 0;
      v13 = [v12 safari_bundleIdentifierFromApplicationIdentifier:&v33];
      v14 = v33;
      if ([v13 length])
      {
        v15 = [(_ASAgentCredentialExchangeOperation *)v11 selectedImporterBundleIdentifier];
        v16 = [v13 isEqualToString:v15];

        if (v16)
        {
          [(_ASAgentCredentialExchangeListener *)self _setUpImporterConnection:v8 forOperation:v11];

LABEL_12:
          [v8 resume];
          v20 = 1;
LABEL_22:

          os_unfair_lock_unlock(&self->_internalLock);
          goto LABEL_23;
        }

        v24 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [(_ASAgentCredentialExchangeListener *)v12 listener:v24 shouldAcceptNewConnection:v25, v26, v27, v28, v29, v30];
        }
      }

      else
      {
        v22 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = [v14 safari_privacyPreservingDescription];
          [(_ASAgentCredentialExchangeListener *)v12 listener:v23 shouldAcceptNewConnection:buf, v22];
        }
      }

      v20 = 0;
      goto LABEL_22;
    }

    v17 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v17, OS_LOG_TYPE_DEFAULT, "Starting new credential exchange operation.", buf, 2u);
    }

    v18 = objc_alloc_init(_ASAgentCredentialExchangeOperation);
    currentOperation = self->_currentOperation;
    self->_currentOperation = v18;

    [(_ASAgentCredentialExchangeListener *)self _setUpExporterConnection:v8 forOperation:self->_currentOperation];
    goto LABEL_12;
  }

  v21 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [_ASAgentCredentialExchangeListener listener:shouldAcceptNewConnection:];
  }

  v20 = 0;
LABEL_23:

  v31 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)_setUpExporterConnection:(id)a3 forOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASAgentCredentialExchangeExporterInterface();
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:self];
  [v7 setExporterConnection:v6];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke;
  v9[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v10, &location);
  [v6 setInvalidationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_setUpImporterConnection:(id)a3 forOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASAgentCredentialExchangeImporterInterface();
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:self];
  [v7 setImporterConnection:v6];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___ASAgentCredentialExchangeListener__setUpImporterConnection_forOperation___block_invoke;
  v9[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v10, &location);
  [v6 setInvalidationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)requestExportForCredentialProvider:(id)a3 windowSceneIdentifier:(id)a4 completionHandler:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v12 = currentOperation;
    v13 = [(_ASAgentCredentialExchangeOperation *)v12 exporterConnection];
    if ([MEMORY[0x1E69C8880] isCredentialExchangeEnabled])
    {
      v14 = os_transaction_create();
      [(_ASAgentCredentialExchangeOperation *)v12 setTransaction:v14];

      [(_ASAgentCredentialExchangeListener *)self _requestExportWithConnection:v13 credentialProviderBundleIdentifier:v8 windowSceneIdentifier:v9 completionHandler:v10];
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:];
      }

      v25 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A588];
      v30 = @"Developer mode must be enabled for this API. You can find the toggle for this in Settings › Developer in the Authentication Services Testing section.";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v26];
      v10[2](v10, 0, v27);

      [(_ASAgentCredentialExchangeListener *)self _showErrorAlert:0];
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v15 requestExportForCredentialProvider:v16 windowSceneIdentifier:v17 completionHandler:v18, v19, v20, v21, v22];
    }

    v23 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A588];
    v32[0] = @"No export in progress.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v13 = [v23 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v12];
    v10[2](v10, 0, v13);
  }

  os_unfair_lock_unlock(&self->_internalLock);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)continueExportWithCredentials:(id)a3 completionHandler:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v9 = currentOperation;
    if ([MEMORY[0x1E69C8880] isCredentialExchangeEnabled])
    {
      v10 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1C8D000, v10, OS_LOG_TYPE_INFO, "Received export data.", buf, 2u);
      }

      v11 = [(_ASAgentCredentialExchangeOperation *)v9 exportDataFetchCompletionHandler];

      if (v11)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1C8D000, v12, OS_LOG_TYPE_INFO, "Returning export data to view service.", buf, 2u);
        }

        v13 = [(_ASAgentCredentialExchangeOperation *)v9 exportDataFetchCompletionHandler];
        (v13)[2](v13, v6);
      }

      [(_ASAgentCredentialExchangeOperation *)v9 setExportedCredentialData:v6];
      v14 = MEMORY[0x1E695DFF0];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke;
      v31[3] = &unk_1E7AF8CE8;
      v31[4] = self;
      v32 = v9;
      v15 = [v14 scheduledTimerWithTimeInterval:0 repeats:v31 block:300.0];
      v7[2](v7, 0);
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:];
      }

      v27 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A588];
      v35 = @"Developer mode must be enabled for this API. You can find the toggle for this in Settings › Developer in the Authentication Services Testing section.";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v29 = [v27 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v28];
      (v7)[2](v7, v29);

      [(_ASAgentCredentialExchangeListener *)self _showErrorAlert:0];
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v16 continueExportWithCredentials:v17 completionHandler:v18, v19, v20, v21, v22, v23];
    }

    v24 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A588];
    v37[0] = @"No export in progress.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v25 = [v24 errorWithDomain:*MEMORY[0x1E698DF70] code:19 userInfo:v9];
    (v7)[2](v7, v25);
  }

  os_unfair_lock_unlock(&self->_internalLock);
  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_atLeastOneAppAvailableForImportForConnection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v5 = WBSApplicationIdentifierFromAuditToken();
  v11 = 0;
  v6 = [v5 safari_bundleIdentifierFromApplicationIdentifier:&v11];
  if (v6)
  {
    v7 = [MEMORY[0x1E69C8DE0] sharedManager];
    v8 = [v7 atLeastOneAvailableExtensionSupportsCredentialExchange:v6];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_ASAgentCredentialExchangeListener _atLeastOneAppAvailableForImportForConnection:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setTokenForImport:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  v7 = *MEMORY[0x1E698DF78];
  if (WBSAuditTokenHasEntitlement())
  {
    os_unfair_lock_lock(&self->_internalLock);
    if (self->_currentOperation)
    {
      v8 = [v4 copy];
      [(_ASAgentCredentialExchangeOperation *)self->_currentOperation setImporterToken:v8];
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(_ASAgentCredentialExchangeListener *)v17 setTokenForImport:v18, v19, v20, v21, v22, v23, v24];
      }
    }

    os_unfair_lock_unlock(&self->_internalLock);
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v9 setTokenForImport:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

- (void)getExportedCredentialData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v7 = *MEMORY[0x1E698DF78];
  if (WBSAuditTokenHasEntitlement())
  {
    os_unfair_lock_lock(&self->_internalLock);
    currentOperation = self->_currentOperation;
    if (currentOperation)
    {
      v9 = currentOperation;
      v10 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_1B1C8D000, v10, OS_LOG_TYPE_INFO, "Reading export data.", &v31, 2u);
      }

      v11 = [(_ASAgentCredentialExchangeOperation *)v9 exportedCredentialData:v31];

      if (v11)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_1B1C8D000, v12, OS_LOG_TYPE_INFO, "Export data is already available.", &v31, 2u);
        }

        v13 = [(_ASAgentCredentialExchangeOperation *)v9 exportedCredentialData];
        v4[2](v4, v13);
      }

      else
      {
        v30 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_1B1C8D000, v30, OS_LOG_TYPE_INFO, "Export data is not yet available.", &v31, 2u);
        }

        [(_ASAgentCredentialExchangeOperation *)v9 setExportDataFetchCompletionHandler:v4];
      }
    }

    else
    {
      v22 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(_ASAgentCredentialExchangeListener *)v22 getExportedCredentialData:v23, v24, v25, v26, v27, v28, v29];
      }

      v4[2](v4, 0);
    }

    os_unfair_lock_unlock(&self->_internalLock);
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v14 getExportedCredentialData:v15, v16, v17, v18, v19, v20, v21];
    }

    v4[2](v4, 0);
  }
}

- (void)importCredentialsWithToken:(id)a3 completionHandler:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v9 = currentOperation;
    if ([MEMORY[0x1E69C8880] isCredentialExchangeEnabled])
    {
      v10 = [(_ASAgentCredentialExchangeOperation *)v9 importerToken];
      v11 = [v6 isEqual:v10];

      if (v11)
      {
        v12 = [(_ASAgentCredentialExchangeOperation *)v9 exportedCredentialData];

        if (v12)
        {
          v13 = [(_ASAgentCredentialExchangeOperation *)v9 exportedCredentialData];
          v7[2](v7, v13, 0);

          v14 = self->_currentOperation;
          self->_currentOperation = 0;
        }

        else
        {
          v33 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [_ASAgentCredentialExchangeListener importCredentialsWithToken:completionHandler:];
          }

          v34 = MEMORY[0x1E696ABC0];
          v38 = *MEMORY[0x1E696A588];
          v39 = @"Exported credential data not found.";
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v36 = [v34 errorWithDomain:*MEMORY[0x1E698DF70] code:1 userInfo:v35];
          (v7)[2](v7, 0, v36);
        }
      }

      else
      {
        v29 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [_ASAgentCredentialExchangeListener importCredentialsWithToken:completionHandler:];
        }

        v30 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A588];
        v41 = @"The import request came from a client that did not match the one selected by the user for import.";
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v32 = [v30 errorWithDomain:*MEMORY[0x1E698DF70] code:18 userInfo:v31];
        (v7)[2](v7, 0, v32);
      }
    }

    else
    {
      v25 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_ASAgentCredentialExchangeListener requestExportForCredentialProvider:windowSceneIdentifier:completionHandler:];
      }

      v26 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A588];
      v43 = @"Developer mode must be enabled for this API. You can find the toggle for this in Settings › Developer in the Authentication Services Testing section.";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x1E698DF70] code:18 userInfo:v27];
      (v7)[2](v7, 0, v28);

      [(_ASAgentCredentialExchangeListener *)self _showErrorAlert:0];
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v15 importCredentialsWithToken:v16 completionHandler:v17, v18, v19, v20, v21, v22];
    }

    v23 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A588];
    v45[0] = @"No export in progress";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v24 = [v23 errorWithDomain:*MEMORY[0x1E698DF70] code:1 userInfo:v9];
    (v7)[2](v7, 0, v24);
  }

  os_unfair_lock_unlock(&self->_internalLock);
  v37 = *MEMORY[0x1E69E9840];
}

- (void)cancelCurrentOperation
{
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  self->_currentOperation = 0;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)_showErrorAlert:(unint64_t)a3
{
  v3 = 0;
  v13[3] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      v4 = 0;
      if (a3 != 1)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if (a3 != 2)
  {
    v4 = 0;
    if (a3 != 3)
    {
LABEL_8:
      v5 = *MEMORY[0x1E695EE60];
      v12[0] = *MEMORY[0x1E695EE58];
      v12[1] = v5;
      v13[0] = v4;
      v13[1] = v3;
      v12[2] = *MEMORY[0x1E695EE78];
      v6 = _WBSLocalizedStringWithCurrentUserLocale();
      v13[2] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
      v8 = [v7 mutableCopy];

      v9 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 2uLL, 0, v8);
      v11 = 3;
      CFUserNotificationReceiveResponse(v9, 0.0, &v11);
      CFRelease(v9);

      goto LABEL_9;
    }

LABEL_7:
    v4 = _WBSLocalizedStringWithCurrentUserLocale();
    v3 = _WBSLocalizedStringWithCurrentUserLocale();
    goto LABEL_8;
  }

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setSelectedImporterBundleIdentifierForCurrentOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    [(_ASAgentCredentialExchangeOperation *)currentOperation setSelectedImporterBundleIdentifier:v4];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(_ASAgentCredentialExchangeListener *)v6 _setSelectedImporterBundleIdentifierForCurrentOperation:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)_requestExportWithConnection:(NSXPCConnection *)a3 credentialProviderBundleIdentifier:(NSString *)a4 windowSceneIdentifier:(NSString *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B1D7BF4C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D861F0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B1D861F8;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1B1D22574(0, 0, v14, &unk_1B1D86200, v19);
}

- (void)_highestCommonVersionNumber:(NSString *)a3 credentialProviderBundleIdentifier:(NSString *)a4 importerBundleIdentifier:(NSString *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1B1D7BF4C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D861C0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B1D885D0;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1B1D22574(0, 0, v14, &unk_1B1D86880, v19);
}

- (void)listener:(uint64_t)a3 shouldAcceptNewConnection:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a2, a3, "Unexpected process %{public}@ tried to connect during credential import.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)listener:(uint8_t *)buf shouldAcceptNewConnection:(os_log_t)log .cold.3(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_FAULT, "Could not fetch bundle identifier from application identifier %{public}@. %{public}@", buf, 0x16u);
}

- (void)requestExportForCredentialProvider:(uint64_t)a3 windowSceneIdentifier:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)continueExportWithCredentials:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTokenForImport:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "%{public}s must only be called by the view service", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTokenForImport:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)getExportedCredentialData:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "%{public}s must only be called by the view service", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)getExportedCredentialData:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)importCredentialsWithToken:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setSelectedImporterBundleIdentifierForCurrentOperation:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end