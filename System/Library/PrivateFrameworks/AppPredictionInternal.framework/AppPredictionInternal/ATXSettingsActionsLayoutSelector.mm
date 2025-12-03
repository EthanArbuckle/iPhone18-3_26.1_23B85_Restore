@interface ATXSettingsActionsLayoutSelector
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
@end

@implementation ATXSettingsActionsLayoutSelector

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  v5 = MEMORY[0x277D42070];
  suggestionsCopy = suggestions;
  v7 = [v5 clientModelIdFromClientModelType:{-[ATXSettingsActionsLayoutSelector clientModelType](self, "clientModelType")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__ATXSettingsActionsLayoutSelector_selectedLayoutForConsumerSubType_rankedSuggestions___block_invoke;
  v12[3] = &unk_2785996B0;
  v13 = v7;
  v8 = v7;
  v9 = [suggestionsCopy _pas_filteredArrayWithTest:v12];

  v10 = [objc_alloc(MEMORY[0x277D420E8]) initWithLayoutType:17 oneByOneSuggestions:0 oneByTwoSuggestions:v9 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];

  return v10;
}

uint64_t __87__ATXSettingsActionsLayoutSelector_selectedLayoutForConsumerSubType_rankedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientModelSpecification];
  v4 = [v3 clientModelId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

@end