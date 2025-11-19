@interface HKWorkoutActivityComparisonFilter
@end

@implementation HKWorkoutActivityComparisonFilter

BOOL __69___HKWorkoutActivityComparisonFilter_areValidTypes_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 code];
  if (v5 != 79)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"unexpected data type code %ld for %@", objc_msgSend(v4, "code"), objc_opt_class()}];
  }

  return v5 == 79;
}

@end