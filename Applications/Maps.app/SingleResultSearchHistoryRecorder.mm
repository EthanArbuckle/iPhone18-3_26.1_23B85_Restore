@interface SingleResultSearchHistoryRecorder
- (SingleResultSearchHistoryRecorder)initWithSearchResult:(id)result;
- (void)recordItemInHistory;
@end

@implementation SingleResultSearchHistoryRecorder

- (void)recordItemInHistory
{
  v6 = +[NSUUID UUID];
  searchResult = [(SingleResultSearchHistoryRecorder *)self searchResult];
  [searchResult setSearchToSupersedeIfRecordedInHistory:v6];

  searchResult2 = [(SingleResultSearchHistoryRecorder *)self searchResult];
  mapItem = [searchResult2 mapItem];

  if (mapItem)
  {
    [HistoryEntryRecentsItem saveMapItem:mapItem superseedUUID:v6];
  }
}

- (SingleResultSearchHistoryRecorder)initWithSearchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = SingleResultSearchHistoryRecorder;
  v6 = [(SingleResultSearchHistoryRecorder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResult, result);
  }

  return v7;
}

@end