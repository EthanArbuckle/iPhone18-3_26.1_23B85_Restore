@interface AMSDHomeKitHomeUser
- (AMSDHomeKitHomeUser)initWithUser:(id)user;
- (NSString)hashedDescription;
- (NSString)name;
- (NSUUID)identifier;
@end

@implementation AMSDHomeKitHomeUser

- (AMSDHomeKitHomeUser)initWithUser:(id)user
{
  userCopy = user;
  v9.receiver = self;
  v9.super_class = AMSDHomeKitHomeUser;
  v6 = [(AMSDHomeKitHomeUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_user, user);
  }

  return v7;
}

- (NSUUID)identifier
{
  user = [(AMSDHomeKitHomeUser *)self user];
  uniqueIdentifier = [user uniqueIdentifier];

  return uniqueIdentifier;
}

- (NSString)name
{
  user = [(AMSDHomeKitHomeUser *)self user];
  name = [user name];

  return name;
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  name = [(AMSDHomeKitHomeUser *)self name];
  v5 = AMSHashIfNeeded();
  identifier = [(AMSDHomeKitHomeUser *)self identifier];
  v7 = AMSHashIfNeeded();
  v8 = [NSString stringWithFormat:@"<%@: %p name = %@ | identifier = %@>", v3, self, v5, v7];

  return v8;
}

@end