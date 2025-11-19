@interface ICNoteSearchResultsController
- (BOOL)isUpToDateForInput:(id)a3 accountIdentifier:(id)a4;
- (ICNoteSearchResultsController)init;
- (void)cancelSearchQuery;
- (void)donateSearchIntent;
- (void)donateSearchIntentForSearchString:(id)a3;
- (void)performSearchWithInput:(id)a3 suggestionsResponder:(id)a4 accountIdentifier:(id)a5 modernResultsOnly:(BOOL)a6 updateHandler:(id)a7;
@end

@implementation ICNoteSearchResultsController

- (ICNoteSearchResultsController)init
{
  v8.receiver = self;
  v8.super_class = ICNoteSearchResultsController;
  v2 = [(ICNoteSearchResultsController *)&v8 init];
  if (v2)
  {
    v3 = [ICSearchQueryOperation newOperationQueueWithName:@"com.apple.notes.search-query"];
    queryOperationQueue = v2->_queryOperationQueue;
    v2->_queryOperationQueue = v3;

    v5 = [[ICSelectorDelayer alloc] initWithTarget:v2 selector:"donateSearchIntent" delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
    searchDonationDelayer = v2->_searchDonationDelayer;
    v2->_searchDonationDelayer = v5;
  }

  return v2;
}

- (void)cancelSearchQuery
{
  v3 = [(ICNoteSearchResultsController *)self queryOperationQueue];
  [v3 cancelAllOperations];

  v4 = [(ICNoteSearchResultsController *)self searchDonationDelayer];
  [v4 cancelPreviousFireRequests];

  [(ICNoteSearchResultsController *)self setDonationSearchString:0];
  [(ICNoteSearchResultsController *)self setPreviousSearchInput:0];

  [(ICNoteSearchResultsController *)self setPreviousAccountIdentifier:0];
}

- (BOOL)isUpToDateForInput:(id)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICNoteSearchResultsController *)self previousSearchInput];
  v9 = [v8 isEqual:v7];

  if (v9)
  {
    v10 = [(ICNoteSearchResultsController *)self previousAccountIdentifier];
    if (kCFNull == v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;
    if (kCFNull == v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    v15 = v14;
    if (v12 | v14)
    {
      if (v12)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        LOBYTE(v9) = [v12 isEqual:v14];
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)performSearchWithInput:(id)a3 suggestionsResponder:(id)a4 accountIdentifier:(id)a5 modernResultsOnly:(BOOL)a6 updateHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (![(ICNoteSearchResultsController *)self isUpToDateForInput:v12 accountIdentifier:v14])
  {
    [(ICNoteSearchResultsController *)self cancelSearchQuery];
    v16 = [v12 copy];
    [(ICNoteSearchResultsController *)self setPreviousSearchInput:v16];

    [(ICNoteSearchResultsController *)self setPreviousAccountIdentifier:v14];
    if (([v12 isEmpty] & 1) == 0)
    {
      v17 = [v12 searchString];
      v18 = v17;
      v19 = &stru_100661CF0;
      if (v17)
      {
        v19 = v17;
      }

      v20 = v19;

      [(ICNoteSearchResultsController *)self donateSearchIntentForSearchString:v20];
      v21 = [[ICSearchQueryOperation alloc] initWithSearchSuggestionsResponder:v13 userInput:v12 performNLSearch:1 performTopHitSearch:1 modernResultsOnly:v8];
      [ICSearchProfiler logProfilingWithMessage:@"ICSearchViewController startSearchQueryWithString: start" searchQueryOperation:v21];
      objc_initWeak(&location, v21);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100085F54;
      v23[3] = &unk_100647338;
      objc_copyWeak(&v27, &location);
      v25 = &stru_1006472C0;
      v24 = v14;
      v26 = v15;
      [v21 setFoundItemsHandler:v23];
      v22 = [(ICNoteSearchResultsController *)self queryOperationQueue];
      [v22 addOperation:v21];

      [ICSearchProfiler logProfilingWithMessage:@"ICSearchViewController startSearchQueryWithString: end" searchQueryOperation:v21];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }
}

- (void)donateSearchIntentForSearchString:(id)a3
{
  [(ICNoteSearchResultsController *)self setDonationSearchString:a3];
  v4 = [(ICNoteSearchResultsController *)self searchDonationDelayer];
  [v4 requestFire];
}

- (void)donateSearchIntent
{
  v4 = [(ICNoteSearchResultsController *)self donationSearchString];
  if ([v4 length])
  {
    v3 = [ICIntentsUtilities interactionForSearchString:v4];
    [ICIntentsUtilities donateInteraction:v3];
  }

  [(ICNoteSearchResultsController *)self setDonationSearchString:0];
}

@end