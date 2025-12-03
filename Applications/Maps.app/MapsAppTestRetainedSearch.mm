@interface MapsAppTestRetainedSearch
- (BOOL)runTest;
- (void)didPresentPlaceCard:(id)card;
- (void)returnToRetainedAutoComplete;
- (void)returnToSearchResults;
- (void)searchAutoCompleteTestReceiveResponse:(id)response;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)startAutoCompleteOrSearchTest;
- (void)startAutoCompleteTest;
- (void)startSearchTest;
@end

@implementation MapsAppTestRetainedSearch

- (void)returnToSearchResults
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007BDC08;
  v4[3] = &unk_101650D20;
  v4[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidDismissNotification" object:0 usingBlock:v4];
  [(MapsAppTest *)self startedSubTest:@"returnToSearchResults"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestDismissTrayAnimated:1 assertTrayType:1];
}

- (void)returnToRetainedAutoComplete
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007BDE18;
  v10[3] = &unk_10162A168;
  v10[4] = self;
  v4 = v3;
  v11 = v4;
  [PPTNotificationCenter addOnceObserverForName:@"SearchDataProviderDidChangeDataNotification" object:0 usingBlock:v10];
  dispatch_group_enter(v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007BDE5C;
  v8[3] = &unk_101650D20;
  v9 = v4;
  v5 = v4;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidDismissNotification" object:0 usingBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007BDE64;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  dispatch_group_notify(v5, &_dispatch_main_q, v7);
  [(MapsAppTest *)self startedSubTest:@"returnToAutoComplete - suggestions received"];
  [(MapsAppTest *)self startedSubTest:@"returnToAutoComplete"];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestDismissTrayAnimated:1 assertTrayType:1];
}

- (void)didPresentPlaceCard:(id)card
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MKPlaceViewControllerDidShowNotification object:0];

  v5 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007BDF68;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  object = [resultsCopy object];

  v6 = object;
  if (object)
  {
    searchResultIndex = self->_searchResultIndex;
    if ((searchResultIndex & 0x8000000000000000) == 0)
    {
      searchInfo = [object searchInfo];
      results = [searchInfo results];
      v10 = [results count];

      v6 = object;
      if (searchResultIndex < v10)
      {
        searchInfo2 = [object searchInfo];
        results2 = [searchInfo2 results];
        v13 = [results2 objectAtIndexedSubscript:self->_searchResultIndex];

        v14 = +[NSNotificationCenter defaultCenter];
        [v14 addObserver:self selector:"didPresentPlaceCard:" name:MKPlaceViewControllerDidShowNotification object:0];

        testCoordinator = [(MapsAppTest *)self testCoordinator];
        [testCoordinator pptTestPresentPlaceCardForSearchResult:v13 animated:1];

        v6 = object;
      }
    }
  }
}

- (void)startSearchTest
{
  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v5 setSearchString:self->_query];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"searchSessionDidChangeSearchResults:" name:@"SearchSessionDidChangeSearchResultsNotification" object:0];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestSearchForFieldItem:v5];
}

- (void)searchAutoCompleteTestReceiveResponse:(id)response
{
  responseCopy = response;
  userInfo = [responseCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"SearchDataProviderQueryKey"];

  userInfo2 = [responseCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"SearchDataProviderQueryResultGroupsKey"];

  if ([v6 isEqualToString:self->_query])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    testCoordinator2 = v8;
    v36 = [testCoordinator2 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v36)
    {
      v31 = v8;
      v32 = v6;
      v33 = responseCopy;
      obj = testCoordinator2;
      v10 = 0;
      v11 = 0;
      v35 = *v38;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          if (!v11)
          {
            v13 = 0;
            v14 = 0;
            v15 = *(*(&v37 + 1) + 8 * i);
            while (1)
            {
              items = [v15 items];
              v17 = [items count];

              if (v14 >= v17)
              {
                break;
              }

              items2 = [v15 items];
              v19 = [items2 objectAtIndexedSubscript:v14];
              autocompleteObject = [v19 autocompleteObject];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                items3 = [v15 items];
                v23 = [items3 objectAtIndexedSubscript:v14];
                autocompleteObject2 = [v23 autocompleteObject];

                mapItem = [autocompleteObject2 mapItem];
                v26 = mapItem;
                v11 = 0;
                if (mapItem)
                {
                  autocompleteResultIndex = self->_autocompleteResultIndex;
                  if ((autocompleteResultIndex & 0x8000000000000000) == 0 && v13 == autocompleteResultIndex)
                  {
                    v11 = mapItem;
                  }

                  ++v13;
                }

                v10 = autocompleteObject2;
              }

              else
              {
                v11 = 0;
              }

              ++v14;
              if (v11)
              {
                goto LABEL_21;
              }
            }

            v11 = 0;
          }

LABEL_21:
          ;
        }

        v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v36);

      if (!v11)
      {
        v6 = v32;
        responseCopy = v33;
        v8 = v31;
        goto LABEL_28;
      }

      testCoordinator = [(MapsAppTest *)self testCoordinator];
      [testCoordinator pptTestSearchRetainQueryForSelectedSearchCompletion:v10];

      v29 = +[NSNotificationCenter defaultCenter];
      [v29 removeObserver:self name:@"SearchDataProviderDidChangeDataNotification" object:0];

      v30 = +[NSNotificationCenter defaultCenter];
      [v30 addObserver:self selector:"didPresentPlaceCard:" name:MKPlaceViewControllerDidShowNotification object:0];

      testCoordinator2 = [(MapsAppTest *)self testCoordinator];
      [testCoordinator2 pptTestPresentPlacecardWithMapItem:v11];
      v6 = v32;
      responseCopy = v33;
      v8 = v31;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

LABEL_28:
  }
}

- (void)startAutoCompleteTest
{
  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v5 setSearchString:self->_query];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"searchAutoCompleteTestReceiveResponse:" name:@"SearchDataProviderDidChangeDataNotification" object:0];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestAutocompleteSearchForFieldItem:v5];
}

- (void)startAutoCompleteOrSearchTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIKeyboardDidShowNotification object:0];

  if (self->_autocompleteResultIndex == -1)
  {

    [(MapsAppTestRetainedSearch *)self startSearchTest];
  }

  else
  {

    [(MapsAppTestRetainedSearch *)self startAutoCompleteTest];
  }
}

- (BOOL)runTest
{
  options = [(MapsAppTest *)self options];
  v4 = [options objectForKeyedSubscript:@"searchQuery"];
  query = self->_query;
  self->_query = v4;

  v6 = [options objectForKeyedSubscript:@"autocompleteResultIndex"];
  if ([v6 length])
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  self->_autocompleteResultIndex = integerValue;
  v8 = [options objectForKeyedSubscript:@"searchResultIndex"];
  if ([v8 length])
  {
    integerValue2 = [v8 integerValue];
  }

  else
  {
    integerValue2 = -1;
  }

  self->_searchResultIndex = integerValue2;
  if (![(NSString *)self->_query length])
  {
    goto LABEL_10;
  }

  searchResultIndex = self->_searchResultIndex;
  if (self->_autocompleteResultIndex == -1)
  {
    if (searchResultIndex == -1)
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = +[NSNotificationCenter defaultCenter];
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator pptTestResetForLaunchURL];

    _mapstest_mapType = [options _mapstest_mapType];
    _mapstest_mapRegion = [options _mapstest_mapRegion];
    [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView setMapRegion:_mapstest_mapRegion pitch:0.0 yaw:0.0];

    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1007BE8C4;
    v19[3] = &unk_101661340;
    objc_copyWeak(&v21, &location);
    v17 = v12;
    v20 = v17;
    [(MapsAppTest *)self addFullyDrawnCallback:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    v11 = 1;
    goto LABEL_13;
  }

  if (searchResultIndex == -1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = 0;
LABEL_13:

  return v11;
}

@end