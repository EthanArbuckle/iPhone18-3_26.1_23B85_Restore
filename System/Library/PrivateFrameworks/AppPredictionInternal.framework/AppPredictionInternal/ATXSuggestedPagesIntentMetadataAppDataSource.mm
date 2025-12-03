@interface ATXSuggestedPagesIntentMetadataAppDataSource
- (id)_appsMatchingShortcutAvailability:(unint64_t)availability;
- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesIntentMetadataAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment
{
  environmentCopy = environment;
  if (type == 4)
  {
    v7 = 127;
    goto LABEL_5;
  }

  if (type == 11)
  {
    v7 = 15;
LABEL_5:
    v8 = [(ATXSuggestedPagesIntentMetadataAppDataSource *)self _appsMatchingShortcutAvailability:v7];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_appsMatchingShortcutAvailability:(unint64_t)availability
{
  v4 = objc_opt_new();
  v5 = BiomeLibrary();
  v6 = [v5 App];
  intent = [v6 Intent];

  v8 = [intent atx_publisherFromStartDate:0];
  v9 = [v8 filterWithIsIncluded:&__block_literal_global_6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__ATXSuggestedPagesIntentMetadataAppDataSource__appsMatchingShortcutAvailability___block_invoke_3;
  v13[3] = &unk_278596E30;
  availabilityCopy = availability;
  v10 = v4;
  v14 = v10;
  v11 = [v9 sinkWithCompletion:&__block_literal_global_20 receiveInput:v13];

  return v10;
}

BOOL __82__ATXSuggestedPagesIntentMetadataAppDataSource__appsMatchingShortcutAvailability___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 eventBody];
    v6 = [v5 bundleID];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v5 interaction];
      v9 = [v8 length] != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __82__ATXSuggestedPagesIntentMetadataAppDataSource__appsMatchingShortcutAvailability___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  v7 = [v3 eventBody];
  v8 = [v7 interaction];
  v18 = 0;
  v9 = [v5 unarchivedObjectOfClass:v6 fromData:v8 error:&v18];
  v10 = v18;

  objc_autoreleasePoolPop(v4);
  if (!v9)
  {
    v15 = __atxlog_handle_modes();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __82__ATXSuggestedPagesIntentMetadataAppDataSource__appsMatchingShortcutAvailability___block_invoke_3_cold_1(v10, v15);
    }

    goto LABEL_6;
  }

  v11 = [v9 intent];
  v12 = *(a1 + 40) & [v11 shortcutAvailability];

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = objc_alloc(MEMORY[0x277CEB560]);
    v15 = [v3 eventBody];
    v16 = [v15 bundleID];
    v17 = [v14 initWithBundleId:v16 predictionSource:@"Intent Metadata"];
    [v13 addObject:v17];

LABEL_6:
  }
}

void __82__ATXSuggestedPagesIntentMetadataAppDataSource__appsMatchingShortcutAvailability___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesIntentMetadataAppDataSource: Could not unarchive interaction: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end