@interface LABiometryFallbackRequirement
+ (LABiometryFallbackRequirement)devicePasscodeRequirement;
+ (id)customPasswordRequirement:(id)requirement;
- (BOOL)isEqual:(id)equal;
- (id)initWithAuthenticationType:(void *)type subrequirements:;
- (void)encodeWithACLCoder:(id)coder;
@end

@implementation LABiometryFallbackRequirement

- (void)encodeWithACLCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy setFallbackAuthenticationType:self->_authType];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_subrequirements;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_authType;

  return v5;
}

- (id)initWithAuthenticationType:(void *)type subrequirements:
{
  typeCopy = type;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = LABiometryFallbackRequirement;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, type);
    }
  }

  return self;
}

+ (LABiometryFallbackRequirement)devicePasscodeRequirement
{
  v2 = [LABiometryFallbackRequirement alloc];
  v3 = [(LABiometryFallbackRequirement *)&v2->super.isa initWithAuthenticationType:MEMORY[0x1E695E0F0] subrequirements:?];

  return v3;
}

+ (id)customPasswordRequirement:(id)requirement
{
  v10[1] = *MEMORY[0x1E69E9840];
  requirementCopy = requirement;
  v5 = objc_alloc(OUTLINED_FUNCTION_0());
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [(LABiometryFallbackRequirement *)v5 initWithAuthenticationType:v6 subrequirements:?];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end