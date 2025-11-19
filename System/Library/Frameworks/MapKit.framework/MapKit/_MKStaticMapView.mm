@interface _MKStaticMapView
- ($9433BFB5400FDC760880D1BFD6845728)visibleMapRect;
- (BOOL)annotationContainerIsRotated:(id)a3;
- (BOOL)hasUserLocation;
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)a3 toPointToView:(id)a4;
- (CGRect)visibleRectInView:(id)a3;
- (CLLocationCoordinate2D)convertPoint:(CGPoint)a3 toCoordinateFromView:(id)a4;
- (NSArray)mapItems;
- (NSArray)overlays;
- (_MKStaticMapView)initWithFrame:(CGRect)a3 locationManager:(id)a4;
- (_MKStaticMapViewDelegate)delegate;
- (double)annotationContainer:(id)a3 pinDropDistanceForCoordinate:(CLLocationCoordinate2D)a4 maxDistance:(double *)a5;
- (id)annotationManager:(id)a3 representationForAnnotation:(id)a4;
- (unint64_t)_incrementSnapshotGeneration;
- (void)_addKVOForOverlayRenderer:(id)a3;
- (void)_displayGridWithCompletionHandler:(id)a3;
- (void)_executeWhenSizedBlock;
- (void)_handleGridSnapshot:(id)a3;
- (void)_handleSnapshot:(id)a3;
- (void)_handleSnapshotError:(id)a3;
- (void)_hideAllAnnotations;
- (void)_removeKVOForOverlayRenderer:(id)a3;
- (void)_showAllAnnotations;
- (void)_startSnapshotRequest;
- (void)_updateSnapshot:(BOOL)a3;
- (void)_updateSnapshotOptionsWithOverlayRenderers;
- (void)addAnnotation:(id)a3;
- (void)addAnnotationRepresentation:(id)a3 allowAnimation:(BOOL)a4;
- (void)addAnnotations:(id)a3;
- (void)addMapItems:(id)a3;
- (void)addOverlays:(id)a3;
- (void)addOverlays:(id)a3 level:(int64_t)a4;
- (void)addWhenSizedBlock:(id)a3;
- (void)annotationManager:(id)a3 didAddAnnotationRepresentations:(id)a4;
- (void)annotationManagerDidChangeVisibleAnnotationRepresentations:(id)a3;
- (void)dealloc;
- (void)deselectAnnotationRepresentation:(id)a3 animated:(BOOL)a4;
- (void)deselectMapItem:(id)a3;
- (void)endUpdates;
- (void)layoutMarginsDidChange;
- (void)locationManagerFailedToUpdateLocation:(id)a3 withError:(id)a4;
- (void)locationManagerUpdatedLimitsPrecisionState:(id)a3;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)moveAnnotationRepresentation:(id)a3 fromCoordinate:(CLLocationCoordinate2D)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAnnotation:(id)a3;
- (void)removeAnnotationRepresentation:(id)a3;
- (void)removeAnnotations:(id)a3;
- (void)removeMapItems:(id)a3;
- (void)removeOverlay:(id)a3;
- (void)removeOverlays:(id)a3;
- (void)selectAnnotationRepresentation:(id)a3 animated:(BOOL)a4;
- (void)selectMapItem:(id)a3;
- (void)selectUserLocationAnimated:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCamera:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPreferredConfiguration:(id)a3;
- (void)setRegion:(id *)a3;
- (void)setSelectedTrailWithId:(id)a3 name:(id)a4 locale:(id)a5;
- (void)setShowsUserLocation:(BOOL)a3;
- (void)setVisibleMapRect:(id)a3 edgePadding:(UIEdgeInsets)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation _MKStaticMapView

- (_MKStaticMapViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_executeWhenSizedBlock
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_whenSizedBlocks;
  whenSizedBlocks = self->_whenSizedBlocks;
  self->_whenSizedBlocks = 0;

  if ([(NSMutableArray *)v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)addWhenSizedBlock:(id)a3
{
  v4 = a3;
  whenSizedBlocks = self->_whenSizedBlocks;
  v9 = v4;
  if (!whenSizedBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_whenSizedBlocks;
    self->_whenSizedBlocks = v6;

    whenSizedBlocks = self->_whenSizedBlocks;
  }

  v8 = MEMORY[0x1A58E9F30]();
  [(NSMutableArray *)whenSizedBlocks addObject:v8];
}

- (void)selectMapItem:(id)a3
{
  v4 = [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    [v4 select];
    v6 = MKGetSnapshotLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Map item selected", v7, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (void)deselectMapItem:(id)a3
{
  v4 = [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    [v4 deselect];
    v6 = MKGetSnapshotLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Map item deselected", v7, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (void)removeMapItems:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v18 = v7;

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures objectForKey:v13];
        if (v14)
        {
          [(NSMapTable *)self->_mapItemCustomFeaturesToMapItems removeObjectForKey:v14];
          [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures removeObjectForKey:v13];
          [v8 addObject:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v15 = [v18 mutableCopy];
    [v15 removeObjectsInArray:v8];
    [(MKMapSnapshotOptions *)self->_snapshotOptions _setCustomFeatureAnnotations:v15];
    v16 = [(_MKStaticMapView *)self mapItems];
    -[MKMapSnapshotOptions _setSearchResultsType:](self->_snapshotOptions, "_setSearchResultsType:", [v16 count] != 0);

    v17 = MKGetSnapshotLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Map item custom features removed", buf, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (void)addMapItems:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v19 = v7;

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures objectForKey:v14];

        if (!v15)
        {
          v16 = [[_MKMapItemCustomFeature alloc] initWithMapItem:v14];
          [(NSMapTable *)self->_mapItemCustomFeaturesToMapItems setObject:v14 forKey:v16];
          [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures setObject:v16 forKey:v14];
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = [v19 mutableCopy];
    [v17 addObjectsFromArray:v8];
    [(MKMapSnapshotOptions *)self->_snapshotOptions _setCustomFeatureAnnotations:v17];
    [(MKMapSnapshotOptions *)self->_snapshotOptions _setSearchResultsType:1];
    v18 = MKGetSnapshotLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Map item custom features added", buf, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (NSArray)mapItems
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(NSMapTable *)self->_mapItemCustomFeaturesToMapItems objectForKey:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (CGRect)visibleRectInView:(id)a3
{
  v4 = a3;
  [(_MKStaticMapView *)self bounds];
  [(_MKStaticMapView *)self convertRect:v4 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)annotationContainer:(id)a3 pinDropDistanceForCoordinate:(CLLocationCoordinate2D)a4 maxDistance:(double *)a5
{
  [(_MKStaticMapView *)self convertCoordinate:self toPointToView:a4.latitude, a4.longitude];
  v8 = v7;
  if (a5)
  {
    [(_MKStaticMapView *)self bounds];
    *a5 = v9;
  }

  return v8;
}

- (BOOL)annotationContainerIsRotated:(id)a3
{
  v3 = [(MKMapSnapshotOptions *)self->_snapshotOptions camera];
  [v3 heading];
  v5 = v4 != 0.0;

  return v5;
}

- (id)annotationManager:(id)a3 representationForAnnotation:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 mapView:self viewForAnnotation:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)annotationManagerDidChangeVisibleAnnotationRepresentations:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:0];
  [MEMORY[0x1E6979518] begin];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v20 + 1) + 8 * i) _performStateUpdatesIfNeeded];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  [MEMORY[0x1E6979518] commit];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_currentUpdateAddedAnnotations;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v16 + 1) + 8 * j) isProvidingCustomFeature])
        {

          goto LABEL_19;
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (self->_currentUpdateRemovedCustomFeatureAnnotation)
  {
LABEL_19:
    v14 = MKGetSnapshotLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Custom feature annotations", v15, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:self->_currentUpdateRemovedCustomFeatureAnnotation];
  }

  [(NSMutableArray *)self->_currentUpdateAddedAnnotations removeAllObjects];
  self->_currentUpdateRemovedCustomFeatureAnnotation = 0;
}

- (void)annotationManager:(id)a3 didAddAnnotationRepresentations:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * i) == self->_userLocationView)
        {
          if (self->_userLocationSelected)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __70___MKStaticMapView_annotationManager_didAddAnnotationRepresentations___block_invoke;
            block[3] = &unk_1E76CDB38;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)moveAnnotationRepresentation:(id)a3 fromCoordinate:(CLLocationCoordinate2D)a4 animated:(BOOL)a5 duration:(double)a6
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationView:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [annotationRepresentation isKindOfClass:MKAnnotationView.class]", v8, 2u);
  }
}

- (void)deselectAnnotationRepresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  annotationContainer = self->_annotationContainer;
  v6 = [a3 viewRepresentation];
  [(MKAnnotationContainerView *)annotationContainer deselectAnnotationView:v6 animated:v4];
}

- (void)selectAnnotationRepresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  annotationContainer = self->_annotationContainer;
  v6 = [a3 viewRepresentation];
  [(MKAnnotationContainerView *)annotationContainer selectAnnotationView:v6 animated:v4];
}

- (void)removeAnnotationRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(MKAnnotationView *)v5 isProvidingCustomFeature])
    {
      self->_currentUpdateRemovedCustomFeatureAnnotation = 1;
    }

    [(MKAnnotationView *)v5 _setStaticMapView:0];
    userLocationView = self->_userLocationView;
    if (userLocationView == v5)
    {
      self->_userLocationView = 0;

      [(MKAnnotationContainerView *)self->_annotationContainer setUserLocationView:0];
    }

    [(MKAnnotationContainerView *)self->_annotationContainer removeAnnotationView:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [representation isKindOfClass:MKAnnotationView.class]", v7, 2u);
  }
}

- (void)addAnnotationRepresentation:(id)a3 allowAnimation:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    [v8 _setStaticMapView:self];
    v9 = [v8 annotation];
    userLocation = self->_userLocation;

    if (v9 != userLocation)
    {
LABEL_16:
      [(MKAnnotationContainerView *)self->_annotationContainer addAnnotationView:v8 allowAnimation:v4];
      currentUpdateAddedAnnotations = self->_currentUpdateAddedAnnotations;
      if (!currentUpdateAddedAnnotations)
      {
        v20 = [MEMORY[0x1E695DF70] array];
        v21 = self->_currentUpdateAddedAnnotations;
        self->_currentUpdateAddedAnnotations = v20;

        currentUpdateAddedAnnotations = self->_currentUpdateAddedAnnotations;
      }

      [(NSMutableArray *)currentUpdateAddedAnnotations addObject:v8];

      goto LABEL_19;
    }

    objc_storeStrong(&self->_userLocationView, a3);
    v11 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
LABEL_9:

        v14 = [(MKUserLocation *)self->_userLocation location];
        [v13 updateStateFromLocation:v14 duration:0.0];

        v15 = [(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation];
        v16 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = 0;
            goto LABEL_15;
          }

          v17 = [v16 _mkUserLocationView];
        }

        v18 = v17;
LABEL_15:

        [v18 _setShouldShowDynamicLocationAnimations:v15];
        [(MKAnnotationContainerView *)self->_annotationContainer setUserLocationView:v16];
        goto LABEL_16;
      }

      v12 = [v11 _mkUserLocationView];
    }

    v13 = v12;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v22 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [representation isKindOfClass:MKAnnotationView.class]", v22, 2u);
  }

LABEL_19:
}

- (void)locationManagerUpdatedLimitsPrecisionState:(id)a3
{
  v7 = a3;
  v4 = self->_userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = v4;
      goto LABEL_8;
    }

    v5 = [(MKAnnotationView *)v4 _mkUserLocationView];
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_9;
  }

  -[MKAnnotationView _setShouldShowDynamicLocationAnimations:](v6, "_setShouldShowDynamicLocationAnimations:", [v7 isAuthorizedForPreciseLocation]);
LABEL_8:

LABEL_9:
}

- (void)locationManagerFailedToUpdateLocation:(id)a3 withError:(id)a4
{
  v4 = self->_userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MKAnnotationView *)v4 _mkUserLocationView];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  [(MKAnnotationView *)v6 locationManagerFailedToUpdateLocation];
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 lastLocation];
  userLocation = self->_userLocation;
  if (userLocation)
  {
    v7 = MEMORY[0x1E69DD250];
    [v4 expectedGpsUpdateInterval];
    v9 = v8;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __51___MKStaticMapView_locationManagerUpdatedLocation___block_invoke;
    v19 = &unk_1E76CD810;
    v20 = self;
    v21 = v5;
    [v7 _mapkit_animateWithDuration:&v16 animations:0 completion:v9];
  }

  else
  {
    v10 = objc_alloc_init(MKUserLocation);
    v11 = self->_userLocation;
    self->_userLocation = v10;

    [(MKUserLocation *)self->_userLocation setLocation:v5];
  }

  [v5 course];
  [(MKUserLocation *)self->_userLocation setCourse:?];
  if (!userLocation)
  {
    v12 = [(UIImageView *)self->_imageView image];

    if (v12)
    {
      [(MKAnnotationManager *)self->_annotationManager addAnnotation:self->_userLocation];
    }
  }

  v13 = self->_userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v14 = [(MKAnnotationView *)v13 _mkUserLocationView];
  }

  v15 = v14;
LABEL_13:

  [v4 expectedGpsUpdateInterval];
  [(MKAnnotationView *)v15 updateStateFromLocation:v5 duration:?];
}

- (void)setShowsUserLocation:(BOOL)a3
{
  if (self->_showsUserLocation == a3)
  {
    return;
  }

  self->_showsUserLocation = a3;
  if (a3)
  {
    v4 = [(UIImageView *)self->_imageView image];

    if (v4)
    {

      [(_MKStaticMapView *)self _startUpdatingUserLocation];
      return;
    }

    if (self->_showsUserLocation)
    {
      return;
    }
  }

  [(_MKStaticMapView *)self _stopUpdatingUserLocation];
  if (self->_userLocation)
  {
    [(MKAnnotationManager *)self->_annotationManager removeAnnotation:?];
    userLocation = self->_userLocation;
    self->_userLocation = 0;
  }
}

- (BOOL)hasUserLocation
{
  v2 = [(MKUserLocation *)self->_userLocation location];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateSnapshotOptionsWithOverlayRenderers
{
  v3 = 0;
  v20 = *MEMORY[0x1E69E9840];
  overlays = self->_overlays;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = overlays[v3];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(NSMapTable *)self->_overlaysToRenderers objectForKey:*(*(&v15 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [(MKMapSnapshotOptions *)self->_snapshotOptions _setOverlayRenderers:v7 forOverlayLevel:v3];
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
}

- (void)removeOverlay:(id)a3
{
  v8 = a3;
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = self->_overlays[v4];
    if ([(NSMutableOrderedSet *)v7 containsObject:v8])
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  [(NSMutableOrderedSet *)v7 removeObject:v8];
  [(NSMapTable *)self->_overlaysToRenderers removeObjectForKey:v8];

LABEL_6:
}

- (void)removeOverlays:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(_MKStaticMapView *)self removeOverlay:*(*(&v12 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(_MKStaticMapView *)self _updateSnapshotOptionsWithOverlayRenderers];
    v10 = MKGetSnapshotLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Overlays removed", v11, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (void)_removeKVOForOverlayRenderer:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = overlayRendererKVOKeys();
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        NSSelectorFromString(v10);
        if (objc_opt_respondsToSelector())
        {
          [v4 removeObserver:self forKeyPath:v10 context:{MKOverlayRendererKVOContext, v11}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_addKVOForOverlayRenderer:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = overlayRendererKVOKeys();
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        NSSelectorFromString(v10);
        if (objc_opt_respondsToSelector())
        {
          [v4 addObserver:self forKeyPath:v10 options:0 context:{MKOverlayRendererKVOContext, v11}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addOverlays:(id)a3 level:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v17 = v6;
    v18 = self->_overlays[a4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v20 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          [(_MKStaticMapView *)self removeOverlay:v10, v17];
          v11 = [(NSMapTable *)self->_overlaysToRenderers objectForKey:v10];
          if (v11)
          {
            [(_MKStaticMapView *)self _removeKVOForOverlayRenderer:v11];
          }

          [(NSMapTable *)self->_overlaysToRenderers removeObjectForKey:v10];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v13 = objc_opt_respondsToSelector();

          if (v13)
          {
            [(NSMutableOrderedSet *)v18 addObject:v10];
            v14 = objc_loadWeakRetained(&self->_delegate);
            v15 = [v14 mapView:self rendererForOverlay:v10];

            [(_MKStaticMapView *)self _addKVOForOverlayRenderer:v15];
            [(NSMapTable *)self->_overlaysToRenderers setObject:v15 forKey:v10];
            v11 = v15;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [(_MKStaticMapView *)self _updateSnapshotOptionsWithOverlayRenderers];
    v16 = MKGetSnapshotLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Overlays added", buf, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
    v6 = v17;
  }
}

- (void)addOverlays:(id)a3
{
  v4 = a3;
  [(_MKStaticMapView *)self addOverlays:v4 level:+[MKOverlayContainerView _defaultOverlayLevel]];
}

- (NSArray)overlays
{
  overlays = self->_overlays;
  v3 = [(NSMutableOrderedSet *)self->_overlays[0] array];
  v4 = [(NSMutableOrderedSet *)overlays[1] array];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)selectUserLocationAnimated:(BOOL)a3
{
  self->_userLocationSelected = 1;
  if (self->_userLocationView)
  {
    [(MKAnnotationManager *)self->_annotationManager selectAnnotation:self->_userLocation animated:a3];
  }
}

- (void)removeAnnotations:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (*(*(&v11 + 1) + 8 * v10) != self->_userLocation)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(MKAnnotationManager *)self->_annotationManager removeAnnotations:v5];
  }
}

- (void)removeAnnotation:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(_MKStaticMapView *)self removeAnnotations:v6, v7, v8];
  }
}

- (void)addAnnotations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(MKAnnotationManager *)self->_annotationManager addAnnotations:v4];
  }
}

- (void)addAnnotation:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(_MKStaticMapView *)self addAnnotations:v6, v7, v8];
  }
}

- (void)_showAllAnnotations
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_userLocation)
  {
    [(MKAnnotationManager *)self->_annotationManager addAnnotation:?];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHidden:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_hideAllAnnotations
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_userLocation)
  {
    [(MKAnnotationManager *)self->_annotationManager removeAnnotation:?];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHidden:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleSnapshotError:(id)a3
{
  v8 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  if (!v4)
  {
    [(_MKStaticMapView *)self _stopUpdatingUserLocation];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 mapViewDidFailLoadingMap:self withError:v8];
  }
}

- (void)_handleSnapshot:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_snapshot, a3);
  v5 = [v9 image];
  [(UIImageView *)self->_imageView setImage:v5];

  [(_MKStaticMapView *)self _showAllAnnotations];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 mapViewDidFinishLoadingMap:self];
  }
}

- (void)_startSnapshotRequest
{
  v53 = *MEMORY[0x1E69E9840];
  snapshotGeneration = self->_snapshotGeneration;
  [(_MKStaticMapView *)self bounds];
  v5 = v4;
  [(_MKStaticMapView *)self bounds];
  if (v5 * v6 == 0.0)
  {
    if (self->_loading)
    {
      self->_loading = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v39 = objc_loadWeakRetained(&self->_delegate);
        [v39 mapViewDidFinishLoadingMap:self];
      }
    }
  }

  else
  {
    [(_MKStaticMapView *)self bounds];
    [(MKMapSnapshotOptions *)self->_snapshotOptions setSize:v9, v10];
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
    if (self->_honorsLayoutMargins)
    {
      [(_MKStaticMapView *)self layoutMargins];
      top = v15 + self->_additionalEdgeInsets.top;
      left = v17 + self->_additionalEdgeInsets.left;
      bottom = v19 + self->_additionalEdgeInsets.bottom;
      right = v21 + self->_additionalEdgeInsets.right;
    }

    else
    {
      top = self->_additionalEdgeInsets.top;
      left = self->_additionalEdgeInsets.left;
      bottom = self->_additionalEdgeInsets.bottom;
      right = self->_additionalEdgeInsets.right;
    }

    [(MKMapSnapshotOptions *)self->_snapshotOptions _setEdgeInsets:v11 + top, v12 + left, v14 + bottom, v13 + right];
    v23 = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v24 = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
    v25 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v25)
    {
      v26 = *v48;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v25);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v30)
    {
      v31 = *v44;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v43 + 1) + 8 * j);
          if ([v33 isProvidingCustomFeature])
          {
            v34 = [v33 customFeatureAnnotation];
            [v23 addObject:v34];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }

    [(MKMapSnapshotOptions *)self->_snapshotOptions _setCustomFeatureAnnotations:v23];
    v35 = [[MKMapSnapshotter alloc] initWithOptions:self->_snapshotOptions];
    currentSnapshotter = self->_currentSnapshotter;
    self->_currentSnapshotter = v35;

    objc_initWeak(&location, self);
    v37 = self->_currentSnapshotter;
    v38 = MEMORY[0x1E69E96A0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __41___MKStaticMapView__startSnapshotRequest__block_invoke;
    v40[3] = &unk_1E76CA230;
    objc_copyWeak(v41, &location);
    v41[1] = snapshotGeneration;
    [(MKMapSnapshotter *)v37 startWithQueue:MEMORY[0x1E69E96A0] completionHandler:v40];

    objc_destroyWeak(v41);
    objc_destroyWeak(&location);
  }
}

- (void)_updateSnapshot:(BOOL)a3
{
  if (self->_batchingCount)
  {
    self->_batchHasChanges = 1;
  }

  else
  {
    v4 = a3;
    v5 = [(_MKStaticMapView *)self _incrementSnapshotGeneration];
    if (!self->_loading)
    {
      self->_loading = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 mapViewWillStartLoadingMap:self];
      }
    }

    if (self->_honorsLayoutMargins)
    {
      [(_MKStaticMapView *)self layoutMargins];
      self->_lastSnapshotLayoutMargins.top = v9;
      self->_lastSnapshotLayoutMargins.left = v10;
      self->_lastSnapshotLayoutMargins.bottom = v11;
      self->_lastSnapshotLayoutMargins.right = v12;
    }

    if (self->_showsUserLocation && !self->_isUpdatingUserLocation)
    {
      [(_MKStaticMapView *)self _startUpdatingUserLocation];
    }

    if (v4)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __36___MKStaticMapView__updateSnapshot___block_invoke;
      v13[3] = &unk_1E76CA208;
      objc_copyWeak(v14, &location);
      v14[1] = v5;
      [(_MKStaticMapView *)self _displayGridWithCompletionHandler:v13];
      objc_destroyWeak(v14);
      objc_destroyWeak(&location);
    }

    else
    {

      [(_MKStaticMapView *)self _startSnapshotRequest];
    }
  }
}

- (void)_handleGridSnapshot:(id)a3
{
  objc_storeStrong(&self->_gridSnapshot, a3);
  v6 = a3;
  v5 = [v6 image];
  [(UIImageView *)self->_imageView setImage:v5];

  [(_MKStaticMapView *)self _showAllAnnotations];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:2];
}

- (void)_displayGridWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(_MKStaticMapView *)self bounds];
  v6 = v5;
  [(_MKStaticMapView *)self bounds];
  v8.n128_f64[0] = v6 * v7;
  if (v6 * v7 == 0.0 || ([(UIImageView *)self->_imageView setImage:0, v8.n128_f64[0]], [(_MKStaticMapView *)self _hideAllAnnotations], !self->_canShowGrid))
  {
    v4[2](v4, v8);
  }

  else
  {
    v9 = objc_alloc_init(MKMapSnapshotOptions);
    v10 = [(_MKStaticMapView *)self traitCollection];
    [(MKMapSnapshotOptions *)v9 setTraitCollection:v10];

    [(_MKStaticMapView *)self bounds];
    [(MKMapSnapshotOptions *)v9 setSize:v11, v12];
    [(MKMapSnapshotOptions *)v9 setMapType:105];
    v13 = [(MKMapSnapshotOptions *)self->_snapshotOptions camera];
    [(MKMapSnapshotOptions *)v9 setCamera:v13];

    [(MKMapSnapshotOptions *)v9 _setNetworkUsageMode:1];
    v14 = [[MKMapSnapshotter alloc] initWithOptions:v9];
    currentSnapshotter = self->_currentSnapshotter;
    self->_currentSnapshotter = v14;

    snapshotGeneration = self->_snapshotGeneration;
    objc_initWeak(&location, self);
    v17 = self->_currentSnapshotter;
    v18 = MEMORY[0x1E69E96A0];
    v19 = MEMORY[0x1E69E96A0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54___MKStaticMapView__displayGridWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E76CA1E0;
    objc_copyWeak(v22, &location);
    v22[1] = snapshotGeneration;
    v21 = v4;
    [(MKMapSnapshotter *)v17 startWithQueue:v18 completionHandler:v20];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (unint64_t)_incrementSnapshotGeneration
{
  [(MKMapSnapshotter *)self->_currentSnapshotter cancel];
  currentSnapshotter = self->_currentSnapshotter;
  self->_currentSnapshotter = 0;

  snapshot = self->_snapshot;
  self->_snapshot = 0;

  gridSnapshot = self->_gridSnapshot;
  self->_gridSnapshot = 0;

  result = self->_snapshotGeneration + 1;
  self->_snapshotGeneration = result;
  return result;
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [(_MKStaticMapView *)self traitCollection:a3];
  [(MKMapSnapshotOptions *)self->_snapshotOptions setTraitCollection:v5];

  v6 = MKGetSnapshotLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Trait environment changed", v7, 2u);
  }

  [(_MKStaticMapView *)self _updateSnapshot:1];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (MKMapConfigurationKVOContext_30131 == a6)
  {
    [(MKMapSnapshotOptions *)self->_snapshotOptions setPreferredConfiguration:self->_preferredConfiguration];
    v13 = MKGetSnapshotLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Updating MKStaticMapView snapshot: Map configuration KVO";
LABEL_8:
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
    }

LABEL_9:

    [(_MKStaticMapView *)self _updateSnapshot:1];
    goto LABEL_10;
  }

  if (MKOverlayRendererKVOContext == a6)
  {
    [(_MKStaticMapView *)self _updateSnapshotOptionsWithOverlayRenderers];
    v13 = MKGetSnapshotLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Updating MKStaticMapView snapshot: Overlay renderer KVO";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v15.receiver = self;
  v15.super_class = _MKStaticMapView;
  [(_MKStaticMapView *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_10:
}

- (void)setPreferredConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 | self->_preferredConfiguration)
  {
    v7 = [v4 isEqual:?];
    preferredConfiguration = self->_preferredConfiguration;
  }

  else
  {
    preferredConfiguration = 0;
    v7 = 1;
  }

  if (preferredConfiguration != v5)
  {
    [(MKMapConfiguration *)preferredConfiguration _removeObserver:self context:MKMapConfigurationKVOContext_30131];
    v8 = [(MKMapConfiguration *)v5 copy];
    v9 = self->_preferredConfiguration;
    self->_preferredConfiguration = v8;

    [(MKMapConfiguration *)self->_preferredConfiguration _addObserver:self options:0 context:MKMapConfigurationKVOContext_30131];
    [(MKMapSnapshotOptions *)self->_snapshotOptions setPreferredConfiguration:self->_preferredConfiguration];
  }

  v10 = MKGetSnapshotLog();
  v11 = v10;
  if (v7)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      v13 = MKGetSnapshotLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_DEBUG, "Not updating MKStaticMapView snapshot: Preferred configuration unchanged", v14, 2u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Set preferred configuration", buf, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (CLLocationCoordinate2D)convertPoint:(CGPoint)a3 toCoordinateFromView:(id)a4
{
  v4 = *MEMORY[0x1E6985CC0];
  v5 = *(MEMORY[0x1E6985CC0] + 8);
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)a3 toPointToView:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  snapshot = self->_snapshot;
  if (!snapshot)
  {
    snapshot = self->_gridSnapshot;
  }

  v8 = a4;
  [(MKMapSnapshot *)snapshot pointForCoordinate:latitude, longitude];
  [(_MKStaticMapView *)self convertPoint:v8 toView:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setSelectedTrailWithId:(id)a3 name:(id)a4 locale:(id)a5
{
  [(MKMapSnapshotOptions *)self->_snapshotOptions _setSelectedTrailWithId:a3 name:a4 locale:a5];
  v6 = MKGetSnapshotLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Set selected trail", v7, 2u);
  }

  [(_MKStaticMapView *)self _updateSnapshot:1];
}

- (void)setCamera:(id)a3
{
  v4 = a3;
  v5 = [(MKMapSnapshotOptions *)self->_snapshotOptions _viewportMode];
  v6 = MEMORY[0x1E69DDCE0];
  if (v5 == 2)
  {
    v7 = [(MKMapSnapshotOptions *)self->_snapshotOptions camera];
    if ([v4 isEqual:v7] && (self->_additionalEdgeInsets.left == v6[1] ? (v8 = self->_additionalEdgeInsets.top == *v6) : (v8 = 0), v8 ? (v9 = self->_additionalEdgeInsets.right == v6[3]) : (v9 = 0), v9))
    {
      v12 = v6[2];
      bottom = self->_additionalEdgeInsets.bottom;

      if (bottom == v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  [(MKMapSnapshotOptions *)self->_snapshotOptions setCamera:v4];
  v10 = *(v6 + 1);
  *&self->_additionalEdgeInsets.top = *v6;
  *&self->_additionalEdgeInsets.bottom = v10;
  v11 = MKGetSnapshotLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Set camera", v14, 2u);
  }

  [(_MKStaticMapView *)self _updateSnapshot:1];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:1];
LABEL_14:
}

- (void)setVisibleMapRect:(id)a3 edgePadding:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  right = a4.right;
  top = a4.top;
  left = a4.left;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v6 = a3.var0.var1;
  v7 = a3.var0.var0;
  if ([(MKMapSnapshotOptions *)self->_snapshotOptions _viewportMode]!= 1 || (([(MKMapSnapshotOptions *)self->_snapshotOptions mapRect], v7 == v12) ? (v13 = v6 == v9) : (v13 = 0), v13 ? (v14 = var0 == v10) : (v14 = 0), v14 ? (v15 = var1 == v11) : (v15 = 0), !v15 || (v17.f64[0] = top, v17.f64[1] = left, v18.f64[0] = bottom, v18.f64[1] = right, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, *&self->_additionalEdgeInsets.top), vceqq_f64(v18, *&self->_additionalEdgeInsets.bottom)))) & 1) == 0)))
  {
    [(MKMapSnapshotOptions *)self->_snapshotOptions setMapRect:v7, v6, var0, var1];
    self->_additionalEdgeInsets.top = top;
    self->_additionalEdgeInsets.left = left;
    self->_additionalEdgeInsets.bottom = bottom;
    self->_additionalEdgeInsets.right = right;
    v16 = MKGetSnapshotLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Set visible map rect", buf, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
    [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:1];
  }
}

- ($9433BFB5400FDC760880D1BFD6845728)visibleMapRect
{
  [(MKMapSnapshotOptions *)self->_snapshotOptions mapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (void)setRegion:(id *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v12 = [(MKMapSnapshotOptions *)self->_snapshotOptions _viewportMode];
  v13 = MEMORY[0x1E69DDCE0];
  if (v12 || ([(MKMapSnapshotOptions *)self->_snapshotOptions region], vabdd_f64(v10, v17) >= 0.00000000999999994) || vabdd_f64(v9, v14) >= 0.00000000999999994 || vabdd_f64(v8, v15) >= 0.00000000999999994 || vabdd_f64(v7, v16) >= 0.00000000999999994 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalEdgeInsets.top, *v13), vceqq_f64(*&self->_additionalEdgeInsets.bottom, v13[1])))) & 1) == 0)
  {
    [(MKMapSnapshotOptions *)self->_snapshotOptions setRegion:v10, v9, v8, v7];
    v18 = v13[1];
    *&self->_additionalEdgeInsets.top = *v13;
    *&self->_additionalEdgeInsets.bottom = v18;
    v19 = MKGetSnapshotLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A2EA0000, v19, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Set region", v20, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
    [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:1];
  }
}

- (void)layoutMarginsDidChange
{
  v9.receiver = self;
  v9.super_class = _MKStaticMapView;
  [(_MKStaticMapView *)&v9 layoutMarginsDidChange];
  [(_MKStaticMapView *)self layoutMargins];
  if (!self->_changingSize)
  {
    v5.f64[1] = v6;
    v3.f64[1] = v4;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v3, *&self->_lastSnapshotLayoutMargins.top), vceqq_f64(v5, *&self->_lastSnapshotLayoutMargins.bottom))))) & 1) != 0 && self->_honorsLayoutMargins)
    {
      v7 = MKGetSnapshotLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Layout margins changed", v8, 2u);
      }

      [(_MKStaticMapView *)self _updateSnapshot:0];
    }
  }
}

- (void)endUpdates
{
  batchingCount = self->_batchingCount;
  if (batchingCount)
  {
    v4 = batchingCount - 1;
    self->_batchingCount = v4;
    if (!v4 && self->_batchHasChanges)
    {
      self->_batchHasChanges = 0;
      v5 = MKGetSnapshotLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: End updates", v6, 2u);
      }

      [(_MKStaticMapView *)self _updateSnapshot:1];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_MKStaticMapView *)self bounds];
  v10 = height != v9 || width != v8;
  self->_changingSize = v10;
  v13.receiver = self;
  v13.super_class = _MKStaticMapView;
  [(_MKStaticMapView *)&v13 setBounds:x, y, width, height];
  self->_changingSize = 0;
  if (v10)
  {
    v11 = MKGetSnapshotLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Size changed (bounds)", v12, 2u);
    }

    [(_MKStaticMapView *)self beginUpdates];
    [(_MKStaticMapView *)self _executeWhenSizedBlock];
    self->_batchHasChanges = 1;
    [(_MKStaticMapView *)self endUpdates];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_MKStaticMapView *)self frame];
  v10 = height != v9 || width != v8;
  self->_changingSize = v10;
  v13.receiver = self;
  v13.super_class = _MKStaticMapView;
  [(_MKStaticMapView *)&v13 setFrame:x, y, width, height];
  self->_changingSize = 0;
  if (v10)
  {
    v11 = MKGetSnapshotLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Size changed (frame)", v12, 2u);
    }

    [(_MKStaticMapView *)self beginUpdates];
    [(_MKStaticMapView *)self _executeWhenSizedBlock];
    self->_batchHasChanges = 1;
    [(_MKStaticMapView *)self endUpdates];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MKStaticMapView;
  [(_MKStaticMapView *)&v2 dealloc];
}

- (_MKStaticMapView)initWithFrame:(CGRect)a3 locationManager:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v72[2] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v69.receiver = self;
  v69.super_class = _MKStaticMapView;
  v10 = [(_MKStaticMapView *)&v69 initWithFrame:x, y, width, height];
  if (v10)
  {
    v68 = v9;
    if (v9 && (v11 = [[MKLocationManager alloc] initWithCLLocationManager:v9]) != 0)
    {
      v12 = 0;
      v67 = v11;
      v13 = v11;
    }

    else
    {
      v13 = +[MKLocationManager sharedLocationManager];
      v67 = 0;
      v12 = 1;
    }

    objc_storeStrong(&v10->_locationManager, v13);
    if (v12)
    {
    }

    v14 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"CartographyBackgroundColor"];
    [(_MKStaticMapView *)v10 setBackgroundColor:v14];

    v15 = objc_alloc_init(MKMapSnapshotOptions);
    snapshotOptions = v10->_snapshotOptions;
    v10->_snapshotOptions = v15;

    v17 = [(_MKStaticMapView *)v10 traitCollection];
    [(MKMapSnapshotOptions *)v10->_snapshotOptions setTraitCollection:v17];

    [(_MKStaticMapView *)v10 bounds];
    v19 = v18;
    [(_MKStaticMapView *)v10 bounds];
    if (v19 * v20 > 0.0)
    {
      [(_MKStaticMapView *)v10 bounds];
      [(MKMapSnapshotOptions *)v10->_snapshotOptions setSize:v21, v22];
    }

    v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v10->_imageView;
    v10->_imageView = v23;

    [(UIImageView *)v10->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_imageView _mapkit_setImageContentMode:4];
    [(_MKStaticMapView *)v10 addSubview:v10->_imageView];
    v25 = MEMORY[0x1E696ACD8];
    v26 = [(UIImageView *)v10->_imageView centerXAnchor];
    v27 = [(_MKStaticMapView *)v10 centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v72[0] = v28;
    v29 = [(UIImageView *)v10->_imageView centerYAnchor];
    v30 = [(_MKStaticMapView *)v10 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v72[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    [v25 activateConstraints:v32];

    v33 = objc_alloc_init(MKAnnotationManager);
    annotationManager = v10->_annotationManager;
    v10->_annotationManager = v33;

    [(MKAnnotationManager *)v10->_annotationManager setContainer:v10];
    [(MKAnnotationManager *)v10->_annotationManager setDelegate:v10];
    v35 = objc_alloc_init(MKAnnotationContainerView);
    annotationContainer = v10->_annotationContainer;
    v10->_annotationContainer = v35;

    [(MKAnnotationContainerView *)v10->_annotationContainer setDelegate:v10];
    [(MKAnnotationContainerView *)v10->_annotationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKStaticMapView *)v10 addSubview:v10->_annotationContainer];
    v62 = MEMORY[0x1E696ACD8];
    v66 = [(MKAnnotationContainerView *)v10->_annotationContainer topAnchor];
    v65 = [(_MKStaticMapView *)v10 topAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v71[0] = v64;
    v63 = [(MKAnnotationContainerView *)v10->_annotationContainer leftAnchor];
    v37 = [(_MKStaticMapView *)v10 leftAnchor];
    v38 = [v63 constraintEqualToAnchor:v37];
    v71[1] = v38;
    v39 = [(MKAnnotationContainerView *)v10->_annotationContainer rightAnchor];
    v40 = [(_MKStaticMapView *)v10 rightAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v71[2] = v41;
    v42 = [(MKAnnotationContainerView *)v10->_annotationContainer bottomAnchor];
    v43 = [(_MKStaticMapView *)v10 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v71[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
    [v62 activateConstraints:v45];

    v46 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v47 = v10->_overlays[0];
    v10->_overlays[0] = v46;

    v48 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v49 = v10->_overlays[1];
    v10->_overlays[1] = v48;

    v50 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    overlaysToRenderers = v10->_overlaysToRenderers;
    v10->_overlaysToRenderers = v50;

    v52 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    mapItemCustomFeaturesToMapItems = v10->_mapItemCustomFeaturesToMapItems;
    v10->_mapItemCustomFeaturesToMapItems = v52;

    v54 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    mapItemsToMapItemCustomFeatures = v10->_mapItemsToMapItemCustomFeatures;
    v10->_mapItemsToMapItemCustomFeatures = v54;

    v56 = objc_alloc_init(MKStandardMapConfiguration);
    preferredConfiguration = v10->_preferredConfiguration;
    v10->_preferredConfiguration = &v56->super;

    [(MKMapConfiguration *)v10->_preferredConfiguration _addObserver:v10 options:0 context:MKMapConfigurationKVOContext_30131];
    v10->_canShowGrid = 1;
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v59 = [(_MKStaticMapView *)v10 registerForTraitChanges:v58 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v60 = v10;
    v9 = v68;
  }

  return v10;
}

@end