@interface ACDChangeDictionaryForAccount
@end

@implementation ACDChangeDictionaryForAccount

void ___ACDChangeDictionaryForAccount_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = ___ACDChangeDictionaryForAccount_block_invoke_2;
  v10 = &unk_27848C740;
  v4 = v3;
  v11 = v4;
  v12 = *(a1 + 32);
  v5 = ___ACDChangeDictionaryForAccount_block_invoke_2(&v7);
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:{v4, v7, v8}];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v4];
  }
}

__CFString *___ACDChangeDictionaryForAccount_block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E70]])
  {
    v2 = [*(a1 + 40) trackedEnabledDataclasses];
LABEL_5:
    v3 = v2;
    v4 = [v2 copy];

    goto LABEL_14;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E80]])
  {
    v2 = [*(a1 + 40) trackedProvisionedDataclasses];
    goto LABEL_5;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E50]])
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [*(a1 + 40) isActive];
LABEL_8:
    v7 = [v5 numberWithBool:v6];
LABEL_13:
    v4 = v7;
    goto LABEL_14;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E68]])
  {
    v7 = [*(a1 + 40) creationDate];
    goto LABEL_13;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E78]])
  {
    v7 = [*(a1 + 40) parentAccount];
    goto LABEL_13;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E88]])
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [*(a1 + 40) isVisible];
    goto LABEL_8;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CB8E90]])
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [*(a1 + 40) isWarmingUp];
    goto LABEL_8;
  }

  v9 = *(a1 + 40);
  NSSelectorFromString(*(a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 40) valueForKey:*(a1 + 32)];
    goto LABEL_13;
  }

  v4 = @"<failed>";
LABEL_14:

  return v4;
}

void ___ACDChangeDictionaryForAccount_block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 40) objectForKeyedSubscript:?];
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v5];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

@end