@interface ATXSearchResult
- (ATXSearchResult)initWithCoder:(id)a3;
- (ATXSearchResult)initWithScoredBundleId:(id)a3 response:(id)a4 proactiveSuggestion:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSearchResult

- (ATXSearchResult)initWithScoredBundleId:(id)a3 response:(id)a4 proactiveSuggestion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXSearchResult;
  v12 = [(ATXSearchResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scoredBundleId, a3);
    objc_storeStrong(&v13->_response, a4);
    objc_storeStrong(&v13->_proactiveSuggestion, a5);
  }

  return v13;
}

- (ATXSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXSearchResult;
  v5 = [(ATXSearchResult *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scoredBundleId"];
    scoredBundleId = v5->_scoredBundleId;
    v5->_scoredBundleId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestion"];
    proactiveSuggestion = v5->_proactiveSuggestion;
    v5->_proactiveSuggestion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  scoredBundleId = self->_scoredBundleId;
  v5 = a3;
  [v5 encodeObject:scoredBundleId forKey:@"scoredBundleId"];
  [v5 encodeObject:self->_response forKey:@"response"];
  [v5 encodeObject:self->_proactiveSuggestion forKey:@"proactiveSuggestion"];
  v6.receiver = self;
  v6.super_class = ATXSearchResult;
  [(ATXSearchResult *)&v6 encodeWithCoder:v5];
}

@end