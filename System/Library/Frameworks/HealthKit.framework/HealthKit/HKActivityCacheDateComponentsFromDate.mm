@interface HKActivityCacheDateComponentsFromDate
@end

@implementation HKActivityCacheDateComponentsFromDate

uint64_t ___HKActivityCacheDateComponentsFromDate_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) components:30 fromDate:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setCalendar:*(a1 + 32)];
  return 1;
}

@end