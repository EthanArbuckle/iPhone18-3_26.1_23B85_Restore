@interface MutablePosterRenderingPreferences
- (BOOL)px_contentOcclusionRectangleUpdatesRequested;
- (CGRect)px_preferredSalientContentRectangle;
- (CGRect)px_preferredTitleBounds;
- (UIColor)statusBarTintColor;
- (UIColor)timeColor;
- (UIFont)timeFont;
- (double)preferredDeviceMotionUpdateInterval;
- (unint64_t)deviceMotionMode;
- (unint64_t)px_adaptiveTimeMode;
- (unint64_t)px_powerLogIdentifier;
- (unint64_t)significantEventOptions;
- (unint64_t)significantEventTime;
- (unint64_t)supportedMotionEffectsMode;
- (void)setDeviceMotionMode:(unint64_t)a3;
- (void)setPreferredDeviceMotionUpdateInterval:(double)a3;
- (void)setPx_adaptiveTimeMode:(unint64_t)a3;
- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)a3;
- (void)setPx_powerLogIdentifier:(unint64_t)a3;
- (void)setPx_preferredSalientContentRectangle:(CGRect)a3;
- (void)setSignificantEventOptions:(unint64_t)a3;
- (void)setSignificantEventTime:(unint64_t)a3;
- (void)setStatusBarTintColor:(id)a3;
- (void)setSupportedMotionEffectsMode:(unint64_t)a3;
- (void)setTimeColor:(id)a3;
- (void)setTimeFont:(id)a3;
@end

@implementation MutablePosterRenderingPreferences

- (UIFont)timeFont
{
  v2 = self;
  v3 = sub_100007C68();

  return v3;
}

- (void)setTimeFont:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007D04();
}

- (UIColor)timeColor
{
  v2 = self;
  v3 = sub_100007D94();

  return v3;
}

- (void)setTimeColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007E30();
}

- (UIColor)statusBarTintColor
{
  v2 = self;
  v3 = sub_100007EC0();

  return v3;
}

- (void)setStatusBarTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007F5C();
}

- (unint64_t)significantEventTime
{
  v2 = self;
  v3 = sub_100007FDC();

  return v3;
}

- (void)setSignificantEventTime:(unint64_t)a3
{
  v4 = self;
  sub_100008048(a3);
}

- (unint64_t)significantEventOptions
{
  v2 = self;
  v3 = sub_100008098();

  return v3;
}

- (void)setSignificantEventOptions:(unint64_t)a3
{
  v4 = self;
  sub_100008164(a3);
}

- (unint64_t)supportedMotionEffectsMode
{
  v2 = self;
  v3 = sub_10000822C();

  return v3;
}

- (void)setSupportedMotionEffectsMode:(unint64_t)a3
{
  v3 = self;
  sub_1000082AC();
}

- (unint64_t)deviceMotionMode
{
  v2 = self;
  v3 = sub_100008314();

  return v3;
}

- (void)setDeviceMotionMode:(unint64_t)a3
{
  v4 = self;
  sub_100008374(a3);
}

- (double)preferredDeviceMotionUpdateInterval
{
  v2 = self;
  sub_1000083C0();
  v4 = v3;

  return v4;
}

- (void)setPreferredDeviceMotionUpdateInterval:(double)a3
{
  v3 = self;
  sub_100008430();
}

- (CGRect)px_preferredTitleBounds
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_preferredSalientContentRectangle
{
  sub_100007314(self, a2, sub_10000847C);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setPx_preferredSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_100008514(x, y, width, height);
}

- (BOOL)px_contentOcclusionRectangleUpdatesRequested
{
  v2 = self;
  v3 = sub_100008554();

  return v3 & 1;
}

- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)a3
{
  v4 = self;
  sub_1000085CC(a3);
}

- (unint64_t)px_adaptiveTimeMode
{
  v2 = self;
  v3 = sub_10000860C();

  return v3;
}

- (void)setPx_adaptiveTimeMode:(unint64_t)a3
{
  v4 = self;
  sub_10000866C(a3);
}

- (unint64_t)px_powerLogIdentifier
{
  v2 = self;
  v3 = sub_1000086AC();

  return v3;
}

- (void)setPx_powerLogIdentifier:(unint64_t)a3
{
  v4 = self;
  sub_10000870C(a3);
}

@end