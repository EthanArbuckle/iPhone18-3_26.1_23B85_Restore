@interface MutablePosterRenderingPreferences
- (BOOL)hideChrome;
- (BOOL)userTapEventsRequested;
- (CGRect)px_preferredSalientContentRectangle;
- (CGRect)px_preferredTitleBounds;
- (UIColor)statusBarTintColor;
- (UIColor)timeColor;
- (UIFont)timeFont;
- (double)preferredDeviceMotionUpdateInterval;
- (unint64_t)deviceMotionMode;
- (unint64_t)significantEventOptions;
- (unint64_t)significantEventTime;
- (unint64_t)supportedMotionEffectsMode;
- (void)setDeviceMotionMode:(unint64_t)a3;
- (void)setHideChrome:(BOOL)a3;
- (void)setPreferredDeviceMotionUpdateInterval:(double)a3;
- (void)setSignificantEventOptions:(unint64_t)a3;
- (void)setSignificantEventTime:(unint64_t)a3;
- (void)setStatusBarTintColor:(id)a3;
- (void)setSupportedMotionEffectsMode:(unint64_t)a3;
- (void)setTimeColor:(id)a3;
- (void)setTimeFont:(id)a3;
- (void)setUserTapEventsRequested:(BOOL)a3;
@end

@implementation MutablePosterRenderingPreferences

- (UIFont)timeFont
{
  v2 = self;
  v3 = sub_100005BAC();

  return v3;
}

- (void)setTimeFont:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100005C48(a3);
}

- (UIColor)timeColor
{
  v2 = self;
  v3 = sub_100005CDC();

  return v3;
}

- (void)setTimeColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100005D78(a3);
}

- (UIColor)statusBarTintColor
{
  v2 = self;
  v3 = sub_100005E0C();

  return v3;
}

- (void)setStatusBarTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100005EA8(a3);
}

- (unint64_t)significantEventTime
{
  v2 = self;
  v3 = sub_100005F2C();

  return v3;
}

- (void)setSignificantEventTime:(unint64_t)a3
{
  v4 = self;
  sub_100005F98(a3);
}

- (unint64_t)significantEventOptions
{
  v2 = self;
  v3 = sub_100005FE8();

  return v3;
}

- (void)setSignificantEventOptions:(unint64_t)a3
{
  v4 = self;
  sub_1000060C8(a3);
}

- (BOOL)hideChrome
{
  v2 = self;
  v3 = sub_100006198();

  return v3 & 1;
}

- (void)setHideChrome:(BOOL)a3
{
  v4 = self;
  sub_100006214(a3);
}

- (BOOL)userTapEventsRequested
{
  v2 = self;
  v3 = sub_100006264();

  return v3 & 1;
}

- (void)setUserTapEventsRequested:(BOOL)a3
{
  v4 = self;
  sub_100006370(a3);
}

- (unint64_t)supportedMotionEffectsMode
{
  v2 = self;
  v3 = sub_100006850();

  return v3;
}

- (void)setSupportedMotionEffectsMode:(unint64_t)a3
{
  v4 = self;
  sub_1000068D8(a3);
}

- (unint64_t)deviceMotionMode
{
  v2 = self;
  v3 = sub_10000694C();

  return v3;
}

- (void)setDeviceMotionMode:(unint64_t)a3
{
  v4 = self;
  sub_100006A18(a3);
}

- (double)preferredDeviceMotionUpdateInterval
{
  v2 = self;
  sub_100006ADC();
  v4 = v3;

  return v4;
}

- (void)setPreferredDeviceMotionUpdateInterval:(double)a3
{
  v3 = self;
  sub_100006B4C();
}

- (CGRect)px_preferredTitleBounds
{
  v2 = sub_100006B88();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_preferredSalientContentRectangle
{
  v2 = sub_100006C00();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end