@interface NSDictionary(AvatarUI)
+ (id)_avtui_dictionaryByIndexingObjectsInArray:()AvatarUI by:;
- (id)_avtui_deepCopy;
@end

@implementation NSDictionary(AvatarUI)

- (id)_avtui_deepCopy
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__NSDictionary_AvatarUI___avtui_deepCopy__block_invoke;
  v6[3] = &unk_278CFA4A0;
  v7 = dictionary;
  v3 = dictionary;
  [self enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

+ (id)_avtui_dictionaryByIndexingObjectsInArray:()AvatarUI by:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = *MEMORY[0x277CBE658];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if (!v14)
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:{@"Nil key provided for %@", v13}];
        }

        v15 = [dictionary objectForKeyedSubscript:v14];

        if (v15)
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:{@"Already have an object for %@", v14}];
        }

        [dictionary setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = [dictionary copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end