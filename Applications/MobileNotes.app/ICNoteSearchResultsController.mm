@interface ICNoteSearchResultsController
- (BOOL)isUpToDateForInput:(id)input accountIdentifier:(id)identifier;
- (ICNoteSearchResultsController)init;
- (void)cancelSearchQuery;
- (void)donateSearchIntent;
- (void)donateSearchIntentForSearchString:(id)string;
- (void)performSearchWithInput:(id)input suggestionsResponder:(id)responder accountIdentifier:(id)identifier modernResultsOnly:(BOOL)only updateHandler:(id)handler;
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
  queryOperationQueue = [(ICNoteSearchResultsController *)self queryOperationQueue];
  [queryOperationQueue cancelAllOperations];

  searchDonationDelayer = [(ICNoteSearchResultsController *)self searchDonationDelayer];
  [searchDonationDelayer cancelPreviousFireRequests];

  [(ICNoteSearchResultsController *)self setDonationSearchString:0];
  [(ICNoteSearchResultsController *)self setPreviousSearchInput:0];

  [(ICNoteSearchResultsController *)self setPreviousAccountIdentifier:0];
}

- (BOOL)isUpToDateForInput:(id)input accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  inputCopy = input;
  previousSearchInput = [(ICNoteSearchResultsController *)self previousSearchInput];
  v9 = [previousSearchInput isEqual:inputCopy];

  if (v9)
  {
    previousAccountIdentifier = [(ICNoteSearchResultsController *)self previousAccountIdentifier];
    if (kCFNull == identifierCopy)
    {
      v11 = 0;
    }

    else
    {
      v11 = identifierCopy;
    }

    v12 = v11;
    if (kCFNull == previousAccountIdentifier)
    {
      v13 = 0;
    }

    else
    {
      v13 = previousAccountIdentifier;
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

- (void)performSearchWithInput:(id)input suggestionsResponder:(id)responder accountIdentifier:(id)identifier modernResultsOnly:(BOOL)only updateHandler:(id)handler
{
  onlyCopy = only;
  inputCopy = input;
  responderCopy = responder;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![(ICNoteSearchResultsController *)self isUpToDateForInput:inputCopy accountIdentifier:identifierCopy])
  {
    [(ICNoteSearchResultsController *)self cancelSearchQuery];
    v16 = [inputCopy copy];
    [(ICNoteSearchResultsController *)self setPreviousSearchInput:v16];

    [(ICNoteSearchResultsController *)self setPreviousAccountIdentifier:identifierCopy];
    if (([inputCopy isEmpty] & 1) == 0)
    {
      searchString = [inputCopy searchString];
      v18 = searchString;
      v19 = &stru_100661CF0;
      if (searchString)
      {
        v19 = searchString;
      }

      v20 = v19;

      [(ICNoteSearchResultsController *)self donateSearchIntentForSearchString:v20];
      v21 = [[ICSearchQueryOperation alloc] initWithSearchSuggestionsResponder:responderCopy userInput:inputCopy performNLSearch:1 performTopHitSearch:1 modernResultsOnly:onlyCopy];
      [ICSearchProfiler logProfilingWithMessage:@"ICSearchViewController startSearchQueryWithString: start" searchQueryOperation:v21];
      objc_initWeak(&location, v21);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100085F54;
      v23[3] = &unk_100647338;
      objc_copyWeak(&v27, &location);
      v25 = &stru_1006472C0;
      v24 = identifierCopy;
      v26 = handlerCopy;
      [v21 setFoundItemsHandler:v23];
      queryOperationQueue = [(ICNoteSearchResultsController *)self queryOperationQueue];
      [queryOperationQueue addOperation:v21];

      [ICSearchProfiler logProfilingWithMessage:@"ICSearchViewController startSearchQueryWithString: end" searchQueryOperation:v21];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }
}

- (void)donateSearchIntentForSearchString:(id)string
{
  [(ICNoteSearchResultsController *)self setDonationSearchString:string];
  searchDonationDelayer = [(ICNoteSearchResultsController *)self searchDonationDelayer];
  [searchDonationDelayer requestFire];
}

- (void)donateSearchIntent
{
  donationSearchString = [(ICNoteSearchResultsController *)self donationSearchString];
  if ([donationSearchString length])
  {
    v3 = [ICIntentsUtilities interactionForSearchString:donationSearchString];
    [ICIntentsUtilities donateInteraction:v3];
  }

  [(ICNoteSearchResultsController *)self setDonationSearchString:0];
}

@end