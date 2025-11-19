@interface LACustomPasswordRequirement
+ (void)requestCreationWithLocalizedReason:(id)a3 completion:(id)a4;
- (LACustomPasswordRequirement)initWithCustomPassword:(id)a3;
- (void)encodeWithACLCoder:(id)a3;
@end

@implementation LACustomPasswordRequirement

- (LACustomPasswordRequirement)initWithCustomPassword:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACustomPasswordRequirement;
  v6 = [(LACustomPasswordRequirement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_password, a3);
  }

  return v7;
}

+ (void)requestCreationWithLocalizedReason:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[LAAuthorizationError missingImplementation];
  (*(a4 + 2))(v5, 0, v6);
}

- (void)encodeWithACLCoder:(id)a3
{
  password = self->_password;
  v4 = a3;
  v5 = [(NSString *)password dataUsingEncoding:4];
  [v4 addCredential:v5 credentialType:0];
}

@end