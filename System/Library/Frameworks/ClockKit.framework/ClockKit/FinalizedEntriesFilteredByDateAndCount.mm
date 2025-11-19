@interface FinalizedEntriesFilteredByDateAndCount
@end

@implementation FinalizedEntriesFilteredByDateAndCount

BOOL ___FinalizedEntriesFilteredByDateAndCount_block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [a2 date];
  v5 = [v4 compare:*(a1 + 32)] == v3;

  return v5;
}

void ___FinalizedEntriesFilteredByDateAndCount_block_invoke_220(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) finalizedCopy];
  [v1 addObject:v2];
}

@end