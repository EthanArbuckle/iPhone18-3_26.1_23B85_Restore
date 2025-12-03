@interface TTRGraphicCornerComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (id)_templateForOverdueCount:(int64_t)count;
- (id)_templateForRemainingDueTodayCount:(int64_t)count;
- (id)_templateForReminder:(id)reminder;
- (id)_templateWithInnerTextProvider:(id)provider;
- (id)templateForTimelineModelEntry:(id)entry;
@end

@implementation TTRGraphicCornerComplicationTemplateGenerator

- (CLKComplicationTemplate)lockedTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Unlock to view" value:@"Unlock to view" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v5];

  return v6;
}

- (CLKComplicationTemplate)privacyTemplate
{
  v3 = RemindersUICoreBundleGet();
  v4 = [v3 localizedStringForKey:@"Reminders" value:@"Reminders" table:@"Localizable"];
  v5 = [CLKSimpleTextProvider textProviderWithText:v4];
  v6 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v5];

  return v6;
}

- (id)templateForTimelineModelEntry:(id)entry
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
        v12 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateForReminder:representativeReminder2];

        goto LABEL_10;
      }

      selfCopy2 = self;
      v8 = 0;
    }

    else
    {
      selfCopy2 = self;
    }

    v7 = [(TTRGraphicCornerComplicationTemplateGenerator *)selfCopy2 _templateForRemainingDueTodayCount:v8];
  }

  else
  {
    v7 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateForOverdueCount:overdueCount];
  }

  v12 = v7;
LABEL_10:

  return v12;
}

- (id)_templateWithInnerTextProvider:(id)provider
{
  providerCopy = provider;
  v4 = [TTRComplicationAsset imageForFamily:3];
  if (!v4)
  {
    v5 = +[REMLog ui];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_7D44(v5);
    }

    v4 = +[UIImage ttr_placeholderForInvalidImage];
  }

  v6 = [CLKFullColorImageProvider providerWithFullColorImage:v4 monochromeFilterType:1];
  v7 = +[TTRComplicationAsset tintColor];
  [providerCopy setTintColor:v7];

  v8 = [[CLKComplicationTemplateGraphicCornerTextImage alloc] initWithTextProvider:providerCopy imageProvider:v6];

  return v8;
}

- (id)_templateForOverdueCount:(int64_t)count
{
  v5 = RemindersUICoreBundleGet();
  v6 = [v5 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v7 = [NSNumber numberWithInteger:count];
  v8 = [NSString stringWithFormat:v6, v7];

  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  v10 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v9];

  return v10;
}

- (id)_templateForRemainingDueTodayCount:(int64_t)count
{
  v5 = RemindersUICoreBundleGet();
  v6 = [v5 localizedStringForKey:@"COMPLICATION_%@ Items Due Today" value:@"%@ Items Due Today" table:@"PluralLocalizable"];
  v7 = [NSNumber numberWithInteger:count];
  v8 = [NSString stringWithFormat:v6, v7];

  v9 = RemindersUICoreBundleGet();
  v10 = [v9 localizedStringForKey:@"COMPLICATION_%@ Items Today" value:@"%@ Items Today" table:@"PluralLocalizable"];
  v11 = [NSNumber numberWithInteger:count];
  v12 = [NSString stringWithFormat:v10, v11];

  v13 = [CLKSimpleTextProvider textProviderWithText:v8 shortText:v12];
  v14 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v13];

  return v14;
}

- (id)_templateForReminder:(id)reminder
{
  reminderCopy = reminder;
  makeTitleTextProvider = [reminderCopy makeTitleTextProvider];
  dueDate = [reminderCopy dueDate];
  precision = [dueDate precision];

  if (precision == &dword_0 + 1)
  {
    v8 = TTRComplicationCalendarCreate();
    v9 = [reminderCopy makeDueTimeTextProviderUsingCalendar:v8 dropMinutesForRoundHours:1];

    dueDate = [[CLKComplicationTemplateGraphicCornerStackText alloc] initWithInnerTextProvider:makeTitleTextProvider outerTextProvider:v9];
    v10 = +[TTRComplicationAsset tintColor];
    innerTextProvider = [dueDate innerTextProvider];
    [innerTextProvider setTintColor:v10];
  }

  else if (!precision)
  {
    dueDate = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:makeTitleTextProvider];
  }

  return dueDate;
}

@end