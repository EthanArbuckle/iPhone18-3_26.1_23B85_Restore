@interface HMUserPresenceAuthorization
+ (id)authWithCoder:(id)coder;
+ (id)authWithDict:(id)dict;
+ (id)authWithMessage:(id)message;
+ (id)authWithNumber:(id)number;
+ (id)authWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (HMUserPresenceAuthorization)initWithNumber:(id)number;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)coder;
- (void)addToPayload:(id)payload;
@end

@implementation HMUserPresenceAuthorization

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMUserPresenceAuthorizationStatusAsString([(HMUserPresenceAuthorization *)self value]);
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
      value = [(HMUserPresenceAuthorization *)self value];
      v8 = value == [(HMUserPresenceAuthorization *)v6 value];
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
  value = [(HMUserPresenceAuthorization *)self value];

  return [v2 numberWithUnsignedInteger:value];
}

- (void)addToPayload:(id)payload
{
  payloadCopy = payload;
  number = [(HMUserPresenceAuthorization *)self number];
  [payloadCopy setObject:number forKeyedSubscript:@"kUserPresenceAuthorizationStatusKey"];
}

- (void)addToCoder:(id)coder
{
  coderCopy = coder;
  number = [(HMUserPresenceAuthorization *)self number];
  [coderCopy encodeObject:number forKey:@"kUserPresenceAuthorizationStatusKey"];
}

- (HMUserPresenceAuthorization)initWithNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8.receiver = self;
    v8.super_class = HMUserPresenceAuthorization;
    v5 = [(HMUserPresenceAuthorization *)&v8 init];
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

+ (id)authWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceAuthorizationStatusKey"];

  v5 = [HMUserPresenceAuthorization authWithNumber:v4];

  return v5;
}

+ (id)authWithDict:(id)dict
{
  v3 = [dict hmf_numberForKey:@"kUserPresenceAuthorizationStatusKey"];
  v4 = [HMUserPresenceAuthorization authWithNumber:v3];

  return v4;
}

+ (id)authWithMessage:(id)message
{
  v3 = [message numberForKey:@"kUserPresenceAuthorizationStatusKey"];
  v4 = [HMUserPresenceAuthorization authWithNumber:v3];

  return v4;
}

+ (id)authWithNumber:(id)number
{
  numberCopy = number;
  v4 = [[HMUserPresenceAuthorization alloc] initWithNumber:numberCopy];

  return v4;
}

+ (id)authWithValue:(unint64_t)value
{
  v4 = [HMUserPresenceAuthorization alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  v6 = [(HMUserPresenceAuthorization *)v4 initWithNumber:v5];

  return v6;
}

@end