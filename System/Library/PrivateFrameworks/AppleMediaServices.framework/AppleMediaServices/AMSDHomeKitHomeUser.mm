@interface AMSDHomeKitHomeUser
- (AMSDHomeKitHomeUser)initWithUser:(id)a3;
- (NSString)hashedDescription;
- (NSString)name;
- (NSUUID)identifier;
@end

@implementation AMSDHomeKitHomeUser

- (AMSDHomeKitHomeUser)initWithUser:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDHomeKitHomeUser;
  v6 = [(AMSDHomeKitHomeUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_user, a3);
  }

  return v7;
}

- (NSUUID)identifier
{
  v2 = [(AMSDHomeKitHomeUser *)self user];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (NSString)name
{
  v2 = [(AMSDHomeKitHomeUser *)self user];
  v3 = [v2 name];

  return v3;
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  v4 = [(AMSDHomeKitHomeUser *)self name];
  v5 = AMSHashIfNeeded();
  v6 = [(AMSDHomeKitHomeUser *)self identifier];
  v7 = AMSHashIfNeeded();
  v8 = [NSString stringWithFormat:@"<%@: %p name = %@ | identifier = %@>", v3, self, v5, v7];

  return v8;
}

@end