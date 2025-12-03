@interface TKTokenAccessRegistry
- (BOOL)_shouldAutomaticallyAllowRequest:(id)request;
- (BOOL)evaluateRequest:(id)request error:(id *)error;
- (TKTokenAccessRegistry)init;
- (TKTokenAccessRegistry)initWithAccessDB:(id)b userPrompt:(id)prompt;
- (id)getInstallationIDFromBundleID:(id)d;
- (int64_t)_fetchAccessForRequest:(id)request;
- (int64_t)_promptUserToEvaluateRequest:(id)request error:(id *)error;
- (void)_storeAccess:(int64_t)access forRequest:(id)request;
- (void)_storeInstallationID:(id)d forBundleID:(id)iD;
@end

@implementation TKTokenAccessRegistry

- (TKTokenAccessRegistry)initWithAccessDB:(id)b userPrompt:(id)prompt
{
  bCopy = b;
  promptCopy = prompt;
  v12.receiver = self;
  v12.super_class = TKTokenAccessRegistry;
  v9 = [(TKTokenAccessRegistry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessDB, b);
    objc_storeStrong(&v10->_prompt, prompt);
  }

  return v10;
}

- (TKTokenAccessRegistry)init
{
  v3 = TKTokenAccessDBCreate();
  v4 = TKTokenAccessUserPromptCreate();
  v5 = [(TKTokenAccessRegistry *)self initWithAccessDB:v3 userPrompt:v4];

  return v5;
}

- (BOOL)evaluateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(TKTokenAccessRegistry *)self _shouldAutomaticallyAllowRequest:requestCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(TKTokenAccessRegistry *)self _fetchAccessForRequest:requestCopy];
    if (!v8)
    {
      v8 = [(TKTokenAccessRegistry *)self _promptUserToEvaluateRequest:requestCopy error:error];
      [(TKTokenAccessRegistry *)self _storeAccess:v8 forRequest:requestCopy];
      clientBundleID = [requestCopy clientBundleID];
      v10 = [(TKTokenAccessRegistry *)self getInstallationIDFromBundleID:clientBundleID];

      if (v10 && [v10 length])
      {
        clientBundleID2 = [requestCopy clientBundleID];
        [(TKTokenAccessRegistry *)self _storeInstallationID:v10 forBundleID:clientBundleID2];
      }
    }

    v7 = v8 == 1;
  }

  return v7;
}

- (BOOL)_shouldAutomaticallyAllowRequest:(id)request
{
  requestCopy = request;
  if ([(TKTokenAccessRegistry *)self _platformAllowsAllRequests])
  {
    v5 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
    }
  }

  else if ([requestCopy clientHasAccessTokenEntitlement])
  {
    v5 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
    }
  }

  else
  {
    clientBundleID = [requestCopy clientBundleID];

    if (!clientBundleID)
    {
      v5 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
      }

      goto LABEL_21;
    }

    clientBundleID2 = [requestCopy clientBundleID];
    if ([clientBundleID2 hasPrefix:@"com.apple"])
    {
      clientBundleID3 = [requestCopy clientBundleID];
      v9 = [clientBundleID3 isEqualToString:@"com.apple.sear.SampleToken"];

      if ((v9 & 1) == 0)
      {
        v5 = TK_LOG_token_access_registry();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    tokenID = [requestCopy tokenID];
    classID = [tokenID classID];
    v12 = [classID isEqualToString:*MEMORY[0x1E697AED8]];

    if (v12)
    {
      v5 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
      }
    }

    else
    {
      tokenID2 = [requestCopy tokenID];
      classID2 = [tokenID2 classID];
      v15 = [classID2 isEqualToString:*MEMORY[0x1E697AEE0]];

      if (!v15)
      {
        v16 = 0;
        goto LABEL_22;
      }

      v5 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
      }
    }
  }

LABEL_21:

  v16 = 1;
LABEL_22:

  return v16;
}

- (int64_t)_promptUserToEvaluateRequest:(id)request error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  preflightStatus = [(TKTokenAccessUserPrompt *)self->_prompt preflightStatus];
  if (preflightStatus)
  {
    if (preflightStatus == 1)
    {
      v10 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _promptUserToEvaluateRequest:error:];
      }

      v4 = 1;
    }

    else if (preflightStatus == 2)
    {
      v9 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _promptUserToEvaluateRequest:error:];
      }

      v4 = [(TKTokenAccessUserPrompt *)self->_prompt promptUserToEvaluateRequest:requestCopy error:error];
    }
  }

  else
  {
    v11 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _promptUserToEvaluateRequest:error:];
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A278];
      v17[0] = @"Operation not supported in this platform";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *error = [v12 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v13];
    }

    v4 = 2;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int64_t)_fetchAccessForRequest:(id)request
{
  requestCopy = request;
  if ([(TKTokenAccessRegistry *)self _isPersistenceEnabled])
  {
    v5 = [(TKTokenAccessDB *)self->_accessDB fetchAccessForRequest:requestCopy];
  }

  else
  {
    v6 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _fetchAccessForRequest:];
    }

    v5 = 0;
  }

  return v5;
}

- (void)_storeAccess:(int64_t)access forRequest:(id)request
{
  requestCopy = request;
  if (![(TKTokenAccessRegistry *)self _isPersistenceEnabled])
  {
    goto LABEL_5;
  }

  clientBundleID = [requestCopy clientBundleID];
  if (!clientBundleID)
  {
    goto LABEL_5;
  }

  v8 = clientBundleID;
  clientBundleID2 = [requestCopy clientBundleID];
  v10 = [clientBundleID2 length];

  if (v10)
  {
    [(TKTokenAccessDB *)self->_accessDB storeAccess:access forRequest:requestCopy];
  }

  else
  {
LABEL_5:
    v11 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _storeAccess:forRequest:];
    }
  }
}

- (void)_storeInstallationID:(id)d forBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  _isPersistenceEnabled = [(TKTokenAccessRegistry *)self _isPersistenceEnabled];
  if (iDCopy)
  {
    if (_isPersistenceEnabled)
    {
      v8 = [iDCopy length];
      if (dCopy)
      {
        if (v8 && [dCopy length])
        {
          [(TKTokenAccessDB *)self->_accessDB storeInstallationID:dCopy forBundleID:iDCopy];
        }
      }
    }
  }
}

- (id)getInstallationIDFromBundleID:(id)d
{
  v3 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:d allowPlaceholder:0 error:0];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containingBundleRecord = [v3 containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = containingBundleRecord;
      }

      else
      {
        v8 = objc_alloc(MEMORY[0x1E69635F8]);
        bundleIdentifier = [containingBundleRecord bundleIdentifier];
        v5 = [v8 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];
      }

      installSessionIdentifier = [v5 installSessionIdentifier];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        installSessionIdentifier = [v3 installSessionIdentifier];
      }

      else
      {
        installSessionIdentifier = 0;
      }
    }

    v6 = [installSessionIdentifier base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end