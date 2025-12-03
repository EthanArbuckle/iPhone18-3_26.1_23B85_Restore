@interface SearchPinsManager
- (BOOL)_canDroppedPinBeVisibleInVenue;
- (BOOL)_isShowingDirectionsPins;
- (BOOL)canSelectPin:(id)pin;
- (BOOL)disableEndPins;
- (BOOL)disableStartPin;
- (CustomPOIsController)customPOIsController;
- (MKMapView)mapView;
- (MapSelectionManager)mapSelectionManager;
- (NSArray)endPOIShapesIfLoaded;
- (SearchPinsManager)initWithMapViewCameraController:(id)controller;
- (SearchPinsManagerDelegate)delegate;
- (SearchResult)endPin;
- (SearchResultsDebugOverlay)searchResultsDebugOverlay;
- (UIEdgeInsets)carRecommendedMapPadding;
- (VenuesManager)venuesManager;
- (id)_setOfPinsForPinType:(unint64_t)type;
- (void)_animateShowingSearchResults:(id)results selectedSearchResult:(id)result historyItem:(id)item suggestedMapRegion:(id)region minZoom:(id)zoom maxZoom:(id)maxZoom disableAdditionalViewportPadding:(BOOL)padding completion:(id)self0;
- (void)_clearEndPins;
- (void)_clearShowSearchResultsAnimation;
- (void)_clearStartPin;
- (void)_completeShowSearchResultsAnimation;
- (void)_notifyDidLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes;
- (void)_setEndPOIShapes:(id)shapes;
- (void)_setStartPOIShape:(id)shape;
- (void)_startLoadingNewEndPOIShapes;
- (void)_startLoadingNewStartPOIShape;
- (void)_updateDroppedPinVisibility;
- (void)clearCollectionPins;
- (void)clearDirectionsPins;
- (void)clearDroppedPin;
- (void)clearLinkedPlacesAndPolygon;
- (void)clearSearchPins;
- (void)clearSingleResultPins;
- (void)dealloc;
- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal;
- (void)dropPinsForSearchResults:(id)results searchDotPlaces:(id)places selectedSearchResult:(id)result animate:(BOOL)animate itemSource:(id)source;
- (void)mapSelectionManagerDidDeselectSearchResult:(id)result;
- (void)mapViewDidBecomeFullyDrawn;
- (void)registerPOIShapeLoadingObserver:(id)observer;
- (void)selectAndShowSearchResult:(id)result animated:(BOOL)animated;
- (void)selectDroppedPinIsAnimated:(BOOL)animated;
- (void)selectLabelMarkerForSearchResult:(id)result animated:(BOOL)animated;
- (void)setCustomPOIsController:(id)controller;
- (void)setDisableEndPins:(BOOL)pins;
- (void)setDisableStartPin:(BOOL)pin;
- (void)setDroppedPin:(id)pin animated:(BOOL)animated shouldSelect:(BOOL)select;
- (void)setMapCameraController:(id)controller;
- (void)setSearchPins:(id)pins selectedPin:(id)pin animated:(BOOL)animated;
- (void)setSearchPinsFromSearchInfo:(id)info scrollToResults:(BOOL)results displayPlaceCardForResult:(id)result historyItem:(id)item animated:(BOOL)animated itemSource:(id)source completion:(id)completion;
- (void)setStartPin:(id)pin endPin:(id)endPin useAlternateDirectionsPins:(BOOL)pins;
- (void)setStartPin:(id)pin endPins:(id)pins useAlternateDirectionsPins:(BOOL)directionsPins;
- (void)showLinkedPlacesAndPolygonForPlaceCardItem:(id)item;
- (void)unregisterPOIShapeLoadingObserver:(id)observer;
@end

@implementation SearchPinsManager

- (VenuesManager)venuesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_venuesManager);

  return WeakRetained;
}

- (MapSelectionManager)mapSelectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_mapSelectionManager);

  return WeakRetained;
}

- (CustomPOIsController)customPOIsController
{
  WeakRetained = objc_loadWeakRetained(&self->_customPOIsController);

  return WeakRetained;
}

- (SearchPinsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SearchResultsDebugOverlay)searchResultsDebugOverlay
{
  searchResultsDebugOverlay = self->_searchResultsDebugOverlay;
  if (!searchResultsDebugOverlay)
  {
    v4 = [SearchResultsDebugOverlay alloc];
    mapView = [(SearchPinsManager *)self mapView];
    v6 = [(SearchResultsDebugOverlay *)v4 initWithMapView:mapView];
    v7 = self->_searchResultsDebugOverlay;
    self->_searchResultsDebugOverlay = v6;

    searchResultsDebugOverlay = self->_searchResultsDebugOverlay;
  }

  return searchResultsDebugOverlay;
}

- (BOOL)_canDroppedPinBeVisibleInVenue
{
  [(SearchResult *)self->_droppedPin coordinate];
  v4 = v3;
  [(SearchResult *)self->_droppedPin coordinate];
  v6 = v5;
  mapView = [(SearchPinsManager *)self mapView];
  _mapLayer = [mapView _mapLayer];
  v9 = [_mapLayer venueAtLocation:0 withMarginForError:{v4, v6}];

  mapView2 = [(SearchPinsManager *)self mapView];
  v11 = [mapView2 displayedFloorOrdinalForBuildingsInVenue:v9];

  mapView3 = [(SearchPinsManager *)self mapView];
  venueWithFocus = [mapView3 venueWithFocus];
  venueID = [venueWithFocus venueID];
  v15 = 0;
  if (venueID == [v9 venueID])
  {
    v15 = [(SearchResultRepr *)self->_droppedPin floorOrdinal]== v11;
  }

  mapView4 = [(SearchPinsManager *)self mapView];
  venueWithFocus2 = [mapView4 venueWithFocus];
  if (venueWithFocus2)
  {
    mapView5 = [(SearchPinsManager *)self mapView];
    venueWithFocus3 = [mapView5 venueWithFocus];
    venueID2 = [venueWithFocus3 venueID];
    v21 = venueID2 != [v9 venueID];
  }

  else
  {
    v21 = 1;
  }

  return v15 || v21;
}

- (void)_updateDroppedPinVisibility
{
  if (self->_startPin)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSArray *)self->_endPins count]!= 0;
  }

  if ([(SearchResultRepr *)self->_droppedPin hasFloorOrdinal]&& ![(SearchPinsManager *)self _canDroppedPinBeVisibleInVenue])
  {
    droppedPinsItemSource = self->_droppedPinsItemSource;
    v5 = 1;
    goto LABEL_11;
  }

  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
  {
    droppedPinsItemSource = self->_droppedPinsItemSource;
    v5 = 0;
LABEL_11:

    [(SearchResultsItemSource *)droppedPinsItemSource setShouldHideSearchResults:v5];
    return;
  }

  mapView = [(SearchPinsManager *)self mapView];
  [(SearchResultsItemSource *)self->_droppedPinsItemSource setShouldHideSearchResults:(sub_10000FA08(mapView) != 5) & v3];
}

- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal
{
  if (self->_droppedPin)
  {
    [(SearchPinsManager *)self _updateDroppedPinVisibility:venue];
  }
}

- (void)_startLoadingNewEndPOIShapes
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    v10 = [(NSArray *)selfCopy->_endPins count];
    *buf = 138543618;
    v25 = selfCopy;
    v26 = 2048;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will start loading POI shape for %lu end pins", buf, 0x16u);
  }

  [(SearchPinsManager *)self _setEndPOIShapes:0];
  mapView = [(SearchPinsManager *)self mapView];
  v12 = mapView;
  if (!mapView)
  {
    v15 = sub_100015F58();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy2, v20];

        goto LABEL_20;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy2];
LABEL_20:

LABEL_22:
    *buf = 138543362;
    v25 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] Map view is nil; will not load end POI shapes", buf, 0xCu);

    goto LABEL_23;
  }

  endPins = self->_endPins;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C345DC;
  v22[3] = &unk_10164E3A8;
  v23 = mapView;
  v14 = sub_100021DB0(endPins, v22);
  [(SearchPinsManager *)self _setEndPOIShapes:v14];

  v15 = v23;
LABEL_23:
}

- (void)_startLoadingNewStartPOIShape
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v21 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will start loading POI shape for start pin", buf, 0xCu);
  }

  [(SearchPinsManager *)self _setStartPOIShape:0];
  mapView = [(SearchPinsManager *)self mapView];
  if (!mapView)
  {
    startPin = sub_100015F58();
    if (!os_log_type_enabled(startPin, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_26;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_21;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_21:

LABEL_26:
    *buf = 138543362;
    v21 = selfCopy2;
    _os_log_impl(&_mh_execute_header, startPin, OS_LOG_TYPE_INFO, "[%{public}@] Map view is nil; will not load start POI shape", buf, 0xCu);

    goto LABEL_27;
  }

  startPin = [(SearchPinsManager *)self startPin];
  if ([startPin isDynamicCurrentLocation])
  {
    v12 = [POIShapeFactory userLocationPOIShapeWithMapView:mapView];
LABEL_24:
    v19 = v12;
    [(SearchPinsManager *)self _setStartPOIShape:v12];

    goto LABEL_27;
  }

  if (startPin)
  {
    v12 = [POIShapeFactory searchResultWaypointPOIShapeWithMapView:mapView searchResult:startPin];
    goto LABEL_24;
  }

LABEL_27:
}

- (void)_notifyDidLoadStartPOIShape:(id)shape endPOIShapes:(id)shapes
{
  shapeCopy = shape;
  shapesCopy = shapes;
  v8 = shapeCopy;
  v9 = shapesCopy;
  v10 = sub_100015F58();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

  v8 = shapeCopy;
LABEL_10:

  *buf = 138543874;
  v42 = selfCopy;
  v43 = 2112;
  v44 = v8;
  v45 = 2112;
  v46 = v9;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Notifying start and end POI shapes have finished loading: %@, %@", buf, 0x20u);

LABEL_11:
  [(NSHashTable *)self->_poiShapeLoadingObservers allObjects];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = *v37;
  v33 = *v37;
  do
  {
    v20 = 0;
    v34 = v18;
    do
    {
      if (*v37 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v36 + 1) + 8 * v20);
      v22 = sub_100015F58();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = v9;
        selfCopy2 = self;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_21;
        }

        selfCopy3 = self;
        v28 = v8;
        v29 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v30 = v29;
        if (v29 && ![v29 isEqualToString:v26])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy2, v30];

          v8 = v28;
          self = selfCopy3;
        }

        else
        {

          v8 = v28;
          self = selfCopy3;
LABEL_21:
          selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy2];
        }

        *buf = 138543618;
        v42 = selfCopy2;
        v43 = 2112;
        v44 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] Notifying observer %@", buf, 0x16u);

        v9 = v23;
        v19 = v33;
        v18 = v34;
      }

      [v21 poiShapeLoader:self didLoadStartPOIShape:v8 endPOIShapes:v9];
      v20 = v20 + 1;
    }

    while (v18 != v20);
    v32 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    v18 = v32;
  }

  while (v32);
LABEL_27:
}

- (void)_setEndPOIShapes:(id)shapes
{
  shapesCopy = shapes;
  endPOIShapes = self->_endPOIShapes;
  v7 = shapesCopy;
  v8 = endPOIShapes;
  if (!(v7 | v8))
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v7 isEqual:v8];

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = sub_100015F58();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_9:

    *buf = 138543618;
    v21 = selfCopy;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Setting end POI shapes: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_endPOIShapes, shapes);
  startPOIShapeIfLoaded = [(SearchPinsManager *)self startPOIShapeIfLoaded];
  v19 = startPOIShapeIfLoaded;
  if (v7 && startPOIShapeIfLoaded)
  {
    [(SearchPinsManager *)self _notifyDidLoadStartPOIShape:startPOIShapeIfLoaded endPOIShapes:v7];
  }

LABEL_14:
}

- (void)_setStartPOIShape:(id)shape
{
  shapeCopy = shape;
  if (self->_startPOIShape == shapeCopy)
  {
    goto LABEL_13;
  }

  v6 = sub_100015F58();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    *buf = 138543618;
    v16 = selfCopy;
    v17 = 2112;
    v18 = shapeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Setting start POI shape: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_startPOIShape, shape);
  endPOIShapesIfLoaded = [(SearchPinsManager *)self endPOIShapesIfLoaded];
  v14 = endPOIShapesIfLoaded;
  if (shapeCopy && endPOIShapesIfLoaded)
  {
    [(SearchPinsManager *)self _notifyDidLoadStartPOIShape:shapeCopy endPOIShapes:endPOIShapesIfLoaded];
  }

LABEL_13:
}

- (void)unregisterPOIShapeLoadingObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100015F58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2112;
    v15 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Removing observer: %@", buf, 0x16u);
  }

  [(NSHashTable *)self->_poiShapeLoadingObservers removeObject:observerCopy];
}

- (void)registerPOIShapeLoadingObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_100015F58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = selfCopy;
    v14 = 2112;
    v15 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Adding observer: %@", buf, 0x16u);
  }

  [(NSHashTable *)self->_poiShapeLoadingObservers addObject:observerCopy];
}

- (NSArray)endPOIShapesIfLoaded
{
  v3 = [(NSArray *)self->_endPins count];
  if (v3)
  {
    v4 = [(NSArray *)self->_endPOIShapes count];
    if (v4 == [(NSArray *)self->_endPins count])
    {
      endPOIShapes = self->_endPOIShapes;
    }

    else
    {
      endPOIShapes = 0;
    }

    v3 = endPOIShapes;
  }

  return v3;
}

- (void)clearLinkedPlacesAndPolygon
{
  placeCardLinkedPlacesItemSource = [(SearchPinsManager *)self placeCardLinkedPlacesItemSource];
  [placeCardLinkedPlacesItemSource updateForPlaceCardItem:0];

  mapView = [(SearchPinsManager *)self mapView];
  [mapView _setSelectedFeatureID:0];
}

- (void)showLinkedPlacesAndPolygonForPlaceCardItem:(id)item
{
  itemCopy = item;
  placeCardLinkedPlacesItemSource = [(SearchPinsManager *)self placeCardLinkedPlacesItemSource];
  [placeCardLinkedPlacesItemSource updateForPlaceCardItem:itemCopy];

  placeCardLinkedPlacesItemSource2 = [(SearchPinsManager *)self placeCardLinkedPlacesItemSource];
  featureID = [placeCardLinkedPlacesItemSource2 featureID];
  mapView = [(SearchPinsManager *)self mapView];
  [mapView _setSelectedFeatureID:featureID];
}

- (void)mapSelectionManagerDidDeselectSearchResult:(id)result
{
  [(SearchPinsManager *)self clearSingleResultPins];
  mapView = [(SearchPinsManager *)self mapView];
  if (sub_10000FA08(mapView) == 5)
  {
  }

  else
  {
    allSearchResults = [(SearchPinsManager *)self allSearchResults];
    v5 = [allSearchResults count];

    if (v5 == 1)
    {

      [(SearchPinsManager *)self clearSearchPins];
    }
  }
}

- (void)selectAndShowSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  v9 = [(SearchPinsManager *)self canSelectPin:resultCopy];
  if (userInterfaceIdiom != 5)
  {
    if (v9)
    {
      goto LABEL_16;
    }

    v12 = sub_100015F58();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy, v17];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy];
LABEL_12:

LABEL_14:
    *buf = 138543362;
    v35 = selfCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to show a search result not in the search pins manager!", buf, 0xCu);

LABEL_15:
    goto LABEL_16;
  }

  if ((v9 & 1) == 0)
  {
    mapCameraController = [(SearchPinsManager *)self mapCameraController];
    mapItem = [resultCopy mapItem];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100C35AB0;
    v31[3] = &unk_101656010;
    v31[4] = self;
    v32 = resultCopy;
    v33 = animatedCopy;
    [mapCameraController frameMapItem:mapItem animated:1 completion:v31];

    goto LABEL_31;
  }

LABEL_16:
  if (!resultCopy)
  {
    v20 = sub_100015F58();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_30:

      goto LABEL_31;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_29;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

        goto LABEL_26;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_26:

LABEL_29:
    *buf = 138543362;
    v35 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] No search result to select.", buf, 0xCu);

    goto LABEL_30;
  }

  if (self->_showSearchResultsAnimation)
  {
    objc_initWeak(buf, self);
    showSearchResultsAnimation = self->_showSearchResultsAnimation;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100C35B20;
    v27[3] = &unk_10164E380;
    objc_copyWeak(&v29, buf);
    v28 = resultCopy;
    v30 = animatedCopy;
    [(SearchPinsManagerShowSearchResultsAnimation *)showSearchResultsAnimation addCompletion:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:resultCopy animated:animatedCopy];
  }

LABEL_31:
}

- (void)dropPinsForSearchResults:(id)results searchDotPlaces:(id)places selectedSearchResult:(id)result animate:(BOOL)animate itemSource:(id)source
{
  animateCopy = animate;
  resultsCopy = results;
  resultCopy = result;
  sourceCopy = source;
  placesCopy = places;
  v16 = sub_100015F58();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  selfCopy = self;
  v42 = animateCopy;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  if (objc_opt_respondsToSelector())
  {
    v20 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
    v21 = v20;
    if (v20 && ![v20 isEqualToString:v19])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_8:

LABEL_10:
  v23 = selfCopy;
  v24 = [resultsCopy count];
  shouldHideSearchResults = [(SearchResultsItemSource *)selfCopy->_searchResultsItemSource shouldHideSearchResults];

  v26 = @"NO";
  if (shouldHideSearchResults)
  {
    v26 = @"YES";
  }

  v27 = v26;
  *buf = 138544130;
  v46 = selfCopy;
  v47 = 2048;
  v48 = v24;
  v49 = 2112;
  v50 = sourceCopy;
  v51 = 2112;
  v52 = v27;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Setting %lu results for %@. Hiding Results: %@", buf, 0x2Au);

  animateCopy = v42;
LABEL_13:

  [sourceCopy setSearchResults:resultsCopy];
  searchDotPlacesItemSource = [(SearchPinsManager *)self searchDotPlacesItemSource];
  v29 = [placesCopy copy];

  [searchDotPlacesItemSource setSearchDotPlaces:v29];
  if (![(SearchResultsItemSource *)self->_searchResultsItemSource shouldHideSearchResults])
  {
    goto LABEL_22;
  }

  v30 = sub_100015F58();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ![v34 isEqualToString:v33])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy2, v35];

        goto LABEL_20;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy2];
LABEL_20:

    *buf = 138543362;
    v46 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource is hiding results but we are setting search results. So unhide them", buf, 0xCu);
  }

  [(SearchResultsItemSource *)self->_searchResultsItemSource setShouldHideSearchResults:0];
LABEL_22:
  if (resultCopy)
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:resultCopy animated:animateCopy];
  }

  delegate = [(SearchPinsManager *)self delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    delegate2 = [(SearchPinsManager *)self delegate];
    [delegate2 setNeedsUserActivityUpdate];
  }

  if (resultCopy)
  {
    v43 = @"selectedSearchResult";
    v44 = resultCopy;
    v40 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  }

  else
  {
    v40 = 0;
  }

  v41 = +[NSNotificationCenter defaultCenter];
  [v41 postNotificationName:@"MapsPinsDroppedForSearchResultsNotification" object:self userInfo:v40];
}

- (void)selectLabelMarkerForSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  v7 = [(SearchResultsItemSource *)self->_searchResultsItemSource keysForSearchResult:resultCopy];
  if (![v7 count])
  {
    v8 = [(SearchResultsItemSource *)self->_droppedPinsItemSource keysForSearchResult:resultCopy];

    v7 = v8;
  }

  if (![v7 count])
  {
    v9 = [(SearchResultsItemSource *)self->_singleSearchResultItemSource keysForSearchResult:resultCopy];

    v7 = v9;
  }

  if (![v7 count])
  {
    v10 = [(RouteStartEndItemSource *)self->_routeStartEndItemSource itemMatchingLocation:resultCopy];
    keys = [v10 keys];

    v7 = keys;
  }

  if (![v7 count])
  {
    v15 = sub_100015F58();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      goto LABEL_20;
    }

    selfCopy = self;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy, v20];

        goto LABEL_16;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy];
LABEL_16:

    *buf = 138543618;
    v25 = selfCopy;
    v26 = 2112;
    v27 = resultCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] No keys found for search result: %@", buf, 0x16u);

    goto LABEL_17;
  }

  autocompletePerson = [resultCopy autocompletePerson];

  WeakRetained = objc_loadWeakRetained(&self->_mapSelectionManager);
  v14 = WeakRetained;
  if (autocompletePerson)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100C36304;
    v23[3] = &unk_10164E358;
    v23[4] = self;
    [WeakRetained selectLabelMarkerWithKeys:v7 animated:animatedCopy restoreRegion:0 completion:v23];
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C36310;
    v22[3] = &unk_10164E358;
    v22[4] = self;
    [WeakRetained selectLabelMarkerWithKeys:v7 animated:animatedCopy completion:v22];
  }

LABEL_20:
}

- (UIEdgeInsets)carRecommendedMapPadding
{
  UIEdgeInsetsMakeWithEdges();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_completeShowSearchResultsAnimation
{
  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation proceedWithDroppingPins:0];

  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
}

- (void)_clearShowSearchResultsAnimation
{
  v3 = sub_100015F58();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
  v10 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy->_showSearchResultsAnimation debugDescription];
  *buf = 138543618;
  v17 = selfCopy;
  v18 = 2112;
  v19 = v10;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Cancelling search result animation: %@", buf, 0x16u);

LABEL_11:
  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation cancel];
  showSearchResultsAnimation = self->_showSearchResultsAnimation;
  self->_showSearchResultsAnimation = 0;

  searchResultsDebugOverlay = [(SearchPinsManager *)self searchResultsDebugOverlay];
  polygons = [searchResultsDebugOverlay polygons];
  v14 = [polygons count];

  if (v14)
  {
    searchResultsDebugOverlay2 = [(SearchPinsManager *)self searchResultsDebugOverlay];
    [searchResultsDebugOverlay2 removeDrawnDebugMapRegions];
  }
}

- (void)mapViewDidBecomeFullyDrawn
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    v10 = [(SearchPinsManagerShowSearchResultsAnimation *)selfCopy->_showSearchResultsAnimation debugDescription];
    *buf = 138543618;
    v12 = selfCopy;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Map view is fully drawn, proceeding with dropping pins using animation: %@", buf, 0x16u);
  }

  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation proceedWithDroppingPins:1];
}

- (void)_animateShowingSearchResults:(id)results selectedSearchResult:(id)result historyItem:(id)item suggestedMapRegion:(id)region minZoom:(id)zoom maxZoom:(id)maxZoom disableAdditionalViewportPadding:(BOOL)padding completion:(id)self0
{
  resultsCopy = results;
  regionCopy = region;
  completionCopy = completion;
  maxZoomCopy = maxZoom;
  zoomCopy = zoom;
  itemCopy = item;
  resultCopy = result;
  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
  v22 = sub_100015F58();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v37 = completionCopy;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v36 = resultsCopy;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy, v27];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy];
LABEL_8:

    resultsCopy = v36;
LABEL_10:

    *buf = 138543618;
    v42 = selfCopy;
    v43 = 2048;
    v44 = [resultsCopy count];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] Initializing animation for %lu results", buf, 0x16u);

    completionCopy = v37;
  }

  v29 = [SearchPinsManagerShowSearchResultsAnimation alloc];
  mapCameraController = [(SearchPinsManager *)self mapCameraController];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100C36A3C;
  v39[3] = &unk_10164E330;
  v31 = completionCopy;
  v39[4] = self;
  v40 = v31;
  LOBYTE(v35) = padding;
  v32 = [(SearchPinsManagerShowSearchResultsAnimation *)v29 initWithSearchResults:resultsCopy selectedSearchResult:resultCopy historyItem:itemCopy suggestedMapRegion:regionCopy mapCameraController:mapCameraController minZoom:zoomCopy maxZoom:maxZoomCopy disableAdditionalViewportPadding:v35 completion:v39];

  showSearchResultsAnimation = self->_showSearchResultsAnimation;
  self->_showSearchResultsAnimation = v32;

  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation start];
  if (GEOConfigGetBOOL())
  {
    searchResultsDebugOverlay = [(SearchPinsManager *)self searchResultsDebugOverlay];
    [searchResultsDebugOverlay drawDebugMapRegionsWithSearchResults:resultsCopy suggestedMapRegion:regionCopy];
  }
}

- (void)setSearchPinsFromSearchInfo:(id)info scrollToResults:(BOOL)results displayPlaceCardForResult:(id)result historyItem:(id)item animated:(BOOL)animated itemSource:(id)source completion:(id)completion
{
  resultsCopy = results;
  infoCopy = info;
  resultCopy = result;
  itemCopy = item;
  sourceCopy = source;
  completionCopy = completion;
  if (self->_startPin && [(NSArray *)self->_endPins count]&& self->_searchResultsItemSource == sourceCopy)
  {
    [(SearchResultsItemSource *)sourceCopy setShouldHideSearchResults:0];
  }

  if (self->_searchResultsItemSource == sourceCopy)
  {
    [(SearchPinsManager *)self clearSearchPins];
  }

  delegate = [(SearchPinsManager *)self delegate];
  [delegate setSuggestedApplicationState:0];

  mapView = [(SearchPinsManager *)self mapView];
  [mapView setUserTrackingMode:0 animated:0];

  if ([infoCopy mapDisplayType] == 1)
  {
    mapView2 = [(SearchPinsManager *)self mapView];
    preferredConfiguration = [mapView2 preferredConfiguration];

    if ([preferredConfiguration conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
    {
      v20 = preferredConfiguration;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [v21 setShowsTopographicFeatures:1];
  }

  mapView3 = [(SearchPinsManager *)self mapView];
  [mapView3 _selectAnnotation:0 animated:0];

  self->_hasAutoSelectedResult = 1;
  selectedResult = [infoCopy selectedResult];
  mapRegion = [infoCopy mapRegion];
  v23 = sub_100015F58();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = sourceCopy;
      v28 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v26])
      {
        v30 = resultCopy;
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy, v29];

        sourceCopy = v27;
        goto LABEL_18;
      }

      sourceCopy = v27;
    }

    v30 = resultCopy;
    selfCopy = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy];
LABEL_18:

    *buf = 138543874;
    v98 = selfCopy;
    v99 = 2112;
    v100 = infoCopy;
    v101 = 2112;
    v102 = mapRegion;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] Server provided map region for searchInfo: %@ is %@", buf, 0x20u);

    resultCopy = v30;
  }

  results = [infoCopy results];
  if (self->_singleSearchResultItemSource == sourceCopy)
  {
    allSearchResults = [(SearchPinsManager *)self allSearchResults];
    v37 = [results arrayByAddingObjectsFromArray:allSearchResults];

    searchResults = [(SearchResultsItemSource *)self->_collectionPinsItemSource searchResults];
    v35 = [v37 arrayByAddingObjectsFromArray:searchResults];
    results = v37;
  }

  else
  {
    collectionPinsItemSource = self->_collectionPinsItemSource;
    if (collectionPinsItemSource == sourceCopy)
    {
      allSearchResults2 = [(SearchPinsManager *)self allSearchResults];
      v35 = [results arrayByAddingObjectsFromArray:allSearchResults2];

      if (!resultCopy)
      {
        goto LABEL_26;
      }

      searchResults = [resultCopy mapItem];
      [searchResults _displayMapRegion];
      mapRegion = results = mapRegion;
    }

    else
    {
      searchResults = [(SearchResultsItemSource *)collectionPinsItemSource searchResults];
      v35 = [results arrayByAddingObjectsFromArray:searchResults];
    }
  }

LABEL_26:
  v39 = sub_100015F58();
  if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_33;
  }

  selfCopy2 = self;
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  if (objc_opt_respondsToSelector())
  {
    v43 = resultCopy;
    v44 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
    v45 = v44;
    if (v44 && ![v44 isEqualToString:v42])
    {
      v46 = sourceCopy;
      selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v42, selfCopy2, v45];

      resultCopy = v43;
      goto LABEL_32;
    }

    resultCopy = v43;
  }

  v46 = sourceCopy;
  selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v42, selfCopy2];
LABEL_32:

  v48 = [v35 count];
  *buf = 138543618;
  v98 = selfCopy2;
  v99 = 2048;
  v100 = v48;
  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "[%{public}@] Setting search results with determining Region:%lu", buf, 0x16u);

  sourceCopy = v46;
LABEL_33:

  venuesManager = [(SearchPinsManager *)self venuesManager];
  v95 = 0;
  v96 = 0;
  v94 = v35;
  searchFieldItem = [infoCopy searchFieldItem];
  [venuesManager getMinZoom:&v96 maxZoom:&v95 resultsForDeterminingRegion:&v94 forDisplayingResults:v35 fromSearch:searchFieldItem];
  v51 = v96;
  v80 = v95;
  v52 = v94;

  if ([v52 count])
  {
    v53 = selectedResult;
    if (selectedResult && ([v52 containsObject:selectedResult] & 1) == 0)
    {

      results2 = [infoCopy results];

      v51 = 0;
      v52 = results2;
    }

    else
    {
      v54 = [v52 count];
      results3 = [infoCopy results];
      v56 = [results3 count];

      if (v54 < v56)
      {
        v57 = mapRegion;
        mapRegion = 0;
        goto LABEL_39;
      }

      v53 = selectedResult;
      if (!selectedResult)
      {
        goto LABEL_42;
      }
    }

LABEL_45:
    mapSelectionManager = [(SearchPinsManager *)self mapSelectionManager];
    [mapSelectionManager suspendUpdates];

    v65 = sub_100015F58();
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
LABEL_52:

      disableAdditionalViewportPadding = [infoCopy disableAdditionalViewportPadding];
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_100C38988;
      v90[3] = &unk_10164E2E0;
      v90[4] = self;
      v91 = infoCopy;
      v92 = v53;
      v93 = sourceCopy;
      LOBYTE(v77) = disableAdditionalViewportPadding;
      v61 = v80;
      v60 = itemCopy;
      v62 = mapRegion;
      [(SearchPinsManager *)self _animateShowingSearchResults:v52 selectedSearchResult:v92 historyItem:itemCopy suggestedMapRegion:mapRegion minZoom:v51 maxZoom:v80 disableAdditionalViewportPadding:v77 completion:v90];

      goto LABEL_53;
    }

    v79 = sourceCopy;
    selfCopy3 = self;
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    if (objc_opt_respondsToSelector())
    {
      v69 = [(SearchPinsManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v70 = v69;
      if (v69 && ![v69 isEqualToString:v68])
      {
        v71 = resultCopy;
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v68, selfCopy3, v70];

        goto LABEL_51;
      }
    }

    v71 = resultCopy;
    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v68, selfCopy3];
LABEL_51:

    v73 = [v52 count];
    *buf = 138543618;
    v98 = selfCopy3;
    v99 = 2048;
    v100 = v73;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "[%{public}@] Animate showing search results. Count: %lu", buf, 0x16u);

    resultCopy = v71;
    sourceCopy = v79;
    v53 = selectedResult;
    goto LABEL_52;
  }

  results4 = [infoCopy results];
  v51 = 0;
  v57 = v52;
  v52 = results4;
LABEL_39:
  v53 = selectedResult;

  if (selectedResult)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (resultsCopy)
  {
    mapSelectionManager2 = [(SearchPinsManager *)self mapSelectionManager];
    [mapSelectionManager2 suspendUpdates];

    LOBYTE(mapSelectionManager2) = [infoCopy disableAdditionalViewportPadding];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100C38A7C;
    v85[3] = &unk_10164E308;
    v85[4] = self;
    v86 = infoCopy;
    v87 = resultCopy;
    v88 = sourceCopy;
    v89 = completionCopy;
    LOBYTE(v77) = mapSelectionManager2;
    v61 = v80;
    v60 = itemCopy;
    v62 = mapRegion;
    [(SearchPinsManager *)self _animateShowingSearchResults:v52 selectedSearchResult:v87 historyItem:itemCopy suggestedMapRegion:mapRegion minZoom:v51 maxZoom:v80 disableAdditionalViewportPadding:v77 completion:v85];

    v53 = selectedResult;
  }

  else
  {
    results5 = [infoCopy results];
    searchDotPlaces = [infoCopy searchDotPlaces];
    [(SearchPinsManager *)self dropPinsForSearchResults:results5 searchDotPlaces:searchDotPlaces selectedSearchResult:resultCopy animate:1 itemSource:sourceCopy];

    v53 = selectedResult;
    v62 = mapRegion;
    v61 = v80;
    v60 = itemCopy;
  }

LABEL_53:
}

- (BOOL)_isShowingDirectionsPins
{
  startPin = [(SearchPinsManager *)self startPin];
  if (startPin)
  {
    v4 = 1;
  }

  else
  {
    endPin = [(SearchPinsManager *)self endPin];
    v4 = endPin != 0;
  }

  return v4;
}

- (void)clearCollectionPins
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v37 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will clear collection pins.", buf, 0xCu);
  }

  delegate = [(SearchPinsManager *)self delegate];
  [delegate setSuggestedApplicationState:0];

  if (self->_selectedLabelMarker)
  {
    mapView = [(SearchPinsManager *)self mapView];
    [mapView _deselectLabelMarkerAnimated:0];
  }

  searchResults = [(SearchResultsItemSource *)self->_collectionPinsItemSource searchResults];

  v13 = sub_100015F58();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!searchResults)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    selfCopy2 = self;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ![v34 isEqualToString:v33])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy2, v35];

        goto LABEL_36;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy2];
LABEL_36:

    *buf = 138543362;
    v37 = selfCopy2;
    v30 = "[%{public}@] No collections pins to clear, returning.";
    goto LABEL_37;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  selfCopy3 = self;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  if (objc_opt_respondsToSelector())
  {
    v18 = [(SearchPinsManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
    v19 = v18;
    if (v18 && ![v18 isEqualToString:v17])
    {
      selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy3, v19];

      goto LABEL_20;
    }
  }

  selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy3];
LABEL_20:

  *buf = 138543362;
  v37 = selfCopy3;
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] CollectionPinsItemSource is clearing search results.", buf, 0xCu);

LABEL_21:
  [(SearchResultsItemSource *)self->_collectionPinsItemSource setSearchResults:&__NSArray0__struct];
  delegate2 = [(SearchPinsManager *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    delegate3 = [(SearchPinsManager *)self delegate];
    [delegate3 setNeedsUserActivityUpdate];
  }

  v13 = sub_100015F58();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    selfCopy4 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(SearchPinsManager *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy4, v28];

        goto LABEL_29;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy4];
LABEL_29:

    *buf = 138543362;
    v37 = selfCopy2;
    v30 = "[%{public}@] Clearing collection pins completed";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v30, buf, 0xCu);
  }

LABEL_38:
}

- (void)clearSingleResultPins
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v41 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will clear single result pins.", buf, 0xCu);
  }

  searchResults = [(SearchResultsItemSource *)self->_singleSearchResultItemSource searchResults];
  v11 = [searchResults count];

  v12 = sub_100015F58();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    selfCopy2 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v37, selfCopy2, v39];

        goto LABEL_34;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v37, selfCopy2];
LABEL_34:

    *buf = 138543362;
    v41 = selfCopy2;
    v34 = "[%{public}@] No single result pins to clear, returning.";
    goto LABEL_35;
  }

  if (!v13)
  {
    goto LABEL_19;
  }

  selfCopy3 = self;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  if (objc_opt_respondsToSelector())
  {
    v17 = [(SearchPinsManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
    v18 = v17;
    if (v17 && ![v17 isEqualToString:v16])
    {
      selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy3, v18];

      goto LABEL_18;
    }
  }

  selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy3];
LABEL_18:

  *buf = 138543362;
  v41 = selfCopy3;
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] _singleSearchResultItemSource is clearing search results.", buf, 0xCu);

LABEL_19:
  [(SearchResultsItemSource *)self->_singleSearchResultItemSource setSearchResults:&__NSArray0__struct];
  searchResultsItemSource = self->_searchResultsItemSource;
  searchResultsItemSource = [(SearchPinsManager *)self searchResultsItemSource];
  searchResults2 = [searchResultsItemSource searchResults];
  [(SearchResultsItemSource *)searchResultsItemSource setSearchResults:searchResults2];

  searchDotPlacesItemSource = self->_searchDotPlacesItemSource;
  searchDotPlacesItemSource = [(SearchPinsManager *)self searchDotPlacesItemSource];
  searchDotPlaces = [searchDotPlacesItemSource searchDotPlaces];
  [(SearchDotPlacesItemSource *)searchDotPlacesItemSource setSearchDotPlaces:searchDotPlaces];

  delegate = [(SearchPinsManager *)self delegate];
  LOBYTE(searchDotPlacesItemSource) = objc_opt_respondsToSelector();

  if (searchDotPlacesItemSource)
  {
    delegate2 = [(SearchPinsManager *)self delegate];
    [delegate2 setNeedsUserActivityUpdate];
  }

  v12 = sub_100015F58();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    selfCopy4 = self;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [(SearchPinsManager *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v30, selfCopy4, v32];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v30, selfCopy4];
LABEL_27:

    *buf = 138543362;
    v41 = selfCopy2;
    v34 = "[%{public}@] Clearing single result pins completed";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
  }

LABEL_36:
}

- (void)clearDroppedPin
{
  customPOIsController = [(SearchPinsManager *)self customPOIsController];

  if (customPOIsController)
  {
    v4 = sub_100015F58();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(SearchResultsItemSource *)self->_droppedPinsItemSource setSearchResults:&__NSArray0__struct];
      goto LABEL_13;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v24 = selfCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Clearing DroppedPinsItemSource.", buf, 0xCu);

    goto LABEL_12;
  }

LABEL_13:
  if (!self->_droppedPin)
  {
    return;
  }

  mapSelectionManager = [(SearchPinsManager *)self mapSelectionManager];
  customLabelMarker = [mapSelectionManager customLabelMarker];
  searchResult = [customLabelMarker searchResult];

  if (searchResult && [searchResult type] == 3)
  {
    mapSelectionManager2 = [(SearchPinsManager *)self mapSelectionManager];
    [mapSelectionManager2 clearSelection];
  }

  v15 = sub_100015F58();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy2, v20];

        goto LABEL_23;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy2];
LABEL_23:

    *buf = 138543362;
    v24 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] Setting dropped pin to nil.", buf, 0xCu);
  }

  droppedPin = self->_droppedPin;
  self->_droppedPin = 0;
}

- (void)clearSearchPins
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v41 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will clear search pins.", buf, 0xCu);
  }

  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
  delegate = [(SearchPinsManager *)self delegate];
  [delegate setSuggestedApplicationState:0];

  if (self->_selectedLabelMarker)
  {
    mapView = [(SearchPinsManager *)self mapView];
    [mapView _deselectLabelMarkerAnimated:0];
  }

  if (!self->_startPin && ![(NSArray *)self->_endPins count])
  {
    v12 = sub_100015F58();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      mapView2 = [(SearchPinsManager *)self mapView];
      preferredConfiguration = [mapView2 preferredConfiguration];

      if ([preferredConfiguration conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
      {
        v21 = preferredConfiguration;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      [v22 setShowsTopographicFeatures:0];
      goto LABEL_26;
    }

    selfCopy2 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_21;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_21:

    *buf = 138543362;
    v41 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Clearing the topographic map", buf, 0xCu);

    goto LABEL_22;
  }

LABEL_26:
  v23 = sub_100015F58();
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    goto LABEL_33;
  }

  selfCopy3 = self;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  if (objc_opt_respondsToSelector())
  {
    v27 = [(SearchPinsManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
    v28 = v27;
    if (v27 && ![v27 isEqualToString:v26])
    {
      selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy3, v28];

      goto LABEL_32;
    }
  }

  selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy3];
LABEL_32:

  *buf = 138543362;
  v41 = selfCopy3;
  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource is clearing search results.", buf, 0xCu);

LABEL_33:
  [(SearchResultsItemSource *)self->_searchResultsItemSource setSearchResults:&__NSArray0__struct];
  [(SearchDotPlacesItemSource *)self->_searchDotPlacesItemSource setSearchDotPlaces:&__NSArray0__struct];
  delegate2 = [(SearchPinsManager *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    delegate3 = [(SearchPinsManager *)self delegate];
    [delegate3 setNeedsUserActivityUpdate];
  }

  v33 = sub_100015F58();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    selfCopy4 = self;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(SearchPinsManager *)selfCopy4 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v36, selfCopy4, v38];

        goto LABEL_41;
      }
    }

    selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v36, selfCopy4];
LABEL_41:

    *buf = 138543362;
    v41 = selfCopy4;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}@] Clearing search pins completed", buf, 0xCu);
  }
}

- (void)clearDirectionsPins
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v14 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing directions pins.", buf, 0xCu);
  }

  [(SearchPinsManager *)self _clearStartPin];
  [(SearchPinsManager *)self _clearEndPins];
  routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
  [routeStartEndItemSource clearStartAndEndLocations];

  searchResultsItemSource = [(SearchPinsManager *)self searchResultsItemSource];
  [searchResultsItemSource setShouldHideSearchResults:0];

  searchDotPlacesItemSource = [(SearchPinsManager *)self searchDotPlacesItemSource];
  [searchDotPlacesItemSource setShouldHideSearchDotPlaces:0];

  [(SearchPinsManager *)self _updateDroppedPinVisibility];
}

- (void)_clearEndPins
{
  if (![(NSArray *)self->_endPins count])
  {
    return;
  }

  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v25 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing end pins", buf, 0xCu);
  }

  v10 = [(SearchPinsManager *)self _setOfPinsForPinType:9];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_endPins;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v10 containsObject:v16])
        {
          if (v16 == self->_droppedPin)
          {
            v17 = 3;
          }

          else
          {
            v17 = 1;
          }

          [(SearchResult *)v16 setAppearance:v17];
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  endPins = self->_endPins;
  self->_endPins = 0;

  [(SearchPinsManager *)self _setEndPOIShapes:0];
}

- (void)_clearStartPin
{
  if (!self->_startPin)
  {
    return;
  }

  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

    *buf = 138543362;
    v16 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing start pin", buf, 0xCu);
  }

  v10 = [(SearchPinsManager *)self _setOfPinsForPinType:9];
  if ([v10 containsObject:self->_startPin])
  {
    startPin = self->_startPin;
    if (startPin == self->_droppedPin)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    [(SearchResult *)startPin setAppearance:v12];
  }

  v13 = self->_startPin;
  self->_startPin = 0;

  hiddenStartPin = self->_hiddenStartPin;
  self->_hiddenStartPin = 0;

  [(SearchPinsManager *)self _setStartPOIShape:0];
}

- (void)setDisableEndPins:(BOOL)pins
{
  pinsCopy = pins;
  routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
  v4 = [routeStartEndItemSource visibilityMask] & 0xFFFFFFFFFFFFFFF9;
  v5 = 6;
  if (pinsCopy)
  {
    v5 = 0;
  }

  [routeStartEndItemSource setVisibilityMask:v4 | v5];
}

- (BOOL)disableEndPins
{
  routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
  v3 = ([routeStartEndItemSource visibilityMask] & 4) == 0;

  return v3;
}

- (void)setDisableStartPin:(BOOL)pin
{
  pinCopy = pin;
  routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
  [routeStartEndItemSource setVisibilityMask:{objc_msgSend(routeStartEndItemSource, "visibilityMask") & 0xFFFFFFFFFFFFFFFELL | !pinCopy}];
}

- (BOOL)disableStartPin
{
  routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
  v3 = ([routeStartEndItemSource visibilityMask] & 1) == 0;

  return v3;
}

- (BOOL)canSelectPin:(id)pin
{
  pinCopy = pin;
  allSearchResults = [(SearchPinsManager *)self allSearchResults];
  v6 = [allSearchResults _maps_containsSearchResultEqualToResult:pinCopy forPurpose:5];

  searchResults = [(SearchResultsItemSource *)self->_droppedPinsItemSource searchResults];
  v8 = [searchResults _maps_containsSearchResultEqualToResult:pinCopy forPurpose:5];

  searchResults2 = [(SearchResultsItemSource *)self->_singleSearchResultItemSource searchResults];
  LOBYTE(searchResults) = [searchResults2 _maps_containsSearchResultEqualToResult:pinCopy forPurpose:5];

  return (v6 | v8 | searchResults) & 1;
}

- (void)selectDroppedPinIsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:droppedPin animated:animatedCopy];
    v6 = self->_droppedPin;
    v9 = @"selectedSearchResult";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MapsPinsDroppedForSearchResultsNotification" object:self userInfo:v7];
  }
}

- (void)setDroppedPin:(id)pin animated:(BOOL)animated shouldSelect:(BOOL)select
{
  selectCopy = select;
  animatedCopy = animated;
  pinCopy = pin;
  if (self->_droppedPin)
  {
    [(SearchPinsManager *)self clearDroppedPin];
  }

  droppedPinsItemSource = self->_droppedPinsItemSource;
  v16 = pinCopy;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [(SearchResultsItemSource *)droppedPinsItemSource setSearchResults:v10];

  droppedPin = self->_droppedPin;
  self->_droppedPin = pinCopy;
  v12 = pinCopy;

  [(SearchPinsManager *)self _updateDroppedPinVisibility];
  if (selectCopy)
  {
    [(SearchPinsManager *)self selectDroppedPinIsAnimated:animatedCopy];
  }

  delegate = [(SearchPinsManager *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(SearchPinsManager *)self delegate];
    [delegate2 setNeedsUserActivityUpdate];
  }
}

- (void)setStartPin:(id)pin endPins:(id)pins useAlternateDirectionsPins:(BOOL)directionsPins
{
  directionsPinsCopy = directionsPins;
  pinCopy = pin;
  pinsCopy = pins;
  [(SearchPinsManager *)self _completeShowSearchResultsAnimation];
  useAlternateDirectionsPins = self->_useAlternateDirectionsPins;
  v64 = pinCopy;
  if (useAlternateDirectionsPins == directionsPinsCopy)
  {
    if (!(pinCopy | self->_startPin))
    {
      v10 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
LABEL_7:
      v12 = [(NSArray *)self->_endPins count];
      v13 = v12 != [pinsCopy count];
      v11 = v74;
      goto LABEL_9;
    }

    v10 = [pinCopy isEqualToSearchResult:? forPurpose:?] ^ 1;
    useAlternateDirectionsPins = self->_useAlternateDirectionsPins;
  }

  else
  {
    v10 = 1;
  }

  v11 = &v73;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  if (useAlternateDirectionsPins == directionsPinsCopy)
  {
    goto LABEL_7;
  }

  v13 = 1;
LABEL_9:
  v76 = v13;
  if ((v11[3] & 1) == 0)
  {
    endPins = self->_endPins;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100C3B16C;
    v70[3] = &unk_101650128;
    v71 = pinsCopy;
    v72 = &v73;
    [(NSArray *)endPins enumerateObjectsUsingBlock:v70];
  }

  v15 = [(SearchPinsManager *)self _setOfPinsForPinType:9];
  self->_useAlternateDirectionsPins = directionsPinsCopy;
  if (v10)
  {
    p_startPin = &self->_startPin;
    if (self->_startPin)
    {
      [(SearchPinsManager *)self _clearStartPin];
    }

    v17 = [v15 _maps_searchResultMemberEqualToResult:v64 forPurpose:1];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v64;
    }

    objc_storeStrong(&self->_startPin, v19);
    [(SearchResult *)*p_startPin setAppearance:2];
    v20 = sub_100015F58();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    selfCopy = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ([v24 isEqualToString:v23] & 1) == 0)
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy, v25];

        goto LABEL_23;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy];
LABEL_23:

    v27 = *p_startPin;
    *buf = 138543618;
    v78 = selfCopy;
    v79 = 2112;
    v80 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}@] Setting start pin: %@", buf, 0x16u);

LABEL_24:
  }

  if (*(v74 + 24) == 1)
  {
    if (self->_endPins)
    {
      [(SearchPinsManager *)self _clearEndPins];
    }

    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(pinsCopy, "count")}];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v29 = pinsCopy;
    v30 = [v29 countByEnumeratingWithState:&v66 objects:v83 count:16];
    if (v30)
    {
      v31 = *v67;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v67 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v66 + 1) + 8 * i);
          v34 = [v15 _maps_searchResultMemberEqualToResult:v33 forPurpose:1];
          v35 = v34;
          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = v33;
          }

          v37 = v36;
          [v37 setAppearance:1];
          [v28 addObject:v37];
        }

        v30 = [v29 countByEnumeratingWithState:&v66 objects:v83 count:16];
      }

      while (v30);
    }

    v38 = [v28 copy];
    v39 = self->_endPins;
    self->_endPins = v38;

    v40 = sub_100015F58();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    selfCopy2 = self;
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    if (objc_opt_respondsToSelector())
    {
      v44 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v45 = v44;
      if (v44 && ([v44 isEqualToString:v43] & 1) == 0)
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v43, selfCopy2, v45];

        goto LABEL_44;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v43, selfCopy2];
LABEL_44:

    v47 = self->_endPins;
    *buf = 138543618;
    v78 = selfCopy2;
    v79 = 2112;
    v80 = v47;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}@] Setting end pins: %@", buf, 0x16u);

LABEL_45:
  }

  if ((v10 & 1) != 0 || *(v74 + 24) == 1)
  {
    routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
    [routeStartEndItemSource setStartLocation:self->_startPin endLocations:self->_endPins];

    mapSelectionManager = [(SearchPinsManager *)self mapSelectionManager];
    [mapSelectionManager clearSelection];

    if (v10 && self->_startPin)
    {
      [(SearchPinsManager *)self _startLoadingNewStartPOIShape];
    }

    if (*(v74 + 24) == 1 && [(NSArray *)self->_endPins count])
    {
      [(SearchPinsManager *)self _startLoadingNewEndPOIShapes];
    }

    mapView = [(SearchPinsManager *)self mapView];
    v51 = sub_10000FA08(mapView) == 5;

    if (v51)
    {
      goto LABEL_63;
    }

    v52 = sub_100015F58();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
LABEL_62:

      searchResultsItemSource = [(SearchPinsManager *)self searchResultsItemSource];
      [searchResultsItemSource setShouldHideSearchResults:1];

      searchDotPlacesItemSource = [(SearchPinsManager *)self searchDotPlacesItemSource];
      [searchDotPlacesItemSource setShouldHideSearchDotPlaces:1];

LABEL_63:
      [(SearchPinsManager *)self _updateDroppedPinVisibility];
      goto LABEL_64;
    }

    selfCopy3 = self;
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    if (objc_opt_respondsToSelector())
    {
      v56 = [(SearchPinsManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v57 = v56;
      if (v56 && ([v56 isEqualToString:v55] & 1) == 0)
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v55, selfCopy3, v57];

        goto LABEL_61;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v55, selfCopy3];
LABEL_61:

    v59 = selfCopy3;
    searchResultsItemSource2 = [(SearchPinsManager *)selfCopy3 searchResultsItemSource];
    searchDotPlacesItemSource2 = [(SearchPinsManager *)selfCopy3 searchDotPlacesItemSource];
    *buf = 138543874;
    v78 = v59;
    v79 = 2048;
    v80 = searchResultsItemSource2;
    v81 = 2048;
    v82 = searchDotPlacesItemSource2;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource<%p>, SearchDotPlacesItemSource<%p> will hide search results.", buf, 0x20u);

    goto LABEL_62;
  }

LABEL_64:

  _Block_object_dispose(&v73, 8);
}

- (void)setStartPin:(id)pin endPin:(id)endPin useAlternateDirectionsPins:(BOOL)pins
{
  pinsCopy = pins;
  endPinCopy = endPin;
  v9 = endPinCopy;
  if (endPinCopy)
  {
    v12 = endPinCopy;
    pinCopy = pin;
    pinCopy2 = [NSArray arrayWithObjects:&v12 count:1];
    [(SearchPinsManager *)self setStartPin:pinCopy endPins:pinCopy2 useAlternateDirectionsPins:pinsCopy, v12];
  }

  else
  {
    pinCopy2 = pin;
    [(SearchPinsManager *)self setStartPin:pinCopy2 endPins:0 useAlternateDirectionsPins:pinsCopy];
  }
}

- (void)setSearchPins:(id)pins selectedPin:(id)pin animated:(BOOL)animated
{
  animatedCopy = animated;
  pinsCopy = pins;
  pinCopy = pin;
  [(SearchPinsManager *)self clearSearchPins];
  v10 = [(SearchPinsManager *)self _setOfPinsForPinType:6];
  v11 = [(SearchResultsItemSource *)pinsCopy mutableCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 removeObject:*(*(&v43 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v14);
  }

  [(SearchPinsManager *)self dropPinsForSearchResults:v11 animate:animatedCopy];
  v17 = sub_100015F58();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v41 = pinCopy;
    v40 = animatedCopy;
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_17;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v20, selfCopy, v22];

        goto LABEL_15;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v20, selfCopy];
LABEL_15:

LABEL_17:
    v24 = selfCopy;
    v25 = [(SearchResultsItemSource *)pinsCopy count];
    searchResultsItemSource = selfCopy->_searchResultsItemSource;
    shouldHideSearchResults = [(SearchResultsItemSource *)searchResultsItemSource shouldHideSearchResults];

    v28 = @"NO";
    if (shouldHideSearchResults)
    {
      v28 = @"YES";
    }

    v29 = v28;
    *buf = 138544130;
    v48 = selfCopy;
    v49 = 2048;
    v50 = v25;
    v51 = 2048;
    v52 = searchResultsItemSource;
    v53 = 2112;
    v54 = v29;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Setting %lu search results for SearchResultsItemSource<%p>. SearchResultsItemSource hiding results: %@", buf, 0x2Au);

    animatedCopy = v40;
    pinCopy = v41;
  }

  if (![(SearchResultsItemSource *)self->_searchResultsItemSource shouldHideSearchResults])
  {
    goto LABEL_29;
  }

  v30 = sub_100015F58();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v42 = pinCopy;
    v31 = animatedCopy;
    selfCopy2 = self;
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [(SearchPinsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ![v35 isEqualToString:v34])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v34, selfCopy2, v36];

        goto LABEL_27;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v34, selfCopy2];
LABEL_27:

    v38 = self->_searchResultsItemSource;
    *buf = 138543874;
    v48 = selfCopy2;
    v49 = 2048;
    v50 = v38;
    v51 = 2112;
    v52 = pinsCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource<%p> Setting search results:\n(%@) but results were hidden. Unhiding them.", buf, 0x20u);

    animatedCopy = v31;
    pinCopy = v42;
  }

  [(SearchResultsItemSource *)self->_searchResultsItemSource setShouldHideSearchResults:0];
LABEL_29:
  [(SearchResultsItemSource *)self->_searchResultsItemSource setSearchResults:pinsCopy];
  mapView = [(SearchPinsManager *)self mapView];
  [mapView _setApplicationState:0];

  if (pinCopy)
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:pinCopy animated:animatedCopy];
  }
}

- (SearchResult)endPin
{
  endPins = [(SearchPinsManager *)self endPins];
  lastObject = [endPins lastObject];

  return lastObject;
}

- (id)_setOfPinsForPinType:(unint64_t)type
{
  typeCopy = type;
  allSearchResults = [(SearchPinsManager *)self allSearchResults];
  v6 = allSearchResults;
  if ((typeCopy & 1) != 0 && [allSearchResults count])
  {
    v7 = [[NSMutableSet alloc] initWithArray:v6];
  }

  else
  {
    v7 = [[NSMutableSet alloc] initWithCapacity:3];
  }

  v8 = v7;
  if ((typeCopy & 2) != 0 && self->_startPin)
  {
    [v7 addObject:?];
  }

  if ((typeCopy & 4) != 0 && [(NSArray *)self->_endPins count])
  {
    [v8 addObjectsFromArray:self->_endPins];
  }

  if ((typeCopy & 8) != 0 && self->_droppedPin)
  {
    [v8 addObject:?];
  }

  return v8;
}

- (void)setCustomPOIsController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_customPOIsController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_customPOIsController, obj);
    v5 = obj;
    if (obj)
    {
      if (self->_startPin)
      {
        [(SearchPinsManager *)self _startLoadingNewStartPOIShape];
      }

      v6 = [(NSArray *)self->_endPins count];
      v5 = obj;
      if (v6)
      {
        [(SearchPinsManager *)self _startLoadingNewEndPOIShapes];
        v5 = obj;
      }
    }
  }
}

- (void)setMapCameraController:(id)controller
{
  controllerCopy = controller;
  if (self->_mapCameraController != controllerCopy)
  {
    v16 = controllerCopy;
    objc_storeStrong(&self->_mapCameraController, controller);
    searchResultsItemSource = [(SearchPinsManager *)self searchResultsItemSource];
    searchResultsItemSource2 = [(SearchPinsManager *)self searchResultsItemSource];
    searchResults = [searchResultsItemSource2 searchResults];
    [searchResultsItemSource setSearchResults:searchResults];

    droppedPinsItemSource = [(SearchPinsManager *)self droppedPinsItemSource];
    droppedPinsItemSource2 = [(SearchPinsManager *)self droppedPinsItemSource];
    searchResults2 = [droppedPinsItemSource2 searchResults];
    [droppedPinsItemSource setSearchResults:searchResults2];

    routeStartEndItemSource = [(SearchPinsManager *)self routeStartEndItemSource];
    [routeStartEndItemSource setStartLocation:self->_startPin endLocations:self->_endPins];

    searchDotPlacesItemSource = [(SearchPinsManager *)self searchDotPlacesItemSource];
    searchDotPlacesItemSource2 = [(SearchPinsManager *)self searchDotPlacesItemSource];
    searchDotPlaces = [searchDotPlacesItemSource2 searchDotPlaces];
    [searchDotPlacesItemSource setSearchDotPlaces:searchDotPlaces];

    controllerCopy = v16;
  }
}

- (MKMapView)mapView
{
  mapCameraController = [(SearchPinsManager *)self mapCameraController];
  mapView = [mapCameraController mapView];

  return mapView;
}

- (void)dealloc
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Deallocating", buf, 0xCu);
  }

  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
  hiddenStartPin = self->_hiddenStartPin;
  self->_hiddenStartPin = 0;

  v11.receiver = self;
  v11.super_class = SearchPinsManager;
  [(SearchPinsManager *)&v11 dealloc];
}

- (SearchPinsManager)initWithMapViewCameraController:(id)controller
{
  controllerCopy = controller;
  v33.receiver = self;
  v33.super_class = SearchPinsManager;
  v6 = [(SearchPinsManager *)&v33 init];
  if (v6)
  {
    v7 = sub_100015F58();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      objc_storeStrong(&v6->_mapCameraController, controller);
      v14 = objc_alloc_init(SearchResultsItemSource);
      searchResultsItemSource = v6->_searchResultsItemSource;
      v6->_searchResultsItemSource = v14;

      [(SearchResultsItemSource *)v6->_searchResultsItemSource setMode:0];
      [(SearchResultsItemSource *)v6->_searchResultsItemSource setPreferredDisplayedSearchResultType:1];
      v16 = objc_alloc_init(SearchResultsItemSource);
      droppedPinsItemSource = v6->_droppedPinsItemSource;
      v6->_droppedPinsItemSource = v16;

      [(SearchResultsItemSource *)v6->_droppedPinsItemSource setMode:1];
      v18 = objc_alloc_init(SearchResultsItemSource);
      collectionPinsItemSource = v6->_collectionPinsItemSource;
      v6->_collectionPinsItemSource = v18;

      [(SearchResultsItemSource *)v6->_collectionPinsItemSource setMode:0];
      v20 = objc_alloc_init(SearchResultsItemSource);
      singleSearchResultItemSource = v6->_singleSearchResultItemSource;
      v6->_singleSearchResultItemSource = v20;

      [(SearchResultsItemSource *)v6->_singleSearchResultItemSource setMode:0];
      v22 = objc_alloc_init(RouteStartEndItemSource);
      routeStartEndItemSource = v6->_routeStartEndItemSource;
      v6->_routeStartEndItemSource = v22;

      v24 = objc_alloc_init(PlaceCardLinkedPlacesItemSource);
      placeCardLinkedPlacesItemSource = v6->_placeCardLinkedPlacesItemSource;
      v6->_placeCardLinkedPlacesItemSource = v24;

      v26 = objc_alloc_init(SearchDotPlacesItemSource);
      searchDotPlacesItemSource = v6->_searchDotPlacesItemSource;
      v6->_searchDotPlacesItemSource = v26;

      v28 = objc_alloc_init(ParkedCarItemSource);
      parkedCarItemSource = v6->_parkedCarItemSource;
      v6->_parkedCarItemSource = v28;

      v30 = +[NSHashTable weakObjectsHashTable];
      poiShapeLoadingObservers = v6->_poiShapeLoadingObservers;
      v6->_poiShapeLoadingObservers = v30;

      goto LABEL_10;
    }

    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(SearchPinsManager *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

    *buf = 138543362;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Initializing", buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

@end