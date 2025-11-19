@interface MapsAppTestSearch
- (BOOL)runTest;
- (void)_runTestNow;
- (void)_startPrewarmingKeyboard;
- (void)annotationPinDroppedForAResult:(id)a3;
- (void)annotationPinDroppedForResults:(id)a3;
- (void)continueDirectionIntentTest;
- (void)continueToAnnotationsTestsWithSearchSession:(id)a3;
- (void)continueToNearbyScrollTests;
- (void)didDisplayCarplayBrowseCategories;
- (void)didEndGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)a3;
- (void)didEndMSGPPTTest_Insights_ACRanking_Contacts:(id)a3;
- (void)didEndMSGPPTTest_Insights_ACRanking_MapItems:(id)a3;
- (void)didEndMSGPPTTest_Insights_ACRanking_PortraitCall:(id)a3;
- (void)didEndMSGPPTTest_Insights_ACRanking_PreLoad:(id)a3;
- (void)didEndMSGPPTTest_Insights_ACRanking_RoutineCall:(id)a3;
- (void)didEndMSGPPTTest_Insights_ACRanking_Tourist:(id)a3;
- (void)endNearbyTestCategory:(id)a3;
- (void)finishSearchTest:(id)a3;
- (void)finishedSubTest:(id)a3;
- (void)performOnMainQueue:(id)a3;
- (void)refreshSearchAnnotationPinDroppedForResults:(id)a3;
- (void)refreshSearchRequestSent:(id)a3;
- (void)refreshSearchSessionDidChangeSearchResults:(id)a3;
- (void)runScrollBrowseCategoriesInCarPlay;
- (void)searchAutoCompleteTestDidFinish;
- (void)searchAutoCompleteTestReceiveHandlesOrAddresses:(id)a3;
- (void)searchAutoCompleteTestReceiveResponse:(id)a3;
- (void)searchAutoCompleteTestSendQuery;
- (void)searchKeyboardDidHide;
- (void)searchKeyboardDidShow;
- (void)searchKeyboardWillShow;
- (void)searchRequestSent:(id)a3;
- (void)searchSessionDidChangeSearchResults:(id)a3;
- (void)searchUILayoutDone;
- (void)sendSearchRequest;
- (void)startAutocompleteOrNearbySearchTest;
- (void)startNearbyTest;
- (void)startNearbyTestCategory;
- (void)startRefreshSearchTestIfNeeded;
- (void)startScrollNearbyTestCategory;
- (void)startSearchAutoCompleteTest;
- (void)startedSubTest:(id)a3;
- (void)startedSubTest:(id)a3 withMetrics:(id)a4;
- (void)willBeginGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)a3;
- (void)willBeginMSGPPTTest_Insights_ACRanking_Contacts:(id)a3;
- (void)willBeginMSGPPTTest_Insights_ACRanking_MapItems:(id)a3;
- (void)willBeginMSGPPTTest_Insights_ACRanking_PortraitCall:(id)a3;
- (void)willBeginMSGPPTTest_Insights_ACRanking_PreLoad:(id)a3;
- (void)willBeginMSGPPTTest_Insights_ACRanking_RoutineCall:(id)a3;
- (void)willBeginMSGPPTTest_Insights_ACRanking_Tourist:(id)a3;
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
    v14 = self;
    v3 = @"RouteSearchViewControllerDidAppear";
    v4 = &v10;
  }

  else
  {
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_1007B92BC;
    v8 = &unk_101650D20;
    v9 = self;
    v3 = @"MapsRoutePlanningShowingRoutesNotification";
    v4 = &v5;
  }

  [PPTNotificationCenter addOnceObserverForName:v3 object:0 usingBlock:v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14];
}

- (void)refreshSearchAnnotationPinDroppedForResults:(id)a3
{
  v4 = a3;
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

- (void)refreshSearchSessionDidChangeSearchResults:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  v10 = [v4 object];

  if (v10)
  {
    [(MapsAppTestSearch *)self finishedSubTest:@"refreshSearch - searchResultReceived"];
    v6 = [v10 searchInfo];
    v7 = [v6 results];
    v8 = [v7 count];

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

- (void)refreshSearchRequestSent:(id)a3
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
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 valueForKey:@"refreshWestLng"];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v3 valueForKey:@"refreshEastLng"];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v3 valueForKey:@"refreshSouthLat"];
  if (!v8)
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v3 valueForKey:@"refreshNorthLat"];

  if (!v10)
  {
LABEL_8:
    [(MapsAppTest *)self finishedTest];
    goto LABEL_9;
  }

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  v12 = objc_opt_new();
  v13 = [v3 valueForKey:@"refreshWestLng"];
  [v13 doubleValue];
  [v12 setWestLng:?];

  v14 = [v3 valueForKey:@"refreshEastLng"];
  [v14 doubleValue];
  [v12 setEastLng:?];

  v15 = [v3 valueForKey:@"refreshSouthLat"];
  [v15 doubleValue];
  [v12 setSouthLat:?];

  v16 = [v3 valueForKey:@"refreshNorthLat"];
  [v16 doubleValue];
  [v12 setNorthLat:?];

  v17 = [(MapsAppTest *)self mainVKMapView];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1007B98C4;
  v18[3] = &unk_101661738;
  v18[4] = self;
  [v17 setMapRegion:v12 pitch:v18 yaw:0.0 duration:0.0 completion:2.0];

LABEL_9:
}

- (void)finishSearchTest:(id)a3
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
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 objectForKeyedSubscript:@"testName"];

  v5 = dispatch_time(0, 1000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007B9B0C;
  v7[3] = &unk_101661A90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)annotationPinDroppedForResults:(id)a3
{
  v4 = a3;
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

- (void)annotationPinDroppedForAResult:(id)a3
{
  v4 = a3;
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

- (void)continueToAnnotationsTestsWithSearchSession:(id)a3
{
  v4 = a3;
  v5 = [v4 searchInfo];
  v6 = [v5 results];
  v7 = [v6 count];

  v8 = [v4 searchInfo];

  v9 = [v8 directionIntent];

  if (v9)
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

- (void)searchSessionDidChangeSearchResults:(id)a3
{
  v4 = a3;
  v10 = v4;
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

    v4 = v10;
  }

  v9 = [v4 object];
  if (v9)
  {
    if (!self->_isNearbyTest)
    {
      [(MapsAppTestSearch *)self finishedSubTest:@"searchResultReceived"];
    }

    [(MapsAppTestSearch *)self continueToAnnotationsTestsWithSearchSession:v9];
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)searchRequestSent:(id)a3
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

  v5 = [(MapsAppTest *)self testCoordinator];
  [v5 pptTestSearchForFieldItem:v6];
}

- (void)didEndGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v14;
  if (isKindOfClass)
  {
    v7 = [v14 object];
    v8 = [v7 data];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 length]);
    v10 = [(MapsAppTest *)self results];
    [v10 setObject:v9 forKeyedSubscript:@"extras:searchResponseSize:bytes"];

    if ([v7 hasDebugLatencyMs])
    {
      *&v11 = [v7 debugLatencyMs] * 0.001;
      v12 = [NSNumber numberWithFloat:v11];
      v13 = [(MapsAppTest *)self results];
      [v13 setObject:v12 forKeyedSubscript:@"extras:searchResponseServerLatency:time"];
    }

    v6 = v14;
  }
}

- (void)willBeginGEOPPTTest_PlaceRequestTicket_PlaceDataRequest:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v10 object];
    v7 = [v6 data];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 length]);
    v9 = [(MapsAppTest *)self results];
    [v9 setObject:v8 forKeyedSubscript:@"extras:searchRequestSize:bytes"];
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
      v3 = [(MapsAppTest *)self testCoordinator];
      [v3 pptSelectACSuggestionMatchingAddress:self->_selectACSuggestionMatchingAddress];

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
    v4 = [(MapsAppTest *)self testCoordinator];
    [v4 pptTestSearchEndEditing];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BA928;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)searchAutoCompleteTestReceiveResponse:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_autoCompleteQueries firstObject];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"SearchDataProviderQueryKey"];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"SearchDataProviderQueryResultGroupsKey"];

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

        v15 = [*(*(&v21 + 1) + 8 * v14) items];
        v12 += [v15 count];

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
    LODWORD(v11) = v12 != 0;
  }

  if ([v7 isEqualToString:v5])
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = [v5 length];
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
  v3 = [(NSMutableArray *)self->_autoCompleteQueries firstObject];
  if (!v3)
  {
    [(MapsAppTestSearch *)self searchAutoCompleteTestDidFinish];
  }

  v4 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v4 setSearchString:v3];
  v5 = [v3 length];
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

  v10 = [(MapsAppTest *)self testCoordinator];
  [v10 pptTestAutocompleteSearchForFieldItem:v4];

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

- (void)searchAutoCompleteTestReceiveHandlesOrAddresses:(id)a3
{
  v5 = [(NSMutableArray *)self->_autoCompleteQueries firstObject];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"collecting handles or contacts - Letter number %lu", [v5 length]);
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
  v3 = [(MapsAppTest *)self testCoordinator];
  v4 = [v3 pptTestScrollView];

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

- (void)endNearbyTestCategory:(id)a3
{
  v4 = a3;
  [(MapsAppTestSearch *)self finishedSubTest:@"nearby - category"];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  v6 = [v4 object];

  if (v6)
  {
    [(MapsAppTestSearch *)self continueToAnnotationsTestsWithSearchSession:v6];
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
  v4 = [(MapsAppTest *)self testCoordinator];
  [v4 pptTestSearchNearbyCategoryWithIndex:self->_nearbyCategoryIndex];
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
    v3 = [(MapsAppTest *)self testCoordinator];
    [v3 pptTestSearchCancel];
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
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  v5 = [(MapsAppTest *)self testCoordinator];
  v6 = [v5 pptTestScrollView];

  if (v6)
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
      v17 = v6;
      objc_copyWeak(&v18, &location);
      [PPTNotificationCenter addOnceObserverForName:@"PPTTest_CarSearchResultsModeController_DidDisplaySearchResults" object:0 usingBlock:v15];
      v7 = [(MapsAppTest *)self testCoordinator];
      [v7 pptTestSearchNearbyCategoryWithIndex:0];

      objc_destroyWeak(&v18);
    }

    else
    {
      v8 = [v4 isEqualToString:@"searchEmbarcadero"];
      [(MapsAppTestSearch *)self finishedSubTest:@"enterSearchMode"];
      if (!v8)
      {
        [(MapsAppTestSearch *)self startedSubTest:@"scrollBrowseCategoriesInCarPlay"];
        [v6 contentSize];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1007BBC20;
        v11[3] = &unk_10162A100;
        v11[4] = self;
        v12 = @"scrollBrowseCategoriesInCarPlay";
        [v6 _performScrollTest:0 iterations:10 delta:20 length:v10 scrollAxis:2 extraResultsBlock:0 completionBlock:v11];

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
      v9 = [(MapsAppTest *)self testCoordinator];
      [v9 pptSelectKeyboardInteractionModel];

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
  v2 = [(MapsAppTest *)self testCoordinator];
  [v2 pptTestEnterSearchMode];
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

  v12 = [(MapsAppTest *)self options];
  v13 = [v12 objectForKeyedSubscript:@"testName"];
  if ([v13 containsString:@"Nearby"])
  {
    self->_isNearbyTest = 1;
    v14 = [v12 objectForKeyedSubscript:@"categoryIndex"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 integerValue];
    }

    else
    {
      v16 = arc4random() & 7;
    }

    self->_nearbyCategoryIndex = v16;
  }

  else
  {
    self->_searchTestACMode = [v12 _mapstest_searchTestACMode];
    self->_directionIntentTestType = [v12 _mapstest_directionIntentType];
    v15 = [v12 objectForKeyedSubscript:@"searchQuery"];
    v17 = [v12 objectForKeyedSubscript:@"searchQueryPrefix"];
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

  v29 = [v12 objectForKeyedSubscript:@"isShowcase"];
  v30 = [v29 BOOLValue];

  if (v30)
  {
    self->_isShowcaseTest = 1;
    v31 = [v12 objectForKeyedSubscript:@"selectACSuggestionMatchingAddress"];
    selectACSuggestionMatchingAddress = self->_selectACSuggestionMatchingAddress;
    self->_selectACSuggestionMatchingAddress = v31;
  }

  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    [(MapsAppTestSearch *)self startSearchAutoCompleteTest];
  }

  else
  {
    v33 = [(MapsAppTest *)self testCoordinator];
    [v33 pptTestResetForLaunchURL];

    v34 = [v12 _mapstest_mapType];
    v35 = [v12 _mapstest_mapRegion];
    [(MapsAppTest *)self switchToMapType:v34];
    v36 = [(MapsAppTest *)self mainVKMapView];
    [v36 setMapRegion:v35 pitch:0.0 yaw:0.0];

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
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    [(MapsAppTestSearch *)self _runTestNow];
  }

  else
  {
    if ([(MapsAppTest *)self isRunningOnCarPlay])
    {
      v5 = [(MapsAppTest *)self options];
      v6 = [v5 objectForKeyedSubscript:@"testName"];
      if (([v6 isEqualToString:@"searchScrollBrowseCategoriesInCarPlay"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"searchScrollBrowseCategoryResultsInCarPlay") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"searchEmbarcadero"))
      {
        [(MapsAppTestSearch *)self runScrollBrowseCategoriesInCarPlay];
      }
    }

    else
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:self selector:"searchKeyboardWillShow" name:UIKeyboardWillShowNotification object:0];
      [v5 addObserver:self selector:"searchKeyboardDidShow" name:UIKeyboardDidShowNotification object:0];
      [v5 addObserver:self selector:"searchKeyboardDidHide" name:UIKeyboardDidHideNotification object:0];
      [(MapsAppTestSearch *)self _startPrewarmingKeyboard];
    }
  }

  return 1;
}

- (void)performOnMainQueue:(id)a3
{
  v3 = a3;
  if (+[NSThread isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007BC858;
    block[3] = &unk_101661760;
    v5 = v3;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

- (void)startedSubTest:(id)a3 withMetrics:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007BC928;
  v8[3] = &unk_101661A40;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  [(MapsAppTestSearch *)self performOnMainQueue:v8];
}

- (void)finishedSubTest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007BC9FC;
  v5[3] = &unk_101661A90;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MapsAppTestSearch *)self performOnMainQueue:v5];
}

- (void)startedSubTest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007BCACC;
  v5[3] = &unk_101661A90;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MapsAppTestSearch *)self performOnMainQueue:v5];
}

- (void)didEndMSGPPTTest_Insights_ACRanking_PreLoad:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCB7C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_PreLoad:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCC00;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_RoutineCall:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCC8C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_RoutineCall:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCD10;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_PortraitCall:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCD9C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_PortraitCall:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCE20;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_Tourist:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCEAC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_Tourist:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCF30;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_Contacts:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BCFBC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_Contacts:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD040;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMSGPPTTest_Insights_ACRanking_MapItems:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD0CC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMSGPPTTest_Insights_ACRanking_MapItems:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BD150;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end