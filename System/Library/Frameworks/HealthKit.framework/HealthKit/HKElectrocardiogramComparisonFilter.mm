@interface HKElectrocardiogramComparisonFilter
@end

@implementation HKElectrocardiogramComparisonFilter

BOOL __71___HKElectrocardiogramComparisonFilter_areValidTypes_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 code];
  if (v5 != 144)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"unexpected data type code %ld for electrocardiogram data type", objc_msgSend(v4, "code")}];
  }

  return v5 == 144;
}

@end