@interface MusicTabBarPaletteBlurEffect
+ (id)effectWithStyle:(int64_t)a3;
- (id)effectSettings;
@end

@implementation MusicTabBarPaletteBlurEffect

+ (id)effectWithStyle:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___MusicTabBarPaletteBlurEffect;
  v3 = objc_msgSendSuper2(&v5, "effectWithStyle:", a3);

  return v3;
}

- (id)effectSettings
{
  v6.receiver = self;
  v6.super_class = MusicTabBarPaletteBlurEffect;
  v2 = [(MusicTabBarPaletteBlurEffect *)&v6 effectSettings];
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    [v2 setGrayscaleTintAlpha:0.72];
  }

  v3 = [UIColor colorWithRed:0.0588235294 green:0.0 blue:0.0 alpha:1.0];
  [v2 setColorTint:v3];

  [v2 setColorTintAlpha:0.03];
  v4 = +[_UIBackdropViewSettings settingsForPrivateStyle:graphicsQuality:](_UIBackdropViewSettings, "settingsForPrivateStyle:graphicsQuality:", 2020, [v2 graphicsQuality]);
  [v4 blurRadius];
  [v2 setBlurRadius:?];

  return v2;
}

@end