@interface ATXDigestOnboardingLoggingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXDigestOnboardingLoggingEvent)initWithProto:(id)a3;
- (ATXDigestOnboardingLoggingEvent)initWithProtoData:(id)a3;
- (ATXDigestOnboardingLoggingEvent)initWithSessionUUID:(id)a3 entrySource:(int)a4 digestOnboardingOutcome:(int)a5 finalUIShown:(int)a6 didSelectShowMore:(BOOL)a7 timeTaken:(double)a8 deliveryTimes:(id)a9;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingLoggingEvent

- (ATXDigestOnboardingLoggingEvent)initWithSessionUUID:(id)a3 entrySource:(int)a4 digestOnboardingOutcome:(int)a5 finalUIShown:(int)a6 didSelectShowMore:(BOOL)a7 timeTaken:(double)a8 deliveryTimes:(id)a9
{
  v17 = a3;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = ATXDigestOnboardingLoggingEvent;
  v19 = [(ATXDigestOnboardingLoggingEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionUUID, a3);
    v20->_entrySource = a4;
    v20->_digestOnboardingOutcome = a5;
    v20->_finalUIShown = a6;
    v20->_didSelectShowMore = a7;
    v20->_timeTaken = a8;
    objc_storeStrong(&v20->_deliveryTimes, a9);
  }

  return v20;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (ATXDigestOnboardingLoggingEvent)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBDigestOnboardingLoggingEvent alloc] initWithData:v4];

  v6 = [(ATXDigestOnboardingLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXDigestOnboardingLoggingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXDigestOnboardingLoggingEvent)initWithProto:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = self;
      v31 = v4;
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E696AFB0]);
      v7 = [v5 sessionUUID];
      v28 = [v6 initWithUUIDString:v7];

      v27 = [v5 entrySource];
      v26 = [v5 digestOnboardingOutcome];
      v25 = [v5 finalUIShown];
      v24 = [v5 didSelectShowMore];
      [v5 timeTaken];
      v9 = v8;
      v10 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = v5;
      v11 = [v5 deliveryTimes];
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v33;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v32 + 1) + 8 * i);
            v17 = objc_opt_new();
            v18 = [v16 componentsSeparatedByString:@":"];
            v19 = [v18 objectAtIndexedSubscript:0];
            [v17 setHour:{objc_msgSend(v19, "integerValue")}];

            v20 = [v18 objectAtIndexedSubscript:1];
            [v17 setMinute:{objc_msgSend(v20, "integerValue")}];

            [v10 addObject:v17];
          }

          v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v13);
      }

      self = [(ATXDigestOnboardingLoggingEvent *)v30 initWithSessionUUID:v28 entrySource:v27 digestOnboardingOutcome:v26 finalUIShown:v25 didSelectShowMore:v24 timeTaken:v10 deliveryTimes:v9];
      v21 = self;
      v4 = v31;
      v22 = v29;
    }

    else
    {
      v22 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(ATXDigestTimeline *)self initWithProto:v22];
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)proto
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:v4];

  [v3 setEntrySource:self->_entrySource];
  [v3 setDigestOnboardingOutcome:self->_digestOnboardingOutcome];
  [v3 setFinalUIShown:self->_finalUIShown];
  [v3 setDidSelectShowMore:self->_didSelectShowMore];
  v13 = v3;
  [v3 setTimeTaken:self->_timeTaken];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_deliveryTimes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", objc_msgSend(*(*(&v14 + 1) + 8 * i), "hour"), objc_msgSend(*(*(&v14 + 1) + 8 * i), "minute")];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v13 setDeliveryTimes:v5];

  return v13;
}

@end