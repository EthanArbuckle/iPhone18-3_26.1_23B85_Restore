@interface MusicTabBarPaletteBlurEffect
+ (id)effectWithStyle:(int64_t)style;
- (id)effectSettings;
@end

@implementation MusicTabBarPaletteBlurEffect

+ (id)effectWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MusicTabBarPaletteBlurEffect;
  v3 = objc_msgSendSuper2(&v5, "effectWithStyle:", style);

  return v3;
}

- (id)effectSettings
{
  v6.receiver = self;
  v6.super_class = MusicTabBarPaletteBlurEffect;
  effectSettings = [(MusicTabBarPaletteBlurEffect *)&v6 effectSettings];
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    [effectSettings setGrayscaleTintAlpha:0.72];
  }

  v3 = [UIColor colorWithRed:0.0588235294 green:0.0 blue:0.0 alpha:1.0];
  [effectSettings setColorTint:v3];

  [effectSettings setColorTintAlpha:0.03];
  v4 = +[_UIBackdropViewSettings settingsForPrivateStyle:graphicsQuality:](_UIBackdropViewSettings, "settingsForPrivateStyle:graphicsQuality:", 2020, [effectSettings graphicsQuality]);
  [v4 blurRadius];
  [effectSettings setBlurRadius:?];

  return effectSettings;
}

@end