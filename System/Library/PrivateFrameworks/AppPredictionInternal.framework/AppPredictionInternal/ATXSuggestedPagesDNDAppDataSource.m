@interface ATXSuggestedPagesDNDAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXSuggestedPagesDNDAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4
{
  v4 = [ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:a3, a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CEB440] sharedInstance];
    v6 = [v5 iOSAppAllowListForMode:{objc_msgSend(v4, "integerValue")}];

    v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_144];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __81__ATXSuggestedPagesDNDAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB560];
  v3 = a2;
  v4 = [[v2 alloc] initWithBundleId:v3 predictionSource:@"DND Configuration"];

  return v4;
}

@end