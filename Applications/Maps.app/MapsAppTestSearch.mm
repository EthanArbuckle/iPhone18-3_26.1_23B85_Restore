@interface MapsAppTestSearch
- (BOOL)runTest;
- (void)_runTestNow;
- (void)_startPrewarmingKeyboard;
- (void)annotationPinDroppedForAResult:(id)result;
- (void)annotationPinDroppedForResults:(id)results;
- (void)continueDirectionIntentTest;
- (void)continueToAnnotationsTestsWithSearchSession:(id)session;
- (void)continueToNearbyScrollTests;
- (void)didDisplayCarplayBrowseCategories;
- (void)didEndGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)request;
- (void)didEndMSGPPTTest_Insights_ACRanking_Contacts:(id)contacts;
- (void)didEndMSGPPTTest_Insights_ACRanking_MapItems:(id)items;
- (void)didEndMSGPPTTest_Insights_ACRanking_PortraitCall:(id)call;
- (void)didEndMSGPPTTest_Insights_ACRanking_PreLoad:(id)load;
- (void)didEndMSGPPTTest_Insights_ACRanking_RoutineCall:(id)call;
- (void)didEndMSGPPTTest_Insights_ACRanking_Tourist:(id)tourist;
- (void)endNearbyTestCategory:(id)category;
- (void)finishSearchTest:(id)test;
- (void)finishedSubTest:(id)test;
- (void)performOnMainQueue:(id)queue;
- (void)refreshSearchAnnotationPinDroppedForResults:(id)results;
- (void)refreshSearchRequestSent:(id)sent;
- (void)refreshSearchSessionDidChangeSearchResults:(id)results;
- (void)runScrollBrowseCategoriesInCarPlay;
- (void)searchAutoCompleteTestDidFinish;
- (void)searchAutoCompleteTestReceiveHandlesOrAddresses:(id)addresses;
- (void)searchAutoCompleteTestReceiveResponse:(id)response;
- (void)searchAutoCompleteTestSendQuery;
- (void)searchKeyboardDidHide;
- (void)searchKeyboardDidShow;
- (void)searchKeyboardWillShow;
- (void)searchRequestSent:(id)sent;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)searchUILayoutDone;
- (void)sendSearchRequest;
- (void)startAutocompleteOrNearbySearchTest;
- (void)startNearbyTest;
- (void)startNearbyTestCategory;
- (void)startRefreshSearchTestIfNeeded;
- (void)startScrollNearbyTestCategory;
- (void)startSearchAutoCompleteTest;
- (void)startedSubTest:(id)test;
- (void)startedSubTest:(id)test withMetrics:(id)metrics;
- (void)willBeginGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)request;
- (void)willBeginMSGPPTTest_Insights_ACRanking_Contacts:(id)contacts;
- (void)willBeginMSGPPTTest_Insights_ACRanking_MapItems:(id)items;
- (void)willBeginMSGPPTTest_Insights_ACRanking_PortraitCall:(id)call;
- (void)willBeginMSGPPTTest_Insights_ACRanking_PreLoad:(id)load;
- (void)willBeginMSGPPTTest_Insights_ACRanking_RoutineCall:(id)call;
- (void)willBeginMSGPPTTest_Insights_ACRanking_Tourist:(id)tourist;
@end

@implementation MapsAppTestSearch

- (void)continueDirectionIntentTest
{
  directionIntentTestType = self->_directionIntentTestType;
  if ((directionIntentTestType - 2) >= 2)
  {
    if (directionIntentTestType != 1)
    {
      return;
    }

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1007B9278;
    v13 = &unk_101650D20;
    selfCopy = self;
    v3 = @"RouteSearchViewControllerDidAppear";
    v4 = &v10;
  }

  else
  {
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_1007B92BC;
    v8 = &unk_101650D20;
    selfCopy2 = self;
    v3 = @"MapsRoutePlanningShowingRoutesNotification";
    v4 = &v5;
  }

  [PPTNotificationCenter addOnceObserverForName:v3 object:0 usingBlock:v4, v5, v6, v7, v8, selfCopy2, v10, v11, v12, v13, selfCopy];
}

- (void)refreshSearchAnnotationPinDroppedForResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"MapsPinsDroppedForSearchResultsNotification" object:0];
  [(MapsAppTestSearch *)self finishedSubTest:@"refreshSearch - annotationsDropped"];
  [(MapsAppTestSearch *)self startedSubTest:@"refreshSearch - mapViewFullyDrawn"];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007B941C;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)refreshSearchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  object = [resultsCopy object];

  if (object)
  {
    [(MapsAppTestSearch *)self finishedSubTest:@"refreshSearch - searchResultReceived"];
    searchInfo = [object searchInfo];
    results = [searchInfo results];
    v8 = [results count];

    if (v8 < 2)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self name:@"MapsPinsDroppedForSearchResultsNotification" object:0];

      [(MapsAppTest *)self finishedTest];
    }

    else
    {
      [(MapsAppTestSearch *)self startedSubTest:@"refreshSearch - annotationsDropped"];
    }
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)refreshSearchRequestSent:(id)sent
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"refreshSearchAnnotationPinDroppedForResults:" name:@"MapsPinsDroppedForSearchResultsNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"refreshSearchSessionDidChangeSearchResults:" name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  [(MapsAppTestSearch *)self finishedSubTest:@"refreshSearch - searchRequestSent"];

  [(MapsAppTestSearch *)self startedSubTest:@"refreshSearch - searchResultReceived"];
}

- (void)startRefreshSearchTestIfNeeded
{
  options = [(MapsAppTest *)self options];
  v4 = [options valueForKey:@"refreshWestLng"];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [options valueForKey:@"refreshEastLng"];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [options valueForKey:@"refreshSouthLat"];
  if (!v8)
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [options valueForKey:@"refreshNorthLat"];

  if (!v10)
  {
LABEL_8:
    [(MapsAppTest *)self finishedTest];
    goto LABEL_9;
  }

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  v12 = objc_opt_new();
  v13 = [options valueForKey:@"refreshWestLng"];
  [v13 doubleValue];
  [v12 setWestLng:?];

  v14 = [options valueForKey:@"refreshEastLng"];
  [v14 doubleValue];
  [v12 setEastLng:?];

  v15 = [options valueForKey:@"refreshSouthLat"];
  [v15 doubleValue];
  [v12 setSouthLat:?];

  v16 = [options valueForKey:@"refreshNorthLat"];
  [v16 doubleValue];
  [v12 setNorthLat:?];

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1007B98C4;
  v18[3] = &unk_101661738;
  v18[4] = self;
  [mainVKMapView setMapRegion:v12 pitch:v18 yaw:0.0 duration:0.0 completion:2.0];

LABEL_9:
}

- (void)finishSearchTest:(id)test
{
  [(MapsAppTestSearch *)self finishedSubTest:@"mapViewFullyDrawn"];
  if (self->_isNearbyTest)
  {
    v4 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007B9A2C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else
  {

    [(MapsAppTest *)self finishedTest];
  }
}

- (void)continueToNearbyScrollTests
{
  options = [(MapsAppTest *)self options];
  v4 = [options objectForKeyedSubscript:@"testName"];

  v5 = dispatch_time(0, 1000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007B9B0C;
  v7[3] = &unk_101661A90;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)annotationPinDroppedForResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"MapsPinsDroppedForSearchResultsNotification" object:0];
  [(MapsAppTestSearch *)self finishedSubTest:@"annotationsDropped"];
  [(MapsAppTestSearch *)self startedSubTest:@"mapViewFullyDrawn"];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007B9D2C;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)annotationPinDroppedForAResult:(id)result
{
  resultCopy = result;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"MapsPinsDroppedForSearchResultsNotification" object:0];
  [(MapsAppTestSearch *)self finishedSubTest:@"annotationsDroppedAndSelected"];
  [(MapsAppTestSearch *)self startedSubTest:@"mapViewFullyDrawn"];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007B9EB8;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)continueToAnnotationsTestsWithSearchSession:(id)session
{
  sessionCopy = session;
  searchInfo = [sessionCopy searchInfo];
  results = [searchInfo results];
  v7 = [results count];

  searchInfo2 = [sessionCopy searchInfo];

  directionIntent = [searchInfo2 directionIntent];

  if (directionIntent)
  {

    [(MapsAppTestSearch *)self continueDirectionIntentTest];
  }

  else if (v7)
  {
    +[NSNotificationCenter defaultCenter];
    if (v7 == 1)
      v10 = {;
      [v10 addObserver:self selector:"annotationPinDroppedForAResult:" name:@"MapsPinsDroppedForSearchResultsNotification" object:0];

      v11 = @"annotationsDroppedAndSelected";
    }

    else
      v12 = {;
      [v12 addObserver:self selector:"annotationPinDroppedForResults:" name:@"MapsPinsDroppedForSearchResultsNotification" object:0];

      v11 = @"annotationsDropped";
    }

    [(MapsAppTestSearch *)self startedSubTest:v11];
  }

  else
  {
    if (self->_isNearbyTest)
    {
      [(MapsAppTestSearch *)self finishedSubTest:@"nearby"];
    }

    [(MapsAppTest *)self finishedTest];
  }
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  v10 = resultsCopy;
  if (!self->_isNearbyTest)
  {
    v5 = +[GEONotificationPreferenceManager sharedManager];
    [v5 setEnabled:0 forSubTestWithName:@"GEOPPTTest_PlaceRequestTicket_PlaceDataRequest"];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"GEOPPTTest_PlaceRequestTicket_PlaceDataRequestBEGIN" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:@"GEOPPTTest_PlaceRequestTicket_PlaceDataRequestEND" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

    resultsCopy = v10;
  }

  object = [resultsCopy object];
  if (object)
  {
    if (!self->_isNearbyTest)
    {
      [(MapsAppTestSearch *)self finishedSubTest:@"searchResultReceived"];
    }

    [(MapsAppTestSearch *)self continueToAnnotationsTestsWithSearchSession:object];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)searchRequestSent:(id)sent
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  [(MapsAppTestSearch *)self finishedSubTest:@"searchRequestSent"];
  [(MapsAppTestSearch *)self startedSubTest:@"searchResultReceived"];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"searchSessionDidChangeSearchResults:" name:@"SearchSessionDidChangeSearchResultsNotification" object:0];
}

- (void)sendSearchRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"searchRequestSent:" name:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  v6 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v6 setSearchString:self->_query];
  [(MapsAppTestSearch *)self startedSubTest:@"searchRequestSent"];
  v4 = self->_directionIntentTestType - 1;
  if (v4 <= 2)
  {
    [(MapsAppTestSearch *)self startedSubTest:*(&off_10162A188 + v4)];
  }

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestSearchForFieldItem:v6];
}

- (void)didEndGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)request
{
  requestCopy = request;
  object = [requestCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = requestCopy;
  if (isKindOfClass)
  {
    object2 = [requestCopy object];
    data = [object2 data];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
    results = [(MapsAppTest *)self results];
    [results setObject:v9 forKeyedSubscript:@"extras:searchResponseSize:bytes"];

    if ([object2 hasDebugLatencyMs])
    {
      *&v11 = [object2 debugLatencyMs] * 0.001;
      v12 = [NSNumber numberWithFloat:v11];
      results2 = [(MapsAppTest *)self results];
      [results2 setObject:v12 forKeyedSubscript:@"extras:searchResponseServerLatency:time"];
    }

    v6 = requestCopy;
  }
}

- (void)willBeginGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)request
{
  requestCopy = request;
  object = [requestCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [requestCopy object];
    data = [object2 data];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
    results = [(MapsAppTest *)self results];
    [results setObject:v8 forKeyedSubscript:@"extras:searchRequestSize:bytes"];
  }
}

- (void)searchAutoCompleteTestDidFinish
{
  if (self->_searchTestACMode != 2)
  {
    [(MapsAppTestSearch *)self finishedSubTest:@"autoComplete"];
  }

  if (self->_isShowcaseTest)
  {
    if (self->_selectACSuggestionMatchingAddress)
    {
      testCoordinator = [(MapsAppTest *)self testCoordinator];
      [testCoordinator pptSelectACSuggestionMatchingAddress:self->_selectACSuggestionMatchingAddress];

      [(MapsAppTestSearch *)self startedSubTest:@"displayPlacecard"];
      [(MapsAppTestSearch *)self startedSubTest:@"fetchPlaceEnrichment"];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1007BA8B4;
      v10[3] = &unk_101650D20;
      v10[4] = self;
      [PPTNotificationCenter addOnceObserverForName:MKPlaceViewControllerDidShowNotification object:0 usingBlock:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1007BA8C4;
      v9[3] = &unk_101650D20;
      v9[4] = self;
      [PPTNotificationCenter addOnceObserverForName:MUPlaceEnrichmentSectionControllerDidFetchEnrichmentNotification object:0 usingBlock:v9];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1007BA8D4;
      v8[3] = &unk_101650D20;
      v8[4] = self;
      [PPTNotificationCenter addOnceObserverForName:MUPlaceEnrichmentSectionControllerDidStartLoadingNotification object:0 usingBlock:v8];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1007BA8E4;
      v7[3] = &unk_101650D20;
      v7[4] = self;
      [PPTNotificationCenter addOnceObserverForName:MUPlaceEnrichmentSectionControllerDidFinishLoadingNotification object:0 usingBlock:v7];
    }

    else
    {
      v5 = [NSString stringWithFormat:@"Does not know which AC suggestions to select. Add selectACSuggestionMatchingAddress key value in the testDefinitions.plist."];
      [(MapsAppTest *)self failedTestWithReason:v5];
    }
  }

  else
  {
    testCoordinator2 = [(MapsAppTest *)self testCoordinator];
    [testCoordinator2 pptTestSearchEndEditing];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BA928;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)searchAutoCompleteTestReceiveResponse:(id)response
{
  responseCopy = response;
  firstObject = [(NSMutableArray *)self->_autoCompleteQueries firstObject];
  userInfo = [responseCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"SearchDataProviderQueryKey"];

  userInfo2 = [responseCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"SearchDataProviderQueryResultGroupsKey"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        items = [*(*(&v21 + 1) + 8 * v14) items];
        v12 += [items count];

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
    LODWORD(v11) = v12 != 0;
  }

  if ([v7 isEqualToString:firstObject])
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = [firstObject length];
    if (v17 < 6 || self->_directionIntentTestType)
    {
      v18 = [NSString stringWithFormat:@"autoCompleteSubTest - Letter number %lu", v17];
      [(MapsAppTestSearch *)self finishedSubTest:v18];
    }

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 removeObserver:self name:@"SearchDataProviderDidChangeDataNotification" object:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BAC7C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)searchAutoCompleteTestSendQuery
{
  firstObject = [(NSMutableArray *)self->_autoCompleteQueries firstObject];
  if (!firstObject)
  {
    [(MapsAppTestSearch *)self searchAutoCompleteTestDidFinish];
  }

  v4 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v4 setSearchString:firstObject];
  v5 = [firstObject length];
  v6 = v5;
  if (self->_searchTestACMode != 1 || v5 == self->_maxACSearchQueryLength)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"searchAutoCompleteTestReceiveResponse:" name:@"SearchDataProviderDidChangeDataNotification" object:0];

    if (v6 < 6 || self->_directionIntentTestType)
    {
      v8 = [NSString stringWithFormat:@"autoCompleteSubTest - Letter number %lu", v6];
      [(MapsAppTestSearch *)self startedSubTest:v8];

      v9 = [NSString stringWithFormat:@"collecting handles or contacts - Letter number %lu", v6];
      [(MapsAppTestSearch *)self startedSubTest:v9];
    }
  }

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestAutocompleteSearchForFieldItem:v4];

  if ([(NSMutableArray *)self->_autoCompleteQueries count]&& self->_searchTestACMode == 1 && v6 != self->_maxACSearchQueryLength)
  {
    v11 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BAED8;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v11, &_dispatch_main_q, block);
  }
}

- (void)searchAutoCompleteTestReceiveHandlesOrAddresses:(id)addresses
{
  firstObject = [(NSMutableArray *)self->_autoCompleteQueries firstObject];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"collecting handles or contacts - Letter number %lu", [firstObject length]);
  [(MapsAppTestSearch *)self finishedSubTest:v4];
}

- (void)startSearchAutoCompleteTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"willBeginMSGPPTTest_Insights_ACRanking_MapItems:" name:@"MSGPPTTest_Insights_ACRanking_MapItemsBEGIN" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didEndMSGPPTTest_Insights_ACRanking_MapItems:" name:@"MSGPPTTest_Insights_ACRanking_MapItemsEND" object:0];

  v5 = +[GEONotificationPreferenceManager sharedManager];
  [v5 setEnabled:1 forSubTestWithName:@"MSGPPTTest_Insights_ACRanking_MapItems"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"willBeginMSGPPTTest_Insights_ACRanking_Contacts:" name:@"MSGPPTTest_Insights_ACRanking_ContactsBEGIN" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"didEndMSGPPTTest_Insights_ACRanking_Contacts:" name:@"MSGPPTTest_Insights_ACRanking_ContactsEND" object:0];

  v8 = +[GEONotificationPreferenceManager sharedManager];
  [v8 setEnabled:1 forSubTestWithName:@"MSGPPTTest_Insights_ACRanking_Contacts"];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"willBeginMSGPPTTest_Insights_ACRanking_Tourist:" name:@"MSGPPTTest_Insights_ACRanking_TouristBEGIN" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"didEndMSGPPTTest_Insights_ACRanking_Tourist:" name:@"MSGPPTTest_Insights_ACRanking_TouristEND" object:0];

  v11 = +[GEONotificationPreferenceManager sharedManager];
  [v11 setEnabled:1 forSubTestWithName:@"MSGPPTTest_Insights_ACRanking_Tourist"];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"searchAutoCompleteTestReceiveHandlesOrAddresses:" name:@"SearchDidFinishFetchingFindMyHandlesOrAddressBookAddresses" object:0];

  if (self->_searchTestACMode != 2)
  {
    [(MapsAppTestSearch *)self startedSubTest:@"autoComplete"];
  }

  [(MapsAppTestSearch *)self searchAutoCompleteTestSendQuery];
}

- (void)startScrollNearbyTestCategory
{
  [(MapsAppTestSearch *)self startedSubTest:@"nearby search results list - scroll"];
  objc_initWeak(&location, self);
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestScrollView = [testCoordinator pptTestScrollView];

  RPTContentSizeInDirection();
  v6 = v5;
  RPTGetBoundsForView();
  v11 = [[RPTScrollViewTestParameters alloc] initWithTestName:@"nearby search results list - scroll" scrollBounds:1 scrollContentLength:&stru_10162A120 direction:v7 completionHandler:{v8, v9, v10, v6}];
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007BB408;
  v14[3] = &unk_101661340;
  objc_copyWeak(&v16, &location);
  v15 = @"nearby search results list - scroll";
  v13 = [RPTGroupScrollTestParameters newWithTestName:@"nearby search results list - scroll" parameters:v12 completionHandler:v14];

  [RPTTestRunner runTestWithParameters:v13];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)endNearbyTestCategory:(id)category
{
  categoryCopy = category;
  [(MapsAppTestSearch *)self finishedSubTest:@"nearby - category"];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  object = [categoryCopy object];

  if (object)
  {
    [(MapsAppTestSearch *)self continueToAnnotationsTestsWithSearchSession:object];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)startNearbyTestCategory
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"endNearbyTestCategory:" name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  [(MapsAppTestSearch *)self startedSubTest:@"nearby - category"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestSearchNearbyCategoryWithIndex:self->_nearbyCategoryIndex];
}

- (void)startNearbyTest
{
  [(MapsAppTestSearch *)self startedSubTest:@"nearby"];

  [(MapsAppTestSearch *)self startNearbyTestCategory];
}

- (void)startAutocompleteOrNearbySearchTest
{
  if (self->_isNearbyTest)
  {
    [(MapsAppTestSearch *)self startNearbyTest];
  }

  else
  {
    [(MapsAppTestSearch *)self startSearchAutoCompleteTest];
  }
}

- (void)searchKeyboardDidHide
{
  if (self->_isPrewarmingKeyboard)
  {
    [(MapsAppTestSearch *)self _prewarmingKeyboardCompleted];
  }
}

- (void)searchKeyboardDidShow
{
  if (self->_isPrewarmingKeyboard)
  {
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator pptTestSearchCancel];
  }

  else
  {
    [(MapsAppTestSearch *)self finishedSubTest:@"showSearchKeyboard"];
    [(MapsAppTestSearch *)self finishedSubTest:@"enterSearchMode"];

    [(MapsAppTestSearch *)self startAutocompleteOrNearbySearchTest];
  }
}

- (void)searchKeyboardWillShow
{
  if (!self->_isPrewarmingKeyboard)
  {
    [(MapsAppTestSearch *)self startedSubTest:@"showSearchKeyboard"];
  }
}

- (void)searchUILayoutDone
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"PPTTestTrayLayoutDidUpdateNotification" object:0];

  [(MapsAppTestSearch *)self finishedSubTest:@"presentSearchUI"];
}

- (void)didDisplayCarplayBrowseCategories
{
  options = [(MapsAppTest *)self options];
  v4 = [options objectForKeyedSubscript:@"testName"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestScrollView = [testCoordinator pptTestScrollView];

  if (pptTestScrollView)
  {
    if ([v4 isEqualToString:@"searchScrollBrowseCategoryResultsInCarPlay"])
    {
      [(MapsAppTestSearch *)self finishedSubTest:@"enterSearchMode"];
      objc_initWeak(&location, self);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1007BBA98;
      v15[3] = &unk_10162A0D8;
      v15[4] = self;
      v16 = @"scrollBrowseCategoryResultsInCarPlay";
      v17 = pptTestScrollView;
      objc_copyWeak(&v18, &location);
      [PPTNotificationCenter addOnceObserverForName:@"PPTTest_CarSearchResultsModeController_DidDisplaySearchResults" object:0 usingBlock:v15];
      testCoordinator2 = [(MapsAppTest *)self testCoordinator];
      [testCoordinator2 pptTestSearchNearbyCategoryWithIndex:0];

      objc_destroyWeak(&v18);
    }

    else
    {
      v8 = [v4 isEqualToString:@"searchEmbarcadero"];
      [(MapsAppTestSearch *)self finishedSubTest:@"enterSearchMode"];
      if (!v8)
      {
        [(MapsAppTestSearch *)self startedSubTest:@"scrollBrowseCategoriesInCarPlay"];
        [pptTestScrollView contentSize];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1007BBC20;
        v11[3] = &unk_10162A100;
        v11[4] = self;
        v12 = @"scrollBrowseCategoriesInCarPlay";
        [pptTestScrollView _performScrollTest:0 iterations:10 delta:20 length:v10 scrollAxis:2 extraResultsBlock:0 completionBlock:v11];

        goto LABEL_9;
      }

      [(MapsAppTestSearch *)self startedSubTest:@"displayCarPlayKeyboard"];
      objc_initWeak(&location, self);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007BBBB8;
      v13[3] = &unk_10165FBE8;
      objc_copyWeak(&v14, &location);
      [PPTNotificationCenter addOnceObserverForName:@"PPTTest_CarKeyboardModeController_DidDisplayKeyboard" object:0 usingBlock:v13];
      testCoordinator3 = [(MapsAppTest *)self testCoordinator];
      [testCoordinator3 pptSelectKeyboardInteractionModel];

      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }

LABEL_9:
}

- (void)_startPrewarmingKeyboard
{
  self->_isPrewarmingKeyboard = 1;
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterSearchMode];
}

- (void)_runTestNow
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"willBeginMSGPPTTest_Insights_ACRanking_PortraitCall:" name:@"MSGPPTTest_Insights_ACRanking_PortraitCallBEGIN" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didEndMSGPPTTest_Insights_ACRanking_PortraitCall:" name:@"MSGPPTTest_Insights_ACRanking_PortraitCallEND" object:0];

  v5 = +[GEONotificationPreferenceManager sharedManager];
  [v5 setEnabled:1 forSubTestWithName:@"MSGPPTTest_Insights_ACRanking_PortraitCall"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"willBeginMSGPPTTest_Insights_ACRanking_RoutineCall:" name:@"MSGPPTTest_Insights_ACRanking_RoutineCallBEGIN" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"didEndMSGPPTTest_Insights_ACRanking_RoutineCall:" name:@"MSGPPTTest_Insights_ACRanking_RoutineCallEND" object:0];

  v8 = +[GEONotificationPreferenceManager sharedManager];
  [v8 setEnabled:1 forSubTestWithName:@"MSGPPTTest_Insights_ACRanking_RoutineCall"];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"willBeginMSGPPTTest_Insights_ACRanking_PreLoad:" name:@"MSGPPTTest_Insights_ACRanking_PreLoadBEGIN" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"didEndMSGPPTTest_Insights_ACRanking_PreLoad:" name:@"MSGPPTTest_Insights_ACRanking_PreLoadEND" object:0];

  v11 = +[GEONotificationPreferenceManager sharedManager];
  [v11 setEnabled:1 forSubTestWithName:@"MSGPPTTest_Insights_ACRanking_PreLoad"];

  options = [(MapsAppTest *)self options];
  v13 = [options objectForKeyedSubscript:@"testName"];
  if ([v13 containsString:@"Nearby"])
  {
    self->_isNearbyTest = 1;
    v14 = [options objectForKeyedSubscript:@"categoryIndex"];
    v15 = v14;
    if (v14)
    {
      integerValue = [v14 integerValue];
    }

    else
    {
      integerValue = arc4random() & 7;
    }

    self->_nearbyCategoryIndex = integerValue;
  }

  else
  {
    self->_searchTestACMode = [options _mapstest_searchTestACMode];
    self->_directionIntentTestType = [options _mapstest_directionIntentType];
    v15 = [options objectForKeyedSubscript:@"searchQuery"];
    v17 = [options objectForKeyedSubscript:@"searchQueryPrefix"];
    v18 = [v17 length];
    v19 = [v15 length];
    v20 = &v18[v19];
    v21 = 5;
    if (&v18[v19] < 5)
    {
      v21 = &v18[v19];
    }

    if (!self->_directionIntentTestType)
    {
      v20 = v21;
    }

    self->_maxACSearchQueryLength = v20;
    if (self->_searchTestACMode != 2)
    {
      v22 = objc_alloc_init(NSMutableArray);
      if ([v15 length])
      {
        v23 = 0;
        do
        {
          v24 = [v15 substringToIndex:++v23];
          if ([v17 length])
          {
            v25 = [v17 stringByAppendingString:v24];

            v24 = v25;
          }

          [(NSMutableArray *)v22 addObject:v24];
        }

        while (v23 < [v15 length]);
      }

      autoCompleteQueries = self->_autoCompleteQueries;
      self->_autoCompleteQueries = v22;
    }

    if ([v17 length])
    {
      v27 = [v17 stringByAppendingString:v15];
    }

    else
    {
      v27 = v15;
    }

    query = self->_query;
    self->_query = v27;
  }

  v29 = [options objectForKeyedSubscript:@"isShowcase"];
  bOOLValue = [v29 BOOLValue];

  if (bOOLValue)
  {
    self->_isShowcaseTest = 1;
    v31 = [options objectForKeyedSubscript:@"selectACSuggestionMatchingAddress"];
    selectACSuggestionMatchingAddress = self->_selectACSuggestionMatchingAddress;
    self->_selectACSuggestionMatchingAddress = v31;
  }

  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    [(MapsAppTestSearch *)self startSearchAutoCompleteTest];
  }

  else
  {
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator pptTestResetForLaunchURL];

    _mapstest_mapType = [options _mapstest_mapType];
    _mapstest_mapRegion = [options _mapstest_mapRegion];
    [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView setMapRegion:_mapstest_mapRegion pitch:0.0 yaw:0.0];

    objc_initWeak(&location, self);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1007BC280;
    v37[3] = &unk_101661B98;
    objc_copyWeak(&v38, &location);
    [(MapsAppTest *)self addFullyDrawnCallback:v37];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }
}

- (void)runScrollBrowseCategoriesInCarPlay
{
  [(MapsAppTest *)self startedTest];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007BC4EC;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(MapsAppTestSearch *)self _runTestNow];
  }

  else
  {
    if ([(MapsAppTest *)self isRunningOnCarPlay])
    {
      options = [(MapsAppTest *)self options];
      v6 = [options objectForKeyedSubscript:@"testName"];
      if (([v6 isEqualToString:@"searchScrollBrowseCategoriesInCarPlay"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"searchScrollBrowseCategoryResultsInCarPlay") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"searchEmbarcadero"))
      {
        [(MapsAppTestSearch *)self runScrollBrowseCategoriesInCarPlay];
      }
    }

    else
    {
      options = +[NSNotificationCenter defaultCenter];
      [options addObserver:self selector:"searchKeyboardWillShow" name:UIKeyboardWillShowNotification object:0];
      [options addObserver:self selector:"searchKeyboardDidShow" name:UIKeyboardDidShowNotification object:0];
      [options addObserver:self selector:"searchKeyboardDidHide" name:UIKeyboardDidHideNotification object:0];
      [(MapsAppTestSearch *)self _startPrewarmingKeyboard];
    }
  }

  return 1;
}

- (void)performOnMainQueue:(id)queue
{
  queueCopy = queue;
  if (+[NSThread isMainThread])
  {
    queueCopy[2](queueCopy);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BC858;
    block[3] = &unk_101661760;
    v5 = queueCopy;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)startedSubTest:(id)test withMetrics:(id)metrics
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007BC928;
  v8[3] = &unk_101661A40;
  testCopy = test;
  metricsCopy = metrics;
  selfCopy = self;
  v6 = metricsCopy;
  v7 = testCopy;
  [(MapsAppTestSearch *)self performOnMainQueue:v8];
}

- (void)finishedSubTest:(id)test
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007BC9FC;
  v5[3] = &unk_101661A90;
  testCopy = test;
  selfCopy = self;
  v4 = testCopy;
  [(MapsAppTestSearch *)self performOnMainQueue:v5];
}

- (void)startedSubTest:(id)test
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007BCACC;
  v5[3] = &unk_101661A90;
  testCopy = test;
  selfCopy = self;
  v4 = testCopy;
  [(MapsAppTestSearch *)self performOnMainQueue:v5];
}

- (void)didEndMSGPPTTest_Insights_ACRanking_PreLoad:(id)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCB7C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_PreLoad:(id)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCC00;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_RoutineCall:(id)call
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCC8C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_RoutineCall:(id)call
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCD10;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_PortraitCall:(id)call
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCD9C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_PortraitCall:(id)call
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCE20;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_Tourist:(id)tourist
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCEAC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_Tourist:(id)tourist
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCF30;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_Contacts:(id)contacts
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCFBC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_Contacts:(id)contacts
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD040;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_MapItems:(id)items
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD0CC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_MapItems:(id)items
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD150;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end