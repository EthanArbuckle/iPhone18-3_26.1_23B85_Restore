@interface CNUIDataCollectionSearchSession
+ (void)begin;
+ (void)end;
- (void)didFetchResultSuggested:(BOOL)a3;
- (void)didSelectResult:(id)a3;
- (void)searchStringDidChange;
@end

@implementation CNUIDataCollectionSearchSession

- (void)didSelectResult:(id)a3
{
  v3 = a3;
  v4 = +[CNUIDataCollector sharedCollector];
  [v4 logSearchResultSelected:v3];
}

- (void)didFetchResultSuggested:(BOOL)a3
{
  v3 = a3;
  if ([(CNUIDataCollectionSearchSession *)self pendingResults])
  {
    [(CNUIDataCollectionSearchSession *)self setPendingResults:0];
    v5 = +[CNUIDataCollector sharedCollector];
    [v5 logSearchResultsFetchedSuggested:0];
  }

  if (v3 && [(CNUIDataCollectionSearchSession *)self pendingSuggestionsResults])
  {
    [(CNUIDataCollectionSearchSession *)self setPendingSuggestionsResults:0];
    v6 = +[CNUIDataCollector sharedCollector];
    [v6 logSearchResultsFetchedSuggested:1];
  }
}

- (void)searchStringDidChange
{
  [(CNUIDataCollectionSearchSession *)self setPendingResults:1];

  [(CNUIDataCollectionSearchSession *)self setPendingSuggestionsResults:1];
}

+ (void)end
{
  v2 = s_currentInstance;
  s_currentInstance = 0;
}

+ (void)begin
{
  if (!s_currentInstance)
  {
    v2 = objc_alloc_init(CNUIDataCollectionSearchSession);
    v3 = s_currentInstance;
    s_currentInstance = v2;

    v4 = +[CNUIDataCollector sharedCollector];
    [v4 logSearchUsage];
  }
}

@end