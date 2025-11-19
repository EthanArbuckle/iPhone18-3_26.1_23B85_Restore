@interface ATXHomeScreenPageState
@end

@implementation ATXHomeScreenPageState

uint64_t __42___ATXHomeScreenPageState_pinnedSGWidgets__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 config];
  v3 = [v2 isPinnedSuggestionsWidget];

  return v3;
}

uint64_t __37___ATXHomeScreenPageState_pinnedAPPs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 config];
  v3 = [v2 isAppPredictionPanel];

  return v3;
}

void __53___ATXHomeScreenPageState__isShowingApp_allowFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end