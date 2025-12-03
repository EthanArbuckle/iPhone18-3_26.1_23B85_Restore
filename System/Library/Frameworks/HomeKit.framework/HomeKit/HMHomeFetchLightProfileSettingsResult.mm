@interface HMHomeFetchLightProfileSettingsResult
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMHomeFetchLightProfileSettingsResult)initWithCoder:(id)coder;
- (HMHomeFetchLightProfileSettingsResult)initWithError:(id)error;
- (HMHomeFetchLightProfileSettingsResult)initWithSettings:(id)settings;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeFetchLightProfileSettingsResult

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  settings = [(HMHomeFetchLightProfileSettingsResult *)self settings];
  v5 = [v3 initWithName:@"Settings" value:settings];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  error = [(HMHomeFetchLightProfileSettingsResult *)self error];
  v8 = [v6 initWithName:@"Error" value:error];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMHomeFetchLightProfileSettingsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeFetchLightProfileSettingsResultKeyError"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeFetchLightProfileSettingsResultKeySettings"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = [(HMHomeFetchLightProfileSettingsResult *)self initWithError:v5];
LABEL_12:
    self = v10;
    selfCopy = self;
    goto LABEL_13;
  }

  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v10 = [(HMHomeFetchLightProfileSettingsResult *)self initWithSettings:v6];
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = [(HMHomeFetchLightProfileSettingsResult *)self error];
  [coderCopy encodeObject:error forKey:@"HMHomeFetchLightProfileSettingsResultKeyError"];

  settings = [(HMHomeFetchLightProfileSettingsResult *)self settings];
  [coderCopy encodeObject:settings forKey:@"HMHomeFetchLightProfileSettingsResultKeySettings"];
}

- (unint64_t)hash
{
  error = [(HMHomeFetchLightProfileSettingsResult *)self error];
  v4 = [error hash];

  settings = [(HMHomeFetchLightProfileSettingsResult *)self settings];
  v6 = [settings hash];

  return v6 ^ v4;
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
  v7 = v6;
  if (v6 && ([v6 error], v8 = objc_claimAutoreleasedReturnValue(), -[HMHomeFetchLightProfileSettingsResult error](self, "error"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10))
  {
    settings = [v7 settings];
    settings2 = [(HMHomeFetchLightProfileSettingsResult *)self settings];
    v13 = HMFEqualObjects();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMHomeFetchLightProfileSettingsResult)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = HMHomeFetchLightProfileSettingsResult;
  v5 = [(HMHomeFetchLightProfileSettingsResult *)&v9 init];
  if (v5)
  {
    v6 = [settingsCopy copy];
    settings = v5->_settings;
    v5->_settings = v6;
  }

  return v5;
}

- (HMHomeFetchLightProfileSettingsResult)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = HMHomeFetchLightProfileSettingsResult;
  v5 = [(HMHomeFetchLightProfileSettingsResult *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end