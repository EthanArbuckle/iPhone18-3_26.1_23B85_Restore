@interface SearchBarSearchResultSet
- (SearchBarSearchResultSet)initWithResults:(id)a3 maxCount:(unint64_t)a4;
@end

@implementation SearchBarSearchResultSet

- (SearchBarSearchResultSet)initWithResults:(id)a3 maxCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SearchBarSearchResultSet *)self init];
  if (v7)
  {
    v8 = [v6 copy];
    results = v7->_results;
    v7->_results = v8;

    v7->_count = a4;
  }

  return v7;
}

@end