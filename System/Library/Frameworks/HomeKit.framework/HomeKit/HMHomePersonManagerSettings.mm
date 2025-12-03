@interface HMHomePersonManagerSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMHomePersonManagerSettings)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomePersonManagerSettings

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomePersonManagerSettings *)self isFaceClassificationEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Face Classification Enabled" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMHomePersonManagerSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [coderCopy decodeBoolForKey:@"HMPMS.fce"];

  [(HMHomePersonManagerSettings *)v5 setFaceClassificationEnabled:v6];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[HMHomePersonManagerSettings isFaceClassificationEnabled](self forKey:{"isFaceClassificationEnabled"), @"HMPMS.fce"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[HMMutableHomePersonManagerSettings allocWithZone:?]];
  [(HMHomePersonManagerSettings *)v4 setFaceClassificationEnabled:[(HMHomePersonManagerSettings *)self isFaceClassificationEnabled]];
  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
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
    isFaceClassificationEnabled = [(HMHomePersonManagerSettings *)self isFaceClassificationEnabled];
    v8 = isFaceClassificationEnabled ^ [v6 isFaceClassificationEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end