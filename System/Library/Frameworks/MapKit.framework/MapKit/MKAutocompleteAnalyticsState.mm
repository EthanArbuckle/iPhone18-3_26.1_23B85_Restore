@interface MKAutocompleteAnalyticsState
- (MKAutocompleteAnalyticsState)initWithQuery:(id)query queryTokens:(id)tokens suggestionEntries:(id)entries;
@end

@implementation MKAutocompleteAnalyticsState

- (MKAutocompleteAnalyticsState)initWithQuery:(id)query queryTokens:(id)tokens suggestionEntries:(id)entries
{
  queryCopy = query;
  tokensCopy = tokens;
  entriesCopy = entries;
  v17.receiver = self;
  v17.super_class = MKAutocompleteAnalyticsState;
  v11 = [(MKAutocompleteAnalyticsState *)&v17 init];
  if (v11)
  {
    v12 = [queryCopy copy];
    query = v11->_query;
    v11->_query = v12;

    v14 = [tokensCopy copy];
    queryTokens = v11->_queryTokens;
    v11->_queryTokens = v14;

    objc_storeStrong(&v11->_suggestionEntries, entries);
  }

  return v11;
}

@end