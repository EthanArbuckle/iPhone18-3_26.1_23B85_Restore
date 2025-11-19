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
- (void)setDepthEffectEnabled:(BOOL)a3;
- (void)setDeviceMotionMode:(unint64_t)a3;
- (void)setPreferredDeviceMotionUpdateInterval:(double)a3;
- (void)setPx_adaptiveTimeMode:(unint64_t)a3;
- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)a3;
- (void)setPx_powerLogIdentifier:(unint64_t)a3;
- (void)setPx_preferredSalientContentRectangle:;
- (void)setStatusBarTintColor:(id)a3;
- (void)setSupportedMotionEffectsMode:(unint64_t)a3;
- (void)setTimeColor:(id)a3;
- (void)setTimeFont:(id)a3;
@end

@implementation MutablePosterEditorPreferences

- (UIFont)timeFont
{
  v2 = self;
  v3 = sub_100008868();

  return v3;
}

- (void)setTimeFont:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100008904();
}

- (UIColor)timeColor
{
  v2 = self;
  v3 = sub_100008994();

  return v3;
}

- (void)setTimeColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100008A30();
}

- (UIColor)statusBarTintColor
{
  v2 = self;
  v3 = sub_100008AC0();

  return v3;
}

- (void)setStatusBarTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100008B5C();
}

- (unint64_t)supportedMotionEffectsMode
{
  v2 = self;
  v3 = sub_100008BDC();

  return v3;
}

- (void)setSupportedMotionEffectsMode:(unint64_t)a3
{
  v3 = self;
  sub_100008C5C();
}

- (unint64_t)deviceMotionMode
{
  v2 = self;
  v3 = sub_100008CC4();

  return v3;
}

- (void)setDeviceMotionMode:(unint64_t)a3
{
  v4 = self;
  sub_100008D8C(a3);
}

- (double)preferredDeviceMotionUpdateInterval
{
  v2 = self;
  sub_100008E84();
  v4 = v3;

  return v4;
}

- (void)setPreferredDeviceMotionUpdateInterval:(double)a3
{
  v3 = self;
  sub_100008EF4();
}

- (BOOL)isDepthEffectEnabled
{
  v2 = self;
  v3 = sub_100008F40();

  return v3 & 1;
}

- (void)setDepthEffectEnabled:(BOOL)a3
{
  v3 = self;
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
  v2 = self;
  v3 = sub_10000910C();

  return v3 & 1;
}

- (void)setPx_contentOcclusionRectangleUpdatesRequested:(BOOL)a3
{
  v4 = self;
  sub_100009184(a3);
}

- (unint64_t)px_adaptiveTimeMode
{
  v2 = self;
  v3 = sub_1000091C4();

  return v3;
}

- (void)setPx_adaptiveTimeMode:(unint64_t)a3
{
  v4 = self;
  sub_100009224(a3);
}

- (unint64_t)px_powerLogIdentifier
{
  v2 = self;
  v3 = sub_100009264();

  return v3;
}

- (void)setPx_powerLogIdentifier:(unint64_t)a3
{
  v4 = self;
  sub_1000092C4(a3);
}

@end