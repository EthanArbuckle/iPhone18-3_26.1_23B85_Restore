@interface ATXHomeScreenStackState
@end

@implementation ATXHomeScreenStackState

uint64_t __52___ATXHomeScreenStackState_setTopOfStackSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) widget];
  v5 = [v4 widgetUniqueId];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 widgetUniqueId];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v4 = [*(a1 + 32) widget];
    v8 = [v4 widgetUniqueId];
    v9 = [v3 widgetUniqueId];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

LABEL_7:
  return v10;
}

uint64_t __73___ATXHomeScreenStackState_widgetForSuggestion_considerSuggestedWidgets___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 extensionBundleId];
  v3 = [v2 isEqualToString:*MEMORY[0x277CEBBA0]];

  return v3;
}

@end