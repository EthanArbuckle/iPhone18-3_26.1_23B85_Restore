@interface TTRGraphicCornerComplicationTemplateGenerator
- (CLKComplicationTemplate)lockedTemplate;
- (CLKComplicationTemplate)privacyTemplate;
- (id)_templateForOverdueCount:(int64_t)a3;
- (id)_templateForRemainingDueTodayCount:(int64_t)a3;
- (id)_templateForReminder:(id)a3;
- (id)_templateWithInnerTextProvider:(id)a3;
- (id)templateForTimelineModelEntry:(id)a3;
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

- (id)templateForTimelineModelEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 overdueCount];
  v6 = [v4 remainingDueTodayCount];
  if (v5 < 1)
  {
    v8 = v6;
    if (v6 <= 1)
    {
      v10 = [v4 representativeReminder];

      if (v10)
      {
        v11 = [v4 representativeReminder];
        v12 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateForReminder:v11];

        goto LABEL_10;
      }

      v9 = self;
      v8 = 0;
    }

    else
    {
      v9 = self;
    }

    v7 = [(TTRGraphicCornerComplicationTemplateGenerator *)v9 _templateForRemainingDueTodayCount:v8];
  }

  else
  {
    v7 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateForOverdueCount:v5];
  }

  v12 = v7;
LABEL_10:

  return v12;
}

- (id)_templateWithInnerTextProvider:(id)a3
{
  v3 = a3;
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
  [v3 setTintColor:v7];

  v8 = [[CLKComplicationTemplateGraphicCornerTextImage alloc] initWithTextProvider:v3 imageProvider:v6];

  return v8;
}

- (id)_templateForOverdueCount:(int64_t)a3
{
  v5 = RemindersUICoreBundleGet();
  v6 = [v5 localizedStringForKey:@"COMPLICATION_%@ Overdue" value:@"%@ Overdue" table:@"PluralLocalizable"];
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [NSString stringWithFormat:v6, v7];

  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  v10 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v9];

  return v10;
}

- (id)_templateForRemainingDueTodayCount:(int64_t)a3
{
  v5 = RemindersUICoreBundleGet();
  v6 = [v5 localizedStringForKey:@"COMPLICATION_%@ Items Due Today" value:@"%@ Items Due Today" table:@"PluralLocalizable"];
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [NSString stringWithFormat:v6, v7];

  v9 = RemindersUICoreBundleGet();
  v10 = [v9 localizedStringForKey:@"COMPLICATION_%@ Items Today" value:@"%@ Items Today" table:@"PluralLocalizable"];
  v11 = [NSNumber numberWithInteger:a3];
  v12 = [NSString stringWithFormat:v10, v11];

  v13 = [CLKSimpleTextProvider textProviderWithText:v8 shortText:v12];
  v14 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v13];

  return v14;
}

- (id)_templateForReminder:(id)a3
{
  v4 = a3;
  v5 = [v4 makeTitleTextProvider];
  v6 = [v4 dueDate];
  v7 = [v6 precision];

  if (v7 == &dword_0 + 1)
  {
    v8 = TTRComplicationCalendarCreate();
    v9 = [v4 makeDueTimeTextProviderUsingCalendar:v8 dropMinutesForRoundHours:1];

    v6 = [[CLKComplicationTemplateGraphicCornerStackText alloc] initWithInnerTextProvider:v5 outerTextProvider:v9];
    v10 = +[TTRComplicationAsset tintColor];
    v11 = [v6 innerTextProvider];
    [v11 setTintColor:v10];
  }

  else if (!v7)
  {
    v6 = [(TTRGraphicCornerComplicationTemplateGenerator *)self _templateWithInnerTextProvider:v5];
  }

  return v6;
}

@end