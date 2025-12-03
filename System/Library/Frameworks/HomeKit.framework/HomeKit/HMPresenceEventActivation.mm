@interface HMPresenceEventActivation
+ (id)activationGranularityWithCoder:(id)coder;
+ (id)activationGranularityWithDict:(id)dict;
+ (id)activationGranularityWithMessage:(id)message;
+ (id)activationGranularityWithNumber:(id)number;
+ (id)activationGranularityWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMPresenceEventActivation)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMPresenceEventActivation

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMPresenceEventActivationGranularityAsString([(HMPresenceEventActivation *)self value]);
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
      value = [(HMPresenceEventActivation *)self value];
      v8 = value == [(HMPresenceEventActivation *)v6 value];
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
  value = [(HMPresenceEventActivation *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMPresenceEventActivation *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"kPresenceEventActivationGranularity"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMPresenceEventActivation *)self number];
  [coderCopy encodeObject:number forKey:@"kPresenceEventActivationGranularity"];
}

- (HMPresenceEventActivation)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMPresenceEventActivation;
    v5 = [(HMPresenceEventActivation *)&v8 init];
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

+ (id)activationGranularityWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPresenceEventActivationGranularity"];

  v5 = [HMPresenceEventActivation activationGranularityWithNumber:v4];

  return v5;
}

+ (id)activationGranularityWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"kPresenceEventActivationGranularity"];
  v4 = [HMPresenceEventActivation activationGranularityWithNumber:v3];

  return v4;
}

+ (id)activationGranularityWithMessage:(id)message
{
  v3 = [message numberForKey:@"kPresenceEventActivationGranularity"];
  v4 = [HMPresenceEventActivation activationGranularityWithNumber:v3];

  return v4;
}

+ (id)activationGranularityWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMPresenceEventActivation alloc] initWithNumber:numberCopy];

  return v4;
}

+ (id)activationGranularityWithValue:(unint64_t)value
{
  v4 = [HMPresenceEventActivation alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  v6 = [(HMPresenceEventActivation *)v4 initWithNumber:v5];

  return v6;
}

@end