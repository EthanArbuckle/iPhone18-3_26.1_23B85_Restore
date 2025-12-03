@interface _MKStaticMapView
- ($9433BFB5400FDC760880D1BFD6845728)visibleMapRect;
- (BOOL)annotationContainerIsRotated:(id)rotated;
- (BOOL)hasUserLocation;
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(id)view;
- (CGRect)visibleRectInView:(id)view;
- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(id)view;
- (NSArray)mapItems;
- (NSArray)overlays;
- (_MKStaticMapView)initWithFrame:(CGRect)frame locationManager:(id)manager;
- (_MKStaticMapViewDelegate)delegate;
- (double)annotationContainer:(id)container pinDropDistanceForCoordinate:(CLLocationCoordinate2D)coordinate maxDistance:(double *)distance;
- (id)annotationManager:(id)manager representationForAnnotation:(id)annotation;
- (unint64_t)_incrementSnapshotGeneration;
- (void)_addKVOForOverlayRenderer:(id)renderer;
- (void)_displayGridWithCompletionHandler:(id)handler;
- (void)_executeWhenSizedBlock;
- (void)_handleGridSnapshot:(id)snapshot;
- (void)_handleSnapshot:(id)snapshot;
- (void)_handleSnapshotError:(id)error;
- (void)_hideAllAnnotations;
- (void)_removeKVOForOverlayRenderer:(id)renderer;
- (void)_showAllAnnotations;
- (void)_startSnapshotRequest;
- (void)_updateSnapshot:(BOOL)snapshot;
- (void)_updateSnapshotOptionsWithOverlayRenderers;
- (void)addAnnotation:(id)annotation;
- (void)addAnnotationRepresentation:(id)representation allowAnimation:(BOOL)animation;
- (void)addAnnotations:(id)annotations;
- (void)addMapItems:(id)items;
- (void)addOverlays:(id)overlays;
- (void)addOverlays:(id)overlays level:(int64_t)level;
- (void)addWhenSizedBlock:(id)block;
- (void)annotationManager:(id)manager didAddAnnotationRepresentations:(id)representations;
- (void)annotationManagerDidChangeVisibleAnnotationRepresentations:(id)representations;
- (void)dealloc;
- (void)deselectAnnotationRepresentation:(id)representation animated:(BOOL)animated;
- (void)deselectMapItem:(id)item;
- (void)endUpdates;
- (void)layoutMarginsDidChange;
- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error;
- (void)locationManagerUpdatedLimitsPrecisionState:(id)state;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)moveAnnotationRepresentation:(id)representation fromCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated duration:(double)duration;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAnnotation:(id)annotation;
- (void)removeAnnotationRepresentation:(id)representation;
- (void)removeAnnotations:(id)annotations;
- (void)removeMapItems:(id)items;
- (void)removeOverlay:(id)overlay;
- (void)removeOverlays:(id)overlays;
- (void)selectAnnotationRepresentation:(id)representation animated:(BOOL)animated;
- (void)selectMapItem:(id)item;
- (void)selectUserLocationAnimated:(BOOL)animated;
- (void)setBounds:(CGRect)bounds;
- (void)setCamera:(id)camera;
- (void)setFrame:(CGRect)frame;
- (void)setPreferredConfiguration:(id)configuration;
- (void)setRegion:(id *)region;
- (void)setSelectedTrailWithId:(id)id name:(id)name locale:(id)locale;
- (void)setShowsUserLocation:(BOOL)location;
- (void)setVisibleMapRect:(id)rect edgePadding:(UIEdgeInsets)padding;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
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

- (void)addWhenSizedBlock:(id)block
{
  blockCopy = block;
  whenSizedBlocks = self->_whenSizedBlocks;
  v9 = blockCopy;
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

- (void)selectMapItem:(id)item
{
  v4 = [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures objectForKey:item];
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

- (void)deselectMapItem:(id)item
{
  v4 = [(NSMapTable *)self->_mapItemsToMapItemCustomFeatures objectForKey:item];
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

- (void)removeMapItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  _customFeatureAnnotations = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v6 = _customFeatureAnnotations;
  v7 = MEMORY[0x1E695E0F0];
  if (_customFeatureAnnotations)
  {
    v7 = _customFeatureAnnotations;
  }

  v18 = v7;

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = itemsCopy;
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
    mapItems = [(_MKStaticMapView *)self mapItems];
    -[MKMapSnapshotOptions _setSearchResultsType:](self->_snapshotOptions, "_setSearchResultsType:", [mapItems count] != 0);

    v17 = MKGetSnapshotLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Map item custom features removed", buf, 2u);
    }

    [(_MKStaticMapView *)self _updateSnapshot:1];
  }
}

- (void)addMapItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  _customFeatureAnnotations = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v6 = _customFeatureAnnotations;
  v7 = MEMORY[0x1E695E0F0];
  if (_customFeatureAnnotations)
  {
    v7 = _customFeatureAnnotations;
  }

  v19 = v7;

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = itemsCopy;
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
  _customFeatureAnnotations = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(_customFeatureAnnotations, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _customFeatureAnnotations2 = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
  v7 = [_customFeatureAnnotations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_customFeatureAnnotations2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(NSMapTable *)self->_mapItemCustomFeaturesToMapItems objectForKey:v11];
          [v5 addObject:v12];
        }
      }

      v8 = [_customFeatureAnnotations2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (CGRect)visibleRectInView:(id)view
{
  viewCopy = view;
  [(_MKStaticMapView *)self bounds];
  [(_MKStaticMapView *)self convertRect:viewCopy toView:?];
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

- (double)annotationContainer:(id)container pinDropDistanceForCoordinate:(CLLocationCoordinate2D)coordinate maxDistance:(double *)distance
{
  [(_MKStaticMapView *)self convertCoordinate:self toPointToView:coordinate.latitude, coordinate.longitude];
  v8 = v7;
  if (distance)
  {
    [(_MKStaticMapView *)self bounds];
    *distance = v9;
  }

  return v8;
}

- (BOOL)annotationContainerIsRotated:(id)rotated
{
  camera = [(MKMapSnapshotOptions *)self->_snapshotOptions camera];
  [camera heading];
  v5 = v4 != 0.0;

  return v5;
}

- (id)annotationManager:(id)manager representationForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 mapView:self viewForAnnotation:annotationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)annotationManagerDidChangeVisibleAnnotationRepresentations:(id)representations
{
  v26 = *MEMORY[0x1E69E9840];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:0];
  [MEMORY[0x1E6979518] begin];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  annotationViews = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
  v5 = [annotationViews countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(annotationViews);
        }

        [*(*(&v20 + 1) + 8 * i) _performStateUpdatesIfNeeded];
      }

      v6 = [annotationViews countByEnumeratingWithState:&v20 objects:v25 count:16];
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

- (void)annotationManager:(id)manager didAddAnnotationRepresentations:(id)representations
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  representationsCopy = representations;
  v6 = [representationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(representationsCopy);
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

      v7 = [representationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)moveAnnotationRepresentation:(id)representation fromCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated duration:(double)duration
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationView:representationCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [annotationRepresentation isKindOfClass:MKAnnotationView.class]", v8, 2u);
  }
}

- (void)deselectAnnotationRepresentation:(id)representation animated:(BOOL)animated
{
  animatedCopy = animated;
  annotationContainer = self->_annotationContainer;
  viewRepresentation = [representation viewRepresentation];
  [(MKAnnotationContainerView *)annotationContainer deselectAnnotationView:viewRepresentation animated:animatedCopy];
}

- (void)selectAnnotationRepresentation:(id)representation animated:(BOOL)animated
{
  animatedCopy = animated;
  annotationContainer = self->_annotationContainer;
  viewRepresentation = [representation viewRepresentation];
  [(MKAnnotationContainerView *)annotationContainer selectAnnotationView:viewRepresentation animated:animatedCopy];
}

- (void)removeAnnotationRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = representationCopy;
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

- (void)addAnnotationRepresentation:(id)representation allowAnimation:(BOOL)animation
{
  animationCopy = animation;
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = representationCopy;
    [v8 _setStaticMapView:self];
    annotation = [v8 annotation];
    userLocation = self->_userLocation;

    if (annotation != userLocation)
    {
LABEL_16:
      [(MKAnnotationContainerView *)self->_annotationContainer addAnnotationView:v8 allowAnimation:animationCopy];
      currentUpdateAddedAnnotations = self->_currentUpdateAddedAnnotations;
      if (!currentUpdateAddedAnnotations)
      {
        array = [MEMORY[0x1E695DF70] array];
        v21 = self->_currentUpdateAddedAnnotations;
        self->_currentUpdateAddedAnnotations = array;

        currentUpdateAddedAnnotations = self->_currentUpdateAddedAnnotations;
      }

      [(NSMutableArray *)currentUpdateAddedAnnotations addObject:v8];

      goto LABEL_19;
    }

    objc_storeStrong(&self->_userLocationView, representation);
    v11 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _mkUserLocationView2 = v11;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
LABEL_9:

        location = [(MKUserLocation *)self->_userLocation location];
        [v13 updateStateFromLocation:location duration:0.0];

        isAuthorizedForPreciseLocation = [(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation];
        v16 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _mkUserLocationView = v16;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = 0;
            goto LABEL_15;
          }

          _mkUserLocationView = [v16 _mkUserLocationView];
        }

        v18 = _mkUserLocationView;
LABEL_15:

        [v18 _setShouldShowDynamicLocationAnimations:isAuthorizedForPreciseLocation];
        [(MKAnnotationContainerView *)self->_annotationContainer setUserLocationView:v16];
        goto LABEL_16;
      }

      _mkUserLocationView2 = [v11 _mkUserLocationView];
    }

    v13 = _mkUserLocationView2;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v22 = 0;
    _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: [representation isKindOfClass:MKAnnotationView.class]", v22, 2u);
  }

LABEL_19:
}

- (void)locationManagerUpdatedLimitsPrecisionState:(id)state
{
  stateCopy = state;
  v4 = self->_userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = v4;
      goto LABEL_8;
    }

    _mkUserLocationView = [(MKAnnotationView *)v4 _mkUserLocationView];
  }

  v6 = _mkUserLocationView;

  if (!v6)
  {
    goto LABEL_9;
  }

  -[MKAnnotationView _setShouldShowDynamicLocationAnimations:](v6, "_setShouldShowDynamicLocationAnimations:", [stateCopy isAuthorizedForPreciseLocation]);
LABEL_8:

LABEL_9:
}

- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error
{
  v4 = self->_userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = v4;
LABEL_5:
    v6 = _mkUserLocationView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = [(MKAnnotationView *)v4 _mkUserLocationView];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  [(MKAnnotationView *)v6 locationManagerFailedToUpdateLocation];
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  lastLocation = [locationCopy lastLocation];
  userLocation = self->_userLocation;
  if (userLocation)
  {
    v7 = MEMORY[0x1E69DD250];
    [locationCopy expectedGpsUpdateInterval];
    v9 = v8;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __51___MKStaticMapView_locationManagerUpdatedLocation___block_invoke;
    v19 = &unk_1E76CD810;
    selfCopy = self;
    v21 = lastLocation;
    [v7 _mapkit_animateWithDuration:&v16 animations:0 completion:v9];
  }

  else
  {
    v10 = objc_alloc_init(MKUserLocation);
    v11 = self->_userLocation;
    self->_userLocation = v10;

    [(MKUserLocation *)self->_userLocation setLocation:lastLocation];
  }

  [lastLocation course];
  [(MKUserLocation *)self->_userLocation setCourse:?];
  if (!userLocation)
  {
    image = [(UIImageView *)self->_imageView image];

    if (image)
    {
      [(MKAnnotationManager *)self->_annotationManager addAnnotation:self->_userLocation];
    }
  }

  v13 = self->_userLocationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _mkUserLocationView = v13;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_13;
    }

    _mkUserLocationView = [(MKAnnotationView *)v13 _mkUserLocationView];
  }

  v15 = _mkUserLocationView;
LABEL_13:

  [locationCopy expectedGpsUpdateInterval];
  [(MKAnnotationView *)v15 updateStateFromLocation:lastLocation duration:?];
}

- (void)setShowsUserLocation:(BOOL)location
{
  if (self->_showsUserLocation == location)
  {
    return;
  }

  self->_showsUserLocation = location;
  if (location)
  {
    image = [(UIImageView *)self->_imageView image];

    if (image)
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
  location = [(MKUserLocation *)self->_userLocation location];
  v3 = location != 0;

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

- (void)removeOverlay:(id)overlay
{
  overlayCopy = overlay;
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = self->_overlays[v4];
    if ([(NSMutableOrderedSet *)v7 containsObject:overlayCopy])
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

  [(NSMutableOrderedSet *)v7 removeObject:overlayCopy];
  [(NSMapTable *)self->_overlaysToRenderers removeObjectForKey:overlayCopy];

LABEL_6:
}

- (void)removeOverlays:(id)overlays
{
  v17 = *MEMORY[0x1E69E9840];
  overlaysCopy = overlays;
  if ([overlaysCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = overlaysCopy;
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

- (void)_removeKVOForOverlayRenderer:(id)renderer
{
  v16 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
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
          [rendererCopy removeObserver:self forKeyPath:v10 context:{MKOverlayRendererKVOContext, v11}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_addKVOForOverlayRenderer:(id)renderer
{
  v16 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
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
          [rendererCopy addObserver:self forKeyPath:v10 options:0 context:{MKOverlayRendererKVOContext, v11}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addOverlays:(id)overlays level:(int64_t)level
{
  v27 = *MEMORY[0x1E69E9840];
  overlaysCopy = overlays;
  if ([overlaysCopy count])
  {
    v17 = overlaysCopy;
    v18 = self->_overlays[level];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = overlaysCopy;
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
    overlaysCopy = v17;
  }
}

- (void)addOverlays:(id)overlays
{
  overlaysCopy = overlays;
  [(_MKStaticMapView *)self addOverlays:overlaysCopy level:+[MKOverlayContainerView _defaultOverlayLevel]];
}

- (NSArray)overlays
{
  overlays = self->_overlays;
  array = [(NSMutableOrderedSet *)self->_overlays[0] array];
  array2 = [(NSMutableOrderedSet *)overlays[1] array];
  v5 = [array arrayByAddingObjectsFromArray:array2];

  return v5;
}

- (void)selectUserLocationAnimated:(BOOL)animated
{
  self->_userLocationSelected = 1;
  if (self->_userLocationView)
  {
    [(MKAnnotationManager *)self->_annotationManager selectAnnotation:self->_userLocation animated:animated];
  }
}

- (void)removeAnnotations:(id)annotations
{
  v16 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(annotationsCopy, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = annotationsCopy;
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

- (void)removeAnnotation:(id)annotation
{
  v8 = *MEMORY[0x1E69E9840];
  if (annotation)
  {
    annotationCopy = annotation;
    v4 = MEMORY[0x1E695DEC8];
    annotationCopy2 = annotation;
    v6 = [v4 arrayWithObjects:&annotationCopy count:1];

    [(_MKStaticMapView *)self removeAnnotations:v6, annotationCopy, v8];
  }
}

- (void)addAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    [(MKAnnotationManager *)self->_annotationManager addAnnotations:annotationsCopy];
  }
}

- (void)addAnnotation:(id)annotation
{
  v8 = *MEMORY[0x1E69E9840];
  if (annotation)
  {
    annotationCopy = annotation;
    v4 = MEMORY[0x1E695DEC8];
    annotationCopy2 = annotation;
    v6 = [v4 arrayWithObjects:&annotationCopy count:1];

    [(_MKStaticMapView *)self addAnnotations:v6, annotationCopy, v8];
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
  annotationViews = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
  v4 = [annotationViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(annotationViews);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHidden:0];
      }

      while (v5 != v7);
      v5 = [annotationViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  annotationViews = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
  v4 = [annotationViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(annotationViews);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHidden:1];
      }

      while (v5 != v7);
      v5 = [annotationViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleSnapshotError:(id)error
{
  errorCopy = error;
  image = [(UIImageView *)self->_imageView image];

  if (!image)
  {
    [(_MKStaticMapView *)self _stopUpdatingUserLocation];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 mapViewDidFailLoadingMap:self withError:errorCopy];
  }
}

- (void)_handleSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  objc_storeStrong(&self->_snapshot, snapshot);
  image = [snapshotCopy image];
  [(UIImageView *)self->_imageView setImage:image];

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
    array = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    _customFeatureAnnotations = [(MKMapSnapshotOptions *)self->_snapshotOptions _customFeatureAnnotations];
    v25 = [_customFeatureAnnotations countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v25)
    {
      v26 = *v48;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(_customFeatureAnnotations);
          }

          v28 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v28];
          }
        }

        v25 = [_customFeatureAnnotations countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v25);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    annotationViews = [(MKAnnotationContainerView *)self->_annotationContainer annotationViews];
    v30 = [annotationViews countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v30)
    {
      v31 = *v44;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(annotationViews);
          }

          v33 = *(*(&v43 + 1) + 8 * j);
          if ([v33 isProvidingCustomFeature])
          {
            customFeatureAnnotation = [v33 customFeatureAnnotation];
            [array addObject:customFeatureAnnotation];
          }
        }

        v30 = [annotationViews countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }

    [(MKMapSnapshotOptions *)self->_snapshotOptions _setCustomFeatureAnnotations:array];
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

- (void)_updateSnapshot:(BOOL)snapshot
{
  if (self->_batchingCount)
  {
    self->_batchHasChanges = 1;
  }

  else
  {
    snapshotCopy = snapshot;
    _incrementSnapshotGeneration = [(_MKStaticMapView *)self _incrementSnapshotGeneration];
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

    if (snapshotCopy)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __36___MKStaticMapView__updateSnapshot___block_invoke;
      v13[3] = &unk_1E76CA208;
      objc_copyWeak(v14, &location);
      v14[1] = _incrementSnapshotGeneration;
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

- (void)_handleGridSnapshot:(id)snapshot
{
  objc_storeStrong(&self->_gridSnapshot, snapshot);
  snapshotCopy = snapshot;
  image = [snapshotCopy image];
  [(UIImageView *)self->_imageView setImage:image];

  [(_MKStaticMapView *)self _showAllAnnotations];
  [(MKAnnotationContainerView *)self->_annotationContainer updateAnnotationViewsForReason:2];
}

- (void)_displayGridWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(_MKStaticMapView *)self bounds];
  v6 = v5;
  [(_MKStaticMapView *)self bounds];
  v8.n128_f64[0] = v6 * v7;
  if (v6 * v7 == 0.0 || ([(UIImageView *)self->_imageView setImage:0, v8.n128_f64[0]], [(_MKStaticMapView *)self _hideAllAnnotations], !self->_canShowGrid))
  {
    handlerCopy[2](handlerCopy, v8);
  }

  else
  {
    v9 = objc_alloc_init(MKMapSnapshotOptions);
    traitCollection = [(_MKStaticMapView *)self traitCollection];
    [(MKMapSnapshotOptions *)v9 setTraitCollection:traitCollection];

    [(_MKStaticMapView *)self bounds];
    [(MKMapSnapshotOptions *)v9 setSize:v11, v12];
    [(MKMapSnapshotOptions *)v9 setMapType:105];
    camera = [(MKMapSnapshotOptions *)self->_snapshotOptions camera];
    [(MKMapSnapshotOptions *)v9 setCamera:camera];

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
    v21 = handlerCopy;
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

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  v5 = [(_MKStaticMapView *)self traitCollection:environment];
  [(MKMapSnapshotOptions *)self->_snapshotOptions setTraitCollection:v5];

  v6 = MKGetSnapshotLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Trait environment changed", v7, 2u);
  }

  [(_MKStaticMapView *)self _updateSnapshot:1];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (MKMapConfigurationKVOContext_30131 == context)
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

  if (MKOverlayRendererKVOContext == context)
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
  [(_MKStaticMapView *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_10:
}

- (void)setPreferredConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy | self->_preferredConfiguration)
  {
    v7 = [configurationCopy isEqual:?];
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

- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(id)view
{
  v4 = *MEMORY[0x1E6985CC0];
  v5 = *(MEMORY[0x1E6985CC0] + 8);
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(id)view
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  snapshot = self->_snapshot;
  if (!snapshot)
  {
    snapshot = self->_gridSnapshot;
  }

  viewCopy = view;
  [(MKMapSnapshot *)snapshot pointForCoordinate:latitude, longitude];
  [(_MKStaticMapView *)self convertPoint:viewCopy toView:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setSelectedTrailWithId:(id)id name:(id)name locale:(id)locale
{
  [(MKMapSnapshotOptions *)self->_snapshotOptions _setSelectedTrailWithId:id name:name locale:locale];
  v6 = MKGetSnapshotLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating MKStaticMapView snapshot: Set selected trail", v7, 2u);
  }

  [(_MKStaticMapView *)self _updateSnapshot:1];
}

- (void)setCamera:(id)camera
{
  cameraCopy = camera;
  _viewportMode = [(MKMapSnapshotOptions *)self->_snapshotOptions _viewportMode];
  v6 = MEMORY[0x1E69DDCE0];
  if (_viewportMode == 2)
  {
    camera = [(MKMapSnapshotOptions *)self->_snapshotOptions camera];
    if ([cameraCopy isEqual:camera] && (self->_additionalEdgeInsets.left == v6[1] ? (v8 = self->_additionalEdgeInsets.top == *v6) : (v8 = 0), v8 ? (v9 = self->_additionalEdgeInsets.right == v6[3]) : (v9 = 0), v9))
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

  [(MKMapSnapshotOptions *)self->_snapshotOptions setCamera:cameraCopy];
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

- (void)setVisibleMapRect:(id)rect edgePadding:(UIEdgeInsets)padding
{
  bottom = padding.bottom;
  right = padding.right;
  top = padding.top;
  left = padding.left;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
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

- (void)setRegion:(id *)region
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  _viewportMode = [(MKMapSnapshotOptions *)self->_snapshotOptions _viewportMode];
  v13 = MEMORY[0x1E69DDCE0];
  if (_viewportMode || ([(MKMapSnapshotOptions *)self->_snapshotOptions region], vabdd_f64(v10, v17) >= 0.00000000999999994) || vabdd_f64(v9, v14) >= 0.00000000999999994 || vabdd_f64(v8, v15) >= 0.00000000999999994 || vabdd_f64(v7, v16) >= 0.00000000999999994 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalEdgeInsets.top, *v13), vceqq_f64(*&self->_additionalEdgeInsets.bottom, v13[1])))) & 1) == 0)
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_MKStaticMapView)initWithFrame:(CGRect)frame locationManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v72[2] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v69.receiver = self;
  v69.super_class = _MKStaticMapView;
  height = [(_MKStaticMapView *)&v69 initWithFrame:x, y, width, height];
  if (height)
  {
    v68 = managerCopy;
    if (managerCopy && (v11 = [[MKLocationManager alloc] initWithCLLocationManager:managerCopy]) != 0)
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

    objc_storeStrong(&height->_locationManager, v13);
    if (v12)
    {
    }

    v14 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"CartographyBackgroundColor"];
    [(_MKStaticMapView *)height setBackgroundColor:v14];

    v15 = objc_alloc_init(MKMapSnapshotOptions);
    snapshotOptions = height->_snapshotOptions;
    height->_snapshotOptions = v15;

    traitCollection = [(_MKStaticMapView *)height traitCollection];
    [(MKMapSnapshotOptions *)height->_snapshotOptions setTraitCollection:traitCollection];

    [(_MKStaticMapView *)height bounds];
    v19 = v18;
    [(_MKStaticMapView *)height bounds];
    if (v19 * v20 > 0.0)
    {
      [(_MKStaticMapView *)height bounds];
      [(MKMapSnapshotOptions *)height->_snapshotOptions setSize:v21, v22];
    }

    v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = height->_imageView;
    height->_imageView = v23;

    [(UIImageView *)height->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)height->_imageView _mapkit_setImageContentMode:4];
    [(_MKStaticMapView *)height addSubview:height->_imageView];
    v25 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIImageView *)height->_imageView centerXAnchor];
    centerXAnchor2 = [(_MKStaticMapView *)height centerXAnchor];
    v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v72[0] = v28;
    centerYAnchor = [(UIImageView *)height->_imageView centerYAnchor];
    centerYAnchor2 = [(_MKStaticMapView *)height centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v72[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    [v25 activateConstraints:v32];

    v33 = objc_alloc_init(MKAnnotationManager);
    annotationManager = height->_annotationManager;
    height->_annotationManager = v33;

    [(MKAnnotationManager *)height->_annotationManager setContainer:height];
    [(MKAnnotationManager *)height->_annotationManager setDelegate:height];
    v35 = objc_alloc_init(MKAnnotationContainerView);
    annotationContainer = height->_annotationContainer;
    height->_annotationContainer = v35;

    [(MKAnnotationContainerView *)height->_annotationContainer setDelegate:height];
    [(MKAnnotationContainerView *)height->_annotationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKStaticMapView *)height addSubview:height->_annotationContainer];
    v62 = MEMORY[0x1E696ACD8];
    topAnchor = [(MKAnnotationContainerView *)height->_annotationContainer topAnchor];
    topAnchor2 = [(_MKStaticMapView *)height topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v71[0] = v64;
    leftAnchor = [(MKAnnotationContainerView *)height->_annotationContainer leftAnchor];
    leftAnchor2 = [(_MKStaticMapView *)height leftAnchor];
    v38 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v71[1] = v38;
    rightAnchor = [(MKAnnotationContainerView *)height->_annotationContainer rightAnchor];
    rightAnchor2 = [(_MKStaticMapView *)height rightAnchor];
    v41 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v71[2] = v41;
    bottomAnchor = [(MKAnnotationContainerView *)height->_annotationContainer bottomAnchor];
    bottomAnchor2 = [(_MKStaticMapView *)height bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v71[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
    [v62 activateConstraints:v45];

    v46 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v47 = height->_overlays[0];
    height->_overlays[0] = v46;

    v48 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v49 = height->_overlays[1];
    height->_overlays[1] = v48;

    v50 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    overlaysToRenderers = height->_overlaysToRenderers;
    height->_overlaysToRenderers = v50;

    v52 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    mapItemCustomFeaturesToMapItems = height->_mapItemCustomFeaturesToMapItems;
    height->_mapItemCustomFeaturesToMapItems = v52;

    v54 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:10];
    mapItemsToMapItemCustomFeatures = height->_mapItemsToMapItemCustomFeatures;
    height->_mapItemsToMapItemCustomFeatures = v54;

    v56 = objc_alloc_init(MKStandardMapConfiguration);
    preferredConfiguration = height->_preferredConfiguration;
    height->_preferredConfiguration = &v56->super;

    [(MKMapConfiguration *)height->_preferredConfiguration _addObserver:height options:0 context:MKMapConfigurationKVOContext_30131];
    height->_canShowGrid = 1;
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v59 = [(_MKStaticMapView *)height registerForTraitChanges:v58 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v60 = height;
    managerCopy = v68;
  }

  return height;
}

@end