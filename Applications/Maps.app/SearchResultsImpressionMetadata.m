@interface SearchResultsImpressionMetadata
- (SearchResultsImpressionMetadata)initWithResultIndex:(unint64_t)a3 businessId:(unint64_t)a4 localSearchProviderId:(unsigned int)a5 query:(id)a6;
@end

@implementation SearchResultsImpressionMetadata

- (SearchResultsImpressionMetadata)initWithResultIndex:(unint64_t)a3 businessId:(unint64_t)a4 localSearchProviderId:(unsigned int)a5 query:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SearchResultsImpressionMetadata;
  v11 = [(SearchResultsImpressionMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_resultIndex = a3;
    v11->_businessId = a4;
    v11->_localSearchProviderId = a5;
    v13 = [v10 copy];
    query = v12->_query;
    v12->_query = v13;

    v12->_enriched = 0;
  }

  return v12;
}

@end