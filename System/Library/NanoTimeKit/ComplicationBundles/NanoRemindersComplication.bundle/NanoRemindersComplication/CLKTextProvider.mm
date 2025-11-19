@interface CLKTextProvider
+ (id)ttr_remindersAppNameTextProvider;
+ (id)ttr_remindersTodayTextProvider;
@end

@implementation CLKTextProvider

+ (id)ttr_remindersAppNameTextProvider
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];
  v4 = [CLKSimpleTextProvider textProviderWithText:v3];

  return v4;
}

+ (id)ttr_remindersTodayTextProvider
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"Today" value:@"Today" table:@"Localizable"];
  v4 = [CLKSimpleTextProvider textProviderWithText:v3];

  return v4;
}

@end