@interface ATXContextHeuristicResult
- (ATXContextHeuristicResult)init;
- (ATXContextHeuristicResult)initWithSuggestions:(id)suggestions additionalRefreshTriggers:(id)triggers;
@end

@implementation ATXContextHeuristicResult

- (ATXContextHeuristicResult)init
{
  array = [MEMORY[0x277CBEA60] array];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(ATXContextHeuristicResult *)self initWithSuggestions:array additionalRefreshTriggers:v4];

  return v5;
}

- (ATXContextHeuristicResult)initWithSuggestions:(id)suggestions additionalRefreshTriggers:(id)triggers
{
  suggestionsCopy = suggestions;
  triggersCopy = triggers;
  v14.receiver = self;
  v14.super_class = ATXContextHeuristicResult;
  v8 = [(ATXContextHeuristicResult *)&v14 init];
  if (v8)
  {
    v9 = [suggestionsCopy copy];
    suggestions = v8->_suggestions;
    v8->_suggestions = v9;

    v11 = [triggersCopy copy];
    additionalRefreshTriggers = v8->_additionalRefreshTriggers;
    v8->_additionalRefreshTriggers = v11;
  }

  return v8;
}

@end