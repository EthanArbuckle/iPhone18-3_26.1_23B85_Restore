@interface AFConnectionUserInteractionAssertion
- (AFConnectionUserInteractionAssertion)initWithCompletion:(id)a3;
@end

@implementation AFConnectionUserInteractionAssertion

- (AFConnectionUserInteractionAssertion)initWithCompletion:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFConnectionUserInteractionAssertion;
  v5 = [(AFConnectionUserInteractionAssertion *)&v12 init];
  if (v5)
  {
    v6 = [AFSafetyBlock alloc];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__AFConnectionUserInteractionAssertion_initWithCompletion___block_invoke;
    v10[3] = &unk_1E73456A8;
    v11 = v4;
    v7 = [(AFSafetyBlock *)v6 initWithBlock:v10];
    safetyBlock = v5->_safetyBlock;
    v5->_safetyBlock = v7;
  }

  return v5;
}

uint64_t __59__AFConnectionUserInteractionAssertion_initWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end