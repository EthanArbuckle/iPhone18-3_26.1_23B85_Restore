@interface MapSelectionManager
- (BOOL)isMapItemSelected:(id)a3;
- (BOOL)mapShouldSelectAnnotationView:(id)a3;
- (BOOL)mapShouldSelectLabelMarker:(id)a3;
- (CustomPOIAnnotation)customLabelMarker;
- (CustomPOIsController)customPOIsController;
- (MKMapView)mapView;
- (MapSelectionManager)initWithCameraController:(id)a3;
- (MapSelectionManagerDelegate)delegate;
- (id)selectionStateIncludingCamera:(BOOL)a3 includeNotCustomLabelMarkers:(BOOL)a4;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (void)_addGestureRecognizersForMapView:(id)a3;
- (void)_applyMapSelectionDidChange;
- (void)_clearClusterSelectionOnGesture:(id)a3;
- (void)_handleMapZoomingGesture:(id)a3;
- (void)_notifyDelegate;
- (void)_performAnalyticsForTappingOnAnnotationView:(id)a3;
- (void)_performAnalyticsForTappingOnLabelMarker:(id)a3;
- (void)_removeGestureRecognizersForMapView:(id)a3;
- (void)_selectCustomPOIAnnotation:(id)a3 camera:(id)a4 restoreRegion:(BOOL)a5 updateIfNeeded:(BOOL)a6 completion:(id)a7;
- (void)_selectLabelMarkerWithKeys:(id)a3 camera:(id)a4 animated:(BOOL)a5 restoreRegion:(BOOL)a6 updateIfNeeded:(BOOL)a7 completion:(id)a8;
- (void)_setNeedsUpdate;
- (void)clearSelectionAnimated:(BOOL)a3 updateIfNeeded:(BOOL)a4;
- (void)dealloc;
- (void)deselectTrails;
- (void)injectAndSelectPersonalizedItem:(id)a3;
- (void)injectAndSelectSearchResult:(id)a3;
- (void)injectPreviouslySelectedSearchResult:(id)a3;
- (void)mapDidSelectAnnotationView:(id)a3;
- (void)mapDidSelectLabelMarker:(id)a3;
- (void)restoreSelectionState:(id)a3 animated:(BOOL)a4 restoreRegion:(BOOL)a5 notifyDelegate:(BOOL)a6;
- (void)selectLabelMarker:(id)a3 animated:(BOOL)a4 updateIfNeeded:(BOOL)a5;
- (void)selectMapItem:(id)a3 animated:(BOOL)a4;
- (void)selectSearchResult:(id)a3 animated:(BOOL)a4;
- (void)selectTrailId:(unint64_t)a3;
- (void)selectTrailWithId:(unint64_t)a3 name:(id)a4 locale:(id)a5;
- (void)setAnnotationView:(id)a3;
- (void)setLabelMarker:(id)a3 updateIfNeeded:(BOOL)a4;
- (void)setMapCameraController:(id)a3;
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
  v3 = [(MapSelectionManager *)self delegate];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MapSelectionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentMapViewTargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)currentUITargetForAnalytics
{
  v3 = [(MapSelectionManager *)self delegate];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MapSelectionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentUITargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_clearClusterSelectionOnGesture:(id)a3
{
  v4 = a3;
  if (self->_labelMarker)
  {
    if (self->_isCluster)
    {
      v6 = v4;
      v5 = [v4 state] == 3;
      v4 = v6;
      if (v5)
      {
        [(MapSelectionManager *)self clearSelection];
        v4 = v6;
      }
    }
  }
}

- (void)_handleMapZoomingGesture:(id)a3
{
  v4 = a3;
  labelMarker = self->_labelMarker;
  if (labelMarker)
  {
    v22 = v4;
    if (![(VKLabelMarker *)labelMarker isCluster])
    {
      v10 = [(VKLabelMarker *)self->_labelMarker featureAnnotation];
      v11 = v10;
      if (v10 && [v10 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
      {
        v12 = v11;
        v13 = [(MapSelectionManager *)self mapView];
        v14 = [v13 _displayedSearchResultsType];

        v15 = [v12 styleAttributes];
        v16 = [v15 styleAttributes];
        v17 = [v16 isLabelPOI];

        if (v17 && v14 == 2)
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

    v8 = [v22 state];
    v4 = v22;
    if (v8 == 2)
    {
      [v22 scale];
      v4 = v22;
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
        v4 = v22;
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

- (void)_performAnalyticsForTappingOnAnnotationView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100EAC2FC;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_performAnalyticsForTappingOnLabelMarker:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100EAC50C;
    v6[3] = &unk_101661A90;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)mapDidSelectAnnotationView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_ignoreSelectionChanges)
  {
    if (v4 && ![(MapSelectionManager *)self mapShouldSelectAnnotationView:v4])
    {
      v7 = sub_10006CB50();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 134349314;
        v12 = self;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Will reverse annotation view selection: %@", &v11, 0x16u);
      }

      ignoreSelectionChanges = self->_ignoreSelectionChanges;
      [(MapSelectionManager *)self setIgnoreSelectionChanges:1];
      v9 = [(MapSelectionManager *)self mapView];
      v10 = [v5 annotation];
      [v9 deselectAnnotation:v10 animated:0];

      [(MapSelectionManager *)self setIgnoreSelectionChanges:ignoreSelectionChanges];
    }

    else
    {
      v6 = sub_10006CB50();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 134349314;
        v12 = self;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Map did select annotation view: %@", &v11, 0x16u);
      }

      [(MapSelectionManager *)self setAnnotationView:v5];
      [(MapSelectionManager *)self _performAnalyticsForTappingOnAnnotationView:v5];
    }
  }
}

- (BOOL)mapShouldSelectAnnotationView:(id)a3
{
  v4 = a3;
  v5 = [(MapSelectionManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MapSelectionManager *)self delegate];
    v8 = [v7 mapSelectionManager:self shouldSelectAnnotationView:v4];
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
    v14 = self;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Should select annotationView %@: %@", &v13, 0x20u);
  }

  return v8;
}

- (void)mapDidSelectLabelMarker:(id)a3
{
  v5 = a3;
  v6 = sub_10006CB50();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v14 = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Map did select label marker: %@", buf, 0x16u);
  }

  labelMarker = self->_labelMarker;
  if (labelMarker && labelMarker != v5)
  {
    v8 = [(VKLabelMarker *)labelMarker featureAnnotation];
    if ([v8 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      v9 = [v8 searchResult];
      if (v9)
      {
        v10 = [(MapSelectionManager *)self delegate];
        v11 = [v10 searchPinsManagerForMapSelectionManager:self];

        [v11 mapSelectionManagerDidDeselectSearchResult:v9];
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

    objc_storeStrong(&self->_pendingSelectedLabelMarker, a3);
    [(MapSelectionManager *)self _performAnalyticsForTappingOnLabelMarker:v5];
  }
}

- (BOOL)mapShouldSelectLabelMarker:(id)a3
{
  v4 = a3;
  if ([v4 isRouteAnnotation])
  {
    v5 = [v4 _maps_selectableRouteAnnotations];
    if (![v5 count])
    {

LABEL_10:
      v7 = sub_10006CB50();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134349056;
        v16 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Suppressing label marker selection (no selectable route annotations or empty cluster)", &v15, 0xCu);
      }

      LOBYTE(v8) = 0;
      goto LABEL_21;
    }

    if ([v4 isCluster])
    {
      v6 = [v4 clusterFeatureCount];

      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (([v4 isCluster] & 1) != 0 && !objc_msgSend(v4, "clusterFeatureCount"))
  {
    goto LABEL_10;
  }

  v9 = [(MapSelectionManager *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MapSelectionManager *)self delegate];
    v8 = [v11 mapSelectionManager:self shouldSelectVKLabelMarker:v4];
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
    v16 = self;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Should select label marker %@: %@", &v15, 0x20u);
  }

LABEL_21:

  return v8;
}

- (void)restoreSelectionState:(id)a3 animated:(BOOL)a4 restoreRegion:(BOOL)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = sub_10006CB50();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v28 = 134349314;
    v29 = self;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Restoring selection state: %@", &v28, 0x16u);
  }

  if (v10)
  {
    v12 = [v10 camera];
    v13 = v12;
    if (v12 && (([v12 centerCoordinate], fabs(v15) > 180.0) || v14 < -90.0 || v14 > 90.0))
    {

      v13 = 0;
    }

    else
    {
      v16 = [v10 customPOIKeys];

      if (v16)
      {
        v17 = [v10 customPOIKeys];
        [(MapSelectionManager *)self _selectLabelMarkerWithKeys:v17 camera:v13 animated:v8 restoreRegion:v7 updateIfNeeded:v6 completion:0];
      }

      else
      {
        v18 = [v10 selectedAnnotations];
        v19 = [v18 count];

        if (v19)
        {
          v20 = [(MapSelectionManager *)self mapView];
          v21 = [v10 selectedAnnotations];
          [v20 setSelectedAnnotations:v21];

          if (v13 && v7)
          {
            [(MapCameraController *)self->_mapCameraController restoreRegionForMapSelectionWithCamera:v13 completion:0];
          }
        }

        else
        {
          v22 = [v10 labelMarker];

          if (v22)
          {
            v23 = [v10 labelMarker];
            v24 = [v23 isCluster];

            if (v24)
            {
              [(MapSelectionManager *)self clearSelectionAnimated:0 updateIfNeeded:v6];
            }

            else
            {
              v27 = [v10 labelMarker];
              [(MapSelectionManager *)self selectLabelMarker:v27 animated:v8 updateIfNeeded:v6];
            }
          }

          else
          {
            v25 = [(MapSelectionManager *)self delegate];
            v26 = [v25 searchPinsManagerForMapSelectionManager:self];

            [v26 clearLinkedPlacesAndPolygon];
          }
        }
      }
    }
  }
}

- (id)selectionStateIncludingCamera:(BOOL)a3 includeNotCustomLabelMarkers:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_opt_new();
  v8 = [(MapSelectionManager *)self mapView];
  v9 = [v8 _selectedLabelMarker];

  if (!v9)
  {
    v10 = [(MapSelectionManager *)self mapView];
    v11 = [v10 selectedAnnotations];
    [v7 setSelectedAnnotations:v11];
    goto LABEL_9;
  }

  if (!v4)
  {
    v12 = [v9 featureAnnotation];
    v10 = v12;
    if (!v12 || ![v12 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
LABEL_10:

      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v11 = [v10 keys];
    [v7 setCustomPOIKeys:v11];
LABEL_9:

    goto LABEL_10;
  }

  [v7 setLabelMarker:v9];
  if (v5)
  {
LABEL_11:
    v13 = [(MapSelectionManager *)self mapView];
    v14 = [v13 camera];
    [v7 setCamera:v14];
  }

LABEL_12:

  return v7;
}

- (void)_selectCustomPOIAnnotation:(id)a3 camera:(id)a4 restoreRegion:(BOOL)a5 updateIfNeeded:(BOOL)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a4;
  v13 = a7;
  v14 = a3;
  v15 = [(MapSelectionManager *)self mapView];
  v16 = [v15 _labelMarkerForCustomFeatureAnnotation:v14];

  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100EAD3C0;
  v28 = &unk_101661068;
  v17 = v16;
  v29 = v17;
  v30 = self;
  v32 = a6;
  v18 = v13;
  v31 = v18;
  v19 = objc_retainBlock(&v25);
  (v19[2])(v19, v20, v21, v22);
  if (v9)
  {
    if (v12)
    {
      [(MapCameraController *)self->_mapCameraController restoreRegionForMapSelectionWithCamera:v12 completion:0, v25, v26, v27, v28, v29, v30];
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

- (void)_selectLabelMarkerWithKeys:(id)a3 camera:(id)a4 animated:(BOOL)a5 restoreRegion:(BOOL)a6 updateIfNeeded:(BOOL)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = sub_10006CB50();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v25 = self;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Selecting label marker with keys: %@, camera: %@", buf, 0x20u);
  }

  if (v13 && [v13 count])
  {
    v17 = [(MapSelectionManager *)self customPOIsController];

    if (v17)
    {
      [(MapSelectionManager *)self suspendUpdates];
      v18 = [(MapSelectionManager *)self customPOIsController];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100EAD60C;
      v19[3] = &unk_101657788;
      v19[4] = self;
      v21 = v15;
      v20 = v14;
      v22 = a6;
      v23 = a7;
      [v18 customFeatureForKeys:v13 completion:v19];
    }
  }

  else if (v15)
  {
    (*(v15 + 2))(v15, 0);
  }
}

- (void)injectPreviouslySelectedSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(MapSelectionManager *)self customPOIsController];
  v10 = [v5 injectSearchResultIfNeeded:v4];

  v6 = [(MapSelectionManager *)self mapView];
  v7 = [v6 _labelMarkerForCustomFeatureAnnotation:v10];

  v8 = [(MapSelectionManager *)self mapView];
  v9 = [v8 _mapLayer];
  [v9 setPreviouslySelectedLabelMarker:v7];
}

- (void)injectAndSelectSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(MapSelectionManager *)self customPOIsController];
  v6 = [v5 injectSearchResultIfNeeded:v4];

  [(MapSelectionManager *)self _selectCustomPOIAnnotation:v6 camera:0 restoreRegion:1 updateIfNeeded:1 completion:0];
}

- (void)injectAndSelectPersonalizedItem:(id)a3
{
  v4 = a3;
  v5 = [(MapSelectionManager *)self customPOIsController];
  v6 = [v5 injectPersonalizedItemIfNeeded:v4];

  [(MapSelectionManager *)self _selectCustomPOIAnnotation:v6 camera:0 restoreRegion:1 updateIfNeeded:1 completion:0];
}

- (void)selectMapItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 134349314;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Selecting map item: %@", &v12, 0x16u);
  }

  v8 = [[PersonalizedMapItemKey alloc] initWithMapItem:v6];
  v9 = [NSSet setWithObject:v8];
  if ([v6 _hasMUID] && objc_msgSend(v6, "_muid"))
  {
    v10 = -[PersonalizedMapItemMUIDKey initWithMUID:]([PersonalizedMapItemMUIDKey alloc], "initWithMUID:", [v6 _muid]);
    v11 = [v9 setByAddingObject:v10];

    v9 = v11;
  }

  [(MapSelectionManager *)self selectLabelMarkerWithKeys:v9 animated:v4 completion:0];
}

- (BOOL)isMapItemSelected:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [(VKLabelMarker *)self->_labelMarker identifier];
    if (v6 && ([v6 isEqual:v7] & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(VKLabelMarker *)self->_labelMarker _maps_mapItem];
      v8 = [v5 isEqual:v9];
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
  v3 = [(MapSelectionManager *)self selectedTrailId];
  v4 = sub_10006CB50();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = 134349312;
      v7 = self;
      v8 = 2048;
      v9 = [(MapSelectionManager *)self selectedTrailId];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Deselecting trail with Id: %llu", &v6, 0x16u);
    }

    [(MapSelectionManager *)self setSelectedTrailId:0];
    v4 = [(MapSelectionManager *)self mapView];
    [v4 deselectTrails];
  }

  else if (v5)
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] No selected trails to deselect.", &v6, 0xCu);
  }
}

- (void)selectTrailWithId:(unint64_t)a3 name:(id)a4 locale:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_10006CB50();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 134349826;
    v13 = self;
    v14 = 2048;
    v15 = a3;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trail with Id: %llu, name: %@, locale: %@", &v12, 0x2Au);
  }

  [(MapSelectionManager *)self setSelectedTrailId:a3];
  v11 = [(MapSelectionManager *)self mapView];
  [v11 setSelectedTrailWithId:a3 name:v8 locale:v9];
}

- (void)selectTrailId:(unint64_t)a3
{
  v5 = sub_10006CB50();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Selecting trail ID: %llu", &v7, 0x16u);
  }

  [(MapSelectionManager *)self setSelectedTrailId:a3];
  v6 = [(MapSelectionManager *)self mapView];
  [v6 setSelectedTrailId:a3];
}

- (void)selectSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134349314;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Selecting search result: %@", &v10, 0x16u);
  }

  v8 = [(MapSelectionManager *)self delegate];
  v9 = [v8 searchPinsManagerForMapSelectionManager:self];

  [v9 selectAndShowSearchResult:v6 animated:v4];
}

- (void)selectLabelMarker:(id)a3 animated:(BOOL)a4 updateIfNeeded:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = sub_10006CB50();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134349314;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Selecting label marker: %@", &v12, 0x16u);
  }

  if (self->_labelMarker != v8)
  {
    v10 = [(VKLabelMarker *)v8 featureAnnotation];
    if (v10)
    {

LABEL_7:
      [(MapSelectionManager *)self setLabelMarker:v8 updateIfNeeded:v5];
      v11 = [(MapSelectionManager *)self mapView];
      [v11 _selectLabelMarker:v8 animated:v6];

      goto LABEL_8;
    }

    if (([(VKLabelMarker *)v8 isSelectable]& 1) != 0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)clearSelectionAnimated:(BOOL)a3 updateIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = sub_10006CB50();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v21 = 134349056;
    v22 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Clearing selection", &v21, 0xCu);
  }

  v8 = [(MapSelectionManager *)self customPOIsController];
  [v8 clearInjectSearchResult];

  labelMarker = self->_labelMarker;
  v10 = labelMarker != 0;
  if (labelMarker)
  {
    v11 = [(MapSelectionManager *)self mapView];
    [v11 _deselectLabelMarkerAnimated:v5];

    v12 = [(MapSelectionManager *)self mapView];
    [v12 deselectVenuePoiFeatureId];

    v13 = self->_labelMarker;
    self->_labelMarker = 0;
  }

  if (self->_annotationView)
  {
    v14 = [(MapSelectionManager *)self mapView];
    v15 = [(MKAnnotationView *)self->_annotationView annotation];
    [v14 deselectAnnotation:v15 animated:v5];

    annotationView = self->_annotationView;
    self->_annotationView = 0;

    v10 = 1;
  }

  v17 = [(MapSelectionManager *)self mapView];
  v18 = [v17 _hasSelectedTransitLines];

  if (v18)
  {
    v19 = [(MapSelectionManager *)self mapView];
    [v19 _deselectTransitLineMarker];

    v20 = [(MapSelectionManager *)self mapView];
    [v20 _setApplicationState:0];

    v10 = 1;
  }

  [(MapSelectionManager *)self deselectTrails];
  if (v10 && v4)
  {
    [(MapSelectionManager *)self _setNeedsUpdate];
  }
}

- (CustomPOIAnnotation)customLabelMarker
{
  v2 = [(VKLabelMarker *)self->_labelMarker featureAnnotation];
  v3 = v2;
  if (v2 && [v2 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAnnotationView:(id)a3
{
  v5 = a3;
  if (self->_annotationView != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_annotationView, a3);
    labelMarker = self->_labelMarker;
    self->_labelMarker = 0;

    v7 = [(MapSelectionManager *)self mapView];
    [v7 deselectVenuePoiFeatureId];

    [(MapSelectionManager *)self _setNeedsUpdate];
    v5 = v8;
  }
}

- (void)setLabelMarker:(id)a3 updateIfNeeded:(BOOL)a4
{
  v7 = a3;
  p_labelMarker = &self->_labelMarker;
  if (self->_labelMarker == v7)
  {
    goto LABEL_13;
  }

  v18 = v7;
  v9 = [(VKLabelMarker *)v7 featureAnnotation];
  if (v9)
  {
    v10 = [(VKLabelMarker *)*p_labelMarker featureAnnotation];

    if (v10)
    {
      v11 = [(VKLabelMarker *)v18 featureAnnotation];
      v12 = [(VKLabelMarker *)*p_labelMarker featureAnnotation];
      LOBYTE(v9) = [v11 isEqual:v12];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  objc_storeStrong(&self->_labelMarker, a3);
  annotationView = self->_annotationView;
  self->_annotationView = 0;

  if ([(VKLabelMarker *)v18 countFeatureIDs])
  {
    v14 = [(MapSelectionManager *)self mapView];
    v15 = *[(VKLabelMarker *)v18 featureIDs];
LABEL_10:
    [v14 setSelectedVenuePoiFeatureId:v15];
    goto LABEL_11;
  }

  v16 = [(VKLabelMarker *)v18 hasBusinessID];
  v17 = [(MapSelectionManager *)self mapView];
  v14 = v17;
  if (v16)
  {
    v15 = [(VKLabelMarker *)v18 businessID];
    goto LABEL_10;
  }

  [v17 deselectVenuePoiFeatureId];
LABEL_11:

  self->_isCluster = [(VKLabelMarker *)v18 isCluster];
  v7 = v18;
  if (!(v9 & 1 | !a4))
  {
    [(MapSelectionManager *)self _setNeedsUpdate];
    v7 = v18;
  }

LABEL_13:
}

- (void)_removeGestureRecognizersForMapView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 _pinchGestureRecognizer];
    [v5 removeTarget:self action:"_handleMapPinch:"];

    v6 = [v4 _oneHandedZoomGestureRecognizer];
    [v6 removeTarget:self action:"_handleMapZoomingGesture:"];

    v7 = [v4 _doubleTapGestureRecognizer];
    [v7 removeTarget:self action:"_clearClusterSelectionOnGesture:"];

    v8 = [v4 _twoFingerTapGestureRecognizer];
    [v8 removeTarget:self action:"_clearClusterSelectionOnGesture:"];

    v9 = [v4 _selectingTapGestureRecognizer];

    [v9 removeTarget:self action:"_handleSelectingTapGesture:"];
  }
}

- (void)_addGestureRecognizersForMapView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 _pinchGestureRecognizer];
    [v5 addTarget:self action:"_handleMapPinch:"];

    v6 = [v4 _oneHandedZoomGestureRecognizer];
    [v6 addTarget:self action:"_handleMapZoomingGesture:"];

    v7 = [v4 _doubleTapGestureRecognizer];
    [v7 addTarget:self action:"_clearClusterSelectionOnGesture:"];

    v8 = [v4 _twoFingerTapGestureRecognizer];
    [v8 addTarget:self action:"_clearClusterSelectionOnGesture:"];

    v9 = [v4 _selectingTapGestureRecognizer];

    [v9 addTarget:self action:"_handleSelectingTapGesture:"];
  }
}

- (void)setMapCameraController:(id)a3
{
  v5 = a3;
  if (self->_mapCameraController != v5)
  {
    v10 = v5;
    v6 = [(MapSelectionManager *)self mapCameraController];
    v7 = [v6 mapView];
    [(MapSelectionManager *)self _removeGestureRecognizersForMapView:v7];

    objc_storeStrong(&self->_mapCameraController, a3);
    v8 = [(MapSelectionManager *)self mapCameraController];
    v9 = [v8 mapView];
    [(MapSelectionManager *)self _addGestureRecognizersForMapView:v9];

    v5 = v10;
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
  v2 = [(MapSelectionManager *)self mapCameraController];
  v3 = [v2 mapView];

  return v3;
}

- (void)dealloc
{
  v3 = [(MapSelectionManager *)self mapView];
  [(MapSelectionManager *)self _removeGestureRecognizersForMapView:v3];

  v4.receiver = self;
  v4.super_class = MapSelectionManager;
  [(MapSelectionManager *)&v4 dealloc];
}

- (MapSelectionManager)initWithCameraController:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MapSelectionManager;
  v6 = [(MapSelectionManager *)&v12 init];
  if (v6)
  {
    v7 = [v5 mapView];
    [(MapSelectionManager *)v6 _addGestureRecognizersForMapView:v7];

    objc_storeStrong(&v6->_mapCameraController, a3);
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 registerDefaults:&off_1016EE5D8];

    v9 = dispatch_group_create();
    updateGroup = v6->_updateGroup;
    v6->_updateGroup = v9;
  }

  return v6;
}

@end