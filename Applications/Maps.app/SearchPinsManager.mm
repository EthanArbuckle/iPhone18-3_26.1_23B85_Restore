@interface SearchPinsManager
- (BOOL)_canDroppedPinBeVisibleInVenue;
- (BOOL)_isShowingDirectionsPins;
- (BOOL)canSelectPin:(id)a3;
- (BOOL)disableEndPins;
- (BOOL)disableStartPin;
- (CustomPOIsController)customPOIsController;
- (MKMapView)mapView;
- (MapSelectionManager)mapSelectionManager;
- (NSArray)endPOIShapesIfLoaded;
- (SearchPinsManager)initWithMapViewCameraController:(id)a3;
- (SearchPinsManagerDelegate)delegate;
- (SearchResult)endPin;
- (SearchResultsDebugOverlay)searchResultsDebugOverlay;
- (UIEdgeInsets)carRecommendedMapPadding;
- (VenuesManager)venuesManager;
- (id)_setOfPinsForPinType:(unint64_t)a3;
- (void)_animateShowingSearchResults:(id)a3 selectedSearchResult:(id)a4 historyItem:(id)a5 suggestedMapRegion:(id)a6 minZoom:(id)a7 maxZoom:(id)a8 disableAdditionalViewportPadding:(BOOL)a9 completion:(id)a10;
- (void)_clearEndPins;
- (void)_clearShowSearchResultsAnimation;
- (void)_clearStartPin;
- (void)_completeShowSearchResultsAnimation;
- (void)_notifyDidLoadStartPOIShape:(id)a3 endPOIShapes:(id)a4;
- (void)_setEndPOIShapes:(id)a3;
- (void)_setStartPOIShape:(id)a3;
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
- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5;
- (void)dropPinsForSearchResults:(id)a3 searchDotPlaces:(id)a4 selectedSearchResult:(id)a5 animate:(BOOL)a6 itemSource:(id)a7;
- (void)mapSelectionManagerDidDeselectSearchResult:(id)a3;
- (void)mapViewDidBecomeFullyDrawn;
- (void)registerPOIShapeLoadingObserver:(id)a3;
- (void)selectAndShowSearchResult:(id)a3 animated:(BOOL)a4;
- (void)selectDroppedPinIsAnimated:(BOOL)a3;
- (void)selectLabelMarkerForSearchResult:(id)a3 animated:(BOOL)a4;
- (void)setCustomPOIsController:(id)a3;
- (void)setDisableEndPins:(BOOL)a3;
- (void)setDisableStartPin:(BOOL)a3;
- (void)setDroppedPin:(id)a3 animated:(BOOL)a4 shouldSelect:(BOOL)a5;
- (void)setMapCameraController:(id)a3;
- (void)setSearchPins:(id)a3 selectedPin:(id)a4 animated:(BOOL)a5;
- (void)setSearchPinsFromSearchInfo:(id)a3 scrollToResults:(BOOL)a4 displayPlaceCardForResult:(id)a5 historyItem:(id)a6 animated:(BOOL)a7 itemSource:(id)a8 completion:(id)a9;
- (void)setStartPin:(id)a3 endPin:(id)a4 useAlternateDirectionsPins:(BOOL)a5;
- (void)setStartPin:(id)a3 endPins:(id)a4 useAlternateDirectionsPins:(BOOL)a5;
- (void)showLinkedPlacesAndPolygonForPlaceCardItem:(id)a3;
- (void)unregisterPOIShapeLoadingObserver:(id)a3;
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
    v5 = [(SearchPinsManager *)self mapView];
    v6 = [(SearchResultsDebugOverlay *)v4 initWithMapView:v5];
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
  v7 = [(SearchPinsManager *)self mapView];
  v8 = [v7 _mapLayer];
  v9 = [v8 venueAtLocation:0 withMarginForError:{v4, v6}];

  v10 = [(SearchPinsManager *)self mapView];
  v11 = [v10 displayedFloorOrdinalForBuildingsInVenue:v9];

  v12 = [(SearchPinsManager *)self mapView];
  v13 = [v12 venueWithFocus];
  v14 = [v13 venueID];
  v15 = 0;
  if (v14 == [v9 venueID])
  {
    v15 = [(SearchResultRepr *)self->_droppedPin floorOrdinal]== v11;
  }

  v16 = [(SearchPinsManager *)self mapView];
  v17 = [v16 venueWithFocus];
  if (v17)
  {
    v18 = [(SearchPinsManager *)self mapView];
    v19 = [v18 venueWithFocus];
    v20 = [v19 venueID];
    v21 = v20 != [v9 venueID];
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

  v6 = [(SearchPinsManager *)self mapView];
  [(SearchResultsItemSource *)self->_droppedPinsItemSource setShouldHideSearchResults:(sub_10000FA08(v6) != 5) & v3];
}

- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5
{
  if (self->_droppedPin)
  {
    [(SearchPinsManager *)self _updateDroppedPinVisibility:a3];
  }
}

- (void)_startLoadingNewEndPOIShapes
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = [(NSArray *)v4->_endPins count];
    *buf = 138543618;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will start loading POI shape for %lu end pins", buf, 0x16u);
  }

  [(SearchPinsManager *)self _setEndPOIShapes:0];
  v11 = [(SearchPinsManager *)self mapView];
  v12 = v11;
  if (!v11)
  {
    v15 = sub_100015F58();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v16 = self;
    if (!v16)
    {
      v21 = @"<nil>";
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(SearchPinsManager *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_20;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_20:

LABEL_22:
    *buf = 138543362;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] Map view is nil; will not load end POI shapes", buf, 0xCu);

    goto LABEL_23;
  }

  endPins = self->_endPins;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C345DC;
  v22[3] = &unk_10164E3A8;
  v23 = v11;
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will start loading POI shape for start pin", buf, 0xCu);
  }

  [(SearchPinsManager *)self _setStartPOIShape:0];
  v10 = [(SearchPinsManager *)self mapView];
  if (!v10)
  {
    v11 = sub_100015F58();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_26;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SearchPinsManager *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_21;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_21:

LABEL_26:
    *buf = 138543362;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Map view is nil; will not load start POI shape", buf, 0xCu);

    goto LABEL_27;
  }

  v11 = [(SearchPinsManager *)self startPin];
  if ([v11 isDynamicCurrentLocation])
  {
    v12 = [POIShapeFactory userLocationPOIShapeWithMapView:v10];
LABEL_24:
    v19 = v12;
    [(SearchPinsManager *)self _setStartPOIShape:v12];

    goto LABEL_27;
  }

  if (v11)
  {
    v12 = [POIShapeFactory searchResultWaypointPOIShapeWithMapView:v10 searchResult:v11];
    goto LABEL_24;
  }

LABEL_27:
}

- (void)_notifyDidLoadStartPOIShape:(id)a3 endPOIShapes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = sub_100015F58();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v11 = self;
  if (!v11)
  {
    v16 = @"<nil>";
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(SearchPinsManager *)v11 performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

      goto LABEL_8;
    }
  }

  v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

  v8 = v6;
LABEL_10:

  *buf = 138543874;
  v42 = v16;
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
        v24 = self;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_21;
        }

        v27 = self;
        v28 = v8;
        v29 = [(SearchPinsManager *)v24 performSelector:"accessibilityIdentifier"];
        v30 = v29;
        if (v29 && ![v29 isEqualToString:v26])
        {
          v31 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v30];

          v8 = v28;
          self = v27;
        }

        else
        {

          v8 = v28;
          self = v27;
LABEL_21:
          v31 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
        }

        *buf = 138543618;
        v42 = v31;
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

- (void)_setEndPOIShapes:(id)a3
{
  v5 = a3;
  endPOIShapes = self->_endPOIShapes;
  v7 = v5;
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
    v12 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(SearchPinsManager *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_9;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_9:

    *buf = 138543618;
    v21 = v17;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Setting end POI shapes: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_endPOIShapes, a3);
  v18 = [(SearchPinsManager *)self startPOIShapeIfLoaded];
  v19 = v18;
  if (v7 && v18)
  {
    [(SearchPinsManager *)self _notifyDidLoadStartPOIShape:v18 endPOIShapes:v7];
  }

LABEL_14:
}

- (void)_setStartPOIShape:(id)a3
{
  v5 = a3;
  if (self->_startPOIShape == v5)
  {
    goto LABEL_13;
  }

  v6 = sub_100015F58();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(SearchPinsManager *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    *buf = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Setting start POI shape: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_startPOIShape, a3);
  v13 = [(SearchPinsManager *)self endPOIShapesIfLoaded];
  v14 = v13;
  if (v5 && v13)
  {
    [(SearchPinsManager *)self _notifyDidLoadStartPOIShape:v5 endPOIShapes:v13];
  }

LABEL_13:
}

- (void)unregisterPOIShapeLoadingObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100015F58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SearchPinsManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Removing observer: %@", buf, 0x16u);
  }

  [(NSHashTable *)self->_poiShapeLoadingObservers removeObject:v4];
}

- (void)registerPOIShapeLoadingObserver:(id)a3
{
  v4 = a3;
  v5 = sub_100015F58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SearchPinsManager *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Adding observer: %@", buf, 0x16u);
  }

  [(NSHashTable *)self->_poiShapeLoadingObservers addObject:v4];
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
  v3 = [(SearchPinsManager *)self placeCardLinkedPlacesItemSource];
  [v3 updateForPlaceCardItem:0];

  v4 = [(SearchPinsManager *)self mapView];
  [v4 _setSelectedFeatureID:0];
}

- (void)showLinkedPlacesAndPolygonForPlaceCardItem:(id)a3
{
  v4 = a3;
  v5 = [(SearchPinsManager *)self placeCardLinkedPlacesItemSource];
  [v5 updateForPlaceCardItem:v4];

  v8 = [(SearchPinsManager *)self placeCardLinkedPlacesItemSource];
  v6 = [v8 featureID];
  v7 = [(SearchPinsManager *)self mapView];
  [v7 _setSelectedFeatureID:v6];
}

- (void)mapSelectionManagerDidDeselectSearchResult:(id)a3
{
  [(SearchPinsManager *)self clearSingleResultPins];
  v6 = [(SearchPinsManager *)self mapView];
  if (sub_10000FA08(v6) == 5)
  {
  }

  else
  {
    v4 = [(SearchPinsManager *)self allSearchResults];
    v5 = [v4 count];

    if (v5 == 1)
    {

      [(SearchPinsManager *)self clearSearchPins];
    }
  }
}

- (void)selectAndShowSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [(SearchPinsManager *)self canSelectPin:v6];
  if (v8 != 5)
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

    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_14;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SearchPinsManager *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_12;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_12:

LABEL_14:
    *buf = 138543362;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to show a search result not in the search pins manager!", buf, 0xCu);

LABEL_15:
    goto LABEL_16;
  }

  if ((v9 & 1) == 0)
  {
    v10 = [(SearchPinsManager *)self mapCameraController];
    v11 = [v6 mapItem];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100C35AB0;
    v31[3] = &unk_101656010;
    v31[4] = self;
    v32 = v6;
    v33 = v4;
    [v10 frameMapItem:v11 animated:1 completion:v31];

    goto LABEL_31;
  }

LABEL_16:
  if (!v6)
  {
    v20 = sub_100015F58();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_30:

      goto LABEL_31;
    }

    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_29;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(SearchPinsManager *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_26;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_26:

LABEL_29:
    *buf = 138543362;
    v35 = v26;
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
    v28 = v6;
    v30 = v4;
    [(SearchPinsManagerShowSearchResultsAnimation *)showSearchResultsAnimation addCompletion:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:v6 animated:v4];
  }

LABEL_31:
}

- (void)dropPinsForSearchResults:(id)a3 searchDotPlaces:(id)a4 selectedSearchResult:(id)a5 animate:(BOOL)a6 itemSource:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a4;
  v16 = sub_100015F58();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v17 = self;
  v42 = v8;
  if (!v17)
  {
    v22 = @"<nil>";
    goto LABEL_10;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  if (objc_opt_respondsToSelector())
  {
    v20 = [(SearchPinsManager *)v17 performSelector:"accessibilityIdentifier"];
    v21 = v20;
    if (v20 && ![v20 isEqualToString:v19])
    {
      v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

      goto LABEL_8;
    }
  }

  v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_8:

LABEL_10:
  v23 = v22;
  v24 = [v12 count];
  v25 = [(SearchResultsItemSource *)v17->_searchResultsItemSource shouldHideSearchResults];

  v26 = @"NO";
  if (v25)
  {
    v26 = @"YES";
  }

  v27 = v26;
  *buf = 138544130;
  v46 = v22;
  v47 = 2048;
  v48 = v24;
  v49 = 2112;
  v50 = v14;
  v51 = 2112;
  v52 = v27;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Setting %lu results for %@. Hiding Results: %@", buf, 0x2Au);

  v8 = v42;
LABEL_13:

  [v14 setSearchResults:v12];
  v28 = [(SearchPinsManager *)self searchDotPlacesItemSource];
  v29 = [v15 copy];

  [v28 setSearchDotPlaces:v29];
  if (![(SearchResultsItemSource *)self->_searchResultsItemSource shouldHideSearchResults])
  {
    goto LABEL_22;
  }

  v30 = sub_100015F58();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = self;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(SearchPinsManager *)v31 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ![v34 isEqualToString:v33])
      {
        v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

        goto LABEL_20;
      }
    }

    v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_20:

    *buf = 138543362;
    v46 = v36;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource is hiding results but we are setting search results. So unhide them", buf, 0xCu);
  }

  [(SearchResultsItemSource *)self->_searchResultsItemSource setShouldHideSearchResults:0];
LABEL_22:
  if (v13)
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:v13 animated:v8];
  }

  v37 = [(SearchPinsManager *)self delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = [(SearchPinsManager *)self delegate];
    [v39 setNeedsUserActivityUpdate];
  }

  if (v13)
  {
    v43 = @"selectedSearchResult";
    v44 = v13;
    v40 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  }

  else
  {
    v40 = 0;
  }

  v41 = +[NSNotificationCenter defaultCenter];
  [v41 postNotificationName:@"MapsPinsDroppedForSearchResultsNotification" object:self userInfo:v40];
}

- (void)selectLabelMarkerForSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SearchResultsItemSource *)self->_searchResultsItemSource keysForSearchResult:v6];
  if (![v7 count])
  {
    v8 = [(SearchResultsItemSource *)self->_droppedPinsItemSource keysForSearchResult:v6];

    v7 = v8;
  }

  if (![v7 count])
  {
    v9 = [(SearchResultsItemSource *)self->_singleSearchResultItemSource keysForSearchResult:v6];

    v7 = v9;
  }

  if (![v7 count])
  {
    v10 = [(RouteStartEndItemSource *)self->_routeStartEndItemSource itemMatchingLocation:v6];
    v11 = [v10 keys];

    v7 = v11;
  }

  if (![v7 count])
  {
    v15 = sub_100015F58();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      goto LABEL_20;
    }

    v16 = self;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(SearchPinsManager *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_16;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_16:

    *buf = 138543618;
    v25 = v21;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] No keys found for search result: %@", buf, 0x16u);

    goto LABEL_17;
  }

  v12 = [v6 autocompletePerson];

  WeakRetained = objc_loadWeakRetained(&self->_mapSelectionManager);
  v14 = WeakRetained;
  if (v12)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100C36304;
    v23[3] = &unk_10164E358;
    v23[4] = self;
    [WeakRetained selectLabelMarkerWithKeys:v7 animated:v4 restoreRegion:0 completion:v23];
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C36310;
    v22[3] = &unk_10164E358;
    v22[4] = self;
    [WeakRetained selectLabelMarkerWithKeys:v7 animated:v4 completion:v22];
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

  v4 = self;
  if (!v4)
  {
    v9 = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

      goto LABEL_8;
    }
  }

  v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
  v10 = [(SearchPinsManagerShowSearchResultsAnimation *)v4->_showSearchResultsAnimation debugDescription];
  *buf = 138543618;
  v17 = v9;
  v18 = 2112;
  v19 = v10;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Cancelling search result animation: %@", buf, 0x16u);

LABEL_11:
  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation cancel];
  showSearchResultsAnimation = self->_showSearchResultsAnimation;
  self->_showSearchResultsAnimation = 0;

  v12 = [(SearchPinsManager *)self searchResultsDebugOverlay];
  v13 = [v12 polygons];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(SearchPinsManager *)self searchResultsDebugOverlay];
    [v15 removeDrawnDebugMapRegions];
  }
}

- (void)mapViewDidBecomeFullyDrawn
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = [(SearchPinsManagerShowSearchResultsAnimation *)v4->_showSearchResultsAnimation debugDescription];
    *buf = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Map view is fully drawn, proceeding with dropping pins using animation: %@", buf, 0x16u);
  }

  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation proceedWithDroppingPins:1];
}

- (void)_animateShowingSearchResults:(id)a3 selectedSearchResult:(id)a4 historyItem:(id)a5 suggestedMapRegion:(id)a6 minZoom:(id)a7 maxZoom:(id)a8 disableAdditionalViewportPadding:(BOOL)a9 completion:(id)a10
{
  v16 = a3;
  v38 = a6;
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
  v22 = sub_100015F58();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = self;
    v37 = v17;
    if (!v23)
    {
      v28 = @"<nil>";
      goto LABEL_10;
    }

    v36 = v16;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(SearchPinsManager *)v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_8;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_8:

    v16 = v36;
LABEL_10:

    *buf = 138543618;
    v42 = v28;
    v43 = 2048;
    v44 = [v16 count];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}@] Initializing animation for %lu results", buf, 0x16u);

    v17 = v37;
  }

  v29 = [SearchPinsManagerShowSearchResultsAnimation alloc];
  v30 = [(SearchPinsManager *)self mapCameraController];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100C36A3C;
  v39[3] = &unk_10164E330;
  v31 = v17;
  v39[4] = self;
  v40 = v31;
  LOBYTE(v35) = a9;
  v32 = [(SearchPinsManagerShowSearchResultsAnimation *)v29 initWithSearchResults:v16 selectedSearchResult:v21 historyItem:v20 suggestedMapRegion:v38 mapCameraController:v30 minZoom:v19 maxZoom:v18 disableAdditionalViewportPadding:v35 completion:v39];

  showSearchResultsAnimation = self->_showSearchResultsAnimation;
  self->_showSearchResultsAnimation = v32;

  [(SearchPinsManagerShowSearchResultsAnimation *)self->_showSearchResultsAnimation start];
  if (GEOConfigGetBOOL())
  {
    v34 = [(SearchPinsManager *)self searchResultsDebugOverlay];
    [v34 drawDebugMapRegionsWithSearchResults:v16 suggestedMapRegion:v38];
  }
}

- (void)setSearchPinsFromSearchInfo:(id)a3 scrollToResults:(BOOL)a4 displayPlaceCardForResult:(id)a5 historyItem:(id)a6 animated:(BOOL)a7 itemSource:(id)a8 completion:(id)a9
{
  v78 = a4;
  v13 = a3;
  v14 = a5;
  v81 = a6;
  v15 = a8;
  v82 = a9;
  if (self->_startPin && [(NSArray *)self->_endPins count]&& self->_searchResultsItemSource == v15)
  {
    [(SearchResultsItemSource *)v15 setShouldHideSearchResults:0];
  }

  if (self->_searchResultsItemSource == v15)
  {
    [(SearchPinsManager *)self clearSearchPins];
  }

  v16 = [(SearchPinsManager *)self delegate];
  [v16 setSuggestedApplicationState:0];

  v17 = [(SearchPinsManager *)self mapView];
  [v17 setUserTrackingMode:0 animated:0];

  if ([v13 mapDisplayType] == 1)
  {
    v18 = [(SearchPinsManager *)self mapView];
    v19 = [v18 preferredConfiguration];

    if ([v19 conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [v21 setShowsTopographicFeatures:1];
  }

  v22 = [(SearchPinsManager *)self mapView];
  [v22 _selectAnnotation:0 animated:0];

  self->_hasAutoSelectedResult = 1;
  v83 = [v13 selectedResult];
  v84 = [v13 mapRegion];
  v23 = sub_100015F58();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = v15;
      v28 = [(SearchPinsManager *)v24 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v26])
      {
        v30 = v14;
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v29];

        v15 = v27;
        goto LABEL_18;
      }

      v15 = v27;
    }

    v30 = v14;
    v31 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_18:

    *buf = 138543874;
    v98 = v31;
    v99 = 2112;
    v100 = v13;
    v101 = 2112;
    v102 = v84;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] Server provided map region for searchInfo: %@ is %@", buf, 0x20u);

    v14 = v30;
  }

  v32 = [v13 results];
  if (self->_singleSearchResultItemSource == v15)
  {
    v36 = [(SearchPinsManager *)self allSearchResults];
    v37 = [v32 arrayByAddingObjectsFromArray:v36];

    v34 = [(SearchResultsItemSource *)self->_collectionPinsItemSource searchResults];
    v35 = [v37 arrayByAddingObjectsFromArray:v34];
    v32 = v37;
  }

  else
  {
    collectionPinsItemSource = self->_collectionPinsItemSource;
    if (collectionPinsItemSource == v15)
    {
      v38 = [(SearchPinsManager *)self allSearchResults];
      v35 = [v32 arrayByAddingObjectsFromArray:v38];

      if (!v14)
      {
        goto LABEL_26;
      }

      v34 = [v14 mapItem];
      [v34 _displayMapRegion];
      v84 = v32 = v84;
    }

    else
    {
      v34 = [(SearchResultsItemSource *)collectionPinsItemSource searchResults];
      v35 = [v32 arrayByAddingObjectsFromArray:v34];
    }
  }

LABEL_26:
  v39 = sub_100015F58();
  if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_33;
  }

  v40 = self;
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  if (objc_opt_respondsToSelector())
  {
    v43 = v14;
    v44 = [(SearchPinsManager *)v40 performSelector:"accessibilityIdentifier"];
    v45 = v44;
    if (v44 && ![v44 isEqualToString:v42])
    {
      v46 = v15;
      v47 = [NSString stringWithFormat:@"%@<%p, %@>", v42, v40, v45];

      v14 = v43;
      goto LABEL_32;
    }

    v14 = v43;
  }

  v46 = v15;
  v47 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_32:

  v48 = [v35 count];
  *buf = 138543618;
  v98 = v47;
  v99 = 2048;
  v100 = v48;
  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "[%{public}@] Setting search results with determining Region:%lu", buf, 0x16u);

  v15 = v46;
LABEL_33:

  v49 = [(SearchPinsManager *)self venuesManager];
  v95 = 0;
  v96 = 0;
  v94 = v35;
  v50 = [v13 searchFieldItem];
  [v49 getMinZoom:&v96 maxZoom:&v95 resultsForDeterminingRegion:&v94 forDisplayingResults:v35 fromSearch:v50];
  v51 = v96;
  v80 = v95;
  v52 = v94;

  if ([v52 count])
  {
    v53 = v83;
    if (v83 && ([v52 containsObject:v83] & 1) == 0)
    {

      v63 = [v13 results];

      v51 = 0;
      v52 = v63;
    }

    else
    {
      v54 = [v52 count];
      v55 = [v13 results];
      v56 = [v55 count];

      if (v54 < v56)
      {
        v57 = v84;
        v84 = 0;
        goto LABEL_39;
      }

      v53 = v83;
      if (!v83)
      {
        goto LABEL_42;
      }
    }

LABEL_45:
    v64 = [(SearchPinsManager *)self mapSelectionManager];
    [v64 suspendUpdates];

    v65 = sub_100015F58();
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
LABEL_52:

      v74 = [v13 disableAdditionalViewportPadding];
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_100C38988;
      v90[3] = &unk_10164E2E0;
      v90[4] = self;
      v91 = v13;
      v92 = v53;
      v93 = v15;
      LOBYTE(v77) = v74;
      v61 = v80;
      v60 = v81;
      v62 = v84;
      [(SearchPinsManager *)self _animateShowingSearchResults:v52 selectedSearchResult:v92 historyItem:v81 suggestedMapRegion:v84 minZoom:v51 maxZoom:v80 disableAdditionalViewportPadding:v77 completion:v90];

      goto LABEL_53;
    }

    v79 = v15;
    v66 = self;
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    if (objc_opt_respondsToSelector())
    {
      v69 = [(SearchPinsManager *)v66 performSelector:"accessibilityIdentifier"];
      v70 = v69;
      if (v69 && ![v69 isEqualToString:v68])
      {
        v71 = v14;
        v72 = [NSString stringWithFormat:@"%@<%p, %@>", v68, v66, v70];

        goto LABEL_51;
      }
    }

    v71 = v14;
    v72 = [NSString stringWithFormat:@"%@<%p>", v68, v66];
LABEL_51:

    v73 = [v52 count];
    *buf = 138543618;
    v98 = v72;
    v99 = 2048;
    v100 = v73;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "[%{public}@] Animate showing search results. Count: %lu", buf, 0x16u);

    v14 = v71;
    v15 = v79;
    v53 = v83;
    goto LABEL_52;
  }

  v58 = [v13 results];
  v51 = 0;
  v57 = v52;
  v52 = v58;
LABEL_39:
  v53 = v83;

  if (v83)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (v78)
  {
    v59 = [(SearchPinsManager *)self mapSelectionManager];
    [v59 suspendUpdates];

    LOBYTE(v59) = [v13 disableAdditionalViewportPadding];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100C38A7C;
    v85[3] = &unk_10164E308;
    v85[4] = self;
    v86 = v13;
    v87 = v14;
    v88 = v15;
    v89 = v82;
    LOBYTE(v77) = v59;
    v61 = v80;
    v60 = v81;
    v62 = v84;
    [(SearchPinsManager *)self _animateShowingSearchResults:v52 selectedSearchResult:v87 historyItem:v81 suggestedMapRegion:v84 minZoom:v51 maxZoom:v80 disableAdditionalViewportPadding:v77 completion:v85];

    v53 = v83;
  }

  else
  {
    v75 = [v13 results];
    v76 = [v13 searchDotPlaces];
    [(SearchPinsManager *)self dropPinsForSearchResults:v75 searchDotPlaces:v76 selectedSearchResult:v14 animate:1 itemSource:v15];

    v53 = v83;
    v62 = v84;
    v61 = v80;
    v60 = v81;
  }

LABEL_53:
}

- (BOOL)_isShowingDirectionsPins
{
  v3 = [(SearchPinsManager *)self startPin];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SearchPinsManager *)self endPin];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)clearCollectionPins
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will clear collection pins.", buf, 0xCu);
  }

  v10 = [(SearchPinsManager *)self delegate];
  [v10 setSuggestedApplicationState:0];

  if (self->_selectedLabelMarker)
  {
    v11 = [(SearchPinsManager *)self mapView];
    [v11 _deselectLabelMarkerAnimated:0];
  }

  v12 = [(SearchResultsItemSource *)self->_collectionPinsItemSource searchResults];

  v13 = sub_100015F58();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    v31 = self;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(SearchPinsManager *)v31 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ![v34 isEqualToString:v33])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

        goto LABEL_36;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_36:

    *buf = 138543362;
    v37 = v29;
    v30 = "[%{public}@] No collections pins to clear, returning.";
    goto LABEL_37;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = self;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  if (objc_opt_respondsToSelector())
  {
    v18 = [(SearchPinsManager *)v15 performSelector:"accessibilityIdentifier"];
    v19 = v18;
    if (v18 && ![v18 isEqualToString:v17])
    {
      v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

      goto LABEL_20;
    }
  }

  v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_20:

  *buf = 138543362;
  v37 = v20;
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] CollectionPinsItemSource is clearing search results.", buf, 0xCu);

LABEL_21:
  [(SearchResultsItemSource *)self->_collectionPinsItemSource setSearchResults:&__NSArray0__struct];
  v21 = [(SearchPinsManager *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(SearchPinsManager *)self delegate];
    [v23 setNeedsUserActivityUpdate];
  }

  v13 = sub_100015F58();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v24 = self;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(SearchPinsManager *)v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_29;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_29:

    *buf = 138543362;
    v37 = v29;
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will clear single result pins.", buf, 0xCu);
  }

  v10 = [(SearchResultsItemSource *)self->_singleSearchResultItemSource searchResults];
  v11 = [v10 count];

  v12 = sub_100015F58();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    v35 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    if (objc_opt_respondsToSelector())
    {
      v38 = [(SearchPinsManager *)v35 performSelector:"accessibilityIdentifier"];
      v39 = v38;
      if (v38 && ![v38 isEqualToString:v37])
      {
        v33 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v39];

        goto LABEL_34;
      }
    }

    v33 = [NSString stringWithFormat:@"%@<%p>", v37, v35];
LABEL_34:

    *buf = 138543362;
    v41 = v33;
    v34 = "[%{public}@] No single result pins to clear, returning.";
    goto LABEL_35;
  }

  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = self;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  if (objc_opt_respondsToSelector())
  {
    v17 = [(SearchPinsManager *)v14 performSelector:"accessibilityIdentifier"];
    v18 = v17;
    if (v17 && ![v17 isEqualToString:v16])
    {
      v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

      goto LABEL_18;
    }
  }

  v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_18:

  *buf = 138543362;
  v41 = v19;
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] _singleSearchResultItemSource is clearing search results.", buf, 0xCu);

LABEL_19:
  [(SearchResultsItemSource *)self->_singleSearchResultItemSource setSearchResults:&__NSArray0__struct];
  searchResultsItemSource = self->_searchResultsItemSource;
  v21 = [(SearchPinsManager *)self searchResultsItemSource];
  v22 = [v21 searchResults];
  [(SearchResultsItemSource *)searchResultsItemSource setSearchResults:v22];

  searchDotPlacesItemSource = self->_searchDotPlacesItemSource;
  v24 = [(SearchPinsManager *)self searchDotPlacesItemSource];
  v25 = [v24 searchDotPlaces];
  [(SearchDotPlacesItemSource *)searchDotPlacesItemSource setSearchDotPlaces:v25];

  v26 = [(SearchPinsManager *)self delegate];
  LOBYTE(v24) = objc_opt_respondsToSelector();

  if (v24)
  {
    v27 = [(SearchPinsManager *)self delegate];
    [v27 setNeedsUserActivityUpdate];
  }

  v12 = sub_100015F58();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v28 = self;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [(SearchPinsManager *)v28 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

        goto LABEL_27;
      }
    }

    v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_27:

    *buf = 138543362;
    v41 = v33;
    v34 = "[%{public}@] Clearing single result pins completed";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
  }

LABEL_36:
}

- (void)clearDroppedPin
{
  v3 = [(SearchPinsManager *)self customPOIsController];

  if (v3)
  {
    v4 = sub_100015F58();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(SearchResultsItemSource *)self->_droppedPinsItemSource setSearchResults:&__NSArray0__struct];
      goto LABEL_13;
    }

    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_11;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchPinsManager *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Clearing DroppedPinsItemSource.", buf, 0xCu);

    goto LABEL_12;
  }

LABEL_13:
  if (!self->_droppedPin)
  {
    return;
  }

  v11 = [(SearchPinsManager *)self mapSelectionManager];
  v12 = [v11 customLabelMarker];
  v13 = [v12 searchResult];

  if (v13 && [v13 type] == 3)
  {
    v14 = [(SearchPinsManager *)self mapSelectionManager];
    [v14 clearSelection];
  }

  v15 = sub_100015F58();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = self;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(SearchPinsManager *)v16 performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

        goto LABEL_23;
      }
    }

    v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_23:

    *buf = 138543362;
    v24 = v21;
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
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will clear search pins.", buf, 0xCu);
  }

  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
  v10 = [(SearchPinsManager *)self delegate];
  [v10 setSuggestedApplicationState:0];

  if (self->_selectedLabelMarker)
  {
    v11 = [(SearchPinsManager *)self mapView];
    [v11 _deselectLabelMarkerAnimated:0];
  }

  if (!self->_startPin && ![(NSArray *)self->_endPins count])
  {
    v12 = sub_100015F58();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_22:

      v19 = [(SearchPinsManager *)self mapView];
      v20 = [v19 preferredConfiguration];

      if ([v20 conformsToProtocol:&OBJC_PROTOCOL___MKMapConfigurationHiking])
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      [v22 setShowsTopographicFeatures:0];
      goto LABEL_26;
    }

    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(SearchPinsManager *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_21;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_21:

    *buf = 138543362;
    v41 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Clearing the topographic map", buf, 0xCu);

    goto LABEL_22;
  }

LABEL_26:
  v23 = sub_100015F58();
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    goto LABEL_33;
  }

  v24 = self;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  if (objc_opt_respondsToSelector())
  {
    v27 = [(SearchPinsManager *)v24 performSelector:"accessibilityIdentifier"];
    v28 = v27;
    if (v27 && ![v27 isEqualToString:v26])
    {
      v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

      goto LABEL_32;
    }
  }

  v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_32:

  *buf = 138543362;
  v41 = v29;
  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource is clearing search results.", buf, 0xCu);

LABEL_33:
  [(SearchResultsItemSource *)self->_searchResultsItemSource setSearchResults:&__NSArray0__struct];
  [(SearchDotPlacesItemSource *)self->_searchDotPlacesItemSource setSearchDotPlaces:&__NSArray0__struct];
  v30 = [(SearchPinsManager *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [(SearchPinsManager *)self delegate];
    [v32 setNeedsUserActivityUpdate];
  }

  v33 = sub_100015F58();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = self;
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    if (objc_opt_respondsToSelector())
    {
      v37 = [(SearchPinsManager *)v34 performSelector:"accessibilityIdentifier"];
      v38 = v37;
      if (v37 && ![v37 isEqualToString:v36])
      {
        v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];

        goto LABEL_41;
      }
    }

    v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
LABEL_41:

    *buf = 138543362;
    v41 = v39;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}@] Clearing search pins completed", buf, 0xCu);
  }
}

- (void)clearDirectionsPins
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Clearing directions pins.", buf, 0xCu);
  }

  [(SearchPinsManager *)self _clearStartPin];
  [(SearchPinsManager *)self _clearEndPins];
  v10 = [(SearchPinsManager *)self routeStartEndItemSource];
  [v10 clearStartAndEndLocations];

  v11 = [(SearchPinsManager *)self searchResultsItemSource];
  [v11 setShouldHideSearchResults:0];

  v12 = [(SearchPinsManager *)self searchDotPlacesItemSource];
  [v12 setShouldHideSearchDotPlaces:0];

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
    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v25 = v9;
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
    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v16 = v9;
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

- (void)setDisableEndPins:(BOOL)a3
{
  v3 = a3;
  v6 = [(SearchPinsManager *)self routeStartEndItemSource];
  v4 = [v6 visibilityMask] & 0xFFFFFFFFFFFFFFF9;
  v5 = 6;
  if (v3)
  {
    v5 = 0;
  }

  [v6 setVisibilityMask:v4 | v5];
}

- (BOOL)disableEndPins
{
  v2 = [(SearchPinsManager *)self routeStartEndItemSource];
  v3 = ([v2 visibilityMask] & 4) == 0;

  return v3;
}

- (void)setDisableStartPin:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchPinsManager *)self routeStartEndItemSource];
  [v4 setVisibilityMask:{objc_msgSend(v4, "visibilityMask") & 0xFFFFFFFFFFFFFFFELL | !v3}];
}

- (BOOL)disableStartPin
{
  v2 = [(SearchPinsManager *)self routeStartEndItemSource];
  v3 = ([v2 visibilityMask] & 1) == 0;

  return v3;
}

- (BOOL)canSelectPin:(id)a3
{
  v4 = a3;
  v5 = [(SearchPinsManager *)self allSearchResults];
  v6 = [v5 _maps_containsSearchResultEqualToResult:v4 forPurpose:5];

  v7 = [(SearchResultsItemSource *)self->_droppedPinsItemSource searchResults];
  v8 = [v7 _maps_containsSearchResultEqualToResult:v4 forPurpose:5];

  v9 = [(SearchResultsItemSource *)self->_singleSearchResultItemSource searchResults];
  LOBYTE(v7) = [v9 _maps_containsSearchResultEqualToResult:v4 forPurpose:5];

  return (v6 | v8 | v7) & 1;
}

- (void)selectDroppedPinIsAnimated:(BOOL)a3
{
  v3 = a3;
  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:droppedPin animated:v3];
    v6 = self->_droppedPin;
    v9 = @"selectedSearchResult";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MapsPinsDroppedForSearchResultsNotification" object:self userInfo:v7];
  }
}

- (void)setDroppedPin:(id)a3 animated:(BOOL)a4 shouldSelect:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (self->_droppedPin)
  {
    [(SearchPinsManager *)self clearDroppedPin];
  }

  droppedPinsItemSource = self->_droppedPinsItemSource;
  v16 = v8;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  [(SearchResultsItemSource *)droppedPinsItemSource setSearchResults:v10];

  droppedPin = self->_droppedPin;
  self->_droppedPin = v8;
  v12 = v8;

  [(SearchPinsManager *)self _updateDroppedPinVisibility];
  if (v5)
  {
    [(SearchPinsManager *)self selectDroppedPinIsAnimated:v6];
  }

  v13 = [(SearchPinsManager *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(SearchPinsManager *)self delegate];
    [v15 setNeedsUserActivityUpdate];
  }
}

- (void)setStartPin:(id)a3 endPins:(id)a4 useAlternateDirectionsPins:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v65 = a4;
  [(SearchPinsManager *)self _completeShowSearchResultsAnimation];
  useAlternateDirectionsPins = self->_useAlternateDirectionsPins;
  v64 = v8;
  if (useAlternateDirectionsPins == v5)
  {
    if (!(v8 | self->_startPin))
    {
      v10 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
LABEL_7:
      v12 = [(NSArray *)self->_endPins count];
      v13 = v12 != [v65 count];
      v11 = v74;
      goto LABEL_9;
    }

    v10 = [v8 isEqualToSearchResult:? forPurpose:?] ^ 1;
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
  if (useAlternateDirectionsPins == v5)
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
    v71 = v65;
    v72 = &v73;
    [(NSArray *)endPins enumerateObjectsUsingBlock:v70];
  }

  v15 = [(SearchPinsManager *)self _setOfPinsForPinType:9];
  self->_useAlternateDirectionsPins = v5;
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

    v21 = self;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(SearchPinsManager *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ([v24 isEqualToString:v23] & 1) == 0)
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_23;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_23:

    v27 = *p_startPin;
    *buf = 138543618;
    v78 = v26;
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

    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v65, "count")}];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v29 = v65;
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

    v41 = self;
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    if (objc_opt_respondsToSelector())
    {
      v44 = [(SearchPinsManager *)v41 performSelector:"accessibilityIdentifier"];
      v45 = v44;
      if (v44 && ([v44 isEqualToString:v43] & 1) == 0)
      {
        v46 = [NSString stringWithFormat:@"%@<%p, %@>", v43, v41, v45];

        goto LABEL_44;
      }
    }

    v46 = [NSString stringWithFormat:@"%@<%p>", v43, v41];
LABEL_44:

    v47 = self->_endPins;
    *buf = 138543618;
    v78 = v46;
    v79 = 2112;
    v80 = v47;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}@] Setting end pins: %@", buf, 0x16u);

LABEL_45:
  }

  if ((v10 & 1) != 0 || *(v74 + 24) == 1)
  {
    v48 = [(SearchPinsManager *)self routeStartEndItemSource];
    [v48 setStartLocation:self->_startPin endLocations:self->_endPins];

    v49 = [(SearchPinsManager *)self mapSelectionManager];
    [v49 clearSelection];

    if (v10 && self->_startPin)
    {
      [(SearchPinsManager *)self _startLoadingNewStartPOIShape];
    }

    if (*(v74 + 24) == 1 && [(NSArray *)self->_endPins count])
    {
      [(SearchPinsManager *)self _startLoadingNewEndPOIShapes];
    }

    v50 = [(SearchPinsManager *)self mapView];
    v51 = sub_10000FA08(v50) == 5;

    if (v51)
    {
      goto LABEL_63;
    }

    v52 = sub_100015F58();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
LABEL_62:

      v62 = [(SearchPinsManager *)self searchResultsItemSource];
      [v62 setShouldHideSearchResults:1];

      v63 = [(SearchPinsManager *)self searchDotPlacesItemSource];
      [v63 setShouldHideSearchDotPlaces:1];

LABEL_63:
      [(SearchPinsManager *)self _updateDroppedPinVisibility];
      goto LABEL_64;
    }

    v53 = self;
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    if (objc_opt_respondsToSelector())
    {
      v56 = [(SearchPinsManager *)v53 performSelector:"accessibilityIdentifier"];
      v57 = v56;
      if (v56 && ([v56 isEqualToString:v55] & 1) == 0)
      {
        v58 = [NSString stringWithFormat:@"%@<%p, %@>", v55, v53, v57];

        goto LABEL_61;
      }
    }

    v58 = [NSString stringWithFormat:@"%@<%p>", v55, v53];
LABEL_61:

    v59 = v58;
    v60 = [(SearchPinsManager *)v53 searchResultsItemSource];
    v61 = [(SearchPinsManager *)v53 searchDotPlacesItemSource];
    *buf = 138543874;
    v78 = v59;
    v79 = 2048;
    v80 = v60;
    v81 = 2048;
    v82 = v61;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource<%p>, SearchDotPlacesItemSource<%p> will hide search results.", buf, 0x20u);

    goto LABEL_62;
  }

LABEL_64:

  _Block_object_dispose(&v73, 8);
}

- (void)setStartPin:(id)a3 endPin:(id)a4 useAlternateDirectionsPins:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v12 = v8;
    v10 = a3;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [(SearchPinsManager *)self setStartPin:v10 endPins:v11 useAlternateDirectionsPins:v5, v12];
  }

  else
  {
    v11 = a3;
    [(SearchPinsManager *)self setStartPin:v11 endPins:0 useAlternateDirectionsPins:v5];
  }
}

- (void)setSearchPins:(id)a3 selectedPin:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(SearchPinsManager *)self clearSearchPins];
  v10 = [(SearchPinsManager *)self _setOfPinsForPinType:6];
  v11 = [(SearchResultsItemSource *)v8 mutableCopy];
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

  [(SearchPinsManager *)self dropPinsForSearchResults:v11 animate:v5];
  v17 = sub_100015F58();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v41 = v9;
    v40 = v5;
    v18 = self;
    if (!v18)
    {
      v23 = @"<nil>";
      goto LABEL_17;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(SearchPinsManager *)v18 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

        goto LABEL_15;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_15:

LABEL_17:
    v24 = v23;
    v25 = [(SearchResultsItemSource *)v8 count];
    searchResultsItemSource = v18->_searchResultsItemSource;
    v27 = [(SearchResultsItemSource *)searchResultsItemSource shouldHideSearchResults];

    v28 = @"NO";
    if (v27)
    {
      v28 = @"YES";
    }

    v29 = v28;
    *buf = 138544130;
    v48 = v23;
    v49 = 2048;
    v50 = v25;
    v51 = 2048;
    v52 = searchResultsItemSource;
    v53 = 2112;
    v54 = v29;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Setting %lu search results for SearchResultsItemSource<%p>. SearchResultsItemSource hiding results: %@", buf, 0x2Au);

    v5 = v40;
    v9 = v41;
  }

  if (![(SearchResultsItemSource *)self->_searchResultsItemSource shouldHideSearchResults])
  {
    goto LABEL_29;
  }

  v30 = sub_100015F58();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v42 = v9;
    v31 = v5;
    v32 = self;
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [(SearchPinsManager *)v32 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ![v35 isEqualToString:v34])
      {
        v37 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];

        goto LABEL_27;
      }
    }

    v37 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
LABEL_27:

    v38 = self->_searchResultsItemSource;
    *buf = 138543874;
    v48 = v37;
    v49 = 2048;
    v50 = v38;
    v51 = 2112;
    v52 = v8;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] SearchResultsItemSource<%p> Setting search results:\n(%@) but results were hidden. Unhiding them.", buf, 0x20u);

    v5 = v31;
    v9 = v42;
  }

  [(SearchResultsItemSource *)self->_searchResultsItemSource setShouldHideSearchResults:0];
LABEL_29:
  [(SearchResultsItemSource *)self->_searchResultsItemSource setSearchResults:v8];
  v39 = [(SearchPinsManager *)self mapView];
  [v39 _setApplicationState:0];

  if (v9)
  {
    [(SearchPinsManager *)self selectLabelMarkerForSearchResult:v9 animated:v5];
  }
}

- (SearchResult)endPin
{
  v2 = [(SearchPinsManager *)self endPins];
  v3 = [v2 lastObject];

  return v3;
}

- (id)_setOfPinsForPinType:(unint64_t)a3
{
  v3 = a3;
  v5 = [(SearchPinsManager *)self allSearchResults];
  v6 = v5;
  if ((v3 & 1) != 0 && [v5 count])
  {
    v7 = [[NSMutableSet alloc] initWithArray:v6];
  }

  else
  {
    v7 = [[NSMutableSet alloc] initWithCapacity:3];
  }

  v8 = v7;
  if ((v3 & 2) != 0 && self->_startPin)
  {
    [v7 addObject:?];
  }

  if ((v3 & 4) != 0 && [(NSArray *)self->_endPins count])
  {
    [v8 addObjectsFromArray:self->_endPins];
  }

  if ((v3 & 8) != 0 && self->_droppedPin)
  {
    [v8 addObject:?];
  }

  return v8;
}

- (void)setCustomPOIsController:(id)a3
{
  obj = a3;
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

- (void)setMapCameraController:(id)a3
{
  v5 = a3;
  if (self->_mapCameraController != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_mapCameraController, a3);
    v6 = [(SearchPinsManager *)self searchResultsItemSource];
    v7 = [(SearchPinsManager *)self searchResultsItemSource];
    v8 = [v7 searchResults];
    [v6 setSearchResults:v8];

    v9 = [(SearchPinsManager *)self droppedPinsItemSource];
    v10 = [(SearchPinsManager *)self droppedPinsItemSource];
    v11 = [v10 searchResults];
    [v9 setSearchResults:v11];

    v12 = [(SearchPinsManager *)self routeStartEndItemSource];
    [v12 setStartLocation:self->_startPin endLocations:self->_endPins];

    v13 = [(SearchPinsManager *)self searchDotPlacesItemSource];
    v14 = [(SearchPinsManager *)self searchDotPlacesItemSource];
    v15 = [v14 searchDotPlaces];
    [v13 setSearchDotPlaces:v15];

    v5 = v16;
  }
}

- (MKMapView)mapView
{
  v2 = [(SearchPinsManager *)self mapCameraController];
  v3 = [v2 mapView];

  return v3;
}

- (void)dealloc
{
  v3 = sub_100015F58();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SearchPinsManager *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Deallocating", buf, 0xCu);
  }

  [(SearchPinsManager *)self _clearShowSearchResultsAnimation];
  hiddenStartPin = self->_hiddenStartPin;
  self->_hiddenStartPin = 0;

  v11.receiver = self;
  v11.super_class = SearchPinsManager;
  [(SearchPinsManager *)&v11 dealloc];
}

- (SearchPinsManager)initWithMapViewCameraController:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = SearchPinsManager;
  v6 = [(SearchPinsManager *)&v33 init];
  if (v6)
  {
    v7 = sub_100015F58();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      objc_storeStrong(&v6->_mapCameraController, a3);
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