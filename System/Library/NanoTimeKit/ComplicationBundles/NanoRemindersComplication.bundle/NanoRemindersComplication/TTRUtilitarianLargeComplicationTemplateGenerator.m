@interface TTRUtilitarianLargeComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (CLKComplicationTemplate)templateForNoScheduledReminders;
- (id)_templateForOverdueCount:(int64_t)a3;
- (id)_templateForReminder:(id)a3;
- (id)templateForTimelineModelEntry:(id)a3;
@end

@implementation TTRUtilitarianLargeComplicationTemplateGenerator

- (CLKComplicationTemplate)lockedTemplate
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"UNLOCK TO VIEW" value:@"UNLOCK TO VIEW" table:@"Localizable"];
  v4 = [CLKSimpleTextProvider textProviderWithText:v3];

  v5 = [[CLKComplicationTemplateUtilitarianLargeFlat alloc] initWithTextProvider:v4];

  return v5;
}

- (CLKComplicationTemplate)privacyTemplate
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];
  v4 = [CLKSimpleTextProvider textProviderWithText:v3];

  v5 = [[CLKComplicationTemplateUtilitarianLargeFlat alloc] initWithTextProvider:v4];

  return v5;
}

- (id)templateForTimelineModelEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 overdueCount];
  v6 = [v4 representativeReminder];

  if (v6)
  {
    v7 = [(TTRUtilitarianLargeComplicationTemplateGenerator *)self _templateForReminder:v6];
  }

  else
  {
    if (v5 < 1)
    {
      [(TTRUtilitarianLargeComplicationTemplateGenerator *)self templateForNoScheduledReminders];
    }

    else
    {
      [(TTRUtilitarianLargeComplicationTemplateGenerator *)self _templateForOverdueCount:v5];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (id)_templateForOverdueCount:(int64_t)a3
{
  v4 = RemindersUICoreBundleGet();
  v5 = [v4 localizedStringForKey:@"COMPLICATION_%@ Reminders Overdue" value:@"%@ Reminders Overdue" table:@"PluralLocalizable"];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [NSString stringWithFormat:v5, v6];

  v8 = RemindersUICoreBundleGet();
  v9 = [v8 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v10 = [NSNumber numberWithInteger:a3];
  v11 = [NSString stringWithFormat:v9, v10];

  v12 = [CLKSimpleTextProvider textProviderWithText:v7 shortText:v11];
  v13 = [[CLKComplicationTemplateUtilitarianLargeFlat alloc] initWithTextProvider:v12];

  return v13;
}

- (id)_templateForReminder:(id)a3
{
  v3 = a3;
  v4 = TTRComplicationCalendarCreate();
  v5 = [v3 makeTitleAndExactDueDateTextProviderUsingCalendar:v4 dropMinutesForRoundHours:0];

  v6 = [[CLKComplicationTemplateUtilitarianLargeFlat alloc] initWithTextProvider:v5];

  return v6;
}

- (CLKComplicationTemplate)templateForNoScheduledReminders
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"No Reminders Due" value:@"No Reminders Due" table:@"Localizable"];
  v4 = [CLKSimpleTextProvider textProviderWithText:v3];

  v5 = [[CLKComplicationTemplateUtilitarianLargeFlat alloc] initWithTextProvider:v4];

  return v5;
}

@end