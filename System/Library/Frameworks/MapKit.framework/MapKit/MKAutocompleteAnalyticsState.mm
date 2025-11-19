@interface MKAutocompleteAnalyticsState
- (MKAutocompleteAnalyticsState)initWithQuery:(id)a3 queryTokens:(id)a4 suggestionEntries:(id)a5;
@end

@implementation MKAutocompleteAnalyticsState

- (MKAutocompleteAnalyticsState)initWithQuery:(id)a3 queryTokens:(id)a4 suggestionEntries:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MKAutocompleteAnalyticsState;
  v11 = [(MKAutocompleteAnalyticsState *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    query = v11->_query;
    v11->_query = v12;

    v14 = [v9 copy];
    queryTokens = v11->_queryTokens;
    v11->_queryTokens = v14;

    objc_storeStrong(&v11->_suggestionEntries, a5);
  }

  return v11;
}

@end