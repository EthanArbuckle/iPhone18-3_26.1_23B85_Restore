@interface SCNPrecomputedLightingEnvironment
- (SCNPrecomputedLightingEnvironment)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNPrecomputedLightingEnvironment

- (SCNPrecomputedLightingEnvironment)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNPrecomputedLightingEnvironment;
  v4 = [(SCNPrecomputedLightingEnvironment *)&v6 init];
  if (v4)
  {
    if ([a3 decodeIntegerForKey:@"version"] < 1)
    {

      return 0;
    }

    else
    {
      v4->_radianceData = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"radiance"];
      v4->_irradianceData = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"irradiance"];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:1 forKey:@"version"];
  [a3 encodeObject:self->_radianceData forKey:@"radiance"];
  irradianceData = self->_irradianceData;

  [a3 encodeObject:irradianceData forKey:@"irradiance"];
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