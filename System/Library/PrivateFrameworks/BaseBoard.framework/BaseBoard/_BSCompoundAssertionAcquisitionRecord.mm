@interface _BSCompoundAssertionAcquisitionRecord
- (id)assertion;
- (void)setContext:(uint64_t)a1;
@end

@implementation _BSCompoundAssertionAcquisitionRecord

- (id)assertion
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)setContext:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

@end