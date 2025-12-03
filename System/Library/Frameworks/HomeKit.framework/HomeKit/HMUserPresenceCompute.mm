@interface HMUserPresenceCompute
+ (HMUserPresenceCompute)computeWithCoder:(id)coder;
+ (HMUserPresenceCompute)computeWithDict:(id)dict;
+ (HMUserPresenceCompute)computeWithMessage:(id)message;
+ (HMUserPresenceCompute)computeWithNumber:(id)number;
+ (HMUserPresenceCompute)computeWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMUserPresenceCompute)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMUserPresenceCompute

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMUserPresenceComputeStatusAsString([(HMUserPresenceCompute *)self value]);
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
      value = [(HMUserPresenceCompute *)self value];
      v8 = value == [(HMUserPresenceCompute *)v6 value];
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
  value = [(HMUserPresenceCompute *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMUserPresenceCompute *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"kUserPresenceComputeStatusKey"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMUserPresenceCompute *)self number];
  [coderCopy encodeObject:number forKey:@"kUserPresenceComputeStatusKey"];
}

- (HMUserPresenceCompute)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMUserPresenceCompute;
    v5 = [(HMUserPresenceCompute *)&v8 init];
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

+ (HMUserPresenceCompute)computeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceComputeStatusKey"];

  v5 = [HMUserPresenceCompute computeWithNumber:v4];

  return v5;
}

+ (HMUserPresenceCompute)computeWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"kUserPresenceComputeStatusKey"];
  v4 = [HMUserPresenceCompute computeWithNumber:v3];

  return v4;
}

+ (HMUserPresenceCompute)computeWithMessage:(id)message
{
  v3 = [message numberForKey:@"kUserPresenceComputeStatusKey"];
  v4 = [HMUserPresenceCompute computeWithNumber:v3];

  return v4;
}

+ (HMUserPresenceCompute)computeWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMUserPresenceCompute alloc] initWithNumber:numberCopy];

  return v4;
}

+ (HMUserPresenceCompute)computeWithValue:(unint64_t)value
{
  v4 = [HMUserPresenceCompute alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  v6 = [(HMUserPresenceCompute *)v4 initWithNumber:v5];

  return v6;
}

@end