@interface LAErrorOysterRedactor
- (LAErrorOysterRedactor)init;
- (id)redactError:(id)a3;
- (uint64_t)_linkedAgainstRequiredSDKVersion;
- (uint64_t)_shouldMaskOysterBiometry;
- (uint64_t)_shouldVerifySDKVersion;
- (void)setMinSDKVersion:(id)a3;
@end

@implementation LAErrorOysterRedactor

- (LAErrorOysterRedactor)init
{
  v7.receiver = self;
  v7.super_class = LAErrorOysterRedactor;
  v2 = [(LAErrorOysterRedactor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    defaults = v2->_defaults;
    v2->_defaults = 0;

    v3->_minSDKVersion = 0x7E70901FFFFFFFFLL;
    v5 = _hasSDKRequirements;
    _hasSDKRequirements = 0;
  }

  return v3;
}

- (id)redactError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v4 domain];
  if (![v6 isEqualToString:@"com.apple.LocalAuthentication"])
  {
    goto LABEL_7;
  }

  v7 = [v5 userInfo];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v5 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"BiometryType"];

  if (!v10)
  {
LABEL_8:
    v12 = v5;
    goto LABEL_9;
  }

  v6 = [v5 userInfo];
  v11 = [v6 objectForKeyedSubscript:@"BiometryType"];
  if ([v11 integerValue] != 4)
  {

LABEL_7:
    goto LABEL_8;
  }

  shouldMaskOyster = [(LAErrorOysterRedactor *)self _shouldMaskOysterBiometry];

  if (!shouldMaskOyster)
  {
    goto LABEL_8;
  }

  v15 = [v5 userInfo];
  v16 = [v15 mutableCopy];

  [v16 setObject:&unk_1F5A79308 forKeyedSubscript:@"BiometryType"];
  v17 = MEMORY[0x1E696ABC0];
  v18 = [v5 domain];
  v12 = [v17 errorWithDomain:v18 code:objc_msgSend(v5 userInfo:{"code"), v16}];

LABEL_9:

  return v12;
}

- (void)setMinSDKVersion:(id)a3
{
  self->_minSDKVersion = a3;
  v3 = _hasSDKRequirements;
  _hasSDKRequirements = 0;
}

- (uint64_t)_shouldMaskOysterBiometry
{
  if (result)
  {
    v1 = result;
    result = [(LAErrorOysterRedactor *)result _shouldVerifySDKVersion];
    if (result)
    {
      return [(LAErrorOysterRedactor *)v1 _linkedAgainstRequiredSDKVersion]^ 1;
    }
  }

  return result;
}

- (uint64_t)_shouldVerifySDKVersion
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      v2 = [v3 persistentDomainForName:*MEMORY[0x1E696A400]];
    }

    v4 = [v2 objectForKeyedSubscript:@"LA.oyster.skipSDKVerification"];
    v5 = v4;
    if (!v4)
    {
      v4 = MEMORY[0x1E695E110];
    }

    v6 = [v4 BOOLValue];

    v7 = LA_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"perform";
      if (v6)
      {
        v8 = @"skip";
      }

      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1DF403000, v7, OS_LOG_TYPE_DEFAULT, "Will %@ SDK verification", &v12, 0xCu);
    }

    v9 = v6 ^ 1u;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)_linkedAgainstRequiredSDKVersion
{
  if (result)
  {
    if (_hasSDKRequirements)
    {
      v1 = LA_LOG();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF403000, v1, OS_LOG_TYPE_INFO, "Using cached SDK version", buf, 2u);
      }

      return [_hasSDKRequirements BOOLValue];
    }

    else if (*(result + 20) || *(result + 16))
    {
      v2 = *(result + 16);
      v3 = [MEMORY[0x1E696AD98] numberWithBool:dyld_program_sdk_at_least()];
      v4 = _hasSDKRequirements;
      _hasSDKRequirements = v3;

      v5 = _hasSDKRequirements;

      return [v5 BOOLValue];
    }

    else
    {
      v6 = LA_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1DF403000, v6, OS_LOG_TYPE_ERROR, "Could not determine the current SDK version", v7, 2u);
      }

      return 0;
    }
  }

  return result;
}

@end