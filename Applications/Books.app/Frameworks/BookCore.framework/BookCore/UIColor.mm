@interface UIColor
+ (id)_colorForUserInterfaceStyle:(int64_t)a3 fromColor:(id)a4 forTraitCollection:(id)a5;
+ (id)bc_booksAXSeparatorColor;
+ (id)bc_booksBlue;
+ (id)bc_booksCyan;
+ (id)bc_booksGreen;
+ (id)bc_booksIconBackgroundColor;
+ (id)bc_booksKeyColor;
+ (id)bc_booksMagenta;
+ (id)bc_booksOpaqueSecondaryLabelColor;
+ (id)bc_booksOrange;
+ (id)bc_booksPurple;
+ (id)bc_booksRed;
+ (id)bc_booksSecondaryIconBackgroundColor;
+ (id)bc_booksTableSelectionColor;
+ (id)bc_booksTransportControlsColor;
+ (id)bc_booksWidgetBackgroundOverlayBottom;
+ (id)bc_booksWidgetBackgroundOverlayTop;
+ (id)bc_colorWithSRGBDescription:(id)a3;
+ (id)bc_darkSystemBackgroundForTraitCollection:(id)a3;
+ (id)bc_dynamicColorWithLightColor:(id)a3 darkColor:(id)a4;
+ (id)bc_nowPlayingVibrantPrimary;
+ (id)bc_nowPlayingVibrantQuaternary;
+ (id)bc_nowPlayingVibrantSecondary;
+ (id)bc_nowPlayingVibrantTertiary;
+ (id)bc_welcomeButtonColor;
- (NSString)bc_hexValue;
- (NSString)bc_rgbaHexValue;
- (NSString)bc_rgbaString;
- (UIColor)bc_invertedDynamicColor;
- (double)bc_brightness;
- (id)bc_darkenedColorByFactor:(double)a3;
- (id)bc_resaturatedColorByFactor:(double)a3;
- (id)bkaxAdjustedDarkerForIncreaseContrast;
- (id)bkaxAdjustedForIncreaseContrast;
- (id)bkaxAdjustedForIncreaseContrastAdjustingDarker:(BOOL)a3;
- (id)bkaxAdjustedLighterForIncreaseContrast;
- (unint64_t)bc_ARGBHexValue;
@end

@implementation UIColor

- (id)bc_darkenedColorByFactor:(double)a3
{
  v4 = self;
  if (sub_1E483C(v4))
  {
    v10 = 0.0;
    v11 = 0.0;
    if (![(UIColor *)v4 getWhite:&v11 alpha:&v10])
    {
      goto LABEL_7;
    }

    v11 = (1.0 - a3) * v11;
    v5 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v8 = 0;
    v9 = 0.0;
    if (![(UIColor *)v4 getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8])
    {
      goto LABEL_7;
    }

    v9 = (1.0 - a3) * v9;
    v10 = v10 + (1.0 - v10) * a3;
    v5 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v11 brightness:? alpha:?];
  }

  v6 = v5;

  v4 = v6;
LABEL_7:

  return v4;
}

+ (id)bc_colorWithSRGBDescription:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"a"];
    v7 = v6;
    if (v6)
    {
      [v6 floatValue];
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v11 = [v5 objectForKey:@"w"];
    v12 = v11;
    if (v11)
    {
      v10 = [a1 colorWithWhite:objc_msgSend(v11 alpha:{"intValue") / 255.0, v9}];
    }

    else
    {
      v13 = [v5 objectForKey:@"r"];
      v14 = v13;
      v15 = 0.0;
      v16 = 0.0;
      if (v13)
      {
        v16 = [v13 intValue] / 255.0;
      }

      v17 = [v5 objectForKey:@"g"];
      v18 = v17;
      if (v17)
      {
        v15 = [v17 intValue] / 255.0;
      }

      v19 = [v5 objectForKey:@"b"];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 intValue] / 255.0;
      }

      else
      {
        v21 = 0.0;
      }

      v10 = [a1 colorWithRed:v16 green:v15 blue:v21 alpha:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)bc_welcomeButtonColor
{
  v2 = +[UIColor systemBlackColor];
  v3 = +[UIColor tertiarySystemBackgroundColor];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

- (unint64_t)bc_ARGBHexValue
{
  result = [(UIColor *)self CGColor];
  if (result)
  {
    v3 = result;
    NumberOfComponents = CGColorGetNumberOfComponents(result);
    Components = CGColorGetComponents(v3);
    if (NumberOfComponents == 4)
    {
      v7 = *Components;
      v6 = Components[2];
      v8 = 3;
    }

    else
    {
      if (NumberOfComponents != 2)
      {
        v10 = 0;
        v11 = 0.0;
        v9 = 0.0;
        goto LABEL_8;
      }

      v6 = *Components;
      v7 = vdupq_lane_s64(*Components, 0);
      v8 = 1;
    }

    v9 = Components[v8] * 255.0;
    v10 = vcvt_f32_f64(vmulq_f64(v7, vdupq_n_s64(0x406FE00000000000uLL)));
    v11 = v6 * 255.0;
LABEL_8:
    v12 = vshl_u32(vcvt_s32_f32(vrnda_f32(v10)), 0x800000010);
    return (vorr_s8(vdup_lane_s32(v12, 1), v12).u32[0] | llroundf(v11) | (llroundf(v9) << 24));
  }

  return result;
}

- (NSString)bc_hexValue
{
  v2 = [(UIColor *)self CGColor];
  Components = CGColorGetComponents(v2);
  if (CGColorGetNumberOfComponents(v2) <= 2)
  {
    v4 = *Components;
    v10[0] = vdupq_lane_s64(*Components, 0);
    v10[1] = v4;
    Components = v10;
  }

  v5 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v6 = *&Components[v5] * 255.0;
    *(&v8 + v5++) = rintf(v6);
  }

  while (v5 != 3);
  return [NSString stringWithFormat:@"%02X%02X%02X", 255.0, v8, HIDWORD(v8), v9];
}

- (NSString)bc_rgbaString
{
  v2 = [(UIColor *)self CGColor];
  if (v2)
  {
    v3 = v2;
    NumberOfComponents = CGColorGetNumberOfComponents(v2);
    Components = CGColorGetComponents(v3);
    if (NumberOfComponents == 4)
    {
      v10 = *Components;
      v12 = Components[1];
      v11 = 3;
      v13 = Components[2];
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      if (NumberOfComponents != 2)
      {
LABEL_7:
        v2 = [NSString stringWithFormat:@"rgba(%.6g%%, %.6g%%, %.6g%%, %.6g)", *&v6, *&v7, *&v8, *&v9];
        goto LABEL_8;
      }

      v10 = *Components;
      v11 = 1;
      v12 = *Components;
      v13 = *Components;
    }

    v9 = Components[v11];
    v6 = v10 * 100.0;
    v7 = v12 * 100.0;
    v8 = v13 * 100.0;
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

- (NSString)bc_rgbaHexValue
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  v4 = 0.0;
  [(UIColor *)self getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  v2 = [NSString stringWithFormat:@"%02X%02X%02X%02X", (v7 * 255.0), (v6 * 255.0), (v5 * 255.0), (v4 * 255.0)];

  return v2;
}

- (double)bc_brightness
{
  data = 0;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v4 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 1uLL, DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  if (v4)
  {
    CGContextSetFillColorWithColor(v4, [(UIColor *)self CGColor]);
    v8.origin.x = 0.0;
    v8.origin.y = 0.0;
    v8.size.width = 1.0;
    v8.size.height = 1.0;
    CGContextFillRect(v4, v8);
    CGContextRelease(v4);
  }

  else
  {
    NSLog(@"NULL context while testing color brightness");
  }

  LOBYTE(v5) = data;
  return v5 / 255.0;
}

+ (id)bc_dynamicColorWithLightColor:(id)a3 darkColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
  v13[0] = v7;
  v14[0] = v6;
  v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v13[1] = v8;
  v14[1] = v6;
  v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v13[2] = v9;
  v14[2] = v5;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = [UIColor _dynamicColorWithColorsByTraitCollection:v10];

  return v11;
}

+ (id)bc_booksWidgetBackgroundOverlayTop
{
  v2 = [UIColor colorWithWhite:0.0 alpha:0.0];
  v3 = [UIColor colorWithWhite:1.0 alpha:0.12];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksWidgetBackgroundOverlayBottom
{
  v2 = [UIColor colorWithWhite:0.0 alpha:0.06];
  v3 = [UIColor colorWithWhite:1.0 alpha:0.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksKeyColor
{
  v2 = [UIColor colorWithWhite:0.0 alpha:1.0];
  v3 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksOpaqueSecondaryLabelColor
{
  v2 = [UIColor colorWithRed:0.525490196 green:0.525490196 blue:0.549019608 alpha:1.0];
  v3 = [UIColor colorWithRed:0.596078431 green:0.596078431 blue:0.623529412 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksRed
{
  v2 = [UIColor colorWithRed:0.784313725 green:0.235294118 blue:0.235294118 alpha:1.0];
  v3 = [UIColor colorWithRed:0.580392157 green:0.203921569 blue:0.203921569 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksOrange
{
  v2 = [UIColor colorWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  v3 = [UIColor colorWithRed:0.701960784 green:0.364705882 blue:0.0705882353 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksGreen
{
  v2 = [UIColor colorWithRed:0.211764706 green:0.580392157 blue:0.384313725 alpha:1.0];
  v3 = [UIColor colorWithRed:0.156862745 green:0.388235294 blue:0.274509804 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksCyan
{
  v2 = [UIColor colorWithRed:0.0 green:0.615686275 blue:0.862745098 alpha:1.0];
  v3 = [UIColor colorWithRed:0.180392157 green:0.48627451 blue:0.721568627 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksBlue
{
  v2 = [UIColor colorWithRed:0.0274509804 green:0.278431373 blue:0.556862745 alpha:1.0];
  v3 = [UIColor colorWithRed:0.11372549 green:0.274509804 blue:0.458823529 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksPurple
{
  v2 = [UIColor colorWithRed:0.329411765 green:0.329411765 blue:0.580392157 alpha:1.0];
  v3 = [UIColor colorWithRed:0.247058824 green:0.247058824 blue:0.431372549 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksMagenta
{
  v2 = [UIColor colorWithRed:0.937254902 green:0.152941176 blue:0.298039216 alpha:1.0];
  v3 = [UIColor colorWithRed:0.788235294 green:0.235294118 blue:0.301960784 alpha:1.0];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksIconBackgroundColor
{
  v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v3 = [UIColor colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.6];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksSecondaryIconBackgroundColor
{
  v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v3 = [UIColor colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.22];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksAXSeparatorColor
{
  v2 = [UIColor colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.45];
  v3 = [UIColor colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.35];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksTableSelectionColor
{
  v2 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.15];
  v3 = [UIColor colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.12];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)bc_booksTransportControlsColor
{
  v2 = [[UIColor alloc] initWithDynamicProvider:&stru_2CE310];

  return v2;
}

+ (id)bc_nowPlayingVibrantPrimary
{
  v2 = +[UIColor whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.94];

  return v3;
}

+ (id)bc_nowPlayingVibrantSecondary
{
  v2 = +[UIColor whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.45];

  return v3;
}

+ (id)bc_nowPlayingVibrantTertiary
{
  v2 = +[UIColor whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.18];

  return v3;
}

+ (id)bc_nowPlayingVibrantQuaternary
{
  v2 = +[UIColor whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.08];

  return v3;
}

+ (id)_colorForUserInterfaceStyle:(int64_t)a3 fromColor:(id)a4 forTraitCollection:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v8 = v7;
    v9 = a4;
  }

  else
  {
    v10 = a4;
    v8 = objc_opt_new();
  }

  v11 = +[UITraitCollection _currentTraitCollection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_14EA4C;
  v16[3] = &unk_2C9BB8;
  v16[4] = a3;
  v12 = [v8 traitCollectionByModifyingTraits:v16];
  [UITraitCollection _setCurrentTraitCollection:v12];
  v13 = [a4 CGColor];

  v14 = [UIColor colorWithCGColor:v13];
  [UITraitCollection _setCurrentTraitCollection:v11];

  return v14;
}

+ (id)bc_darkSystemBackgroundForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[UIColor systemBackgroundColor];
  v6 = [v4 _colorForUserInterfaceStyle:2 fromColor:v5 forTraitCollection:v3];

  return v6;
}

- (UIColor)bc_invertedDynamicColor
{
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v4 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v5 = [(UIColor *)self resolvedColorWithTraitCollection:v3];
  v6 = [(UIColor *)self resolvedColorWithTraitCollection:v4];
  v7 = [v5 isEqual:v6];
  if (v7)
  {
    sub_1EBA0C(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  if ([v5 isEqual:v6])
  {
    v15 = 0;
  }

  else
  {
    v16 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    v19[0] = v16;
    v19[1] = v3;
    v20[0] = v6;
    v20[1] = v6;
    v19[2] = v4;
    v20[2] = v5;
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = [UIColor _dynamicColorWithColorsByTraitCollection:v17];
  }

  return v15;
}

- (id)bkaxAdjustedForIncreaseContrast
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 currentTraitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = &selRef_bkaxAdjustedLighterForIncreaseContrast;
  if (v6 != &dword_0 + 2)
  {
    v7 = &selRef_bkaxAdjustedDarkerForIncreaseContrast;
  }

  v8 = [v4 *v7];

  return v8;
}

- (id)bkaxAdjustedLighterForIncreaseContrast
{
  v2 = [(UIColor *)self bkaxAdjustedForIncreaseContrastAdjustingDarker:0];

  return v2;
}

- (id)bkaxAdjustedDarkerForIncreaseContrast
{
  v2 = [(UIColor *)self bkaxAdjustedForIncreaseContrastAdjustingDarker:1];

  return v2;
}

- (id)bkaxAdjustedForIncreaseContrastAdjustingDarker:(BOOL)a3
{
  v4 = self;
  v5.super.isa = UIColor.bkaxAdjustedForIncreaseContrast(darker:)(a3).super.isa;

  return v5.super.isa;
}

- (id)bc_resaturatedColorByFactor:(double)a3
{
  v4 = self;
  if ((sub_1E483C(v4) & 1) == 0)
  {
    v9 = 0.0;
    v10 = 0.0;
    v7 = 0;
    v8 = 0;
    if ([(UIColor *)v4 getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7])
    {
      v9 = v9 * a3;
      v5 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v10 brightness:? alpha:?];

      v4 = v5;
    }
  }

  return v4;
}

@end