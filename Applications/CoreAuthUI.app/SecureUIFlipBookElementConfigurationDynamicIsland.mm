@interface SecureUIFlipBookElementConfigurationDynamicIsland
- (NSString)description;
- (SecureUIFlipBookElementConfigurationDynamicIsland)initWithConfiguration:(id)configuration;
@end

@implementation SecureUIFlipBookElementConfigurationDynamicIsland

- (SecureUIFlipBookElementConfigurationDynamicIsland)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SecureUIFlipBookElementConfigurationDynamicIsland;
  v5 = [(SecureUIFlipBookElementConfigurationDynamicIsland *)&v12 init];
  if (v5)
  {
    name = [configurationCopy name];
    configurationName = v5->_configurationName;
    v5->_configurationName = name;

    v13[0] = &off_10009AD88;
    v13[1] = &off_10009ADA0;
    v14[0] = &__NSArray0__struct;
    v14[1] = &__NSArray0__struct;
    v13[2] = &off_10009ADB8;
    v13[3] = &off_10009ADD0;
    v14[2] = &__NSArray0__struct;
    v14[3] = &__NSArray0__struct;
    v14[4] = &__NSArray0__struct;
    v13[4] = &off_10009ADE8;
    v13[5] = &off_10009AE00;
    secureViews = [configurationCopy secureViews];
    v14[5] = secureViews;
    v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];
    layoutModesToComponentFlipBookDescriptions = v5->_layoutModesToComponentFlipBookDescriptions;
    v5->_layoutModesToComponentFlipBookDescriptions = v9;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p layoutModesToComponentFlipBookDescriptions: %@>", v4, self, self->_layoutModesToComponentFlipBookDescriptions];;

  return v5;
}

@end