@interface ATXHomeScreenPrediction
- (ATXHomeScreenPrediction)initWithBlendingCacheIdentifier:(id)identifier widgetSuggestions:(id)suggestions stacksAffectedByDebugRotation:(id)rotation;
@end

@implementation ATXHomeScreenPrediction

- (ATXHomeScreenPrediction)initWithBlendingCacheIdentifier:(id)identifier widgetSuggestions:(id)suggestions stacksAffectedByDebugRotation:(id)rotation
{
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  rotationCopy = rotation;
  v19.receiver = self;
  v19.super_class = ATXHomeScreenPrediction;
  v11 = [(ATXHomeScreenPrediction *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    blendingCacheId = v11->_blendingCacheId;
    v11->_blendingCacheId = v12;

    v14 = [suggestionsCopy copy];
    suggestions = v11->_suggestions;
    v11->_suggestions = v14;

    v16 = [rotationCopy copy];
    stacksAffectedByDebugRotation = v11->_stacksAffectedByDebugRotation;
    v11->_stacksAffectedByDebugRotation = v16;
  }

  return v11;
}

@end