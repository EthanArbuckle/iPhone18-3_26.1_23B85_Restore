@interface BKSTouchDeliveryPolicy
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)policyByCombiningPolicies:(id)a3;
- (BKSTouchDeliveryPolicy)initWithCoder:(id)a3;
- (id)policyByMappingContainedPoliciesWithBlock:(id)a3;
- (id)policyExcludingPolicy:(id)a3;
- (id)policyExcludingPolicyIdenticalTo:(id)a3;
- (id)policyIncludingPolicy:(id)a3;
- (id)reducePolicyToObjectWithBlock:(id)a3;
@end

@implementation BKSTouchDeliveryPolicy

- (id)policyExcludingPolicyIdenticalTo:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__BKSTouchDeliveryPolicy_policyExcludingPolicyIdenticalTo___block_invoke;
  v8[3] = &unk_1E6F46C08;
  v9 = v4;
  v5 = v4;
  v6 = [(BKSTouchDeliveryPolicy *)self reducePolicyToObjectWithBlock:v8];

  return v6;
}

id __59__BKSTouchDeliveryPolicy_policyExcludingPolicyIdenticalTo___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

- (id)policyExcludingPolicy:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__BKSTouchDeliveryPolicy_policyExcludingPolicy___block_invoke;
  v8[3] = &unk_1E6F46C08;
  v9 = v4;
  v5 = v4;
  v6 = [(BKSTouchDeliveryPolicy *)self reducePolicyToObjectWithBlock:v8];

  return v6;
}

void *__48__BKSTouchDeliveryPolicy_policyExcludingPolicy___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if ([v3 isEqual:v2])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (id)policyIncludingPolicy:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  collectPolicies(self, v6);
  collectPolicies(v5, v6);

  v7 = [BKSTouchDeliveryPolicy policyByCombiningPolicies:v6];

  return v7;
}

- (id)reducePolicyToObjectWithBlock:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__BKSTouchDeliveryPolicy_reducePolicyToObjectWithBlock___block_invoke;
  v9[3] = &unk_1E6F46BE0;
  v10 = v4;
  v5 = v4;
  v6 = [(BKSTouchDeliveryPolicy *)self policyByMappingContainedPoliciesWithBlock:v9];
  v7 = (*(v4 + 2))(v5, v6);

  return v7;
}

- (id)policyByMappingContainedPoliciesWithBlock:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__BKSTouchDeliveryPolicy_policyByMappingContainedPoliciesWithBlock___block_invoke;
  v11[3] = &unk_1E6F46B68;
  v11[4] = self;
  v9 = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__BKSTouchDeliveryPolicy_policyByMappingContainedPoliciesWithBlock___block_invoke_2;
  v10[3] = &unk_1E6F46B90;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__BKSTouchDeliveryPolicy_policyByMappingContainedPoliciesWithBlock___block_invoke_3;
  v8[3] = &unk_1E6F46BB8;
  v5 = v4;
  v6 = [(BKSTouchDeliveryPolicy *)self matchSharingTouchesPolicy:v11 orCancelTouchesPolicy:v10 orCombinedPolicy:v8];

  return v6;
}

id __68__BKSTouchDeliveryPolicy_policyByMappingContainedPoliciesWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v6[2](v6, *(*(&v17 + 1) + 8 * i));
        if (v13)
        {
          [v7 addObject:{v13, v17}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [BKSTouchDeliveryPolicy policyByCombiningPolicies:v7];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BKSTouchDeliveryPolicy)initWithCoder:(id)a3
{
  [(BKSTouchDeliveryPolicy *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)policyByCombiningPolicies:(id)a3
{
  v3 = a3;
  v4 = [[_BKSCombinedTouchDeliveryPolicy alloc] initWithPolicies:v3];

  return v4;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    [a1 doesNotRecognizeSelector:a2];
    return 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___BKSTouchDeliveryPolicy;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

@end