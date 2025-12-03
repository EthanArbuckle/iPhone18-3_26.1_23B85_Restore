@interface NSDictionary(AppStoreComponents)
- (id)asc_dictionaryByMergingDictionary:()AppStoreComponents uniquingKeysWithBlock:;
@end

@implementation NSDictionary(AppStoreComponents)

- (id)asc_dictionaryByMergingDictionary:()AppStoreComponents uniquingKeysWithBlock:
{
  v6 = a4;
  v7 = a3;
  v8 = [self mutableCopy];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __92__NSDictionary_AppStoreComponents__asc_dictionaryByMergingDictionary_uniquingKeysWithBlock___block_invoke;
  v16 = &unk_2784B1350;
  v17 = v8;
  v18 = v6;
  v9 = v6;
  v10 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [v10 copy];

  return v11;
}

@end