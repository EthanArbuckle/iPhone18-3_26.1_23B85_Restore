@interface NSNumberFormatter
@end

@implementation NSNumberFormatter

uint64_t __55__NSNumberFormatter_HealthKit__hk_wholeNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = hk_wholeNumberFormatter__formatter;
  hk_wholeNumberFormatter__formatter = v0;

  [hk_wholeNumberFormatter__formatter setNumberStyle:0];
  [hk_wholeNumberFormatter__formatter setRoundingMode:6];
  v2 = hk_wholeNumberFormatter__formatter;

  return [v2 setMaximumFractionDigits:0];
}

uint64_t __57__NSNumberFormatter_HealthKit__hk_percentNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = hk_percentNumberFormatter__formatter;
  hk_percentNumberFormatter__formatter = v0;

  v2 = hk_percentNumberFormatter__formatter;

  return [v2 setNumberStyle:3];
}

uint64_t __64__NSNumberFormatter_HealthKit__hk_percentDecimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = hk_percentDecimalNumberFormatter__formatter;
  hk_percentDecimalNumberFormatter__formatter = v0;

  [hk_percentDecimalNumberFormatter__formatter setNumberStyle:1];
  [hk_percentDecimalNumberFormatter__formatter setMaximumFractionDigits:0];
  v2 = hk_percentDecimalNumberFormatter__formatter;

  return [v2 setMultiplier:&unk_1F06818D8];
}

@end