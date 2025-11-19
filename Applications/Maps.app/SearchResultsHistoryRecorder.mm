@interface SearchResultsHistoryRecorder
- (SearchResultsHistoryRecorder)initWithTicket:(id)a3 searchResults:(id)a4 auxiliaryControlsOrigin:(int64_t)a5 hasRefinedMapItems:(BOOL)a6 tracksRAPReportingOnly:(BOOL)a7 completionTitle:(id)a8;
- (void)recordItemInHistoryWithCompletion:(id)a3;
@end

@implementation SearchResultsHistoryRecorder

- (void)recordItemInHistoryWithCompletion:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10099F2B8;
  v23 = sub_10099F2C8;
  v24 = 0;
  v5 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
  v6 = [v5 query];

  v7 = [(SearchResultsHistoryRecorder *)self searchResults];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10099F2D0;
  v16[3] = &unk_101650128;
  v18 = &v19;
  v8 = v6;
  v17 = v8;
  [v7 enumerateObjectsUsingBlock:v16];

  v9 = v20[5];
  if (v9)
  {
    v10 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
    [v10 setLocationDisplayString:v9];

    v11 = +[NSDate date];
    v12 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
    [v12 setUsageDate:v11];
  }

  if (![(SearchResultsHistoryRecorder *)self hasRefinedMapItems])
  {
    v13 = [(SearchResultsHistoryRecorder *)self searchRequestHistoryItem];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10099F414;
    v14[3] = &unk_101630920;
    v15 = v4;
    [HistoryEntryRecentsItem saveSearch:v13 completion:v14];
  }

  _Block_object_dispose(&v19, 8);
}

- (SearchResultsHistoryRecorder)initWithTicket:(id)a3 searchResults:(id)a4 auxiliaryControlsOrigin:(int64_t)a5 hasRefinedMapItems:(BOOL)a6 tracksRAPReportingOnly:(BOOL)a7 completionTitle:(id)a8
{
  v9 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = SearchResultsHistoryRecorder;
  v18 = [(SearchResultsHistoryRecorder *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ticket, a3);
    v20 = [v16 copy];
    searchResults = v19->_searchResults;
    v19->_searchResults = v20;

    v19->_auxiliaryControlsOrigin = a5;
    v19->_hasRefinedMapItems = a6;
    v22 = [MSPMutableHistoryEntrySearch alloc];
    v23 = [(SearchResultsHistoryRecorder *)v19 ticket];
    v24 = [v22 initWithTicket:v23 completionTitle:v17];
    searchRequestHistoryItem = v19->_searchRequestHistoryItem;
    v19->_searchRequestHistoryItem = v24;

    [(MSPMutableHistoryEntrySearch *)v19->_searchRequestHistoryItem setTracksRAPReportingOnly:v9];
  }

  return v19;
}

@end