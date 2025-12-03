@interface BKThreeLevelForest
- (void)addLeaf:(void *)leaf toBranch:(void *)branch trunk:;
@end

@implementation BKThreeLevelForest

void __58__BKThreeLevelForest_dictionaryContainingBranchesToLeaves__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__BKThreeLevelForest_dictionaryContainingBranchesToLeaves__block_invoke_2;
  v4[3] = &unk_2784F69F8;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __58__BKThreeLevelForest_dictionaryContainingBranchesToLeaves__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v7];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(a1 + 32) setObject:v6 forKey:v7];
  }

  [v6 unionSet:v5];
}

- (void)addLeaf:(void *)leaf toBranch:(void *)branch trunk:
{
  v13 = a2;
  leafCopy = leaf;
  branchCopy = branch;
  if (self)
  {
    v9 = *(self + 8);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = *(self + 8);
      *(self + 8) = v10;

      v9 = *(self + 8);
    }

    v12 = [v9 objectForKey:branchCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*(self + 8) setObject:v12 forKey:branchCopy];
    }

    [v12 bs_addObject:v13 toCollectionClass:objc_opt_class() forKey:leafCopy];
  }
}

void __43__BKThreeLevelForest_enumerateTrunk_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        (*(*(a1 + 32) + 16))();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end