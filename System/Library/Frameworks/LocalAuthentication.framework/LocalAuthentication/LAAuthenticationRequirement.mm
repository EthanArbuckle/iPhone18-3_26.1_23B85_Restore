@interface LAAuthenticationRequirement
+ (LAAuthenticationRequirement)biometryCurrentSetRequirement;
+ (LAAuthenticationRequirement)biometryRequirement;
+ (LAAuthenticationRequirement)biometryRequirementWithFallback:(LABiometryFallbackRequirement *)fallback;
+ (LAAuthenticationRequirement)defaultRequirement;
+ (id)biometryCurrentSetRequirementWithFallback:(id)fallback;
+ (id)biometryRefreshableSetRequirementWithFallback:(id)fallback;
- (BOOL)isEqual:(id)equal;
- (id)key;
- (id)requirementByAddingExtendedRequirement:(id)requirement;
- (void)encodeWithACLCoder:(id)coder;
- (void)initWithAuthenticationType:(void *)type;
@end

@implementation LAAuthenticationRequirement

- (id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.getRequirementKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__LAAuthenticationRequirement_key__block_invoke;
  v6[3] = &unk_1E77CB180;
  v6[4] = self;
  v6[5] = &v7;
  os_activity_apply(v3, v6);
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__LAAuthenticationRequirement_key__block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(LAACLCoder);
  [*(a1 + 32) encodeWithACLCoder:v6];
  v2 = [(LAACLCoder *)v6 encode];
  v3 = [[LAAccessKey alloc] initWithACL:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)encodeWithACLCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy setAuthenticationType:self->_authType];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_subrequirements;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) encodeWithACLCoder:{coderCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v8 = 0;
    if (v5[1] == self->_authType)
    {
      v7 = v5[2];
      if (v7 == self->_subrequirements || [(NSMutableSet *)v7 isEqualToSet:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithAuthenticationType:(void *)type
{
  if (!type)
  {
    return 0;
  }

  v8.receiver = type;
  v8.super_class = LAAuthenticationRequirement;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[1] = a2;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = v4[2];
    v4[2] = v5;
  }

  return v4;
}

+ (LAAuthenticationRequirement)defaultRequirement
{
  v2 = [[LAAuthenticationRequirement alloc] initWithAuthenticationType:?];

  return v2;
}

+ (LAAuthenticationRequirement)biometryRequirement
{
  v2 = [[LAAuthenticationRequirement alloc] initWithAuthenticationType:?];

  return v2;
}

+ (LAAuthenticationRequirement)biometryCurrentSetRequirement
{
  v2 = [[LAAuthenticationRequirement alloc] initWithAuthenticationType:?];

  return v2;
}

+ (LAAuthenticationRequirement)biometryRequirementWithFallback:(LABiometryFallbackRequirement *)fallback
{
  v4 = fallback;
  v5 = objc_alloc(OUTLINED_FUNCTION_0());
  v6 = [(LAAuthenticationRequirement *)v5 initWithAuthenticationType:?];
  OUTLINED_FUNCTION_1(v6);

  return LAAuthenticationRequirement;
}

+ (id)biometryCurrentSetRequirementWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  v5 = objc_alloc(OUTLINED_FUNCTION_0());
  v6 = [(LAAuthenticationRequirement *)v5 initWithAuthenticationType:?];
  OUTLINED_FUNCTION_1(v6);

  return LAAuthenticationRequirement;
}

+ (id)biometryRefreshableSetRequirementWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  v5 = objc_alloc(OUTLINED_FUNCTION_0());
  v6 = [(LAAuthenticationRequirement *)v5 initWithAuthenticationType:?];
  OUTLINED_FUNCTION_1(v6);

  return LAAuthenticationRequirement;
}

- (id)requirementByAddingExtendedRequirement:(id)requirement
{
  requirementCopy = requirement;
  v5 = [[LAAuthenticationRequirement alloc] initWithAuthenticationType:?];
  v6 = [(NSMutableSet *)self->_subrequirements mutableCopy];
  v7 = v5[2];
  v5[2] = v6;

  [v5[2] addObject:requirementCopy];

  return v5;
}

@end