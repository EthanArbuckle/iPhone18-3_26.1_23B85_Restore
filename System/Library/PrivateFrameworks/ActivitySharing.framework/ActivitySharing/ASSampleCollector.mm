@interface ASSampleCollector
+ (id)sampleDictionaryByIndex:(id)a3 sampleIndexBlock:(id)a4;
@end

@implementation ASSampleCollector

+ (id)sampleDictionaryByIndex:(id)a3 sampleIndexBlock:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB98] setWithArray:v5];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v24 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = v6[2](v6, v11);
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [MEMORY[0x277CBEB98] set];
        }

        v17 = v16;

        v18 = [v17 setByAddingObject:v11];

        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
        [v7 setObject:v18 forKeyedSubscript:v19];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end