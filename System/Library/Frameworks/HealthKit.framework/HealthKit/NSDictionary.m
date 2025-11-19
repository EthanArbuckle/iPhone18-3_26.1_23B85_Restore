@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __59__NSDictionary_HKMetadata__hk_acceptedMetadataValueClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  hk_acceptedMetadataValueClasses_valueClasses = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __50__NSDictionary_HKMetadata__hk_secureCodingClasses__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) hk_acceptedMetadataValueClasses];
  v1 = [v3 setByAddingObject:objc_opt_class()];
  v2 = hk_secureCodingClasses___secureCodingClasses;
  hk_secureCodingClasses___secureCodingClasses = v1;
}

void __56__NSDictionary_HealthKit__hk_filteredDictionaryForKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __37__NSDictionary_HealthKit__hk_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __34__NSDictionary_HealthKit__hk_map___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__NSDictionary_HealthKit__hk_map___block_invoke_2;
  v6[3] = &unk_1E7379968;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  (*(v5 + 16))(v5, a2, a3, v6);
}

uint64_t __34__NSDictionary_HealthKit__hk_map___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) setObject:a3 forKeyedSubscript:a2];
    }
  }

  return result;
}

void __121__NSDictionary_HKMetadata__hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys_applicationSDKVersionToken_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([MEMORY[0x1E695DF20] hk_acceptsMetadataValue:v8 allowPrivateMetadata:*(a1 + 64)])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((*(a1 + 64) & 1) != 0 || (_HKMetadataKeyIsPrivate(v7, v9) & 1) == 0 && !_HKMetadataKeyIsReadOnly(v7)))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 40) + 8);
      obj = *(v12 + 40);
      v13 = [v11 _hk_validateMetadataValueContent:v8 forKey:v7 applicationSDKVersionToken:v10 error:&obj];
      objc_storeStrong((v12 + 40), obj);
      if (v13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v15 = *(a1 + 32);
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:{@"Invalid metadata key: %@", v7, v19}];
  }

  else
  {
    v14 = *(a1 + 32);
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:{@"Invalid metadata value: %@, for key: %@", v8, v7}];
  }
  v16 = ;
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

LABEL_11:
  *a4 = 1;
LABEL_12:
}

uint64_t __65__NSDictionary_HKMetadata__hk_acceptedPublicMetadataValueClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  hk_acceptedPublicMetadataValueClasses_valueClasses = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __78__NSDictionary_HKMetadata___hk_validateMetadataBaseValueContent_forKey_error___block_invoke()
{
  v4[52] = *MEMORY[0x1E69E9840];
  v3[0] = @"_HKPrivateCoreMotionSourceIdentifier";
  v4[0] = objc_opt_class();
  v3[1] = @"_HKPrivateFallActionRequested";
  v4[1] = objc_opt_class();
  v3[2] = @"_HKPrivateHeartRateContext";
  v4[2] = objc_opt_class();
  v3[3] = @"_HKPrivateMetadataKeyInternalLiveOnAlgorithmVersion";
  v4[3] = objc_opt_class();
  v3[4] = @"_HKPrivateMetadataKeySkinSurfaceTemperature";
  v4[4] = objc_opt_class();
  v3[5] = @"HKActivityType";
  v4[5] = objc_opt_class();
  v3[6] = @"HKMetadataKeyAppleFitnessPlusCatalogIdentifier";
  v4[6] = objc_opt_class();
  v3[7] = @"HKMetadataKeyAppleFitnessPlusSession";
  v4[7] = objc_opt_class();
  v3[8] = @"HKBloodGlucoseMealTime";
  v4[8] = objc_opt_class();
  v3[9] = @"HKBodyTemperatureSensorLocation";
  v4[9] = objc_opt_class();
  v3[10] = @"HKCoachedWorkout";
  v4[10] = objc_opt_class();
  v3[11] = @"HKCyclingCyclingFunctionalThresholdPowerTestType";
  v4[11] = objc_opt_class();
  v3[12] = @"HKDeviceManufacturerName";
  v4[12] = objc_opt_class();
  v3[13] = @"HKDeviceName";
  v4[13] = objc_opt_class();
  v3[14] = @"HKDeviceSerialNumber";
  v4[14] = objc_opt_class();
  v3[15] = @"HKDigitalSignature";
  v4[15] = objc_opt_class();
  v3[16] = @"HKExternalUUID";
  v4[16] = objc_opt_class();
  v3[17] = @"HKFoodType";
  v4[17] = objc_opt_class();
  v3[18] = @"HKGroupFitness";
  v4[18] = objc_opt_class();
  v3[19] = @"HKHeartRateEventThreshold";
  v4[19] = objc_opt_class();
  v3[20] = @"HKMetadataKeyHeartRateMotionContext";
  v4[20] = objc_opt_class();
  v3[21] = @"HKMetadataKeyHeartRateRecoveryActivityDuration";
  v4[21] = objc_opt_class();
  v3[22] = @"HKMetadataKeyHeartRateRecoveryActivityType";
  v4[22] = objc_opt_class();
  v3[23] = @"HKMetadataKeyHeartRateRecoveryMaxObservedRecoveryHeartRate";
  v4[23] = objc_opt_class();
  v3[24] = @"HKMetadataKeyHeartRateRecoveryTestType";
  v4[24] = objc_opt_class();
  v3[25] = @"HKHeartRateSensorLocation";
  v4[25] = objc_opt_class();
  v3[26] = @"HKIndoorWorkout";
  v4[26] = objc_opt_class();
  v3[27] = @"HKInsulinDeliveryReason";
  v4[27] = objc_opt_class();
  v3[28] = @"HKLapLength";
  v4[28] = objc_opt_class();
  v3[29] = @"HKMetadataKeyMaximumLightIntensity";
  v4[29] = objc_opt_class();
  v3[30] = @"HKMenstrualCycleStart";
  v4[30] = objc_opt_class();
  v3[31] = @"HKPhysicalEffortEstimationType";
  v4[31] = objc_opt_class();
  v3[32] = @"HKMetadataKeyQuantityClampedToLowerBound";
  v4[32] = objc_opt_class();
  v3[33] = @"HKMetadataKeyQuantityClampedToUpperBound";
  v4[33] = objc_opt_class();
  v3[34] = @"HKReferenceRangeLowerLimit";
  v4[34] = objc_opt_class();
  v3[35] = @"HKReferenceRangeUpperLimit";
  v4[35] = objc_opt_class();
  v3[36] = @"HKMetadataKeySessionEstimate";
  v4[36] = objc_opt_class();
  v3[37] = @"HKSwimmingLocationType";
  v4[37] = objc_opt_class();
  v3[38] = @"HKSwimmingStrokeStyle";
  v4[38] = objc_opt_class();
  v3[39] = @"HKMetadataKeySyncIdentifier";
  v4[39] = objc_opt_class();
  v3[40] = @"HKMetadataKeySyncVersion";
  v4[40] = objc_opt_class();
  v3[41] = @"HKTimeZone";
  v4[41] = objc_opt_class();
  v3[42] = @"HKUDIDeviceIdentifier";
  v4[42] = objc_opt_class();
  v3[43] = @"HKUDIProductionIdentifier";
  v4[43] = objc_opt_class();
  v3[44] = @"HKMetadataKeyUserMotionContext";
  v4[44] = objc_opt_class();
  v3[45] = @"HKWasTakenInLab";
  v4[45] = objc_opt_class();
  v3[46] = @"HKWasUserEntered";
  v4[46] = objc_opt_class();
  v3[47] = @"HKMetadataKeyWaterSalinity";
  v4[47] = objc_opt_class();
  v3[48] = @"HKWeatherCondition";
  v4[48] = objc_opt_class();
  v3[49] = @"HKWeatherHumidity";
  v4[49] = objc_opt_class();
  v3[50] = @"HKWeatherTemperature";
  v4[50] = objc_opt_class();
  v3[51] = @"HKWorkoutBrandName";
  v4[51] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:52];
  v1 = _hk_validateMetadataBaseValueContent_forKey_error__supportedKeyLookupTableBase;
  _hk_validateMetadataBaseValueContent_forKey_error__supportedKeyLookupTableBase = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error___block_invoke()
{
  v4[12] = *MEMORY[0x1E69E9840];
  v3[0] = @"HKElevationAscended";
  v4[0] = objc_opt_class();
  v3[1] = @"HKElevationDescended";
  v4[1] = objc_opt_class();
  v3[2] = @"HKSexualActivityProtectionUsed";
  v4[2] = objc_opt_class();
  v3[3] = @"HKAverageSpeed";
  v4[3] = objc_opt_class();
  v3[4] = @"HKMaximumSpeed";
  v4[4] = objc_opt_class();
  v3[5] = @"HKAlpineSlopeGrade";
  v4[5] = objc_opt_class();
  v3[6] = @"HKFitnessMachineDuration";
  v4[6] = objc_opt_class();
  v3[7] = @"HKIndoorBikeDistance";
  v4[7] = objc_opt_class();
  v3[8] = @"HKCrossTrainerDistance";
  v4[8] = objc_opt_class();
  v3[9] = @"HKAverageMETs";
  v4[9] = objc_opt_class();
  v3[10] = @"HKMetadataKeyAudioExposureLevel";
  v4[10] = objc_opt_class();
  v3[11] = @"_HKPrivateWorkoutActivityMoveMode";
  v4[11] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = _hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error__supportedKeyLookupTableYukon;
  _hk_validateMetadataIntroducedWithIOS13WithValue_forKey_error__supportedKeyLookupTableYukon = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error___block_invoke()
{
  v4[12] = *MEMORY[0x1E69E9840];
  v3[0] = @"HKMetadataKeyAudioExposureDuration";
  v4[0] = objc_opt_class();
  v3[1] = @"HKMetadataKeyAppleECGAlgorithmVersion";
  v4[1] = objc_opt_class();
  v3[2] = @"HKMetadataKeyDevicePlacementSide";
  v4[2] = objc_opt_class();
  v3[3] = @"HKMetadataKeyAppleDeviceCalibrated";
  v4[3] = objc_opt_class();
  v3[4] = @"HKVO2MaxValue";
  v4[4] = objc_opt_class();
  v3[5] = @"HKLowCardioFitnessEventThreshold";
  v4[5] = objc_opt_class();
  v3[6] = @"_HKPrivateMetadataKeyUserOnBetaBlocker";
  v4[6] = objc_opt_class();
  v3[7] = @"_HKPrivateMetadataKeySessionUUID";
  v4[7] = objc_opt_class();
  v3[8] = @"_HKPrivateMetadataKeyRepeatNotification";
  v4[8] = objc_opt_class();
  v3[9] = @"_HKPrivateMetadataKeyAudioExposureLimit";
  v4[9] = objc_opt_class();
  v3[10] = @"_HKPrivateMetadataKeyHeadphoneAudioDataIsTransient";
  v4[10] = objc_opt_class();
  v3[11] = @"_HKPrivateMetadataKeyNotificationIncludesPrunableData";
  v4[11] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = _hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error__supportedKeyLookupTableAzul;
  _hk_validateMetadataIntroducedWithIOS14WithValue_forKey_error__supportedKeyLookupTableAzul = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion";
  v4[0] = objc_opt_class();
  v3[1] = @"HKMetadataKeyAppleIrregularRhythmNotificationsAlgorithmVersion";
  v4[1] = objc_opt_class();
  v3[2] = @"HKDateOfEarliestDataUsedForEstimate";
  v4[2] = objc_opt_class();
  v3[3] = @"HKAlgorithmVersion";
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = _hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error__supportedKeyLookupTableSky;
  _hk_validateMetadataIntroducedWithIOS15WithValue_forKey_error__supportedKeyLookupTableSky = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"HKSWOLFScore";
  v4[0] = objc_opt_class();
  v3[1] = @"_HKPrivateWorkoutWeatherSourceName";
  v4[1] = objc_opt_class();
  v3[2] = @"_HKPrivateWorkoutExtendedMode";
  v4[2] = objc_opt_class();
  v3[3] = @"HKMetadataKeyHeadphoneGain";
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = _hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error__supportedKeyLookupTableSydney;
  _hk_validateMetadataIntroducedWithIOS16WithValue_forKey_error__supportedKeyLookupTableSydney = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error___block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"HKCyclingCyclingFunctionalThresholdPowerTestType";
  v4[0] = objc_opt_class();
  v3[1] = @"HKActivityType";
  v4[1] = objc_opt_class();
  v3[2] = @"HKPhysicalEffortEstimationType";
  v4[2] = objc_opt_class();
  v3[3] = @"HKMetadataKeyWaterSalinity";
  v4[3] = objc_opt_class();
  v3[4] = @"HKMetadataKeyAppleFitnessPlusSession";
  v4[4] = objc_opt_class();
  v3[5] = @"HKMetadataKeyMaximumLightIntensity";
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = _hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error__supportedKeyLookupTableDawn;
  _hk_validateMetadataIntroducedWithIOS17WithValue_forKey_error__supportedKeyLookupTableDawn = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error___block_invoke()
{
  v4[12] = *MEMORY[0x1E69E9840];
  v3[0] = @"_HKPrivateMetadataKeyHearingTestTakenWithCongestion";
  v4[0] = objc_opt_class();
  v3[1] = @"_HKPrivateMetadataKeyHearingTestTakenWithRecentLoudNoiseExposure";
  v4[1] = objc_opt_class();
  v3[2] = @"_HKPrivateMetadataKeyHearingTestTakenFromFirstParty";
  v4[2] = objc_opt_class();
  v3[3] = @"_HKPrivateMetadataKeyHearingTestTakenWithLeftEarNoiseLevel";
  v4[3] = objc_opt_class();
  v3[4] = @"_HKPrivateMetadataKeyHearingTestTakenWithRightEarNoiseLevel";
  v4[4] = objc_opt_class();
  v3[5] = @"_HKPrivateMetadataKeyPregnancyStartSourceMethod";
  v4[5] = objc_opt_class();
  v3[6] = @"_HKPrivateMetadataKeyPregnancyEmbryoAgeDays";
  v4[6] = objc_opt_class();
  v3[7] = @"_HKPrivateMetadataKeyPregnancyDetailsRecordedDate";
  v4[7] = objc_opt_class();
  v3[8] = @"_HKPrivateMetadataKeyWorkoutActivityUUID";
  v4[8] = objc_opt_class();
  v3[9] = @"_HKPrivateMetadataKeyTransientRatingOfEstimatedExertion";
  v4[9] = objc_opt_class();
  v3[10] = @"_HKPrivateMetadataKeySessionIncomplete";
  v4[10] = objc_opt_class();
  v3[11] = @"HKMetadataKeyAppleFitnessPlusCatalogIdentifier";
  v4[11] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = _hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error__supportedKeyLookupTableIOS18;
  _hk_validateMetadataIntroducedWithIOS18WithValue_forKey_error__supportedKeyLookupTableIOS18 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKMetadata___hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error___block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"_HKPrivateMetadataKeyHeartRateConfidenceValue";
  v4[0] = objc_opt_class();
  v3[1] = @"_HKPrivateMetadataKeyWorkoutEventSource";
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = _hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error__supportedKeyLookupTableIOS19;
  _hk_validateMetadataIntroducedWithIOS19WithValue_forKey_error__supportedKeyLookupTableIOS19 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __121__NSDictionary_HKWorkoutEventMetadata__hk_validateMetadataKeysAndValuesForWorkoutEvent_applicationSDKVersionToken_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([MEMORY[0x1E695DF20] hk_acceptsMetadataValue:v8 allowPrivateMetadata:1])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[8];
      v12 = *(a1[6] + 8);
      obj = *(v12 + 40);
      v13 = [v9 _hk_validateMetadataValueForWorkoutEvent:v10 valueContent:v8 forKey:v7 applicationSDKVersionToken:v11 error:&obj];
      objc_storeStrong((v12 + 40), obj);
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v15 = a1[4];
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Invalid metadata key: %@", v7, v19}];
  }

  else
  {
    v14 = a1[4];
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Invalid metadata value: %@, for key: %@", v8, v7}];
  }
  v16 = ;
  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

LABEL_8:
  *a4 = 1;
LABEL_9:
}

void __109__NSDictionary_HKWorkoutEventMetadata___hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error___block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"HKElevationAscended";
  v4[0] = objc_opt_class();
  v3[1] = @"HKElevationDescended";
  v4[1] = objc_opt_class();
  v3[2] = @"HKAverageSpeed";
  v4[2] = objc_opt_class();
  v3[3] = @"HKMaximumSpeed";
  v4[3] = objc_opt_class();
  v3[4] = @"HKAlpineSlopeGrade";
  v4[4] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = _hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error__supportedWorkoutKeyLookupTableYukon;
  _hk_validateYukonMetadataValueForWorkoutEvent_valueContent_key_error__supportedWorkoutKeyLookupTableYukon = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __90__NSDictionary_HKAttachmentMetadata__hk_validateAttachmentMetadataKeysAndValuesWithError___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E695DF20] hk_acceptedAttachmentMetadataValueClasses];

    if (v8)
    {
      goto LABEL_6;
    }

    v9 = a1[4];
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[6] format:{@"Invalid metadata value: %@, for key: %@", v7, v15}];
  }

  else
  {
    v10 = a1[4];
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[6] format:{@"Invalid metadata key: %@", v15, v14}];
  }
  v11 = ;
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *a4 = 1;
LABEL_6:
}

uint64_t __79__NSDictionary_HKAttachmentMetadata__hk_acceptedAttachmentMetadataValueClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = hk_acceptedAttachmentMetadataValueClasses_valueClasses;
  hk_acceptedAttachmentMetadataValueClasses_valueClasses = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __70__NSDictionary_HKAttachmentMetadata__hk_secureAttachmentCodingClasses__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) hk_acceptedAttachmentMetadataValueClasses];
  v1 = [v3 setByAddingObject:objc_opt_class()];
  v2 = hk_secureAttachmentCodingClasses__secureCodingClasses;
  hk_secureAttachmentCodingClasses__secureCodingClasses = v1;
}

@end