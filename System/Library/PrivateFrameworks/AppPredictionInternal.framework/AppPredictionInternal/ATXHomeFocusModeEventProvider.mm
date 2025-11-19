@interface ATXHomeFocusModeEventProvider
- (ATXHomeFocusModeEventProvider)init;
- (id)biomePublisherWithBookmark:(id)a3;
@end

@implementation ATXHomeFocusModeEventProvider

- (ATXHomeFocusModeEventProvider)init
{
  v3.receiver = self;
  v3.super_class = ATXHomeFocusModeEventProvider;
  return [(ATXModeTransitionModeEventProvider *)&v3 initWithMode:1];
}

- (id)biomePublisherWithBookmark:(id)a3
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_opt_new();
  v6 = [v4 dateBySettingHour:17 minute:0 second:0 ofDate:v5 options:0];

  v7 = objc_opt_new();
  v8 = [v4 dateBySettingHour:22 minute:0 second:0 ofDate:v7 options:0];

  v9 = objc_opt_new();
  v23 = [v4 dateBySettingHour:10 minute:0 second:0 ofDate:v9 options:0];

  v10 = objc_opt_new();
  v22 = [v4 dateBySettingHour:22 minute:0 second:0 ofDate:v10 options:0];

  v11 = -61;
  do
  {
    v12 = [v4 dateByAddingUnit:16 value:v11 + 1 toDate:v6 options:{0, v22}];
    v13 = [v4 dateByAddingUnit:16 value:v11 + 1 toDate:v8 options:0];
    if ([v4 isDateInWeekend:v12])
    {
      v14 = [v4 dateByAddingUnit:16 value:v11 + 1 toDate:v23 options:0];

      v15 = [v4 dateByAddingUnit:16 value:v11 + 1 toDate:v22 options:0];

      v13 = v15;
      v12 = v14;
    }

    v16 = [[ATXModeEvent alloc] initWithStartDate:v12 endDate:v13];
    v17 = objc_alloc(MEMORY[0x277CF1800]);
    [v12 timeIntervalSinceReferenceDate];
    v18 = [v17 initWithEventBody:v16 timestamp:?];
    [v3 addObject:v18];
  }

  while (!__CFADD__(v11++, 1));
  v20 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:v3];

  return v20;
}

@end