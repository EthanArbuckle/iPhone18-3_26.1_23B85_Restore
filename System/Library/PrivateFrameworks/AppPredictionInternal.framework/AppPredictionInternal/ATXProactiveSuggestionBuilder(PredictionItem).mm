@interface ATXProactiveSuggestionBuilder(PredictionItem)
@end

@implementation ATXProactiveSuggestionBuilder(PredictionItem)

+ (void)_proactiveSuggestionsFromHeuristicActionResult:()PredictionItem clientModelSpec:reasons:allowedOnLockscreen:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_13(&dword_2263AA000, "%@ - _proactiveSuggestionsFromActionResult: %@ could not generate executableSpec, returning nil", v4, v5);
}

+ (void)_proactiveSuggestionsFromHeuristicActionResult:()PredictionItem clientModelSpec:reasons:allowedOnLockscreen:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_13(&dword_2263AA000, "%@ - _proactiveSuggestionsFromHeuristicActionResult: %@ had no scoredAction, returning nil", v4, v5);
}

+ (void)_proactiveSuggestionsFromActionResult:()PredictionItem clientModelSpec:reasons:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_13(&dword_2263AA000, "%@ - _proactiveSuggestionsFromActionResult: %@ had no scoredAction, returning nil", v4, v5);
}

+ (void)_proactiveSuggestionFromAppPredictionItem:()PredictionItem clientModelSpec:reasons:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_13(&dword_2263AA000, "%@ - _proactiveSuggestionFromAppPredictionItem: %@ could not generate uiSpec, returning nil", v4, v5);
}

@end