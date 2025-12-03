@interface SearchResultsImpressionMetadata
- (SearchResultsImpressionMetadata)initWithResultIndex:(unint64_t)index businessId:(unint64_t)id localSearchProviderId:(unsigned int)providerId query:(id)query;
@end

@implementation SearchResultsImpressionMetadata

- (SearchResultsImpressionMetadata)initWithResultIndex:(unint64_t)index businessId:(unint64_t)id localSearchProviderId:(unsigned int)providerId query:(id)query
{
  queryCopy = query;
  v16.receiver = self;
  v16.super_class = SearchResultsImpressionMetadata;
  v11 = [(SearchResultsImpressionMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_resultIndex = index;
    v11->_businessId = id;
    v11->_localSearchProviderId = providerId;
    v13 = [queryCopy copy];
    query = v12->_query;
    v12->_query = v13;

    v12->_enriched = 0;
  }

  return v12;
}

@end