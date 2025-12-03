@interface MSAnalytics
+ (void)sendConfigEvent:(id)event;
+ (void)sendPrimaryUserUpdatedOn:(id)on;
+ (void)sendRemovalEvent:(id)event;
+ (void)sendServiceEvent:(id)event;
+ (void)sendServiceRequestLapseEvent:(id)event;
+ (void)sendSetupEvent:(id)event;
@end

@implementation MSAnalytics

+ (void)sendSetupEvent:(id)event
{
  eventCopy = event;
  eventName = [eventCopy eventName];
  v6 = eventCopy;
  v5 = eventCopy;
  AnalyticsSendEventLazy();
}

+ (void)sendServiceEvent:(id)event
{
  v18[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy eventType] == 2)
  {
    v17[0] = @"duration";
    v4 = MEMORY[0x277CCABB0];
    stopwatch = [eventCopy stopwatch];
    uUIDString = [v4 numberWithUnsignedLongLong:{objc_msgSend(stopwatch, "elapsedTimeMS")}];
    v18[0] = uUIDString;
    v17[1] = @"didSucceed";
    stopwatch2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "didSucceed")}];
    v18[1] = stopwatch2;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v15[0] = @"service";
    stopwatch = [eventCopy serviceID];
    uUIDString = [stopwatch UUIDString];
    v16[0] = uUIDString;
    v15[1] = @"duration";
    v9 = MEMORY[0x277CCABB0];
    stopwatch2 = [eventCopy stopwatch];
    v10 = [v9 numberWithUnsignedLongLong:{objc_msgSend(stopwatch2, "elapsedTimeMS")}];
    v16[1] = v10;
    v15[2] = @"didSucceed";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "didSucceed")}];
    v16[2] = v11;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  }

  eventName = [eventCopy eventName];

  v13 = v8;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)sendServiceRequestLapseEvent:(id)event
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"service";
  eventCopy = event;
  serviceID = [eventCopy serviceID];
  v15[0] = serviceID;
  v14[1] = @"durationBetweenRequestAndRecordCreation";
  v5 = MEMORY[0x277CCABB0];
  [eventCopy durationBetweenRequestAndRecordCreation];
  v6 = [v5 numberWithDouble:?];
  v15[1] = v6;
  v14[2] = @"durationBetweenRequestAndReadyToUse";
  v7 = MEMORY[0x277CCABB0];
  [eventCopy durationBetweenRequestAndReadyToUse];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = v11;
  AnalyticsSendEventLazy();

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)sendRemovalEvent:(id)event
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"service";
  serviceId = [event serviceId];
  v8[0] = serviceId;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)sendConfigEvent:(id)event
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"service";
  serviceId = [event serviceId];
  v8[0] = serviceId;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = v4;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)sendPrimaryUserUpdatedOn:(id)on
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"automatic";
  v3 = MEMORY[0x277CCABB0];
  onCopy = on;
  v5 = [v3 numberWithBool:{objc_msgSend(onCopy, "isAutomatic")}];
  v13[0] = v5;
  v12[1] = @"isOwner";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(onCopy, "changedToHomeOwner")}];
  v13[1] = v6;
  v12[2] = @"otherAccount";
  v7 = MEMORY[0x277CCABB0];
  changedToUserNotInHome = [onCopy changedToUserNotInHome];

  v9 = [v7 numberWithBool:changedToUserNotInHome];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  AnalyticsSendEvent();
  v11 = *MEMORY[0x277D85DE8];
}

@end