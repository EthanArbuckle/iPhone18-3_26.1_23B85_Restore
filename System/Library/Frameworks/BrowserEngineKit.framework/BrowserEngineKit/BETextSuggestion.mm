@interface BETextSuggestion
- (BETextSuggestion)initWithInputText:(id)text;
- (id)_initWithUIKitTextSuggestion:(id)suggestion;
@end

@implementation BETextSuggestion

- (BETextSuggestion)initWithInputText:(id)text
{
  v4 = [MEMORY[0x1E69DD158] textSuggestionWithInputText:text];
  v5 = [(BETextSuggestion *)self _initWithUIKitTextSuggestion:v4];

  return v5;
}

- (id)_initWithUIKitTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = BETextSuggestion;
  v6 = [(BETextSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiSuggestion, suggestion);
  }

  return v7;
}

@end