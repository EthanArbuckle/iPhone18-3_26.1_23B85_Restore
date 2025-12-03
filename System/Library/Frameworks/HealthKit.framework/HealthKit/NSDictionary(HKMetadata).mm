@interface NSDictionary(HKMetadata)
+ (id)hk_acceptedMetadataValueClasses;
+ (id)hk_acceptedPublicMetadataValueClasses;
+ (id)hk_secureCodingClasses;
+ (uint64_t)hk_acceptsMetadataValue:()HKMetadata allowPrivateMetadata:;
+ (void)_addDerivedPublicKeyIfNecessaryForPrivateKey:()HKMetadata mutableDictionary:;
- (BOOL)_hk_validateMetadataBaseValueContent:()HKMetadata forKey:error:;
- (BOOL)_hk_validateMetadataIntroducedWithIOS13WithValue:()HKMetadata forKey:error:;
- (BOOL)_hk_validateMetadataIntroducedWithIOS14WithValue:()HKMetadata forKey:error:;
- (BOOL)_hk_validateMetadataIntroducedWithIOS16WithValue:()HKMetadata forKey:error:;
- (BOOL)_hk_validateMetadataIntroducedWithIOS17WithValue:()HKMetadata forKey:error:;
- (BOOL)_hk_validateMetadataIntroducedWithIOS18WithValue:()HKMetadata forKey:error:;
- (BOOL)_hk_validateMetadataIntroducedWithIOS19WithValue:()HKMetadata forKey:error:;
- (BOOL)hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:()HKMetadata applicationSDKVersionToken:error:;
- (id)_copyWithoutPrivateMetadataKeysShouldDerivePublicKeys:()HKMetadata;
- (id)hk_copySanitizedForPublicClient;
- (id)hk_copyWithoutPrivateMetadataKeys;
- (uint64_t)_hk_validateMetadataIntroducedWithIOS15WithValue:()HKMetadata forKey:error:;
- (uint64_t)_hk_validateMetadataValueContent:()HKMetadata forKey:applicationSDKVersionToken:error:;
@end

@implementation NSDictionary(HKMetadata)

+ (id)hk_acceptedMetadataValueClasses
{
  if (hk_acceptedMetadataValueClasses_onceToken != -1)
  {
    +[NSDictionary(HKMetadata) hk_acceptedMetadataValueClasses];
  }

  v1 = hk_acceptedMetadataValueClasses_valueClasses;

  return v1;
}

+ (id)hk_secureCodingClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__NSDictionary_HKMetadata__hk_secureCodingClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (hk_secureCodingClasses_onceToken != -1)
  {
    dispatch_once(&hk_secureCodingClasses_onceToken, block);
  }

  v1 = hk_secureCodingClasses___secureCodingClasses;

  return v1;
}

- (BOOL)hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:()HKMetadata applicationSDKVersionToken:error:
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __121__NSDictionary_HKMetadata__hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys_applicationSDKVersionToken_error___block_invoke;
  v10[3] = &unk_1E737B980;
  v11 = a3;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a2;
  v10[7] = a4;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v6 = v13[5];
  v7 = v6;
  if (v6)
  {
    if (a5)
    {
      v8 = v6;
      *a5 = v7;
    }

    else
    {
      _HKLogDroppedError(v6);
    }
  }

  _Block_object_dispose(&v12, 8);
  return v7 == 0;
}

- (id)hk_copyWithoutPrivateMetadataKeys
{
  v1 = [self _copyWithoutPrivateMetadataKeysShouldDerivePublicKeys:0];

  return v1;
}

- (id)hk_copySanitizedForPublicClient
{
  v1 = [self _copyWithoutPrivateMetadataKeysShouldDerivePublicKeys:1];

  return v1;
}

- (id)_copyWithoutPrivateMetadataKeysShouldDerivePublicKeys:()HKMetadata
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [self allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {

    goto LABEL_19;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v19;
  do
  {
    v10 = 0;
    do
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if (_HKMetadataKeyIsPrivate(v11, v6))
      {
        if (v8)
        {
          if (a3)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v8 = [self mutableCopy];
          if (a3)
          {
LABEL_9:
            [objc_opt_class() _addDerivedPublicKeyIfNecessaryForPrivateKey:v11 mutableDictionary:v8];
          }
        }

        [v8 removeObjectForKey:v11];
      }

      ++v10;
    }

    while (v7 != v10);
    v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    v7 = v12;
  }

  while (v12);

  if (v8)
  {
    v13 = [v8 copy];

    v14 = *MEMORY[0x1E69E9840];
    return v13;
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return self;
}

+ (void)_addDerivedPublicKeyIfNecessaryForPrivateKey:()HKMetadata mutableDictionary:
{
  v12 = a3;
  v5 = a4;
  if ([v12 isEqualToString:@"_HKPrivateHeartRateContext"])
  {
    v6 = [v5 objectForKeyedSubscript:v12];
    v7 = HKHeartRateMotionContextForPrivateHeartRateContext([v6 integerValue]);

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v5 setObject:v8 forKeyedSubscript:@"HKMetadataKeyHeartRateMotionContext"];
  }

  if ([v12 isEqualToString:@"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion"])
  {
    v9 = [v5 objectForKeyedSubscript:v12];
    [v5 setObject:v9 forKeyedSubscript:@"HKAlgorithmVersion"];
  }

  if ([v12 isEqualToString:@"_HKPrivateMetadataKeyBackgroundAtrialFibrillationDetectionVersion"])
  {
    v10 = [v5 objectForKeyedSubscript:v12];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:HKAppleIrregularRhythmNotificationsAlgorithmVersionForPrivateVersionString(v10)];
    [v5 setObject:v11 forKeyedSubscript:@"HKAlgorithmVersion"];
  }
}

+ (id)hk_acceptedPublicMetadataValueClasses
{
  if (hk_acceptedPublicMetadataValueClasses_onceToken != -1)
  {
    +[NSDictionary(HKMetadata) hk_acceptedPublicMetadataValueClasses];
  }

  v1 = hk_acceptedPublicMetadataValueClasses_valueClasses;

  return v1;
}

+ (uint64_t)hk_acceptsMetadataValue:()HKMetadata allowPrivateMetadata:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    [self hk_acceptedMetadataValueClasses];
  }

  else
  {
    [self hk_acceptedPublicMetadataValueClasses];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v7 = v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v8 = 1;
          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_hk_validateMetadataBaseValueContent:()HKMetadata forKey:error:
{
  v8 = a3;
  v9 = a4;
  if (_hk_validateMetadataBaseValueContent_forKey_error__onceToken != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataBaseValueContent:forKey:error:];
  }

  if ([HKMetadataValidationUtilities hk_validateMetadataValueClass:v8 forKey:v9 expectedClassLookupTable:_hk_validateMetadataBaseValueContent_forKey_error__supportedKeyLookupTableBase error:a5])
  {
    if ([@"HKDigitalSignature" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateDigitalSignatureMetadataValue:v8 error:a5];
LABEL_19:
      v11 = v10;
      goto LABEL_20;
    }

    if ([@"HKTimeZone" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateTimeZoneMetadataValue:v8 error:a5];
      goto LABEL_19;
    }

    if ([@"HKHeartRateSensorLocation" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateHeartRateSensorLocationMetadataValue:v8 error:a5];
      goto LABEL_19;
    }

    if ([@"HKInsulinDeliveryReason" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateInsulinDeliveryReasonMetadataValue:v8 error:a5];
      goto LABEL_19;
    }

    if ([@"HKBloodGlucoseMealTime" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateMealTimeMetadataValue:v8 error:a5];
      goto LABEL_19;
    }

    if ([@"HKBodyTemperatureSensorLocation" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateBodyTemperatureSensorLocationMetadataValue:v8 error:a5];
      goto LABEL_19;
    }

    if ([@"HKWeatherCondition" isEqualToString:v9])
    {
      v10 = [HKMetadataValidationUtilities hk_validateWeatherConditionMetadataValue:v8 error:a5];
      goto LABEL_19;
    }

    if (![@"HKWeatherTemperature" isEqualToString:v9])
    {
      if ([@"HKWeatherHumidity" isEqualToString:v9])
      {
        v13 = +[HKUnit percentUnit];
        goto LABEL_27;
      }

      if ([@"HKLapLength" isEqualToString:v9])
      {
        v13 = +[HKUnit meterUnit];
        goto LABEL_27;
      }

      if ([@"HKSwimmingLocationType" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateSwimmingLocationTypeMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"HKSwimmingStrokeStyle" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateSwimmingStrokeStyleMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"HKMetadataKeySyncIdentifier" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateSyncIdentifierMetadataValue:self error:a5];
        goto LABEL_19;
      }

      if ([@"HKMetadataKeySyncVersion" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateSyncVersionMetadataValue:self error:a5];
        goto LABEL_19;
      }

      if ([@"HKVO2MaxTestType" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateVO2MaxTestTypeMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"_HKPrivateCoreMotionSourceIdentifier" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateCoreMotionSourceIdentifierMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"HKMetadataKeyUserMotionContext" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateUserMotionContextMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"HKMetadataKeyHeartRateRecoveryTestType" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateHeartRateRecoveryTestTypeMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"HKMetadataKeyHeartRateRecoveryActivityType" isEqualToString:v9])
      {
        v10 = [HKMetadataValidationUtilities hk_validateHeartRateRecoveryActivityTypeMetadataValue:v8 error:a5];
        goto LABEL_19;
      }

      if ([@"HKMetadataKeyHeartRateRecoveryActivityDuration" isEqualToString:v9])
      {
        v13 = +[HKUnit secondUnit];
        goto LABEL_27;
      }

      if ([@"HKMetadataKeyHeartRateRecoveryMaxObservedRecoveryHeartRate" isEqualToString:v9])
      {
        v13 = +[HKUnit _countPerMinuteUnit];
        goto LABEL_27;
      }

      if (![@"_HKPrivateMetadataKeySkinSurfaceTemperature" isEqualToString:v9])
      {
        if ([@"HKMetadataKeyWaterSalinity" isEqualToString:v9])
        {
          v10 = [HKMetadataValidationUtilities hk_validateWaterSalinityMetadataValue:v8 error:a5];
        }

        else if ([@"HKCyclingCyclingFunctionalThresholdPowerTestType" isEqualToString:v9])
        {
          v10 = [HKMetadataValidationUtilities hk_validateCyclingFTPTestTypeMetadataValue:v8 error:a5];
        }

        else
        {
          if (![@"HKPhysicalEffortEstimationType" isEqualToString:v9])
          {
            v11 = 1;
            goto LABEL_20;
          }

          v10 = [HKMetadataValidationUtilities hk_validatePhysicalEffortEstimationTypeMetadataValue:v8 error:a5];
        }

        goto LABEL_19;
      }
    }

    v13 = +[HKUnit degreeCelsiusUnit];
LABEL_27:
    v14 = v13;
    v11 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:v9 value:v8 compatibleUnit:v13 error:a5];

    goto LABEL_20;
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (BOOL)_hk_validateMetadataIntroducedWithIOS13WithValue:()HKMetadata forKey:error:
{
  v7 = a3;
  v8 = a4;
  if (_hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error__onceToken != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS13WithValue:forKey:error:];
  }

  if (![HKMetadataValidationUtilities hk_validateMetadataValueClass:v7 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error__supportedKeyLookupTableYukon error:a5])
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ([@"HKElevationAscended" isEqualToString:v8] || objc_msgSend(@"HKElevationDescended", "isEqualToString:", v8))
  {
LABEL_6:
    v9 = +[HKUnit meterUnit];
LABEL_7:
    v10 = v9;
    v11 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:v8 value:v7 compatibleUnit:v9 error:a5];

    goto LABEL_9;
  }

  if ([@"HKAverageSpeed" isEqualToString:v8] || objc_msgSend(@"HKMaximumSpeed", "isEqualToString:", v8))
  {
    v13 = @"m/s";
LABEL_13:
    v9 = [HKUnit unitFromString:v13];
    goto LABEL_7;
  }

  if ([@"HKAlpineSlopeGrade" isEqualToString:v8])
  {
    v9 = +[HKUnit percentUnit];
    goto LABEL_7;
  }

  if ([@"HKFitnessMachineDuration" isEqualToString:v8])
  {
    v9 = +[HKUnit minuteUnit];
    goto LABEL_7;
  }

  if ([@"HKIndoorBikeDistance" isEqualToString:v8] || objc_msgSend(@"HKCrossTrainerDistance", "isEqualToString:", v8))
  {
    goto LABEL_6;
  }

  if ([@"HKAverageMETs" isEqualToString:v8])
  {
    v13 = @"kcal/(kg*hr)";
    goto LABEL_13;
  }

  if ([@"HKMetadataKeyAudioExposureLevel" isEqualToString:v8])
  {
    v9 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
    goto LABEL_7;
  }

  if ([@"_HKPrivateWorkoutActivityMoveMode" isEqualToString:v8])
  {
    v11 = [HKMetadataValidationUtilities hk_validateActivityMoveModeMetadataValue:v7 error:a5];
  }

  else
  {
    v11 = 1;
  }

LABEL_9:

  return v11;
}

- (BOOL)_hk_validateMetadataIntroducedWithIOS14WithValue:()HKMetadata forKey:error:
{
  v7 = a3;
  v8 = a4;
  if (_hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error__onceToken != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS14WithValue:forKey:error:];
  }

  if (![HKMetadataValidationUtilities hk_validateMetadataValueClass:v7 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error__supportedKeyLookupTableAzul error:a5])
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (![@"HKMetadataKeyAudioExposureDuration" isEqualToString:v8])
  {
    if ([@"HKMetadataKeyAppleECGAlgorithmVersion" isEqualToString:v8])
    {
      v12 = [HKMetadataValidationUtilities hk_validateAppleECGAlgorithmValue:v7 error:a5];
    }

    else
    {
      if (![@"HKMetadataKeyDevicePlacementSide" isEqualToString:v8])
      {
        if ([@"_HKPrivateMetadataKeyAudioExposureLimit" isEqualToString:v8])
        {
          v9 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
        }

        else
        {
          if (![@"HKVO2MaxValue" isEqualToString:v8] && !objc_msgSend(@"HKLowCardioFitnessEventThreshold", "isEqualToString:", v8))
          {
            v11 = 1;
            goto LABEL_13;
          }

          v9 = [HKUnit unitFromString:@"ml/kg*min"];
        }

        goto LABEL_6;
      }

      v12 = [HKMetadataValidationUtilities hk_validateDevicePlacementSideValue:v7 error:a5];
    }

    v11 = v12;
    goto LABEL_13;
  }

  v9 = +[HKUnit secondUnit];
LABEL_6:
  v10 = v9;
  v11 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:v8 value:v7 compatibleUnit:v9 error:a5];

LABEL_13:
  return v11;
}

- (uint64_t)_hk_validateMetadataIntroducedWithIOS15WithValue:()HKMetadata forKey:error:
{
  v7 = a3;
  v8 = a4;
  if (_hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error__onceToken != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS15WithValue:forKey:error:];
  }

  if ([HKMetadataValidationUtilities hk_validateMetadataValueClass:v7 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error__supportedKeyLookupTableSky error:a5])
  {
    if ([@"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion" isEqualToString:v8])
    {
      v9 = [HKMetadataValidationUtilities hk_validateAppleHeartbeatSeriesAlgorithmVersionMetadataValue:v7 error:a5];
    }

    else
    {
      if (![@"HKMetadataKeyAppleIrregularRhythmNotificationsAlgorithmVersion" isEqualToString:v8])
      {
        v10 = 1;
        goto LABEL_11;
      }

      v9 = [HKMetadataValidationUtilities hk_validateAppleIrregularRhythmNotificationsAlgorithmVersionMetadataValue:v7 error:a5];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (BOOL)_hk_validateMetadataIntroducedWithIOS16WithValue:()HKMetadata forKey:error:
{
  v7 = a3;
  v8 = a4;
  if (_hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error__onceToken != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS16WithValue:forKey:error:];
  }

  if ([HKMetadataValidationUtilities hk_validateMetadataValueClass:v7 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error__supportedKeyLookupTableSydney error:a5])
  {
    if ([@"HKMetadataKeyHeadphoneGain" isEqualToString:v8])
    {
      v9 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
      v10 = [HKMetadataValidationUtilities hk_validateQuantityMetadataValue:v8 value:v7 compatibleUnit:v9 error:a5];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_hk_validateMetadataIntroducedWithIOS17WithValue:()HKMetadata forKey:error:
{
  v7 = _hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error__onceToken;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS17WithValue:forKey:error:];
  }

  v10 = [HKMetadataValidationUtilities hk_validateMetadataValueClass:v9 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error__supportedKeyLookupTableDawn error:a5];

  return v10;
}

- (BOOL)_hk_validateMetadataIntroducedWithIOS18WithValue:()HKMetadata forKey:error:
{
  v7 = a3;
  v8 = a4;
  if (_hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error__onceToken != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS18WithValue:forKey:error:];
  }

  if ([HKMetadataValidationUtilities hk_validateMetadataValueClass:v7 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error__supportedKeyLookupTableIOS18 error:a5])
  {
    if ([@"_HKPrivateMetadataKeyWorkoutEventSource" isEqualToString:v8])
    {
      v9 = [HKMetadataValidationUtilities hk_validateWorkoutEventSourceMetadataValue:v7 error:a5];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_hk_validateMetadataIntroducedWithIOS19WithValue:()HKMetadata forKey:error:
{
  v7 = _hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error__onceToken;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    [NSDictionary(HKMetadata) _hk_validateMetadataIntroducedWithIOS19WithValue:forKey:error:];
  }

  v10 = [HKMetadataValidationUtilities hk_validateMetadataValueClass:v9 forKey:v8 expectedClassLookupTable:_hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error__supportedKeyLookupTableIOS19 error:a5];

  return v10;
}

- (uint64_t)_hk_validateMetadataValueContent:()HKMetadata forKey:applicationSDKVersionToken:error:
{
  v9 = a3;
  v10 = a4;
  v11 = [self _hk_validateMetadataBaseValueContent:v9 forKey:v10 error:a6];
  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS13WithValue:v9 forKey:v10 error:a6];
  }

  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS14WithValue:v9 forKey:v10 error:a6];
  }

  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS15WithValue:v9 forKey:v10 error:a6];
  }

  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS16WithValue:v9 forKey:v10 error:a6];
  }

  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS17WithValue:v9 forKey:v10 error:a6];
  }

  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS18WithValue:v9 forKey:v10 error:a6];
  }

  if (HKProgramSDKTokenAtLeast())
  {
    v11 = v11 & [self _hk_validateMetadataIntroducedWithIOS19WithValue:v9 forKey:v10 error:a6];
  }

  return v11;
}

@end