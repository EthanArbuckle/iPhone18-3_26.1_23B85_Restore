@interface NSDictionary(ManagedBackgroundAssets)
- (uint64_t)infoDictionaryHasManagedAssetPacks;
- (uint64_t)infoDictionaryUsesAppleHosting;
@end

@implementation NSDictionary(ManagedBackgroundAssets)

- (uint64_t)infoDictionaryHasManagedAssetPacks
{
  v2 = [self objectForKey:@"BAHasManagedAssetPacks"];
  if ([self infoDictionaryUsesAppleHosting])
  {
    bOOLValue = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v2 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (uint64_t)infoDictionaryUsesAppleHosting
{
  v1 = [self objectForKey:@"BAUsesAppleHosting"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end