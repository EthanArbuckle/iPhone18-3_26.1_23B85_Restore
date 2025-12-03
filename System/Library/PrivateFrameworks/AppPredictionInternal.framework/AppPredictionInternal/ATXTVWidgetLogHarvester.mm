@interface ATXTVWidgetLogHarvester
+ (id)_stringForWidgetSuggestionEventType:(int64_t)type;
- (ATXTVWidgetLogHarvester)init;
- (id)shouldSuggestTVWidgetWithDefaults:(id)defaults;
- (void)generateTVWidgetMetrics;
@end

@implementation ATXTVWidgetLogHarvester

- (ATXTVWidgetLogHarvester)init
{
  v6.receiver = self;
  v6.super_class = ATXTVWidgetLogHarvester;
  v2 = [(ATXTVWidgetLogHarvester *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tvWidgetMetrics = v2->_tvWidgetMetrics;
    v2->_tvWidgetMetrics = v3;
  }

  return v2;
}

- (void)generateTVWidgetMetrics
{
  if (![MEMORY[0x277D42590] isiPad])
  {
    return;
  }

  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v23 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v23 objectForKey:*MEMORY[0x277CEBD78]];
  v5 = [(ATXTVWidgetLogHarvester *)self shouldSuggestTVWidgetWithDefaults:v23];
  v6 = v5;
  if (!v5)
  {
    v7 = @"eligibilityUnknown";
    goto LABEL_7;
  }

  if (([v5 BOOLValue] & 1) == 0)
  {
    v7 = @"ineligible";
LABEL_7:
    [(NSMutableDictionary *)self->_tvWidgetMetrics setObject:v7 forKeyedSubscript:@"suggestionStatus"];
  }

  if ([v6 BOOLValue])
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [(NSMutableDictionary *)self->_tvWidgetMetrics setObject:@"eligibleButNotSuggested" forKeyedSubscript:@"suggestionStatus"];
    v9 = [v23 integerForKey:*MEMORY[0x277CEBB98]];
    if (v9 <= 0)
    {
      v12 = objc_opt_new();
    }

    else
    {
      v10 = v9;
      v11 = [objc_opt_class() _stringForWidgetSuggestionEventType:v9];
      [(NSMutableDictionary *)self->_tvWidgetMetrics setObject:v11 forKeyedSubscript:@"suggestionStatus"];

      v12 = objc_opt_new();
      if (v10 == 1)
      {
        v13 = MEMORY[0x277CBEAA8];
        v14 = [v23 objectForKey:*MEMORY[0x277CEBB88]];
        v15 = [v13 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v14, "integerValue")}];

        v16 = MEMORY[0x277CCABB0];
        [v12 convertDate:v15 toDeltaFromSkyUpdateDate:v4];
        v17 = [v16 numberWithDouble:?];
        [(NSMutableDictionary *)self->_tvWidgetMetrics setObject:v17 forKeyedSubscript:@"acceptedDate"];
      }
    }

    v18 = [v23 objectForKey:*MEMORY[0x277CEBB90]];
    v19 = v18;
    if (v18)
    {
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v18, "integerValue")}];
      v21 = MEMORY[0x277CCABB0];
      [v12 convertDate:v20 toDeltaFromSkyUpdateDate:v4];
      v22 = [v21 numberWithDouble:?];
      [(NSMutableDictionary *)self->_tvWidgetMetrics setObject:v22 forKeyedSubscript:@"removedDate"];
    }
  }
}

- (id)shouldSuggestTVWidgetWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = [defaultsCopy objectForKey:*MEMORY[0x277CEBB50]];
  v5 = [defaultsCopy objectForKey:*MEMORY[0x277CEBB60]];
  v6 = [defaultsCopy objectForKey:*MEMORY[0x277CEBB68]];
  v7 = v6;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v5 == 0)
  {
    v10 = [defaultsCopy objectForKey:*MEMORY[0x277CEBB58]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v10;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277CEB478];
    [v4 doubleValue];
    v14 = v13;
    [v5 doubleValue];
    v16 = v15;
    [v7 doubleValue];
    v18 = [v11 numberWithBool:{objc_msgSend(v12, "shouldSuggestTVWithAppLaunchCount:intentDonationCount:upcomingMediaCount:", v14, v16, v17)}];
  }

  return v18;
}

+ (id)_stringForWidgetSuggestionEventType:(int64_t)type
{
  if (type > 3)
  {
    return &stru_2839A6058;
  }

  else
  {
    return off_27859FC98[type];
  }
}

@end