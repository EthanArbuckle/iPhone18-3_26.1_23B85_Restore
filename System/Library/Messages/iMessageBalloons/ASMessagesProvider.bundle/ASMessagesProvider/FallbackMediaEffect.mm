@interface FallbackMediaEffect
+ (id)effectWithBrightness:(unint64_t)brightness;
- (id)effectSettings;
- (void)applyHighLumaSettingsToSettings:(id)settings;
- (void)applyLowLumaSettingsToSettings:(id)settings;
- (void)applyMediumLumaSettingsToSettings:(id)settings;
@end

@implementation FallbackMediaEffect

+ (id)effectWithBrightness:(unint64_t)brightness
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___FallbackMediaEffect;
  v4 = objc_msgSendSuper2(&v6, "effectWithStyle:", 2);
  [v4 setBrightness:brightness];

  return v4;
}

- (id)effectSettings
{
  v6.receiver = self;
  v6.super_class = FallbackMediaEffect;
  effectSettings = [(FallbackMediaEffect *)&v6 effectSettings];
  brightness = [(FallbackMediaEffect *)self brightness];
  switch(brightness)
  {
    case 2uLL:
      [(FallbackMediaEffect *)self applyLowLumaSettingsToSettings:effectSettings];
      break;
    case 1uLL:
      [(FallbackMediaEffect *)self applyMediumLumaSettingsToSettings:effectSettings];
      break;
    case 0uLL:
      [(FallbackMediaEffect *)self applyHighLumaSettingsToSettings:effectSettings];
      break;
  }

  return effectSettings;
}

- (void)applyLowLumaSettingsToSettings:(id)settings
{
  settingsCopy = settings;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  graphicsQuality = [settingsCopy graphicsQuality];
  [settingsCopy setRequiresColorStatistics:0];
  if (graphicsQuality == &dword_8 + 2 || IsReduceTransparencyEnabled)
  {
    [settingsCopy setBackdropVisible:0];
    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setUsesBackdropEffectView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setUsesColorTintView:1];
    }

    [settingsCopy setGrayscaleTintLevel:0.0];
    [settingsCopy setGrayscaleTintAlpha:0.0];
    [settingsCopy setGrayscaleTintMaskAlpha:1.0];
    [settingsCopy setGrayscaleTintMaskImage:0];
    v8 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [settingsCopy setColorTint:v8];

    [settingsCopy setColorTintAlpha:0.65];
    [settingsCopy setColorTintMaskAlpha:1.0];
    [settingsCopy setColorTintMaskImage:0];
    [settingsCopy setBlurRadius:0.0];
    [settingsCopy setSaturationDeltaFactor:1.0];
    [settingsCopy setFilterMaskAlpha:1.0];
    [settingsCopy setFilterMaskImage:0];
    v9 = +[UIColor whiteColor];
    [settingsCopy setLegibleColor:v9];

    if (IsReduceTransparencyEnabled)
    {
      backgroundColorForReducedTransparency = [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];

      if (backgroundColorForReducedTransparency)
      {
        [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];
      }

      else
      {
        [UIColor colorWithRed:0.22745098 green:0.247058824 blue:0.254901961 alpha:1.0];
      }
      v11 = ;
      [settingsCopy setColorTint:v11];

      [settingsCopy setColorTintAlpha:1.0];
    }
  }

  else
  {
    [settingsCopy setBackdropVisible:1];
    [settingsCopy setGrayscaleTintLevel:0.0];
    [settingsCopy setGrayscaleTintAlpha:0.0];
    [settingsCopy setGrayscaleTintMaskAlpha:1.0];
    [settingsCopy setGrayscaleTintMaskImage:0];
    v6 = [UIColor colorWithRed:0.588235294 green:0.588235294 blue:0.588235294 alpha:1.0];
    [settingsCopy setColorTint:v6];

    [settingsCopy setColorTintAlpha:0.15];
    [settingsCopy setColorTintMaskAlpha:1.0];
    [settingsCopy setColorTintMaskImage:0];
    [settingsCopy setBlurRadius:90.0];
    [settingsCopy setSaturationDeltaFactor:1.5];
    [settingsCopy setFilterMaskAlpha:1.0];
    [settingsCopy setFilterMaskImage:0];
    v7 = +[UIColor whiteColor];
    [settingsCopy setLegibleColor:v7];
  }
}

- (void)applyMediumLumaSettingsToSettings:(id)settings
{
  settingsCopy = settings;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if ([settingsCopy graphicsQuality] == &dword_8 + 2 || IsReduceTransparencyEnabled)
  {
    [settingsCopy setRequiresColorStatistics:0];
    [settingsCopy setBackdropVisible:0];
    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setUsesBackdropEffectView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setUsesColorTintView:1];
    }

    [settingsCopy setGrayscaleTintLevel:1.0];
    [settingsCopy setGrayscaleTintAlpha:0.3];
    [settingsCopy setGrayscaleTintMaskAlpha:1.0];
    [settingsCopy setGrayscaleTintMaskImage:0];
    v7 = [UIColor colorWithRed:0.882352941 green:0.882352941 blue:0.882352941 alpha:1.0];
    [settingsCopy setColorTint:v7];

    [settingsCopy setColorTintAlpha:0.3];
    [settingsCopy setColorTintMaskAlpha:1.0];
    [settingsCopy setColorTintMaskImage:0];
    [settingsCopy setBlurRadius:0.0];
    [settingsCopy setSaturationDeltaFactor:1.0];
    [settingsCopy setFilterMaskAlpha:1.0];
    [settingsCopy setFilterMaskImage:0];
    v8 = +[UIColor blackColor];
    [settingsCopy setLegibleColor:v8];

    if (IsReduceTransparencyEnabled)
    {
      backgroundColorForReducedTransparency = [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];

      if (backgroundColorForReducedTransparency)
      {
        [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];
      }

      else
      {
        [UIColor colorWithRed:0.749019608 green:0.768627451 blue:0.776470588 alpha:1.0];
      }
      v10 = ;
      [settingsCopy setColorTint:v10];

      [settingsCopy setColorTintAlpha:1.0];
    }
  }

  else if ([settingsCopy graphicsQuality] == &stru_20.flags)
  {
    [settingsCopy setRequiresColorStatistics:0];
    [settingsCopy setBackdropVisible:1];
    [settingsCopy setGrayscaleTintLevel:0.0];
    [settingsCopy setGrayscaleTintAlpha:0.0];
    [settingsCopy setGrayscaleTintMaskAlpha:1.0];
    [settingsCopy setGrayscaleTintMaskImage:0];
    v5 = [UIColor colorWithRed:0.882352941 green:0.882352941 blue:0.882352941 alpha:1.0];
    [settingsCopy setColorTint:v5];

    [settingsCopy setColorTintAlpha:0.4];
    [settingsCopy setColorTintMaskAlpha:1.0];
    [settingsCopy setColorTintMaskImage:0];
    [settingsCopy setBlurRadius:90.0];
    [settingsCopy setSaturationDeltaFactor:1.8];
    [settingsCopy setFilterMaskAlpha:1.0];
    [settingsCopy setFilterMaskImage:0];
    v6 = +[UIColor blackColor];
    [settingsCopy setLegibleColor:v6];
  }
}

- (void)applyHighLumaSettingsToSettings:(id)settings
{
  settingsCopy = settings;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if ([settingsCopy graphicsQuality] == &dword_8 + 2 || IsReduceTransparencyEnabled)
  {
    [settingsCopy setRequiresColorStatistics:0];
    [settingsCopy setBackdropVisible:0];
    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setUsesBackdropEffectView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setUsesColorTintView:1];
    }

    [settingsCopy setGrayscaleTintLevel:0.0];
    [settingsCopy setGrayscaleTintAlpha:0.0];
    [settingsCopy setGrayscaleTintMaskAlpha:1.0];
    [settingsCopy setGrayscaleTintMaskImage:0];
    v7 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [settingsCopy setColorTint:v7];

    [settingsCopy setColorTintAlpha:0.3];
    [settingsCopy setColorTintMaskAlpha:1.0];
    [settingsCopy setColorTintMaskImage:0];
    [settingsCopy setBlurRadius:0.0];
    [settingsCopy setSaturationDeltaFactor:1.0];
    [settingsCopy setFilterMaskAlpha:1.0];
    [settingsCopy setFilterMaskImage:0];
    v8 = +[UIColor whiteColor];
    [settingsCopy setLegibleColor:v8];

    if (IsReduceTransparencyEnabled)
    {
      backgroundColorForReducedTransparency = [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];

      if (backgroundColorForReducedTransparency)
      {
        [(FallbackMediaEffect *)self backgroundColorForReducedTransparency];
      }

      else
      {
        [UIColor colorWithRed:0.247058824 green:0.266666667 blue:0.274509804 alpha:1.0];
      }
      v10 = ;
      [settingsCopy setColorTint:v10];

      [settingsCopy setColorTintAlpha:1.0];
    }
  }

  else if ([settingsCopy graphicsQuality] == &stru_20.flags)
  {
    [settingsCopy setRequiresColorStatistics:0];
    [settingsCopy setBackdropVisible:1];
    [settingsCopy setGrayscaleTintLevel:0.0];
    [settingsCopy setGrayscaleTintAlpha:0.0];
    [settingsCopy setGrayscaleTintMaskAlpha:1.0];
    [settingsCopy setGrayscaleTintMaskImage:0];
    v5 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    [settingsCopy setColorTint:v5];

    [settingsCopy setColorTintAlpha:0.4];
    [settingsCopy setColorTintMaskAlpha:1.0];
    [settingsCopy setColorTintMaskImage:0];
    [settingsCopy setBlurRadius:90.0];
    [settingsCopy setSaturationDeltaFactor:1.8];
    [settingsCopy setFilterMaskAlpha:1.0];
    [settingsCopy setFilterMaskImage:0];
    v6 = +[UIColor whiteColor];
    [settingsCopy setLegibleColor:v6];
  }
}

@end