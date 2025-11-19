@interface _HKFitnessFriendAchievement(CloudKitCodingSupport)
+ (id)_fitnessFriendAchievementWithCodableAchievement:()CloudKitCodingSupport friendUUID:;
+ (id)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:;
- (ASCodableCloudKitAchievement)codableAchievement;
- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:;
@end

@implementation _HKFitnessFriendAchievement(CloudKitCodingSupport)

- (ASCodableCloudKitAchievement)codableAchievement
{
  v2 = objc_alloc_init(ASCodableCloudKitAchievement);
  v3 = _ASCodableCloudKitSampleForSample(a1);
  [(ASCodableCloudKitAchievement *)v2 setSample:v3];

  v4 = [a1 completedDate];
  [v4 timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitAchievement *)v2 setCompletedDate:?];

  v5 = [a1 value];
  v6 = [v5 objCType];
  if (v6)
  {
    v7 = *v6 & 0xFD;

    if (v7 == 100)
    {
      v8 = [a1 value];
      [v8 doubleValue];
      [(ASCodableCloudKitAchievement *)v2 setDoubleValue:?];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [a1 value];
  -[ASCodableCloudKitAchievement setIntValue:](v2, "setIntValue:", [v8 longLongValue]);
LABEL_6:

  v9 = [a1 templateUniqueName];
  [(ASCodableCloudKitAchievement *)v2 setWorkoutActivityType:ACHWorkoutActivityTypeForTemplateUniqueName()];

  v10 = [a1 templateUniqueName];
  v11 = ACHLegacyDefinitionIdentifierForTemplateUniqueName();
  [(ASCodableCloudKitAchievement *)v2 setDefinitionIdentifier:v11];

  v12 = [a1 templateUniqueName];
  [(ASCodableCloudKitAchievement *)v2 setTemplateUniqueName:v12];

  return v2;
}

- (id)recordWithZoneID:()CloudKitCodingSupport recordEncryptionType:
{
  v6 = MEMORY[0x277CBC5D0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = MEMORY[0x277CCACA8];
  v10 = [a1 UUID];
  v11 = [v9 stringWithFormat:@"%@-%@", @"ActivitySharingAchievement", v10];
  v12 = [v8 initWithRecordName:v11 zoneID:v7];

  v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingAchievement" recordID:v12];
  _ASUpdateSchemaVersionOnRecord(2, v13, a4);
  v14 = [a1 codableAchievement];
  v15 = [v14 data];
  v16 = [v13 encryptedValues];
  [v16 setObject:v15 forKeyedSubscript:@"EncryptedData"];

  return v13;
}

+ (id)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:
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
      v12 = [[ASCodableCloudKitAchievement alloc] initWithData:v10];
      v11 = [a1 fitnessFriendAchievementWithCodableAchievement:v12 friendUUID:v7];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[_HKFitnessFriendAchievement(CloudKitCodingSupport) fitnessFriendAchievementWithRecord:friendUUID:];
      }

      v11 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[_HKFitnessFriendAchievement(CloudKitCodingSupport) fitnessFriendAchievementWithRecord:friendUUID:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_fitnessFriendAchievementWithCodableAchievement:()CloudKitCodingSupport friendUUID:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEAA8];
  [v5 completedDate];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  if ([v5 hasTemplateUniqueName])
  {
    v9 = [v5 templateUniqueName];
    if (v9)
    {
LABEL_3:
      v10 = [v5 hasDoubleValue];
      v11 = MEMORY[0x277CCABB0];
      if (v10)
      {
        [v5 doubleValue];
        [v11 numberWithDouble:?];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "intValue")}];
      }
      v15 = ;
      v14 = [MEMORY[0x277CCDDC0] achievementWithTemplateUniqueName:v9 completedDate:v8 value:v15 friendUUID:v6];
      v16 = MEMORY[0x277CCAD78];
      v17 = [v5 sample];
      v18 = [v17 uuid];
      v19 = [v16 hk_UUIDWithData:v18];

      [v14 _setUUID:v19];
      goto LABEL_11;
    }
  }

  else
  {
    v12 = [v5 definitionIdentifier];
    [v5 workoutActivityType];
    v9 = ACHTemplateUniqueNameForLegacyAchievementInfo();

    if (v9)
    {
      goto LABEL_3;
    }
  }

  ASLoggingInitialize();
  v13 = ASLogCloudKit;
  if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
  {
    [_HKFitnessFriendAchievement(CloudKitCodingSupport) _fitnessFriendAchievementWithCodableAchievement:v13 friendUUID:?];
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (void)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fitnessFriendAchievementWithRecord:()CloudKitCodingSupport friendUUID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_fitnessFriendAchievementWithCodableAchievement:()CloudKitCodingSupport friendUUID:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6() definitionIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v4, v5, "Codable achievement had no templateUniqueName and an unknown or missing definitionIdentifier: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end