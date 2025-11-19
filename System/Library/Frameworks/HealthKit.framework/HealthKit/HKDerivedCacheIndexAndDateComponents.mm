@interface HKDerivedCacheIndexAndDateComponents
@end

@implementation HKDerivedCacheIndexAndDateComponents

uint64_t ___HKDerivedCacheIndexAndDateComponents_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calendar];
  v3 = v2;
  if (!v2)
  {
    v3 = *(a1 + 40);
  }

  v4 = v3;

  v5 = *(a1 + 32);
  v6 = [v4 calendarIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695D850]];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 hk_translateDateComponentsToCalendar:*(a1 + 40) calendarUnits:30];

    v5 = v8;
  }

  if (*(a1 + 64) == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(*(*(a1 + 48) + 8) + 40) setCalendar:*(a1 + 40)];
    [*(*(*(a1 + 48) + 8) + 40) setEra:{objc_msgSend(v5, "era")}];
    [*(*(*(a1 + 48) + 8) + 40) setYear:{objc_msgSend(v5, "year")}];
    [*(*(*(a1 + 48) + 8) + 40) setMonth:{objc_msgSend(v5, "month")}];
    [*(*(*(a1 + 48) + 8) + 40) setDay:{objc_msgSend(v5, "day")}];
  }

  v12 = [*(a1 + 40) dateFromComponents:v5];
  [v12 timeIntervalSinceReferenceDate];
  *(*(*(a1 + 56) + 8) + 24) = llround(v13);

  return 1;
}

@end