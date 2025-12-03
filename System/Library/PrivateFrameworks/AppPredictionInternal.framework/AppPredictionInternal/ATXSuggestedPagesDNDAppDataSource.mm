@interface ATXSuggestedPagesDNDAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesDNDAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment
{
  environment = [ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:type, environment];
  if (environment)
  {
    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    v6 = [mEMORY[0x277CEB440] iOSAppAllowListForMode:{objc_msgSend(environment, "integerValue")}];

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