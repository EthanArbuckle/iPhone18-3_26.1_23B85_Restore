@interface HMLightProfileSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMLightProfileSettings)initWithCoder:(id)a3;
- (HMLightProfileSettings)initWithSupportedFeatures:(unint64_t)a3 naturalLightingEnabled:(BOOL)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMLightProfileSettings

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMLightProfileSettings *)self isNaturalLightingEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Natural Lighting Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = HMLightProfileSupportedFeaturesAsString([(HMLightProfileSettings *)self supportedFeatures]);
  v8 = [v6 initWithName:@"Supported Features" value:v7];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMLightProfileSettings supportedFeatures](self forKey:{"supportedFeatures"), @"hmlp.sf"}];
  [v4 encodeBool:-[HMLightProfileSettings isNaturalLightingEnabled](self forKey:{"isNaturalLightingEnabled"), @"hmlp.nle"}];
}

- (HMLightProfileSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"hmlp.sf"];
  v6 = [v4 decodeBoolForKey:@"hmlp.nle"];

  return [(HMLightProfileSettings *)self initWithSupportedFeatures:v5 naturalLightingEnabled:v6];
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
  if (v6 && (v7 = -[HMLightProfileSettings isNaturalLightingEnabled](self, "isNaturalLightingEnabled"), v7 == [v6 isNaturalLightingEnabled]))
  {
    v9 = [(HMLightProfileSettings *)self supportedFeatures];
    v8 = v9 == [v6 supportedFeatures];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMLightProfileSettings)initWithSupportedFeatures:(unint64_t)a3 naturalLightingEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HMLightProfileSettings;
  result = [(HMLightProfileSettings *)&v7 init];
  if (result)
  {
    result->_naturalLightingEnabled = a4;
    result->_supportedFeatures = a3;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end