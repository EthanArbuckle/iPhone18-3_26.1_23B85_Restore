@interface ATXSuggestionSearchResult
- (ATXSuggestionSearchResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setProactiveSuggestion:(id)a3;
@end

@implementation ATXSuggestionSearchResult

- (void)setProactiveSuggestion:(id)a3
{
  v5 = a3;
  if (self->_proactiveSuggestion != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_proactiveSuggestion, a3);
    v5 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = ATXSuggestionSearchResult;
  v4 = [(ATXSuggestionSearchResult *)&v10 copyWithZone:a3];
  v5 = [(ATXSuggestionSearchResult *)self proactiveSuggestion];
  v6 = [v5 copy];
  [v4 setProactiveSuggestion:v6];

  v7 = [(ATXSuggestionSearchResult *)self blendingModelUICacheUpdateUUID];
  v8 = [v7 copy];
  [v4 setBlendingModelUICacheUpdateUUID:v8];

  return v4;
}

- (ATXSuggestionSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXSuggestionSearchResult;
  v5 = [(ATXSuggestionSearchResult *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestion"];
    proactiveSuggestion = v5->_proactiveSuggestion;
    v5->_proactiveSuggestion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blendingCacheUUID"];
    blendingModelUICacheUpdateUUID = v5->_blendingModelUICacheUpdateUUID;
    v5->_blendingModelUICacheUpdateUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextActionIdentifier"];
    contextActionIdentifier = v5->_contextActionIdentifier;
    v5->_contextActionIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  proactiveSuggestion = self->_proactiveSuggestion;
  v5 = a3;
  [v5 encodeObject:proactiveSuggestion forKey:@"proactiveSuggestion"];
  [v5 encodeObject:self->_blendingModelUICacheUpdateUUID forKey:@"blendingCacheUUID"];
  [v5 encodeObject:self->_contextActionIdentifier forKey:@"contextActionIdentifier"];
  v6.receiver = self;
  v6.super_class = ATXSuggestionSearchResult;
  [(ATXSuggestionSearchResult *)&v6 encodeWithCoder:v5];
}

@end