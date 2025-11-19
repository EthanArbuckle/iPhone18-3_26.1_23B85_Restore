@interface NSDictionary
@end

@implementation NSDictionary

void __92__NSDictionary_AppStoreComponents__asc_dictionaryByMergingDictionary_uniquingKeysWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (!v6 || (v7 = v5) != 0 && (v8 = [v6 isEqual:v7], v7, v8))
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v10];
  }

  else
  {
    v9 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
  }
}

@end