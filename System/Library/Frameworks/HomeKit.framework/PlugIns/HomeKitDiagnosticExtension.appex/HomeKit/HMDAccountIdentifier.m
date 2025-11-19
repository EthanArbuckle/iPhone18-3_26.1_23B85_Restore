@interface HMDAccountIdentifier
+ (id)accountIdentifierForAccountHandle:(id)a3;
+ (id)accountIdentifierForAppleAccountContext:(id)a3;
+ (id)accountIdentifierForMessageContext:(id)a3;
+ (id)accountIdentifierForSenderCorrelationIdentifier:(id)a3;
- (BOOL)isAuthenticated;
- (BOOL)isEqual:(id)a3;
- (HMDAccountIdentifier)init;
- (HMDAccountIdentifier)initWithCoder:(id)a3;
- (HMDAccountIdentifier)initWithInternal:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (NSUUID)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccountIdentifier

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountIdentifier *)self internal];
  [v4 encodeObject:v5 forKey:@"HM.internal"];
}

- (HMDAccountIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.internal"];

  v6 = [(HMDAccountIdentifier *)self initWithInternal:v5];
  return v6;
}

- (BOOL)isAuthenticated
{
  v2 = [(HMDAccountIdentifier *)self internal];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(HMDAccountIdentifier *)self internal];
  v3 = [v2 identifier];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMDAccountIdentifier *)self internal];
  v5 = [v4 kind];
  v6 = [v3 initWithName:@"KN" value:v5];
  v7 = [HMFAttributeDescription alloc];
  v8 = [(HMDAccountIdentifier *)self identifier];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithName:@"ID" value:v9];
  v16[1] = v10;
  v11 = [HMFAttributeDescription alloc];
  v12 = [(HMDAccountIdentifier *)self senderCorrelationIdentifier];
  v13 = [v11 initWithName:@"MID" value:v12];
  v16[2] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:3];

  return v14;
}

- (NSString)shortDescription
{
  v3 = [(HMDAccountIdentifier *)self internal];
  v4 = [v3 kind];
  v5 = [(HMDAccountIdentifier *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"(%@)%@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
      v7 = [(HMDAccountIdentifier *)self internal];
      v8 = [(HMDAccountIdentifier *)v6 internal];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccountIdentifier *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (HMDAccountIdentifier)initWithInternal:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = HMDAccountIdentifier;
    v6 = [(HMDAccountIdentifier *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_internal, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDAccountIdentifier)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)accountIdentifierForSenderCorrelationIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [[_HMDIDSAccountIdentifier alloc] initWithIdentifierString:v3];
    v5 = [[HMDAccountIdentifier alloc] initWithInternal:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)accountIdentifierForMessageContext:(id)a3
{
  v4 = [a3 senderCorrelationIdentifier];
  v5 = [a1 accountIdentifierForSenderCorrelationIdentifier:v4];

  return v5;
}

+ (id)accountIdentifierForAppleAccountContext:(id)a3
{
  v3 = a3;
  v4 = [_HMDAppleAccountIdentifier alloc];
  v5 = [v3 identifier];

  v6 = [(_HMDAppleAccountIdentifier *)v4 initWithIdentifierString:v5];
  v7 = [[HMDAccountIdentifier alloc] initWithInternal:v6];

  return v7;
}

+ (id)accountIdentifierForAccountHandle:(id)a3
{
  v4 = a3;
  v5 = [[_HMDAccountHandleIdentifier alloc] initWithAccountHandle:v4];

  v6 = [[a1 alloc] initWithInternal:v5];

  return v6;
}

@end