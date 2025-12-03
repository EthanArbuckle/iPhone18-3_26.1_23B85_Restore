@interface TTRModularLargeComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (CLKComplicationTemplate)templateForNoScheduledReminders;
- (id)_headerTextProviderForReminder:(id)reminder;
- (id)_templateForOverdueCount:(int64_t)count;
- (id)_templateForReminder:(id)reminder;
- (id)_templateWithBody1TextProvider:(id)provider;
- (id)_templateWithHeaderTextProvider:(id)provider body1TextProvider:(id)textProvider;
- (id)templateForTimelineModelEntry:(id)entry;
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

- (id)templateForTimelineModelEntry:(id)entry
{
  entryCopy = entry;
  overdueCount = [entryCopy overdueCount];
  representativeReminder = [entryCopy representativeReminder];

  if (representativeReminder)
  {
    v7 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateForReminder:representativeReminder];
  }

  else
  {
    if (overdueCount < 1)
    {
      [(TTRModularLargeComplicationTemplateGenerator *)self templateForNoScheduledReminders];
    }

    else
    {
      [(TTRModularLargeComplicationTemplateGenerator *)self _templateForOverdueCount:overdueCount];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (id)_templateWithHeaderTextProvider:(id)provider body1TextProvider:(id)textProvider
{
  textProviderCopy = textProvider;
  providerCopy = provider;
  v7 = [[CLKComplicationTemplateModularLargeStandardBody alloc] initWithHeaderImageProvider:0 headerTextProvider:providerCopy body1TextProvider:textProviderCopy];

  v8 = +[TTRComplicationAsset tintColor];
  [v7 setTintColor:v8];

  return v7;
}

- (id)_templateWithBody1TextProvider:(id)provider
{
  providerCopy = provider;
  v5 = +[CLKTextProvider ttr_remindersAppNameTextProvider];
  v6 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithHeaderTextProvider:v5 body1TextProvider:providerCopy];

  return v6;
}

- (id)_templateForOverdueCount:(int64_t)count
{
  v5 = RemindersUICoreBundleGet();
  v6 = [v5 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v7 = [NSNumber numberWithInteger:count];
  v8 = [CLKTextProvider textProviderWithFormat:v6, v7];
  v9 = [(TTRModularLargeComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v8];

  return v9;
}

- (id)_headerTextProviderForReminder:(id)reminder
{
  reminderCopy = reminder;
  dueDate = [reminderCopy dueDate];
  precision = [dueDate precision];

  if (precision == &dword_0 + 1)
  {
    v6 = TTRComplicationCalendarCreate();
    dueDate = [reminderCopy makeDueTimeTextProviderUsingCalendar:v6 dropMinutesForRoundHours:0];
  }

  else if (!precision)
  {
    dueDate = +[CLKTextProvider ttr_remindersTodayTextProvider];
  }

  return dueDate;
}

- (id)_templateForReminder:(id)reminder
{
  reminderCopy = reminder;
  v5 = [(TTRModularLargeComplicationTemplateGenerator *)self _headerTextProviderForReminder:reminderCopy];
  title = [reminderCopy title];

  if (title)
  {
    v7 = title;
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