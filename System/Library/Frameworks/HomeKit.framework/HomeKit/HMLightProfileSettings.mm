@interface HMLightProfileSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMLightProfileSettings)initWithCoder:(id)coder;
- (HMLightProfileSettings)initWithSupportedFeatures:(unint64_t)features naturalLightingEnabled:(BOOL)enabled;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMLightProfileSettings supportedFeatures](self forKey:{"supportedFeatures"), @"hmlp.sf"}];
  [coderCopy encodeBool:-[HMLightProfileSettings isNaturalLightingEnabled](self forKey:{"isNaturalLightingEnabled"), @"hmlp.nle"}];
}

- (HMLightProfileSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"hmlp.sf"];
  v6 = [coderCopy decodeBoolForKey:@"hmlp.nle"];

  return [(HMLightProfileSettings *)self initWithSupportedFeatures:v5 naturalLightingEnabled:v6];
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
  if (v6 && (v7 = -[HMLightProfileSettings isNaturalLightingEnabled](self, "isNaturalLightingEnabled"), v7 == [v6 isNaturalLightingEnabled]))
  {
    supportedFeatures = [(HMLightProfileSettings *)self supportedFeatures];
    v8 = supportedFeatures == [v6 supportedFeatures];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMLightProfileSettings)initWithSupportedFeatures:(unint64_t)features naturalLightingEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = HMLightProfileSettings;
  result = [(HMLightProfileSettings *)&v7 init];
  if (result)
  {
    result->_naturalLightingEnabled = enabled;
    result->_supportedFeatures = features;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end