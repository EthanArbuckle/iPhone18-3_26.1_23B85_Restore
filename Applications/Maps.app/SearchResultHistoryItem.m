@interface SearchResultHistoryItem
- (SearchResultHistoryItem)initWithSearchResult:(id)a3;
- (double)timestamp;
- (void)updateModel:(id)a3;
@end

@implementation SearchResultHistoryItem

- (double)timestamp
{
  v2 = [(PersistentSearchResultHistoryItem *)self searchResult];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

- (SearchResultHistoryItem)initWithSearchResult:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchResultHistoryItem;
  v5 = [(SearchResultHistoryItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    [(PersistentSearchResultHistoryItem *)v5 setSearchResult:v6];
    v7 = v5;
  }

  return v5;
}

- (void)updateModel:(id)a3
{
  v4 = a3;
  v5 = [(PersistentSearchResultHistoryItem *)self searchResult];
  [v5 updateModel:v4];

  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = [NSString stringWithFormat:@"[%@]", v8];
  [v4 setDebugSubtitle:v7];
}

@end