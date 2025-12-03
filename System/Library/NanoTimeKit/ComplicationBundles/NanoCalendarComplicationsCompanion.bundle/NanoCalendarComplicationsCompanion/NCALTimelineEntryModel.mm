@interface NCALTimelineEntryModel
+ (id)_entryForTemplateDescription:(id)description family:(int64_t)family;
+ (id)_extraLargeCalendarImageProviderWithConflicts:(BOOL)conflicts;
+ (id)_graphicStackTextProvider:(id)provider;
+ (id)_modularSmallCalendarImageWithConflicts:(BOOL)conflicts;
+ (id)_signatureCornerImageProvider;
+ (id)_swapPlaceholderString:(id)string withTimeStringForDate:(id)date inString:(id)inString usingBaseFont:(id)font smallCapsBaseFont:(id)baseFont timeZone:(id)zone options:(unint64_t)options;
+ (id)_utilityCalendarImageProvider;
+ (id)circular:(id)circular isMedium:(BOOL)medium;
+ (id)contentForLargeModular:(id)modular;
+ (id)contentForSignatureRectangular:(id)rectangular;
+ (id)eventStartDateTextProvider:(id)provider;
+ (id)extraLarge:(id)large;
+ (id)graphicCircular:(id)circular;
+ (id)graphicExtraLarge:(id)large;
+ (id)largeModular:(id)modular;
+ (id)largeUtility:(id)utility;
+ (id)loadingEntryForFamily:(int64_t)family;
+ (id)lockedEntryForFamily:(int64_t)family;
+ (id)sampleEventTemplateForFamily:(int64_t)family;
+ (id)signatureBezel:(id)bezel;
+ (id)signatureCircular:(id)circular;
+ (id)signatureCorner:(id)corner;
+ (id)signatureRectangular:(id)rectangular;
+ (id)smallModular:(id)modular;
+ (id)smallUtility:(id)utility;
+ (id)wrappedUserStringFrom:(id)from;
- (id)_wrappedPrimaryEventLocation;
- (id)_wrappedPrimaryEventOrganizerName;
- (id)_wrappedPrimaryEventTitle;
- (id)_wrappedSecondaryEventTitle;
- (id)description;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NCALTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  if (NTKComplicationFamilyUtilitarianLargeNarrow == family)
  {
    goto LABEL_2;
  }

  if (CLKComplicationFamilyCircularMedium == family)
  {
    v5 = objc_opt_class();
    selfCopy2 = self;
    v7 = 1;
LABEL_5:
    v4 = [v5 circular:selfCopy2 isMedium:v7];
    goto LABEL_6;
  }

  v8 = 0;
  if (family > 6)
  {
    if (family <= 9)
    {
      if (family == 7)
      {
        v4 = [objc_opt_class() extraLarge:self];
      }

      else
      {
        if (family == 8)
        {
          [objc_opt_class() signatureCorner:self];
        }

        else
        {
          [objc_opt_class() signatureBezel:self];
        }
        v4 = ;
      }

      goto LABEL_6;
    }

    switch(family)
    {
      case 10:
        v4 = [objc_opt_class() graphicCircular:self];
        goto LABEL_6;
      case 11:
        v4 = [objc_opt_class() signatureRectangular:self];
        goto LABEL_6;
      case 12:
        v4 = [objc_opt_class() graphicExtraLarge:self];
        goto LABEL_6;
    }
  }

  else
  {
    if (family <= 2)
    {
      if (!family)
      {
        v4 = [objc_opt_class() smallModular:self];
        goto LABEL_6;
      }

      if (family == 1)
      {
        v4 = [objc_opt_class() largeModular:self];
        goto LABEL_6;
      }

      if (family != 2)
      {
        goto LABEL_7;
      }

LABEL_24:
      v4 = [objc_opt_class() smallUtility:self];
      goto LABEL_6;
    }

    switch(family)
    {
      case 3:
LABEL_2:
        v4 = [objc_opt_class() largeUtility:self];
LABEL_6:
        v8 = v4;
        break;
      case 4:
        v5 = objc_opt_class();
        selfCopy2 = self;
        v7 = 0;
        goto LABEL_5;
      case 6:
        goto LABEL_24;
    }
  }

LABEL_7:
  [v8 finalize];

  return v8;
}

+ (id)largeModular:(id)modular
{
  modularCopy = modular;
  v5 = [self contentForLargeModular:modularCopy];
  firstObject = [v5 firstObject];
  if ([v5 count] < 2)
  {
    [CLKSimpleTextProvider textProviderWithText:&stru_20EF0];
  }

  else
  {
    [v5 objectAtIndexedSubscript:1];
  }
  v7 = ;
  if ([v5 count] < 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:2];
  }

  v9 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  overlappingEventCount = [modularCopy overlappingEventCount];
  if (overlappingEventCount == &dword_0 + 1)
  {
    v11 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:firstObject body1TextProvider:v7 body2TextProvider:v8];
    if (![modularCopy displayAsConflicting])
    {
      goto LABEL_18;
    }

    v12 = [CLKImageProvider imageProviderWithOnePieceImage:v9];
    [v11 setBody1ImageProvider:v12];
  }

  else
  {
    if (!overlappingEventCount)
    {
      v11 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:firstObject body1TextProvider:v7];
      goto LABEL_18;
    }

    v12 = NCALComplicationLocalizedString(@"NEXTEVENT_N_COINCIDENT_EVENTS_LINE_ITEM_LARGE_MODULAR");
    v13 = [CLKSimpleTextProvider finalizedTextProviderWithText:v12];
    if (!v8)
    {
      v8 = [CLKSimpleTextProvider textProviderWithText:&stru_20EF0];
    }

    v11 = [CLKComplicationTemplateModularLargeTable templateWithHeaderTextProvider:firstObject row1Column1TextProvider:v13 row1Column2TextProvider:v7 row2Column1TextProvider:v13 row2Column2TextProvider:v8];
    [v11 setUseNoColumnPadding:1];
    if ([modularCopy displayAsConflicting])
    {
      v14 = [CLKImageProvider imageProviderWithOnePieceImage:v9];
      [v11 setHeaderImageProvider:v14];
    }
  }

LABEL_18:
  v15 = +[UIColor systemRedColor];
  [v11 setTintColor:v15];

  return v11;
}

+ (id)contentForLargeModular:(id)modular
{
  modularCopy = modular;
  overlappingEventCount = [modularCopy overlappingEventCount];
  v5 = overlappingEventCount - 1;
  if (overlappingEventCount == &dword_0 + 1)
  {
    eventStartDate = [modularCopy eventStartDate];
    eventEndDate = [modularCopy eventEndDate];
    v11 = +[NSTimeZone calendarTimeZone];
    v12 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:eventStartDate endDate:eventEndDate timeZone:v11];

    _wrappedPrimaryEventTitle = [modularCopy _wrappedPrimaryEventTitle];
    v14 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedPrimaryEventTitle];

    _wrappedPrimaryEventLocation = [modularCopy _wrappedPrimaryEventLocation];
    v16 = _wrappedPrimaryEventLocation;
    if (_wrappedPrimaryEventLocation)
    {
      _wrappedPrimaryEventOrganizerName = _wrappedPrimaryEventLocation;
    }

    else
    {
      _wrappedPrimaryEventOrganizerName = [modularCopy _wrappedPrimaryEventOrganizerName];
    }

    v28 = _wrappedPrimaryEventOrganizerName;

    if ([v28 length])
    {
      v27 = [NTKOverrideTextProvider textProviderWithText:v28 overrideBlock:&stru_20BA8];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v6 = overlappingEventCount;
    if (overlappingEventCount)
    {
      eventStartDate2 = [modularCopy eventStartDate];
      if (NTKHourOfDateIsSingular())
      {
        v19 = @"SINGULAR";
      }

      else
      {
        v19 = @"PLURAL";
      }

      v20 = [@"NEXTEVENT_N_COINCIDENT_EVENTS_AT_TIME_LARGE_MODULAR_" stringByAppendingString:v19];
      v21 = NCALComplicationLocalizedString(v20);
      v22 = [NSString localizedStringWithFormat:v21, v6, @"<ATTRIB_TIME_PLACEHOLD>"];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_88CC;
      v33[3] = &unk_20BD0;
      v23 = eventStartDate2;
      v34 = v23;
      v12 = [NTKOverrideTextProvider textProviderWithText:v22 overrideBlock:v33];
      _wrappedPrimaryEventTitle2 = [modularCopy _wrappedPrimaryEventTitle];
      v14 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedPrimaryEventTitle2];

      if (v6 == &dword_0 + 2)
      {
        _wrappedSecondaryEventTitle = [modularCopy _wrappedSecondaryEventTitle];
      }

      else
      {
        v26 = NCALComplicationLocalizedString(@"NEXTEVENT_N_MORE_ELLIPSIS_LARGE_MODULAR");
        _wrappedSecondaryEventTitle = [NSString localizedStringWithFormat:v26, v5];
      }

      v27 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedSecondaryEventTitle];
    }

    else
    {
      v7 = NCALComplicationLocalizedString(@"NEXTEVENT_NEXT_EVENT_TITLE_LARGE_MODULAR");
      if ([modularCopy displayAsTomorrow])
      {
        v8 = @"NEXTEVENT_NO_EVENTS_TOMORROW_LARGE_MODULAR";
      }

      else if ([modularCopy displayAsFirstInDay])
      {
        v8 = @"NEXTEVENT_NO_EVENTS_TODAY_LARGE_MODULAR";
      }

      else
      {
        v8 = @"NEXTEVENT_NO_EVENTS_LEFT_TODAY_LARGE_MODULAR";
      }

      v29 = NCALComplicationLocalizedString(v8);
      v12 = [CLKSimpleTextProvider finalizedTextProviderWithText:v7];
      v14 = [CLKSimpleTextProvider finalizedTextProviderWithText:v29];

      v27 = 0;
    }
  }

  v30 = [NSMutableArray arrayWithCapacity:3];
  v31 = v30;
  if (v12)
  {
    [v30 addObject:v12];
  }

  if (v14)
  {
    [v31 addObject:v14];
  }

  if (v27)
  {
    [v31 addObject:v27];
  }

  return v31;
}

+ (id)contentForSignatureRectangular:(id)rectangular
{
  rectangularCopy = rectangular;
  overlappingEventCount = [rectangularCopy overlappingEventCount];
  v5 = overlappingEventCount - 1;
  if (overlappingEventCount == &dword_0 + 1)
  {
    eventStartDate = [rectangularCopy eventStartDate];
    eventEndDate = [rectangularCopy eventEndDate];
    v15 = +[NSTimeZone calendarTimeZone];
    v10 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:eventStartDate endDate:eventEndDate timeZone:v15];

    _wrappedPrimaryEventTitle = [rectangularCopy _wrappedPrimaryEventTitle];
    v11 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedPrimaryEventTitle];

    _wrappedPrimaryEventLocation = [rectangularCopy _wrappedPrimaryEventLocation];
    v18 = _wrappedPrimaryEventLocation;
    if (_wrappedPrimaryEventLocation)
    {
      _wrappedPrimaryEventOrganizerName = _wrappedPrimaryEventLocation;
    }

    else
    {
      _wrappedPrimaryEventOrganizerName = [rectangularCopy _wrappedPrimaryEventOrganizerName];
    }

    _wrappedSecondaryEventTitle = _wrappedPrimaryEventOrganizerName;

    if (![_wrappedSecondaryEventTitle length])
    {
      v12 = 0;
      goto LABEL_30;
    }

    v32 = [NTKOverrideTextProvider textProviderWithText:_wrappedSecondaryEventTitle overrideBlock:&stru_20BF0];
LABEL_22:
    v12 = v32;
    goto LABEL_30;
  }

  v6 = overlappingEventCount;
  if (overlappingEventCount)
  {
    if ([rectangularCopy overlappingDates])
    {
      eventStartDate2 = [rectangularCopy eventStartDate];
      eventEndDate2 = [rectangularCopy eventEndDate];
      v22 = +[NSTimeZone calendarTimeZone];
      v10 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:eventStartDate2 endDate:eventEndDate2 timeZone:v22];
    }

    else
    {
      eventStartDate2 = [rectangularCopy eventStartDate];
      v10 = [CLKTimeTextProvider textProviderWithDate:eventStartDate2];
    }

    _wrappedPrimaryEventTitle2 = [rectangularCopy _wrappedPrimaryEventTitle];
    v11 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedPrimaryEventTitle2];

    if (v6 == &dword_0 + 2)
    {
      _wrappedSecondaryEventTitle = [rectangularCopy _wrappedSecondaryEventTitle];
    }

    else
    {
      v31 = NCALComplicationLocalizedFormat(@"NEXTEVENT_N_MORE_EVENTS_SIGNATURE_RECTANGULAR");
      _wrappedSecondaryEventTitle = [NSString localizedStringWithFormat:v31, v5];
    }

    v32 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedSecondaryEventTitle];
    goto LABEL_22;
  }

  if ([rectangularCopy displayAsTomorrow])
  {
    _wrappedSecondaryEventTitle = NCALComplicationLocalizedString(@"NEXTEVENT_NEXT_EVENT_TOMORROW_TITLE_SIGNATURE_RECTANGULAR");
    v8 = NCALComplicationLocalizedString(@"NEXTEVENT_NO_EVENTS_TOMORROW_SUBTITLE_SIGNATURE_RECTANGULAR");
    v9 = 0;
    if (_wrappedSecondaryEventTitle)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = +[NSBundle mainBundle];
    preferredLocalizations = [v23 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    v26 = [NSLocale localeWithLocaleIdentifier:firstObject];

    entryDate = [rectangularCopy entryDate];
    v28 = [NTKComplicationDateFormatter stringForDate:entryDate withStyle:32];
    _wrappedSecondaryEventTitle = [v28 uppercaseStringWithLocale:v26];

    v9 = NCALComplicationLocalizedString(@"NEXTEVENT_NO_EVENT_SUBTITLE_SIGNATURE_RECTANGULAR");
    if ([rectangularCopy displayAsFirstInDay])
    {
      v29 = @"NEXTEVENT_NO_EVENTS_TODAY_SIGNATURE_RECTANGULAR";
    }

    else
    {
      v29 = @"NEXTEVENT_NO_EVENTS_LEFT_TODAY_SIGNATURE_RECTANGULAR";
    }

    v8 = NCALComplicationLocalizedString(v29);

    if (_wrappedSecondaryEventTitle)
    {
LABEL_5:
      v10 = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedSecondaryEventTitle];
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_27:
      v11 = 0;
      if (v9)
      {
        goto LABEL_7;
      }

LABEL_28:
      v12 = 0;
      goto LABEL_29;
    }
  }

  v10 = 0;
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_6:
  v11 = [CLKSimpleTextProvider finalizedTextProviderWithText:v8];
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_7:
  v12 = [CLKSimpleTextProvider finalizedTextProviderWithText:v9];
LABEL_29:

LABEL_30:
  v33 = [NSMutableArray arrayWithCapacity:3];
  v34 = v33;
  if (v10)
  {
    [v33 addObject:v10];
  }

  if (v11)
  {
    [v34 addObject:v11];
  }

  if (v12)
  {
    [v34 addObject:v12];
  }

  return v34;
}

+ (id)_swapPlaceholderString:(id)string withTimeStringForDate:(id)date inString:(id)inString usingBaseFont:(id)font smallCapsBaseFont:(id)baseFont timeZone:(id)zone options:(unint64_t)options
{
  fontCopy = font;
  inStringCopy = inString;
  dateCopy = date;
  stringCopy = string;
  cLKFontWithLocalizedSmallCaps = [baseFont CLKFontWithLocalizedSmallCaps];
  v18 = CLKTimeDesignatorAttribute;
  v43 = CLKTimeDesignatorAttribute;
  v44 = &__kCFBooleanTrue;
  v19 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v20 = +[NSTimeZone calendarTimeZone];
  v21 = [NSAttributedString NTKTimeWithDate:dateCopy andDesignatorAttributes:v19 timeZone:v20 options:0];

  v22 = [v21 mutableCopy];
  [v22 beginEditing];
  v23 = [v22 length];
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_92A4;
  v37 = &unk_20C18;
  v24 = v22;
  v38 = v24;
  v25 = cLKFontWithLocalizedSmallCaps;
  v39 = v25;
  v26 = fontCopy;
  v40 = v26;
  [v24 enumerateAttribute:v18 inRange:0 options:v23 usingBlock:{0x100000, &v34}];
  [v24 endEditing];
  v27 = [inStringCopy rangeOfString:stringCopy];
  v29 = v28;

  v30 = [NSMutableAttributedString alloc];
  v41 = NSFontAttributeName;
  v42 = v26;
  v31 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v32 = [v30 initWithString:inStringCopy attributes:v31];

  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v32 replaceCharactersInRange:v27 withAttributedString:{v29, v24}];
  }

  return v32;
}

+ (id)smallUtility:(id)utility
{
  utilityCopy = utility;
  overlappingEventCount = [utilityCopy overlappingEventCount];
  if ([utilityCopy displayAsConflicting])
  {
    v5 = 0;
  }

  else
  {
    v5 = NCALComplicationImageNamed(@"analogNextEventCalendarBackground");
  }

  if ([utilityCopy displayAsConflicting])
  {
    v6 = 0;
  }

  else
  {
    v6 = NCALComplicationImageNamed(@"analogNextEventCalendarForeground");
  }

  if ([utilityCopy displayAsConflicting])
  {
    v7 = @"analogNextEventCoincidentAlertGlyph";
  }

  else
  {
    v7 = @"analogNextEventCalendar";
  }

  v8 = NCALComplicationImageNamed(v7);
  if ([utilityCopy displayAsConflicting])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v9 = ;
  v10 = [CLKImageProvider imageProviderWithOnePieceImage:v8 twoPieceImageBackground:v5 twoPieceImageForeground:v6];
  [v10 setTintColor:v9];
  if (overlappingEventCount)
  {
    eventStartDate = [utilityCopy eventStartDate];
    v12 = +[NSTimeZone calendarTimeZone];
    v13 = [CLKTimeTextProvider textProviderWithDate:eventStartDate timeZone:v12];
  }

  else
  {
    eventStartDate = NCALComplicationLocalizedString(@"NEXTEVENT_NONE_SHORT_UTILITY");
    v13 = [CLKSimpleTextProvider finalizedTextProviderWithText:eventStartDate];
  }

  v14 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v13 imageProvider:v10];

  return v14;
}

+ (id)_modularSmallCalendarImageWithConflicts:(BOOL)conflicts
{
  if (conflicts)
  {
    v3 = @"graphicSmallCalendarConflict";
  }

  else
  {
    v3 = @"graphicCalendar";
  }

  if (conflicts)
  {
    v4 = @"graphicSmallCalendarConflictNoAccent";
  }

  else
  {
    v4 = @"graphicCalendarNoAccent";
  }

  if (conflicts)
  {
    v5 = @"graphicSmallCalendarConflictAccent";
  }

  else
  {
    v5 = @"graphicCalendarAccent";
  }

  v6 = v5;
  v7 = v4;
  v8 = NCALComplicationImageNamed(v3);
  v9 = NCALComplicationImageNamed(v6);

  v10 = NCALComplicationImageNamed(v7);

  v11 = [CLKImageProvider imageProviderWithOnePieceImage:v8 twoPieceImageBackground:v9 twoPieceImageForeground:v10];

  v12 = +[UIColor systemRedColor];
  [v11 setTintColor:v12];

  return v11;
}

+ (id)_extraLargeCalendarImageProviderWithConflicts:(BOOL)conflicts
{
  if (conflicts)
  {
    v3 = @"XLgraphicSmallCalendarConflict";
  }

  else
  {
    v3 = @"XLgraphicCalendar";
  }

  if (conflicts)
  {
    v4 = @"XLgraphicSmallCalendarConflictNoAccent";
  }

  else
  {
    v4 = @"XLgraphicCalendarNoAccent";
  }

  if (conflicts)
  {
    v5 = @"XLgraphicSmallCalendarConflictAccent";
  }

  else
  {
    v5 = @"XLgraphicCalendarAccent";
  }

  v6 = v5;
  v7 = v4;
  v8 = NCALComplicationImageNamed(v3);
  v9 = NCALComplicationImageNamed(v6);

  v10 = NCALComplicationImageNamed(v7);

  v11 = [CLKImageProvider imageProviderWithOnePieceImage:v8 twoPieceImageBackground:v9 twoPieceImageForeground:v10];

  v12 = +[UIColor systemRedColor];
  [v11 setTintColor:v12];

  return v11;
}

+ (id)_utilityCalendarImageProvider
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
  sub_9810(device, device);

  v4 = qword_28178;

  return v4;
}

+ (id)smallModular:(id)modular
{
  modularCopy = modular;
  overlappingEventCount = [modularCopy overlappingEventCount];
  v6 = [self _modularSmallCalendarImageWithConflicts:{objc_msgSend(modularCopy, "displayAsConflicting")}];
  if (overlappingEventCount)
  {
    eventStartDate = [modularCopy eventStartDate];
    [self eventStartDateTextProvider:eventStartDate];
  }

  else
  {
    eventStartDate = NCALComplicationLocalizedString(@"NEXTEVENT_NONE_SHORT_UTILITY");
    [CLKSimpleTextProvider finalizedTextProviderWithText:eventStartDate];
  }
  v8 = ;

  v9 = [CLKComplicationTemplateModularSmallStackImage templateWithLine1ImageProvider:v6 line2TextProvider:v8];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  return v9;
}

+ (id)largeUtility:(id)utility
{
  utilityCopy = utility;
  v4 = NCALComplicationImageNamed(@"analogNextEventCoincidentAlertGlyph");
  overlappingEventCount = [utilityCopy overlappingEventCount];
  if (overlappingEventCount == &dword_0 + 1)
  {
    eventStartDate = [utilityCopy eventStartDate];
    v9 = +[NSTimeZone calendarTimeZone];
    v10 = [CLKTimeTextProvider textProviderWithDate:eventStartDate timeZone:v9];

    [v10 setPrefersDesignatorToMinutes:1];
    _wrappedPrimaryEventTitle = [utilityCopy _wrappedPrimaryEventTitle];
    if (_wrappedPrimaryEventTitle)
    {
      _wrappedPrimaryEventTitle2 = [utilityCopy _wrappedPrimaryEventTitle];
      v13 = +[NSLocale currentLocale];
      v14 = [_wrappedPrimaryEventTitle2 uppercaseStringWithLocale:v13];
    }

    else
    {
      v14 = &stru_20EF0;
    }

    v24 = [CLKSimpleTextProvider textProviderWithText:v14];
    v21 = [CLKTextProvider textProviderWithFormat:@"%@ %@", v10, v24];
    if ([utilityCopy displayAsConflicting])
    {
      v22 = [CLKImageProvider imageProviderWithOnePieceImage:v4];
      v25 = +[UIColor whiteColor];
      [v22 setTintColor:v25];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v6 = overlappingEventCount;
    if (overlappingEventCount)
    {
      eventStartDate2 = [utilityCopy eventStartDate];
      if (NTKHourOfDateIsSingular())
      {
        v16 = @"SINGULAR";
      }

      else
      {
        v16 = @"PLURAL";
      }

      v17 = [@"NEXTEVENT_N_COINCIDENT_EVENTS_AT_TIME_LONG_UTILITY_" stringByAppendingString:v16];
      v18 = NCALComplicationLocalizedString(v17);
      v19 = [NSString localizedStringWithFormat:v18, v6, @"<ATTRIB_TIME_PLACEHOLD>"];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_9EA0;
      v29[3] = &unk_20BD0;
      v20 = eventStartDate2;
      v30 = v20;
      v21 = [NTKOverrideTextProvider textProviderWithText:v19 overrideBlock:v29];
      [v21 finalize];
      if ([utilityCopy displayAsConflicting])
      {
        v22 = [CLKImageProvider imageProviderWithOnePieceImage:v4];
        v23 = +[UIColor whiteColor];
        [v22 setTintColor:v23];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      if ([utilityCopy displayAsTomorrow])
      {
        v7 = @"NEXTEVENT_NO_EVENTS_TOMORROW_LONG_UTILITY";
      }

      else if ([utilityCopy displayAsFirstInDay])
      {
        v7 = @"NEXTEVENT_NO_EVENTS_TODAY_LONG_UTILITY";
      }

      else
      {
        v7 = @"NEXTEVENT_NO_EVENTS_LEFT_TODAY_LONG_UTILITY";
      }

      v26 = NCALComplicationLocalizedString(v7);
      v21 = [CLKSimpleTextProvider textProviderWithText:v26];

      [v21 finalize];
      v22 = 0;
    }
  }

  v27 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v21 imageProvider:v22];

  return v27;
}

+ (id)circular:(id)circular isMedium:(BOOL)medium
{
  mediumCopy = medium;
  circularCopy = circular;
  if ([circularCopy overlappingEventCount])
  {
    v7 = @"analog";
    if (mediumCopy)
    {
      v7 = @"victory";
      v8 = CLKComplicationTemplateCircularMediumStackImage_ptr;
    }

    else
    {
      v8 = CLKComplicationTemplateCircularSmallStackImage_ptr;
    }

    v9 = v7;
    if ([circularCopy displayAsConflicting])
    {
      v10 = @"NextEventCoincidentAlertGlyph";
    }

    else
    {
      v10 = @"NextEventCalendar";
    }

    v11 = [(__CFString *)v9 stringByAppendingString:v10];

    v12 = NCALComplicationImageNamed(v11);

    v13 = [CLKImageProvider imageProviderWithOnePieceImage:v12];
    eventStartDate = [circularCopy eventStartDate];
    v15 = [self eventStartDateTextProvider:eventStartDate];

    v16 = [*v8 templateWithLine1ImageProvider:v13 line2TextProvider:v15];
  }

  else
  {
    if (mediumCopy)
    {
      v17 = @"victoryCalendarNone";
    }

    else
    {
      v17 = @"colorAnalogCalendarNoContent";
    }

    if (mediumCopy)
    {
      v18 = CLKComplicationTemplateCircularMediumSimpleImage_ptr;
    }

    else
    {
      v18 = CLKComplicationTemplateCircularSmallSimpleImage_ptr;
    }

    v19 = NCALComplicationImageNamed(v17);
    v12 = [CLKImageProvider imageProviderWithOnePieceImage:v19];

    v16 = [*v18 templateWithImageProvider:v12];
  }

  return v16;
}

+ (id)extraLarge:(id)large
{
  largeCopy = large;
  v5 = [self _extraLargeCalendarImageProviderWithConflicts:{objc_msgSend(largeCopy, "displayAsConflicting")}];
  v6 = [self _graphicStackTextProvider:largeCopy];

  v7 = [CLKComplicationTemplateExtraLargeStackImage templateWithLine1ImageProvider:v5 line2TextProvider:v6];
  v8 = +[UIColor systemRedColor];
  [v7 setTintColor:v8];

  return v7;
}

+ (id)_graphicStackTextProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy overlappingEventCount])
  {
    eventStartDate = [providerCopy eventStartDate];
    [self eventStartDateTextProvider:eventStartDate];
  }

  else
  {
    eventStartDate = NCALComplicationLocalizedString(@"NEXTEVENT_NONE_SHORT_UTILITY");
    [CLKSimpleTextProvider finalizedTextProviderWithText:eventStartDate];
  }
  v6 = ;

  return v6;
}

+ (id)eventStartDateTextProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[NSTimeZone calendarTimeZone];
  v5 = [CLKTimeTextProvider textProviderWithDate:providerCopy timeZone:v4];

  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:64 fromDate:providerCopy];

  if (![v7 minute])
  {
    [v5 setDisallowBothMinutesAndDesignator:1];
  }

  [v5 setPrefersDesignatorToMinutes:1];
  [v5 finalize];

  return v5;
}

+ (id)graphicExtraLarge:(id)large
{
  largeCopy = large;
  v5 = [self _graphicExtraLargeImageProviderWithConflicts:{objc_msgSend(largeCopy, "displayAsConflicting")}];
  v6 = [self _graphicStackTextProvider:largeCopy];

  v7 = [CLKComplicationTemplateGraphicExtraLargeCircularStackImage templateWithLine1ImageProvider:v5 line2TextProvider:v6];

  return v7;
}

+ (id)graphicCircular:(id)circular
{
  circularCopy = circular;
  v5 = [self _graphicCircularImageProviderWithConflicts:{objc_msgSend(circularCopy, "displayAsConflicting")}];
  v6 = [self _graphicStackTextProvider:circularCopy];

  v7 = [CLKComplicationTemplateGraphicCircularStackImage templateWithLine1ImageProvider:v5 line2TextProvider:v6];

  v10 = NTKRichComplicationViewUsePlatterKey;
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v7 setMetadata:v8];

  return v7;
}

+ (id)signatureBezel:(id)bezel
{
  bezelCopy = bezel;
  overlappingEventCount = [bezelCopy overlappingEventCount];
  if (overlappingEventCount == &dword_0 + 1)
  {
    _wrappedPrimaryEventTitle = [bezelCopy _wrappedPrimaryEventTitle];
    v10 = [CLKSimpleTextProvider textProviderWithText:_wrappedPrimaryEventTitle];

    eventStartDate = [bezelCopy eventStartDate];
    v12 = +[NSTimeZone calendarTimeZone];
    v13 = [CLKTimeTextProvider textProviderWithDate:eventStartDate timeZone:v12];

    [v13 setPrefersDesignatorToMinutes:1];
    [v13 finalize];
    _wrappedPrimaryEventLocation = [bezelCopy _wrappedPrimaryEventLocation];
    if (_wrappedPrimaryEventLocation || ([bezelCopy _wrappedPrimaryEventOrganizerName], (_wrappedPrimaryEventLocation = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = _wrappedPrimaryEventLocation;
      v16 = [CLKSimpleTextProvider textProviderWithText:_wrappedPrimaryEventLocation];
      v17 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_FORMAT");
      v8 = [CLKTextProvider textProviderWithFormat:v17, v13, v10, v16];
    }

    else
    {
      v15 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_FORMAT_NO_SUBTITLE");
      v8 = [CLKTextProvider textProviderWithFormat:v15, v13, v10];
    }
  }

  else
  {
    v6 = overlappingEventCount;
    if (!overlappingEventCount)
    {
      v7 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_NO_EVENTS_TODAY");
      v8 = [CLKSimpleTextProvider textProviderWithText:v7];

      goto LABEL_13;
    }

    eventStartDate2 = [bezelCopy eventStartDate];
    if (NTKHourOfDateIsSingular())
    {
      v19 = @"SINGULAR";
    }

    else
    {
      v19 = @"PLURAL";
    }

    v10 = [@"NEXTEVENT_N_COINCIDENT_EVENTS_AT_TIME_LONG_UTILITY_" stringByAppendingString:v19];
    v20 = NCALComplicationLocalizedString(v10);
    v21 = [NSString localizedStringWithFormat:v20, v6, @"<ATTRIB_TIME_PLACEHOLD>"];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_AA48;
    v26[3] = &unk_20BD0;
    v27 = eventStartDate2;
    v22 = eventStartDate2;
    v8 = [NTKOverrideTextProvider textProviderWithText:v21 overrideBlock:v26];
  }

LABEL_13:
  v23 = [self signatureCircular:bezelCopy];
  v24 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v23 textProvider:v8];

  return v24;
}

+ (id)signatureCircular:(id)circular
{
  circularCopy = circular;
  v4 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  if (circularCopy && [circularCopy displayEntryDateInGraphicCircularView])
  {
    v9 = NCALDateComplicationOverrideMetadataKey;
    entryDate = [circularCopy entryDate];
    v10 = entryDate;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v4 setMetadata:v6];
  }

  v7 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v4];

  return v7;
}

+ (id)signatureCorner:(id)corner
{
  cornerCopy = corner;
  overlappingEventCount = [cornerCopy overlappingEventCount];
  if (overlappingEventCount == &dword_0 + 1)
  {
    if (NTKLanguageIsTallScript())
    {
      eventStartDate = [cornerCopy eventStartDate];
      eventEndDate = [cornerCopy eventEndDate];
      v10 = +[NSTimeZone calendarTimeZone];
      v8 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:eventStartDate endDate:eventEndDate timeZone:v10];

      goto LABEL_6;
    }

    eventStartDate2 = [cornerCopy eventStartDate];
    v8 = [CLKTimeTextProvider textProviderWithDate:eventStartDate2];

    _wrappedPrimaryEventTitle = [cornerCopy _wrappedPrimaryEventTitle];
    _signatureCornerImageProvider = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedPrimaryEventTitle];
  }

  else
  {
    v6 = overlappingEventCount;
    if (!overlappingEventCount)
    {
      eventStartDate = NCALComplicationLocalizedString(@"NEXTEVENT_NO_EVENTS_SIGNATURE_CORNER");
      v8 = [CLKSimpleTextProvider finalizedTextProviderWithText:eventStartDate];
LABEL_6:

      goto LABEL_11;
    }

    v11 = NCALComplicationLocalizedFormat(@"NEXTEVENT_CONFLICT_SIGNATURE_CORNER");
    _wrappedPrimaryEventTitle = [NSString localizedStringWithFormat:v11, v6];

    _signatureCornerImageProvider = [CLKSimpleTextProvider finalizedTextProviderWithText:_wrappedPrimaryEventTitle];
    eventStartDate3 = [cornerCopy eventStartDate];
    v15 = +[NSTimeZone calendarTimeZone];
    v8 = [CLKTimeTextProvider textProviderWithDate:eventStartDate3 timeZone:v15];
  }

  if (_signatureCornerImageProvider)
  {
    v17 = +[UIColor systemRedColor];
    [_signatureCornerImageProvider setTintColor:v17];

    v18 = +[UIColor whiteColor];
    [v8 setTintColor:v18];

    v19 = [CLKComplicationTemplateGraphicCornerStackText templateWithInnerTextProvider:_signatureCornerImageProvider outerTextProvider:v8];
    goto LABEL_12;
  }

LABEL_11:
  v20 = +[UIColor systemRedColor];
  [v8 setTintColor:v20];

  _signatureCornerImageProvider = [self _signatureCornerImageProvider];
  v19 = [CLKComplicationTemplateGraphicCornerTextImage templateWithTextProvider:v8 imageProvider:_signatureCornerImageProvider];
LABEL_12:
  v21 = v19;

  return v21;
}

+ (id)_signatureCornerImageProvider
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
  sub_AFA8(device, device);

  v4 = qword_28198;

  return v4;
}

+ (id)signatureRectangular:(id)rectangular
{
  rectangularCopy = rectangular;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [self contentForSignatureRectangular:rectangularCopy];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v5 setObject:v7 forKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewFirstTextKey"];
  }

  if ([v6 count] >= 2)
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    [v5 setObject:v8 forKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewSecondTextKey"];
  }

  if ([v6 count] >= 3)
  {
    v9 = [v6 objectAtIndexedSubscript:2];
    [v5 setObject:v9 forKeyedSubscript:@"NanoCalendarRichComplicationRectangularViewThirdTextKey"];
  }

  eventColors = [rectangularCopy eventColors];
  [v5 setObject:eventColors forKeyedSubscript:@"NanoCalendarRichComplicationRectangularEventColorsKey"];

  v11 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  [v11 setMetadata:v5];
  v12 = [CLKComplicationTemplateGraphicRectangularFullImage templateWithImageProvider:v11];

  return v12;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = NCALTimelineEntryModel;
  v3 = [(NCALTimelineEntryModel *)&v13 description];
  identifier = [(NCALTimelineEntryModel *)self identifier];
  entryDate = [(NCALTimelineEntryModel *)self entryDate];
  primaryEventTitle = [(NCALTimelineEntryModel *)self primaryEventTitle];
  primaryEventLocation = [(NCALTimelineEntryModel *)self primaryEventLocation];
  secondaryEventTitle = [(NCALTimelineEntryModel *)self secondaryEventTitle];
  eventStartDate = [(NCALTimelineEntryModel *)self eventStartDate];
  eventEndDate = [(NCALTimelineEntryModel *)self eventEndDate];
  v11 = [NSString stringWithFormat:@"%@ identifier: %@ entryDate %@ title 1 %@ location %@ title 2 %@ startDate %@ endDate %@", v3, identifier, entryDate, primaryEventTitle, primaryEventLocation, secondaryEventTitle, eventStartDate, eventEndDate];

  return v11;
}

+ (id)wrappedUserStringFrom:(id)from
{
  v3 = [from stringByAppendingString:@"⁩"];
  v4 = [@"⁨" stringByAppendingString:v3];

  return v4;
}

- (id)_wrappedPrimaryEventTitle
{
  primaryEventTitle = [(NCALTimelineEntryModel *)self primaryEventTitle];

  if (primaryEventTitle)
  {
    v4 = objc_opt_class();
    primaryEventTitle2 = [(NCALTimelineEntryModel *)self primaryEventTitle];
    v6 = [v4 wrappedUserStringFrom:primaryEventTitle2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wrappedSecondaryEventTitle
{
  secondaryEventTitle = [(NCALTimelineEntryModel *)self secondaryEventTitle];

  if (secondaryEventTitle)
  {
    v4 = objc_opt_class();
    secondaryEventTitle2 = [(NCALTimelineEntryModel *)self secondaryEventTitle];
    v6 = [v4 wrappedUserStringFrom:secondaryEventTitle2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wrappedPrimaryEventLocation
{
  primaryEventLocation = [(NCALTimelineEntryModel *)self primaryEventLocation];

  if (primaryEventLocation)
  {
    v4 = objc_opt_class();
    primaryEventLocation2 = [(NCALTimelineEntryModel *)self primaryEventLocation];
    v6 = [v4 wrappedUserStringFrom:primaryEventLocation2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wrappedPrimaryEventOrganizerName
{
  primaryEventOrganizerName = [(NCALTimelineEntryModel *)self primaryEventOrganizerName];

  if (primaryEventOrganizerName)
  {
    v4 = objc_opt_class();
    primaryEventOrganizerName2 = [(NCALTimelineEntryModel *)self primaryEventOrganizerName];
    v6 = [v4 wrappedUserStringFrom:primaryEventOrganizerName2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)lockedEntryForFamily:(int64_t)family
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_B768;
  v9[3] = &unk_20C58;
  v9[4] = self;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];
  sub_B768(v9, device);

  v7 = [self _entryForTemplateDescription:qword_281B8 family:family];

  return v7;
}

+ (id)loadingEntryForFamily:(int64_t)family
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_BE10;
  v9[3] = &unk_20C58;
  v9[4] = self;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];
  sub_BE10(v9, device);

  v7 = [self _entryForTemplateDescription:qword_281D8 family:family];

  return v7;
}

+ (id)_entryForTemplateDescription:(id)description family:(int64_t)family
{
  descriptionCopy = description;
  v7 = objc_opt_new();
  v8 = +[NSDate date];
  [v7 setDate:v8];

  if (NTKComplicationFamilyUtilitarianLargeNarrow == family)
  {
    utilityLarge = [descriptionCopy utilityLarge];
    v10 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:utilityLarge];
LABEL_7:
    v14 = v10;
LABEL_8:

    goto LABEL_9;
  }

  if (CLKComplicationFamilyCircularMedium == family)
  {
    v11 = CLKComplicationTemplateCircularMediumSimpleImage;
    circularMediumImage = [descriptionCopy circularMediumImage];
LABEL_5:
    utilityLarge = circularMediumImage;
    v13 = v11;
LABEL_6:
    v10 = [v13 templateWithImageProvider:utilityLarge];
    goto LABEL_7;
  }

  v14 = 0;
  if (family > 6)
  {
    if (family > 9)
    {
      switch(family)
      {
        case 10:
          v21 = CLKComplicationTemplateGraphicCircularStackImage;
          graphicExtraLargeTop = [self _graphicCircularImageProviderWithConflicts:0];
          break;
        case 11:
          utilityLarge = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
          v31[0] = @"NanoCalendarRichComplicationRectangularViewFirstTextKey";
          modularLargeHeader = [descriptionCopy modularLargeHeader];
          v32[0] = modularLargeHeader;
          v31[1] = @"NanoCalendarRichComplicationRectangularViewSecondTextKey";
          modularLargeFirst = [descriptionCopy modularLargeFirst];
          v32[1] = modularLargeFirst;
          v31[2] = @"NanoCalendarRichComplicationRectangularEventColorsKey";
          v27 = +[UIColor whiteColor];
          v30 = v27;
          v28 = [NSArray arrayWithObjects:&v30 count:1];
          v32[2] = v28;
          v29 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
          [utilityLarge setMetadata:v29];

          v13 = CLKComplicationTemplateGraphicRectangularFullImage;
          goto LABEL_6;
        case 12:
          v21 = CLKComplicationTemplateGraphicExtraLargeCircularStackImage;
          graphicExtraLargeTop = [descriptionCopy graphicExtraLargeTop];
          break;
        default:
          goto LABEL_9;
      }
    }

    else
    {
      if (family != 7)
      {
        if (family == 8)
        {
          v19 = CLKComplicationTemplateGraphicCornerTextImage;
          utilityLarge = [descriptionCopy signatureCornerTextProvider];
          _signatureCornerImageProvider = [self _signatureCornerImageProvider];
          goto LABEL_41;
        }

        utilityLarge = [self signatureCircular:0];
        signatureBezel = [descriptionCopy signatureBezel];
        v18 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:utilityLarge textProvider:signatureBezel];
        goto LABEL_42;
      }

      v21 = CLKComplicationTemplateExtraLargeStackImage;
      graphicExtraLargeTop = [descriptionCopy extraLargeTop];
    }

    utilityLarge = graphicExtraLargeTop;
    graphicStackTimeText = [descriptionCopy graphicStackTimeText];
    goto LABEL_38;
  }

  if (family <= 2)
  {
    if (family)
    {
      if (family != 1)
      {
        if (family != 2)
        {
          goto LABEL_9;
        }

        goto LABEL_27;
      }

      utilityLarge = [descriptionCopy modularLargeHeader];
      signatureBezel = [descriptionCopy modularLargeFirst];
      v18 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:utilityLarge body1TextProvider:signatureBezel];
LABEL_42:
      v14 = v18;

      goto LABEL_8;
    }

    v21 = CLKComplicationTemplateModularSmallStackImage;
    utilityLarge = [descriptionCopy modularSmallTop];
    graphicStackTimeText = [descriptionCopy modularSmallBottom];
LABEL_38:
    signatureBezel = graphicStackTimeText;
    v18 = [v21 templateWithLine1ImageProvider:utilityLarge line2TextProvider:graphicStackTimeText];
    goto LABEL_42;
  }

  switch(family)
  {
    case 3:
      v19 = CLKComplicationTemplateUtilitarianLargeFlat;
      utilityLarge2 = [descriptionCopy utilityLarge];
      goto LABEL_35;
    case 4:
      v11 = CLKComplicationTemplateCircularSmallSimpleImage;
      circularMediumImage = [descriptionCopy circularSmallImage];
      goto LABEL_5;
    case 6:
LABEL_27:
      v19 = CLKComplicationTemplateUtilitarianSmallFlat;
      utilityLarge2 = [descriptionCopy utilitySmall];
LABEL_35:
      utilityLarge = utilityLarge2;
      _signatureCornerImageProvider = [descriptionCopy utilityImageProvider];
LABEL_41:
      signatureBezel = _signatureCornerImageProvider;
      v18 = [v19 templateWithTextProvider:utilityLarge imageProvider:_signatureCornerImageProvider];
      goto LABEL_42;
  }

LABEL_9:
  v15 = +[UIColor systemRedColor];
  [v14 setTintColor:v15];

  if (v14)
  {
    [v7 setComplicationTemplate:v14];
  }

  return v7;
}

+ (id)sampleEventTemplateForFamily:(int64_t)family
{
  v4 = objc_opt_new();
  v5 = NTKIdealizedDate();
  [v4 setEntryDate:v5];
  [v4 setEventsInDayCount:1];
  [v4 setOverlappingEventCount:1];
  v6 = NTKColorWithRGBA();
  v22 = v6;
  v7 = [NSArray arrayWithObjects:&v22 count:1];
  [v4 setEventColors:v7];

  v8 = NTKStartOfDayForDate();
  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 components:62 fromDate:v5];
  familyCopy = family;
  if ((family | 2) == 0xB)
  {
    v11 = NCALComplicationLocalizedString(@"COMPLICATION_SAMPLE_CALENDAR_TITLE_ALTERNATE");
    [v4 setPrimaryEventTitle:v11];

    v12 = NCALComplicationLocalizedString(@"COMPLICATION_SAMPLE_CALENDAR_LOCATION_ALTERNATE");
    v13 = 0;
    v14 = 9;
    v15 = 8;
  }

  else
  {
    v16 = NCALComplicationLocalizedString(@"COMPLICATION_SAMPLE_CALENDAR_TITLE");
    [v4 setPrimaryEventTitle:v16];

    v12 = NCALComplicationLocalizedString(@"COMPLICATION_SAMPLE_CALENDAR_LOCATION");
    v14 = 17;
    v13 = 30;
    v15 = 16;
  }

  [v4 setPrimaryEventLocation:v12];

  [v10 setHour:v15];
  [v10 setMinute:v13];
  v17 = [v9 nextDateAfterDate:v8 matchingComponents:v10 options:2];
  [v4 setEventStartDate:v17];

  [v10 setHour:v14];
  v18 = [v9 nextDateAfterDate:v8 matchingComponents:v10 options:2];
  [v4 setEventEndDate:v18];

  v19 = [v4 templateForComplicationFamily:familyCopy];

  return v19;
}

@end