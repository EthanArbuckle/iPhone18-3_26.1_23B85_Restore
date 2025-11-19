@interface NSDictionary
@end

@implementation NSDictionary

void __48__NSDictionary_Merge__dictionaryByMerging_with___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) objectForKey:v8];
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v6 = [v7 dictionaryByMergingWith:v5];
    }
  }

  [*(a1 + 40) setObject:v6 forKey:v8];
}

@end