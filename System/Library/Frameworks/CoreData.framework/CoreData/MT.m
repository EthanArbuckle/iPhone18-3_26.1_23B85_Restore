@interface MT
@end

@implementation MT

uint64_t __newFetchedRowsForFetchPlan_MT_block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setTotalUnitCount:*(a1 + 40)];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 44);

  return [v2 setCompletedUnitCount:v3];
}

uint64_t __newFetchedRowsForFetchPlan_MT_block_invoke_48(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setTotalUnitCount:*(a1 + 40)];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 44);

  return [v2 setCompletedUnitCount:v3];
}

@end