@interface ATXHomeScreenPrediction
- (ATXHomeScreenPrediction)initWithBlendingCacheIdentifier:(id)a3 widgetSuggestions:(id)a4 stacksAffectedByDebugRotation:(id)a5;
@end

@implementation ATXHomeScreenPrediction

- (ATXHomeScreenPrediction)initWithBlendingCacheIdentifier:(id)a3 widgetSuggestions:(id)a4 stacksAffectedByDebugRotation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ATXHomeScreenPrediction;
  v11 = [(ATXHomeScreenPrediction *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    blendingCacheId = v11->_blendingCacheId;
    v11->_blendingCacheId = v12;

    v14 = [v9 copy];
    suggestions = v11->_suggestions;
    v11->_suggestions = v14;

    v16 = [v10 copy];
    stacksAffectedByDebugRotation = v11->_stacksAffectedByDebugRotation;
    v11->_stacksAffectedByDebugRotation = v16;
  }

  return v11;
}

@end