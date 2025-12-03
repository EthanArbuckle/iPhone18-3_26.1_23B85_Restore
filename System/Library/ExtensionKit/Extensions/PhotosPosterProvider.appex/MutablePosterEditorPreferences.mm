@interface MutablePosterEditorPreferences
- (BOOL)isDepthEffectEnabled;
- (BOOL)px_contentOcclusionRectangleUpdatesRequested;
- (CGRect)pu_preferredSalientContentRectangle;
- (CGRect)px_preferredSalientContentRectangle;
- (CGRect)px_preferredTitleBounds;
- (UIColor)statusBarTintColor;
- (UIColor)timeColor;
- (UIFont)timeFont;
- (double)preferredDeviceMotionUpdateInterval;
- (unint64_t)deviceMotionMode;
- (unint64_t)px_adaptiveTimeMode;
- (unint64_t)px_powerLogIdentifier;
- (unint64_t)supportedMotionEffectsMode;
- (void)setDepthEffectEnabled:(BOOL)enabled;
- (void)setDeviceMotionMode:(unint64_t)mode;
- (void)setPreferredDeviceMotionUpdateInterval:(double)interval;
- (void)setPx_adaptiveTimeMode:(unint64_t)mode;
- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)requested;
- (void)setPx_powerLogIdentifier:(unint64_t)identifier;
- (void)setPx_preferredSalientContentRectangle:;
- (void)setStatusBarTintColor:(id)color;
- (void)setSupportedMotionEffectsMode:(unint64_t)mode;
- (void)setTimeColor:(id)color;
- (void)setTimeFont:(id)font;
@end

@implementation MutablePosterEditorPreferences

- (UIFont)timeFont
{
  selfCopy = self;
  v3 = sub_100008868();

  return v3;
}

- (void)setTimeFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_100008904();
}

- (UIColor)timeColor
{
  selfCopy = self;
  v3 = sub_100008994();

  return v3;
}

- (void)setTimeColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100008A30();
}

- (UIColor)statusBarTintColor
{
  selfCopy = self;
  v3 = sub_100008AC0();

  return v3;
}

- (void)setStatusBarTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100008B5C();
}

- (unint64_t)supportedMotionEffectsMode
{
  selfCopy = self;
  v3 = sub_100008BDC();

  return v3;
}

- (void)setSupportedMotionEffectsMode:(unint64_t)mode
{
  selfCopy = self;
  sub_100008C5C();
}

- (unint64_t)deviceMotionMode
{
  selfCopy = self;
  v3 = sub_100008CC4();

  return v3;
}

- (void)setDeviceMotionMode:(unint64_t)mode
{
  selfCopy = self;
  sub_100008D8C(mode);
}

- (double)preferredDeviceMotionUpdateInterval
{
  selfCopy = self;
  sub_100008E84();
  v4 = v3;

  return v4;
}

- (void)setPreferredDeviceMotionUpdateInterval:(double)interval
{
  selfCopy = self;
  sub_100008EF4();
}

- (BOOL)isDepthEffectEnabled
{
  selfCopy = self;
  v3 = sub_100008F40();

  return v3 & 1;
}

- (void)setDepthEffectEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_100008FC0();
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

- (CGRect)pu_preferredSalientContentRectangle
{
  sub_100007314(self, a2, sub_10000900C);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setPx_preferredSalientContentRectangle:
{
  sub_100010F54();
  v5 = v0;
  v1 = sub_100010F40();
  sub_10000908C(v1, v2, v3, v4);
}

- (CGRect)px_preferredSalientContentRectangle
{
  sub_100007314(self, a2, sub_1000109D8);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)px_contentOcclusionRectangleUpdatesRequested
{
  selfCopy = self;
  v3 = sub_10000910C();

  return v3 & 1;
}

- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)requested
{
  selfCopy = self;
  sub_100009184(requested);
}

- (unint64_t)px_adaptiveTimeMode
{
  selfCopy = self;
  v3 = sub_1000091C4();

  return v3;
}

- (void)setPx_adaptiveTimeMode:(unint64_t)mode
{
  selfCopy = self;
  sub_100009224(mode);
}

- (unint64_t)px_powerLogIdentifier
{
  selfCopy = self;
  v3 = sub_100009264();

  return v3;
}

- (void)setPx_powerLogIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  sub_1000092C4(identifier);
}

@end