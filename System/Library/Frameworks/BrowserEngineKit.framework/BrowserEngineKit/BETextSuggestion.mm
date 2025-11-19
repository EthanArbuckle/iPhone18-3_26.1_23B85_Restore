@interface BETextSuggestion
- (BETextSuggestion)initWithInputText:(id)a3;
- (id)_initWithUIKitTextSuggestion:(id)a3;
@end

@implementation BETextSuggestion

- (BETextSuggestion)initWithInputText:(id)a3
{
  v4 = [MEMORY[0x1E69DD158] textSuggestionWithInputText:a3];
  v5 = [(BETextSuggestion *)self _initWithUIKitTextSuggestion:v4];

  return v5;
}

- (id)_initWithUIKitTextSuggestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BETextSuggestion;
  v6 = [(BETextSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiSuggestion, a3);
  }

  return v7;
}

@end