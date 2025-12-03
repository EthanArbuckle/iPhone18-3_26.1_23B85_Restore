@interface BEAutoFillTextSuggestion
- (id)_initWithUIKitTextSuggestion:(id)suggestion;
@end

@implementation BEAutoFillTextSuggestion

- (id)_initWithUIKitTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = BEAutoFillTextSuggestion;
  v6 = [(BETextSuggestion *)&v9 _initWithUIKitTextSuggestion:suggestionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, suggestion);
  }

  return v7;
}

@end