@interface AVScrubbingGestureConfiguration
+ (AVScrubbingGestureConfiguration)configurationWithSyntheticFriction:(float)friction usesNaturalDirection:(BOOL)direction platformConfiguration:(id)configuration;
+ (id)defaultConfiguration;
@end

@implementation AVScrubbingGestureConfiguration

+ (AVScrubbingGestureConfiguration)configurationWithSyntheticFriction:(float)friction usesNaturalDirection:(BOOL)direction platformConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = objc_alloc_init(AVScrubbingGestureConfiguration);
  v8->_syntheticFriction = friction;
  v8->_usesNaturalDirection = direction;
  platformConfiguration = v8->_platformConfiguration;
  v8->_platformConfiguration = configurationCopy;
  v10 = configurationCopy;

  [(AVScrubbingGesturePlatformConfiguration *)v10 nonLinearity];
  v12 = v11;

  v8->_linearSeeking = v12 == 1.0;

  return v8;
}

+ (id)defaultConfiguration
{
  v2 = +[AVScrubbingGesturePlatformConfiguration defaultConfiguration];
  LODWORD(v3) = *"fff?";
  v4 = [AVScrubbingGestureConfiguration configurationWithSyntheticFriction:0 usesNaturalDirection:v2 platformConfiguration:v3];

  return v4;
}

@end