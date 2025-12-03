@interface HMCameraStreamVideoPreferences
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraStreamVideoPreferences)init;
- (HMCameraStreamVideoPreferences)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraStreamVideoPreferences

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  resolutions = [(HMCameraStreamVideoPreferences *)self resolutions];
  v5 = [v3 initWithName:@"Resolutions" value:resolutions];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = HMStringFromCameraVideoResolutionQuality([(HMCameraStreamVideoPreferences *)self maximumQuality]);
  v8 = [v6 initWithName:@"Maximum Quality" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  resolutions = [(HMCameraStreamVideoPreferences *)self resolutions];
  v4 = [resolutions hash];

  return [(HMCameraStreamVideoPreferences *)self maximumQuality]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    resolutions = [(HMCameraStreamVideoPreferences *)self resolutions];
    resolutions2 = [v6 resolutions];
    if ([resolutions isEqualToSet:resolutions2])
    {
      maximumQuality = [(HMCameraStreamVideoPreferences *)self maximumQuality];
      v10 = maximumQuality == [v6 maximumQuality];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resolutions = [(HMCameraStreamVideoPreferences *)self resolutions];
  [coderCopy encodeObject:resolutions forKey:@"HM.CameraStreamVideoResolutions"];

  [coderCopy encodeInteger:-[HMCameraStreamVideoPreferences maximumQuality](self forKey:{"maximumQuality"), @"HM.CameraStreamVideoResolutionQuality"}];
}

- (HMCameraStreamVideoPreferences)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(HMCameraStreamVideoPreferences *)self init];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HM.CameraStreamVideoResolutions"];
  [(HMCameraStreamVideoPreferences *)v5 setResolutions:v9];

  v10 = [coderCopy decodeIntegerForKey:@"HM.CameraStreamVideoResolutionQuality"];
  [(HMCameraStreamVideoPreferences *)v5 setMaximumQuality:v10];
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (HMCameraStreamVideoPreferences)init
{
  v3.receiver = self;
  v3.super_class = HMCameraStreamVideoPreferences;
  result = [(HMCameraStreamVideoPreferences *)&v3 init];
  if (result)
  {
    result->_maximumQuality = 5;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end