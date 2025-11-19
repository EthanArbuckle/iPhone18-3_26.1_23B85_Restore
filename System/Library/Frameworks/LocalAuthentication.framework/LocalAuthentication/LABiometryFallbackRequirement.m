@interface LABiometryFallbackRequirement
+ (LABiometryFallbackRequirement)devicePasscodeRequirement;
+ (id)customPasswordRequirement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)initWithAuthenticationType:(void *)a3 subrequirements:;
- (void)encodeWithACLCoder:(id)a3;
@end

@implementation LABiometryFallbackRequirement

- (void)encodeWithACLCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setFallbackAuthenticationType:self->_authType];
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

        [*(*(&v11 + 1) + 8 * v9++) encodeWithACLCoder:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_authType;

  return v5;
}

- (id)initWithAuthenticationType:(void *)a3 subrequirements:
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = LABiometryFallbackRequirement;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

+ (LABiometryFallbackRequirement)devicePasscodeRequirement
{
  v2 = [LABiometryFallbackRequirement alloc];
  v3 = [(LABiometryFallbackRequirement *)&v2->super.isa initWithAuthenticationType:MEMORY[0x1E695E0F0] subrequirements:?];

  return v3;
}

+ (id)customPasswordRequirement:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(OUTLINED_FUNCTION_0());
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [(LABiometryFallbackRequirement *)v5 initWithAuthenticationType:v6 subrequirements:?];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end