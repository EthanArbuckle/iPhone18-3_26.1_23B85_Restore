@interface AARecoveryFactorController
- (void)availableRecoveryFactorsWithCompletion:(id)completion;
@end

@implementation AARecoveryFactorController

- (void)availableRecoveryFactorsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(AACustodianController);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AARecoveryFactorController_availableRecoveryFactorsWithCompletion___block_invoke;
  v6[3] = &unk_1E7C9B7E8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AACustodianController *)v4 availableRecoveryFactorsWithCompletion:v6];
}

uint64_t __69__AARecoveryFactorController_availableRecoveryFactorsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end