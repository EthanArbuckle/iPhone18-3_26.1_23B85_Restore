@interface MapSelectionManager
- (BOOL)isMapItemSelected:(id)selected;
- (BOOL)mapShouldSelectAnnotationView:(id)view;
- (BOOL)mapShouldSelectLabelMarker:(id)marker;
- (CustomPOIAnnotation)customLabelMarker;
- (CustomPOIsController)customPOIsController;
- (MKMapView)mapView;
- (MapSelectionManager)initWithCameraController:(id)controller;
- (MapSelectionManagerDelegate)delegate;
- (id)selectionStateIncludingCamera:(BOOL)camera includeNotCustomLabelMarkers:(BOOL)markers;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)_addGestureRecognizersForMapView:(id)view;
- (void)_applyMapSelectionDidChange;
- (void)_clearClusterSelectionOnGesture:(id)gesture;
- (void)_handleMapZoomingGesture:(id)gesture;
- (void)_notifyDelegate;
- (void)_performAnalyticsForTappingOnAnnotationView:(id)view;
- (void)_performAnalyticsForTappingOnLabelMarker:(id)marker;
- (void)_removeGestureRecognizersForMapView:(id)view;
- (void)_selectCustomPOIAnnotation:(id)annotation camera:(id)camera restoreRegion:(BOOL)region updateIfNeeded:(BOOL)needed completion:(id)completion;
- (void)_selectLabelMarkerWithKeys:(id)keys camera:(id)camera animated:(BOOL)animated restoreRegion:(BOOL)region updateIfNeeded:(BOOL)needed completion:(id)completion;
- (void)_setNeedsUpdate;
- (void)clearSelectionAnimated:(BOOL)animated updateIfNeeded:(BOOL)needed;
- (void)dealloc;
- (void)deselectTrails;
- (void)injectAndSelectPersonalizedItem:(id)item;
- (void)injectAndSelectSearchResult:(id)result;
- (void)injectPreviouslySelectedSearchResult:(id)result;
- (void)mapDidSelectAnnotationView:(id)view;
- (void)mapDidSelectLabelMarker:(id)marker;
- (void)restoreSelectionState:(id)state animated:(BOOL)animated restoreRegion:(BOOL)region notifyDelegate:(BOOL)delegate;
- (void)selectLabelMarker:(id)marker animated:(BOOL)animated updateIfNeeded:(BOOL)needed;
- (void)selectMapItem:(id)item animated:(BOOL)animated;
- (void)selectSearchResult:(id)result animated:(BOOL)animated;
- (void)selectTrailId:(unint64_t)id;
- (void)selectTrailWithId:(unint64_t)id name:(id)name locale:(id)locale;
- (void)setAnnotationView:(id)view;
- (void)setLabelMarker:(id)marker updateIfNeeded:(BOOL)needed;
- (void)setMapCameraController:(id)controller;
@end

@implementation MapSelectionManager

- (MapSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CustomPOIsController)customPOIsController
{
  WeakRetained = objc_loadWeakRetained(&self->_customPOIsController);

  return WeakRetained;
}

- (int)currentMapViewTargetForAnalytics
{
  delegate = [(MapSelectionManager *)self delegate];
  v4 = [delegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  delegate2 = [(MapSelectionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentMapViewTargetForAnalytics = [delegate2 currentMapViewTargetForAnalytics];
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  delegate = [(MapSelectionManager *)self delegate];
  v4 = [delegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  delegate2 = [(MapSelectionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentUITargetForAnalytics = [delegate2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (void)_clearClusterSelectionOnGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_labelMarker)
  {
    if (self->_isCluster)
    {
      v6 = gestureCopy;
      v5 = [gestureCopy state] == 3;
      gestureCopy = v6;
      if (v5)
      {
        [(MapSelectionManager *)self clearSelection];
        gestureCopy = v6;
      }
    }
  }
}

- (void)_handleMapZoomingGesture:(id)gesture
{
  gestureCopy = gesture;
  labelMarker = self->_labelMarker;
  if (labelMarker)
  {
    v22 = gestureCopy;
    if (![(VKLabelMarker *)labelMarker isCluster])
    {
      featureAnnotation = [(VKLabelMarker *)self->_labelMarker featureAnnotation];
      v11 = featureAnnotation;
      if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
      {
        v12 = v11;
        mapView = [(MapSelectionManager *)self mapView];
        _displayedSearchResultsType = [mapView _displayedSearchResultsType];

        styleAttributes = [v12 styleAttributes];
        v15StyleAttributes = [styleAttributes styleAttributes];
        isLabelPOI = [v15StyleAttributes isLabelPOI];

        if (isLabelPOI && _displayedSearchResultsType == 2)
        {
          if ([v22 state] == 1)
          {
            v18 = +[NSUserDefaults standardUserDefaults];
            [v18 floatForKey:@"__personalizedMapsZoomAmountToClearClusterSelection"];
            self->_clusterDeselectZoomThreshold = v19;
          }

          if ([v22 state] == 2)
          {
            [v22 scale];
            if (v20 == 0.0)
            {
              v20 = 1.0;
            }

            if (v20 < 1.0)
            {
              v20 = 1.0 / v20;
            }

            if (v20 > 1.29999995)
            {
              WeakRetained = objc_loadWeakRetained(&self->_customPOIsController);
              [WeakRetained clearSearchResultStyle];
            }
          }
        }
      }

      goto LABEL_27;
    }

    if ([v22 state] == 1)
    {
      v6 = +[NSUserDefaults standardUserDefaults];
      [v6 floatForKey:@"__personalizedMapsZoomAmountToClearClusterSelection"];
      self->_clusterDeselectZoomThreshold = v7;
    }

    state = [v22 state];
    gestureCopy = v22;
    if (state == 2)
    {
      [v22 scale];
      gestureCopy = v22;
      if (v9 == 0.0)
      {
        v9 = 1.0;
      }

      if (v9 < 1.0)
      {
        v9 = 1.0 / v9;
      }

      if (v9 > self->_clusterDeselectZoomThreshold)
      {
        [(MapSelectionManager *)self clearSelection];
LABEL_27:
        gestureCopy = v22;
      }
    }
  }
}

- (void)_applyMapSelectionDidChange
{
  self->_mapSelectionChangePending = 0;
  pendingSelectedLabelMarker = self->_pendingSelectedLabelMarker;
  self->_pendingSelectedLabelMarker = 0;
  v4 = pendingSelectedLabelMarker;

  [(MapSelectionManager *)self setLabelMarker:v4];
}

- (void)_performAnalyticsForTappingOnAnnotationView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100EAC2FC;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = viewCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_performAnalyticsForTappingOnLabelMarker:(id)marker
{
  markerCopy = marker;
  v5 = markerCopy;
  if (markerCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100EAC50C;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = markerCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)mapDidSelectAnnotationView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (!self->_ignoreSelectionChanges)
  {
    if (viewCopy && ![(MapSelectionManager *)self mapShouldSelectAnnotationView:viewCopy])
    {
      v7 = sub_10006CB50();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 134349314;
        selfCopy2 = self;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Will reverse annotation view selection: %@", &v11, 0x16u);
      }

      ignoreSelectionChanges = self->_ignoreSelectionChanges;
      [(MapSelectionManager *)self setIgnoreSelectionChanges:1];
      mapView = [(MapSelectionManager *)self mapView];
      annotation = [v5 annotation];
      [mapView deselectAnnotation:annotation animated:0];

      [(MapSelectionManager *)self setIgnoreSelectionChanges:ignoreSelectionChanges];
    }

    else
    {
      v6 = sub_10006CB50();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 134349314;
        selfCopy2 = self;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Map did select annotation view: %@", &v11, 0x16u);
      }

      [(MapSelectionManager *)self setAnnotationView:v5];
      [(MapSelectionManager *)self _performAnalyticsForTappingOnAnnotationView:v5];
    }
  }
}

- (BOOL)mapShouldSelectAnnotationView:(id)view
{
  viewCopy = view;
  delegate = [(MapSelectionManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MapSelectionManager *)self delegate];
    v8 = [delegate2 mapSelectionManager:self shouldSelectAnnotationView:viewCopy];
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_10006CB50();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v13 = 134349570;
    selfCopy = self;
    v15 = 2112;
    v16 = viewCopy;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Should select annotationView %@: %@", &v13, 0x20u);
  }

  return v8;
}

- (void)mapDidSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  v6 = sub_10006CB50();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v15 = 2112;
    v16 = markerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Map did select label marker: %@", buf, 0x16u);
  }

  labelMarker = self->_labelMarker;
  if (labelMarker && labelMarker != markerCopy)
  {
    featureAnnotation = [(VKLabelMarker *)labelMarker featureAnnotation];
    if ([featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      searchResult = [featureAnnotation searchResult];
      if (searchResult)
      {
        delegate = [(MapSelectionManager *)self delegate];
        v11 = [delegate searchPinsManagerForMapSelectionManager:self];

        [v11 mapSelectionManagerDidDeselectSearchResult:searchResult];
      }
    }
  }

  if (!self->_ignoreSelectionChanges)
  {
    if (!self->_mapSelectionChangePending)
    {
      self->_mapSelectionChangePending = 1;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100EACB94;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    objc_storeStrong(&self->_pendingSelectedLabelMarker, marker);
    [(MapSelectionManager *)self _performAnalyticsForTappingOnLabelMarker:markerCopy];
  }
}

- (BOOL)mapShouldSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isRouteAnnotation])
  {
    _maps_selectableRouteAnnotations = [markerCopy _maps_selectableRouteAnnotations];
    if (![_maps_selectableRouteAnnotations count])
    {

LABEL_10:
      v7 = sub_10006CB50();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Suppressing label marker selection (no selectable route annotations or empty cluster)", &v15, 0xCu);
      }

      LOBYTE(v8) = 0;
      goto LABEL_21;
    }

    if ([markerCopy isCluster])
    {
      clusterFeatureCount = [markerCopy clusterFeatureCount];

      if (!clusterFeatureCount)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (([markerCopy isCluster] & 1) != 0 && !objc_msgSend(markerCopy, "clusterFeatureCount"))
  {
    goto LABEL_10;
  }

  delegate = [(MapSelectionManager *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(MapSelectionManager *)self delegate];
    v8 = [delegate2 mapSelectionManager:self shouldSelectVKLabelMarker:markerCopy];
  }

  else
  {
    v8 = 1;
  }

  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    if (v8)
    {
      v12 = @"YES";
    }

    v13 = v12;
    v15 = 134349570;
    selfCopy2 = self;
    v17 = 2112;
    v18 = markerCopy;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Should select label marker %@: %@", &v15, 0x20u);
  }

LABEL_21:

  return v8;
}

- (void)restoreSelectionState:(id)state animated:(BOOL)animated restoreRegion:(BOOL)region notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  regionCopy = region;
  animatedCopy = animated;
  stateCopy = state;
  v11 = sub_10006CB50();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v28 = 134349314;
    selfCopy = self;
    v30 = 2112;
    v31 = stateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Restoring selection state: %@", &v28, 0x16u);
  }

  if (stateCopy)
  {
    camera = [stateCopy camera];
    v13 = camera;
    if (camera && (([camera centerCoordinate], fabs(v15) > 180.0) || v14 < -90.0 || v14 > 90.0))
    {

      v13 = 0;
    }

    else
    {
      customPOIKeys = [stateCopy customPOIKeys];

      if (customPOIKeys)
      {
        customPOIKeys2 = [stateCopy customPOIKeys];
        [(MapSelectionManager *)self _selectLabelMarkerWithKeys:customPOIKeys2 camera:v13 animated:animatedCopy restoreRegion:regionCopy updateIfNeeded:delegateCopy completion:0];
      }

      else
      {
        selectedAnnotations = [stateCopy selectedAnnotations];
        v19 = [selectedAnnotations count];

        if (v19)
        {
          mapView = [(MapSelectionManager *)self mapView];
          selectedAnnotations2 = [stateCopy selectedAnnotations];
          [mapView setSelectedAnnotations:selectedAnnotations2];

          if (v13 && regionCopy)
          {
            [(MapCameraController *)self->_mapCameraController restoreRegionForMapSelectionWithCamera:v13 completion:0];
          }
        }

        else
        {
          labelMarker = [stateCopy labelMarker];

          if (labelMarker)
          {
            labelMarker2 = [stateCopy labelMarker];
            isCluster = [labelMarker2 isCluster];

            if (isCluster)
            {
              [(MapSelectionManager *)self clearSelectionAnimated:0 updateIfNeeded:delegateCopy];
            }

            else
            {
              labelMarker3 = [stateCopy labelMarker];
              [(MapSelectionManager *)self selectLabelMarker:labelMarker3 animated:animatedCopy updateIfNeeded:delegateCopy];
            }
          }

          else
          {
            delegate = [(MapSelectionManager *)self delegate];
            v26 = [delegate searchPinsManagerForMapSelectionManager:self];

            [v26 clearLinkedPlacesAndPolygon];
          }
        }
      }
    }
  }
}

- (id)selectionStateIncludingCamera:(BOOL)camera includeNotCustomLabelMarkers:(BOOL)markers
{
  markersCopy = markers;
  cameraCopy = camera;
  v7 = objc_opt_new();
  mapView = [(MapSelectionManager *)self mapView];
  _selectedLabelMarker = [mapView _selectedLabelMarker];

  if (!_selectedLabelMarker)
  {
    mapView2 = [(MapSelectionManager *)self mapView];
    selectedAnnotations = [mapView2 selectedAnnotations];
    [v7 setSelectedAnnotations:selectedAnnotations];
    goto LABEL_9;
  }

  if (!markersCopy)
  {
    featureAnnotation = [_selectedLabelMarker featureAnnotation];
    mapView2 = featureAnnotation;
    if (!featureAnnotation || ![featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
LABEL_10:

      if (!cameraCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    selectedAnnotations = [mapView2 keys];
    [v7 setCustomPOIKeys:selectedAnnotations];
LABEL_9:

    goto LABEL_10;
  }

  [v7 setLabelMarker:_selectedLabelMarker];
  if (cameraCopy)
  {
LABEL_11:
    mapView3 = [(MapSelectionManager *)self mapView];
    camera = [mapView3 camera];
    [v7 setCamera:camera];
  }

LABEL_12:

  return v7;
}

- (void)_selectCustomPOIAnnotation:(id)annotation camera:(id)camera restoreRegion:(BOOL)region updateIfNeeded:(BOOL)needed completion:(id)completion
{
  regionCopy = region;
  cameraCopy = camera;
  completionCopy = completion;
  annotationCopy = annotation;
  mapView = [(MapSelectionManager *)self mapView];
  v16 = [mapView _labelMarkerForCustomFeatureAnnotation:annotationCopy];

  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100EAD3C0;
  v28 = &unk_101661068;
  v17 = v16;
  v29 = v17;
  selfCopy = self;
  neededCopy = needed;
  v18 = completionCopy;
  v31 = v18;
  v19 = objc_retainBlock(&v25);
  (v19[2])(v19, v20, v21, v22);
  if (regionCopy)
  {
    if (cameraCopy)
    {
      [(MapCameraController *)self->_mapCameraController restoreRegionForMapSelectionWithCamera:cameraCopy completion:0, v25, v26, v27, v28, v29, selfCopy];
    }

    else if (v17)
    {
      mapCameraController = self->_mapCameraController;
      v24 = [(MapSelectionManager *)self mapView:v25];
      [v24 _edgeInsets];
      [(MapCameraController *)mapCameraController restoreRegionForMapSelectionForLabelMarker:v17 edgeInsets:0 completion:?];
    }
  }
}

- (void)_selectLabelMarkerWithKeys:(id)keys camera:(id)camera animated:(BOOL)animated restoreRegion:(BOOL)region updateIfNeeded:(BOOL)needed completion:(id)completion
{
  keysCopy = keys;
  cameraCopy = camera;
  completionCopy = completion;
  v16 = sub_10006CB50();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    selfCopy = self;
    v26 = 2112;
    v27 = keysCopy;
    v28 = 2112;
    v29 = cameraCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Selecting label marker with keys: %@, camera: %@", buf, 0x20u);
  }

  if (keysCopy && [keysCopy count])
  {
    customPOIsController = [(MapSelectionManager *)self customPOIsController];

    if (customPOIsController)
    {
      [(MapSelectionManager *)self suspendUpdates];
      customPOIsController2 = [(MapSelectionManager *)self customPOIsController];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100EAD60C;
      v19[3] = &unk_101657788;
      v19[4] = self;
      v21 = completionCopy;
      v20 = cameraCopy;
      regionCopy = region;
      neededCopy = needed;
      [customPOIsController2 customFeatureForKeys:keysCopy completion:v19];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)injectPreviouslySelectedSearchResult:(id)result
{
  resultCopy = result;
  customPOIsController = [(MapSelectionManager *)self customPOIsController];
  v10 = [customPOIsController injectSearchResultIfNeeded:resultCopy];

  mapView = [(MapSelectionManager *)self mapView];
  v7 = [mapView _labelMarkerForCustomFeatureAnnotation:v10];

  mapView2 = [(MapSelectionManager *)self mapView];
  _mapLayer = [mapView2 _mapLayer];
  [_mapLayer setPreviouslySelectedLabelMarker:v7];
}

- (void)injectAndSelectSearchResult:(id)result
{
  resultCopy = result;
  customPOIsController = [(MapSelectionManager *)self customPOIsController];
  v6 = [customPOIsController injectSearchResultIfNeeded:resultCopy];

  [(MapSelectionManager *)self _selectCustomPOIAnnotation:v6 camera:0 restoreRegion:1 updateIfNeeded:1 completion:0];
}

- (void)injectAndSelectPersonalizedItem:(id)item
{
  itemCopy = item;
  customPOIsController = [(MapSelectionManager *)self customPOIsController];
  v6 = [customPOIsController injectPersonalizedItemIfNeeded:itemCopy];

  [(MapSelectionManager *)self _selectCustomPOIAnnotation:v6 camera:0 restoreRegion:1 updateIfNeeded:1 completion:0];
}

- (void)selectMapItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 134349314;
    selfCopy = self;
    v14 = 2112;
    v15 = itemCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Selecting map item: %@", &v12, 0x16u);
  }

  v8 = [[PersonalizedMapItemKey alloc] initWithMapItem:itemCopy];
  v9 = [NSSet setWithObject:v8];
  if ([itemCopy _hasMUID] && objc_msgSend(itemCopy, "_muid"))
  {
    v10 = -[PersonalizedMapItemMUIDKey initWithMUID:]([PersonalizedMapItemMUIDKey alloc], "initWithMUID:", [itemCopy _muid]);
    v11 = [v9 setByAddingObject:v10];

    v9 = v11;
  }

  [(MapSelectionManager *)self selectLabelMarkerWithKeys:v9 animated:animatedCopy completion:0];
}

- (BOOL)isMapItemSelected:(id)selected
{
  selectedCopy = selected;
  v5 = selectedCopy;
  if (selectedCopy)
  {
    identifier = [selectedCopy identifier];
    identifier2 = [(VKLabelMarker *)self->_labelMarker identifier];
    if (identifier && ([identifier isEqual:identifier2] & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      _maps_mapItem = [(VKLabelMarker *)self->_labelMarker _maps_mapItem];
      v8 = [v5 isEqual:_maps_mapItem];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deselectTrails
{
  selectedTrailId = [(MapSelectionManager *)self selectedTrailId];
  mapView = sub_10006CB50();
  v5 = os_log_type_enabled(mapView, OS_LOG_TYPE_INFO);
  if (selectedTrailId)
  {
    if (v5)
    {
      v6 = 134349312;
      selfCopy2 = self;
      v8 = 2048;
      selectedTrailId2 = [(MapSelectionManager *)self selectedTrailId];
      _os_log_impl(&_mh_execute_header, mapView, OS_LOG_TYPE_INFO, "[%{public}p] Deselecting trail with Id: %llu", &v6, 0x16u);
    }

    [(MapSelectionManager *)self setSelectedTrailId:0];
    mapView = [(MapSelectionManager *)self mapView];
    [mapView deselectTrails];
  }

  else if (v5)
  {
    v6 = 134349056;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, mapView, OS_LOG_TYPE_INFO, "[%{public}p] No selected trails to deselect.", &v6, 0xCu);
  }
}

- (void)selectTrailWithId:(unint64_t)id name:(id)name locale:(id)locale
{
  nameCopy = name;
  localeCopy = locale;
  v10 = sub_10006CB50();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 134349826;
    selfCopy = self;
    v14 = 2048;
    idCopy = id;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2112;
    v19 = localeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trail with Id: %llu, name: %@, locale: %@", &v12, 0x2Au);
  }

  [(MapSelectionManager *)self setSelectedTrailId:id];
  mapView = [(MapSelectionManager *)self mapView];
  [mapView setSelectedTrailWithId:id name:nameCopy locale:localeCopy];
}

- (void)selectTrailId:(unint64_t)id
{
  v5 = sub_10006CB50();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    selfCopy = self;
    v9 = 2048;
    idCopy = id;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trail ID: %llu", &v7, 0x16u);
  }

  [(MapSelectionManager *)self setSelectedTrailId:id];
  mapView = [(MapSelectionManager *)self mapView];
  [mapView setSelectedTrailId:id];
}

- (void)selectSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134349314;
    selfCopy = self;
    v12 = 2112;
    v13 = resultCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Selecting search result: %@", &v10, 0x16u);
  }

  delegate = [(MapSelectionManager *)self delegate];
  v9 = [delegate searchPinsManagerForMapSelectionManager:self];

  [v9 selectAndShowSearchResult:resultCopy animated:animatedCopy];
}

- (void)selectLabelMarker:(id)marker animated:(BOOL)animated updateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  animatedCopy = animated;
  markerCopy = marker;
  v9 = sub_10006CB50();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134349314;
    selfCopy = self;
    v14 = 2112;
    v15 = markerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Selecting label marker: %@", &v12, 0x16u);
  }

  if (self->_labelMarker != markerCopy)
  {
    featureAnnotation = [(VKLabelMarker *)markerCopy featureAnnotation];
    if (featureAnnotation)
    {

LABEL_7:
      [(MapSelectionManager *)self setLabelMarker:markerCopy updateIfNeeded:neededCopy];
      mapView = [(MapSelectionManager *)self mapView];
      [mapView _selectLabelMarker:markerCopy animated:animatedCopy];

      goto LABEL_8;
    }

    if (([(VKLabelMarker *)markerCopy isSelectable]& 1) != 0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)clearSelectionAnimated:(BOOL)animated updateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  animatedCopy = animated;
  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v21 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Clearing selection", &v21, 0xCu);
  }

  customPOIsController = [(MapSelectionManager *)self customPOIsController];
  [customPOIsController clearInjectSearchResult];

  labelMarker = self->_labelMarker;
  v10 = labelMarker != 0;
  if (labelMarker)
  {
    mapView = [(MapSelectionManager *)self mapView];
    [mapView _deselectLabelMarkerAnimated:animatedCopy];

    mapView2 = [(MapSelectionManager *)self mapView];
    [mapView2 deselectVenuePoiFeatureId];

    v13 = self->_labelMarker;
    self->_labelMarker = 0;
  }

  if (self->_annotationView)
  {
    mapView3 = [(MapSelectionManager *)self mapView];
    annotation = [(MKAnnotationView *)self->_annotationView annotation];
    [mapView3 deselectAnnotation:annotation animated:animatedCopy];

    annotationView = self->_annotationView;
    self->_annotationView = 0;

    v10 = 1;
  }

  mapView4 = [(MapSelectionManager *)self mapView];
  _hasSelectedTransitLines = [mapView4 _hasSelectedTransitLines];

  if (_hasSelectedTransitLines)
  {
    mapView5 = [(MapSelectionManager *)self mapView];
    [mapView5 _deselectTransitLineMarker];

    mapView6 = [(MapSelectionManager *)self mapView];
    [mapView6 _setApplicationState:0];

    v10 = 1;
  }

  [(MapSelectionManager *)self deselectTrails];
  if (v10 && neededCopy)
  {
    [(MapSelectionManager *)self _setNeedsUpdate];
  }
}

- (CustomPOIAnnotation)customLabelMarker
{
  featureAnnotation = [(VKLabelMarker *)self->_labelMarker featureAnnotation];
  v3 = featureAnnotation;
  if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAnnotationView:(id)view
{
  viewCopy = view;
  if (self->_annotationView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_annotationView, view);
    labelMarker = self->_labelMarker;
    self->_labelMarker = 0;

    mapView = [(MapSelectionManager *)self mapView];
    [mapView deselectVenuePoiFeatureId];

    [(MapSelectionManager *)self _setNeedsUpdate];
    viewCopy = v8;
  }
}

- (void)setLabelMarker:(id)marker updateIfNeeded:(BOOL)needed
{
  markerCopy = marker;
  p_labelMarker = &self->_labelMarker;
  if (self->_labelMarker == markerCopy)
  {
    goto LABEL_13;
  }

  v18 = markerCopy;
  featureAnnotation = [(VKLabelMarker *)markerCopy featureAnnotation];
  if (featureAnnotation)
  {
    featureAnnotation2 = [(VKLabelMarker *)*p_labelMarker featureAnnotation];

    if (featureAnnotation2)
    {
      featureAnnotation3 = [(VKLabelMarker *)v18 featureAnnotation];
      featureAnnotation4 = [(VKLabelMarker *)*p_labelMarker featureAnnotation];
      LOBYTE(featureAnnotation) = [featureAnnotation3 isEqual:featureAnnotation4];
    }

    else
    {
      LOBYTE(featureAnnotation) = 0;
    }
  }

  objc_storeStrong(&self->_labelMarker, marker);
  annotationView = self->_annotationView;
  self->_annotationView = 0;

  if ([(VKLabelMarker *)v18 countFeatureIDs])
  {
    mapView = [(MapSelectionManager *)self mapView];
    businessID = *[(VKLabelMarker *)v18 featureIDs];
LABEL_10:
    [mapView setSelectedVenuePoiFeatureId:businessID];
    goto LABEL_11;
  }

  hasBusinessID = [(VKLabelMarker *)v18 hasBusinessID];
  mapView2 = [(MapSelectionManager *)self mapView];
  mapView = mapView2;
  if (hasBusinessID)
  {
    businessID = [(VKLabelMarker *)v18 businessID];
    goto LABEL_10;
  }

  [mapView2 deselectVenuePoiFeatureId];
LABEL_11:

  self->_isCluster = [(VKLabelMarker *)v18 isCluster];
  markerCopy = v18;
  if (!(featureAnnotation & 1 | !needed))
  {
    [(MapSelectionManager *)self _setNeedsUpdate];
    markerCopy = v18;
  }

LABEL_13:
}

- (void)_removeGestureRecognizersForMapView:(id)view
{
  if (view)
  {
    viewCopy = view;
    _pinchGestureRecognizer = [viewCopy _pinchGestureRecognizer];
    [_pinchGestureRecognizer removeTarget:self action:"_handleMapPinch:"];

    _oneHandedZoomGestureRecognizer = [viewCopy _oneHandedZoomGestureRecognizer];
    [_oneHandedZoomGestureRecognizer removeTarget:self action:"_handleMapZoomingGesture:"];

    _doubleTapGestureRecognizer = [viewCopy _doubleTapGestureRecognizer];
    [_doubleTapGestureRecognizer removeTarget:self action:"_clearClusterSelectionOnGesture:"];

    _twoFingerTapGestureRecognizer = [viewCopy _twoFingerTapGestureRecognizer];
    [_twoFingerTapGestureRecognizer removeTarget:self action:"_clearClusterSelectionOnGesture:"];

    _selectingTapGestureRecognizer = [viewCopy _selectingTapGestureRecognizer];

    [_selectingTapGestureRecognizer removeTarget:self action:"_handleSelectingTapGesture:"];
  }
}

- (void)_addGestureRecognizersForMapView:(id)view
{
  if (view)
  {
    viewCopy = view;
    _pinchGestureRecognizer = [viewCopy _pinchGestureRecognizer];
    [_pinchGestureRecognizer addTarget:self action:"_handleMapPinch:"];

    _oneHandedZoomGestureRecognizer = [viewCopy _oneHandedZoomGestureRecognizer];
    [_oneHandedZoomGestureRecognizer addTarget:self action:"_handleMapZoomingGesture:"];

    _doubleTapGestureRecognizer = [viewCopy _doubleTapGestureRecognizer];
    [_doubleTapGestureRecognizer addTarget:self action:"_clearClusterSelectionOnGesture:"];

    _twoFingerTapGestureRecognizer = [viewCopy _twoFingerTapGestureRecognizer];
    [_twoFingerTapGestureRecognizer addTarget:self action:"_clearClusterSelectionOnGesture:"];

    _selectingTapGestureRecognizer = [viewCopy _selectingTapGestureRecognizer];

    [_selectingTapGestureRecognizer addTarget:self action:"_handleSelectingTapGesture:"];
  }
}

- (void)setMapCameraController:(id)controller
{
  controllerCopy = controller;
  if (self->_mapCameraController != controllerCopy)
  {
    v10 = controllerCopy;
    mapCameraController = [(MapSelectionManager *)self mapCameraController];
    mapView = [mapCameraController mapView];
    [(MapSelectionManager *)self _removeGestureRecognizersForMapView:mapView];

    objc_storeStrong(&self->_mapCameraController, controller);
    mapCameraController2 = [(MapSelectionManager *)self mapCameraController];
    mapView2 = [mapCameraController2 mapView];
    [(MapSelectionManager *)self _addGestureRecognizersForMapView:mapView2];

    controllerCopy = v10;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->needsUpdate)
  {
    self->needsUpdate = 1;
    [(MapSelectionManager *)self suspendUpdates];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100EAE8D0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    updateGroup = self->_updateGroup;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100EAE8D8;
    v4[3] = &unk_101661B18;
    v4[4] = self;
    dispatch_group_notify(updateGroup, &_dispatch_main_q, v4);
  }
}

- (void)_notifyDelegate
{
  if (!atomic_fetch_add_explicit(&self->_updateCount, 0, memory_order_relaxed))
  {
    if (self->_labelMarker)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained mapSelectionManager:self selectVKLabelMarker:self->_labelMarker];
    }

    else
    {
      annotationView = self->_annotationView;
      v5 = objc_loadWeakRetained(&self->_delegate);
      WeakRetained = v5;
      if (annotationView)
      {
        [v5 mapSelectionManager:self selectAnnotationView:self->_annotationView];
      }

      else
      {
        [v5 mapSelectionManagerClearSelection:self];
      }
    }
  }
}

- (MKMapView)mapView
{
  mapCameraController = [(MapSelectionManager *)self mapCameraController];
  mapView = [mapCameraController mapView];

  return mapView;
}

- (void)dealloc
{
  mapView = [(MapSelectionManager *)self mapView];
  [(MapSelectionManager *)self _removeGestureRecognizersForMapView:mapView];

  v4.receiver = self;
  v4.super_class = MapSelectionManager;
  [(MapSelectionManager *)&v4 dealloc];
}

- (MapSelectionManager)initWithCameraController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = MapSelectionManager;
  v6 = [(MapSelectionManager *)&v12 init];
  if (v6)
  {
    mapView = [controllerCopy mapView];
    [(MapSelectionManager *)v6 _addGestureRecognizersForMapView:mapView];

    objc_storeStrong(&v6->_mapCameraController, controller);
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 registerDefaults:&off_1016EE5D8];

    v9 = dispatch_group_create();
    updateGroup = v6->_updateGroup;
    v6->_updateGroup = v9;
  }

  return v6;
}

@end