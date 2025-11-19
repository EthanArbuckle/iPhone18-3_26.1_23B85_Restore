@interface BLSHNullInactiveBudgetPolicy
- (int64_t)allowedFidelityAtDate:(id)a3 forEnvironment:(id)a4 expectedFidelity:(int64_t)a5;
@end

@implementation BLSHNullInactiveBudgetPolicy

- (int64_t)allowedFidelityAtDate:(id)a3 forEnvironment:(id)a4 expectedFidelity:(int64_t)a5
{
  if (a5 == 1)
  {
    return 2;
  }

  else
  {
    return a5;
  }
}

@end