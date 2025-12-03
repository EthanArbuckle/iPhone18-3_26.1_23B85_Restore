@interface _BSCompoundAssertionAcquisitionRecord
- (id)assertion;
- (void)setContext:(uint64_t)context;
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

- (void)setContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 32), a2);
  }
}

@end