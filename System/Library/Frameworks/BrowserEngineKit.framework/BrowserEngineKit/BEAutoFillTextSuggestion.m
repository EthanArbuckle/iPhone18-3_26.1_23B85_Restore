@interface BEAutoFillTextSuggestion
- (id)_initWithUIKitTextSuggestion:(id)a3;
@end

@implementation BEAutoFillTextSuggestion

- (id)_initWithUIKitTextSuggestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BEAutoFillTextSuggestion;
  v6 = [(BETextSuggestion *)&v9 _initWithUIKitTextSuggestion:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

@end