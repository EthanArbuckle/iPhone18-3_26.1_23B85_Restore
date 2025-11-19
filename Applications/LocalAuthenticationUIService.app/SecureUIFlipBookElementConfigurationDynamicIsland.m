@interface SecureUIFlipBookElementConfigurationDynamicIsland
- (NSString)description;
- (SecureUIFlipBookElementConfigurationDynamicIsland)initWithConfiguration:(id)a3;
@end

@implementation SecureUIFlipBookElementConfigurationDynamicIsland

- (SecureUIFlipBookElementConfigurationDynamicIsland)initWithConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SecureUIFlipBookElementConfigurationDynamicIsland;
  v5 = [(SecureUIFlipBookElementConfigurationDynamicIsland *)&v12 init];
  if (v5)
  {
    v6 = [v4 name];
    configurationName = v5->_configurationName;
    v5->_configurationName = v6;

    v13[0] = &off_1000AF278;
    v13[1] = &off_1000AF290;
    v14[0] = &__NSArray0__struct;
    v14[1] = &__NSArray0__struct;
    v13[2] = &off_1000AF2A8;
    v13[3] = &off_1000AF2C0;
    v14[2] = &__NSArray0__struct;
    v14[3] = &__NSArray0__struct;
    v14[4] = &__NSArray0__struct;
    v13[4] = &off_1000AF2D8;
    v13[5] = &off_1000AF2F0;
    v8 = [v4 secureViews];
    v14[5] = v8;
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