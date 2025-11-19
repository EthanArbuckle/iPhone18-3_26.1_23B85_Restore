@interface BLSHLongHeldAssertion
+ (id)longHeldAssertionWithDescription:(id)a3 activeDuration:(double)a4 timeReleased:(id)a5;
- (id)description;
- (id)initWithDescription:(void *)a3 activeDuration:(double)a4 timeReleased:;
@end

@implementation BLSHLongHeldAssertion

+ (id)longHeldAssertionWithDescription:(id)a3 activeDuration:(double)a4 timeReleased:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BLSHLongHeldAssertion *)[a1 alloc] initWithDescription:v9 activeDuration:v8 timeReleased:a4];

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
  v12 = self;
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

- (id)initWithDescription:(void *)a3 activeDuration:(double)a4 timeReleased:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BLSHLongHeldAssertion;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      *(a1 + 3) = a4;
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

@end