@interface CNUIDataCollectionSearchSession
+ (void)begin;
+ (void)end;
- (void)didFetchResultSuggested:(BOOL)suggested;
- (void)didSelectResult:(id)result;
- (void)searchStringDidChange;
@end

@implementation CNUIDataCollectionSearchSession

- (void)didSelectResult:(id)result
{
  resultCopy = result;
  v4 = +[CNUIDataCollector sharedCollector];
  [v4 logSearchResultSelected:resultCopy];
}

- (void)didFetchResultSuggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  if ([(CNUIDataCollectionSearchSession *)self pendingResults])
  {
    [(CNUIDataCollectionSearchSession *)self setPendingResults:0];
    v5 = +[CNUIDataCollector sharedCollector];
    [v5 logSearchResultsFetchedSuggested:0];
  }

  if (suggestedCopy && [(CNUIDataCollectionSearchSession *)self pendingSuggestionsResults])
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