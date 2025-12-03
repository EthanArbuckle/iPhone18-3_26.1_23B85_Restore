@interface _HKFitnessFriendActivitySnapshot(CloudKitCodingSupport)
+ (id)_fitnessFriendActivitySnapshotWithCodableSnapshot:()CloudKitCodingSupport friendUUID:uploadedDate:;
+ (id)fitnessFriendActivitySnapshotWithRecord:()CloudKitCodingSupport friendUUID:;
- (ASCodableCloudKitActivitySnapshot)codableSnapshot;
- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:;
@end

@implementation _HKFitnessFriendActivitySnapshot(CloudKitCodingSupport)

- (ASCodableCloudKitActivitySnapshot)codableSnapshot
{
  v2 = objc_alloc_init(ASCodableCloudKitActivitySnapshot);
  v3 = _ASCodableCloudKitSampleForSample(self);
  [(ASCodableCloudKitActivitySnapshot *)v2 setSample:v3];

  sourceUUID = [self sourceUUID];
  hk_dataForUUIDBytes = [sourceUUID hk_dataForUUIDBytes];
  [(ASCodableCloudKitActivitySnapshot *)v2 setSourceUUID:hk_dataForUUIDBytes];

  -[ASCodableCloudKitActivitySnapshot setSnapshotIndex:](v2, "setSnapshotIndex:", [self snapshotIndex]);
  timeZoneOffsetFromUTCForNoon = [self timeZoneOffsetFromUTCForNoon];
  -[ASCodableCloudKitActivitySnapshot setTimeZoneOffsetFromUTCForNoon:](v2, "setTimeZoneOffsetFromUTCForNoon:", [timeZoneOffsetFromUTCForNoon longLongValue]);

  [self energyBurned];
  [(ASCodableCloudKitActivitySnapshot *)v2 setEnergyBurned:?];
  [self energyBurnedGoal];
  [(ASCodableCloudKitActivitySnapshot *)v2 setEnergyBurnedGoal:?];
  [self mmv];
  [(ASCodableCloudKitActivitySnapshot *)v2 setMmv:?];
  [self mmg];
  [(ASCodableCloudKitActivitySnapshot *)v2 setMmg:?];
  [self briskMinutes];
  [(ASCodableCloudKitActivitySnapshot *)v2 setBriskMinutes:?];
  [self briskMinutesGoal];
  [(ASCodableCloudKitActivitySnapshot *)v2 setBriskMinutesGoal:?];
  [self activeHours];
  [(ASCodableCloudKitActivitySnapshot *)v2 setActiveHours:?];
  [self activeHoursGoal];
  [(ASCodableCloudKitActivitySnapshot *)v2 setActiveHoursGoal:?];
  [self walkingAndRunningDistance];
  [(ASCodableCloudKitActivitySnapshot *)v2 setWalkingAndRunningDistance:?];
  [self stepCount];
  [(ASCodableCloudKitActivitySnapshot *)v2 setStepCount:?];
  [self pushCount];
  [(ASCodableCloudKitActivitySnapshot *)v2 setPushCount:?];
  -[ASCodableCloudKitActivitySnapshot setWheelchairUse:](v2, "setWheelchairUse:", [self wheelchairUse]);
  -[ASCodableCloudKitActivitySnapshot setAmm:](v2, "setAmm:", [self amm]);

  return v2;
}

- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithLongLong:{objc_msgSend(self, "snapshotIndex")}];
  sourceUUID = [self sourceUUID];
  uUIDString = [sourceUUID UUIDString];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lld-%@", @"ActivitySharingActivitySnapshot", objc_msgSend(v8, "longLongValue"), uUIDString];
  v12 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v11 zoneID:v7];

  v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingActivitySnapshot" recordID:v12];
  _ASUpdateSchemaVersionOnRecord(2, v13, a4);
  codableSnapshot = [self codableSnapshot];
  data = [codableSnapshot data];
  encryptedValues = [v13 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return v13;
}

+ (id)fitnessFriendActivitySnapshotWithRecord:()CloudKitCodingSupport friendUUID:
{
  v6 = a3;
  v7 = a4;
  if (_ASCloudKitSchemaVersionForRecord(v6) == 2)
  {
    encryptedValues = [v6 encryptedValues];
    v9 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
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
      v12 = [[ASCodableCloudKitActivitySnapshot alloc] initWithData:v10];
      modificationDate = [v6 modificationDate];
      v11 = [self fitnessFriendActivitySnapshotWithCodableSnapshot:v12 friendUUID:v7 uploadedDate:modificationDate];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[_HKFitnessFriendActivitySnapshot(CloudKitCodingSupport) fitnessFriendActivitySnapshotWithRecord:friendUUID:];
      }

      v11 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[_HKFitnessFriendActivitySnapshot(CloudKitCodingSupport) fitnessFriendActivitySnapshotWithRecord:friendUUID:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_fitnessFriendActivitySnapshotWithCodableSnapshot:()CloudKitCodingSupport friendUUID:uploadedDate:
{
  v7 = MEMORY[0x277CBEAA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  sample = [v10 sample];
  [sample startDate];
  v12 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

  v13 = MEMORY[0x277CBEAA8];
  sample2 = [v10 sample];
  [sample2 endDate];
  v15 = [v13 dateWithTimeIntervalSinceReferenceDate:?];

  v16 = MEMORY[0x277CCAD78];
  sourceUUID = [v10 sourceUUID];
  v18 = [v16 hk_UUIDWithData:sourceUUID];

  v19 = [MEMORY[0x277CCDDC8] _fitnessFriendActivitySnapshotWithSnapshotIndex:objc_msgSend(v10 startDate:"snapshotIndex") endDate:v12 sourceUUID:{v15, v18}];
  [v19 setFriendUUID:v9];

  [v19 setSnapshotUploadedDate:v8];
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "timeZoneOffsetFromUTCForNoon")}];
  [v19 setTimeZoneOffsetFromUTCForNoon:v20];

  [v10 energyBurned];
  [v19 setEnergyBurned:?];
  [v10 energyBurnedGoal];
  [v19 setEnergyBurnedGoal:?];
  [v10 mmv];
  [v19 setMmv:?];
  [v10 mmg];
  [v19 setMmg:?];
  [v10 briskMinutes];
  [v19 setBriskMinutes:?];
  [v10 briskMinutesGoal];
  [v19 setBriskMinutesGoal:?];
  [v10 activeHours];
  [v19 setActiveHours:?];
  [v10 activeHoursGoal];
  [v19 setActiveHoursGoal:?];
  [v10 walkingAndRunningDistance];
  [v19 setWalkingAndRunningDistance:?];
  [v10 stepCount];
  [v19 setStepCount:?];
  [v10 pushCount];
  [v19 setPushCount:?];
  [v19 setWheelchairUse:{objc_msgSend(v10, "wheelchairUse")}];
  v21 = [v10 amm];

  [v19 setAmm:v21];

  return v19;
}

+ (void)fitnessFriendActivitySnapshotWithRecord:()CloudKitCodingSupport friendUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fitnessFriendActivitySnapshotWithRecord:()CloudKitCodingSupport friendUUID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end