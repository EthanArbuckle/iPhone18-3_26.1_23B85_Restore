@interface NearbyTransitComplicationFormatter
+ (BOOL)supportsFamily:(int64_t)family forDevice:(id)device;
+ (CLKFullColorSymbolImageProvider)fullColorSymbolProvider;
+ (CLKSymbolImageProvider)symbolProvider;
+ (id)_templateWithFamily:(int64_t)family;
+ (id)formattedTemplateWithFamily:(int64_t)family forDevice:(id)device;
@end

@implementation NearbyTransitComplicationFormatter

+ (CLKSymbolImageProvider)symbolProvider
{
  v3 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:@"tram.fill"];
  tintColor = [self tintColor];
  [v3 setTintColor:tintColor];

  return v3;
}

+ (CLKFullColorSymbolImageProvider)fullColorSymbolProvider
{
  v3 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:@"tram.fill"];
  tintColor = [self tintColor];
  [v3 setTintColor:tintColor];

  return v3;
}

+ (BOOL)supportsFamily:(int64_t)family forDevice:(id)device
{
  if (CLKComplicationFamilyCircularMedium == family)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x1795u >> family;
    if (family > 0xC)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

+ (id)formattedTemplateWithFamily:(int64_t)family forDevice:(id)device
{
  v5 = [self _templateWithFamily:{family, device}];
  tintColor = [self tintColor];
  [v5 setTintColor:tintColor];

  return v5;
}

+ (id)_templateWithFamily:(int64_t)family
{
  if (CLKComplicationFamilyCircularMedium == family)
  {
    v4 = CLKComplicationTemplateCircularMediumSimpleImage;
    goto LABEL_3;
  }

  v7 = 0;
  if (family <= 7)
  {
    if (family > 3)
    {
      if (family != 4)
      {
        if (family != 7)
        {
          goto LABEL_23;
        }

        v4 = CLKComplicationTemplateExtraLargeSimpleImage;
        goto LABEL_3;
      }
    }

    else if (family)
    {
      if (family != 2)
      {
        goto LABEL_23;
      }

      v4 = CLKComplicationTemplateUtilitarianSmallSquare;
      goto LABEL_3;
    }

    v4 = CLKComplicationTemplateModularSmallSimpleImage;
LABEL_3:
    v5 = [v4 alloc];
    symbolProvider = [self symbolProvider];
    v7 = [v5 initWithImageProvider:symbolProvider];
    goto LABEL_22;
  }

  if (family > 9)
  {
    if (family == 10)
    {
      v16 = [CLKComplicationTemplateGraphicCircularImage alloc];
      fullColorSymbolProvider = [self fullColorSymbolProvider];
      v7 = [v16 initWithImageProvider:fullColorSymbolProvider];

      v21 = NTKRichComplicationViewUsePlatterKey;
      v22 = &__kCFBooleanTrue;
      v10 = &v22;
      v11 = &v21;
    }

    else
    {
      if (family != 12)
      {
        goto LABEL_23;
      }

      v12 = [CLKComplicationTemplateGraphicExtraLargeCircularImage alloc];
      fullColorSymbolProvider2 = [self fullColorSymbolProvider];
      v7 = [v12 initWithImageProvider:fullColorSymbolProvider2];

      v19 = NTKRichComplicationViewUsePlatterKey;
      v20 = &__kCFBooleanTrue;
      v10 = &v20;
      v11 = &v19;
    }
  }

  else if (family == 8)
  {
    v14 = [CLKComplicationTemplateGraphicCornerCircularImage alloc];
    fullColorSymbolProvider3 = [self fullColorSymbolProvider];
    v7 = [v14 initWithImageProvider:fullColorSymbolProvider3];

    v23 = NTKRichComplicationViewUsePlatterKey;
    v24 = &__kCFBooleanTrue;
    v10 = &v24;
    v11 = &v23;
  }

  else
  {
    v8 = [CLKComplicationTemplateGraphicCircularImage alloc];
    fullColorSymbolProvider4 = [self fullColorSymbolProvider];
    v7 = [v8 initWithImageProvider:fullColorSymbolProvider4];

    v25 = NTKRichComplicationViewUsePlatterKey;
    v26 = &__kCFBooleanTrue;
    v10 = &v26;
    v11 = &v25;
  }

  symbolProvider = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
  [v7 setMetadata:symbolProvider];
LABEL_22:

LABEL_23:

  return v7;
}

@end