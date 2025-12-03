@interface ATXOnboardingStackWidgetCache
- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)dictionary;
- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)dictionary cacheUpdateDate:(id)date hasiCloudFamily:(id)family;
- (ATXOnboardingStackWidgetCache)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXOnboardingStackWidgetCache

- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = [(ATXOnboardingStackWidgetCache *)self initWithAppLaunchDictionary:dictionaryCopy cacheUpdateDate:v5 hasiCloudFamily:0];

  return v6;
}

- (ATXOnboardingStackWidgetCache)initWithAppLaunchDictionary:(id)dictionary cacheUpdateDate:(id)date hasiCloudFamily:(id)family
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  familyCopy = family;
  v15.receiver = self;
  v15.super_class = ATXOnboardingStackWidgetCache;
  v11 = [(ATXOnboardingStackWidgetCache *)&v15 init];
  if (v11)
  {
    v12 = [dictionaryCopy copy];
    descriptorToAppLaunchData = v11->_descriptorToAppLaunchData;
    v11->_descriptorToAppLaunchData = v12;

    objc_storeStrong(&v11->_cacheUpdateDate, date);
    objc_storeStrong(&v11->_hasiCloudFamily, family);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  descriptorToAppLaunchData = self->_descriptorToAppLaunchData;
  coderCopy = coder;
  [coderCopy encodeObject:descriptorToAppLaunchData forKey:@"descriptorToAppLaunchData"];
  [coderCopy encodeObject:self->_cacheUpdateDate forKey:@"cacheUpdateDate"];
  [coderCopy encodeObject:self->_hasiCloudFamily forKey:@"hasiCloudFamily"];
}

- (ATXOnboardingStackWidgetCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 initWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"descriptorToAppLaunchData"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheUpdateDate"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasiCloudFamily"];
  selfCopy = 0;
  if (v11 && v12)
  {
    self = [(ATXOnboardingStackWidgetCache *)self initWithAppLaunchDictionary:v11 cacheUpdateDate:v12 hasiCloudFamily:v13];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  descriptorToAppLaunchData = self->_descriptorToAppLaunchData;
  cacheUpdateDate = self->_cacheUpdateDate;
  hasiCloudFamily = self->_hasiCloudFamily;

  return [v4 initWithAppLaunchDictionary:descriptorToAppLaunchData cacheUpdateDate:cacheUpdateDate hasiCloudFamily:hasiCloudFamily];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      cacheUpdateDate = [(ATXOnboardingStackWidgetCache *)v5 cacheUpdateDate];
      v7 = [cacheUpdateDate isEqualToDate:self->_cacheUpdateDate];

      if (v7)
      {
        descriptorToAppLaunchData = [(ATXOnboardingStackWidgetCache *)v5 descriptorToAppLaunchData];
        v9 = [descriptorToAppLaunchData isEqual:self->_descriptorToAppLaunchData];
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