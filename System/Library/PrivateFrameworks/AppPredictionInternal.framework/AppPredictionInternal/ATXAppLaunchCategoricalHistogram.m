@interface ATXAppLaunchCategoricalHistogram
@end

@implementation ATXAppLaunchCategoricalHistogram

void __63___ATXAppLaunchCategoricalHistogram__garbageCollectCategoryIds__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([*(a1 + 32) containsIndex:{objc_msgSend(a3, "unsignedIntegerValue")}] & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __131___ATXAppLaunchCategoricalHistogram_initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ATXHistogramBundleIdTable sharedInstance];
  v5 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v3 candidateActionTypes:0 blacklist:0];
  v8 = [v4 allKeysFilteredBy:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeHistoryForBundleIds:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 removeHistoryForBundleIds:v8];
}

void __131___ATXAppLaunchCategoricalHistogram_initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
  v2 = [v4 objectForKeyedSubscript:@"MinLaunchThreshold"];
  [v2 doubleValue];
  kLaunchThreshold_0 = v3;

  if (*&kLaunchThreshold_0 == 0.0)
  {
    __131___ATXAppLaunchCategoricalHistogram_initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod___block_invoke_2_cold_1(a1);
  }
}

void __76___ATXAppLaunchCategoricalHistogram_launchCountsForEachCategoryForBundleId___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 40) == a2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
    v8 = [v7 stringValue];
    [v6 setObject:v9 forKeyedSubscript:v8];
  }
}

void __131___ATXAppLaunchCategoricalHistogram_initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"kLaunchThreshold != 0"}];
}

@end