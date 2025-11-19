@interface CustomSearchResultHistoryItem
- (BOOL)isEqual:(id)a3;
- (CustomSearchResultHistoryItem)initWithSearchResult:(id)a3;
@end

@implementation CustomSearchResultHistoryItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_customSearchResult == self->_customSearchResult;
  }

  return v5;
}

- (CustomSearchResultHistoryItem)initWithSearchResult:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CustomSearchResultHistoryItem;
  v6 = [(CustomSearchResultHistoryItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customSearchResult, a3);
    v8 = v7;
  }

  return v7;
}

@end