@interface NCALDateTimelineEntryModel
- (id)_graphicRectangularDateBodyTextWithDate:(id)date displayLunarDate:(BOOL)lunarDate;
- (id)_graphicRectangularDateHeaderTextWithDate:(id)date useLunarDate:(BOOL)lunarDate;
- (id)_newBezelTemplate;
- (id)_newCircularTemplateMedium:(BOOL)medium;
- (id)_newExtraLargeLunarTemplate;
- (id)_newExtraLargeTemplate;
- (id)_newLargeUtilitarianTemplate;
- (id)_newModularLargeLunarTemplate;
- (id)_newModularLargeTemplate;
- (id)_newModularSmallLunarTemplate;
- (id)_newModularSmallTemplate;
- (id)_newSignatureCircularTemplate;
- (id)_newSignatureExtraLargeCircularTemplate;
- (id)_newSimpleTextTemplate;
- (id)_newSmallFlatUtilitarianTemplate;
- (id)_simpleTextShortDateProvider;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NCALDateTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v5 = OverlayCalendarLocaleID();
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  if (family > 6)
  {
    if (family > 9)
    {
      switch(family)
      {
        case 10:
          _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newSignatureCircularTemplate];
          break;
        case 11:
          _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newGraphicRectangularTemplateDisplayingLunarDate:v6];
          break;
        case 12:
          _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newSignatureExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_37;
      }
    }

    else if (family == 7)
    {
      if (v6)
      {
        _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newExtraLargeLunarTemplate];
      }

      else
      {
        _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newExtraLargeTemplate];
      }
    }

    else if (family == 8)
    {
      _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newSignatureCornerTemplate];
    }

    else
    {
      _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newBezelTemplate];
    }

    goto LABEL_36;
  }

  if (family > 2)
  {
    if (family == 3)
    {
      _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newLargeUtilitarianTemplate];
      goto LABEL_36;
    }

    if (family == 4)
    {
      _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newCircularTemplateMedium:0];
      goto LABEL_36;
    }

    if (family != 6)
    {
      goto LABEL_37;
    }

LABEL_17:
    _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newSmallFlatUtilitarianTemplate];
LABEL_36:
    v7 = _newSignatureCircularTemplate;
    goto LABEL_37;
  }

  switch(family)
  {
    case 0:
      if (v6)
      {
        _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newModularSmallLunarTemplate];
      }

      else
      {
        _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newModularSmallTemplate];
      }

      goto LABEL_36;
    case 1:
      if (v6)
      {
        _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newModularLargeLunarTemplate];
      }

      else
      {
        _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newModularLargeTemplate];
      }

      goto LABEL_36;
    case 2:
      goto LABEL_17;
  }

LABEL_37:
  if (CLKComplicationFamilyCircularMedium == family)
  {
    _newSimpleTextTemplate = [(NCALDateTimelineEntryModel *)self _newCircularTemplateMedium:1];
  }

  else
  {
    if (CLKComplicationFamilySimpleText != family)
    {
      goto LABEL_42;
    }

    _newSimpleTextTemplate = [(NCALDateTimelineEntryModel *)self _newSimpleTextTemplate];
  }

  v10 = _newSimpleTextTemplate;

  v7 = v10;
LABEL_42:
  v11 = ncs_log_complication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    familyCopy = family;
    v15 = 1024;
    v16 = v7 != 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Has template for family %ld? -> %d", &v13, 0x12u);
  }

  return v7;
}

- (id)_newModularSmallTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:512];

  [v4 setShortUnits:1];
  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v7 = [CLKComplicationTemplateModularSmallDate templateWithWeekdayTextProvider:v4 dayTextProvider:v6];
  [v7 setHighlightMode:2];
  v8 = +[UIColor systemRedColor];
  [v7 setTintColor:v8];

  return v7;
}

- (id)_newModularSmallLunarTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:8];

  [v4 setShortUnits:1];
  v5 = OverlayCalendarLocaleID();
  [v4 setAlternateCalendarLocaleID:v5];

  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v7 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v8 = OverlayCalendarLocaleID();
  [v7 setAlternateCalendarLocaleID:v8];

  v9 = [CLKComplicationTemplateModularSmallStackText templateWithLine1TextProvider:v4 line2TextProvider:v7];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  [v9 setHighlightMode:1];
  return v9;
}

- (id)_newModularLargeTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v3 = [CLKDateTextProvider textProviderWithDate:entryDate units:512];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:24];
  [v4 setShortUnits:1];
  [v4 setAllowsNarrowUnits:1];
  v5 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderTextProvider:v3 bodyTextProvider:v4];
  v6 = +[UIColor systemRedColor];
  [v5 setTintColor:v6];

  return v5;
}

- (id)_newModularLargeLunarTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:12];

  v5 = OverlayCalendarLocaleID();
  [v4 setAlternateCalendarLocaleID:v5];

  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v7 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  [v7 setShortUnits:1];
  v8 = OverlayCalendarLocaleID();
  [v7 setAlternateCalendarLocaleID:v8];

  v9 = [CLKComplicationTemplateModularLargeTallBody templateWithHeaderTextProvider:v4 bodyTextProvider:v7];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  return v9;
}

- (id)_newSmallFlatUtilitarianTemplate
{
  _simpleTextShortDateProvider = [(NCALDateTimelineEntryModel *)self _simpleTextShortDateProvider];
  v3 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:_simpleTextShortDateProvider];

  return v3;
}

- (id)_simpleTextShortDateProvider
{
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v3 = OverlayCalendarLocaleID();

    if (v3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 528;
    }
  }

  else
  {
    v4 = 528;
  }

  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate units:v4];

  [v6 setUppercase:1];
  [v6 setShortUnits:1];
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  return v6;
}

- (id)_newSimpleTextTemplate
{
  _simpleTextShortDateProvider = [(NCALDateTimelineEntryModel *)self _simpleTextShortDateProvider];
  v3 = [CLKComplicationTemplateSimpleText templateWithTextProvider:_simpleTextShortDateProvider];

  return v3;
}

- (id)_newLargeUtilitarianTemplate
{
  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v3 = OverlayCalendarLocaleID();

    if (v3)
    {
      v4 = 28;
    }

    else
    {
      v4 = 536;
    }
  }

  else
  {
    v4 = 536;
  }

  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate units:v4];

  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  v8 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v6];

  return v8;
}

- (id)_newCircularTemplateMedium:(BOOL)medium
{
  mediumCopy = medium;
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate units:16];

  if ([(NCALDateTimelineEntryModel *)self lunar])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  v8 = CLKComplicationTemplateCircularMediumSimpleText_ptr;
  if (!mediumCopy)
  {
    v8 = CLKComplicationTemplateCircularSmallSimpleText_ptr;
  }

  v9 = [*v8 templateWithTextProvider:v6];

  return v9;
}

- (id)_newExtraLargeTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:512];

  [v4 setShortUnits:1];
  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v6 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v7 = [CLKComplicationTemplateExtraLargeDate templateWithWeekdayTextProvider:v4 dayTextProvider:v6];
  [v7 setHighlightMode:2];
  v8 = +[UIColor systemRedColor];
  [v7 setTintColor:v8];

  return v7;
}

- (id)_newExtraLargeLunarTemplate
{
  entryDate = [(NCALDateTimelineEntryModel *)self entryDate];
  v4 = [CLKDateTextProvider textProviderWithDate:entryDate units:8];

  [v4 setShortUnits:1];
  v5 = OverlayCalendarLocaleID();
  [v4 setAlternateCalendarLocaleID:v5];

  entryDate2 = [(NCALDateTimelineEntryModel *)self entryDate];
  v7 = [CLKDateTextProvider textProviderWithDate:entryDate2 units:16];

  v8 = OverlayCalendarLocaleID();
  [v7 setAlternateCalendarLocaleID:v8];

  v9 = [CLKComplicationTemplateExtraLargeStackText templateWithLine1TextProvider:v4 line2TextProvider:v7];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  [v9 setHighlightMode:1];
  return v9;
}

- (id)_newBezelTemplate
{
  _newSignatureCircularTemplate = [(NCALDateTimelineEntryModel *)self _newSignatureCircularTemplate];
  v3 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:_newSignatureCircularTemplate];

  return v3;
}

- (id)_newSignatureCircularTemplate
{
  lunar = [(NCALDateTimelineEntryModel *)self lunar];
  v3 = &off_20350;
  if (!lunar)
  {
    v3 = off_20340;
  }

  v4 = *v3;
  v5 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v6 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v5];
  v9 = NTKRichComplicationViewUsePlatterKey;
  v10 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 setMetadata:v7];

  return v6;
}

- (id)_newSignatureExtraLargeCircularTemplate
{
  lunar = [(NCALDateTimelineEntryModel *)self lunar];
  v3 = off_20348;
  if (!lunar)
  {
    v3 = off_20338;
  }

  v4 = *v3;
  v5 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v6 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v5];
  v9 = NTKRichComplicationViewUsePlatterKey;
  v10 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 setMetadata:v7];

  return v6;
}

- (id)_graphicRectangularDateHeaderTextWithDate:(id)date useLunarDate:(BOOL)lunarDate
{
  if (lunarDate)
  {
    v5 = 12;
  }

  else
  {
    v5 = 512;
  }

  v6 = [CLKDateTextProvider textProviderWithDate:date units:v5];
  v7 = v6;
  if (lunarDate)
  {
    v8 = OverlayCalendarLocaleID();
    [v7 setAlternateCalendarLocaleID:v8];
  }

  else
  {
    [v6 setAlternateCalendarLocaleID:0];
  }

  v9 = +[UIColor systemRedColor];
  [v7 setTintColor:v9];

  return v7;
}

- (id)_graphicRectangularDateBodyTextWithDate:(id)date displayLunarDate:(BOOL)lunarDate
{
  lunarDateCopy = lunarDate;
  if (lunarDate)
  {
    v5 = 16;
  }

  else
  {
    v5 = 24;
  }

  v6 = [CLKDateTextProvider textProviderWithDate:date units:v5];
  [v6 setShortUnits:1];
  [v6 setAllowsNarrowUnits:!lunarDateCopy];
  if (lunarDateCopy)
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  else
  {
    [v6 setAlternateCalendarLocaleID:0];
  }

  return v6;
}

@end