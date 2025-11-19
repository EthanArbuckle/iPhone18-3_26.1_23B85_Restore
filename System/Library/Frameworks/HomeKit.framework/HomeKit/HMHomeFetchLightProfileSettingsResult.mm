@interface HMHomeFetchLightProfileSettingsResult
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMHomeFetchLightProfileSettingsResult)initWithCoder:(id)a3;
- (HMHomeFetchLightProfileSettingsResult)initWithError:(id)a3;
- (HMHomeFetchLightProfileSettingsResult)initWithSettings:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeFetchLightProfileSettingsResult

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMHomeFetchLightProfileSettingsResult *)self settings];
  v5 = [v3 initWithName:@"Settings" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMHomeFetchLightProfileSettingsResult *)self error];
  v8 = [v6 initWithName:@"Error" value:v7];
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

- (HMHomeFetchLightProfileSettingsResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeFetchLightProfileSettingsResultKeyError"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeFetchLightProfileSettingsResultKeySettings"];

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
    v9 = self;
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

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMHomeFetchLightProfileSettingsResult *)self error];
  [v4 encodeObject:v5 forKey:@"HMHomeFetchLightProfileSettingsResultKeyError"];

  v6 = [(HMHomeFetchLightProfileSettingsResult *)self settings];
  [v4 encodeObject:v6 forKey:@"HMHomeFetchLightProfileSettingsResultKeySettings"];
}

- (unint64_t)hash
{
  v3 = [(HMHomeFetchLightProfileSettingsResult *)self error];
  v4 = [v3 hash];

  v5 = [(HMHomeFetchLightProfileSettingsResult *)self settings];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && ([v6 error], v8 = objc_claimAutoreleasedReturnValue(), -[HMHomeFetchLightProfileSettingsResult error](self, "error"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10))
  {
    v11 = [v7 settings];
    v12 = [(HMHomeFetchLightProfileSettingsResult *)self settings];
    v13 = HMFEqualObjects();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMHomeFetchLightProfileSettingsResult)initWithSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMHomeFetchLightProfileSettingsResult;
  v5 = [(HMHomeFetchLightProfileSettingsResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    settings = v5->_settings;
    v5->_settings = v6;
  }

  return v5;
}

- (HMHomeFetchLightProfileSettingsResult)initWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMHomeFetchLightProfileSettingsResult;
  v5 = [(HMHomeFetchLightProfileSettingsResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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