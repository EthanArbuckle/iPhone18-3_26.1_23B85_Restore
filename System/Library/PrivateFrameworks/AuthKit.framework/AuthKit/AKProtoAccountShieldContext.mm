@interface AKProtoAccountShieldContext
- (AKProtoAccountShieldContext)initWithCoder:(id)a3;
- (AKProtoAccountShieldContext)initWithContext:(id)a3;
- (NSDate)pendingDOB;
- (void)encodeWithCoder:(id)a3;
- (void)setPendingDOB:(id)a3;
@end

@implementation AKProtoAccountShieldContext

- (AKProtoAccountShieldContext)initWithContext:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKProtoAccountShieldContext;
  v10 = [(AKAppleIDAuthenticationContext *)&v8 initWithContext:location[0]];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v6 = [location[0] accountMigrationContext];
    [(AKAppleIDAuthenticationContext *)v10 setAccountMigrationContext:?];
    MEMORY[0x1E69E5920](v6);
    v7 = [location[0] authenticatableResource];
    [(AKAppleIDAuthenticationContext *)v10 setAuthenticatableResource:?];
    MEMORY[0x1E69E5920](v7);
  }

  v5 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = AKProtoAccountShieldContext;
  [(AKAppleIDAuthenticationContext *)&v3 encodeWithCoder:location[0]];
  if (v5->_protoAccount)
  {
    [location[0] encodeObject:v5->_protoAccount forKey:@"_protoAccount"];
  }

  [location[0] encodeBool:1 forKey:@"_encodedByAKProtoAccountShieldContext"];
  objc_storeStrong(location, 0);
}

- (AKProtoAccountShieldContext)initWithCoder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKProtoAccountShieldContext;
  v10 = [(AKAppleIDAuthenticationContext *)&v8 initWithCoder:location[0]];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_protoAccount"];
    protoAccount = v10->_protoAccount;
    v10->_protoAccount = v4;
    MEMORY[0x1E69E5920](protoAccount);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (NSDate)pendingDOB
{
  v3 = [(AKAppleIDAuthenticationContext *)self accountMigrationContext];
  v4 = [(AKAccountMigrationContext *)v3 pendingDOB];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

- (void)setPendingDOB:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = [AKAccountMigrationContext alloc];
    v4 = [(AKAccountMigrationContext *)v3 initWithPendingDOB:location[0]];
    [(AKAppleIDAuthenticationContext *)v6 setAccountMigrationContext:?];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    [(AKAppleIDAuthenticationContext *)v6 setAccountMigrationContext:0];
  }

  objc_storeStrong(location, 0);
}

@end