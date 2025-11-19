@interface FallbackMediaEffect
+ (id)effectWithBrightness:(unint64_t)a3;
- (id)effectSettings;
- (void)applyHighLumaSettingsToSettings:(id)a3;
- (void)applyLowLumaSettingsToSettings:(id)a3;
- (void)applyMediumLumaSettingsToSettings:(id)a3;
@end

@implementation FallbackMediaEffect

+ (id)effectWithBrightness:(unint64_t)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___FallbackMediaEffect;
  v4 = objc_msgSendSuper2(&v6, "effectWithStyle:", 2);
  [v4 setBrightness:a3];

  return v4;
}

- (id)effectSettings
{
  v6.receiver = self;
  v6.super_class = FallbackMediaEffect;
  v3 = [(FallbackMediaEffect *)&v6 effectSettings];
  v4 = [(FallbackMediaEffect *)self brightness];
  switch(v4)
  {
    case 2uLL:
      [(FallbackMediaEffect *)self applyLowLumaSettingsToSettings:v3];
      break;
    case 1uLL:
      [(FallbackMediaEffect *)self applyMediumLumaSettingsToSettings:v3];
      break;
    case 0uLL:
      [(FallbackMediaEffect *)self applyHighLumaSettingsToSettings:v3];
      break;
  }

  return v3;
}

- (void)applyLowLumaSettingsToSettings:(id)a3
{
  v12 = a3;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v5 = [v12 graphicsQuality];
  [v12 setRequiresColorStatistics:0];
  if (v5 == &dword_8 + 2 || IsReduceTransparencyEnabled)
  {
    [v12 setBackdropVisible:0];
    if (objc_opt_respondsToSelector())
    {
      [v12 setUsesBackdropEffectView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v12 setUsesColorTintView:1];
    }

    [v12 setGrayscaleTintLevel:0.0];
    [v12 setGrayscaleTintAlpha:0.0];
    [v12 setGrayscaleTintMaskAlpha:1.0];
    [v12 setGrayscaleTintMaskImage:0];
    v8 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [v12 setColorTint:v8];

    [v12 setColorTintAlpha:0.65];
    [v12 setColorTintMaskAlpha:1.0];
    [v12 setColorTintMaskImage:0];
    [v12 setBlurRadius:0.0];
    [v12 setSaturationDeltaFactor:1.0];
    [v12 setFilterMaskAlpha:1.0];
    [v12 setFilterMaskImage:0];
    v9 = +[UIColor whiteColor];
    [v12 setLegibleColor:v9];

    if (IsReduceTransparencyEnabled)
    {
      v10 = [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];

      if (v10)
      {
        [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];
      }

      else
      {
        [UIColor colorWithRed:0.22745098 green:0.247058824 blue:0.254901961 alpha:1.0];
      }
      v11 = ;
      [v12 setColorTint:v11];

      [v12 setColorTintAlpha:1.0];
    }
  }

  else
  {
    [v12 setBackdropVisible:1];
    [v12 setGrayscaleTintLevel:0.0];
    [v12 setGrayscaleTintAlpha:0.0];
    [v12 setGrayscaleTintMaskAlpha:1.0];
    [v12 setGrayscaleTintMaskImage:0];
    v6 = [UIColor colorWithRed:0.588235294 green:0.588235294 blue:0.588235294 alpha:1.0];
    [v12 setColorTint:v6];

    [v12 setColorTintAlpha:0.15];
    [v12 setColorTintMaskAlpha:1.0];
    [v12 setColorTintMaskImage:0];
    [v12 setBlurRadius:90.0];
    [v12 setSaturationDeltaFactor:1.5];
    [v12 setFilterMaskAlpha:1.0];
    [v12 setFilterMaskImage:0];
    v7 = +[UIColor whiteColor];
    [v12 setLegibleColor:v7];
  }
}

- (void)applyMediumLumaSettingsToSettings:(id)a3
{
  v11 = a3;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if ([v11 graphicsQuality] == &dword_8 + 2 || IsReduceTransparencyEnabled)
  {
    [v11 setRequiresColorStatistics:0];
    [v11 setBackdropVisible:0];
    if (objc_opt_respondsToSelector())
    {
      [v11 setUsesBackdropEffectView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setUsesColorTintView:1];
    }

    [v11 setGrayscaleTintLevel:1.0];
    [v11 setGrayscaleTintAlpha:0.3];
    [v11 setGrayscaleTintMaskAlpha:1.0];
    [v11 setGrayscaleTintMaskImage:0];
    v7 = [UIColor colorWithRed:0.882352941 green:0.882352941 blue:0.882352941 alpha:1.0];
    [v11 setColorTint:v7];

    [v11 setColorTintAlpha:0.3];
    [v11 setColorTintMaskAlpha:1.0];
    [v11 setColorTintMaskImage:0];
    [v11 setBlurRadius:0.0];
    [v11 setSaturationDeltaFactor:1.0];
    [v11 setFilterMaskAlpha:1.0];
    [v11 setFilterMaskImage:0];
    v8 = +[UIColor blackColor];
    [v11 setLegibleColor:v8];

    if (IsReduceTransparencyEnabled)
    {
      v9 = [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];

      if (v9)
      {
        [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];
      }

      else
      {
        [UIColor colorWithRed:0.749019608 green:0.768627451 blue:0.776470588 alpha:1.0];
      }
      v10 = ;
      [v11 setColorTint:v10];

      [v11 setColorTintAlpha:1.0];
    }
  }

  else if ([v11 graphicsQuality] == &stru_20.flags)
  {
    [v11 setRequiresColorStatistics:0];
    [v11 setBackdropVisible:1];
    [v11 setGrayscaleTintLevel:0.0];
    [v11 setGrayscaleTintAlpha:0.0];
    [v11 setGrayscaleTintMaskAlpha:1.0];
    [v11 setGrayscaleTintMaskImage:0];
    v5 = [UIColor colorWithRed:0.882352941 green:0.882352941 blue:0.882352941 alpha:1.0];
    [v11 setColorTint:v5];

    [v11 setColorTintAlpha:0.4];
    [v11 setColorTintMaskAlpha:1.0];
    [v11 setColorTintMaskImage:0];
    [v11 setBlurRadius:90.0];
    [v11 setSaturationDeltaFactor:1.8];
    [v11 setFilterMaskAlpha:1.0];
    [v11 setFilterMaskImage:0];
    v6 = +[UIColor blackColor];
    [v11 setLegibleColor:v6];
  }
}

- (void)applyHighLumaSettingsToSettings:(id)a3
{
  v11 = a3;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if ([v11 graphicsQuality] == &dword_8 + 2 || IsReduceTransparencyEnabled)
  {
    [v11 setRequiresColorStatistics:0];
    [v11 setBackdropVisible:0];
    if (objc_opt_respondsToSelector())
    {
      [v11 setUsesBackdropEffectView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setUsesColorTintView:1];
    }

    [v11 setGrayscaleTintLevel:0.0];
    [v11 setGrayscaleTintAlpha:0.0];
    [v11 setGrayscaleTintMaskAlpha:1.0];
    [v11 setGrayscaleTintMaskImage:0];
    v7 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [v11 setColorTint:v7];

    [v11 setColorTintAlpha:0.3];
    [v11 setColorTintMaskAlpha:1.0];
    [v11 setColorTintMaskImage:0];
    [v11 setBlurRadius:0.0];
    [v11 setSaturationDeltaFactor:1.0];
    [v11 setFilterMaskAlpha:1.0];
    [v11 setFilterMaskImage:0];
    v8 = +[UIColor whiteColor];
    [v11 setLegibleColor:v8];

    if (IsReduceTransparencyEnabled)
    {
      v9 = [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];

      if (v9)
      {
        [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];
      }

      else
      {
        [UIColor colorWithRed:0.247058824 green:0.266666667 blue:0.274509804 alpha:1.0];
      }
      v10 = ;
      [v11 setColorTint:v10];

      [v11 setColorTintAlpha:1.0];
    }
  }

  else if ([v11 graphicsQuality] == &stru_20.flags)
  {
    [v11 setRequiresColorStatistics:0];
    [v11 setBackdropVisible:1];
    [v11 setGrayscaleTintLevel:0.0];
    [v11 setGrayscaleTintAlpha:0.0];
    [v11 setGrayscaleTintMaskAlpha:1.0];
    [v11 setGrayscaleTintMaskImage:0];
    v5 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [v11 setColorTint:v5];

    [v11 setColorTintAlpha:0.4];
    [v11 setColorTintMaskAlpha:1.0];
    [v11 setColorTintMaskImage:0];
    [v11 setBlurRadius:90.0];
    [v11 setSaturationDeltaFactor:1.8];
    [v11 setFilterMaskAlpha:1.0];
    [v11 setFilterMaskImage:0];
    v6 = +[UIColor whiteColor];
    [v11 setLegibleColor:v6];
  }
}

@end