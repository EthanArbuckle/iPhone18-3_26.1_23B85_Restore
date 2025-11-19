@interface ATXOnboardingStackWidgetCache
- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)a3;
- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)a3 cacheUpdateDate:(id)a4 hasiCloudFamily:(id)a5;
- (ATXOnboardingStackWidgetCache)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXOnboardingStackWidgetCache

- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXOnboardingStackWidgetCache *)self initWithAppLaunchDictionary:v4 cacheUpdateDate:v5 hasiCloudFamily:0];

  return v6;
}

- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)a3 cacheUpdateDate:(id)a4 hasiCloudFamily:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ATXOnboardingStackWidgetCache;
  v11 = [(ATXOnboardingStackWidgetCache *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    descriptorToAppLaunchData = v11->_descriptorToAppLaunchData;
    v11->_descriptorToAppLaunchData = v12;

    objc_storeStrong(&v11->_cacheUpdateDate, a4);
    objc_storeStrong(&v11->_hasiCloudFamily, a5);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  descriptorToAppLaunchData = self->_descriptorToAppLaunchData;
  v5 = a3;
  [v5 encodeObject:descriptorToAppLaunchData forKey:@"descriptorToAppLaunchData"];
  [v5 encodeObject:self->_cacheUpdateDate forKey:@"cacheUpdateDate"];
  [v5 encodeObject:self->_hasiCloudFamily forKey:@"hasiCloudFamily"];
}

- (ATXOnboardingStackWidgetCache)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 initWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"descriptorToAppLaunchData"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheUpdateDate"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasiCloudFamily"];
  v14 = 0;
  if (v11 && v12)
  {
    self = [(ATXOnboardingStackWidgetCache *)self initWithAppLaunchDictionary:v11 cacheUpdateDate:v12 hasiCloudFamily:v13];
    v14 = self;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  descriptorToAppLaunchData = self->_descriptorToAppLaunchData;
  cacheUpdateDate = self->_cacheUpdateDate;
  hasiCloudFamily = self->_hasiCloudFamily;

  return [v4 initWithAppLaunchDictionary:descriptorToAppLaunchData cacheUpdateDate:cacheUpdateDate hasiCloudFamily:hasiCloudFamily];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXOnboardingStackWidgetCache *)v5 cacheUpdateDate];
      v7 = [v6 isEqualToDate:self->_cacheUpdateDate];

      if (v7)
      {
        v8 = [(ATXOnboardingStackWidgetCache *)v5 descriptorToAppLaunchData];
        v9 = [v8 isEqual:self->_descriptorToAppLaunchData];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end