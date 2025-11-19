@interface NCALTimelineEntryModel
+ (id)_entryForTemplateDescription:(id)a3 family:(int64_t)a4;
+ (id)_extraLargeCalendarImageProviderWithConflicts:(BOOL)a3;
+ (id)_graphicStackTextProvider:(id)a3;
+ (id)_modularSmallCalendarImageWithConflicts:(BOOL)a3;
+ (id)_signatureCornerImageProvider;
+ (id)_swapPlaceholderString:(id)a3 withTimeStringForDate:(id)a4 inString:(id)a5 usingBaseFont:(id)a6 smallCapsBaseFont:(id)a7 timeZone:(id)a8 options:(unint64_t)a9;
+ (id)_utilityCalendarImageProvider;
+ (id)circular:(id)a3 isMedium:(BOOL)a4;
+ (id)contentForLargeModular:(id)a3;
+ (id)contentForSignatureRectangular:(id)a3;
+ (id)eventStartDateTextProvider:(id)a3;
+ (id)extraLarge:(id)a3;
+ (id)graphicCircular:(id)a3;
+ (id)graphicExtraLarge:(id)a3;
+ (id)largeModular:(id)a3;
+ (id)largeUtility:(id)a3;
+ (id)loadingEntryForFamily:(int64_t)a3;
+ (id)lockedEntryForFamily:(int64_t)a3;
+ (id)sampleEventTemplateForFamily:(int64_t)a3;
+ (id)signatureBezel:(id)a3;
+ (id)signatureCircular:(id)a3;
+ (id)signatureCorner:(id)a3;
+ (id)signatureRectangular:(id)a3;
+ (id)smallModular:(id)a3;
+ (id)smallUtility:(id)a3;
+ (id)wrappedUserStringFrom:(id)a3;
- (id)_wrappedPrimaryEventLocation;
- (id)_wrappedPrimaryEventOrganizerName;
- (id)_wrappedPrimaryEventTitle;
- (id)_wrappedSecondaryEventTitle;
- (id)description;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NCALTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  if (NTKComplicationFamilyUtilitarianLargeNarrow == a3)
  {
    goto LABEL_2;
  }

  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v5 = objc_opt_class();
    v6 = self;
    v7 = 1;
LABEL_5:
    v4 = [v5 circular:v6 isMedium:v7];
    goto LABEL_6;
  }

  v8 = 0;
  if (a3 > 6)
  {
    if (a3 <= 9)
    {
      if (a3 == 7)
      {
        v4 = [objc_opt_class() extraLarge:self];
      }

      else
      {
        if (a3 == 8)
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

    switch(a3)
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
    if (a3 <= 2)
    {
      if (!a3)
      {
        v4 = [objc_opt_class() smallModular:self];
        goto LABEL_6;
      }

      if (a3 == 1)
      {
        v4 = [objc_opt_class() largeModular:self];
        goto LABEL_6;
      }

      if (a3 != 2)
      {
        goto LABEL_7;
      }

LABEL_24:
      v4 = [objc_opt_class() smallUtility:self];
      goto LABEL_6;
    }

    switch(a3)
    {
      case 3:
LABEL_2:
        v4 = [objc_opt_class() largeUtility:self];
LABEL_6:
        v8 = v4;
        break;
      case 4:
        v5 = objc_opt_class();
        v6 = self;
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

+ (id)largeModular:(id)a3
{
  v4 = a3;
  v5 = [a1 contentForLargeModular:v4];
  v6 = [v5 firstObject];
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
  v10 = [v4 overlappingEventCount];
  if (v10 == &dword_0 + 1)
  {
    v11 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v6 body1TextProvider:v7 body2TextProvider:v8];
    if (![v4 displayAsConflicting])
    {
      goto LABEL_18;
    }

    v12 = [CLKImageProvider imageProviderWithOnePieceImage:v9];
    [v11 setBody1ImageProvider:v12];
  }

  else
  {
    if (!v10)
    {
      v11 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v6 body1TextProvider:v7];
      goto LABEL_18;
    }

    v12 = NCALComplicationLocalizedString(@"NEXTEVENT_N_COINCIDENT_EVENTS_LINE_ITEM_LARGE_MODULAR");
    v13 = [CLKSimpleTextProvider finalizedTextProviderWithText:v12];
    if (!v8)
    {
      v8 = [CLKSimpleTextProvider textProviderWithText:&stru_20EF0];
    }

    v11 = [CLKComplicationTemplateModularLargeTable templateWithHeaderTextProvider:v6 row1Column1TextProvider:v13 row1Column2TextProvider:v7 row2Column1TextProvider:v13 row2Column2TextProvider:v8];
    [v11 setUseNoColumnPadding:1];
    if ([v4 displayAsConflicting])
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

+ (id)contentForLargeModular:(id)a3
{
  v3 = a3;
  v4 = [v3 overlappingEventCount];
  v5 = v4 - 1;
  if (v4 == &dword_0 + 1)
  {
    v9 = [v3 eventStartDate];
    v10 = [v3 eventEndDate];
    v11 = +[NSTimeZone calendarTimeZone];
    v12 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:v9 endDate:v10 timeZone:v11];

    v13 = [v3 _wrappedPrimaryEventTitle];
    v14 = [CLKSimpleTextProvider finalizedTextProviderWithText:v13];

    v15 = [v3 _wrappedPrimaryEventLocation];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v3 _wrappedPrimaryEventOrganizerName];
    }

    v28 = v17;

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
    v6 = v4;
    if (v4)
    {
      v18 = [v3 eventStartDate];
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
      v23 = v18;
      v34 = v23;
      v12 = [NTKOverrideTextProvider textProviderWithText:v22 overrideBlock:v33];
      v24 = [v3 _wrappedPrimaryEventTitle];
      v14 = [CLKSimpleTextProvider finalizedTextProviderWithText:v24];

      if (v6 == &dword_0 + 2)
      {
        v25 = [v3 _wrappedSecondaryEventTitle];
      }

      else
      {
        v26 = NCALComplicationLocalizedString(@"NEXTEVENT_N_MORE_ELLIPSIS_LARGE_MODULAR");
        v25 = [NSString localizedStringWithFormat:v26, v5];
      }

      v27 = [CLKSimpleTextProvider finalizedTextProviderWithText:v25];
    }

    else
    {
      v7 = NCALComplicationLocalizedString(@"NEXTEVENT_NEXT_EVENT_TITLE_LARGE_MODULAR");
      if ([v3 displayAsTomorrow])
      {
        v8 = @"NEXTEVENT_NO_EVENTS_TOMORROW_LARGE_MODULAR";
      }

      else if ([v3 displayAsFirstInDay])
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

+ (id)contentForSignatureRectangular:(id)a3
{
  v3 = a3;
  v4 = [v3 overlappingEventCount];
  v5 = v4 - 1;
  if (v4 == &dword_0 + 1)
  {
    v13 = [v3 eventStartDate];
    v14 = [v3 eventEndDate];
    v15 = +[NSTimeZone calendarTimeZone];
    v10 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:v13 endDate:v14 timeZone:v15];

    v16 = [v3 _wrappedPrimaryEventTitle];
    v11 = [CLKSimpleTextProvider finalizedTextProviderWithText:v16];

    v17 = [v3 _wrappedPrimaryEventLocation];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v3 _wrappedPrimaryEventOrganizerName];
    }

    v7 = v19;

    if (![v7 length])
    {
      v12 = 0;
      goto LABEL_30;
    }

    v32 = [NTKOverrideTextProvider textProviderWithText:v7 overrideBlock:&stru_20BF0];
LABEL_22:
    v12 = v32;
    goto LABEL_30;
  }

  v6 = v4;
  if (v4)
  {
    if ([v3 overlappingDates])
    {
      v20 = [v3 eventStartDate];
      v21 = [v3 eventEndDate];
      v22 = +[NSTimeZone calendarTimeZone];
      v10 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:v20 endDate:v21 timeZone:v22];
    }

    else
    {
      v20 = [v3 eventStartDate];
      v10 = [CLKTimeTextProvider textProviderWithDate:v20];
    }

    v30 = [v3 _wrappedPrimaryEventTitle];
    v11 = [CLKSimpleTextProvider finalizedTextProviderWithText:v30];

    if (v6 == &dword_0 + 2)
    {
      v7 = [v3 _wrappedSecondaryEventTitle];
    }

    else
    {
      v31 = NCALComplicationLocalizedFormat(@"NEXTEVENT_N_MORE_EVENTS_SIGNATURE_RECTANGULAR");
      v7 = [NSString localizedStringWithFormat:v31, v5];
    }

    v32 = [CLKSimpleTextProvider finalizedTextProviderWithText:v7];
    goto LABEL_22;
  }

  if ([v3 displayAsTomorrow])
  {
    v7 = NCALComplicationLocalizedString(@"NEXTEVENT_NEXT_EVENT_TOMORROW_TITLE_SIGNATURE_RECTANGULAR");
    v8 = NCALComplicationLocalizedString(@"NEXTEVENT_NO_EVENTS_TOMORROW_SUBTITLE_SIGNATURE_RECTANGULAR");
    v9 = 0;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = +[NSBundle mainBundle];
    v24 = [v23 preferredLocalizations];
    v25 = [v24 firstObject];
    v26 = [NSLocale localeWithLocaleIdentifier:v25];

    v27 = [v3 entryDate];
    v28 = [NTKComplicationDateFormatter stringForDate:v27 withStyle:32];
    v7 = [v28 uppercaseStringWithLocale:v26];

    v9 = NCALComplicationLocalizedString(@"NEXTEVENT_NO_EVENT_SUBTITLE_SIGNATURE_RECTANGULAR");
    if ([v3 displayAsFirstInDay])
    {
      v29 = @"NEXTEVENT_NO_EVENTS_TODAY_SIGNATURE_RECTANGULAR";
    }

    else
    {
      v29 = @"NEXTEVENT_NO_EVENTS_LEFT_TODAY_SIGNATURE_RECTANGULAR";
    }

    v8 = NCALComplicationLocalizedString(v29);

    if (v7)
    {
LABEL_5:
      v10 = [CLKSimpleTextProvider finalizedTextProviderWithText:v7];
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

+ (id)_swapPlaceholderString:(id)a3 withTimeStringForDate:(id)a4 inString:(id)a5 usingBaseFont:(id)a6 smallCapsBaseFont:(id)a7 timeZone:(id)a8 options:(unint64_t)a9
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [a7 CLKFontWithLocalizedSmallCaps];
  v18 = CLKTimeDesignatorAttribute;
  v43 = CLKTimeDesignatorAttribute;
  v44 = &__kCFBooleanTrue;
  v19 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v20 = +[NSTimeZone calendarTimeZone];
  v21 = [NSAttributedString NTKTimeWithDate:v15 andDesignatorAttributes:v19 timeZone:v20 options:0];

  v22 = [v21 mutableCopy];
  [v22 beginEditing];
  v23 = [v22 length];
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_92A4;
  v37 = &unk_20C18;
  v24 = v22;
  v38 = v24;
  v25 = v17;
  v39 = v25;
  v26 = v13;
  v40 = v26;
  [v24 enumerateAttribute:v18 inRange:0 options:v23 usingBlock:{0x100000, &v34}];
  [v24 endEditing];
  v27 = [v14 rangeOfString:v16];
  v29 = v28;

  v30 = [NSMutableAttributedString alloc];
  v41 = NSFontAttributeName;
  v42 = v26;
  v31 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v32 = [v30 initWithString:v14 attributes:v31];

  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v32 replaceCharactersInRange:v27 withAttributedString:{v29, v24}];
  }

  return v32;
}

+ (id)smallUtility:(id)a3
{
  v3 = a3;
  v4 = [v3 overlappingEventCount];
  if ([v3 displayAsConflicting])
  {
    v5 = 0;
  }

  else
  {
    v5 = NCALComplicationImageNamed(@"analogNextEventCalendarBackground");
  }

  if ([v3 displayAsConflicting])
  {
    v6 = 0;
  }

  else
  {
    v6 = NCALComplicationImageNamed(@"analogNextEventCalendarForeground");
  }

  if ([v3 displayAsConflicting])
  {
    v7 = @"analogNextEventCoincidentAlertGlyph";
  }

  else
  {
    v7 = @"analogNextEventCalendar";
  }

  v8 = NCALComplicationImageNamed(v7);
  if ([v3 displayAsConflicting])
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
  if (v4)
  {
    v11 = [v3 eventStartDate];
    v12 = +[NSTimeZone calendarTimeZone];
    v13 = [CLKTimeTextProvider textProviderWithDate:v11 timeZone:v12];
  }

  else
  {
    v11 = NCALComplicationLocalizedString(@"NEXTEVENT_NONE_SHORT_UTILITY");
    v13 = [CLKSimpleTextProvider finalizedTextProviderWithText:v11];
  }

  v14 = [CLKComplicationTemplateUtilitarianSmallFlat templateWithTextProvider:v13 imageProvider:v10];

  return v14;
}

+ (id)_modularSmallCalendarImageWithConflicts:(BOOL)a3
{
  if (a3)
  {
    v3 = @"graphicSmallCalendarConflict";
  }

  else
  {
    v3 = @"graphicCalendar";
  }

  if (a3)
  {
    v4 = @"graphicSmallCalendarConflictNoAccent";
  }

  else
  {
    v4 = @"graphicCalendarNoAccent";
  }

  if (a3)
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

+ (id)_extraLargeCalendarImageProviderWithConflicts:(BOOL)a3
{
  if (a3)
  {
    v3 = @"XLgraphicSmallCalendarConflict";
  }

  else
  {
    v3 = @"XLgraphicCalendar";
  }

  if (a3)
  {
    v4 = @"XLgraphicSmallCalendarConflictNoAccent";
  }

  else
  {
    v4 = @"XLgraphicCalendarNoAccent";
  }

  if (a3)
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
  v3 = [v2 device];
  sub_9810(v3, v3);

  v4 = qword_28178;

  return v4;
}

+ (id)smallModular:(id)a3
{
  v4 = a3;
  v5 = [v4 overlappingEventCount];
  v6 = [a1 _modularSmallCalendarImageWithConflicts:{objc_msgSend(v4, "displayAsConflicting")}];
  if (v5)
  {
    v7 = [v4 eventStartDate];
    [a1 eventStartDateTextProvider:v7];
  }

  else
  {
    v7 = NCALComplicationLocalizedString(@"NEXTEVENT_NONE_SHORT_UTILITY");
    [CLKSimpleTextProvider finalizedTextProviderWithText:v7];
  }
  v8 = ;

  v9 = [CLKComplicationTemplateModularSmallStackImage templateWithLine1ImageProvider:v6 line2TextProvider:v8];
  v10 = +[UIColor systemRedColor];
  [v9 setTintColor:v10];

  return v9;
}

+ (id)largeUtility:(id)a3
{
  v3 = a3;
  v4 = NCALComplicationImageNamed(@"analogNextEventCoincidentAlertGlyph");
  v5 = [v3 overlappingEventCount];
  if (v5 == &dword_0 + 1)
  {
    v8 = [v3 eventStartDate];
    v9 = +[NSTimeZone calendarTimeZone];
    v10 = [CLKTimeTextProvider textProviderWithDate:v8 timeZone:v9];

    [v10 setPrefersDesignatorToMinutes:1];
    v11 = [v3 _wrappedPrimaryEventTitle];
    if (v11)
    {
      v12 = [v3 _wrappedPrimaryEventTitle];
      v13 = +[NSLocale currentLocale];
      v14 = [v12 uppercaseStringWithLocale:v13];
    }

    else
    {
      v14 = &stru_20EF0;
    }

    v24 = [CLKSimpleTextProvider textProviderWithText:v14];
    v21 = [CLKTextProvider textProviderWithFormat:@"%@ %@", v10, v24];
    if ([v3 displayAsConflicting])
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
    v6 = v5;
    if (v5)
    {
      v15 = [v3 eventStartDate];
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
      v20 = v15;
      v30 = v20;
      v21 = [NTKOverrideTextProvider textProviderWithText:v19 overrideBlock:v29];
      [v21 finalize];
      if ([v3 displayAsConflicting])
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
      if ([v3 displayAsTomorrow])
      {
        v7 = @"NEXTEVENT_NO_EVENTS_TOMORROW_LONG_UTILITY";
      }

      else if ([v3 displayAsFirstInDay])
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

+ (id)circular:(id)a3 isMedium:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 overlappingEventCount])
  {
    v7 = @"analog";
    if (v4)
    {
      v7 = @"victory";
      v8 = CLKComplicationTemplateCircularMediumStackImage_ptr;
    }

    else
    {
      v8 = CLKComplicationTemplateCircularSmallStackImage_ptr;
    }

    v9 = v7;
    if ([v6 displayAsConflicting])
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
    v14 = [v6 eventStartDate];
    v15 = [a1 eventStartDateTextProvider:v14];

    v16 = [*v8 templateWithLine1ImageProvider:v13 line2TextProvider:v15];
  }

  else
  {
    if (v4)
    {
      v17 = @"victoryCalendarNone";
    }

    else
    {
      v17 = @"colorAnalogCalendarNoContent";
    }

    if (v4)
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

+ (id)extraLarge:(id)a3
{
  v4 = a3;
  v5 = [a1 _extraLargeCalendarImageProviderWithConflicts:{objc_msgSend(v4, "displayAsConflicting")}];
  v6 = [a1 _graphicStackTextProvider:v4];

  v7 = [CLKComplicationTemplateExtraLargeStackImage templateWithLine1ImageProvider:v5 line2TextProvider:v6];
  v8 = +[UIColor systemRedColor];
  [v7 setTintColor:v8];

  return v7;
}

+ (id)_graphicStackTextProvider:(id)a3
{
  v4 = a3;
  if ([v4 overlappingEventCount])
  {
    v5 = [v4 eventStartDate];
    [a1 eventStartDateTextProvider:v5];
  }

  else
  {
    v5 = NCALComplicationLocalizedString(@"NEXTEVENT_NONE_SHORT_UTILITY");
    [CLKSimpleTextProvider finalizedTextProviderWithText:v5];
  }
  v6 = ;

  return v6;
}

+ (id)eventStartDateTextProvider:(id)a3
{
  v3 = a3;
  v4 = +[NSTimeZone calendarTimeZone];
  v5 = [CLKTimeTextProvider textProviderWithDate:v3 timeZone:v4];

  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:64 fromDate:v3];

  if (![v7 minute])
  {
    [v5 setDisallowBothMinutesAndDesignator:1];
  }

  [v5 setPrefersDesignatorToMinutes:1];
  [v5 finalize];

  return v5;
}

+ (id)graphicExtraLarge:(id)a3
{
  v4 = a3;
  v5 = [a1 _graphicExtraLargeImageProviderWithConflicts:{objc_msgSend(v4, "displayAsConflicting")}];
  v6 = [a1 _graphicStackTextProvider:v4];

  v7 = [CLKComplicationTemplateGraphicExtraLargeCircularStackImage templateWithLine1ImageProvider:v5 line2TextProvider:v6];

  return v7;
}

+ (id)graphicCircular:(id)a3
{
  v4 = a3;
  v5 = [a1 _graphicCircularImageProviderWithConflicts:{objc_msgSend(v4, "displayAsConflicting")}];
  v6 = [a1 _graphicStackTextProvider:v4];

  v7 = [CLKComplicationTemplateGraphicCircularStackImage templateWithLine1ImageProvider:v5 line2TextProvider:v6];

  v10 = NTKRichComplicationViewUsePlatterKey;
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v7 setMetadata:v8];

  return v7;
}

+ (id)signatureBezel:(id)a3
{
  v4 = a3;
  v5 = [v4 overlappingEventCount];
  if (v5 == &dword_0 + 1)
  {
    v9 = [v4 _wrappedPrimaryEventTitle];
    v10 = [CLKSimpleTextProvider textProviderWithText:v9];

    v11 = [v4 eventStartDate];
    v12 = +[NSTimeZone calendarTimeZone];
    v13 = [CLKTimeTextProvider textProviderWithDate:v11 timeZone:v12];

    [v13 setPrefersDesignatorToMinutes:1];
    [v13 finalize];
    v14 = [v4 _wrappedPrimaryEventLocation];
    if (v14 || ([v4 _wrappedPrimaryEventOrganizerName], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = [CLKSimpleTextProvider textProviderWithText:v14];
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
    v6 = v5;
    if (!v5)
    {
      v7 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_NO_EVENTS_TODAY");
      v8 = [CLKSimpleTextProvider textProviderWithText:v7];

      goto LABEL_13;
    }

    v18 = [v4 eventStartDate];
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
    v27 = v18;
    v22 = v18;
    v8 = [NTKOverrideTextProvider textProviderWithText:v21 overrideBlock:v26];
  }

LABEL_13:
  v23 = [a1 signatureCircular:v4];
  v24 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v23 textProvider:v8];

  return v24;
}

+ (id)signatureCircular:(id)a3
{
  v3 = a3;
  v4 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  if (v3 && [v3 displayEntryDateInGraphicCircularView])
  {
    v9 = NCALDateComplicationOverrideMetadataKey;
    v5 = [v3 entryDate];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v4 setMetadata:v6];
  }

  v7 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v4];

  return v7;
}

+ (id)signatureCorner:(id)a3
{
  v4 = a3;
  v5 = [v4 overlappingEventCount];
  if (v5 == &dword_0 + 1)
  {
    if (NTKLanguageIsTallScript())
    {
      v7 = [v4 eventStartDate];
      v9 = [v4 eventEndDate];
      v10 = +[NSTimeZone calendarTimeZone];
      v8 = [CLKTimeIntervalTextProvider finalizedTextProviderWithStartDate:v7 endDate:v9 timeZone:v10];

      goto LABEL_6;
    }

    v16 = [v4 eventStartDate];
    v8 = [CLKTimeTextProvider textProviderWithDate:v16];

    v12 = [v4 _wrappedPrimaryEventTitle];
    v13 = [CLKSimpleTextProvider finalizedTextProviderWithText:v12];
  }

  else
  {
    v6 = v5;
    if (!v5)
    {
      v7 = NCALComplicationLocalizedString(@"NEXTEVENT_NO_EVENTS_SIGNATURE_CORNER");
      v8 = [CLKSimpleTextProvider finalizedTextProviderWithText:v7];
LABEL_6:

      goto LABEL_11;
    }

    v11 = NCALComplicationLocalizedFormat(@"NEXTEVENT_CONFLICT_SIGNATURE_CORNER");
    v12 = [NSString localizedStringWithFormat:v11, v6];

    v13 = [CLKSimpleTextProvider finalizedTextProviderWithText:v12];
    v14 = [v4 eventStartDate];
    v15 = +[NSTimeZone calendarTimeZone];
    v8 = [CLKTimeTextProvider textProviderWithDate:v14 timeZone:v15];
  }

  if (v13)
  {
    v17 = +[UIColor systemRedColor];
    [v13 setTintColor:v17];

    v18 = +[UIColor whiteColor];
    [v8 setTintColor:v18];

    v19 = [CLKComplicationTemplateGraphicCornerStackText templateWithInnerTextProvider:v13 outerTextProvider:v8];
    goto LABEL_12;
  }

LABEL_11:
  v20 = +[UIColor systemRedColor];
  [v8 setTintColor:v20];

  v13 = [a1 _signatureCornerImageProvider];
  v19 = [CLKComplicationTemplateGraphicCornerTextImage templateWithTextProvider:v8 imageProvider:v13];
LABEL_12:
  v21 = v19;

  return v21;
}

+ (id)_signatureCornerImageProvider
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
  sub_AFA8(v3, v3);

  v4 = qword_28198;

  return v4;
}

+ (id)signatureRectangular:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [a1 contentForSignatureRectangular:v4];
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

  v10 = [v4 eventColors];
  [v5 setObject:v10 forKeyedSubscript:@"NanoCalendarRichComplicationRectangularEventColorsKey"];

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
  v4 = [(NCALTimelineEntryModel *)self identifier];
  v5 = [(NCALTimelineEntryModel *)self entryDate];
  v6 = [(NCALTimelineEntryModel *)self primaryEventTitle];
  v7 = [(NCALTimelineEntryModel *)self primaryEventLocation];
  v8 = [(NCALTimelineEntryModel *)self secondaryEventTitle];
  v9 = [(NCALTimelineEntryModel *)self eventStartDate];
  v10 = [(NCALTimelineEntryModel *)self eventEndDate];
  v11 = [NSString stringWithFormat:@"%@ identifier: %@ entryDate %@ title 1 %@ location %@ title 2 %@ startDate %@ endDate %@", v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

+ (id)wrappedUserStringFrom:(id)a3
{
  v3 = [a3 stringByAppendingString:@"⁩"];
  v4 = [@"⁨" stringByAppendingString:v3];

  return v4;
}

- (id)_wrappedPrimaryEventTitle
{
  v3 = [(NCALTimelineEntryModel *)self primaryEventTitle];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(NCALTimelineEntryModel *)self primaryEventTitle];
    v6 = [v4 wrappedUserStringFrom:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wrappedSecondaryEventTitle
{
  v3 = [(NCALTimelineEntryModel *)self secondaryEventTitle];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(NCALTimelineEntryModel *)self secondaryEventTitle];
    v6 = [v4 wrappedUserStringFrom:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wrappedPrimaryEventLocation
{
  v3 = [(NCALTimelineEntryModel *)self primaryEventLocation];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(NCALTimelineEntryModel *)self primaryEventLocation];
    v6 = [v4 wrappedUserStringFrom:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wrappedPrimaryEventOrganizerName
{
  v3 = [(NCALTimelineEntryModel *)self primaryEventOrganizerName];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(NCALTimelineEntryModel *)self primaryEventOrganizerName];
    v6 = [v4 wrappedUserStringFrom:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)lockedEntryForFamily:(int64_t)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_B768;
  v9[3] = &unk_20C58;
  v9[4] = a1;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];
  sub_B768(v9, v6);

  v7 = [a1 _entryForTemplateDescription:qword_281B8 family:a3];

  return v7;
}

+ (id)loadingEntryForFamily:(int64_t)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_BE10;
  v9[3] = &unk_20C58;
  v9[4] = a1;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];
  sub_BE10(v9, v6);

  v7 = [a1 _entryForTemplateDescription:qword_281D8 family:a3];

  return v7;
}

+ (id)_entryForTemplateDescription:(id)a3 family:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = +[NSDate date];
  [v7 setDate:v8];

  if (NTKComplicationFamilyUtilitarianLargeNarrow == a4)
  {
    v9 = [v6 utilityLarge];
    v10 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v9];
LABEL_7:
    v14 = v10;
LABEL_8:

    goto LABEL_9;
  }

  if (CLKComplicationFamilyCircularMedium == a4)
  {
    v11 = CLKComplicationTemplateCircularMediumSimpleImage;
    v12 = [v6 circularMediumImage];
LABEL_5:
    v9 = v12;
    v13 = v11;
LABEL_6:
    v10 = [v13 templateWithImageProvider:v9];
    goto LABEL_7;
  }

  v14 = 0;
  if (a4 > 6)
  {
    if (a4 > 9)
    {
      switch(a4)
      {
        case 10:
          v21 = CLKComplicationTemplateGraphicCircularStackImage;
          v22 = [a1 _graphicCircularImageProviderWithConflicts:0];
          break;
        case 11:
          v9 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
          v31[0] = @"NanoCalendarRichComplicationRectangularViewFirstTextKey";
          v25 = [v6 modularLargeHeader];
          v32[0] = v25;
          v31[1] = @"NanoCalendarRichComplicationRectangularViewSecondTextKey";
          v26 = [v6 modularLargeFirst];
          v32[1] = v26;
          v31[2] = @"NanoCalendarRichComplicationRectangularEventColorsKey";
          v27 = +[UIColor whiteColor];
          v30 = v27;
          v28 = [NSArray arrayWithObjects:&v30 count:1];
          v32[2] = v28;
          v29 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
          [v9 setMetadata:v29];

          v13 = CLKComplicationTemplateGraphicRectangularFullImage;
          goto LABEL_6;
        case 12:
          v21 = CLKComplicationTemplateGraphicExtraLargeCircularStackImage;
          v22 = [v6 graphicExtraLargeTop];
          break;
        default:
          goto LABEL_9;
      }
    }

    else
    {
      if (a4 != 7)
      {
        if (a4 == 8)
        {
          v19 = CLKComplicationTemplateGraphicCornerTextImage;
          v9 = [v6 signatureCornerTextProvider];
          v24 = [a1 _signatureCornerImageProvider];
          goto LABEL_41;
        }

        v9 = [a1 signatureCircular:0];
        v17 = [v6 signatureBezel];
        v18 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v9 textProvider:v17];
        goto LABEL_42;
      }

      v21 = CLKComplicationTemplateExtraLargeStackImage;
      v22 = [v6 extraLargeTop];
    }

    v9 = v22;
    v23 = [v6 graphicStackTimeText];
    goto LABEL_38;
  }

  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        if (a4 != 2)
        {
          goto LABEL_9;
        }

        goto LABEL_27;
      }

      v9 = [v6 modularLargeHeader];
      v17 = [v6 modularLargeFirst];
      v18 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v9 body1TextProvider:v17];
LABEL_42:
      v14 = v18;

      goto LABEL_8;
    }

    v21 = CLKComplicationTemplateModularSmallStackImage;
    v9 = [v6 modularSmallTop];
    v23 = [v6 modularSmallBottom];
LABEL_38:
    v17 = v23;
    v18 = [v21 templateWithLine1ImageProvider:v9 line2TextProvider:v23];
    goto LABEL_42;
  }

  switch(a4)
  {
    case 3:
      v19 = CLKComplicationTemplateUtilitarianLargeFlat;
      v20 = [v6 utilityLarge];
      goto LABEL_35;
    case 4:
      v11 = CLKComplicationTemplateCircularSmallSimpleImage;
      v12 = [v6 circularSmallImage];
      goto LABEL_5;
    case 6:
LABEL_27:
      v19 = CLKComplicationTemplateUtilitarianSmallFlat;
      v20 = [v6 utilitySmall];
LABEL_35:
      v9 = v20;
      v24 = [v6 utilityImageProvider];
LABEL_41:
      v17 = v24;
      v18 = [v19 templateWithTextProvider:v9 imageProvider:v24];
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

+ (id)sampleEventTemplateForFamily:(int64_t)a3
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
  v21 = a3;
  if ((a3 | 2) == 0xB)
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

  v19 = [v4 templateForComplicationFamily:v21];

  return v19;
}

@end