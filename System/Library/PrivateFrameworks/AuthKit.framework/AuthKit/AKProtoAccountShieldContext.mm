@interface AKProtoAccountShieldContext
- (AKProtoAccountShieldContext)initWithCoder:(id)coder;
- (AKProtoAccountShieldContext)initWithContext:(id)context;
- (NSDate)pendingDOB;
- (void)encodeWithCoder:(id)coder;
- (void)setPendingDOB:(id)b;
@end

@implementation AKProtoAccountShieldContext

- (AKProtoAccountShieldContext)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKProtoAccountShieldContext;
  selfCopy = [(AKAppleIDAuthenticationContext *)&v8 initWithContext:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    accountMigrationContext = [location[0] accountMigrationContext];
    [(AKAppleIDAuthenticationContext *)selfCopy setAccountMigrationContext:?];
    MEMORY[0x1E69E5920](accountMigrationContext);
    authenticatableResource = [location[0] authenticatableResource];
    [(AKAppleIDAuthenticationContext *)selfCopy setAuthenticatableResource:?];
    MEMORY[0x1E69E5920](authenticatableResource);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3.receiver = selfCopy;
  v3.super_class = AKProtoAccountShieldContext;
  [(AKAppleIDAuthenticationContext *)&v3 encodeWithCoder:location[0]];
  if (selfCopy->_protoAccount)
  {
    [location[0] encodeObject:selfCopy->_protoAccount forKey:@"_protoAccount"];
  }

  [location[0] encodeBool:1 forKey:@"_encodedByAKProtoAccountShieldContext"];
  objc_storeStrong(location, 0);
}

- (AKProtoAccountShieldContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKProtoAccountShieldContext;
  selfCopy = [(AKAppleIDAuthenticationContext *)&v8 initWithCoder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_protoAccount"];
    protoAccount = selfCopy->_protoAccount;
    selfCopy->_protoAccount = v4;
    MEMORY[0x1E69E5920](protoAccount);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (NSDate)pendingDOB
{
  accountMigrationContext = [(AKAppleIDAuthenticationContext *)self accountMigrationContext];
  pendingDOB = [(AKAccountMigrationContext *)accountMigrationContext pendingDOB];
  MEMORY[0x1E69E5920](accountMigrationContext);

  return pendingDOB;
}

- (void)setPendingDOB:(id)b
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, b);
  if (location[0])
  {
    v3 = [AKAccountMigrationContext alloc];
    v4 = [(AKAccountMigrationContext *)v3 initWithPendingDOB:location[0]];
    [(AKAppleIDAuthenticationContext *)selfCopy setAccountMigrationContext:?];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    [(AKAppleIDAuthenticationContext *)selfCopy setAccountMigrationContext:0];
  }

  objc_storeStrong(location, 0);
}

@end