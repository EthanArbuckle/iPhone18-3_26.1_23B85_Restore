@interface NSDictionary(Merge)
+ (id)dictionaryByMerging:()Merge with:;
- (id)dictionaryByMergingWith:()Merge;
@end

@implementation NSDictionary(Merge)

+ (id)dictionaryByMerging:()Merge with:
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 dictionaryWithDictionary:v5];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__NSDictionary_Merge__dictionaryByMerging_with___block_invoke;
  v16 = &unk_278A61498;
  v17 = v5;
  v18 = v8;
  v9 = v8;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [v9 mutableCopy];

  return v11;
}

- (id)dictionaryByMergingWith:()Merge
{
  v4 = a3;
  v5 = [objc_opt_class() dictionaryByMerging:a1 with:v4];

  return v5;
}

@end