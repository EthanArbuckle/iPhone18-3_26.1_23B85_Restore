@interface NTKMoonPhaseTimelineEntryModel
+ (id)circular:(id)a3 isMedium:(BOOL)a4;
+ (id)extraLarge:(id)a3;
+ (id)largeModular:(id)a3;
+ (id)largeUtility:(id)a3;
+ (id)smallModular:(id)a3;
+ (id)smallUtility:(id)a3;
+ (id)textForMoonPhaseEvent:(int64_t)a3 useShort:(BOOL)a4;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKMoonPhaseTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  v5 = 0;
  if (a3 > 2)
  {
    switch(a3)
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

  else if (a3)
  {
    if (a3 == 1)
    {
      v6 = [objc_opt_class() largeModular:self];
    }

    else
    {
      if (a3 != 2)
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
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v7 = [objc_opt_class() circular:self isMedium:1];

    v5 = v7;
  }

  return v5;
}

+ (id)largeModular:(id)a3
{
  v4 = a3;
  v5 = [v4 phaseName];
  v6 = [a1 providerWithText:v5];

  v7 = [v4 eventDate];
  if (!v7 || (v8 = v7, v9 = [v4 event], v8, v9 == -1))
  {
    v14 = +[NTKNoContentTemplateProvider largeModularEmptyTextProvider];
    v16 = 0;
  }

  else
  {
    v10 = [v4 eventDate];
    v11 = [CLKTimeTextProvider textProviderWithDate:v10];

    v12 = [a1 textForMoonPhaseEvent:{objc_msgSend(v4, "event")}];
    v13 = [a1 providerWithText:v12];
    v14 = [CLKTextProvider textProviderWithFormat:@"%@ %@", v13, v11];
    if ([v4 currentEvent])
    {
      v15 = NTKClockFaceLocalizedString();
      [CLKSimpleTextProvider textProviderWithText:v15];
    }

    else
    {
      v15 = [v4 eventDate];
      [CLKRelativeDateTextProvider textProviderWithDate:v15 style:0 units:96];
    }
    v16 = ;
  }

  v17 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v6 body1TextProvider:v14 body2TextProvider:v16];
  v18 = [UIColor colorWithRed:0.807843137 green:0.941176471 blue:0.564705882 alpha:1.0];
  [v17 setTintColor:v18];

  return v17;
}

+ (id)smallModular:(id)a3
{
  v4 = a3;
  [v4 phaseNumber];
  [v4 hemisphere];

  v5 = NUNIMoonImageForPhaseNumber();
  v6 = [a1 imageProviderWithOnePieceImage:v5];
  v7 = [CLKComplicationTemplateModularSmallSimpleImage templateWithImageProvider:v6];
  v8 = +[UIColor whiteColor];
  [v7 setTintColor:v8];

  return v7;
}

+ (id)smallUtility:(id)a3
{
  v4 = a3;
  [v4 phaseNumber];
  [v4 hemisphere];

  v5 = NUNIMoonImageForPhaseNumber();
  v6 = [a1 imageProviderWithOnePieceImage:v5];
  v7 = [CLKComplicationTemplateUtilitarianSmallSquare templateWithImageProvider:v6];

  return v7;
}

+ (id)circular:(id)a3 isMedium:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 phaseNumber];
  [v6 hemisphere];

  if (v4)
  {
    v7 = CLKComplicationTemplateCircularMediumCircularImage_ptr;
  }

  else
  {
    v7 = CLKComplicationTemplateCircularSmallCircularImage_ptr;
  }

  v8 = NUNIMoonImageForPhaseNumber();
  v9 = [a1 imageProviderWithOnePieceImage:v8];
  v10 = [*v7 templateWithImageProvider:v9];

  return v10;
}

+ (id)largeUtility:(id)a3
{
  v4 = [a3 phaseName];
  v5 = [a1 providerWithText:v4];

  v6 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v5];

  return v6;
}

+ (id)extraLarge:(id)a3
{
  v4 = a3;
  [v4 phaseNumber];
  [v4 hemisphere];

  v5 = NUNIMoonImageForPhaseNumber();
  v6 = [a1 imageProviderWithOnePieceImage:v5];
  v7 = [CLKComplicationTemplateExtraLargeSimpleImage templateWithImageProvider:v6];
  v8 = +[UIColor whiteColor];
  [v7 setTintColor:v8];

  return v7;
}

+ (id)textForMoonPhaseEvent:(int64_t)a3 useShort:(BOOL)a4
{
  if ((a3 + 1) > 3)
  {
    v4 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = off_8258[a3 + 1];
  if (a4)
  {
LABEL_5:
    v4 = [(__CFString *)v4 stringByAppendingString:@"_SHORT"];
  }

LABEL_6:
  v5 = NUNILocalizedString();

  return v5;
}

@end