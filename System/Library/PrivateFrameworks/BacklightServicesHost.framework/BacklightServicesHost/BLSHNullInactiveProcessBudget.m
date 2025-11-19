@interface BLSHNullInactiveProcessBudget
- (int64_t)allowedFidelityAtDate:(id)a3 expectedFidelity:(int64_t)a4;
@end

@implementation BLSHNullInactiveProcessBudget

- (int64_t)allowedFidelityAtDate:(id)a3 expectedFidelity:(int64_t)a4
{
  if (a4 == 1)
  {
    return 2;
  }

  else
  {
    return a4;
  }
}

@end