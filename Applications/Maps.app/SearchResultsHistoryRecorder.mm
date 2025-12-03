@interface SearchResultsHistoryRecorder
- (SearchResultsHistoryRecorder)initWithTicket:(id)ticket searchResults:(id)results auxiliaryControlsOrigin:(int64_t)origin hasRefinedMapItems:(BOOL)items tracksRAPReportingOnly:(BOOL)only completionTitle:(id)title;
- (void)recordItemInHistoryWithCompletion:(id)completion;
@end

@implementation SearchResultsHistoryRecorder

- (void)recordItemInHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10099F2B8;
  v23 = sub_10099F2C8;
  v24 = 0;
  searchRequestHistoryItem = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
  query = [searchRequestHistoryItem query];

  searchResults = [(SearchResultsHistoryRecorder *)self searchResults];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10099F2D0;
  v16[3] = &unk_101650128;
  v18 = &v19;
  v8 = query;
  v17 = v8;
  [searchResults enumerateObjectsUsingBlock:v16];

  v9 = v20[5];
  if (v9)
  {
    searchRequestHistoryItem2 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
    [searchRequestHistoryItem2 setLocationDisplayString:v9];

    v11 = +[NSDate date];
    searchRequestHistoryItem3 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
    [searchRequestHistoryItem3 setUsageDate:v11];
  }

  if (![(SearchResultsHistoryRecorder *)self hasRefinedMapItems])
  {
    searchRequestHistoryItem4 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10099F414;
    v14[3] = &unk_101630920;
    v15 = completionCopy;
    [HistoryEntryRecentsItem saveSearch:searchRequestHistoryItem4 completion:v14];
  }

  _Block_object_dispose(&v19, 8);
}

- (SearchResultsHistoryRecorder)initWithTicket:(id)ticket searchResults:(id)results auxiliaryControlsOrigin:(int64_t)origin hasRefinedMapItems:(BOOL)items tracksRAPReportingOnly:(BOOL)only completionTitle:(id)title
{
  onlyCopy = only;
  ticketCopy = ticket;
  resultsCopy = results;
  titleCopy = title;
  v27.receiver = self;
  v27.super_class = SearchResultsHistoryRecorder;
  v18 = [(SearchResultsHistoryRecorder *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ticket, ticket);
    v20 = [resultsCopy copy];
    searchResults = v19->_searchResults;
    v19->_searchResults = v20;

    v19->_auxiliaryControlsOrigin = origin;
    v19->_hasRefinedMapItems = items;
    v22 = [MSPMutableHistoryEntrySearch alloc];
    ticket = [(SearchResultsHistoryRecorder *)v19 ticket];
    v24 = [v22 initWithTicket:ticket completionTitle:titleCopy];
    searchRequestHistoryItem = v19->_searchRequestHistoryItem;
    v19->_searchRequestHistoryItem = v24;

    [(MSPMutableHistoryEntrySearch *)v19->_searchRequestHistoryItem setTracksRAPReportingOnly:onlyCopy];
  }

  return v19;
}

@end