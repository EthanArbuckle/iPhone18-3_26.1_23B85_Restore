@interface QuickActionMenuPresenter
- (BOOL)_callEnabled;
- (BOOL)_contextMenuInteractionShouldBegin:(id)begin;
- (BOOL)_directionsEnabled;
- (BOOL)_webEnabled;
- (BOOL)isAdditionalStop;
- (CGPoint)location;
- (CLLocationCoordinate2D)coordinate;
- (QuickActionMenuPresenter)init;
- (QuickActionMenuPresenter)initWithView:(id)view;
- (QuickActionMenuPresenterDelegate)delegate;
- (id)_predicateToRemoveAction:(id)action;
- (id)addStopAction;
- (id)callAction;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)directionsAction;
- (id)dropPinAction;
- (id)removeDroppedPinAction;
- (id)sendMyLocationAction;
- (id)shareAction;
- (id)transitLineDirectionsAction;
- (id)transitLineViewOnMapAction;
- (id)webAction;
- (void)_prepareActions;
- (void)_prepareData;
- (void)_updateSearchResultWithMapItemIfNeeded:(id)needed;
- (void)cancelPresentationGesture;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)handleTapPreview;
- (void)performAction:(id)action;
- (void)reset;
- (void)resolveNearestTransitStation;
- (void)setLabelMarker:(id)marker;
- (void)setResolvedMapItem:(id)item;
- (void)updateActionEnableStates;
- (void)updateForLabelMarker:(id)marker;
- (void)updateForParkedCar:(id)car;
- (void)updateForPlace:(id)place;
- (void)updateForSearchResult:(id)result;
@end

@implementation QuickActionMenuPresenter

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (QuickActionMenuPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resolveNearestTransitStation
{
  if ([(VKLabelMarker *)self->_labelMarker _maps_numLines]== 1)
  {
    resetCounter = self->_resetCounter;
    _maps_lineIdentifiers = [(VKLabelMarker *)self->_labelMarker _maps_lineIdentifiers];
    firstObject = [_maps_lineIdentifiers firstObject];

    v6 = +[MKLocationManager sharedLocationManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006438A4;
    v9[3] = &unk_101624A48;
    v10 = firstObject;
    v11 = resetCounter;
    v9[4] = self;
    v7 = firstObject;
    v8 = [v6 singleLocationUpdateWithHandler:v9];

    [v8 start];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  if (self->_resolvedMapItem)
  {
    if (self->_labelMarker)
    {
      [(VKLabelMarker *)self->_labelMarker coordinate];
      v6 = CLLocationCoordinate2DMake(v2, v3);
      longitude = v6.longitude;
      latitude = v6.latitude;
    }

    else
    {
      searchResult = self->_searchResult;
      if (searchResult)
      {
        [(SearchResult *)searchResult coordinate];
      }

      else
      {
        latitude = kCLLocationCoordinate2DInvalid.latitude;
        longitude = kCLLocationCoordinate2DInvalid.longitude;
      }
    }
  }

  else
  {
    [0 _coordinate];
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)setResolvedMapItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_resolvedMapItem, item);
  if (itemCopy && !self->_searchResult)
  {
    v5 = [[SearchResult alloc] initWithMapItem:itemCopy];
    [(QuickActionMenuPresenter *)self setSearchResult:v5];
  }

  if (self->_parkedCar)
  {
    searchResult = [(QuickActionMenuPresenter *)self searchResult];
    [searchResult setReverseGeocoded:1];
  }

  [(QuickActionMenuPresenter *)self updateActionEnableStates];
}

- (void)setLabelMarker:(id)marker
{
  markerCopy = marker;
  objc_storeStrong(&self->_labelMarker, marker);
  v5 = markerCopy;
  if (markerCopy)
  {
    featureAnnotation = [markerCopy featureAnnotation];
    v7 = featureAnnotation;
    if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      personalizedItem = [v7 personalizedItem];
      [(QuickActionMenuPresenter *)self setPlace:personalizedItem];
    }

    v5 = markerCopy;
  }
}

- (void)updateForPlace:(id)place
{
  placeCopy = place;
  [(QuickActionMenuPresenter *)self setPlace:placeCopy];
  v5 = self->_resolveGroup;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([placeCopy parkedCar], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    searchResult = v6;
    [(QuickActionMenuPresenter *)self updateForParkedCar:v6];
  }

  else
  {
    searchResult = [placeCopy searchResult];
    [(QuickActionMenuPresenter *)self setSearchResult:searchResult];
    mapItem = [placeCopy mapItem];
    [(QuickActionMenuPresenter *)self setResolvedMapItem:mapItem];
    if (searchResult)
    {
      [(QuickActionMenuPresenter *)self updateForSearchResult:searchResult];
    }

    else if (([mapItem _hasResolvablePartialInformation] & 1) != 0 || objc_msgSend(placeCopy, "mustRefineMapItem"))
    {
      v9 = +[MKMapService sharedService];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [WeakRetained mapServiceTraitsForQuickActionPresenter:self];
      v12 = [v9 ticketForMapItemToRefine:mapItem traits:v11];

      dispatch_group_enter(v5);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100643E44;
      v13[3] = &unk_10165FE18;
      v13[4] = self;
      v14 = v5;
      [v12 submitWithHandler:v13 queue:&_dispatch_main_q networkActivity:0];
    }
  }
}

- (void)updateForLabelMarker:(id)marker
{
  markerCopy = marker;
  objc_storeStrong(&self->_labelMarker, marker);
  [markerCopy coordinate];
  v7 = v6;
  [markerCopy coordinate];
  v9 = CLLocationCoordinate2DMake(v7, v8);
  v10 = [[CLLocation alloc] initWithLatitude:v9.latitude longitude:v9.longitude];
  v11 = [[MKMapItem alloc] initWithCLLocation:v10];
  v12 = markerCopy;
  featureType = [v12 featureType];
  if (featureType <= 9 && ((1 << featureType) & 0x2C0) != 0)
  {
    title = [v12 title];
  }

  else
  {
    title = [v12 name];
  }

  v15 = title;

  [v11 setName:v15];
  v16 = self->_resolveGroup;
  -[GEOPlaceActionDetails setBusinessID:](self->_actionDetails, "setBusinessID:", [v12 businessID]);
  if ([(VKLabelMarker *)self->_labelMarker isTransitLine])
  {
    [(QuickActionMenuPresenter *)self setResolvedMapItem:v11];
    if ([(VKLabelMarker *)self->_labelMarker _maps_numLines]== 1)
    {
      [(QuickActionMenuPresenter *)self resolveNearestTransitStation];
    }
  }

  else
  {
    featureAnnotation = [(VKLabelMarker *)self->_labelMarker featureAnnotation];
    v18 = featureAnnotation;
    if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      personalizedItem = [v18 personalizedItem];
      [(QuickActionMenuPresenter *)self setPlace:personalizedItem];
    }

    else
    {
      v20 = v12;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v22 = [WeakRetained mapServiceTraitsForQuickActionPresenter:self];

      if ([(VKLabelMarker *)self->_labelMarker businessID])
      {
        dispatch_group_enter(v16);
        v46[0] = 0;
        v46[1] = v46;
        v46[2] = 0x3032000000;
        v46[3] = sub_100644338;
        v46[4] = sub_100644348;
        v47 = 0;
        v23 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v23 userInterfaceIdiom];

        v35 = userInterfaceIdiom == 5;
        v37 = v22;
        v34 = userInterfaceIdiom;
        if (userInterfaceIdiom == 5)
        {
          v36 = dispatch_get_global_queue(2, 0);
        }

        else
        {
          v36 = &_dispatch_main_q;
          v25 = &_dispatch_main_q;
        }

        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100644350;
        v43[3] = &unk_101660778;
        v43[4] = self;
        v45 = v46;
        v33 = v20;
        v44 = v20;
        v26 = objc_retainBlock(v43);
        v27 = +[UIApplication sharedMapsDelegate];
        poiSearchManager = [v27 poiSearchManager];
        identifier = [(VKLabelMarker *)self->_labelMarker identifier];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1006443E8;
        v38[3] = &unk_1016249D0;
        v41 = v46;
        v42 = v35;
        v30 = v26;
        v40 = v30;
        v31 = v16;
        v39 = v31;
        [poiSearchManager searchForIdentifier:identifier allowExpired:1 traits:v37 completionHandler:v38 callbackQueue:v36];

        if (v34 == 5)
        {
          v32 = dispatch_time(0, 5000000000);
          dispatch_group_wait(v31, v32);
          v30[2](v30);
        }

        _Block_object_dispose(v46, 8);
        v20 = v33;
        v22 = v37;
      }
    }
  }
}

- (void)updateForParkedCar:(id)car
{
  self->_parkedCar = 1;
  mapItem = [car mapItem];
  [(QuickActionMenuPresenter *)self setResolvedMapItem:mapItem];
}

- (void)updateForSearchResult:(id)result
{
  resultCopy = result;
  objc_storeStrong(&self->_searchResult, result);
  v6 = self->_resolveGroup;
  objc_initWeak(location, self);
  if ([resultCopy hasIncompleteMetadata])
  {
    if ([resultCopy businessID])
    {
      v7 = +[UIApplication sharedMapsDelegate];
      poiSearchManager = [v7 poiSearchManager];

      identifier = [resultCopy identifier];
      v10 = [poiSearchManager searchResultForIdentifier:identifier];

      if (v10 && ([v10 hasIncompleteMetadata] & 1) == 0)
      {
        [(QuickActionMenuPresenter *)self updateForSearchResult:v10];
      }

      else
      {
        dispatch_group_enter(v6);
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x3032000000;
        v56[3] = sub_100644338;
        v56[4] = sub_100644348;
        v57 = 0;
        v11 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v11 userInterfaceIdiom];

        v37 = v10;
        v38 = poiSearchManager;
        if (userInterfaceIdiom == 5)
        {
          v22 = dispatch_get_global_queue(2, 0);
        }

        else
        {
          v22 = &_dispatch_main_q;
          v23 = &_dispatch_main_q;
        }

        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100644BF4;
        v54[3] = &unk_10165DE50;
        v54[4] = v56;
        objc_copyWeak(&v55, location);
        v24 = objc_retainBlock(v54);
        identifier2 = [resultCopy identifier];
        delegate = [(QuickActionMenuPresenter *)self delegate];
        v27 = [delegate mapServiceTraitsForQuickActionPresenter:self];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100644CA8;
        v49[3] = &unk_1016249D0;
        v52 = v56;
        v53 = userInterfaceIdiom == 5;
        v28 = v24;
        v51 = v28;
        v29 = v6;
        v50 = v29;
        [v38 searchForIdentifier:identifier2 allowExpired:1 traits:v27 completionHandler:v49 callbackQueue:v22];

        if (userInterfaceIdiom == 5)
        {
          v30 = dispatch_time(0, 5000000000);
          dispatch_group_wait(v29, v30);
          v28[2](v28);
        }

        objc_destroyWeak(&v55);
        _Block_object_dispose(v56, 8);

        v10 = v37;
        poiSearchManager = v38;
      }

      -[GEOPlaceActionDetails setBusinessID:](self->_actionDetails, "setBusinessID:", [resultCopy businessID]);
      -[GEOPlaceActionDetails setResultIndex:](self->_actionDetails, "setResultIndex:", [resultCopy resultIndex]);

      goto LABEL_21;
    }

    address = [resultCopy address];

    if (address)
    {
      poiSearchManager = [resultCopy address];
      dispatch_group_enter(v6);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100644D4C;
      v46[3] = &unk_1016249F8;
      objc_copyWeak(&v48, location);
      v47 = v6;
      [poiSearchManager forwardGeocodeAddress:v46];

      v21 = &v48;
LABEL_20:
      objc_destroyWeak(v21);
      goto LABEL_21;
    }

    mapItem = [resultCopy mapItem];

    if (mapItem)
    {
      v32 = +[MKMapService sharedService];
      mapItem2 = [resultCopy mapItem];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v35 = [WeakRetained mapServiceTraitsForQuickActionPresenter:self];
      poiSearchManager = [v32 ticketForMapItemToRefine:mapItem2 traits:v35];

      dispatch_group_enter(v6);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100644DC4;
      v43[3] = &unk_10165DCC8;
      objc_copyWeak(&v45, location);
      v44 = v6;
      v36 = &_dispatch_main_q;
      [poiSearchManager submitWithHandler:v43 queue:&_dispatch_main_q networkActivity:0];

      v21 = &v45;
      goto LABEL_20;
    }
  }

  else
  {
    if ([resultCopy isDynamicCurrentLocation])
    {
      v13 = +[MKLocationManager sharedLocationManager];
      poiSearchManager = [v13 lastLocation];

      v14 = +[MKMapService sharedService];
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16 = [v15 mapServiceTraitsForQuickActionPresenter:self];
      v17 = [v14 ticketForReverseGeocodeLocation:poiSearchManager traits:v16];

      dispatch_group_enter(v6);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100644E88;
      v39[3] = &unk_10165D328;
      objc_copyWeak(&v42, location);
      v40 = resultCopy;
      v41 = v6;
      v18 = &_dispatch_main_q;
      [v17 submitWithHandler:v39 queue:&_dispatch_main_q networkActivity:0];

      objc_destroyWeak(&v42);
LABEL_21:

      goto LABEL_22;
    }

    mapItem3 = [resultCopy mapItem];
    [(QuickActionMenuPresenter *)self setResolvedMapItem:mapItem3];

    -[GEOPlaceActionDetails setBusinessID:](self->_actionDetails, "setBusinessID:", [resultCopy businessID]);
    -[GEOPlaceActionDetails setResultIndex:](self->_actionDetails, "setResultIndex:", [resultCopy resultIndex]);
  }

LABEL_22:
  objc_destroyWeak(location);
}

- (void)_updateSearchResultWithMapItemIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(SearchResultRepr *)self->_searchResult hasIncompleteMetadata]|| [(SearchResult *)self->_searchResult isDynamicCurrentLocation])
  {
    v4 = [[SearchResult alloc] initWithMapItem:neededCopy];
    if ([(SearchResult *)self->_searchResult isAddressBookResult])
    {
      v5 = [SearchResult alloc];
      address = [(SearchResult *)self->_searchResult address];
      v7 = [(SearchResult *)v5 initWithSearchResult:v4 address:address];

      v4 = v7;
    }

    [(QuickActionMenuPresenter *)self setSearchResult:v4];
  }
}

- (BOOL)isAdditionalStop
{
  actions = self->_actions;
  addStopAction = [(QuickActionMenuPresenter *)self addStopAction];
  LOBYTE(actions) = [(NSArray *)actions containsObject:addStopAction];

  return actions;
}

- (void)reset
{
  self->_parkedCar = 0;
  searchResult = self->_searchResult;
  self->_searchResult = 0;

  place = self->_place;
  self->_place = 0;

  [(QuickActionMenuPresenter *)self setUiTarget:0];
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  actionDetails = self->_actionDetails;
  self->_actionDetails = v5;

  lastValidLocation = self->_lastValidLocation;
  self->_lastValidLocation = 0;

  ++self->_resetCounter;
  directionsAction = self->_directionsAction;
  self->_directionsAction = 0;

  addStopAction = self->_addStopAction;
  self->_addStopAction = 0;

  callAction = self->_callAction;
  self->_callAction = 0;

  webAction = self->_webAction;
  self->_webAction = 0;

  shareAction = self->_shareAction;
  self->_shareAction = 0;

  removeDroppedPinAction = self->_removeDroppedPinAction;
  self->_removeDroppedPinAction = 0;

  sendMyLocationAction = self->_sendMyLocationAction;
  self->_sendMyLocationAction = 0;

  transitLineViewOnMapAction = self->_transitLineViewOnMapAction;
  self->_transitLineViewOnMapAction = 0;

  transitLineDirectionsAction = self->_transitLineDirectionsAction;
  self->_transitLineDirectionsAction = 0;

  self->_haveNearestStation = 0;
}

- (void)handleTapPreview
{
  v3 = self->_resolveGroup;
  resolveGroup = self->_resolveGroup;
  self->_resolveGroup = 0;

  if (v3)
  {
    self->_waitingResolution = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100645248;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_group_notify(v3, &_dispatch_main_q, block);
  }
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (actionCopy && self->_resolveGroup)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006453D4;
    v9[3] = &unk_101661A90;
    v9[4] = self;
    v10 = actionCopy;
    v6 = objc_retainBlock(v9);
    v7 = v6;
    if (self->_resolvedMapItem || self->_place)
    {
      (v6[2])(v6);
    }

    else
    {
      dispatch_group_notify(self->_resolveGroup, &_dispatch_main_q, v6);
    }

    resolveGroup = self->_resolveGroup;
    self->_resolveGroup = 0;
  }
}

- (id)_predicateToRemoveAction:(id)action
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100645734;
  v6[3] = &unk_101656A98;
  actionCopy = action;
  v3 = actionCopy;
  v4 = [NSPredicate predicateWithBlock:v6];

  return v4;
}

- (void)updateActionEnableStates
{
  _callEnabled = [(QuickActionMenuPresenter *)self _callEnabled];
  _webEnabled = [(QuickActionMenuPresenter *)self _webEnabled];
  _directionsEnabled = [(QuickActionMenuPresenter *)self _directionsEnabled];
  _nearestStationEnabled = [(QuickActionMenuPresenter *)self _nearestStationEnabled];
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100645A2C;
  v23[3] = &unk_101624980;
  objc_copyWeak(&v24, &location);
  v25 = _callEnabled;
  v26 = _webEnabled;
  v27 = _nearestStationEnabled;
  v28 = _directionsEnabled;
  v7 = objc_retainBlock(v23);
  v8 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_actions count]];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NSArray *)self->_actions copy];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = (v7[2])(v7, *(*(&v19 + 1) + 8 * v12));
        if (v13)
        {
          [v8 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [v8 copy];
  actions = self->_actions;
  self->_actions = v14;

  if (self->_actionsDisplayed)
  {
    contextMenuInteraction = self->_contextMenuInteraction;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100645C94;
    v17[3] = &unk_1016249A8;
    objc_copyWeak(&v18, &location);
    [(UIContextMenuInteraction *)contextMenuInteraction updateVisibleMenuWithBlock:v17];
    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (BOOL)_directionsEnabled
{
  resolvedMapItem = self->_resolvedMapItem;
  if (resolvedMapItem || (searchResult = self->_searchResult) == 0)
  {
    mapItem = resolvedMapItem;
  }

  else
  {
    mapItem = [(SearchResult *)searchResult mapItem];
  }

  v6 = mapItem;
  v7 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v7 lastLocation];

  [(QuickActionMenuPresenter *)self coordinate];
  v10 = v9;
  v12 = v11;
  if (v6 && ![(MKMapItem *)v6 _canGetDirections])
  {
    v18 = 0;
  }

  else
  {
    v13 = lastLocation;
    if (v13 && (+[NSDate date](NSDate, "date"), v14 = objc_claimAutoreleasedReturnValue(), [v13 timestamp], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "timeIntervalSinceDate:", v15), v17 = v16, v15, v14, v17 <= 300.0))
    {
      [v13 coordinate];
      v20 = CLLocationCoordinate2DIsValid(v22);

      if (v20)
      {
        v23.latitude = v10;
        v23.longitude = v12;
        if (CLLocationCoordinate2DIsValid(v23))
        {
          [v13 coordinate];
          GEOCalculateDistance();
          v18 = v21 >= 25.0;
          goto LABEL_12;
        }
      }
    }

    else
    {
    }

    v18 = 1;
  }

LABEL_12:

  return v18;
}

- (BOOL)_webEnabled
{
  resolvedMapItem = self->_resolvedMapItem;
  if (resolvedMapItem || (searchResult = self->_searchResult) == 0)
  {
    mapItem = resolvedMapItem;
  }

  else
  {
    mapItem = [(SearchResult *)searchResult mapItem];
  }

  v6 = mapItem;
  if ([(SearchResult *)self->_searchResult isAddressBookResult])
  {
    address = [(SearchResult *)self->_searchResult address];
    contact = [address contact];
  }

  else
  {
    contact = 0;
  }

  v9 = [(MKMapItem *)v6 url];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    urlAddresses = [contact urlAddresses];
    lastObject = [urlAddresses lastObject];
    v10 = lastObject != 0;
  }

  return v10;
}

- (BOOL)_callEnabled
{
  resolvedMapItem = self->_resolvedMapItem;
  if (resolvedMapItem || (searchResult = self->_searchResult) == 0)
  {
    mapItem = resolvedMapItem;
  }

  else
  {
    mapItem = [(SearchResult *)searchResult mapItem];
  }

  v6 = mapItem;
  if ([(SearchResult *)self->_searchResult isAddressBookResult])
  {
    address = [(SearchResult *)self->_searchResult address];
    contact = [address contact];
  }

  else
  {
    contact = 0;
  }

  phoneNumber = [(MKMapItem *)v6 phoneNumber];
  v10 = phoneNumber;
  if (phoneNumber && [phoneNumber length])
  {
    v11 = 1;
  }

  else
  {
    phoneNumbers = [contact phoneNumbers];
    lastObject = [phoneNumbers lastObject];
    v11 = lastObject != 0;
  }

  return v11;
}

- (id)transitLineViewOnMapAction
{
  if (!self->_transitLineViewOnMapAction)
  {
    objc_initWeak(&location, self);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"View on Map [quick action menu]" value:@"localized string not found" table:0];
    v5 = [UIImage imageNamed:@"action-view-on-map"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1006461DC;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_transitLineViewOnMapAction" handler:&v11];
    transitLineViewOnMapAction = self->_transitLineViewOnMapAction;
    self->_transitLineViewOnMapAction = v6;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:{@"ViewOnMap", v11, v12, v13, v14}];
  [(UIAction *)self->_transitLineViewOnMapAction setAccessibilityIdentifier:v8];

  v9 = self->_transitLineViewOnMapAction;

  return v9;
}

- (id)transitLineDirectionsAction
{
  if (!self->_transitLineDirectionsAction)
  {
    objc_initWeak(&location, self);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Directions to Nearest Stop [quick action menu]" value:@"localized string not found" table:0];
    v5 = [UIImage systemImageNamed:@"arrow.turn.up.right"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100646400;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_transitLineDirectionsAction" handler:&v11];
    transitLineDirectionsAction = self->_transitLineDirectionsAction;
    self->_transitLineDirectionsAction = v6;

    [(UIAction *)self->_transitLineDirectionsAction setAttributes:[(QuickActionMenuPresenter *)self _nearestStationEnabled:v11]^ 1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:@"TransitLineDirections"];
  [(UIAction *)self->_transitLineDirectionsAction setAccessibilityIdentifier:v8];

  v9 = self->_transitLineDirectionsAction;

  return v9;
}

- (id)sendMyLocationAction
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v5 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:1];
  }

  else
  {
    if (!self->_sendMyLocationAction)
    {
      objc_initWeak(&location, self);
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"Send My Location" value:@"localized string not found" table:0];
      v8 = [UIImage systemImageNamed:@"square.and.arrow.up"];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10064662C;
      v16 = &unk_101661900;
      objc_copyWeak(&v17, &location);
      v9 = [UIAction actionWithTitle:v7 image:v8 identifier:@"_sendMyLocationAction" handler:&v13];
      sendMyLocationAction = self->_sendMyLocationAction;
      self->_sendMyLocationAction = v9;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    v11 = [@"QuickActionMenuItem" stringByAppendingString:{@"SendMyLocation", v13, v14, v15, v16}];
    [(UIAction *)self->_sendMyLocationAction setAccessibilityIdentifier:v11];

    v5 = self->_sendMyLocationAction;
  }

  return v5;
}

- (id)shareAction
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v5 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:1];
  }

  else
  {
    if (!self->_shareAction)
    {
      objc_initWeak(&location, self);
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"Share Location" value:@"localized string not found" table:0];
      v8 = [UIImage systemImageNamed:@"square.and.arrow.up"];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100646858;
      v16 = &unk_101661900;
      objc_copyWeak(&v17, &location);
      v9 = [UIAction actionWithTitle:v7 image:v8 identifier:@"_shareAction" handler:&v13];
      shareAction = self->_shareAction;
      self->_shareAction = v9;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    v11 = [@"QuickActionMenuItem" stringByAppendingString:{@"ShareLocation", v13, v14, v15, v16}];
    [(UIAction *)self->_shareAction setAccessibilityIdentifier:v11];

    v5 = self->_shareAction;
  }

  return v5;
}

- (id)removeDroppedPinAction
{
  if (!self->_removeDroppedPinAction)
  {
    +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Remove Marked Location" value:@"localized string not found" table:0];

    objc_initWeak(&location, self);
    v5 = [UIImage systemImageNamed:@"mappin.slash"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100646A4C;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_removeDroppedPinAction" handler:&v11];
    removeDroppedPinAction = self->_removeDroppedPinAction;
    self->_removeDroppedPinAction = v6;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:{@"RemovePin", v11, v12, v13, v14}];
  [(UIAction *)self->_removeDroppedPinAction setAccessibilityIdentifier:v8];

  v9 = self->_removeDroppedPinAction;

  return v9;
}

- (id)dropPinAction
{
  if (!self->_dropPinAction)
  {
    v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (v3)
    {
      v6 = @"Mark Location";
    }

    else
    {
      v6 = @"Drop Pin";
    }

    v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

    objc_initWeak(&location, self);
    v8 = [UIImage systemImageNamed:@"mappin"];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100646C54;
    v17 = &unk_101661900;
    objc_copyWeak(&v18, &location);
    v9 = [UIAction actionWithTitle:v7 image:v8 identifier:@"_dropPinAction" handler:&v14];
    dropPinAction = self->_dropPinAction;
    self->_dropPinAction = v9;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v11 = [@"QuickActionMenuItem" stringByAppendingString:{@"DropPin", v14, v15, v16, v17}];
  [(UIAction *)self->_dropPinAction setAccessibilityIdentifier:v11];

  v12 = self->_dropPinAction;

  return v12;
}

- (id)webAction
{
  if (!self->_webAction)
  {
    objc_initWeak(&location, self);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Open Homepage" value:@"localized string not found" table:0];
    v5 = [UIImage systemImageNamed:@"safari"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100646E54;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_webAction" handler:&v11];
    webAction = self->_webAction;
    self->_webAction = v6;

    [(UIAction *)self->_webAction setAttributes:[(QuickActionMenuPresenter *)self _webEnabled:v11]^ 1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:@"OpenHomepage"];
  [(UIAction *)self->_webAction setAccessibilityIdentifier:v8];

  v9 = self->_webAction;

  return v9;
}

- (id)callAction
{
  if (!self->_callAction)
  {
    objc_initWeak(&location, self);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Call" value:@"localized string not found" table:0];
    v5 = [UIImage systemImageNamed:@"phone"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100647054;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_callAction" handler:&v11];
    callAction = self->_callAction;
    self->_callAction = v6;

    [(UIAction *)self->_callAction setAttributes:[(QuickActionMenuPresenter *)self _callEnabled:v11]^ 1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:@"Call"];
  [(UIAction *)self->_callAction setAccessibilityIdentifier:v8];

  v9 = self->_callAction;

  return v9;
}

- (id)addStopAction
{
  if (!self->_addStopAction)
  {
    objc_initWeak(&location, self);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Add Stop Orb" value:@"localized string not found" table:0];
    v5 = [UIImage systemImageNamed:@"plus.circle"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10064723C;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_addStopAction" handler:&v11];
    addStopAction = self->_addStopAction;
    self->_addStopAction = v6;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:{@"AddStop", v11, v12, v13, v14}];
  [(UIAction *)self->_addStopAction setAccessibilityIdentifier:v8];

  v9 = self->_addStopAction;

  return v9;
}

- (id)directionsAction
{
  if (!self->_directionsAction)
  {
    objc_initWeak(&location, self);
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Directions Orb" value:@"localized string not found" table:0];
    v5 = [UIImage systemImageNamed:@"arrow.turn.up.right"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100647424;
    v14 = &unk_101661900;
    objc_copyWeak(&v15, &location);
    v6 = [UIAction actionWithTitle:v4 image:v5 identifier:@"_directionsAction" handler:&v11];
    directionsAction = self->_directionsAction;
    self->_directionsAction = v6;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v8 = [@"QuickActionMenuItem" stringByAppendingString:{@"Directions", v11, v12, v13, v14}];
  [(UIAction *)self->_directionsAction setAccessibilityIdentifier:v8];

  v9 = self->_directionsAction;

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v6 = [UIDevice currentDevice:interaction];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {

    [(QuickActionMenuPresenter *)self reset];
  }
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  [animator setPreferredCommitStyle:{0, configuration}];

  [(QuickActionMenuPresenter *)self handleTapPreview];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  if ([(QuickActionMenuPresenter *)self _contextMenuInteractionShouldBegin:interactionCopy])
  {
    self->_actionsDisplayed = 0;
    self->_location.x = x;
    self->_location.y = y;
    [(QuickActionMenuPresenter *)self _prepareData];
    [(QuickActionMenuPresenter *)self _prepareActions];
    [GEOAPPortal captureUserAction:17080 target:self->_uiTarget value:0 placeActionDetails:self->_actionDetails];
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006476F0;
    v12[3] = &unk_10162D928;
    objc_copyWeak(&v13, &location);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10064773C;
    v10[3] = &unk_101624958;
    objc_copyWeak(&v11, &location);
    v8 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v12 actionProvider:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_contextMenuInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  [(QuickActionMenuPresenter *)self reset];
  if ([(QuickActionMenuPresenter *)self enabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [beginCopy locationInView:self->_gestureView];
    if ([WeakRetained shouldQuickActionMenuPresenter:self presentAtLocation:self->_gestureView inView:?])
    {
      [beginCopy locationInView:self->_gestureView];
      v6 = [(QuickActionMenuPresenter *)self shouldBeginOrbGestureAtLocation:self->_gestureView inView:?];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_prepareData
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 quickActionMenuWillPresent:self];
  }

  v6 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v6 lastLocation];

  v17 = lastLocation;
  if (v17)
  {
    v8 = +[NSDate date];
    timestamp = [(CLLocation *)v17 timestamp];
    [v8 timeIntervalSinceDate:timestamp];
    v11 = v10;

    lastValidLocation = v17;
    if (v11 <= 300.0)
    {
      [(CLLocation *)v17 coordinate];
      v13 = CLLocationCoordinate2DIsValid(v19);

      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = v17;
      lastValidLocation = self->_lastValidLocation;
      self->_lastValidLocation = v14;
    }
  }

  else
  {
    lastValidLocation = 0;
  }

LABEL_9:
  v15 = dispatch_group_create();
  resolveGroup = self->_resolveGroup;
  self->_resolveGroup = v15;

  if (self->_place)
  {
    [(QuickActionMenuPresenter *)self updateForPlace:?];
  }

  else if (self->_labelMarker)
  {
    [(QuickActionMenuPresenter *)self updateForLabelMarker:?];
  }

  else if (self->_searchResult)
  {
    [(QuickActionMenuPresenter *)self updateForSearchResult:?];
  }
}

- (void)_prepareActions
{
  labelMarker = self->_labelMarker;
  if (labelMarker && [(VKLabelMarker *)labelMarker isTransitLine])
  {
    if ([(VKLabelMarker *)self->_labelMarker _maps_numLines]== 1)
    {
      transitLineDirectionsAction = [(QuickActionMenuPresenter *)self transitLineDirectionsAction];
      v38[0] = transitLineDirectionsAction;
      transitLineViewOnMapAction = [(QuickActionMenuPresenter *)self transitLineViewOnMapAction];
      v38[1] = transitLineViewOnMapAction;
      v6 = v38;
LABEL_5:
      v7 = [NSArray arrayWithObjects:v6 count:2];
LABEL_21:

      goto LABEL_24;
    }

    transitLineDirectionsAction = [(QuickActionMenuPresenter *)self transitLineViewOnMapAction];
    v37 = transitLineDirectionsAction;
    v8 = &v37;
LABEL_23:
    v7 = [NSArray arrayWithObjects:v8 count:1];
    goto LABEL_24;
  }

  if (self->_searchResult)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transitLineDirectionsAction = [(QuickActionMenuPresenter *)self sendMyLocationAction];
      v36 = transitLineDirectionsAction;
      v8 = &v36;
      goto LABEL_23;
    }

    searchResult = self->_searchResult;
    if (searchResult)
    {
      if ([(SearchResult *)searchResult appearance]== 3)
      {
        v10 = +[CustomSearchManager sharedManager];
        v11 = [v10 isCustomSearchResult:self->_searchResult];

        if (!v11)
        {
          transitLineDirectionsAction = [(QuickActionMenuPresenter *)self dropPinAction];
          v34[0] = transitLineDirectionsAction;
          transitLineViewOnMapAction = [(QuickActionMenuPresenter *)self shareAction];
          v34[1] = transitLineViewOnMapAction;
          v6 = v34;
          goto LABEL_5;
        }

        transitLineDirectionsAction = [(QuickActionMenuPresenter *)self directionsAction];
        v35[0] = transitLineDirectionsAction;
        transitLineViewOnMapAction = [(QuickActionMenuPresenter *)self removeDroppedPinAction];
        v35[1] = transitLineViewOnMapAction;
        shareAction = [(QuickActionMenuPresenter *)self shareAction];
        v35[2] = shareAction;
        v7 = [NSArray arrayWithObjects:v35 count:3];
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  if (!self->_place || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    transitLineDirectionsAction = [(QuickActionMenuPresenter *)self directionsAction];
    v30[0] = transitLineDirectionsAction;
    transitLineViewOnMapAction = [(QuickActionMenuPresenter *)self callAction];
    v30[1] = transitLineViewOnMapAction;
    shareAction = [(QuickActionMenuPresenter *)self webAction];
    v30[2] = shareAction;
    shareAction2 = [(QuickActionMenuPresenter *)self shareAction];
    v30[3] = shareAction2;
    v17 = v30;
LABEL_19:
    v7 = [NSArray arrayWithObjects:v17 count:4];

    goto LABEL_20;
  }

  if ([(PersonalizedItem *)self->_place suggestionType]!= 24)
  {
    transitLineDirectionsAction = [(QuickActionMenuPresenter *)self directionsAction];
    v31[0] = transitLineDirectionsAction;
    transitLineViewOnMapAction = [(QuickActionMenuPresenter *)self callAction];
    v31[1] = transitLineViewOnMapAction;
    shareAction = [(QuickActionMenuPresenter *)self webAction];
    v31[2] = shareAction;
    shareAction2 = [(QuickActionMenuPresenter *)self shareAction];
    v31[3] = shareAction2;
    v17 = v31;
    goto LABEL_19;
  }

  shareAction3 = [(QuickActionMenuPresenter *)self shareAction];
  v33 = shareAction3;
  v7 = [NSArray arrayWithObjects:&v33 count:1];

  if (![(QuickActionMenuPresenter *)self _directionsEnabled])
  {
    goto LABEL_25;
  }

  transitLineDirectionsAction = [(QuickActionMenuPresenter *)self directionsAction];
  v32[0] = transitLineDirectionsAction;
  shareAction4 = [(QuickActionMenuPresenter *)self shareAction];
  v32[1] = shareAction4;
  v15 = [NSArray arrayWithObjects:v32 count:2];

  v7 = v15;
LABEL_24:

LABEL_25:
  delegate = [(QuickActionMenuPresenter *)self delegate];
  place = [(QuickActionMenuPresenter *)self place];
  v20 = [delegate shouldQuickActionMenuPresenter:self showDirectionsToPlace:place];

  if (v20)
  {
    delegate2 = [(QuickActionMenuPresenter *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate3 = [(QuickActionMenuPresenter *)self delegate];
      v23 = [delegate3 shouldShowAddStopForDirectionsInQuickActionMenuPresenter:self];

      if (v23)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100647F10;
        v29[3] = &unk_101627280;
        v29[4] = self;
        v24 = sub_100021DB0(v7, v29);

        v7 = v24;
      }
    }

    else
    {
    }
  }

  else
  {
    directionsAction = [(QuickActionMenuPresenter *)self directionsAction];
    v26 = [(QuickActionMenuPresenter *)self _predicateToRemoveAction:directionsAction];
    v27 = [(NSArray *)v7 filteredArrayUsingPredicate:v26];

    v7 = v27;
  }

  actions = self->_actions;
  self->_actions = v7;
}

- (void)cancelPresentationGesture
{
  [(UIView *)self->_gestureView removeInteraction:self->_contextMenuInteraction];
  gestureView = self->_gestureView;
  contextMenuInteraction = self->_contextMenuInteraction;

  [(UIView *)gestureView addInteraction:contextMenuInteraction];
}

- (QuickActionMenuPresenter)initWithView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = QuickActionMenuPresenter;
  v6 = [(QuickActionMenuPresenter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureView, view);
    v7->_enabled = 1;
    v8 = [[UIContextMenuInteraction alloc] initWithDelegate:v7];
    contextMenuInteraction = v7->_contextMenuInteraction;
    v7->_contextMenuInteraction = v8;

    [(UIView *)v7->_gestureView addInteraction:v7->_contextMenuInteraction];
  }

  return v7;
}

- (QuickActionMenuPresenter)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end