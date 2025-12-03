@interface HKFeatureOnboardingRecordInaccessibilityCache
- (HKFeatureOnboardingRecordInaccessibilityCache)initWithCachingDefaults:(id)defaults;
- (id)_cachedOnboardingRecordForFeatureIdentifier:(id)identifier;
- (id)fallbackOnboardingRecordForError:(id)error featureIdentifier:(id)identifier;
- (void)updateForRetrievedOnboardingRecord:(id)record featureIdentifier:(id)identifier;
@end

@implementation HKFeatureOnboardingRecordInaccessibilityCache

- (HKFeatureOnboardingRecordInaccessibilityCache)initWithCachingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = HKFeatureOnboardingRecordInaccessibilityCache;
  v6 = [(HKFeatureOnboardingRecordInaccessibilityCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachingDefaults, defaults);
  }

  return v7;
}

- (id)fallbackOnboardingRecordForError:(id)error featureIdentifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  if (errorCopy && [errorCopy hk_isDatabaseAccessibilityError])
  {
    v8 = [(HKFeatureOnboardingRecordInaccessibilityCache *)self _cachedOnboardingRecordForFeatureIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_cachedOnboardingRecordForFeatureIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  cachingDefaults = self->_cachingDefaults;
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_OnboardingRecord", identifierCopy];
  v7 = [(NSUserDefaults *)cachingDefaults dataForKey:identifierCopy];

  if (v7)
  {
    v16 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v16];
    v9 = v16;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      _HKInitializeLogging();
      v11 = HKLogInfrastructure();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        *buf = 138543874;
        v18 = v14;
        v19 = 2114;
        v20 = identifierCopy;
        v21 = 2114;
        v22 = v9;
        v15 = v14;
        _os_log_error_impl(&dword_19197B000, v11, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to unarchive cached onboarding record for %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)updateForRetrievedOnboardingRecord:(id)record featureIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:record requiringSecureCoding:1 error:&v14];
  v8 = v14;
  if (v7)
  {
    cachingDefaults = self->_cachingDefaults;
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_OnboardingRecord", identifierCopy];
    [(NSUserDefaults *)cachingDefaults setObject:v7 forKey:identifierCopy];
  }

  else
  {
    _HKInitializeLogging();
    identifierCopy = HKLogInfrastructure();
    if (os_log_type_enabled(identifierCopy, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = identifierCopy;
      v19 = 2114;
      v20 = v8;
      v13 = v12;
      _os_log_error_impl(&dword_19197B000, identifierCopy, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to archive onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end