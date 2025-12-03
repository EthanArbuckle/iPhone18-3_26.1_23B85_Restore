@interface ATXBedtimeFocusModeEventProvider
- (ATXBedtimeFocusModeEventProvider)init;
- (id)biomePublisherWithBookmark:(id)bookmark;
@end

@implementation ATXBedtimeFocusModeEventProvider

- (ATXBedtimeFocusModeEventProvider)init
{
  v3.receiver = self;
  v3.super_class = ATXBedtimeFocusModeEventProvider;
  return [(ATXModeTransitionModeEventProvider *)&v3 initWithMode:5];
}

- (id)biomePublisherWithBookmark:(id)bookmark
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_opt_new();
  v6 = [currentCalendar dateBySettingHour:22 minute:0 second:0 ofDate:v5 options:0];

  v7 = objc_opt_new();
  v8 = [currentCalendar dateBySettingHour:23 minute:59 second:0 ofDate:v7 options:0];

  v9 = [(ATXModeTransitionModeEventProvider *)self bmStoreEventsForLast61DaysWithStartDateToday:v6 endDateToday:v8 includeWeekends:1 includeHolidays:1];
  v10 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:v9];

  return v10;
}

@end