@interface NSDictionary
@end

@implementation NSDictionary

void __91__NSDictionary_LSPluginSDKResolutionAdditions__ls_resolvePlugInKitInfoPlistWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v15];
  if (!v6 || (v7 = v6, v8 = [v15 isEqualToString:@"CleanTimeout"], v7, v8))
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v15];
    goto LABEL_9;
  }

  if ([v15 isEqualToString:@"Shared"])
  {
    v9 = MEMORY[0x1E695DFA8];
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"Shared"];
    v11 = [v9 setWithArray:v10];

    v12 = [*(a1 + 40) objectForKeyedSubscript:@"Shared"];
    [v11 addObjectsFromArray:v12];

    v13 = [v11 allObjects];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:@"Shared"];
  }

  else
  {
    if (!_NSIsNSDictionary())
    {
      goto LABEL_9;
    }

    v11 = [*(a1 + 32) objectForKeyedSubscript:v15];
    v14 = [v11 ls_resolvePlugInKitInfoPlistWithDictionary:v5];
    [*(a1 + 32) setObject:v14 forKeyedSubscript:v15];
  }

LABEL_9:
}

void __52__NSDictionary_LSPluginQueryAdditions__ls_hashQuery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 hash];
  *(*(*(a1 + 32) + 8) + 24) *= [v5 hash] + v6;
}

@end