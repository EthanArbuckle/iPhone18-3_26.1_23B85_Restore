@interface MKAnnotationContainerView
- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFraction:(double)a3 ofVisible:(id)a4;
- (BOOL)_updateAnnotationViews:(id)a3;
- (BOOL)_updatePriorityMapIfNeeded;
- (BOOL)_view:(id)a3 containsPoint:(CGPoint)a4;
- (BOOL)accessoryContainsPoint:(CGPoint)a3;
- (BOOL)calloutContainsPoint:(CGPoint)a3;
- (BOOL)hasPendingAnimations;
- (CGPoint)draggingAnnotationViewDropPoint;
- (CGPoint)draggingAnnotationViewDropPointForPoint:(CGPoint)a3;
- (CGPoint)pointForCoordinate:(CLLocationCoordinate2D)a3;
- (CGRect)_visibleCenteringRect;
- (CGRect)_visibleCenteringRectInView:(id)a3;
- (CGRect)_visibleRect;
- (CLLocationCoordinate2D)coordinateForAnnotationView:(id)a3;
- (MKAnnotationContainerView)initWithFrame:(CGRect)a3;
- (MKAnnotationContainerViewDelegate)delegate;
- (MKPinAnnotationView)bubblePin;
- (UIEdgeInsets)accessoryPadding;
- (id)_annotationViewForSelectionAtPoint:(CGPoint)a3 avoidCurrent:(BOOL)a4 maxDistance:(double)a5;
- (id)_existingClusterViewsForClusterID:(id)a3;
- (id)annotationsInMapRect:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_addPrioritiesForAnnotationViewIfNeeded:(id)a3;
- (void)_dropDraggingAnnotationViewAnimated:(BOOL)a3;
- (void)_dropPinsIfNeeded:(BOOL)a3;
- (void)_liftForDragging:(id)a3 mouseDownPoint:(CGPoint)a4;
- (void)_performStateUpdatesIfNeeded;
- (void)_updateAnnotationView:(id)a3;
- (void)_updateAnnotationViewsForReason:(int64_t)a3 updatePositions:(BOOL)a4;
- (void)_updateClusterableAnnotationViews:(id)a3 withID:(id)a4;
- (void)_updateCollidableAnnotationViews;
- (void)_updateZPositionForAnnotationView:(id)a3 inBounds:(CGRect)a4;
- (void)_willRemoveInternalAnnotationView:(id)a3;
- (void)addAnnotationView:(id)a3 allowAnimation:(BOOL)a4;
- (void)addObserver:(id)a3;
- (void)annotationViewDidChangeDisplayPriority:(id)a3;
- (void)annotationViewDidChangeHidden:(id)a3;
- (void)annotationViewDidChangeMetrics:(id)a3;
- (void)annotationViewDidChangeZPriority:(id)a3;
- (void)dealloc;
- (void)deselectAnnotationView:(id)a3 animated:(BOOL)a4;
- (void)draggingTouchMovedToPoint:(CGPoint)a3 edgeInsets:(UIEdgeInsets)a4;
- (void)finishAddingAndRemovingAnnotationViews;
- (void)invalidateCustomFeatureDataSource;
- (void)invalidateCustomFeatureDataSourceRect:(id)a3;
- (void)pinDidDrop:(id)a3 animated:(BOOL)a4;
- (void)removeAnnotationView:(id)a3;
- (void)removeAnnotationViewsRotationAnimations;
- (void)selectAnnotationView:(id)a3 animated:(BOOL)a4;
- (void)setAnnotationViewsRotationRadians:(double)a3 animation:(id)a4;
- (void)setMapDisplayStyle:(id)a3;
- (void)setMapPitchRadians:(double)a3;
- (void)setMapType:(unint64_t)a3;
- (void)setSuppressCallout:(BOOL)a3;
- (void)setUserLocationView:(id)a3;
- (void)transitionTo:(int64_t)a3;
- (void)updateCalloutStateForSelectedAnnotationView:(id)a3;
- (void)updateUserLocationView;
- (void)visibleCenteringRectChanged;
@end

@implementation MKAnnotationContainerView

- (void)visibleCenteringRectChanged
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_annotationViews;
  v3 = [(NSMutableOrderedSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _mapVisibleCenteringRectChanged];
      }

      while (v4 != v6);
      v4 = [(NSMutableOrderedSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performStateUpdatesIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableOrderedSet *)self->_annotationViews count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v4 = [(NSMutableOrderedSet *)self->_annotationViews copy];
      [MEMORY[0x1E6979518] begin];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

            [*(*(&v10 + 1) + 8 * v9++) _performStateUpdatesIfNeeded];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (BOOL)_updatePriorityMapIfNeeded
{
  v3 = [(NSMutableSet *)self->_prioritiesToAdd count];
  if (v3)
  {
    v4 = [(MKPriorityToIndexMap *)self->_priorityMap addPriorities:self->_prioritiesToAdd];
    [(NSMutableSet *)self->_prioritiesToAdd removeAllObjects];
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (void)_updateCollidableAnnotationViews
{
  v36 = *MEMORY[0x1E69E9840];
  collidableAnnotationViews = self->_collidableAnnotationViews;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __61__MKAnnotationContainerView__updateCollidableAnnotationViews__block_invoke;
  v34[3] = &unk_1E76CCBB8;
  v34[4] = self;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:v34];
  v5 = [(NSMutableSet *)collidableAnnotationViews filteredSetUsingPredicate:v4];

  v6 = [(NSMutableDictionary *)self->_collidingAnnotationViews objectForKey:@"_MK_COLLISSIONS_"];
  v28 = [[MKSpatialCollider alloc] initWithAnnotationViews:v5 previousCollissions:v6 options:3];
  v7 = [MEMORY[0x1E695DFA0] orderedSetWithSet:v5];
  [v7 sortUsingComparator:&__block_literal_global_37960];
  if ([v7 count])
  {
    v24 = v6;
    v25 = v5;
    requiredPriorityAnnotationViews = self->_requiredPriorityAnnotationViews;
    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_65];
    v10 = [(NSMutableArray *)requiredPriorityAnnotationViews filteredArrayUsingPredicate:v9];

    v11 = 0;
    v26 = v10;
    v27 = v7;
    while (1)
    {
      if (![v7 count] && v11 >= objc_msgSend(v10, "count"))
      {

        v6 = v24;
        v5 = v25;
        goto LABEL_26;
      }

      v12 = [v10 count];
      if (v11 < v12)
      {
        v13 = [v10 objectAtIndex:v11];
        v14 = v11 + 1;
      }

      else
      {
        v13 = [v7 firstObject];
        v14 = v11;
      }

      v15 = [(MKSpatialCollider *)v28 viewsCollidingWithAnnotationView:v13 inCollidableList:v11 >= v12];
      v16 = v15;
      if (!v15)
      {
        break;
      }

      v29 = v14;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            if (v21 != v13)
            {
              [*(*(&v30 + 1) + 8 * i) _setHidden:1 forReason:5 animated:1];
              if (self->_selectedAnnotationView == v21)
              {
                [(MKAnnotationContainerView *)self deselectAnnotationView:v21 animated:1];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v18);
      }

      v7 = v27;
      [v27 removeObjectsInArray:v16];
      v10 = v26;
      v14 = v29;
      if (v11 >= v12)
      {
        goto LABEL_23;
      }

LABEL_24:

      v11 = v14;
    }

    if (v11 < v12)
    {
      goto LABEL_24;
    }

    [v7 removeObjectAtIndex:0];
LABEL_23:
    [(MKAnnotationView *)v13 _setHidden:0 forReason:5 animated:1];
    goto LABEL_24;
  }

LABEL_26:
  collidingAnnotationViews = self->_collidingAnnotationViews;
  v23 = [(MKSpatialCollider *)v28 registeredCollissions];
  [(NSMutableDictionary *)collidingAnnotationViews setObject:v23 forKey:@"_MK_COLLISSIONS_"];
}

BOOL __61__MKAnnotationContainerView__updateCollidableAnnotationViews__block_invoke(uint64_t a1, void *a2)
{
  if (a2[88] == 2)
  {
    return 0;
  }

  if ([a2 _isHiddenForReason:4])
  {
    return 0;
  }

  return *(*(a1 + 32) + 464) != a2;
}

uint64_t __61__MKAnnotationContainerView__updateCollidableAnnotationViews__block_invoke_3(uint64_t a1, void *a2)
{
  if (a2[88] == 2)
  {
    return 0;
  }

  if ([a2 _isHiddenForReason:4])
  {
    return 0;
  }

  return [a2 _isHiddenForReason:0] ^ 1;
}

- (void)_updateClusterableAnnotationViews:(id)a3 withID:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v40 = [(MKAnnotationContainerView *)self _existingClusterViewsForClusterID:a4];
  v41 = [(NSMutableDictionary *)self->_collidingAnnotationViews objectForKey:a4];
  v6 = [[MKSpatialCollider alloc] initWithAnnotationViews:a3 previousCollissions:v41 options:1];
  [(MKAnnotationContainerView *)self bounds];
  v67 = CGRectInset(v66, -100.0, -100.0);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v43 = v6;
  if ([(MKSpatialCollider *)v6 viewCount])
  {
    v11 = 0;
    do
    {
      v44 = [(MKSpatialCollider *)v43 viewsCollidingWithAnnotationViewAtIndex:v11];
      if (v44)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = [WeakRetained annotationContainer:self requestAddingClusterForAnnotationViews:v44];

        [v13 setClusteringIdentifier:a4];
        v14 = [(MKSpatialCollider *)v43 insertAnnotationView:v13];
        if (v11 >= v14)
        {
          v11 = v14;
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v15 = v44;
        v16 = [v15 countByEnumeratingWithState:&v58 objects:v64 count:16];
        if (v16)
        {
          v17 = *v59;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v59 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v58 + 1) + 8 * i);
              v20 = [(MKAnnotationView *)v19 clusterAnnotationView];
              v21 = v20 == v13;

              if (!v21)
              {
                [(MKAnnotationView *)v19 frame];
                v71.origin.x = x;
                v71.origin.y = y;
                v71.size.width = width;
                v71.size.height = height;
                v22 = CGRectIntersectsRect(v68, v71);
                [(MKAnnotationView *)v19 setClusterAnnotationView:v13];
                [(MKAnnotationView *)v19 _setHidden:1 forReason:4 animated:v22];
                [(MKAnnotationView *)v19 _offsetToAnnotationView:v13];
                [(MKAnnotationView *)v19 _setPositionOffset:v22 animated:?];
                if (self->_selectedAnnotationView == v19)
                {
                  [(MKAnnotationContainerView *)self deselectAnnotationView:v19 animated:v22];
                }
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v58 objects:v64 count:16];
          }

          while (v16);
        }
      }

      else
      {
        ++v11;
      }
    }

    while (v11 < [(MKSpatialCollider *)v43 viewCount]);
  }

  v23 = [v40 mutableCopy];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = v43;
  v25 = [(MKSpatialCollider *)v24 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v25)
  {
    v26 = *v55;
    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v55 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v54 + 1) + 8 * j);
        [v23 removeObject:v30];
        [v30 setClusterAnnotationView:0];
        if ([v30 _isHiddenForReason:4])
        {
          [v30 frame];
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = width;
          v72.size.height = height;
          v31 = CGRectIntersectsRect(v69, v72);
          [v30 _setHidden:0 forReason:4 animated:v31];
          [v30 _setPositionOffset:v31 animated:{v27, v28}];
        }
      }

      v25 = [(MKSpatialCollider *)v24 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v25);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v33)
  {
    v34 = *v51;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v51 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v50 + 1) + 8 * k);
        [(MKAnnotationView *)v36 frame];
        v73.origin.x = x;
        v73.origin.y = y;
        v73.size.width = width;
        v73.size.height = height;
        if (CGRectIntersectsRect(v70, v73))
        {
          objc_initWeak(&location, v36);
          objc_initWeak(&from, self);
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __70__MKAnnotationContainerView__updateClusterableAnnotationViews_withID___block_invoke;
          v45[3] = &unk_1E76CCB90;
          objc_copyWeak(&v46, &from);
          objc_copyWeak(&v47, &location);
          [(MKAnnotationView *)v36 _setHidden:1 forReason:4 animated:1 completion:v45];
          if (self->_selectedAnnotationView == v36)
          {
            [(MKAnnotationContainerView *)self deselectAnnotationView:v36 animated:1];
          }

          objc_destroyWeak(&v47);
          objc_destroyWeak(&v46);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }

        else
        {
          v37 = objc_loadWeakRetained(&self->_delegate);
          [v37 annotationContainer:self requestRemovingClusterAnnotationView:v36 updateVisible:0];
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v33);
  }

  collidingAnnotationViews = self->_collidingAnnotationViews;
  v39 = [(MKSpatialCollider *)v24 registeredCollissions];
  [(NSMutableDictionary *)collidingAnnotationViews setObject:v39 forKey:a4];
}

void __70__MKAnnotationContainerView__updateClusterableAnnotationViews_withID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 57);
    v4 = objc_loadWeakRetained((a1 + 40));
    [v3 annotationContainer:v5 requestRemovingClusterAnnotationView:v4 updateVisible:0];

    WeakRetained = v5;
  }
}

- (id)_existingClusterViewsForClusterID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_existingClusterAnnotationViews objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    existingClusterAnnotationViews = self->_existingClusterAnnotationViews;
    if (!existingClusterAnnotationViews)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v8 = self->_existingClusterAnnotationViews;
      self->_existingClusterAnnotationViews = v7;

      existingClusterAnnotationViews = self->_existingClusterAnnotationViews;
    }

    [(NSMutableDictionary *)existingClusterAnnotationViews setObject:v5 forKey:v4];
  }

  return v5;
}

- (BOOL)_updateAnnotationViews:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_suppress)
  {
    return 0;
  }

  if (![a3 count])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v31 = [WeakRetained annotationContainerShouldAlignToPixels:self];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v3 = 0;
    v10 = *v33;
    v30 = WeakRetained;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        if (v12 != self->_draggingAnnotationView && ([*(*(&v32 + 1) + 8 * i) dragState] - 3) >= 2)
        {
          v13 = [(MKAnnotationView *)v12 anchor];
          [v13 updateIfNeeded];
          [(MKAnnotationContainerView *)self bounds];
          [v13 pointInLayer:0 bound:?];
          v15 = v14;
          v17 = v16;
          if ([WeakRetained annotationContainer:self isAnnotationView:v12 validForDisplayAtPoint:?])
          {
            [(MKAnnotationView *)v12 _setHidden:0 forReason:3 animated:0];
            if (v12 == self->_userLocationView)
            {
              [(MKAnnotationView *)v12 alpha];
              v19 = v18;
              v20 = MKGetUserLocationViewLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v28 = objc_opt_class();
                v29 = v28;
                [(MKAnnotationView *)v12 frame];
                v26 = NSStringFromCGRect(v50);
                v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v15, *&v17];
                v27 = [(MKAnnotationView *)v12 annotation];
                [v27 coordinate];
                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v21, v22];
                *buf = 138413571;
                v37 = v28;
                v38 = 2048;
                v39 = v12;
                v40 = 2112;
                v41 = v26;
                v42 = 2048;
                v43 = v19;
                v44 = 2113;
                v45 = v25;
                v46 = 2113;
                v47 = v23;
                _os_log_impl(&dword_1A2EA0000, v20, OS_LOG_TYPE_INFO, "Updating user location view <%@: %p; frame: %@, alpha: %f> to position: %{private}@ for coordinate: %{private}@", buf, 0x3Eu);
              }

              WeakRetained = v30;
            }

            [(MKAnnotationView *)v12 _updateAnchorPosition:v31 alignToPixels:v15, v17];
            [(MKAnnotationView *)v12 _updateFromMap];
            [(MKAnnotationView *)v12 _didUpdatePosition];
            v3 = 1;
          }

          else
          {
            [(MKAnnotationView *)v12 _setHidden:1 forReason:3 animated:0];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v9);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateAnnotationView:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(MKAnnotationContainerView *)self _updateAnnotationViews:v4];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  selectedAnnotationView = self->_selectedAnnotationView;
  if (!selectedAnnotationView || ([(MKAnnotationContainerView *)self convertPoint:self->_selectedAnnotationView toView:x, y], [(MKAnnotationView *)selectedAnnotationView hitTest:v7 withEvent:?], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11.receiver = self;
    v11.super_class = MKAnnotationContainerView;
    v9 = [(MKAnnotationContainerView *)&v11 hitTest:v7 withEvent:x, y];
  }

  return v9;
}

- ($9433BFB5400FDC760880D1BFD6845728)_mapRectWithFraction:(double)a3 ofVisible:(id)a4
{
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v6 = INFINITY;
  if (a4.var0.var0 == INFINITY && a4.var0.var1 == INFINITY)
  {
    v10 = INFINITY;
  }

  else
  {
    v8 = -(a4.var1.var1 * a3);
    v9 = -(var0 * a3);
    v10 = a4.var0.var0 + v9;
    v6 = a4.var0.var1 + v8;
    var0 = var0 - v9 * 2.0;
    var1 = a4.var1.var1 - v8 * 2.0;
  }

  v15.size.width = 268435456.0;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.height = 268435456.0;
  v11 = v10;
  v12 = var0;
  result = MKMapRectIntersection(v15, *(&v6 - 1));
  v13 = v10;
  v14 = var0;
  result.var1.var0 = v14;
  result.var0.var0 = v13;
  return result;
}

- (void)transitionTo:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_annotationViews;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _transitionTo:{a3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addPrioritiesForAnnotationViewIfNeeded:(id)a3
{
  v18 = a3;
  [v18 zPriority];
  v5 = v4;
  v6 = 0.0;
  if (v5 > 0.0)
  {
    [v18 zPriority];
  }

  v7 = fminf(v6, 1000.0);
  if (![(MKPriorityToIndexMap *)self->_priorityMap containsPriority:v7])
  {
    prioritiesToAdd = self->_prioritiesToAdd;
    *&v8 = v7;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    [(NSMutableSet *)prioritiesToAdd addObject:v10];
  }

  [v18 selectedZPriority];
  v12 = v11;
  v13 = 0.0;
  if (v12 > 0.0)
  {
    [v18 selectedZPriority];
  }

  v14 = fminf(v13, 1000.0);
  if (![(MKPriorityToIndexMap *)self->_priorityMap containsPriority:v14])
  {
    v16 = self->_prioritiesToAdd;
    *&v15 = v14;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    [(NSMutableSet *)v16 addObject:v17];
  }
}

- (void)_updateZPositionForAnnotationView:(id)a3 inBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (([a3 isHidden] & 1) == 0)
  {
    [(MKAnnotationContainerView *)self _updatePriorityMapIfNeeded];
    [a3 _effectiveZPriority];
    priorityMap = self->_priorityMap;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v12 = [(MKPriorityToIndexMap *)priorityMap objectForKeyedSubscript:v11];
    v13 = [v12 integerValue];

    [a3 _anchorPoint];
    v15 = v14;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v16 = v15 / CGRectGetHeight(v21) + (100 * v13);
    v17 = +[MKThreadContext currentContext];
    [v17 _CA_setDisableActions:1];

    v18 = [a3 layer];
    [v18 setZPosition:v16];

    v19 = +[MKThreadContext currentContext];
    [v19 _CA_setDisableActions:0];
  }
}

- (void)annotationViewDidChangeDisplayPriority:(id)a3
{
  [a3 displayPriority];
  requiredPriorityAnnotationViews = self->_requiredPriorityAnnotationViews;
  if (v6 == 1000.0)
  {
    [(NSMutableArray *)requiredPriorityAnnotationViews addObject:a3];
    [(NSMutableSet *)self->_collidableAnnotationViews removeObject:a3];
    if ([a3 _isHiddenForReason:5])
    {
      [a3 _setHidden:0 forReason:5 animated:1];
    }
  }

  else
  {
    [(NSMutableArray *)requiredPriorityAnnotationViews removeObject:a3];
    [(NSMutableSet *)self->_collidableAnnotationViews addObject:a3];
  }

  [(MKAnnotationContainerView *)self updateAnnotationViewsForReason:0];
}

- (void)annotationViewDidChangeMetrics:(id)a3
{
  [(MKAnnotationContainerView *)self _updateAnnotationView:a3];

  [(MKAnnotationContainerView *)self _updateAnnotationViewsForReason:3 updatePositions:0];
}

- (void)annotationViewDidChangeHidden:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MKAnnotationContainerView *)self _updatePriorityMapIfNeeded];
  [(MKAnnotationContainerView *)self bounds];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [(MKAnnotationContainerView *)self annotationViews];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(MKAnnotationContainerView *)self _updateZPositionForAnnotationView:*(*(&v19 + 1) + 8 * v18++) inBounds:v10, v11, v12, v13];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

  else
  {
    [(MKAnnotationContainerView *)self _updateZPositionForAnnotationView:v4 inBounds:v6, v7, v8, v9];
  }
}

- (void)annotationViewDidChangeZPriority:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [(MKAnnotationContainerView *)self _addPrioritiesForAnnotationViewIfNeeded:?];
  v5 = [(MKAnnotationContainerView *)self _updatePriorityMapIfNeeded];
  [(MKAnnotationContainerView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [(MKAnnotationContainerView *)self annotationViews];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(MKAnnotationContainerView *)self _updateZPositionForAnnotationView:*(*(&v19 + 1) + 8 * i) inBounds:v7, v9, v11, v13];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

  else
  {

    [(MKAnnotationContainerView *)self _updateZPositionForAnnotationView:a3 inBounds:?];
  }
}

- (void)selectAnnotationView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  annotationViewToSelect = self->_annotationViewToSelect;
  self->_annotationViewToSelect = 0;

  v8 = [(MKAnnotationView *)v12 _isSelectable];
  v9 = v12;
  if (v8)
  {
    if ([(MKAnnotationContainerView *)self hasPendingAnimations]&& v4)
    {
      objc_storeStrong(&self->_annotationViewToSelect, a3);
    }

    else
    {
      selectedAnnotationView = self->_selectedAnnotationView;
      if (selectedAnnotationView == v12)
      {
        v11 = [(MKAnnotationView *)v12 isSelected];
        v9 = v12;
        if (v11)
        {
          goto LABEL_10;
        }

        selectedAnnotationView = self->_selectedAnnotationView;
      }

      [(MKAnnotationView *)selectedAnnotationView setHighlighted:0];
      [(MKAnnotationView *)v12 setHighlighted:0];
      [(MKAnnotationView *)v12 _setSelected:1 animated:v4];
      objc_storeStrong(&self->_selectedAnnotationView, a3);
      [(MKAnnotationContainerView *)self updateAnnotationViewsForReason:0];
    }

    v9 = v12;
  }

LABEL_10:
}

- (void)removeAnnotationView:(id)a3
{
  v4 = a3;
  if ([v4 _mapkit_isInternalAnnotationView])
  {
    [(MKAnnotationContainerView *)self _willRemoveInternalAnnotationView:v4];
  }

  annotationViewToSelect = self->_annotationViewToSelect;
  if (annotationViewToSelect == v4)
  {
    self->_annotationViewToSelect = 0;
  }

  v6 = [(MKAnnotationView *)v4 clusteringIdentifier];
  if (v6)
  {
    v7 = [(MKAnnotationView *)v4 annotation];
    v8 = [v7 _mapkit_isMKClusterAnnotation];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_existingClusterAnnotationViews objectForKey:v6];
      [v9 removeObject:v4];
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_clusterableAnnotationViews objectForKey:v6];
      [v10 removeObject:v4];

      v9 = [(MKAnnotationView *)v4 clusterAnnotationView];
      if (v9)
      {
        v11 = [(MKAnnotationContainerView *)self delegate];
        [v11 annotationContainer:self requestRemovingClusterAnnotationView:v9 updateVisible:1];
      }
    }
  }

  [(MKAnnotationView *)v4 displayPriority];
  if (v12 >= 1000.0)
  {
    [(NSMutableArray *)self->_requiredPriorityAnnotationViews removeObject:v4];
  }

  else
  {
    [(NSMutableSet *)self->_collidableAnnotationViews removeObject:v4];
    [(NSMutableDictionary *)self->_collidingAnnotationViews removeAllObjects];
  }

  v13 = +[MKThreadContext currentContext];
  [v13 _CA_setDisableActions:1];

  v14 = [(MKAnnotationView *)v4 layer];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  v21[0] = *MEMORY[0x1E695EFD0];
  v21[1] = v15;
  v21[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v14 setAffineTransform:v21];

  v16 = [(MKAnnotationView *)v4 layer];
  [v16 removeAnimationForKey:@"rotation"];

  v17 = +[MKThreadContext currentContext];
  [v17 _CA_setDisableActions:0];

  [(MKAnnotationView *)v4 removeFromSuperview];
  if (self->_selectedAnnotationView == v4)
  {
    [(MKAnnotationContainerView *)self deselectAnnotationView:v4 animated:0];
  }

  [(NSMutableOrderedSet *)self->_annotationViews removeObject:v4];
  [(NSMutableArray *)self->_pinsToAnimate removeObject:v4];
  v18 = [(MKAnnotationView *)v4 clusteringIdentifier];
  if (v18)
  {
    v19 = [(NSMutableDictionary *)self->_clusteringAnnotationViews objectForKey:v18];
    v20 = v19;
    if (v19)
    {
      [v19 removeObject:v4];
    }
  }
}

- (void)finishAddingAndRemovingAnnotationViews
{
  [(MKAnnotationContainerView *)self updateAnnotationViewsForReason:0];

  [(MKAnnotationContainerView *)self invalidateCustomFeatureDataSource];
}

- (void)addAnnotationView:(id)a3 allowAnimation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_50;
  }

  v55 = v6;
  v7 = [v6 annotation];
  v8 = [v7 _mapkit_isMKClusterAnnotation];

  if (v8)
  {
    v9 = [v55 annotation];
    v10 = [v9 clusteringIdentifier];

    v11 = [(MKAnnotationContainerView *)self _existingClusterViewsForClusterID:v10];
    goto LABEL_4;
  }

  v10 = [v55 clusteringIdentifier];
  if (v10)
  {
    v13 = [v55 annotation];
    v14 = [v13 _mapkit_isMKClusterAnnotation];

    if ((v14 & 1) == 0)
    {
      clusterableAnnotationViews = self->_clusterableAnnotationViews;
      if (!clusterableAnnotationViews)
      {
        v32 = [MEMORY[0x1E695DF90] dictionary];
        v33 = self->_clusterableAnnotationViews;
        self->_clusterableAnnotationViews = v32;

        clusterableAnnotationViews = self->_clusterableAnnotationViews;
      }

      v11 = [(NSMutableDictionary *)clusterableAnnotationViews objectForKey:v10];
      if (!v11)
      {
        v12 = [MEMORY[0x1E695DFA8] setWithObject:v55];
        [(NSMutableDictionary *)self->_clusterableAnnotationViews setObject:v12 forKey:v10];
        goto LABEL_5;
      }

LABEL_4:
      v12 = v11;
      [v11 addObject:v55];
LABEL_5:
    }
  }

  [v55 displayPriority];
  if (v15 >= 1000.0)
  {
    p_requiredPriorityAnnotationViews = &self->_requiredPriorityAnnotationViews;
    requiredPriorityAnnotationViews = self->_requiredPriorityAnnotationViews;
    if (requiredPriorityAnnotationViews)
    {
      goto LABEL_14;
    }

    v18 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    p_requiredPriorityAnnotationViews = &self->_collidableAnnotationViews;
    requiredPriorityAnnotationViews = self->_collidableAnnotationViews;
    if (requiredPriorityAnnotationViews)
    {
      goto LABEL_14;
    }

    v18 = [MEMORY[0x1E695DFA8] set];
  }

  v19 = *p_requiredPriorityAnnotationViews;
  *p_requiredPriorityAnnotationViews = v18;

  requiredPriorityAnnotationViews = *p_requiredPriorityAnnotationViews;
LABEL_14:
  [requiredPriorityAnnotationViews addObject:v55];
  if (!self->_collidingAnnotationViews)
  {
    v20 = [MEMORY[0x1E695DF90] dictionary];
    collidingAnnotationViews = self->_collidingAnnotationViews;
    self->_collidingAnnotationViews = v20;
  }

  [v55 _invalidateCachedCoordinate];
  [v55 _setMapType:self->_mapType];
  [v55 _setMapDisplayStyle:*&self->_mapDisplayStyle.timePeriod | (*&self->_mapDisplayStyle.searchResultsType << 32)];
  [v55 _setMapPitchRadians:self->_mapPitchRadians];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v55 _setDelegate:self], v4))
  {
    v22 = [v55 animatesDrop];
  }

  else
  {
    v22 = 0;
  }

  if ([v55 canShowCallout] && objc_msgSend(v55, "clipsToBounds"))
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot show callout with clipsToBounds enabled", v55];
    v50 = MEMORY[0x1E695DF30];
    v51 = *MEMORY[0x1E695D920];
    goto LABEL_56;
  }

  v23 = _MKLinkedOnOrAfterReleaseSet(1539);
  v24 = [v55 canShowCallout];
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_34;
    }

    v26 = [v55 annotation];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      goto LABEL_34;
    }

    v28 = MEMORY[0x1E696AEC0];
    v29 = [v55 annotation];
    v30 = [v28 stringWithFormat:@"%@ must implement title when canShowCallout is YES on corresponding view %@", v29, v55];
LABEL_55:

    v50 = MEMORY[0x1E695DF30];
    v51 = *MEMORY[0x1E695D920];
    v49 = v30;
LABEL_56:
    v54 = [v50 exceptionWithName:v51 reason:v49 userInfo:0];
    objc_exception_throw(v54);
  }

  if (v24)
  {
    v25 = [v55 annotation];
    if (objc_opt_respondsToSelector())
    {

      goto LABEL_34;
    }

    v34 = [v55 detailCalloutAccessoryView];

    if (v34)
    {
      goto LABEL_34;
    }

    v52 = MEMORY[0x1E696AEC0];
    v29 = [v55 annotation];
    v53 = [v55 detailCalloutAccessoryView];
    v30 = [v52 stringWithFormat:@"%@ must implement title, or view %@ must have a non-nil detailCalloutAccessoryView when canShowCallout is YES on corresponding view %@", v29, v53, v55];

    goto LABEL_55;
  }

LABEL_34:
  annotationViews = self->_annotationViews;
  if (!annotationViews)
  {
    v36 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:10];
    v37 = self->_annotationViews;
    self->_annotationViews = v36;

    annotationViews = self->_annotationViews;
  }

  [(NSMutableOrderedSet *)annotationViews addObject:v55];
  if ([objc_opt_class() _isInitiallyHiddenWhenAdded])
  {
    [v55 _setHidden:1 forReason:1 animated:0];
  }

  [(MKAnnotationContainerView *)self addSubview:v55];
  v38 = [v55 clusteringIdentifier];
  if (v38)
  {
    clusteringAnnotationViews = self->_clusteringAnnotationViews;
    if (!clusteringAnnotationViews)
    {
      v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v41 = self->_clusteringAnnotationViews;
      self->_clusteringAnnotationViews = v40;

      clusteringAnnotationViews = self->_clusteringAnnotationViews;
    }

    v42 = [(NSMutableDictionary *)clusteringAnnotationViews objectForKey:v38];
    if (v42)
    {
      v43 = v42;
      [v42 addObject:v55];
    }

    else
    {
      v43 = [MEMORY[0x1E695DFA8] setWithObject:v55];
      [(NSMutableDictionary *)self->_clusteringAnnotationViews setObject:v43 forKey:v38];
    }
  }

  [(MKAnnotationContainerView *)self _addPrioritiesForAnnotationViewIfNeeded:v55];
  v44 = +[MKThreadContext currentContext];
  [v44 _CA_setDisableActions:1];

  [(MKAnnotationContainerView *)self _updateAnnotationView:v55];
  v45 = +[MKThreadContext currentContext];
  [v45 _CA_setDisableActions:0];

  if ((v4 & v22) == 1)
  {
    pinsToAnimate = self->_pinsToAnimate;
    if (!pinsToAnimate)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v48 = self->_pinsToAnimate;
      self->_pinsToAnimate = v47;

      pinsToAnimate = self->_pinsToAnimate;
    }

    [(NSMutableArray *)pinsToAnimate addObject:v55];
  }

  v6 = v55;
LABEL_50:
}

- (void)_willRemoveInternalAnnotationView:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    [v4 _setDelegate:0];
    [v4 _stopDrop];
    [(NSMutableArray *)self->_awaitingDropPins removeObjectIdenticalTo:v4];
  }
}

- (void)_dropPinsIfNeeded:(BOOL)a3
{
  v47 = *MEMORY[0x1E69E9840];
  pinsToAnimate = self->_pinsToAnimate;
  if (a3)
  {
    if ([(NSMutableArray *)pinsToAnimate count])
    {
      [(MKAnnotationContainerView *)self _visibleCenteringRect];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v13 = self->_pinsToAnimate;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            [v19 frame];
            v50.origin.x = v20;
            v50.origin.y = v21;
            v50.size.width = v22;
            v50.size.height = v23;
            v49.origin.x = v6;
            v49.origin.y = v8;
            v49.size.width = v10;
            v49.size.height = v12;
            if (CGRectIntersectsRect(v49, v50))
            {
              if (!v16)
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v16 addObject:v19];
            }
          }

          v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      [(NSMutableArray *)self->_pinsToAnimate removeAllObjects];
      if (v16)
      {
        if (![(NSMutableArray *)self->_awaitingDropPins count])
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained annotationContainerWillDropPins:self];
        }

        [(NSMutableArray *)self->_awaitingDropPins addObjectsFromArray:v16];
        [v16 _mapkit_sortUsingLongitude];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v25 = v16;
        v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v38;
          v29 = 0.0;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v31 = *(*(&v37 + 1) + 8 * j);
              v36 = 0.0;
              v32 = objc_loadWeakRetained(&self->_delegate);
              v33 = [v31 annotation];
              [v33 coordinate];
              [v32 annotationContainer:self pinDropDistanceForCoordinate:&v36 maxDistance:?];
              v35 = v34;

              [v31 _dropFromDistance:v35 maxDistance:v36 withDelay:v29];
              v29 = v29 + 0.05;
            }

            v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v27);
        }
      }
    }
  }

  else
  {

    [(NSMutableArray *)pinsToAnimate removeAllObjects];
  }
}

- (void)setUserLocationView:(id)a3
{
  v5 = a3;
  userLocationView = self->_userLocationView;
  if (userLocationView != v5)
  {
    if (userLocationView)
    {
      [(MKAnnotationView *)userLocationView _setPresentationCoordinateChangedCallback:0];
    }

    objc_storeStrong(&self->_userLocationView, a3);
    if (self->_userLocationView)
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__MKAnnotationContainerView_setUserLocationView___block_invoke;
      v7[3] = &unk_1E76CD1C0;
      objc_copyWeak(&v8, &location);
      [(MKAnnotationView *)self->_userLocationView _setPresentationCoordinateChangedCallback:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __49__MKAnnotationContainerView_setUserLocationView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateUserLocationView];
}

- (BOOL)hasPendingAnimations
{
  if (![(MKAnnotationContainerView *)self hasDroppingPins])
  {
    v6 = [(MKAnnotationContainerView *)self bubblePin];
    if (!v6 || (-[MKAnnotationContainerView bubblePin](self, "bubblePin"), v2 = objc_claimAutoreleasedReturnValue(), [v2 superview], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      draggingAnnotationView = self->_draggingAnnotationView;
      v5 = draggingAnnotationView != 0;
      if (draggingAnnotationView && [(MKAnnotationView *)draggingAnnotationView dragState]!= MKAnnotationViewDragStateStarting)
      {
        v5 = [(MKAnnotationView *)self->_draggingAnnotationView dragState]== MKAnnotationViewDragStateEnding;
      }

      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_11:
    return v5;
  }

  return 1;
}

- (UIEdgeInsets)accessoryPadding
{
  +[MKPinAnnotationView _perceivedSize];
  v3 = v2;
  v5 = v4 + v4;
  v6 = v2 + 50.0;
  v7 = v5;
  result.right = v5;
  result.bottom = v3;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)pinDidDrop:(id)a3 animated:(BOOL)a4
{
  v5 = [(NSMutableArray *)self->_awaitingDropPins indexOfObjectIdenticalTo:a3, a4];
  awaitingDropPins = self->_awaitingDropPins;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(NSMutableArray *)awaitingDropPins count])
    {
      return;
    }
  }

  else
  {
    [(NSMutableArray *)awaitingDropPins removeObjectAtIndex:?];
    if ([(NSMutableArray *)self->_awaitingDropPins count])
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained annotationContainerDidDropPins:self];
  }

  annotationViewToSelect = self->_annotationViewToSelect;
  if (annotationViewToSelect)
  {
    self->_annotationViewToSelect = 0;
    v9 = annotationViewToSelect;

    [(MKAnnotationContainerView *)self selectAnnotationView:v9 animated:1];
  }
}

- (void)_dropDraggingAnnotationViewAnimated:(BOOL)a3
{
  v3 = a3;
  if (self->_didDragAnnotationView)
  {
    [(MKAnnotationContainerView *)self draggingAnnotationViewDropPoint];
    v6 = v5;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained convertPoint:self toCoordinateFromView:{v6, v8}];
    v11 = v10;
    v13 = v12;

    v23.latitude = v11;
    v23.longitude = v13;
    if (CLLocationCoordinate2DIsValid(v23))
    {
      v14 = [(MKAnnotationView *)self->_draggingAnnotationView annotation];
      [v14 setCoordinate:{v11, v13}];
    }

    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [(MKAnnotationView *)self->_draggingAnnotationView setDragState:v15 animated:v3];
  if (_MKLinkedOnOrAfterReleaseSet(2053) && (!_MKLinkedOnOrAfterReleaseSet(2310) || ![self->_draggingAnnotationView _mapkit_implementationOfSelector:sel_setDragState_animated_ isFromSubclassOfClass:objc_opt_class()]))
  {
    [(MKAnnotationView *)self->_draggingAnnotationView setDragState:0 animated:v3];
  }

  v21 = self->_draggingAnnotationView;
  draggingAnnotationView = self->_draggingAnnotationView;
  self->_draggingAnnotationView = 0;

  v17 = v21;
  if (self->_annotationViewToSelect == v21)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = v21;
    if ((isKindOfClass & 1) == 0)
    {
      [(MKAnnotationContainerView *)self selectAnnotationView:self->_annotationViewToSelect animated:v3];
      annotationViewToSelect = self->_annotationViewToSelect;
      self->_annotationViewToSelect = 0;

      v17 = v21;
    }
  }

  if ([(MKAnnotationView *)v17 collisionMode]!= MKAnnotationViewCollisionModeNone || ([(MKAnnotationView *)v21 clusteringIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    [(MKAnnotationContainerView *)self updateAnnotationViewsForReason:0];
  }
}

- (CGPoint)draggingAnnotationViewDropPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(MKAnnotationView *)self->_draggingAnnotationView centerOffset];
  v6 = x - v5;
  v8 = y - v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)draggingAnnotationViewDropPoint
{
  didDragAnnotationView = self->_didDragAnnotationView;
  draggingAnnotationView = self->_draggingAnnotationView;
  if (didDragAnnotationView)
  {
    [(MKAnnotationView *)draggingAnnotationView center];
    v6 = v5;
    v8 = v7;
    [(MKAnnotationView *)self->_draggingAnnotationView _draggingDropOffset];
    v10 = v6 - v9;
    v12 = v8 - v11;
  }

  else
  {
    [(MKAnnotationView *)draggingAnnotationView coordinate];
    v14 = v13;
    v16 = v15;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained convertCoordinate:self toPointToView:{v14, v16}];
    v10 = v18;
    v12 = v19;
  }

  v20 = v10;
  v21 = v12;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)draggingTouchMovedToPoint:(CGPoint)a3 edgeInsets:(UIEdgeInsets)a4
{
  draggingAnnotationView = self->_draggingAnnotationView;
  if (draggingAnnotationView)
  {
    y = a3.y;
    x = a3.x;
    if ([(MKAnnotationView *)draggingAnnotationView dragState:a3.x]== MKAnnotationViewDragStateDragging || [(MKAnnotationView *)self->_draggingAnnotationView dragState]== MKAnnotationViewDragStateStarting)
    {
      v8 = x - self->_mouseDownPoint.x;
      v9 = y - self->_mouseDownPoint.y;
      if (v8 != 0.0 || v9 != 0.0)
      {
        self->_didDragAnnotationView = 1;
        [(MKAnnotationView *)self->_draggingAnnotationView setCenter:v8 + self->_draggingAnnotationViewCenter.x, v9 + self->_draggingAnnotationViewCenter.y];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v11 = v10;
        previousMouseDragTimeStamp = self->_previousMouseDragTimeStamp;
        if (previousMouseDragTimeStamp > 0.0)
        {
          [(MKAnnotationView *)self->_draggingAnnotationView _didDragWithVelocity:(x - self->_previousMouseDragPoint.x) / (v11 - previousMouseDragTimeStamp), (y - self->_previousMouseDragPoint.y) / (v11 - previousMouseDragTimeStamp)];
          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__draggingAnnotationViewDidPause_ object:self->_draggingAnnotationView];
          [(MKAnnotationContainerView *)self performSelector:sel__draggingAnnotationViewDidPause_ withObject:self->_draggingAnnotationView afterDelay:0.2];
        }

        self->_previousMouseDragTimeStamp = v11;
        self->_previousMouseDragPoint.x = x;
        self->_previousMouseDragPoint.y = y;
      }
    }
  }
}

- (void)_liftForDragging:(id)a3 mouseDownPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  self->_clickedOnAnnotationView = 1;
  self->_mouseDownPoint.x = x;
  self->_mouseDownPoint.y = y;
  objc_storeStrong(&self->_draggingAnnotationView, a3);
  self->_didDragAnnotationView = 0;
  [v11 setDragState:1 animated:1];
  [v11 center];
  self->_draggingAnnotationViewCenter.x = v8;
  self->_draggingAnnotationViewCenter.y = v9;
  if ([v11 collisionMode] != 2 || (objc_msgSend(v11, "clusteringIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    [(MKAnnotationContainerView *)self updateAnnotationViewsForReason:0];
  }
}

- (id)_annotationViewForSelectionAtPoint:(CGPoint)a3 avoidCurrent:(BOOL)a4 maxDistance:(double)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v47 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = [(MKAnnotationContainerView *)self annotationViews];
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v11)
  {

    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v43;
  v15 = 0.0;
  v16 = 1000.0;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v43 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v42 + 1) + 8 * i);
      if ([(MKAnnotationView *)v18 _isSelectable]&& ![(MKAnnotationView *)v18 isHidden]&& (!v6 || self->_selectedAnnotationView != v18))
      {
        [(MKAnnotationView *)v18 _significantBounds];
        [(MKAnnotationContainerView *)self convertRect:v18 fromView:?];
        MKDistanceBetweenPointAndRect(x, y, v19, v20, v21, v22);
        if (v23 <= a5)
        {
          v24 = v23;
          if (!v13 || ([(MKAnnotationView *)v13 _selectionPriority], v26 = v25, [(MKAnnotationView *)v18 _selectionPriority], v26 <= v27) && (([(MKAnnotationView *)v13 _selectionPriority], v29 = v28, [(MKAnnotationView *)v18 _selectionPriority], vabds_f32(v29, v30) < 0.000001) ? (v31 = v24 <= v15) : (v31 = 1), v31 && (vabdd_f64(v15, v24) >= 0.000001 || ([(MKAnnotationView *)v18 zPriority], v16 <= v32))))
          {
            v33 = v18;

            [(MKAnnotationView *)v33 zPriority];
            v16 = v34;
            v15 = v24;
            v13 = v33;
          }
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v12);

  if (!v13 && v6)
  {
LABEL_27:
    selectedAnnotationView = self->_selectedAnnotationView;
    if (selectedAnnotationView)
    {
      [(MKAnnotationView *)selectedAnnotationView frame];
      MKDistanceBetweenPointAndRect(x, y, v36, v37, v38, v39);
      if (v40 <= a5)
      {
        v13 = self->_selectedAnnotationView;
        goto LABEL_31;
      }
    }

LABEL_29:
    v13 = 0;
  }

LABEL_31:

  return v13;
}

- (void)updateUserLocationView
{
  if (self->_userLocationView)
  {
    [(MKAnnotationContainerView *)self _updateAnnotationView:?];
  }
}

- (CGPoint)pointForCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained convertCoordinate:self toPointToView:{latitude, longitude}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CLLocationCoordinate2D)coordinateForAnnotationView:(id)a3
{
  v4 = [a3 layer];
  [v4 position];
  v6 = v5;
  v8 = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained convertPoint:self toCoordinateFromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.longitude = v15;
  result.latitude = v14;
  return result;
}

- (void)_updateAnnotationViewsForReason:(int64_t)a3 updatePositions:(BOOL)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  if (!self->_suppress && !self->_isUpdating)
  {
    v5 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      self->_isUpdating = 1;
      if (v5 && ![(MKAnnotationContainerView *)self _updateAnnotationViewPositions])
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateAnnotationViewsWithDelay object:0];
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (!a3)
        {
          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateAnnotationViewsWithDelay object:0];
          goto LABEL_14;
        }

        if (a3 == 3 || a3 == 1)
        {
          v9 = Current - self->_lastUpdate;
          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateAnnotationViewsWithDelay object:0];
          if (v9 < 0.5)
          {
            goto LABEL_29;
          }

LABEL_14:
          self->_lastUpdate = Current;
          v10 = MKGetAnnotationsLog();
          v11 = os_signpost_id_make_with_pointer(v10, self);

          v12 = MKGetAnnotationsLog();
          v13 = v12;
          v14 = v11 - 1;
          if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Clustering", &unk_1A30FEA0E, buf, 2u);
          }

          clusterableAnnotationViews = self->_clusterableAnnotationViews;
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __77__MKAnnotationContainerView__updateAnnotationViewsForReason_updatePositions___block_invoke;
          v43[3] = &unk_1E76CCB68;
          v43[4] = self;
          [(NSMutableDictionary *)clusterableAnnotationViews enumerateKeysAndObjectsUsingBlock:v43];
          v16 = MKGetAnnotationsLog();
          v17 = v16;
          if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v17, OS_SIGNPOST_INTERVAL_END, v11, "Clustering", &unk_1A30FEA0E, buf, 2u);
          }

          v18 = MKGetAnnotationsLog();
          v19 = v18;
          if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Collision", &unk_1A30FEA0E, buf, 2u);
          }

          [(MKAnnotationContainerView *)self _updateCollidableAnnotationViews];
          v20 = MKGetAnnotationsLog();
          v21 = v20;
          if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v21, OS_SIGNPOST_INTERVAL_END, v11, "Collision", &unk_1A30FEA0E, buf, 2u);
          }

          goto LABEL_30;
        }

        if (a3 != 2)
        {
          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateAnnotationViewsWithDelay object:0];
LABEL_29:
          v22 = fmin(Current - self->_lastUpdate, 0.5);
          v47[0] = *MEMORY[0x1E695DA28];
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
          [(MKAnnotationContainerView *)self performSelector:sel_updateAnnotationViewsWithDelay withObject:0 afterDelay:v23 inModes:v22];

LABEL_30:
          v24 = [(MKAnnotationContainerView *)self annotationViews];
          [(MKAnnotationContainerView *)self bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v33 = v24;
          v34 = [v33 countByEnumeratingWithState:&v39 objects:v46 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v40;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v40 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                [(MKAnnotationContainerView *)self _updateZPositionForAnnotationView:*(*(&v39 + 1) + 8 * i) inBounds:v26, v28, v30, v32, v39];
              }

              v35 = [v33 countByEnumeratingWithState:&v39 objects:v46 count:16];
            }

            while (v35);
          }

          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__performStateUpdatesIfNeeded object:0];
          v45 = *MEMORY[0x1E695DA28];
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          [(MKAnnotationContainerView *)self performSelector:sel__performStateUpdatesIfNeeded withObject:0 afterDelay:v38 inModes:0.0];
        }
      }

      self->_isUpdating = 0;
    }
  }
}

- (void)deselectAnnotationView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    annotationViewToSelect = self->_annotationViewToSelect;
    self->_annotationViewToSelect = 0;
    v14 = v6;

    v6 = v14;
    if (self->_selectedAnnotationView != v14)
    {
      goto LABEL_9;
    }

    [(MKAnnotationView *)v14 _setSelected:0 animated:v4];
    v8 = [(MKAnnotationView *)v14 annotation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(UIView *)self _mapKit_mapView];
      v11 = [(MKAnnotationView *)v14 annotation];
      [v10 removeAnnotation:v11];
    }

    selectedAnnotationView = self->_selectedAnnotationView;
    self->_selectedAnnotationView = 0;

    [(MKAnnotationContainerView *)self updateAnnotationViewsForReason:0];
  }

  else
  {
    v13 = self->_selectedAnnotationView;
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = 0;
    [(MKAnnotationContainerView *)self deselectAnnotationView:v13 animated:v4];
  }

  v6 = v14;
LABEL_9:
}

- (void)updateCalloutStateForSelectedAnnotationView:(id)a3
{
  v4 = a3;
  if (!self->_suppressCallout)
  {
    selectedAnnotationView = self->_selectedAnnotationView;
    if (selectedAnnotationView == v4)
    {
      v6 = v4;
      [(MKAnnotationView *)selectedAnnotationView updateCalloutViewIfNeededAnimated:1];
      v4 = v6;
    }
  }
}

- (void)setSuppressCallout:(BOOL)a3
{
  if (self->_suppressCallout != a3)
  {
    self->_suppressCallout = a3;
    [(MKAnnotationView *)self->_selectedAnnotationView updateCalloutViewIfNeededAnimated:1];
  }
}

- (void)removeAnnotationViewsRotationAnimations
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(MKAnnotationContainerView *)self annotationViews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) layer];
        [v7 removeAnimationForKey:@"rotation"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setAnnotationViewsRotationRadians:(double)a3 animation:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_annotationViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) _setMapRotationRadians:{a3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (MKPinAnnotationView)bubblePin
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedAnnotationView = self->_selectedAnnotationView;
  }

  else
  {
    selectedAnnotationView = 0;
  }

  return selectedAnnotationView;
}

- (CGRect)_visibleRect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained visibleRectInView:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_visibleCenteringRectInView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained visibleCenteringRectInView:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_visibleCenteringRect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained visibleCenteringRectInView:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_view:(id)a3 containsPoint:(CGPoint)a4
{
  if (!a3)
  {
    return 0;
  }

  y = a4.y;
  x = a4.x;
  selectedAnnotationView = self->_selectedAnnotationView;
  v8 = a3;
  [(MKAnnotationContainerView *)self convertPoint:selectedAnnotationView toView:x, y];
  v9 = [(MKAnnotationView *)self->_selectedAnnotationView hitTest:0 withEvent:?];
  LOBYTE(selectedAnnotationView) = [v9 isDescendantOfView:v8];

  return selectedAnnotationView;
}

- (BOOL)accessoryContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(MKAnnotationView *)self->_selectedAnnotationView _selectionAccessoryView];
  LOBYTE(v5) = [(MKAnnotationContainerView *)v5 _view:v6 containsPoint:x, y];

  return v5;
}

- (BOOL)calloutContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(MKAnnotationView *)self->_selectedAnnotationView _calloutView];
  LOBYTE(v5) = [(MKAnnotationContainerView *)v5 _view:v6 containsPoint:x, y];

  return v5;
}

- (void)setMapDisplayStyle:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ((((*&self->_mapDisplayStyle.timePeriod | (*&self->_mapDisplayStyle.searchResultsType << 32)) ^ *&a3.var0) & 0x1FFFFFFFFFFLL) != 0)
  {
    v3 = *&a3.var0;
    self->_mapDisplayStyle = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(MKAnnotationContainerView *)self annotationViews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) _setMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setMapType:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_mapType != a3)
  {
    self->_mapType = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(MKAnnotationContainerView *)self annotationViews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) _setMapType:a3];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setMapPitchRadians:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_mapPitchRadians != a3)
  {
    self->_mapPitchRadians = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_annotationViews;
    v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) _setMapPitchRadians:{a3, v9}];
        }

        v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (MKAnnotationContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateAnnotationViewsWithDelay object:0];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__performStateUpdatesIfNeeded object:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MKAnnotationContainerView *)self annotationViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 _setDelegate:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(MKAnnotationContainerView *)self setUserLocationView:0];
  v10.receiver = self;
  v10.super_class = MKAnnotationContainerView;
  [(MKAnnotationContainerView *)&v10 dealloc];
}

- (MKAnnotationContainerView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = MKAnnotationContainerView;
  v3 = [(MKAnnotationContainerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    awaitingDropPins = v3->_awaitingDropPins;
    v3->_awaitingDropPins = v4;

    v6 = [MKPriorityToIndexMap alloc];
    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1612408, &unk_1F1612418, &unk_1F1612428, &unk_1F1612438, 0}];
    v8 = [(MKPriorityToIndexMap *)v6 initWithPriorities:v7];
    priorityMap = v3->_priorityMap;
    v3->_priorityMap = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    prioritiesToAdd = v3->_prioritiesToAdd;
    v3->_prioritiesToAdd = v10;

    [(MKAnnotationContainerView *)v3 setAccessibilityIdentifier:@"AnnotationContainer"];
    v12 = v3;
  }

  return v3;
}

- (id)annotationsInMapRect:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_annotationViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isProvidingCustomFeature])
        {
          [v10 coordinate];
          GEOMapPointForCoordinate();
          if (GEOMapRectContainsPoint())
          {
            v11 = [v10 customFeatureAnnotation];
            [v4 addObject:v11];
          }
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  customFeatureDataSourceObservers = self->_customFeatureDataSourceObservers;
  v8 = v4;
  if (!customFeatureDataSourceObservers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_customFeatureDataSourceObservers;
    self->_customFeatureDataSourceObservers = v6;

    v4 = v8;
    customFeatureDataSourceObservers = self->_customFeatureDataSourceObservers;
  }

  [(NSMutableArray *)customFeatureDataSourceObservers addObject:v4];
}

- (void)invalidateCustomFeatureDataSource
{
  v3 = [(UIView *)self _mapKit_mapView];
  [v3 visibleMapRect];
  [(MKAnnotationContainerView *)self _mapRectWithFraction:3.0 ofVisible:v4, v5, v6, v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(MKAnnotationContainerView *)self invalidateCustomFeatureDataSourceRect:v9, v11, v13, v15];
}

- (void)invalidateCustomFeatureDataSourceRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_customFeatureDataSourceObservers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) dataSource:self featuresDidChangeForRect:{v6, v5, var0, var1, v13}];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end