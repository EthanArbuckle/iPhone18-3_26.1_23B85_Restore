@interface SLSheetPlaceSearchController
- (SLSheetPlaceSearchController)initWithPlaceDataSource:(id)a3 searchDisplayController:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelSearch;
- (void)performDelayedFetch:(id)a3;
- (void)placeManager:(id)a3 failedWithError:(id)a4;
- (void)placeManager:(id)a3 updatedPlaces:(id)a4;
- (void)searchWithSearchString:(id)a3;
@end

@implementation SLSheetPlaceSearchController

- (SLSheetPlaceSearchController)initWithPlaceDataSource:(id)a3 searchDisplayController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SLSheetPlaceSearchController;
  v9 = [(SLSheetPlaceSearchController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeDataSource, a3);
    [(SLPlaceDataSource *)v10->_placeDataSource setDelegate:v10];
    objc_storeStrong(&v10->_searchDisplayController, a4);
  }

  return v10;
}

- (void)searchWithSearchString:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  _SLLog(v3, 6, @"Cancel previous fetch");
  [(SLSheetPlaceSearchController *)self cancelSearch];
  v12 = [(SLSheetPlaceSearchController *)self placeDataSource];
  _SLLog(v3, 6, @"Initate new place search on %@ with search string %@");

  [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:{1, v12, v6}];
  self->_isSearching = 1;
  objc_storeStrong(&self->_searchString, a3);
  self->_retryCount = 0;
  if ([v6 length])
  {
    [(UISearchDisplayController *)self->_searchDisplayController setNoResultsMessage:&stru_1F41EC300];
    delayTimer = self->_delayTimer;
    if (delayTimer)
    {
      [(NSTimer *)delayTimer invalidate];
    }

    _SLLog(v3, 6, @"Scheduling delayed place fetch");
    v8 = MEMORY[0x1E695DFF0];
    v13 = @"searchString";
    v14[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v8 scheduledTimerWithTimeInterval:self target:sel_performDelayedFetch_ selector:v9 userInfo:0 repeats:0.5];
    v11 = self->_delayTimer;
    self->_delayTimer = v10;
  }

  else
  {
    [(SLSheetPlaceSearchController *)self placeManager:0 updatedPlaces:MEMORY[0x1E695E0F0]];
  }
}

- (void)cancelSearch
{
  if (self->_isSearching)
  {
    v9 = v2;
    delayTimer = self->_delayTimer;
    if (delayTimer)
    {
      [(NSTimer *)delayTimer invalidate];
    }

    [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:{0, v3, v9, v4, v5}];
    v8 = [(SLSheetPlaceSearchController *)self placeDataSource];
    [v8 cancelPlaceFetch];

    self->_isSearching = 0;
  }
}

- (void)performDelayedFetch:(id)a3
{
  v5 = a3;
  _SLLog(v3, 6, @"Performing delayed place fetch");
  v8 = [v5 userInfo];

  v6 = [(SLSheetPlaceSearchController *)self placeDataSource];
  v7 = [v8 objectForKeyedSubscript:@"searchString"];
  [v6 fetchPlacesWithSearchString:v7];
}

- (void)placeManager:(id)a3 updatedPlaces:(id)a4
{
  self->_isSearching = 0;
  v6 = a4;
  _SLLog(v4, 6, @"Place manager updated places for search controller %@");
  [(SLSheetPlaceSearchController *)self setSearchResults:v6, v6];

  v7 = [(UISearchDisplayController *)self->_searchDisplayController searchResultsTableView];
  [v7 reloadData];

  v8 = SLSocialFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"FB_PLACE_SEARCH_NO_RESULTS" value:&stru_1F41EC300 table:@"Localizable"];
  [(UISearchDisplayController *)self->_searchDisplayController setNoResultsMessage:v9];

  v10 = MEMORY[0x1E69DC668];

  [v10 shouldShowNetworkActivityIndicatorInRemoteApplication:0];
}

- (void)placeManager:(id)a3 failedWithError:(id)a4
{
  v6 = a4;
  v12 = v6;
  if (self->_isSearching && self->_retryCount <= 2 && self->_searchString)
  {
    _SLLog(v4, 6, @"Retrycount is %i, retrying place fetch");
    ++self->_retryCount;
    v7 = [(SLSheetPlaceSearchController *)self placeDataSource];
    [v7 fetchPlacesWithSearchString:self->_searchString];
  }

  else
  {
    self->_retryCount = 0;
    self->_isSearching = 0;
    v11 = v6;
    _SLLog(v4, 3, @"Failed place search with error %{public}@");
    [(SLSheetPlaceSearchController *)self setSearchResults:MEMORY[0x1E695E0F0], v11];
    v8 = [(UISearchDisplayController *)self->_searchDisplayController searchResultsTableView];
    [v8 reloadData];

    v9 = SLSocialFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"FB_PLACE_SEARCH_SEARCH_FAILED" value:&stru_1F41EC300 table:@"Localizable"];
    [(UISearchDisplayController *)self->_searchDisplayController setNoResultsMessage:v10];

    [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SLSheetPlaceSearchController *)self searchResults:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"SLFacebookPlaceCell", a4}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SLFacebookPlaceCell"];
  }

  [v4 setAccessoryType:0];

  return v4;
}

@end