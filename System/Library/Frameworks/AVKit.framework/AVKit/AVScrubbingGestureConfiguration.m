@interface AVScrubbingGestureConfiguration
+ (AVScrubbingGestureConfiguration)configurationWithSyntheticFriction:(float)a3 usesNaturalDirection:(BOOL)a4 platformConfiguration:(id)a5;
+ (id)defaultConfiguration;
@end

@implementation AVScrubbingGestureConfiguration

+ (AVScrubbingGestureConfiguration)configurationWithSyntheticFriction:(float)a3 usesNaturalDirection:(BOOL)a4 platformConfiguration:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(AVScrubbingGestureConfiguration);
  v8->_syntheticFriction = a3;
  v8->_usesNaturalDirection = a4;
  platformConfiguration = v8->_platformConfiguration;
  v8->_platformConfiguration = v7;
  v10 = v7;

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