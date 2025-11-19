@interface HKStringCache
+ (id)_buildDefaultDictionary;
+ (id)_initialStrings;
+ (id)sharedCache;
- (_DWORD)initInternal;
- (id)cachedStringIfAvailable:(id)a3;
- (id)dictionaryReplacingKeysFromDictionary:(id)a3;
- (void)unittest_resetCache;
- (void)updateCacheWithStrings:(id)a3;
@end

@implementation HKStringCache

+ (id)_initialStrings
{
  v3[175] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3[0] = @"HKUDIDeviceIdentifier";
  v3[1] = @"HKUDIProductionIdentifier";
  v3[2] = @"HKDeviceSerialNumber";
  v3[3] = @"HKBodyTemperatureSensorLocation";
  v3[4] = @"HKHeartRateSensorLocation";
  v3[5] = @"HKFoodType";
  v3[6] = @"HKDigitalSignature";
  v3[7] = @"HKExternalUUID";
  v3[8] = @"HKMetadataKeySyncIdentifier";
  v3[9] = @"HKMetadataKeySyncVersion";
  v3[10] = @"HKTimeZone";
  v3[11] = @"HKDeviceName";
  v3[12] = @"HKDeviceManufacturerName";
  v3[13] = @"HKWasTakenInLab";
  v3[14] = @"HKReferenceRangeLowerLimit";
  v3[15] = @"HKReferenceRangeUpperLimit";
  v3[16] = @"HKWasUserEntered";
  v3[17] = @"HKWorkoutBrandName";
  v3[18] = @"HKGroupFitness";
  v3[19] = @"HKMetadataKeyAppleFitnessPlusCatalogIdentifier";
  v3[20] = @"HKMetadataKeyAppleFitnessPlusSession";
  v3[21] = @"HKIndoorWorkout";
  v3[22] = @"HKCoachedWorkout";
  v3[23] = @"HKSexualActivityProtectionUsed";
  v3[24] = @"HKMenstrualCycleStart";
  v3[25] = @"HKInsulinDeliveryReason";
  v3[26] = @"HKBloodGlucoseMealTime";
  v3[27] = @"HKVO2MaxTestType";
  v3[28] = @"HKHeartRateEventThreshold";
  v3[29] = @"HKVO2MaxValue";
  v3[30] = @"HKLowCardioFitnessEventThreshold";
  v3[31] = @"HKMetadataKeyAppleIrregularRhythmNotificationsAlgorithmVersion";
  v3[32] = @"HKDateOfEarliestDataUsedForEstimate";
  v3[33] = @"HKAlgorithmVersion";
  v3[34] = @"HKActivityType";
  v3[35] = @"HKPhysicalEffortEstimationType";
  v3[36] = @"HKWeatherCondition";
  v3[37] = @"HKWeatherTemperature";
  v3[38] = @"HKWeatherHumidity";
  v3[39] = @"HKLapLength";
  v3[40] = @"HKSwimmingLocationType";
  v3[41] = @"HKSwimmingStrokeStyle";
  v3[42] = @"HKAverageSpeed";
  v3[43] = @"HKMaximumSpeed";
  v3[44] = @"HKAlpineSlopeGrade";
  v3[45] = @"HKElevationAscended";
  v3[46] = @"HKElevationDescended";
  v3[47] = @"HKFitnessMachineDuration";
  v3[48] = @"HKIndoorBikeDistance";
  v3[49] = @"HKCrossTrainerDistance";
  v3[50] = @"HKAverageMETs";
  v3[51] = @"HKSWOLFScore";
  v3[52] = @"HKCyclingCyclingFunctionalThresholdPowerTestType";
  v3[53] = @"HKMetadataKeyGlassesPrescriptionDescription";
  v3[54] = @"HKdr";
  v3[55] = @"HKdt";
  v3[56] = @"HKgt";
  v3[57] = @"HKrg";
  v3[58] = @"HKng";
  v3[59] = @"_HKPrivateWeatherCondition";
  v3[60] = @"_HKPrivateWorkoutWasInDaytime";
  v3[61] = @"_HKPrivateWorkoutLocationSeriesIsSmoothed";
  v3[62] = @"_HKPrivateWorkoutAssociatedUUID";
  v3[63] = @"_HKPrivateWorkoutUnsmoothedCopyAssociatedUUID";
  v3[64] = @"_HKPrivateWorkoutElevationAscendedQuantity";
  v3[65] = @"_HKPrivateWorkoutWeatherLocationCoordinatesLatitude";
  v3[66] = @"_HKPrivateWorkoutWeatherLocationCoordinatesLongitude";
  v3[67] = @"_HKPrivateWorkoutWeatherSourceName";
  v3[68] = @"_HKPrivateWorkoutStrideCount";
  v3[69] = @"_HKPrivateWorkoutStepCount";
  v3[70] = @"_HKPrivateWorkoutAverageSpeed";
  v3[71] = @"_HKPrivateWorkoutAveragePace";
  v3[72] = @"_HKPrivateWorkoutAveragePower";
  v3[73] = @"_HKPrivateWorkoutInstantaneousCadence";
  v3[74] = @"_HKPrivateWorkoutAverageCadence";
  v3[75] = @"_HKPrivateWorkoutInstantaneousPower";
  v3[76] = @"_HKPrivateWorkoutMachineBrand";
  v3[77] = @"_HKPrivateWorkoutMachineType";
  v3[78] = @"_HKPrivateWorkoutActivityMoveMode";
  v3[79] = @"_HKPrivateMetadataKeyWorkoutEventSource";
  v3[80] = @"_HKPrivateWorkoutExtendedMode";
  v3[81] = @"_HKPrivateMetadataKeyRaceReferenceRouteWorkoutUUID";
  v3[82] = @"_HKPrivateMetadataKeyRaceStartOnRouteDate";
  v3[83] = @"_HKPrivateMetadataKeyRaceStartOnRouteDistance";
  v3[84] = @"_HKPrivateMetadataKeyRaceStartOnRouteDuration";
  v3[85] = @"_HKPrivateMetadataKeyRaceFinishRouteDate";
  v3[86] = @"_HKPrivateMetadataKeyRaceFinishRouteDistance";
  v3[87] = @"_HKPrivateMetadataKeyRaceFinishRouteDuration";
  v3[88] = @"_HKPrivateDeepBreathingEndReason";
  v3[89] = @"_HKPrivateDeepBreathingFinalHeartRate";
  v3[90] = @"_HKPrivateSleepAlarmUserSetBedtime";
  v3[91] = @"_HKPrivateSleepAlarmUserWakeTime";
  v3[92] = @"_HKPrivateBloodOxygenContext";
  v3[93] = @"HKMetadataKeyUserMotionContext";
  v3[94] = @"HKMetadataKeyHeartRateMotionContext";
  v3[95] = @"_HKPrivateHeartRateContext";
  v3[96] = @"_HKPrivateHeartbeatSequenceContext";
  v3[97] = @"_HKPrivateMetadataKeyHeartbeatLongestSubsequenceStart";
  v3[98] = @"_HKPrivateMetadataKeyHeartbeatLongestSubsequenceDuration";
  v3[99] = @"HKMetadataKeyHeartRateRecoveryTestType";
  v3[100] = @"HKMetadataKeyHeartRateRecoveryActivityType";
  v3[101] = @"HKMetadataKeyHeartRateRecoveryActivityDuration";
  v3[102] = @"HKMetadataKeyHeartRateRecoveryMaxObservedRecoveryHeartRate";
  v3[103] = @"HKMetadataKeySessionEstimate";
  v3[104] = @"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion";
  v3[105] = @"_HKPrivateMetadataKeyHeartRateEventThreshold";
  v3[106] = @"_HKPrivateMetadataKeyHeartRateEventMinMaxHeartRates";
  v3[107] = @"_HKPrivateMetadataKeyHeartRateDiscordanceThreshold";
  v3[108] = @"_HKPrivateMetadataKeyHeartRateConfidenceValue";
  v3[109] = @"_HKPrivateMetadataKeyRegulatedUpdateVersion";
  v3[110] = @"_HKPrivateActivitySummaryIndex";
  v3[111] = @"_HKPrivateExtractionFailureInfo";
  v3[112] = @"_HKPrivateOriginalSignedClinicalDataSyncIdentifier";
  v3[113] = @"_HKPrivateMetadataKeyOriginalFHIRResourceROWID";
  v3[114] = @"_HKPrivateMedicalRecordUUID";
  v3[115] = @"_HKPrivateMetadataKeyClassification";
  v3[116] = @"_HKPrivateMetadataKeyElectrocardiogramSymptoms";
  v3[117] = @"_HKPrivateMetadataKeyElectrocardiogramHeartRate";
  v3[118] = @"HKMetadataKeyAppleECGAlgorithmVersion";
  v3[119] = @"_HKPrivateMetadataKeyBackgroundAtrialFibrillationDetectionVersion";
  v3[120] = @"_HKPrivateWasEnteredFromCycleTracking";
  v3[121] = @"HKMetadataKeyAudioExposureLevel";
  v3[122] = @"HKMetadataKeyAudioExposureDuration";
  v3[123] = @"HKMetadataKeyHeadphoneGain";
  v3[124] = @"_HKPrivateMetadataKeyAudioExposureLimit";
  v3[125] = @"_HKPrivateMediaSourceBundleIdentifier";
  v3[126] = @"_HKPrivateMetadataKeyHeadphoneAudioDataIsTransient";
  v3[127] = @"_HKPrivateMetadataKeyNotificationIncludesPrunableData";
  v3[128] = @"_HKPrivateMetadataKeyRepeatNotification";
  v3[129] = @"HKMetadataKeyDevicePlacementSide";
  v3[130] = @"HKMetadataKeyAppleDeviceCalibrated";
  v3[131] = @"_HKPrivateAutomaticTimeZone";
  v3[132] = @"_HKPrivateFallActionRequested";
  v3[133] = @"_HKPrivateMetadataKeyUserOnBetaBlocker";
  v3[134] = @"_HKPrivateMetadataKeySessionUUID";
  v3[135] = @"_HKPrivateMetadataKeySessionIncomplete";
  v3[136] = @"HKMetadataKeyQuantityClampedToLowerBound";
  v3[137] = @"HKMetadataKeyQuantityClampedToUpperBound";
  v3[138] = @"_HKPrivateCoreMotionSourceIdentifier";
  v3[139] = @"_HKPrivateMetadataKeySkinSurfaceTemperature";
  v3[140] = @"_HKPrivateMetadataKeyInternalLiveOnAlgorithmVersion";
  v3[141] = @"HKMetadataKeyMaximumLightIntensity";
  v3[142] = @"HKMetadataKeyWaterSalinity";
  v3[143] = @"_HKPrivateMetadataKeyVisionACCPayload";
  v3[144] = @"_HKPrivateMetadataKeyVisionDeviceType";
  v3[145] = @"_HKPrivateMetadataKeyVisionColorCode";
  v3[146] = @"_HKPrivateMetadataKeyVisionSerialNumber";
  v3[147] = @"_HKPrivateMetadataMindfulnessSessionType";
  v3[148] = @"_HKPrivateMetadataKeyIsLastScheduledDose";
  v3[149] = @"_HKPrivateMetadataKeyHearingTestTakenWithCongestion";
  v3[150] = @"_HKPrivateMetadataKeyHearingTestTakenWithRecentLoudNoiseExposure";
  v3[151] = @"_HKPrivateMetadataKeyHearingTestTakenFromFirstParty";
  v3[152] = @"_HKPrivateMetadataKeyHearingTestTakenWithLeftEarNoiseLevel";
  v3[153] = @"_HKPrivateMetadataKeyHearingTestTakenWithRightEarNoiseLevel";
  v3[154] = @"_HKPrivateWorkoutSegmentEventSubtype";
  v3[155] = @"_HKPrivateMetadataSplitMeasuringSystem";
  v3[156] = @"_HKPrivateMetadataSplitDistanceQuantity";
  v3[157] = @"_HKPrivateMetadataSplitActiveDurationQuantity";
  v3[158] = @"_HKPrivateMetadataIsPartialSplit";
  v3[159] = @"_HKPrivateMetadataTotalDistanceQuantity";
  v3[160] = @"_HKPrivateWorkoutSegmentDistance";
  v3[161] = @"_HKPrivateWorkoutSegmentDuration";
  v3[162] = @"_HKPrivateWorkoutMarkerEventSubtype";
  v3[163] = @"_HKPrivateWorkoutSegmentActiveEnergyBurn";
  v3[164] = @"_HKPrivateWorkoutSegmentIndex";
  v3[165] = @"_HKPrivateWorkoutAverageHeartRate";
  v3[166] = @"_HKPrivateWorkoutMaxHeartRate";
  v3[167] = @"_HKPrivateWorkoutMinHeartRate";
  v3[168] = @"_HKPrivateMetadataSplitAveragePowerQuantity";
  v3[169] = @"_HKPrivateWorkoutMaxGroundElevation";
  v3[170] = @"_HKPrivateWorkoutMinGroundElevation";
  v3[171] = @"_HKPrivateWorkoutConfiguration";
  v3[172] = @"_HKPrivateWorkoutHeartRateZonesConfigurationType";
  v3[173] = @"_HKPrivateWorkoutHeartRateZones";
  v3[174] = @"_HKPrivateWorkoutElapsedTimeInHeartRateZones";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:175];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (id)_buildDefaultDictionary
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v0 = +[HKStringCache _initialStrings];
  v1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v0, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1 setObject:*(*(&v10 + 1) + 8 * i) forKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[HKStringCache sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

- (id)cachedStringIfAvailable:(id)a3
{
  cacheDictionary = self->_cacheDictionary;
  v4 = a3;
  v5 = [(NSDictionary *)cacheDictionary objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (id)dictionaryReplacingKeysFromDictionary:(id)a3
{
  v4 = self->_cacheDictionary;
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKStringCache_dictionaryReplacingKeysFromDictionary___block_invoke;
  v13[3] = &unk_1E7380508;
  v14 = v4;
  v8 = v7;
  v15 = v8;
  v9 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __55__HKStringCache_dictionaryReplacingKeysFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v10 = a2;
  v7 = [v5 objectForKeyedSubscript:v10];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v10;
  }

  v9 = v8;

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v9];
}

- (void)updateCacheWithStrings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_cacheDictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:*(*(&v14 + 1) + 8 * v10) forKeyedSubscript:{*(*(&v14 + 1) + 8 * v10), v14}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
  cacheDictionary = self->_cacheDictionary;
  self->_cacheDictionary = v11;

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)unittest_resetCache
{
  os_unfair_lock_lock(&self->_lock);
  v3 = +[HKStringCache _buildDefaultDictionary];
  cacheDictionary = self->_cacheDictionary;
  self->_cacheDictionary = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (_DWORD)initInternal
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = HKStringCache;
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = v1;
  if (v1)
  {
    v1[2] = 0;
    v3 = +[HKStringCache _buildDefaultDictionary];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;
  }

  return v2;
}

uint64_t __28__HKStringCache_sharedCache__block_invoke()
{
  v0 = [[HKStringCache alloc] initInternal];
  v1 = sharedCache_cache;
  sharedCache_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end