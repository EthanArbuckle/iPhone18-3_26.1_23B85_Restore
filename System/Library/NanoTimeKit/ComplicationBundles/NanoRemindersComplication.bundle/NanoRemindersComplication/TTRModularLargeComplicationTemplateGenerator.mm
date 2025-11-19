@interface TTRModularLargeComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (CLKComplicationTemplate)templateForNoScheduledReminders;
- (id)_headerTextProviderForReminder:(id)a3;
- (id)_templateForOverdueCount:(int64_t)a3;
- (id)_templateForReminder:(id)a3;
- (id)_templateWithBody1TextProvider:(id)a3;
- (id)_templateWithHeaderTextProvider:(id)a3 body1TextProvider:(id)a4;
- (id)templateForTimelineModelEntry:(id)a3;
@end

@implementation TTRModularLargeComplicationTemplateGenerator

- (CLKComplicationTemplate)lockedTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Unlock to view" value:@"Unlock to view" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v5];

  return v6;
}

- (CLKComplicationTemplate)privacyTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v5];

  return v6;
}

- (id)templateForTimelineModelEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 overdueCount];
  v6 = [v4 representativeReminder];

  if (v6)
  {
    v7 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateForReminder:v6];
  }

  else
  {
    if (v5 < 1)
    {
      [(TTRModularLargeComplicationTemplateGenerator *)self templateForNoScheduledReminders];
    }

    else
    {
      [(TTRModularLargeComplicationTemplateGenerator *)self _templateForOverdueCount:v5];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (id)_templateWithHeaderTextProvider:(id)a3 body1TextProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CLKComplicationTemplateModularLargeStandardBody alloc] initWithHeaderImageProvider:0 headerTextProvider:v6 body1TextProvider:v5];

  v8 = +[TTRComplicationAsset tintColor];
  [v7 setTintColor:v8];

  return v7;
}

- (id)_templateWithBody1TextProvider:(id)a3
{
  v4 = a3;
  v5 = +[CLKTextProvider ttr_remindersAppNameTextProvider];
  v6 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithHeaderTextProvider:v5 body1TextProvider:v4];

  return v6;
}

- (id)_templateForOverdueCount:(int64_t)a3
{
  v5 = RemindersUICoreBundleGet();
  v6 = [v5 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [CLKTextProvider textProviderWithFormat:v6, v7];
  v9 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v8];

  return v9;
}

- (id)_headerTextProviderForReminder:(id)a3
{
  v3 = a3;
  v4 = [v3 dueDate];
  v5 = [v4 precision];

  if (v5 == &dword_0 + 1)
  {
    v6 = TTRComplicationCalendarCreate();
    v4 = [v3 makeDueTimeTextProviderUsingCalendar:v6 dropMinutesForRoundHours:0];
  }

  else if (!v5)
  {
    v4 = +[CLKTextProvider ttr_remindersTodayTextProvider];
  }

  return v4;
}

- (id)_templateForReminder:(id)a3
{
  v4 = a3;
  v5 = [(TTRModularLargeComplicationTemplateGenerator *)self _headerTextProviderForReminder:v4];
  v6 = [v4 title];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_10758;
  }

  v8 = [CLKSimpleTextProvider textProviderWithText:v7];
  v9 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithHeaderTextProvider:v5 body1TextProvider:v8];

  return v9;
}

- (CLKComplicationTemplate)templateForNoScheduledReminders
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Today complete" value:@"Today complete" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v5];

  return v6;
}

@end