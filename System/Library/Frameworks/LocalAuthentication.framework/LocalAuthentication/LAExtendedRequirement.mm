@interface LAExtendedRequirement
+ (LAExtendedRequirement)applicationRemainsForegroundRequirement;
- (BOOL)isEqual:(id)equal;
- (id)initWithConstraint:(id *)constraint;
@end

@implementation LAExtendedRequirement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[1];
    v7 = v6 == self->_constraint || [(NSDictionary *)v6 isEqualToDictionary:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initWithConstraint:(id *)constraint
{
  v4 = a2;
  if (constraint)
  {
    v7.receiver = constraint;
    v7.super_class = LAExtendedRequirement;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    constraint = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return constraint;
}

+ (LAExtendedRequirement)applicationRemainsForegroundRequirement
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [LAExtendedRequirement alloc];
  v8 = @"af";
  v9[0] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_0();
  v5 = [(LAExtendedRequirement *)v4 initWithConstraint:v2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end