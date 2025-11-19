@interface MSAnalytics
+ (void)sendConfigEvent:(id)a3;
+ (void)sendPrimaryUserUpdatedOn:(id)a3;
+ (void)sendRemovalEvent:(id)a3;
+ (void)sendServiceEvent:(id)a3;
+ (void)sendServiceRequestLapseEvent:(id)a3;
+ (void)sendSetupEvent:(id)a3;
@end

@implementation MSAnalytics

+ (void)sendSetupEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 eventName];
  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

+ (void)sendServiceEvent:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 eventType] == 2)
  {
    v17[0] = @"duration";
    v4 = MEMORY[0x277CCABB0];
    v5 = [v3 stopwatch];
    v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "elapsedTimeMS")}];
    v18[0] = v6;
    v17[1] = @"didSucceed";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "didSucceed")}];
    v18[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v15[0] = @"service";
    v5 = [v3 serviceID];
    v6 = [v5 UUIDString];
    v16[0] = v6;
    v15[1] = @"duration";
    v9 = MEMORY[0x277CCABB0];
    v7 = [v3 stopwatch];
    v10 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v7, "elapsedTimeMS")}];
    v16[1] = v10;
    v15[2] = @"didSucceed";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "didSucceed")}];
    v16[2] = v11;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  }

  v12 = [v3 eventName];

  v13 = v8;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)sendServiceRequestLapseEvent:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"service";
  v3 = a3;
  v4 = [v3 serviceID];
  v15[0] = v4;
  v14[1] = @"durationBetweenRequestAndRecordCreation";
  v5 = MEMORY[0x277CCABB0];
  [v3 durationBetweenRequestAndRecordCreation];
  v6 = [v5 numberWithDouble:?];
  v15[1] = v6;
  v14[2] = @"durationBetweenRequestAndReadyToUse";
  v7 = MEMORY[0x277CCABB0];
  [v3 durationBetweenRequestAndReadyToUse];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = v11;
  AnalyticsSendEventLazy();

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)sendRemovalEvent:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"service";
  v3 = [a3 serviceId];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)sendConfigEvent:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"service";
  v3 = [a3 serviceId];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)sendPrimaryUserUpdatedOn:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"automatic";
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isAutomatic")}];
  v13[0] = v5;
  v12[1] = @"isOwner";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "changedToHomeOwner")}];
  v13[1] = v6;
  v12[2] = @"otherAccount";
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 changedToUserNotInHome];

  v9 = [v7 numberWithBool:v8];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  AnalyticsSendEvent();
  v11 = *MEMORY[0x277D85DE8];
}

@end