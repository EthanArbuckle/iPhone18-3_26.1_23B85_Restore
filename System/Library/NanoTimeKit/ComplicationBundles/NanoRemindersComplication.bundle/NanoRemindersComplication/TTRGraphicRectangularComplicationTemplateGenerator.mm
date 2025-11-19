@interface TTRGraphicRectangularComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (CLKComplicationTemplateGraphicRectangularStandardBody)templateForNoScheduledReminders;
- (id)_templateForOverdueCount:(int64_t)a3;
- (id)_templateForReminder:(id)a3;
- (id)_templateWithBody1TextProvider:(id)a3;
- (id)templateForTimelineModelEntry:(id)a3;
@end

@implementation TTRGraphicRectangularComplicationTemplateGenerator

- (CLKComplicationTemplate)lockedTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Unlock to view" value:@"Unlock to view" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicRectangularComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v5];

  return v6;
}

- (CLKComplicationTemplate)privacyTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicRectangularComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v5];

  return v6;
}

- (id)templateForTimelineModelEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 overdueCount];
  v6 = [v4 representativeReminder];

  if (v6)
  {
    v7 = [(TTRGraphicRectangularComplicationTemplateGenerator *)self _templateForReminder:v6];
  }

  else
  {
    if (v5 < 1)
    {
      [(TTRGraphicRectangularComplicationTemplateGenerator *)self templateForNoScheduledReminders];
    }

    else
    {
      [(TTRGraphicRectangularComplicationTemplateGenerator *)self _templateForOverdueCount:v5];
    }
    v7 = ;
  }

  v8 = v7;
  v9 = +[TTRComplicationAsset tintColor];
  v10 = [v8 headerTextProvider];
  [v10 setTintColor:v9];

  return v8;
}

- (id)_templateForOverdueCount:(int64_t)a3
{
  v4 = RemindersUICoreBundleGet();
  v5 = [v4 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [CLKTextProvider textProviderWithFormat:v5, v6];

  v8 = [CLKComplicationTemplateGraphicRectangularStandardBody alloc];
  v9 = +[CLKTextProvider ttr_remindersAppNameTextProvider];
  v10 = [v8 initWithHeaderImageProvider:0 headerTextProvider:v9 body1TextProvider:v7];

  return v10;
}

- (id)_templateForReminder:(id)a3
{
  v3 = a3;
  v4 = [v3 dueDate];
  v5 = [v4 precision];

  if (v5 == &dword_0 + 1)
  {
    v7 = TTRComplicationCalendarCreate();
    v6 = [v3 makeDueTimeTextProviderUsingCalendar:v7 dropMinutesForRoundHours:0];
  }

  else if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = +[CLKTextProvider ttr_remindersTodayTextProvider];
  }

  v8 = [v3 title];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10758;
  }

  v11 = [CLKSimpleTextProvider textProviderWithText:v10];

  v12 = [[CLKComplicationTemplateGraphicRectangularStandardBody alloc] initWithHeaderImageProvider:0 headerTextProvider:v6 body1TextProvider:v11];

  return v12;
}

- (id)_templateWithBody1TextProvider:(id)a3
{
  v3 = a3;
  v4 = [CLKComplicationTemplateGraphicRectangularStandardBody alloc];
  v5 = +[CLKTextProvider ttr_remindersAppNameTextProvider];
  v6 = [v4 initWithHeaderImageProvider:0 headerTextProvider:v5 body1TextProvider:v3];

  return v6;
}

- (CLKComplicationTemplateGraphicRectangularStandardBody)templateForNoScheduledReminders
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Today complete" value:@"Today complete" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicRectangularComplicationTemplateGenerator *)self _templateWithBody1TextProvider:v5];

  return v6;
}

@end