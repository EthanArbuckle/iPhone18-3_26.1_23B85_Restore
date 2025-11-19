@interface ATXFakeCoreAnalyticsLogger
+ (BOOL)hasReceivedEventWithMetricName:(id)a3 partialDictionary:(id)a4;
+ (id)sharedInstance;
+ (void)resetEvents;
- (ATXFakeCoreAnalyticsLogger)init;
- (BOOL)hasReceivedEventWithMetricName:(id)a3 partialDictionary:(id)a4;
- (BOOL)partialDictionaryMatches:(id)a3 eventDictionary:(id)a4;
- (void)sendEventWithMetricName:(id)a3 eventDictionary:(id)a4;
@end

@implementation ATXFakeCoreAnalyticsLogger

- (ATXFakeCoreAnalyticsLogger)init
{
  v6.receiver = self;
  v6.super_class = ATXFakeCoreAnalyticsLogger;
  v2 = [(ATXFakeCoreAnalyticsLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    loggedEvents = v2->_loggedEvents;
    v2->_loggedEvents = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[ATXFakeCoreAnalyticsLogger sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_3;

  return v3;
}

void __44__ATXFakeCoreAnalyticsLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_3;
  sharedInstance__pasExprOnceResult_3 = v1;

  objc_autoreleasePoolPop(v0);
}

+ (void)resetEvents
{
  v2 = [a1 sharedInstance];
  [v2 resetEvents];
}

- (void)sendEventWithMetricName:(id)a3 eventDictionary:(id)a4
{
  v5 = [MEMORY[0x277D42648] tupleWithFirst:a3 second:a4];
  [(NSMutableArray *)self->_loggedEvents addObject:v5];
}

- (BOOL)partialDictionaryMatches:(id)a3 eventDictionary:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v20}];
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16 || ![v13 isEqual:v14])
        {

          v17 = 0;
          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v17 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)hasReceivedEventWithMetricName:(id)a3 partialDictionary:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_loggedEvents;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 first];
        if ([v6 isEqualToString:v14])
        {
          v15 = [v13 second];
          v16 = [(ATXFakeCoreAnalyticsLogger *)self partialDictionaryMatches:v7 eventDictionary:v15];

          if (v16)
          {
            v17 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)hasReceivedEventWithMetricName:(id)a3 partialDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedInstance];
  v9 = [v8 hasReceivedEventWithMetricName:v7 partialDictionary:v6];

  return v9;
}

@end