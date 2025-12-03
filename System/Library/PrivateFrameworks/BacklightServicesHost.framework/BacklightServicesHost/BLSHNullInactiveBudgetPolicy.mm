@interface BLSHNullInactiveBudgetPolicy
- (int64_t)allowedFidelityAtDate:(id)date forEnvironment:(id)environment expectedFidelity:(int64_t)fidelity;
@end

@implementation BLSHNullInactiveBudgetPolicy

- (int64_t)allowedFidelityAtDate:(id)date forEnvironment:(id)environment expectedFidelity:(int64_t)fidelity
{
  if (fidelity == 1)
  {
    return 2;
  }

  else
  {
    return fidelity;
  }
}

@end