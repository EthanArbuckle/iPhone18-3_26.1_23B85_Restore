@interface BLSHNullInactiveProcessBudget
- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity;
@end

@implementation BLSHNullInactiveProcessBudget

- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity
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