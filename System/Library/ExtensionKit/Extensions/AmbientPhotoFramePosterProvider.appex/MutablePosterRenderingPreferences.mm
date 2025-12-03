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
- (void)setDeviceMotionMode:(unint64_t)mode;
- (void)setHideChrome:(BOOL)chrome;
- (void)setPreferredDeviceMotionUpdateInterval:(double)interval;
- (void)setSignificantEventOptions:(unint64_t)options;
- (void)setSignificantEventTime:(unint64_t)time;
- (void)setStatusBarTintColor:(id)color;
- (void)setSupportedMotionEffectsMode:(unint64_t)mode;
- (void)setTimeColor:(id)color;
- (void)setTimeFont:(id)font;
- (void)setUserTapEventsRequested:(BOOL)requested;
@end

@implementation MutablePosterRenderingPreferences

- (UIFont)timeFont
{
  selfCopy = self;
  v3 = sub_100005BAC();

  return v3;
}

- (void)setTimeFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_100005C48(font);
}

- (UIColor)timeColor
{
  selfCopy = self;
  v3 = sub_100005CDC();

  return v3;
}

- (void)setTimeColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100005D78(color);
}

- (UIColor)statusBarTintColor
{
  selfCopy = self;
  v3 = sub_100005E0C();

  return v3;
}

- (void)setStatusBarTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100005EA8(color);
}

- (unint64_t)significantEventTime
{
  selfCopy = self;
  v3 = sub_100005F2C();

  return v3;
}

- (void)setSignificantEventTime:(unint64_t)time
{
  selfCopy = self;
  sub_100005F98(time);
}

- (unint64_t)significantEventOptions
{
  selfCopy = self;
  v3 = sub_100005FE8();

  return v3;
}

- (void)setSignificantEventOptions:(unint64_t)options
{
  selfCopy = self;
  sub_1000060C8(options);
}

- (BOOL)hideChrome
{
  selfCopy = self;
  v3 = sub_100006198();

  return v3 & 1;
}

- (void)setHideChrome:(BOOL)chrome
{
  selfCopy = self;
  sub_100006214(chrome);
}

- (BOOL)userTapEventsRequested
{
  selfCopy = self;
  v3 = sub_100006264();

  return v3 & 1;
}

- (void)setUserTapEventsRequested:(BOOL)requested
{
  selfCopy = self;
  sub_100006370(requested);
}

- (unint64_t)supportedMotionEffectsMode
{
  selfCopy = self;
  v3 = sub_100006850();

  return v3;
}

- (void)setSupportedMotionEffectsMode:(unint64_t)mode
{
  selfCopy = self;
  sub_1000068D8(mode);
}

- (unint64_t)deviceMotionMode
{
  selfCopy = self;
  v3 = sub_10000694C();

  return v3;
}

- (void)setDeviceMotionMode:(unint64_t)mode
{
  selfCopy = self;
  sub_100006A18(mode);
}

- (double)preferredDeviceMotionUpdateInterval
{
  selfCopy = self;
  sub_100006ADC();
  v4 = v3;

  return v4;
}

- (void)setPreferredDeviceMotionUpdateInterval:(double)interval
{
  selfCopy = self;
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