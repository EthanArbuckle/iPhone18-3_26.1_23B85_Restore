@interface MusicContextActionsBlurEffect
+ (id)effectWithStyle:(int64_t)style;
- (id)effectSettings;
@end

@implementation MusicContextActionsBlurEffect

+ (id)effectWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MusicContextActionsBlurEffect;
  v3 = objc_msgSendSuper2(&v5, "effectWithStyle:", style);

  return v3;
}

- (id)effectSettings
{
  v7.receiver = self;
  v7.super_class = MusicContextActionsBlurEffect;
  effectSettings = [(MusicContextActionsBlurEffect *)&v7 effectSettings];
  [effectSettings setScale:0.5];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = 0.0;
    [effectSettings setBlurRadius:0.0];
    v4 = 0.4;
  }

  else
  {
    [effectSettings setBlurRadius:8.0];
    v5 = +[UIColor blackColor];
    [effectSettings setColorTint:v5];

    [effectSettings setColorTintAlpha:0.2];
    v3 = 0.025;
    v4 = 0.1;
  }

  [effectSettings setGrayscaleTintLevel:0.0];
  [effectSettings setGrayscaleTintAlpha:v4];
  [effectSettings setZoom:v3];

  return effectSettings;
}

@end