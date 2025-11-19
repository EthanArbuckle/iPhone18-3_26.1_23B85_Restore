@interface HMUserPresenceAuthorization
+ (id)authWithCoder:(id)a3;
+ (id)authWithDict:(id)a3;
+ (id)authWithMessage:(id)a3;
+ (id)authWithNumber:(id)a3;
+ (id)authWithValue:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMUserPresenceAuthorization)initWithNumber:(id)a3;
- (NSNumber)number;
- (id)description;
- (void)addToCoder:(id)a3;
- (void)addToPayload:(id)a3;
@end

@implementation HMUserPresenceAuthorization

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMUserPresenceAuthorizationStatusAsString([(HMUserPresenceAuthorization *)self value]);
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
      v7 = [(HMUserPresenceAuthorization *)self value];
      v8 = v7 == [(HMUserPresenceAuthorization *)v6 value];
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
  v3 = [(HMUserPresenceAuthorization *)self value];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)addToPayload:(id)a3
{
  v4 = a3;
  v5 = [(HMUserPresenceAuthorization *)self number];
  [v4 setObject:v5 forKeyedSubscript:@"kUserPresenceAuthorizationStatusKey"];
}

- (void)addToCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMUserPresenceAuthorization *)self number];
  [v4 encodeObject:v5 forKey:@"kUserPresenceAuthorizationStatusKey"];
}

- (HMUserPresenceAuthorization)initWithNumber:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = HMUserPresenceAuthorization;
    v5 = [(HMUserPresenceAuthorization *)&v8 init];
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

+ (id)authWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"kUserPresenceAuthorizationStatusKey"];

  v5 = [HMUserPresenceAuthorization authWithNumber:v4];

  return v5;
}

+ (id)authWithDict:(id)a3
{
  v3 = [a3 hmf_numberForKey:@"kUserPresenceAuthorizationStatusKey"];
  v4 = [HMUserPresenceAuthorization authWithNumber:v3];

  return v4;
}

+ (id)authWithMessage:(id)a3
{
  v3 = [a3 numberForKey:@"kUserPresenceAuthorizationStatusKey"];
  v4 = [HMUserPresenceAuthorization authWithNumber:v3];

  return v4;
}

+ (id)authWithNumber:(id)a3
{
  v3 = a3;
  v4 = [[HMUserPresenceAuthorization alloc] initWithNumber:v3];

  return v4;
}

+ (id)authWithValue:(unint64_t)a3
{
  v4 = [HMUserPresenceAuthorization alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(HMUserPresenceAuthorization *)v4 initWithNumber:v5];

  return v6;
}

@end