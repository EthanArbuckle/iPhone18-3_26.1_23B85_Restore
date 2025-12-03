@interface ATXSearchResult
- (ATXSearchResult)initWithCoder:(id)coder;
- (ATXSearchResult)initWithScoredBundleId:(id)id response:(id)response proactiveSuggestion:(id)suggestion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSearchResult

- (ATXSearchResult)initWithScoredBundleId:(id)id response:(id)response proactiveSuggestion:(id)suggestion
{
  idCopy = id;
  responseCopy = response;
  suggestionCopy = suggestion;
  v15.receiver = self;
  v15.super_class = ATXSearchResult;
  v12 = [(ATXSearchResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scoredBundleId, id);
    objc_storeStrong(&v13->_response, response);
    objc_storeStrong(&v13->_proactiveSuggestion, suggestion);
  }

  return v13;
}

- (ATXSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ATXSearchResult;
  v5 = [(ATXSearchResult *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scoredBundleId"];
    scoredBundleId = v5->_scoredBundleId;
    v5->_scoredBundleId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestion"];
    proactiveSuggestion = v5->_proactiveSuggestion;
    v5->_proactiveSuggestion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  scoredBundleId = self->_scoredBundleId;
  coderCopy = coder;
  [coderCopy encodeObject:scoredBundleId forKey:@"scoredBundleId"];
  [coderCopy encodeObject:self->_response forKey:@"response"];
  [coderCopy encodeObject:self->_proactiveSuggestion forKey:@"proactiveSuggestion"];
  v6.receiver = self;
  v6.super_class = ATXSearchResult;
  [(ATXSearchResult *)&v6 encodeWithCoder:coderCopy];
}

@end