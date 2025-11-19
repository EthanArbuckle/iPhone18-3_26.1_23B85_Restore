@interface NSUserDefaults
- (BOOL)weather_vfx_animatedBackgrounds_enabled;
- (void)setWeather_vfx_animatedBackgrounds_enabled:(BOOL)a3;
@end

@implementation NSUserDefaults

- (BOOL)weather_vfx_animatedBackgrounds_enabled
{
  v2 = self;
  v3 = sub_1009B78A8();

  return v3 & 1;
}

- (void)setWeather_vfx_animatedBackgrounds_enabled:(BOOL)a3
{
  v3 = self;
  sub_1009B7958();
}

@end