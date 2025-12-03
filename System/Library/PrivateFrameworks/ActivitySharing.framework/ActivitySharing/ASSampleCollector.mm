@interface ASSampleCollector
+ (id)sampleDictionaryByIndex:(id)index sampleIndexBlock:(id)block;
@end

@implementation ASSampleCollector

+ (id)sampleDictionaryByIndex:(id)index sampleIndexBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  blockCopy = block;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB98] setWithArray:indexCopy];
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
        v12 = blockCopy[2](blockCopy, v11);
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
        v14 = [dictionary objectForKeyedSubscript:v13];
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
        [dictionary setObject:v18 forKeyedSubscript:v19];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end