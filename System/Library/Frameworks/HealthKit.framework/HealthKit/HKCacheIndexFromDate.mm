@interface HKCacheIndexFromDate
@end

@implementation HKCacheIndexFromDate

uint64_t ___HKCacheIndexFromDate_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) components:30 fromDate:*(a1 + 40)];
  [v2 setCalendar:*(a1 + 32)];
  *(*(*(a1 + 48) + 8) + 24) = _HKCacheIndexFromDateComponents(v2);

  return 1;
}

@end