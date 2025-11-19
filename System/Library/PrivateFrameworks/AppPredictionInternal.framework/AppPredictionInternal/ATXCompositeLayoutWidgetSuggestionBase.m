@interface ATXCompositeLayoutWidgetSuggestionBase
@end

@implementation ATXCompositeLayoutWidgetSuggestionBase

void __81___ATXCompositeLayoutWidgetSuggestionBase_addSuggestion_asMainSuggestion_dryRun___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a2;
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = [*(a1[5] + 64) objectForKeyedSubscript:v7];

  if ([v10 count] < v9)
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end