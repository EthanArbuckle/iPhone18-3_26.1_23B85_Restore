@interface ATXSuggestionSearchResult
- (ATXSuggestionSearchResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setProactiveSuggestion:(id)suggestion;
@end

@implementation ATXSuggestionSearchResult

- (void)setProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (self->_proactiveSuggestion != suggestionCopy)
  {
    v6 = suggestionCopy;
    objc_storeStrong(&self->_proactiveSuggestion, suggestion);
    suggestionCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = ATXSuggestionSearchResult;
  v4 = [(ATXSuggestionSearchResult *)&v10 copyWithZone:zone];
  proactiveSuggestion = [(ATXSuggestionSearchResult *)self proactiveSuggestion];
  v6 = [proactiveSuggestion copy];
  [v4 setProactiveSuggestion:v6];

  blendingModelUICacheUpdateUUID = [(ATXSuggestionSearchResult *)self blendingModelUICacheUpdateUUID];
  v8 = [blendingModelUICacheUpdateUUID copy];
  [v4 setBlendingModelUICacheUpdateUUID:v8];

  return v4;
}

- (ATXSuggestionSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ATXSuggestionSearchResult;
  v5 = [(ATXSuggestionSearchResult *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestion"];
    proactiveSuggestion = v5->_proactiveSuggestion;
    v5->_proactiveSuggestion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendingCacheUUID"];
    blendingModelUICacheUpdateUUID = v5->_blendingModelUICacheUpdateUUID;
    v5->_blendingModelUICacheUpdateUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextActionIdentifier"];
    contextActionIdentifier = v5->_contextActionIdentifier;
    v5->_contextActionIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  proactiveSuggestion = self->_proactiveSuggestion;
  coderCopy = coder;
  [coderCopy encodeObject:proactiveSuggestion forKey:@"proactiveSuggestion"];
  [coderCopy encodeObject:self->_blendingModelUICacheUpdateUUID forKey:@"blendingCacheUUID"];
  [coderCopy encodeObject:self->_contextActionIdentifier forKey:@"contextActionIdentifier"];
  v6.receiver = self;
  v6.super_class = ATXSuggestionSearchResult;
  [(ATXSuggestionSearchResult *)&v6 encodeWithCoder:coderCopy];
}

@end