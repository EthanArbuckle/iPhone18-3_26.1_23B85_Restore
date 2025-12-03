@interface ATXDigestOnboardingLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXDigestOnboardingLoggingEvent)initWithProto:(id)proto;
- (ATXDigestOnboardingLoggingEvent)initWithProtoData:(id)data;
- (ATXDigestOnboardingLoggingEvent)initWithSessionUUID:(id)d entrySource:(int)source digestOnboardingOutcome:(int)outcome finalUIShown:(int)shown didSelectShowMore:(BOOL)more timeTaken:(double)taken deliveryTimes:(id)times;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingLoggingEvent

- (ATXDigestOnboardingLoggingEvent)initWithSessionUUID:(id)d entrySource:(int)source digestOnboardingOutcome:(int)outcome finalUIShown:(int)shown didSelectShowMore:(BOOL)more timeTaken:(double)taken deliveryTimes:(id)times
{
  dCopy = d;
  timesCopy = times;
  v22.receiver = self;
  v22.super_class = ATXDigestOnboardingLoggingEvent;
  v19 = [(ATXDigestOnboardingLoggingEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionUUID, d);
    v20->_entrySource = source;
    v20->_digestOnboardingOutcome = outcome;
    v20->_finalUIShown = shown;
    v20->_didSelectShowMore = more;
    v20->_timeTaken = taken;
    objc_storeStrong(&v20->_deliveryTimes, times);
  }

  return v20;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (ATXDigestOnboardingLoggingEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[ATXPBDigestOnboardingLoggingEvent alloc] initWithData:dataCopy];

  v6 = [(ATXDigestOnboardingLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXDigestOnboardingLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXDigestOnboardingLoggingEvent)initWithProto:(id)proto
{
  v37 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v31 = protoCopy;
      v5 = protoCopy;
      v6 = objc_alloc(MEMORY[0x1E696AFB0]);
      sessionUUID = [v5 sessionUUID];
      v28 = [v6 initWithUUIDString:sessionUUID];

      entrySource = [v5 entrySource];
      digestOnboardingOutcome = [v5 digestOnboardingOutcome];
      finalUIShown = [v5 finalUIShown];
      didSelectShowMore = [v5 didSelectShowMore];
      [v5 timeTaken];
      v9 = v8;
      v10 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = v5;
      deliveryTimes = [v5 deliveryTimes];
      v12 = [deliveryTimes countByEnumeratingWithState:&v32 objects:v36 count:16];
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
              objc_enumerationMutation(deliveryTimes);
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

          v13 = [deliveryTimes countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v13);
      }

      self = [(ATXDigestOnboardingLoggingEvent *)selfCopy initWithSessionUUID:v28 entrySource:entrySource digestOnboardingOutcome:digestOnboardingOutcome finalUIShown:finalUIShown didSelectShowMore:didSelectShowMore timeTaken:v10 deliveryTimes:v9];
      selfCopy2 = self;
      protoCopy = v31;
      v22 = v29;
    }

    else
    {
      v22 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(ATXDigestTimeline *)self initWithProto:v22];
      }

      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)proto
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:uUIDString];

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