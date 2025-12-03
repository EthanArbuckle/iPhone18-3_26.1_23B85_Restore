@interface _SFManagedFeatureObserver
+ (id)sharedObserver;
- (BOOL)doesUserHavePasscodeSet;
- (BOOL)isUserEnrolledInBiometricAuthentication;
- (_SFManagedFeatureObserver)init;
- (int64_t)biometryTypeCurrentlyAvailableForDevice;
- (void)dealloc;
- (void)isUserEnrolledInBiometricAuthentication;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation _SFManagedFeatureObserver

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    +[_SFManagedFeatureObserver sharedObserver];
  }

  v3 = sharedObserver_sharedObserver;

  return v3;
}

- (BOOL)doesUserHavePasscodeSet
{
  context = self->_context;
  v8 = 0;
  v3 = [(LAContext *)context canEvaluatePolicy:2 error:&v8];
  v4 = v8;
  v5 = v4;
  v6 = v3 || [v4 code] != -5;

  return v6;
}

- (_SFManagedFeatureObserver)init
{
  v8.receiver = self;
  v8.super_class = _SFManagedFeatureObserver;
  v2 = [(_SFManagedFeatureObserver *)&v8 init];
  if (v2)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    if (objc_opt_respondsToSelector())
    {
      [mEMORY[0x1E69ADFB8] registerObserver:v2];
    }

    else
    {
      [mEMORY[0x1E69ADFB8] addObserver:v2];
    }

    v2->_cachedAuthenticationRequiredToAutoFill = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADDD8]] == 1;
    v4 = objc_alloc_init(MEMORY[0x1E696EE50]);
    context = v2->_context;
    v2->_context = v4;

    v6 = v2;
  }

  return v2;
}

- (int64_t)biometryTypeCurrentlyAvailableForDevice
{
  context = self->_context;
  v8 = 0;
  [(LAContext *)context canEvaluatePolicy:1 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v4 && ([v4 code] + 7) < 3)
  {
    biometryType = LABiometryTypeNone;
  }

  else
  {
    biometryType = [(LAContext *)self->_context biometryType];
  }

  return biometryType;
}

- (void)dealloc
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [mEMORY[0x1E69ADFB8] unregisterObserver:self];
  }

  else
  {
    [mEMORY[0x1E69ADFB8] removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = _SFManagedFeatureObserver;
  [(_SFManagedFeatureObserver *)&v4 dealloc];
}

- (BOOL)isUserEnrolledInBiometricAuthentication
{
  context = self->_context;
  v11 = 0;
  v3 = [(LAContext *)context canEvaluatePolicy:4 error:&v11];
  v4 = v11;
  v5 = v4;
  if (!v3)
  {
    if (v4)
    {
      domain = [v4 domain];
      v8 = [domain isEqualToString:*MEMORY[0x1E696EE30]];

      if (v8)
      {
        v6 = ([v5 code] + 4) < 0xFFFFFFFFFFFFFFFDLL;
        goto LABEL_9;
      }

      v9 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_SFManagedFeatureObserver *)v9 isUserEnrolledInBiometricAuthentication];
      }
    }

    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  self->_cachedAuthenticationRequiredToAutoFill = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADDD8]] == 1;
}

- (void)isUserEnrolledInBiometricAuthentication
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1D4644000, selfCopy, OS_LOG_TYPE_ERROR, "Could not get Local Authentication policy information: %{public}@", &v5, 0xCu);
}

@end