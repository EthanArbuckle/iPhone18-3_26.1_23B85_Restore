@interface BLSHLongHeldAssertion
+ (id)longHeldAssertionWithDescription:(id)description activeDuration:(double)duration timeReleased:(id)released;
- (id)description;
- (id)initWithDescription:(void *)description activeDuration:(double)duration timeReleased:;
@end

@implementation BLSHLongHeldAssertion

+ (id)longHeldAssertionWithDescription:(id)description activeDuration:(double)duration timeReleased:(id)released
{
  releasedCopy = released;
  descriptionCopy = description;
  v10 = [(BLSHLongHeldAssertion *)[self alloc] initWithDescription:descriptionCopy activeDuration:releasedCopy timeReleased:duration];

  return v10;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __36__BLSHLongHeldAssertion_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

void __36__BLSHLongHeldAssertion_description__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:0];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) bls_shortLoggingString];
  [v2 appendString:v3 withName:@"released"];
}

- (id)initWithDescription:(void *)description activeDuration:(double)duration timeReleased:
{
  v8 = a2;
  descriptionCopy = description;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = BLSHLongHeldAssertion;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      *(self + 3) = duration;
      objc_storeStrong(self + 2, description);
    }
  }

  return self;
}

@end