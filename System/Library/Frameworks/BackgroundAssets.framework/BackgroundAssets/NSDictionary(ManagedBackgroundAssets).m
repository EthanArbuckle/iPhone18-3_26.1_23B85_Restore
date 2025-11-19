@interface NSDictionary(ManagedBackgroundAssets)
- (uint64_t)infoDictionaryHasManagedAssetPacks;
- (uint64_t)infoDictionaryUsesAppleHosting;
@end

@implementation NSDictionary(ManagedBackgroundAssets)

- (uint64_t)infoDictionaryHasManagedAssetPacks
{
  v2 = [a1 objectForKey:@"BAHasManagedAssetPacks"];
  if ([a1 infoDictionaryUsesAppleHosting])
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 BOOLValue];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (uint64_t)infoDictionaryUsesAppleHosting
{
  v1 = [a1 objectForKey:@"BAUsesAppleHosting"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end