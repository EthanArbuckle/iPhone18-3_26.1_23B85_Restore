@interface HKActivityCacheComparisonFilter
@end

@implementation HKActivityCacheComparisonFilter

uint64_t __67___HKActivityCacheComparisonFilter_areValidTypes_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if ([v4 code] == 76 || objc_msgSend(v4, "code") == 100)
  {
    v5 = 1;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"unexpected data type %@", v4}];
    v5 = 0;
  }

  return v5;
}

@end