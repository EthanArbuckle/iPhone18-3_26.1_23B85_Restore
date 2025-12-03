@interface CustomSearchResultHistoryItem
- (BOOL)isEqual:(id)equal;
- (CustomSearchResultHistoryItem)initWithSearchResult:(id)result;
@end

@implementation CustomSearchResultHistoryItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_customSearchResult == self->_customSearchResult;
  }

  return v5;
}

- (CustomSearchResultHistoryItem)initWithSearchResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = CustomSearchResultHistoryItem;
  v6 = [(CustomSearchResultHistoryItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customSearchResult, result);
    v8 = v7;
  }

  return v7;
}

@end