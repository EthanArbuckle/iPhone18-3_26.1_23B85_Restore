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
- (void)setDeviceMotionMode:(unint64_t)mode;
- (void)setPreferredDeviceMotionUpdateInterval:(double)interval;
- (void)setPx_adaptiveTimeMode:(unint64_t)mode;
- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)requested;
- (void)setPx_powerLogIdentifier:(unint64_t)identifier;
- (void)setPx_preferredSalientContentRectangle:(CGRect)rectangle;
- (void)setSignificantEventOptions:(unint64_t)options;
- (void)setSignificantEventTime:(unint64_t)time;
- (void)setStatusBarTintColor:(id)color;
- (void)setSupportedMotionEffectsMode:(unint64_t)mode;
- (void)setTimeColor:(id)color;
- (void)setTimeFont:(id)font;
@end

@implementation MutablePosterRenderingPreferences

- (UIFont)timeFont
{
  selfCopy = self;
  v3 = sub_100007C68();

  return v3;
}

- (void)setTimeFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_100007D04();
}

- (UIColor)timeColor
{
  selfCopy = self;
  v3 = sub_100007D94();

  return v3;
}

- (void)setTimeColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100007E30();
}

- (UIColor)statusBarTintColor
{
  selfCopy = self;
  v3 = sub_100007EC0();

  return v3;
}

- (void)setStatusBarTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100007F5C();
}

- (unint64_t)significantEventTime
{
  selfCopy = self;
  v3 = sub_100007FDC();

  return v3;
}

- (void)setSignificantEventTime:(unint64_t)time
{
  selfCopy = self;
  sub_100008048(time);
}

- (unint64_t)significantEventOptions
{
  selfCopy = self;
  v3 = sub_100008098();

  return v3;
}

- (void)setSignificantEventOptions:(unint64_t)options
{
  selfCopy = self;
  sub_100008164(options);
}

- (unint64_t)supportedMotionEffectsMode
{
  selfCopy = self;
  v3 = sub_10000822C();

  return v3;
}

- (void)setSupportedMotionEffectsMode:(unint64_t)mode
{
  selfCopy = self;
  sub_1000082AC();
}

- (unint64_t)deviceMotionMode
{
  selfCopy = self;
  v3 = sub_100008314();

  return v3;
}

- (void)setDeviceMotionMode:(unint64_t)mode
{
  selfCopy = self;
  sub_100008374(mode);
}

- (double)preferredDeviceMotionUpdateInterval
{
  selfCopy = self;
  sub_1000083C0();
  v4 = v3;

  return v4;
}

- (void)setPreferredDeviceMotionUpdateInterval:(double)interval
{
  selfCopy = self;
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

- (void)setPx_preferredSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  selfCopy = self;
  sub_100008514(x, y, width, height);
}

- (BOOL)px_contentOcclusionRectangleUpdatesRequested
{
  selfCopy = self;
  v3 = sub_100008554();

  return v3 & 1;
}

- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)requested
{
  selfCopy = self;
  sub_1000085CC(requested);
}

- (unint64_t)px_adaptiveTimeMode
{
  selfCopy = self;
  v3 = sub_10000860C();

  return v3;
}

- (void)setPx_adaptiveTimeMode:(unint64_t)mode
{
  selfCopy = self;
  sub_10000866C(mode);
}

- (unint64_t)px_powerLogIdentifier
{
  selfCopy = self;
  v3 = sub_1000086AC();

  return v3;
}

- (void)setPx_powerLogIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  sub_10000870C(identifier);
}

@end