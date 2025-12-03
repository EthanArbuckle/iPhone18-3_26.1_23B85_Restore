@interface NVMComplicationFormatter
- (BOOL)supportsFamily:(int64_t)family forDevice:(id)device;
- (id)_templateWithFamily:(int64_t)family forDevice:(id)device;
- (id)basicAccentImageProviderWithPrefix:(id)prefix;
- (id)fullColorImageProviderWithPrefix:(id)prefix suffix:(id)suffix;
- (id)imageProviderWithPrefix:(id)prefix suffix:(id)suffix;
@end

@implementation NVMComplicationFormatter

- (BOOL)supportsFamily:(int64_t)family forDevice:(id)device
{
  if (CLKComplicationFamilyCircularMedium == family)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x1595u >> family;
    if (family > 0xC)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (id)basicAccentImageProviderWithPrefix:(id)prefix
{
  prefix = [NSString stringWithFormat:@"%@_voicememos-color", prefix];
  v4 = sub_B80(prefix);
  v5 = [CLKImageProvider imageProviderWithOnePieceImage:v4];
  [v5 setForegroundAccentImage:v4];

  return v5;
}

- (id)imageProviderWithPrefix:(id)prefix suffix:(id)suffix
{
  prefixCopy = prefix;
  suffixCopy = suffix;
  if (prefixCopy)
  {
    v7 = prefixCopy;
  }

  else
  {
    v7 = &stru_4200;
  }

  if (suffixCopy)
  {
    v8 = suffixCopy;
  }

  else
  {
    v8 = &stru_4200;
  }

  v19 = [NSString stringWithFormat:@"%@_voicememos%@", v7, v8];
  v20 = [NSString stringWithFormat:@"%@_voicememos-color%@", v7, v8];
  v9 = [NSString stringWithFormat:@"%@_voicememos-background%@", v7, v8];
  v10 = [NSString stringWithFormat:@"%@_voicememos-foreground%@", v7, v8];
  v11 = sub_B80(v20);
  v12 = sub_B80(v19);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = sub_B80(v9);
  v16 = sub_B80(v10);
  v17 = [CLKImageProvider imageProviderWithOnePieceImage:v14 twoPieceImageBackground:v15 twoPieceImageForeground:v16];

  return v17;
}

- (id)fullColorImageProviderWithPrefix:(id)prefix suffix:(id)suffix
{
  suffix = [NSString stringWithFormat:@"%@_voicememos-color%@", prefix, suffix];
  v5 = sub_B80(suffix);
  v6 = [CLKFullColorImageProvider providerWithFullColorImage:v5 monochromeFilterType:1 applyScalingAndCircularMasking:0];

  return v6;
}

- (id)_templateWithFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (CLKComplicationFamilyCircularMedium == family)
  {
    v7 = CLKComplicationTemplateCircularMediumSimpleImage;
    v8 = @"circular-md";
LABEL_3:
    v9 = [(NVMComplicationFormatter *)self imageProviderWithPrefix:v8];
LABEL_22:
    v12 = v9;
    v10 = [v7 templateWithImageProvider:v9];
    goto LABEL_23;
  }

  v10 = 0;
  if (family <= 6)
  {
    if (family)
    {
      if (family != 2)
      {
        if (family != 4)
        {
          goto LABEL_24;
        }

        v7 = CLKComplicationTemplateCircularSmallSimpleImage;
        v8 = @"circular-sm";
        goto LABEL_3;
      }

      v7 = CLKComplicationTemplateUtilitarianSmallSquare;
      v16 = @"utility-corner";
    }

    else
    {
      v7 = CLKComplicationTemplateModularSmallSimpleImage;
      v16 = @"modular-sm";
    }

LABEL_21:
    v9 = [(NVMComplicationFormatter *)self basicAccentImageProviderWithPrefix:v16];
    goto LABEL_22;
  }

  if (family > 9)
  {
    if (family == 10)
    {
      v17 = [(NVMComplicationFormatter *)self fullColorImageProviderWithPrefix:@"graphic-circular" suffix:@"-394h"];
      v10 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v17];

      v22 = @"NTKRichComplicationViewBackgroundColorKey";
      v12 = sub_C54();
      v23 = v12;
      v13 = &v23;
      v14 = &v22;
    }

    else
    {
      if (family != 12)
      {
        goto LABEL_24;
      }

      v15 = [(NVMComplicationFormatter *)self fullColorImageProviderWithPrefix:@"graphic-XL" suffix:@"-394h"];
      v10 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v15];

      v20 = @"NTKRichComplicationViewBackgroundColorKey";
      v12 = sub_C54();
      v21 = v12;
      v13 = &v21;
      v14 = &v20;
    }

    goto LABEL_19;
  }

  if (family == 7)
  {
    v7 = CLKComplicationTemplateExtraLargeSimpleImage;
    v16 = @"XL";
    goto LABEL_21;
  }

  if (family != 8)
  {
    goto LABEL_24;
  }

  v11 = [(NVMComplicationFormatter *)self fullColorImageProviderWithPrefix:@"graphic-corner" suffix:@"-394h"];
  v10 = [CLKComplicationTemplateGraphicCornerCircularImage templateWithImageProvider:v11];

  v24 = @"NTKRichComplicationViewBackgroundColorKey";
  v12 = sub_C54();
  v25 = v12;
  v13 = &v25;
  v14 = &v24;
LABEL_19:
  v18 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
  [v10 setMetadata:v18];

LABEL_23:
LABEL_24:

  return v10;
}

@end