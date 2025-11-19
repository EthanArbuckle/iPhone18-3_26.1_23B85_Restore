@interface ValidateEntries
@end

@implementation ValidateEntries

void ___ValidateEntries_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = ___ValidateEntries_block_invoke_2;
  v14 = &unk_278A1FC60;
  v7 = v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v18 = a4;
  v10 = MEMORY[0x2383C4AF0](&v11);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v10[2](v10);
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], v10);
  }
}

uint64_t ___ValidateEntries_block_invoke_2(uint64_t a1)
{
  result = _ValidateEntry(*(a1 + 32), *(a1 + 48));
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    **(a1 + 56) = 1;
  }

  return result;
}

@end