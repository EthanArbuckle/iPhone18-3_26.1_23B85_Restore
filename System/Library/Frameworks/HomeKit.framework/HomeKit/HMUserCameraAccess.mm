@interface HMUserCameraAccess
+ (HMUserCameraAccess)accessWithCoder:(id)coder;
+ (HMUserCameraAccess)accessWithDict:(id)dict;
+ (HMUserCameraAccess)accessWithMessage:(id)message;
+ (HMUserCameraAccess)accessWithNumber:(id)number;
+ (HMUserCameraAccess)accessWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMUserCameraAccess)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMUserCameraAccess

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMUserCameraAccessLevelAsString([(HMUserCameraAccess *)self value]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
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
      value = [(HMUserCameraAccess *)self value];
      v8 = value == [(HMUserCameraAccess *)v6 value];
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
  value = [(HMUserCameraAccess *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMUserCameraAccess *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"HM.camerasAccessLevelKey"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMUserCameraAccess *)self number];
  [coderCopy encodeObject:number forKey:@"HM.camerasAccessLevelKey"];
}

- (HMUserCameraAccess)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMUserCameraAccess;
    v5 = [(HMUserCameraAccess *)&v8 init];
    if (v5)
    {
      v5->_value = [numberCopy unsignedIntegerValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (HMUserCameraAccess)accessWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.camerasAccessLevelKey"];

  v5 = [HMUserCameraAccess accessWithNumber:v4];

  return v5;
}

+ (HMUserCameraAccess)accessWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"HM.camerasAccessLevelKey"];
  v4 = [HMUserCameraAccess accessWithNumber:v3];

  return v4;
}

+ (HMUserCameraAccess)accessWithMessage:(id)message
{
  v3 = [message numberForKey:@"HM.camerasAccessLevelKey"];
  v4 = [HMUserCameraAccess accessWithNumber:v3];

  return v4;
}

+ (HMUserCameraAccess)accessWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMUserCameraAccess alloc] initWithNumber:numberCopy];

  return v4;
}

+ (HMUserCameraAccess)accessWithValue:(unint64_t)value
{
  v4 = [HMUserCameraAccess alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  v6 = [(HMUserCameraAccess *)v4 initWithNumber:v5];

  return v6;
}

@end