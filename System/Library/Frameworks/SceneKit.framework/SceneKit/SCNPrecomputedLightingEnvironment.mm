@interface SCNPrecomputedLightingEnvironment
- (SCNPrecomputedLightingEnvironment)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNPrecomputedLightingEnvironment

- (SCNPrecomputedLightingEnvironment)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNPrecomputedLightingEnvironment;
  v4 = [(SCNPrecomputedLightingEnvironment *)&v6 init];
  if (v4)
  {
    if ([coder decodeIntegerForKey:@"version"] < 1)
    {

      return 0;
    }

    else
    {
      v4->_radianceData = [coder decodeObjectOfClass:objc_opt_class() forKey:@"radiance"];
      v4->_irradianceData = [coder decodeObjectOfClass:objc_opt_class() forKey:@"irradiance"];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:1 forKey:@"version"];
  [coder encodeObject:self->_radianceData forKey:@"radiance"];
  irradianceData = self->_irradianceData;

  [coder encodeObject:irradianceData forKey:@"irradiance"];
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationPrecomputedLightingEnvironmentWillDie", self, 0, 1u);

  v4.receiver = self;
  v4.super_class = SCNPrecomputedLightingEnvironment;
  [(SCNPrecomputedLightingEnvironment *)&v4 dealloc];
}

@end