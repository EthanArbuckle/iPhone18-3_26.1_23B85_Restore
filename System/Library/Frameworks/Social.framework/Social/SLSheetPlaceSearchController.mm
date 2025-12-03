@interface SLSheetPlaceSearchController
- (SLSheetPlaceSearchController)initWithPlaceDataSource:(id)source searchDisplayController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelSearch;
- (void)performDelayedFetch:(id)fetch;
- (void)placeManager:(id)manager failedWithError:(id)error;
- (void)placeManager:(id)manager updatedPlaces:(id)places;
- (void)searchWithSearchString:(id)string;
@end

@implementation SLSheetPlaceSearchController

- (SLSheetPlaceSearchController)initWithPlaceDataSource:(id)source searchDisplayController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SLSheetPlaceSearchController;
  v9 = [(SLSheetPlaceSearchController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeDataSource, source);
    [(SLPlaceDataSource *)v10->_placeDataSource setDelegate:v10];
    objc_storeStrong(&v10->_searchDisplayController, controller);
  }

  return v10;
}

- (void)searchWithSearchString:(id)string
{
  v14[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  _SLLog(v3, 6, @"Cancel previous fetch");
  [(SLSheetPlaceSearchController *)self cancelSearch];
  placeDataSource = [(SLSheetPlaceSearchController *)self placeDataSource];
  _SLLog(v3, 6, @"Initate new place search on %@ with search string %@");

  [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:{1, placeDataSource, stringCopy}];
  self->_isSearching = 1;
  objc_storeStrong(&self->_searchString, string);
  self->_retryCount = 0;
  if ([stringCopy length])
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
    v14[0] = stringCopy;
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
    placeDataSource = [(SLSheetPlaceSearchController *)self placeDataSource];
    [placeDataSource cancelPlaceFetch];

    self->_isSearching = 0;
  }
}

- (void)performDelayedFetch:(id)fetch
{
  fetchCopy = fetch;
  _SLLog(v3, 6, @"Performing delayed place fetch");
  userInfo = [fetchCopy userInfo];

  placeDataSource = [(SLSheetPlaceSearchController *)self placeDataSource];
  v7 = [userInfo objectForKeyedSubscript:@"searchString"];
  [placeDataSource fetchPlacesWithSearchString:v7];
}

- (void)placeManager:(id)manager updatedPlaces:(id)places
{
  self->_isSearching = 0;
  placesCopy = places;
  _SLLog(v4, 6, @"Place manager updated places for search controller %@");
  [(SLSheetPlaceSearchController *)self setSearchResults:placesCopy, placesCopy];

  searchResultsTableView = [(UISearchDisplayController *)self->_searchDisplayController searchResultsTableView];
  [searchResultsTableView reloadData];

  v8 = SLSocialFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"FB_PLACE_SEARCH_NO_RESULTS" value:&stru_1F41EC300 table:@"Localizable"];
  [(UISearchDisplayController *)self->_searchDisplayController setNoResultsMessage:v9];

  v10 = MEMORY[0x1E69DC668];

  [v10 shouldShowNetworkActivityIndicatorInRemoteApplication:0];
}

- (void)placeManager:(id)manager failedWithError:(id)error
{
  errorCopy = error;
  v12 = errorCopy;
  if (self->_isSearching && self->_retryCount <= 2 && self->_searchString)
  {
    _SLLog(v4, 6, @"Retrycount is %i, retrying place fetch");
    ++self->_retryCount;
    placeDataSource = [(SLSheetPlaceSearchController *)self placeDataSource];
    [placeDataSource fetchPlacesWithSearchString:self->_searchString];
  }

  else
  {
    self->_retryCount = 0;
    self->_isSearching = 0;
    v11 = errorCopy;
    _SLLog(v4, 3, @"Failed place search with error %{public}@");
    [(SLSheetPlaceSearchController *)self setSearchResults:MEMORY[0x1E695E0F0], v11];
    searchResultsTableView = [(UISearchDisplayController *)self->_searchDisplayController searchResultsTableView];
    [searchResultsTableView reloadData];

    v9 = SLSocialFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"FB_PLACE_SEARCH_SEARCH_FAILED" value:&stru_1F41EC300 table:@"Localizable"];
    [(UISearchDisplayController *)self->_searchDisplayController setNoResultsMessage:v10];

    [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SLSheetPlaceSearchController *)self searchResults:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"SLFacebookPlaceCell", path}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SLFacebookPlaceCell"];
  }

  [v4 setAccessoryType:0];

  return v4;
}

@end