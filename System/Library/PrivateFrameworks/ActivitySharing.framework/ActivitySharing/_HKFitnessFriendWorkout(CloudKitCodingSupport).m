@interface _HKFitnessFriendWorkout(CloudKitCodingSupport)
+ (id)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:;
+ (id)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:;
- (ASCodableCloudKitWorkout)codableWorkout;
- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:;
@end

@implementation _HKFitnessFriendWorkout(CloudKitCodingSupport)

- (ASCodableCloudKitWorkout)codableWorkout
{
  v2 = objc_alloc_init(ASCodableCloudKitWorkout);
  v3 = _ASCodableCloudKitSampleForSample(a1);
  [(ASCodableCloudKitWorkout *)v2 setSample:v3];

  -[ASCodableCloudKitWorkout setType:](v2, "setType:", [a1 workoutActivityType]);
  [a1 duration];
  [(ASCodableCloudKitWorkout *)v2 setDuration:?];
  v4 = [a1 totalEnergyBurned];

  if (v4)
  {
    v5 = [a1 totalEnergyBurned];
    v6 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [v5 doubleValueForUnit:v6];
    [(ASCodableCloudKitWorkout *)v2 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  v7 = [a1 totalBasalEnergyBurned];

  if (v7)
  {
    v8 = [a1 totalBasalEnergyBurned];
    v9 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [v8 doubleValueForUnit:v9];
    [(ASCodableCloudKitWorkout *)v2 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  v10 = [a1 totalDistance];

  if (v10)
  {
    v11 = [a1 totalDistance];
    v12 = _HKWorkoutCanonicalDistanceUnit();
    [v11 doubleValueForUnit:v12];
    [(ASCodableCloudKitWorkout *)v2 setTotalDistanceInCanonicalUnit:?];
  }

  -[ASCodableCloudKitWorkout setGoalType:](v2, "setGoalType:", [a1 goalType]);
  v13 = [a1 goal];
  if (v13)
  {
    v14 = v13;
    [a1 goalType];
    IsValidForGoal = _HKWorkoutGoalTypeIsValidForGoal();

    if (IsValidForGoal)
    {
      v16 = [a1 goal];
      [a1 goalType];
      v17 = _HKWorkoutCanonicalUnitForGoalType();
      [v16 doubleValueForUnit:v17];
      [(ASCodableCloudKitWorkout *)v2 setGoalInCanonicalUnit:?];
    }
  }

  v18 = [a1 bundleID];
  [(ASCodableCloudKitWorkout *)v2 setBundleID:v18];

  -[ASCodableCloudKitWorkout setIsWatchWorkout:](v2, "setIsWatchWorkout:", [a1 isWatchWorkout]);
  -[ASCodableCloudKitWorkout setIsIndoorWorkout:](v2, "setIsIndoorWorkout:", [a1 isIndoorWorkout]);
  v19 = [a1 deviceManufacturer];
  [(ASCodableCloudKitWorkout *)v2 setDeviceManufacturer:v19];

  v20 = [a1 deviceModel];
  [(ASCodableCloudKitWorkout *)v2 setDeviceModel:v20];

  v21 = [a1 seymourCatalogWorkoutIdentifier];
  [(ASCodableCloudKitWorkout *)v2 setSeymourCatalogWorkoutIdentifier:v21];

  v22 = [a1 seymourMediaType];
  [(ASCodableCloudKitWorkout *)v2 setSeymourMediaType:v22];

  return v2;
}

- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:
{
  v6 = a3;
  v7 = [a1 UUID];
  v8 = ASWorkoutRecordIDForUUID(v7, v6);

  v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingWorkout" recordID:v8];
  _ASUpdateSchemaVersionOnRecord(2, v9, a4);
  v10 = [a1 codableWorkout];
  v11 = [v10 data];
  v12 = [v9 encryptedValues];
  [v12 setObject:v11 forKeyedSubscript:@"EncryptedData"];

  ASLoggingInitialize();
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG))
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) recordWithZoneID:recordEncryptionType:];
  }

  ASLoggingInitialize();
  v13 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG))
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) recordWithZoneID:v13 recordEncryptionType:a1];
  }

  return v9;
}

+ (id)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:
{
  v6 = a3;
  v7 = a4;
  if (_ASCloudKitSchemaVersionForRecord(v6) == 2)
  {
    v8 = [v6 encryptedValues];
    v9 = [v8 objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v12 = [[ASCodableCloudKitWorkout alloc] initWithData:v10];
      v11 = [a1 fitnessFriendWorkoutWithCodableWorkout:v12 friendUUID:v7];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[_HKFitnessFriendWorkout(CloudKitCodingSupport) fitnessFriendWorkoutWithRecord:friendUUID:];
      }

      v11 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[_HKFitnessFriendWorkout(CloudKitCodingSupport) fitnessFriendWorkoutWithRecord:friendUUID:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:
{
  v5 = a3;
  v6 = MEMORY[0x277CCAD78];
  v51 = a4;
  v7 = [v5 sample];
  v8 = [v7 uuid];
  v54 = [v6 hk_UUIDWithData:v8];

  v50 = [v5 type];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [v5 sample];
  [v10 startDate];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  v12 = MEMORY[0x277CBEAA8];
  v13 = [v5 sample];
  [v13 endDate];
  v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];

  if ([v5 hasTotalEnergyBurnedInCanonicalUnit])
  {
    v15 = MEMORY[0x277CCD7E8];
    v16 = _HKWorkoutCanonicalEnergyBurnedUnit();
    v17 = [v15 quantityWithUnit:v16 doubleValue:0.0];

    if (([v5 isAmm] & 1) == 0)
    {
      v18 = MEMORY[0x277CCD7E8];
      v19 = _HKWorkoutCanonicalEnergyBurnedUnit();
      [v5 totalEnergyBurnedInCanonicalUnit];
      v20 = [v18 quantityWithUnit:v19 doubleValue:?];

      v17 = v20;
    }
  }

  else
  {
    v17 = 0;
  }

  if ([v5 hasTotalBasalEnergyBurnedInCanonicalUnit])
  {
    v21 = MEMORY[0x277CCD7E8];
    v22 = _HKWorkoutCanonicalEnergyBurnedUnit();
    v23 = [v21 quantityWithUnit:v22 doubleValue:0.0];

    if (([v5 isAmm] & 1) == 0)
    {
      v24 = MEMORY[0x277CCD7E8];
      v25 = _HKWorkoutCanonicalEnergyBurnedUnit();
      [v5 totalBasalEnergyBurnedInCanonicalUnit];
      v26 = [v24 quantityWithUnit:v25 doubleValue:?];

      v23 = v26;
    }
  }

  else
  {
    v23 = 0;
  }

  if ([v5 hasTotalDistanceInCanonicalUnit])
  {
    v27 = MEMORY[0x277CCD7E8];
    v28 = _HKWorkoutCanonicalDistanceUnit();
    [v5 totalDistanceInCanonicalUnit];
    v55 = [v27 quantityWithUnit:v28 doubleValue:?];
  }

  else
  {
    v55 = 0;
  }

  v57 = v11;
  v52 = v17;
  v53 = v14;
  v56 = v23;
  v48 = [v5 goalType];
  if ([v5 hasGoalInCanonicalUnit])
  {
    v29 = MEMORY[0x277CCD7E8];
    v30 = _HKWorkoutCanonicalUnitForGoalType();
    [v5 goalInCanonicalUnit];
    v31 = [v29 quantityWithUnit:v30 doubleValue:?];
  }

  else
  {
    v31 = 0;
  }

  v32 = [v5 isIndoorWorkout];
  v47 = MEMORY[0x277CCDDD0];
  [v5 duration];
  v34 = v33;
  v35 = [v5 bundleID];
  v36 = [v5 isWatchWorkout];
  v37 = [v5 deviceManufacturer];
  v38 = [v5 deviceModel];
  v39 = [v5 amm];
  v40 = [v5 seymourCatalogWorkoutIdentifier];
  v41 = [v5 seymourMediaType];
  BYTE1(v46) = v32;
  LOBYTE(v46) = v36;
  v49 = v31;
  v42 = [v47 fitnessFriendworkoutWithActivityType:v50 friendUUID:v51 startDate:v57 endDate:v53 duration:v52 totalActiveEnergyBurned:v56 totalBasalEnergyBurned:v34 totalDistance:v55 goalType:v48 goal:v31 bundleID:v35 isWatchWorkout:v46 isIndoorWorkout:v37 deviceManufacturer:v38 deviceModel:v39 amm:v40 seymourCatalogWorkoutIdentifier:v41 seymourMediaType:?];

  [v42 _setUUID:v54];
  [v42 workoutActivityType];
  if ((_HKWorkoutActivityTypeIsValid() & 1) == 0)
  {
    [v42 setWorkoutActivityType:3000];
  }

  ASLoggingInitialize();
  v43 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG))
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) _fitnessFriendWorkoutWithCodableWorkout:v43 friendUUID:v42];
  }

  ASLoggingInitialize();
  v44 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_DEBUG))
  {
    [_HKFitnessFriendWorkout(CloudKitCodingSupport) _fitnessFriendWorkoutWithCodableWorkout:v44 friendUUID:v42];
  }

  [v42 goalType];
  if ((_HKWorkoutGoalTypeIsValidForGoal() & 1) == 0)
  {
    [v42 setGoal:0];
  }

  return v42;
}

- (void)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_6() bundleID];
  [a2 isWatchWorkout];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fitnessFriendWorkoutWithRecord:()CloudKitCodingSupport friendUUID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_6() UUID];
  v12 = [a2 friendUUID];
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_fitnessFriendWorkoutWithCodableWorkout:()CloudKitCodingSupport friendUUID:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_6() bundleID];
  [a2 isWatchWorkout];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

@end