@interface HKElectrocardiogramActiveAlgorithmVersion
+ (id)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(id)domain;
+ (id)knownAlgorithmVersionFromOnboardedVersion:(id)version keyValueDomain:(id)domain;
+ (id)versionWithHealthStore:(id)store error:(id *)error;
+ (int64_t)algorithmVersionForOnboardingVersion:(int64_t)version;
+ (unint64_t)onboardingVersionForKnownAlgorithmVersion:(int64_t)version;
@end

@implementation HKElectrocardiogramActiveAlgorithmVersion

+ (id)versionWithHealthStore:(id)store error:(id *)error
{
  storeCopy = store;
  v7 = @"HKElectrocardiogramOnboardingCompleted";
  hk_heartRhythmDefaults = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v9 = [hk_heartRhythmDefaults objectForKey:v7];

  if (v9 && [v9 integerValue])
  {
    integerValue = [v9 integerValue];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "algorithmVersionForOnboardingVersion:", integerValue)}];
    goto LABEL_14;
  }

  v12 = [HKKeyValueDomain heartRhythmDefaultsDomainWithHealthStore:storeCopy];
  v18 = 0;
  v13 = [v12 numberForKey:v7 error:&v18];
  v14 = v18;
  if (!v13 || ![v13 integerValue])
  {
    if (v14)
    {
      _HKInitializeLogging();
      v15 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [(HKElectrocardiogramActiveAlgorithmVersion *)v7 versionWithHealthStore:v14 error:v15];
        if (error)
        {
          goto LABEL_10;
        }
      }

      else if (error)
      {
LABEL_10:
        v16 = v14;
        v11 = 0;
        *error = v14;
        goto LABEL_13;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = [self knownAlgorithmVersionFromOnboardedVersion:v13 keyValueDomain:v12];
LABEL_13:

LABEL_14:

  return v11;
}

+ (id)knownAlgorithmVersionFromOnboardedVersion:(id)version keyValueDomain:(id)domain
{
  v23 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v7 = +[HKElectrocardiogramActiveAlgorithmVersion algorithmVersionForOnboardingVersion:](HKElectrocardiogramActiveAlgorithmVersion, "algorithmVersionForOnboardingVersion:", [version integerValue]);
  v8 = [self _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:domainCopy];

  integerValue = [v8 integerValue];
  if (integerValue)
  {
    if (v7 == 0x7FFFFFFF)
    {
      _HKInitializeLogging();
      v10 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136446210;
        v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
        _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Sync'd alg version is greater than max previously onboarded and known to build.", &v21, 0xCu);
      }

      v11 = v8;
    }

    else
    {
      v14 = integerValue;
      _HKInitializeLogging();
      v15 = HKLogHeartRhythm;
      v16 = os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT);
      if (v7 >= v14)
      {
        if (v16)
        {
          v21 = 136446210;
          v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
          _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Sync'd alg version is known to this build and not smaller than any version previously onboarded.", &v21, 0xCu);
        }

        v17 = MEMORY[0x1E696AD98];
        v18 = v7;
      }

      else
      {
        if (v16)
        {
          v21 = 136446210;
          v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
          _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Sync'd alg version is less than max previously onboarded and known to build.", &v21, 0xCu);
        }

        v17 = MEMORY[0x1E696AD98];
        v18 = v14;
      }

      v11 = [v17 numberWithInteger:v18];
    }

    v13 = v11;
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136446210;
      v22 = "+[HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:keyValueDomain:]";
      _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}s] Alg version validation: Known onboarding history is empty.", &v21, 0xCu);
    }

    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(id)domain
{
  v3 = [HKHeartRhythmAvailability electrocardiogramOnboardingHistoryMaxKnownWithKeyValueDomain:domain];
  if ([v3 count] == 1)
  {
    allKeys = [v3 allKeys];
    firstObject = [allKeys firstObject];
    integerValue = [firstObject integerValue];

    v7 = [HKElectrocardiogramActiveAlgorithmVersion algorithmVersionForOnboardingVersion:integerValue];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  }

  else
  {
    if ([v3 count] >= 2)
    {
      _HKInitializeLogging();
      v9 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [HKElectrocardiogramActiveAlgorithmVersion _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:v9];
      }
    }

    v8 = 0;
  }

  return v8;
}

+ (int64_t)algorithmVersionForOnboardingVersion:(int64_t)version
{
  if (!version)
  {
    v3 = &_HKAppleECGAlgorithmVersionUnknown;
    return *v3;
  }

  if (version >= 5)
  {
    v3 = &_HKAppleECGAlgorithmVersionGreaterThanMax;
    return *v3;
  }

  if (version == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unint64_t)onboardingVersionForKnownAlgorithmVersion:(int64_t)version
{
  if (version == 1)
  {
    return 3;
  }

  else
  {
    return 4 * (version == 2);
  }
}

+ (void)versionWithHealthStore:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Couldn't read heart rhythm onboarding completion state for key [%@]: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "+[HKElectrocardiogramActiveAlgorithmVersion _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:]";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%{pulic}s] More than one max alg version previously onboarded and known to the build.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end