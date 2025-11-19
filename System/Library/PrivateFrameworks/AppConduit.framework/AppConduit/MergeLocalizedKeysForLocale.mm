@interface MergeLocalizedKeysForLocale
@end

@implementation MergeLocalizedKeysForLocale

void ___MergeLocalizedKeysForLocale_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    objc_opt_class();
    v9 = v6;
    v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;

    if (v10)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:v7];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 mutableCopy];
        [v13 setObject:v9 forKeyedSubscript:*(a1 + 40)];
        v14 = [v13 copy];
        [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
      }

      else
      {
        v17 = *(a1 + 40);
        v18[0] = v9;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        [*(a1 + 32) setObject:v15 forKeyedSubscript:v7];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end