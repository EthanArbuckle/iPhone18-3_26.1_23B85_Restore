@interface ASNotificationEvent
+ (id)achievementCompletionEventWithAchievement:(id)a3;
+ (id)deletedWorkoutEventWithUUID:(id)a3;
+ (id)goalCompletionEventWithActivitySummary:(id)a3;
+ (id)notificationEventWithRecord:(id)a3 friendUUID:(id)a4;
+ (id)workoutCompletionEventWithWorkout:(id)a3;
- (NSString)description;
- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4;
@end

@implementation ASNotificationEvent

- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(ASNotificationEvent *)self type];
  v8 = [(ASNotificationEvent *)self triggerUUID];
  v9 = ASWorkoutNotificationRecordIDForType(v7, v8, v6);

  v10 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingEvent" recordID:v9];
  _ASUpdateSchemaVersionOnRecord(2, v10, a4);
  v11 = objc_alloc_init(ASCodableCloudKitNotificationEvent);
  v12 = [(ASNotificationEvent *)self date];
  [v12 timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitNotificationEvent *)v11 setDate:?];

  [(ASCodableCloudKitNotificationEvent *)v11 setType:[(ASNotificationEvent *)self type]];
  v13 = [(ASNotificationEvent *)self triggerUUID];
  v14 = [v13 hk_dataForUUIDBytes];
  [(ASCodableCloudKitNotificationEvent *)v11 setTriggerUUID:v14];

  [(ASCodableCloudKitNotificationEvent *)v11 setTriggerSnapshotIndex:[(ASNotificationEvent *)self triggerSnapshotIndex]];
  v15 = [(ASCodableCloudKitNotificationEvent *)v11 data];
  v16 = [v10 encryptedValues];
  [v16 setObject:v15 forKeyedSubscript:@"EncryptedData"];

  return v10;
}

+ (id)notificationEventWithRecord:(id)a3 friendUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_ASCloudKitSchemaVersionForRecord(v5) == 2)
  {
    v7 = [v5 encryptedValues];
    v8 = [v7 objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = [[ASCodableCloudKitNotificationEvent alloc] initWithData:v9];
      v10 = objc_alloc_init(ASNotificationEvent);
      v12 = MEMORY[0x277CBEAA8];
      [(ASCodableCloudKitNotificationEvent *)v11 date];
      v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
      [(ASNotificationEvent *)v10 setDate:v13];

      [(ASNotificationEvent *)v10 setType:[(ASCodableCloudKitNotificationEvent *)v11 type]];
      v14 = MEMORY[0x277CCAD78];
      v15 = [(ASCodableCloudKitNotificationEvent *)v11 triggerUUID];
      v16 = [v14 hk_UUIDWithData:v15];
      [(ASNotificationEvent *)v10 setTriggerUUID:v16];

      [(ASNotificationEvent *)v10 setTriggerSnapshotIndex:[(ASCodableCloudKitNotificationEvent *)v11 triggerSnapshotIndex]];
      [(ASNotificationEvent *)v10 setFriendUUID:v6];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASNotificationEvent(CloudKitCodingSupport) notificationEventWithRecord:friendUUID:];
      }

      v10 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASNotificationEvent(CloudKitCodingSupport) notificationEventWithRecord:friendUUID:];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)goalCompletionEventWithActivitySummary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:0];
  v5 = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:v5];

  [(ASNotificationEvent *)v4 setTriggerUUID:0];
  v6 = [v3 _activitySummaryIndex];

  [(ASNotificationEvent *)v4 setTriggerSnapshotIndex:v6];

  return v4;
}

+ (id)workoutCompletionEventWithWorkout:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:2];
  v5 = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:v5];

  v6 = [v3 UUID];
  [(ASNotificationEvent *)v4 setTriggerUUID:v6];

  v7 = [v3 endDate];

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = _HKActivityCacheDateComponentsFromDate();
  [(ASNotificationEvent *)v4 setTriggerSnapshotIndex:_HKCacheIndexFromDateComponents()];

  return v4;
}

+ (id)achievementCompletionEventWithAchievement:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:1];
  v5 = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:v5];

  v6 = [v3 completedDate];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = _HKActivityCacheDateComponentsFromDate();
  [(ASNotificationEvent *)v4 setTriggerSnapshotIndex:_HKCacheIndexFromDateComponents()];

  v9 = [MEMORY[0x277CCAD78] UUID];
  [(ASNotificationEvent *)v4 setTriggerUUID:v9];

  return v4;
}

+ (id)deletedWorkoutEventWithUUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASNotificationEvent);
  [(ASNotificationEvent *)v4 setType:3];
  v5 = [MEMORY[0x277CBEAA8] date];
  [(ASNotificationEvent *)v4 setDate:v5];

  [(ASNotificationEvent *)v4 setTriggerUUID:v3];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASNotificationEvent *)self type];
  v7 = [(ASNotificationEvent *)self date];
  v8 = [(ASNotificationEvent *)self triggerUUID];
  v9 = [(ASNotificationEvent *)self triggerSnapshotIndex];
  v10 = [(ASNotificationEvent *)self friendUUID];
  v11 = [v3 stringWithFormat:@"%@:%p type:%ld date:%@ triggerUUID:%@ triggerSnapshotIndex:%lld friendUUID:%@", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

@end