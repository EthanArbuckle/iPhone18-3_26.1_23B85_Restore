@interface LNAppShortcutDynamicOptionsProviderReference(TopHits)
+ (id)appShortcutMapping;
- (id)topHitSystemEntityCollectionIdentifier;
@end

@implementation LNAppShortcutDynamicOptionsProviderReference(TopHits)

- (id)topHitSystemEntityCollectionIdentifier
{
  v2 = [a1 appShortcutsProviderMangledTypeName];
  v3 = [v2 isEqualToString:@"25ShortcutsTopHitsExtension0abc3AppA8ProviderV"];

  if (v3)
  {
    v4 = [MEMORY[0x277D23B28] appShortcutMapping];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "appShortcutIndex")}];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "optionsProviderIndex")}];
      v8 = [v6 objectForKeyedSubscript:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)appShortcutMapping
{
  if (appShortcutMapping_onceToken != -1)
  {
    dispatch_once(&appShortcutMapping_onceToken, &__block_literal_global_14322);
  }

  v1 = appShortcutMapping_mapping;

  return v1;
}

@end