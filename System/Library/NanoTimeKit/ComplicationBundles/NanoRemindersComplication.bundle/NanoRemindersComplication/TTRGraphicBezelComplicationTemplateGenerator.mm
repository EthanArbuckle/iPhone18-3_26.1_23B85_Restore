@interface TTRGraphicBezelComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (TTRGraphicCircularComplicationTemplateGenerator)graphicCircularTemplateGenerator;
- (id)_templateWithTextProvider:(id)provider;
- (id)_textProviderForOverdueCount:(int64_t)count;
- (id)_textProviderForRemainingDueTodayCount:(int64_t)count;
- (id)_textProviderForReminder:(id)reminder;
- (id)_textProviderForTimelineModelEntry:(id)entry;
- (id)templateForTimelineModelEntry:(id)entry;
@end

@implementation TTRGraphicBezelComplicationTemplateGenerator

- (CLKComplicationTemplate)lockedTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Unlock to view" value:@"Unlock to view" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicBezelComplicationTemplateGenerator *)self _templateWithTextProvider:v5];

  return v6;
}

- (CLKComplicationTemplate)privacyTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicBezelComplicationTemplateGenerator *)self _templateWithTextProvider:v5];

  return v6;
}

- (id)templateForTimelineModelEntry:(id)entry
{
  v4 = [(TTRGraphicBezelComplicationTemplateGenerator *)self _textProviderForTimelineModelEntry:entry];
  v5 = [(TTRGraphicBezelComplicationTemplateGenerator *)self _templateWithTextProvider:v4];

  return v5;
}

- (TTRGraphicCircularComplicationTemplateGenerator)graphicCircularTemplateGenerator
{
  v2 = objc_alloc_init(TTRGraphicCircularComplicationTemplateGenerator);

  return v2;
}

- (id)_templateWithTextProvider:(id)provider
{
  providerCopy = provider;
  v5 = [CLKComplicationTemplateGraphicBezelCircularText alloc];
  graphicCircularTemplateGenerator = [(TTRGraphicBezelComplicationTemplateGenerator *)self graphicCircularTemplateGenerator];
  complicationTemplate = [graphicCircularTemplateGenerator complicationTemplate];
  v8 = [v5 initWithCircularTemplate:complicationTemplate textProvider:providerCopy];

  return v8;
}

- (id)_textProviderForTimelineModelEntry:(id)entry
{
  entryCopy = entry;
  overdueCount = [entryCopy overdueCount];
  remainingDueTodayCount = [entryCopy remainingDueTodayCount];
  if (overdueCount < 1)
  {
    v8 = remainingDueTodayCount;
    if (remainingDueTodayCount <= 1)
    {
      representativeReminder = [entryCopy representativeReminder];

      if (representativeReminder)
      {
        representativeReminder2 = [entryCopy representativeReminder];
        v12 = [(TTRGraphicBezelComplicationTemplateGenerator *)self _textProviderForReminder:representativeReminder2];

        goto LABEL_10;
      }

      selfCopy2 = self;
      v8 = 0;
    }

    else
    {
      selfCopy2 = self;
    }

    v7 = [(TTRGraphicBezelComplicationTemplateGenerator *)selfCopy2 _textProviderForRemainingDueTodayCount:v8];
  }

  else
  {
    v7 = [(TTRGraphicBezelComplicationTemplateGenerator *)self _textProviderForOverdueCount:overdueCount];
  }

  v12 = v7;
LABEL_10:

  return v12;
}

- (id)_textProviderForReminder:(id)reminder
{
  reminderCopy = reminder;
  v4 = TTRComplicationCalendarCreate();
  v5 = [reminderCopy makeTitleAndExactDueDateTextProviderUsingCalendar:v4 dropMinutesForRoundHours:1];

  return v5;
}

- (id)_textProviderForRemainingDueTodayCount:(int64_t)count
{
  v4 = RemindersUICoreBundleGet();
  v5 = [v4 localizedStringForKey:@"COMPLICATION_%@ Items Due Today" value:@"%@ Items Due Today" table:@"PluralLocalizable"];
  v6 = [NSNumber numberWithInteger:count];
  v7 = [NSString stringWithFormat:v5, v6];

  v8 = RemindersUICoreBundleGet();
  v9 = [v8 localizedStringForKey:@"COMPLICATION_%@ Items Today" value:@"%@ Items Today" table:@"PluralLocalizable"];
  v10 = [NSNumber numberWithInteger:count];
  v11 = [NSString stringWithFormat:v9, v10];

  v12 = [CLKSimpleTextProvider textProviderWithText:v7 shortText:v11];

  return v12;
}

- (id)_textProviderForOverdueCount:(int64_t)count
{
  v4 = RemindersUICoreBundleGet();
  v5 = [v4 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v6 = [NSNumber numberWithInteger:count];
  v7 = [NSString stringWithFormat:v5, v6];

  v8 = [CLKSimpleTextProvider textProviderWithText:v7];

  return v8;
}

@end