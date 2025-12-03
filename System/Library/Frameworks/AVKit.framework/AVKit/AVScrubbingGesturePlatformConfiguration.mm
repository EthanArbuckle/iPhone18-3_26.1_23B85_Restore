@interface AVScrubbingGesturePlatformConfiguration
+ (id)configurationWithMagnitude:(float)magnitude nonLinearity:(float)linearity;
+ (id)defaultConfiguration;
@end

@implementation AVScrubbingGesturePlatformConfiguration

+ (id)configurationWithMagnitude:(float)magnitude nonLinearity:(float)linearity
{
  v6 = objc_alloc_init(AVScrubbingGesturePlatformConfiguration);
  v6->_magnitude = magnitude;
  v6->_nonLinearity = linearity;

  return v6;
}

+ (id)defaultConfiguration
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  return [AVScrubbingGesturePlatformConfiguration configurationWithMagnitude:v2 nonLinearity:v3];
}

@end