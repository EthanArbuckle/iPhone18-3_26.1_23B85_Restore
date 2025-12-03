@interface SearchResultHistoryItem
- (SearchResultHistoryItem)initWithSearchResult:(id)result;
- (double)timestamp;
- (void)updateModel:(id)model;
@end

@implementation SearchResultHistoryItem

- (double)timestamp
{
  searchResult = [(PersistentSearchResultHistoryItem *)self searchResult];
  [searchResult timestamp];
  v4 = v3;

  return v4;
}

- (SearchResultHistoryItem)initWithSearchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = SearchResultHistoryItem;
  v5 = [(SearchResultHistoryItem *)&v9 init];
  if (v5)
  {
    v6 = [resultCopy copy];
    [(PersistentSearchResultHistoryItem *)v5 setSearchResult:v6];
    v7 = v5;
  }

  return v5;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  searchResult = [(PersistentSearchResultHistoryItem *)self searchResult];
  [searchResult updateModel:modelCopy];

  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = [NSString stringWithFormat:@"[%@]", v8];
  [modelCopy setDebugSubtitle:v7];
}

@end