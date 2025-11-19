@interface SingleResultSearchHistoryRecorder
- (SingleResultSearchHistoryRecorder)initWithSearchResult:(id)a3;
- (void)recordItemInHistory;
@end

@implementation SingleResultSearchHistoryRecorder

- (void)recordItemInHistory
{
  v6 = +[NSUUID UUID];
  v3 = [(SingleResultSearchHistoryRecorder *)self searchResult];
  [v3 setSearchToSupersedeIfRecordedInHistory:v6];

  v4 = [(SingleResultSearchHistoryRecorder *)self searchResult];
  v5 = [v4 mapItem];

  if (v5)
  {
    [HistoryEntryRecentsItem saveMapItem:v5 superseedUUID:v6];
  }
}

- (SingleResultSearchHistoryRecorder)initWithSearchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SingleResultSearchHistoryRecorder;
  v6 = [(SingleResultSearchHistoryRecorder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResult, a3);
  }

  return v7;
}

@end