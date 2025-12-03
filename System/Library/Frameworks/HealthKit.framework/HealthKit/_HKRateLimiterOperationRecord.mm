@interface _HKRateLimiterOperationRecord
- (void)initWithDatePerformed:(uint64_t)performed cost:;
@end

@implementation _HKRateLimiterOperationRecord

- (void)initWithDatePerformed:(uint64_t)performed cost:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = _HKRateLimiterOperationRecord;
    self = objc_msgSendSuper2(&v9, sel_init);
    if (self)
    {
      v6 = [v5 copy];
      v7 = self[1];
      self[1] = v6;

      self[2] = performed;
    }
  }

  return self;
}

@end