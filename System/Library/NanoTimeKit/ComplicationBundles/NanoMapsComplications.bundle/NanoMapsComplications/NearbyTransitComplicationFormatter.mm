@interface NearbyTransitComplicationFormatter
+ (BOOL)supportsFamily:(int64_t)a3 forDevice:(id)a4;
+ (CLKFullColorSymbolImageProvider)fullColorSymbolProvider;
+ (CLKSymbolImageProvider)symbolProvider;
+ (id)_templateWithFamily:(int64_t)a3;
+ (id)formattedTemplateWithFamily:(int64_t)a3 forDevice:(id)a4;
@end

@implementation NearbyTransitComplicationFormatter

+ (CLKSymbolImageProvider)symbolProvider
{
  v3 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:@"tram.fill"];
  v4 = [a1 tintColor];
  [v3 setTintColor:v4];

  return v3;
}

+ (CLKFullColorSymbolImageProvider)fullColorSymbolProvider
{
  v3 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:@"tram.fill"];
  v4 = [a1 tintColor];
  [v3 setTintColor:v4];

  return v3;
}

+ (BOOL)supportsFamily:(int64_t)a3 forDevice:(id)a4
{
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x1795u >> a3;
    if (a3 > 0xC)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

+ (id)formattedTemplateWithFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = [a1 _templateWithFamily:{a3, a4}];
  v6 = [a1 tintColor];
  [v5 setTintColor:v6];

  return v5;
}

+ (id)_templateWithFamily:(int64_t)a3
{
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v4 = CLKComplicationTemplateCircularMediumSimpleImage;
    goto LABEL_3;
  }

  v7 = 0;
  if (a3 <= 7)
  {
    if (a3 > 3)
    {
      if (a3 != 4)
      {
        if (a3 != 7)
        {
          goto LABEL_23;
        }

        v4 = CLKComplicationTemplateExtraLargeSimpleImage;
        goto LABEL_3;
      }
    }

    else if (a3)
    {
      if (a3 != 2)
      {
        goto LABEL_23;
      }

      v4 = CLKComplicationTemplateUtilitarianSmallSquare;
      goto LABEL_3;
    }

    v4 = CLKComplicationTemplateModularSmallSimpleImage;
LABEL_3:
    v5 = [v4 alloc];
    v6 = [a1 symbolProvider];
    v7 = [v5 initWithImageProvider:v6];
    goto LABEL_22;
  }

  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v16 = [CLKComplicationTemplateGraphicCircularImage alloc];
      v17 = [a1 fullColorSymbolProvider];
      v7 = [v16 initWithImageProvider:v17];

      v21 = NTKRichComplicationViewUsePlatterKey;
      v22 = &__kCFBooleanTrue;
      v10 = &v22;
      v11 = &v21;
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_23;
      }

      v12 = [CLKComplicationTemplateGraphicExtraLargeCircularImage alloc];
      v13 = [a1 fullColorSymbolProvider];
      v7 = [v12 initWithImageProvider:v13];

      v19 = NTKRichComplicationViewUsePlatterKey;
      v20 = &__kCFBooleanTrue;
      v10 = &v20;
      v11 = &v19;
    }
  }

  else if (a3 == 8)
  {
    v14 = [CLKComplicationTemplateGraphicCornerCircularImage alloc];
    v15 = [a1 fullColorSymbolProvider];
    v7 = [v14 initWithImageProvider:v15];

    v23 = NTKRichComplicationViewUsePlatterKey;
    v24 = &__kCFBooleanTrue;
    v10 = &v24;
    v11 = &v23;
  }

  else
  {
    v8 = [CLKComplicationTemplateGraphicCircularImage alloc];
    v9 = [a1 fullColorSymbolProvider];
    v7 = [v8 initWithImageProvider:v9];

    v25 = NTKRichComplicationViewUsePlatterKey;
    v26 = &__kCFBooleanTrue;
    v10 = &v26;
    v11 = &v25;
  }

  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
  [v7 setMetadata:v6];
LABEL_22:

LABEL_23:

  return v7;
}

@end