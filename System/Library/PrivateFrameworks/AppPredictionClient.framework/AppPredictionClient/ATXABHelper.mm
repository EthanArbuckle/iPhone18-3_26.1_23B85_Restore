@interface ATXABHelper
+ (id)abGroupForConsumerSubType:(unsigned __int8)type;
+ (id)abGroupNilString;
+ (id)abGroupOverride;
+ (void)abGroupOverride;
@end

@implementation ATXABHelper

+ (id)abGroupNilString
{
  v2 = +[ATXAggregateKeys abGroupNilString];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return v4;
}

+ (id)abGroupForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = objc_autoreleasePoolPush();
  if (abGroupForConsumerSubType__onceToken != -1)
  {
    +[ATXABHelper abGroupForConsumerSubType:];
  }

  v5 = +[ATXABHelper abGroupOverride];
  if (v5 || (v15 = abGroupForConsumerSubType__cache, objc_sync_enter(v15), v16 = abGroupForConsumerSubType__cache, [MEMORY[0x1E696AD98] numberWithUnsignedChar:typeCopy], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, objc_sync_exit(v15), v15, !v18))
  {
    v6 = +[ATXAppPredictorAssetMapping sharedInstanceWithMobileAssets];
    v7 = [v6 getAssetFileAndSubscoreForConsumerSubType:typeCopy];
    first = [v7 first];
    v9 = [ATXAssetsABHelper alloc];
    v10 = +[ATXABHelper abGroupOverride];
    v11 = [(ATXAssetsABHelper *)v9 initWithAssetsForResource:first ofType:@"plplist" specifiedABGroup:v10];

    groupIdentifier = [(ATXAssetsABHelper *)v11 groupIdentifier];
    v13 = groupIdentifier;
    if (groupIdentifier)
    {
      v14 = groupIdentifier;
    }

    else
    {
      v14 = +[ATXABHelper abGroupNilString];
    }

    v18 = v14;

    if (!v5)
    {
      v19 = abGroupForConsumerSubType__cache;
      objc_sync_enter(v19);
      v20 = abGroupForConsumerSubType__cache;
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:typeCopy];
      [v20 setObject:v18 forKeyedSubscript:v21];

      objc_sync_exit(v19);
    }
  }

  objc_autoreleasePoolPop(v4);

  return v18;
}

uint64_t __41__ATXABHelper_abGroupForConsumerSubType___block_invoke()
{
  v0 = objc_opt_new();
  v1 = abGroupForConsumerSubType__cache;
  abGroupForConsumerSubType__cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)abGroupOverride
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v2 = objc_alloc(MEMORY[0x1E695E000]);
    v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
    v4 = [v3 objectForKey:@"appPredictionABGroupOverride"];
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[(ATXABHelper *)v4];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)abGroupOverride
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Using A/B group override: %@", &v2, 0xCu);
}

@end