@interface TKTokenAccessRegistry
- (BOOL)_shouldAutomaticallyAllowRequest:(id)a3;
- (BOOL)evaluateRequest:(id)a3 error:(id *)a4;
- (TKTokenAccessRegistry)init;
- (TKTokenAccessRegistry)initWithAccessDB:(id)a3 userPrompt:(id)a4;
- (id)getInstallationIDFromBundleID:(id)a3;
- (int64_t)_fetchAccessForRequest:(id)a3;
- (int64_t)_promptUserToEvaluateRequest:(id)a3 error:(id *)a4;
- (void)_storeAccess:(int64_t)a3 forRequest:(id)a4;
- (void)_storeInstallationID:(id)a3 forBundleID:(id)a4;
@end

@implementation TKTokenAccessRegistry

- (TKTokenAccessRegistry)initWithAccessDB:(id)a3 userPrompt:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKTokenAccessRegistry;
  v9 = [(TKTokenAccessRegistry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessDB, a3);
    objc_storeStrong(&v10->_prompt, a4);
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

- (BOOL)evaluateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(TKTokenAccessRegistry *)self _shouldAutomaticallyAllowRequest:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(TKTokenAccessRegistry *)self _fetchAccessForRequest:v6];
    if (!v8)
    {
      v8 = [(TKTokenAccessRegistry *)self _promptUserToEvaluateRequest:v6 error:a4];
      [(TKTokenAccessRegistry *)self _storeAccess:v8 forRequest:v6];
      v9 = [v6 clientBundleID];
      v10 = [(TKTokenAccessRegistry *)self getInstallationIDFromBundleID:v9];

      if (v10 && [v10 length])
      {
        v11 = [v6 clientBundleID];
        [(TKTokenAccessRegistry *)self _storeInstallationID:v10 forBundleID:v11];
      }
    }

    v7 = v8 == 1;
  }

  return v7;
}

- (BOOL)_shouldAutomaticallyAllowRequest:(id)a3
{
  v4 = a3;
  if ([(TKTokenAccessRegistry *)self _platformAllowsAllRequests])
  {
    v5 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
    }
  }

  else if ([v4 clientHasAccessTokenEntitlement])
  {
    v5 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
    }
  }

  else
  {
    v6 = [v4 clientBundleID];

    if (!v6)
    {
      v5 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _shouldAutomaticallyAllowRequest:];
      }

      goto LABEL_21;
    }

    v7 = [v4 clientBundleID];
    if ([v7 hasPrefix:@"com.apple"])
    {
      v8 = [v4 clientBundleID];
      v9 = [v8 isEqualToString:@"com.apple.sear.SampleToken"];

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

    v10 = [v4 tokenID];
    v11 = [v10 classID];
    v12 = [v11 isEqualToString:*MEMORY[0x1E697AED8]];

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
      v13 = [v4 tokenID];
      v14 = [v13 classID];
      v15 = [v14 isEqualToString:*MEMORY[0x1E697AEE0]];

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

- (int64_t)_promptUserToEvaluateRequest:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(TKTokenAccessUserPrompt *)self->_prompt preflightStatus];
  if (v8)
  {
    if (v8 == 1)
    {
      v10 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _promptUserToEvaluateRequest:error:];
      }

      v4 = 1;
    }

    else if (v8 == 2)
    {
      v9 = TK_LOG_token_access_registry();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenAccessRegistry _promptUserToEvaluateRequest:error:];
      }

      v4 = [(TKTokenAccessUserPrompt *)self->_prompt promptUserToEvaluateRequest:v7 error:a4];
    }
  }

  else
  {
    v11 = TK_LOG_token_access_registry();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessRegistry _promptUserToEvaluateRequest:error:];
    }

    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A278];
      v17[0] = @"Operation not supported in this platform";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a4 = [v12 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v13];
    }

    v4 = 2;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int64_t)_fetchAccessForRequest:(id)a3
{
  v4 = a3;
  if ([(TKTokenAccessRegistry *)self _isPersistenceEnabled])
  {
    v5 = [(TKTokenAccessDB *)self->_accessDB fetchAccessForRequest:v4];
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

- (void)_storeAccess:(int64_t)a3 forRequest:(id)a4
{
  v6 = a4;
  if (![(TKTokenAccessRegistry *)self _isPersistenceEnabled])
  {
    goto LABEL_5;
  }

  v7 = [v6 clientBundleID];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v6 clientBundleID];
  v10 = [v9 length];

  if (v10)
  {
    [(TKTokenAccessDB *)self->_accessDB storeAccess:a3 forRequest:v6];
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

- (void)_storeInstallationID:(id)a3 forBundleID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(TKTokenAccessRegistry *)self _isPersistenceEnabled];
  if (v6)
  {
    if (v7)
    {
      v8 = [v6 length];
      if (v9)
      {
        if (v8 && [v9 length])
        {
          [(TKTokenAccessDB *)self->_accessDB storeInstallationID:v9 forBundleID:v6];
        }
      }
    }
  }
}

- (id)getInstallationIDFromBundleID:(id)a3
{
  v3 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:a3 allowPlaceholder:0 error:0];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v8 = objc_alloc(MEMORY[0x1E69635F8]);
        v9 = [v4 bundleIdentifier];
        v5 = [v8 initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
      }

      v7 = [v5 installSessionIdentifier];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 installSessionIdentifier];
      }

      else
      {
        v7 = 0;
      }
    }

    v6 = [v7 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end