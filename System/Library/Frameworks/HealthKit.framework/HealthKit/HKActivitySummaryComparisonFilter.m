@interface HKActivitySummaryComparisonFilter
@end

@implementation HKActivitySummaryComparisonFilter

BOOL __69___HKActivitySummaryComparisonFilter_areValidTypes_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 code];
  if (v5 != 100)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"unexpected data type code %ld for %@", objc_msgSend(v4, "code"), objc_opt_class()}];
  }

  return v5 == 100;
}

@end