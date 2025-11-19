@interface ATXContextHeuristicResult
- (ATXContextHeuristicResult)init;
- (ATXContextHeuristicResult)initWithSuggestions:(id)a3 additionalRefreshTriggers:(id)a4;
@end

@implementation ATXContextHeuristicResult

- (ATXContextHeuristicResult)init
{
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(ATXContextHeuristicResult *)self initWithSuggestions:v3 additionalRefreshTriggers:v4];

  return v5;
}

- (ATXContextHeuristicResult)initWithSuggestions:(id)a3 additionalRefreshTriggers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXContextHeuristicResult;
  v8 = [(ATXContextHeuristicResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    suggestions = v8->_suggestions;
    v8->_suggestions = v9;

    v11 = [v7 copy];
    additionalRefreshTriggers = v8->_additionalRefreshTriggers;
    v8->_additionalRefreshTriggers = v11;
  }

  return v8;
}

@end