@interface NTKMoonPhaseTimelineEntryModel
+ (id)circular:(id)circular isMedium:(BOOL)medium;
+ (id)extraLarge:(id)large;
+ (id)largeModular:(id)modular;
+ (id)largeUtility:(id)utility;
+ (id)smallModular:(id)modular;
+ (id)smallUtility:(id)utility;
+ (id)textForMoonPhaseEvent:(int64_t)event useShort:(BOOL)short;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKMoonPhaseTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  v5 = 0;
  if (family > 2)
  {
    switch(family)
    {
      case 3:
        v6 = [objc_opt_class() largeUtility:self];
        break;
      case 4:
        v6 = [objc_opt_class() circular:self isMedium:0];
        break;
      case 7:
        v6 = [objc_opt_class() extraLarge:self];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (family)
  {
    if (family == 1)
    {
      v6 = [objc_opt_class() largeModular:self];
    }

    else
    {
      if (family != 2)
      {
        goto LABEL_15;
      }

      v6 = [objc_opt_class() smallUtility:self];
    }
  }

  else
  {
    v6 = [objc_opt_class() smallModular:self];
  }

  v5 = v6;
LABEL_15:
  if (CLKComplicationFamilyCircularMedium == family)
  {
    v7 = [objc_opt_class() circular:self isMedium:1];

    v5 = v7;
  }

  return v5;
}

+ (id)largeModular:(id)modular
{
  modularCopy = modular;
  phaseName = [modularCopy phaseName];
  v6 = [self providerWithText:phaseName];

  eventDate = [modularCopy eventDate];
  if (!eventDate || (v8 = eventDate, v9 = [modularCopy event], v8, v9 == -1))
  {
    v14 = +[NTKNoContentTemplateProvider largeModularEmptyTextProvider];
    v16 = 0;
  }

  else
  {
    eventDate2 = [modularCopy eventDate];
    v11 = [CLKTimeTextProvider textProviderWithDate:eventDate2];

    v12 = [self textForMoonPhaseEvent:{objc_msgSend(modularCopy, "event")}];
    v13 = [self providerWithText:v12];
    v14 = [CLKTextProvider textProviderWithFormat:@"%@ %@", v13, v11];
    if ([modularCopy currentEvent])
    {
      eventDate3 = NTKClockFaceLocalizedString();
      [CLKSimpleTextProvider textProviderWithText:eventDate3];
    }

    else
    {
      eventDate3 = [modularCopy eventDate];
      [CLKRelativeDateTextProvider textProviderWithDate:eventDate3 style:0 units:96];
    }
    v16 = ;
  }

  v17 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v6 body1TextProvider:v14 body2TextProvider:v16];
  v18 = [UIColor colorWithRed:0.807843137 green:0.941176471 blue:0.564705882 alpha:1.0];
  [v17 setTintColor:v18];

  return v17;
}

+ (id)smallModular:(id)modular
{
  modularCopy = modular;
  [modularCopy phaseNumber];
  [modularCopy hemisphere];

  v5 = NUNIMoonImageForPhaseNumber();
  v6 = [self imageProviderWithOnePieceImage:v5];
  v7 = [CLKComplicationTemplateModularSmallSimpleImage templateWithImageProvider:v6];
  v8 = +[UIColor whiteColor];
  [v7 setTintColor:v8];

  return v7;
}

+ (id)smallUtility:(id)utility
{
  utilityCopy = utility;
  [utilityCopy phaseNumber];
  [utilityCopy hemisphere];

  v5 = NUNIMoonImageForPhaseNumber();
  v6 = [self imageProviderWithOnePieceImage:v5];
  v7 = [CLKComplicationTemplateUtilitarianSmallSquare templateWithImageProvider:v6];

  return v7;
}

+ (id)circular:(id)circular isMedium:(BOOL)medium
{
  mediumCopy = medium;
  circularCopy = circular;
  [circularCopy phaseNumber];
  [circularCopy hemisphere];

  if (mediumCopy)
  {
    v7 = CLKComplicationTemplateCircularMediumCircularImage_ptr;
  }

  else
  {
    v7 = CLKComplicationTemplateCircularSmallCircularImage_ptr;
  }

  v8 = NUNIMoonImageForPhaseNumber();
  v9 = [self imageProviderWithOnePieceImage:v8];
  v10 = [*v7 templateWithImageProvider:v9];

  return v10;
}

+ (id)largeUtility:(id)utility
{
  phaseName = [utility phaseName];
  v5 = [self providerWithText:phaseName];

  v6 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v5];

  return v6;
}

+ (id)extraLarge:(id)large
{
  largeCopy = large;
  [largeCopy phaseNumber];
  [largeCopy hemisphere];

  v5 = NUNIMoonImageForPhaseNumber();
  v6 = [self imageProviderWithOnePieceImage:v5];
  v7 = [CLKComplicationTemplateExtraLargeSimpleImage templateWithImageProvider:v6];
  v8 = +[UIColor whiteColor];
  [v7 setTintColor:v8];

  return v7;
}

+ (id)textForMoonPhaseEvent:(int64_t)event useShort:(BOOL)short
{
  if ((event + 1) > 3)
  {
    v4 = 0;
    if (!short)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = off_8258[event + 1];
  if (short)
  {
LABEL_5:
    v4 = [(__CFString *)v4 stringByAppendingString:@"_SHORT"];
  }

LABEL_6:
  v5 = NUNILocalizedString();

  return v5;
}

@end