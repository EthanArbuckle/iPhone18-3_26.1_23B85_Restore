@interface _ASDevice
+ (BOOL)isBiometricAuthenticationAvailable;
+ (BOOL)isCompanionAuthenticationAvailable;
+ (BOOL)isPad;
+ (BOOL)shouldRequireLocalAuthenticationForPasswords;
+ (int)deviceClass;
+ (int64_t)biometryType;
+ (void)biometryType;
+ (void)isBiometricAuthenticationAvailable;
+ (void)isCompanionAuthenticationAvailable;
+ (void)shouldRequireLocalAuthenticationForPasswords;
@end

@implementation _ASDevice

+ (BOOL)isPad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18___ASDevice_isPad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isPad_onceToken != -1)
  {
    dispatch_once(&isPad_onceToken, block);
  }

  return isPad_isPad;
}

+ (BOOL)isBiometricAuthenticationAvailable
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v9 = 0;
  v3 = [v2 canEvaluatePolicy:1 error:&v9];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(_ASDevice *)v6];
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C20AD000, v6, OS_LOG_TYPE_INFO, "No biometrics available", v8, 2u);
    }
  }

  return v3;
}

+ (BOOL)isCompanionAuthenticationAvailable
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v9 = 0;
  v3 = [v2 canEvaluatePolicy:3 error:&v9];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(_ASDevice *)v6];
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C20AD000, v6, OS_LOG_TYPE_INFO, "No companion auth available", v8, 2u);
    }
  }

  return v3;
}

+ (BOOL)shouldRequireLocalAuthenticationForPasswords
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v9 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (([v4 safari_matchesErrorDomain:*MEMORY[0x1E696EE30] andCode:-5] & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(_ASDevice *)v7];
    }

    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (int64_t)biometryType
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v8 = 0;
  v3 = [v2 canEvaluatePolicy:1 error:&v8];
  v4 = v8;
  if (v3)
  {
    biometryType = [v2 biometryType];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[(_ASDevice *)v6];
    }

    biometryType = 0;
  }

  return biometryType;
}

+ (int)deviceClass
{
  if (deviceClass_onceToken != -1)
  {
    +[_ASDevice deviceClass];
  }

  return deviceClass_deviceClass;
}

+ (void)isBiometricAuthenticationAvailable
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Local Auth returned error when checking biometric auth availability: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)isCompanionAuthenticationAvailable
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Local Auth returned error when checking companion auth availability: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)shouldRequireLocalAuthenticationForPasswords
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Local Auth returned error when checking password auth availability: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)biometryType
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Cannot evaluate biometrics: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end