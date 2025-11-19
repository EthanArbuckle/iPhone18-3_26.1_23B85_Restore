@interface AVScrubbingGesturePlatformConfiguration
+ (id)configurationWithMagnitude:(float)a3 nonLinearity:(float)a4;
+ (id)defaultConfiguration;
@end

@implementation AVScrubbingGesturePlatformConfiguration

+ (id)configurationWithMagnitude:(float)a3 nonLinearity:(float)a4
{
  v6 = objc_alloc_init(AVScrubbingGesturePlatformConfiguration);
  v6->_magnitude = a3;
  v6->_nonLinearity = a4;

  return v6;
}

+ (id)defaultConfiguration
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  return [AVScrubbingGesturePlatformConfiguration configurationWithMagnitude:v2 nonLinearity:v3];
}

@end