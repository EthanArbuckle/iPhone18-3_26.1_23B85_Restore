@interface LACustomPasswordRequirement
+ (void)requestCreationWithLocalizedReason:(id)reason completion:(id)completion;
- (LACustomPasswordRequirement)initWithCustomPassword:(id)password;
- (void)encodeWithACLCoder:(id)coder;
@end

@implementation LACustomPasswordRequirement

- (LACustomPasswordRequirement)initWithCustomPassword:(id)password
{
  passwordCopy = password;
  v9.receiver = self;
  v9.super_class = LACustomPasswordRequirement;
  v6 = [(LACustomPasswordRequirement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_password, password);
  }

  return v7;
}

+ (void)requestCreationWithLocalizedReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  v6 = +[LAAuthorizationError missingImplementation];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)encodeWithACLCoder:(id)coder
{
  password = self->_password;
  coderCopy = coder;
  v5 = [(NSString *)password dataUsingEncoding:4];
  [coderCopy addCredential:v5 credentialType:0];
}

@end