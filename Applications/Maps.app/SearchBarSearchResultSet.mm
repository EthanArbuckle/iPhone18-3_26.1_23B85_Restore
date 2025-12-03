@interface SearchBarSearchResultSet
- (SearchBarSearchResultSet)initWithResults:(id)results maxCount:(unint64_t)count;
@end

@implementation SearchBarSearchResultSet

- (SearchBarSearchResultSet)initWithResults:(id)results maxCount:(unint64_t)count
{
  resultsCopy = results;
  v7 = [(SearchBarSearchResultSet *)self init];
  if (v7)
  {
    v8 = [resultsCopy copy];
    results = v7->_results;
    v7->_results = v8;

    v7->_count = count;
  }

  return v7;
}

@end