@interface HKElectrocardiogramActiveAlgorithmVersion
+ (id)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(id)a3;
+ (id)knownAlgorithmVersionFromOnboardedVersion:(id)a3 keyValueDomain:(id)a4;
+ (id)versionWithHealthStore:(id)a3 error:(id *)a4;
+ (int64_t)algorithmVersionForOnboardingVersion:(int64_t)a3;
+ (unint64_t)onboardingVersionForKnownAlgorithmVersion:(int64_t)a3;
@end

@implementation HKElectrocardiogramActiveAlgorithmVersion

+ (id)versionWithHealthStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = @"HKElectrocardiogramOnboardingCompleted";
  v8 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v9 = [v8 objectForKey:v7];

  if (v9 && [v9 integerValue])
  {
    v10 = [v9 integerValue];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "algorithmVersionForOnboardingVersion:", v10)}];
    goto LABEL_14;
  }

  v12 = [HKKeyValueDomain heartRhythmDefaultsDomainWithHealthStore:v6];
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
        if (a4)
        {
          goto LABEL_10;
        }
      }

      else if (a4)
      {
LABEL_10:
        v16 = v14;
        v11 = 0;
        *a4 = v14;
        goto LABEL_13;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = [a1 knownAlgorithmVersionFromOnboardedVersion:v13 keyValueDomain:v12];
LABEL_13:

LABEL_14:

  return v11;
}

+ (id)knownAlgorithmVersionFromOnboardedVersion:(id)a3 keyValueDomain:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = +[HKElectrocardiogramActiveAlgorithmVersion algorithmVersionForOnboardingVersion:](HKElectrocardiogramActiveAlgorithmVersion, "algorithmVersionForOnboardingVersion:", [a3 integerValue]);
  v8 = [a1 _maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:v6];

  v9 = [v8 integerValue];
  if (v9)
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
      v14 = v9;
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

+ (id)_maxKnownAlgorithmVersionOnboardedWithKeyValueDomain:(id)a3
{
  v3 = [HKHeartRhythmAvailability electrocardiogramOnboardingHistoryMaxKnownWithKeyValueDomain:a3];
  if ([v3 count] == 1)
  {
    v4 = [v3 allKeys];
    v5 = [v4 firstObject];
    v6 = [v5 integerValue];

    v7 = [HKElectrocardiogramActiveAlgorithmVersion algorithmVersionForOnboardingVersion:v6];
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

+ (int64_t)algorithmVersionForOnboardingVersion:(int64_t)a3
{
  if (!a3)
  {
    v3 = &_HKAppleECGAlgorithmVersionUnknown;
    return *v3;
  }

  if (a3 >= 5)
  {
    v3 = &_HKAppleECGAlgorithmVersionGreaterThanMax;
    return *v3;
  }

  if (a3 == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unint64_t)onboardingVersionForKnownAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return 4 * (a3 == 2);
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