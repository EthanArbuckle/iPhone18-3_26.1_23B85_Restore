@interface HMUserCameraAccess
+ (HMUserCameraAccess)accessWithCoder:(id)a3;
+ (HMUserCameraAccess)accessWithDict:(id)a3;
+ (HMUserCameraAccess)accessWithMessage:(id)a3;
+ (HMUserCameraAccess)accessWithNumber:(id)a3;
+ (HMUserCameraAccess)accessWithValue:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMUserCameraAccess)initWithNumber:(id)a3;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)a3;
- (void)addToPayload:(id)a3;
@end

@implementation HMUserCameraAccess

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMUserCameraAccessLevelAsString([(HMUserCameraAccess *)self value]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
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
    if (v6)
    {
      v7 = [(HMUserCameraAccess *)self value];
      v8 = v7 == [(HMUserCameraAccess *)v6 value];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSNumber)number
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(HMUserCameraAccess *)self value];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)addToPayload:(id)a3
{
  v4 = a3;
  v5 = [(HMUserCameraAccess *)self number];
  [v4 setObject:v5 forKeyedSubscript:@"HM.camerasAccessLevelKey"];
}

- (void)addToCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMUserCameraAccess *)self number];
  [v4 encodeObject:v5 forKey:@"HM.camerasAccessLevelKey"];
}

- (HMUserCameraAccess)initWithNumber:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = HMUserCameraAccess;
    v5 = [(HMUserCameraAccess *)&v8 init];
    if (v5)
    {
      v5->_value = [v4 unsignedIntegerValue];
    }

    self = v5;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (HMUserCameraAccess)accessWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.camerasAccessLevelKey"];

  v5 = [HMUserCameraAccess accessWithNumber:v4];

  return v5;
}

+ (HMUserCameraAccess)accessWithDict:(id)a3
{
  v3 = [a3 hmf_numberForKey:@"HM.camerasAccessLevelKey"];
  v4 = [HMUserCameraAccess accessWithNumber:v3];

  return v4;
}

+ (HMUserCameraAccess)accessWithMessage:(id)a3
{
  v3 = [a3 numberForKey:@"HM.camerasAccessLevelKey"];
  v4 = [HMUserCameraAccess accessWithNumber:v3];

  return v4;
}

+ (HMUserCameraAccess)accessWithNumber:(id)a3
{
  v3 = a3;
  v4 = [[HMUserCameraAccess alloc] initWithNumber:v3];

  return v4;
}

+ (HMUserCameraAccess)accessWithValue:(unint64_t)a3
{
  v4 = [HMUserCameraAccess alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(HMUserCameraAccess *)v4 initWithNumber:v5];

  return v6;
}

@end