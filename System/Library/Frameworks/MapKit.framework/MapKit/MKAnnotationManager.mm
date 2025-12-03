@interface MKAnnotationManager
- (BOOL)annotationIsInternal:(id)internal;
- (MKAnnotation)draggedAnnotation;
- (MKAnnotationManager)init;
- (MKAnnotationManagerDelegate)delegate;
- (MKAnnotationMarkerContainer)container;
- (MKAnnotationRepresentation)selectedAnnotationRepresentation;
- (NSArray)annotations;
- (id)_addRepresentationForAnnotation:(id)annotation;
- (id)addRepresentationForAnnotation:(id)annotation;
- (id)dequeueReusableAnnotationRepresentationWithIdentifier:(id)identifier;
- (id)newInternalAnnotationRepresentationForInternalAnnotation:(id)annotation;
- (void)_addAnnotation:(id)annotation updateVisible:(BOOL)visible;
- (void)_annotationDidChangeState:(id)state animated:(BOOL)animated;
- (void)_removeAnnotation:(id)annotation updateVisible:(BOOL)visible removeFromContainer:(BOOL)container;
- (void)_removeRepresentationForAnnotation:(id)annotation fromCull:(BOOL)cull;
- (void)_setupUpdateVisibleAnnotationsTimer;
- (void)addAnnotation:(id)annotation allowAnimation:(BOOL)animation;
- (void)addAnnotations:(id)annotations;
- (void)addRepresentationsForAnnotations:(id)annotations;
- (void)cleanUpAnnotationRepresentationForRemoval:(id)removal;
- (void)configureAnnotationRepresentation:(id)representation forAnnotation:(id)annotation;
- (void)configureDefaultAnnotationRepresentation:(id)representation forAnnotation:(id)annotation;
- (void)dealloc;
- (void)deselectAnnotation:(id)annotation animated:(BOOL)animated;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerClass:(Class)class forRepresentationReuseIdentifier:(id)identifier;
- (void)removeAnnotations:(id)annotations;
- (void)replaceAnnotation:(id)annotation withAnnotation:(id)withAnnotation;
- (void)selectAnnotation:(id)annotation animated:(BOOL)animated;
- (void)setContainer:(id)container;
- (void)showAnnotationsInMapRect:(id)rect;
- (void)updateVisibleAnnotations;
@end

@implementation MKAnnotationManager

- (MKAnnotationManager)init
{
  v8.receiver = self;
  v8.super_class = MKAnnotationManager;
  v2 = [(MKAnnotationManager *)&v8 init];
  if (v2)
  {
    v3 = [[MKQuadTrie alloc] initWithInitialRegion:100 minimumSize:0.0 maximumItems:0.0, 268435456.0, 268435456.0, 1024.0, 1024.0];
    annotations = v2->_annotations;
    v2->_annotations = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:100];
    visibleAnnotations = v2->_visibleAnnotations;
    v2->_visibleAnnotations = v5;

    [(MKAnnotationManager *)v2 registerClass:0 forRepresentationReuseIdentifier:@"MKMapViewDefaultAnnotationViewReuseIdentifier"];
    [(MKAnnotationManager *)v2 registerClass:0 forRepresentationReuseIdentifier:@"MKMapViewDefaultClusterAnnotationViewReuseIdentifier"];
  }

  return v2;
}

- (void)updateVisibleAnnotations
{
  v47 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_container);

  if (WeakRetained && !self->_isChangingCoordinate)
  {
    updateVisibleTimer = self->_updateVisibleTimer;
    if (updateVisibleTimer)
    {
      [(NSTimer *)updateVisibleTimer invalidate];
      v5 = self->_updateVisibleTimer;
      self->_updateVisibleTimer = 0;
    }

    v6 = objc_loadWeakRetained(&self->_container);
    annotationRectTest = [v6 annotationRectTest];

    v8 = objc_loadWeakRetained(&self->_container);
    annotationCoordinateTest = [v8 annotationCoordinateTest];

    if (annotationRectTest && annotationCoordinateTest)
    {
      v10 = [(MKQuadTrie *)self->_annotations itemsPassingRectTest:annotationRectTest coordinateTest:annotationCoordinateTest];
      v11 = objc_loadWeakRetained(&self->_draggedAnnotation);

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_draggedAnnotation);
        [v10 addObject:v12];
      }

      v13 = [v10 containsObject:self->_selectedAnnotation];
      if (v13)
      {
        [v10 removeObject:self->_selectedAnnotation];
      }

      if (self->_selectedAnnotation)
      {
        v14 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:?];
        v15 = v14;
        if (v13)
        {
          [v14 _setHiddenForOffscreen:0];
        }

        else
        {
          v16 = objc_loadWeakRetained(&self->_container);
          [v15 _setHiddenForOffscreen:{objc_msgSend(v16, "shouldHideOffscreenSelectedAnnotation")}];
        }
      }

      if ([v10 count] || -[NSHashTable count](self->_visibleAnnotations, "count"))
      {
        v17 = [(NSHashTable *)self->_visibleAnnotations mutableCopy];
        [v17 minusHashTable:v10];
        if (self->_selectedAnnotation)
        {
          [v17 removeObject:?];
        }

        v36 = annotationRectTest;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v42;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v42 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [(MKAnnotationManager *)self _removeRepresentationForAnnotation:*(*(&v41 + 1) + 8 * i) fromCull:1];
            }

            v20 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v20);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v23 = v10;
        v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = 0;
          v27 = *v38;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v38 != v27)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v37 + 1) + 8 * j);
              if (![(NSHashTable *)self->_visibleAnnotations containsObject:v29])
              {
                if (!v26)
                {
                  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
                }

                v30 = [(MKAnnotationManager *)self _addRepresentationForAnnotation:v29];
                [v26 addObject:v30];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v25);
        }

        else
        {
          v26 = 0;
        }

        [(NSMutableSet *)self->_pendingAnnotations removeAllObjects];
        [(NSMutableSet *)self->_disallowAnimationAnnotations removeAllObjects];

        annotationCoordinateTest = v35;
        annotationRectTest = v36;
      }

      else
      {
        v26 = 0;
      }

      if ([v26 count] || -[NSMutableSet count](self->_pendingRemovalAnnotationRepresentations, "count"))
      {
        v31 = objc_loadWeakRetained(&self->_delegate);
        [v31 annotationManagerDidChangeVisibleAnnotationRepresentations:self];

        if ([v26 count])
        {
          v32 = objc_loadWeakRetained(&self->_delegate);
          [v32 annotationManager:self didAddAnnotationRepresentations:v26];
        }

        if ([(NSMutableSet *)self->_pendingRemovalAnnotationRepresentations count])
        {
          v33 = objc_loadWeakRetained(&self->_delegate);
          allObjects = [(NSMutableSet *)self->_pendingRemovalAnnotationRepresentations allObjects];
          [v33 annotationManager:self didRemoveAnnotationRepresentations:allObjects];

          [(NSMutableSet *)self->_pendingRemovalAnnotationRepresentations removeAllObjects];
        }
      }
    }
  }
}

- (NSArray)annotations
{
  array = [MEMORY[0x1E695DF70] array];
  allItems = [(MKQuadTrie *)self->_annotations allItems];
  [array addObjectsFromArray:allItems];

  invalidCoordinateAnnotations = self->_invalidCoordinateAnnotations;
  if (invalidCoordinateAnnotations)
  {
    allObjects = [(NSMutableSet *)invalidCoordinateAnnotations allObjects];
    [array addObjectsFromArray:allObjects];
  }

  return array;
}

- (void)_setupUpdateVisibleAnnotationsTimer
{
  if (self->_annotationRepresentationsAreAddedImmediately)
  {

    [(MKAnnotationManager *)self updateVisibleAnnotations];
  }

  else if (!self->_updateVisibleTimer)
  {
    v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_updateVisibleAnnotations selector:0 userInfo:0 repeats:0.0];
    updateVisibleTimer = self->_updateVisibleTimer;
    self->_updateVisibleTimer = v3;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->_updateVisibleTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (MKAnnotationRepresentation)selectedAnnotationRepresentation
{
  if (self->_selectedAnnotation)
  {
    v3 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MKAnnotation)draggedAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_draggedAnnotation);

  return WeakRetained;
}

- (MKAnnotationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MKAnnotationMarkerContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v46 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([objectCopy conformsToProtocol:&unk_1F1640D78] && objc_msgSend(pathCopy, "isEqualToString:", @"coordinate"))
  {
    v12 = [changeCopy objectForKey:*MEMORY[0x1E696A4F8]];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      self->_isChangingCoordinate = 1;
      [(MKQuadTrie *)self->_annotations remove:objectCopy];
      [(NSMutableSet *)self->_invalidCoordinateAnnotations removeObject:objectCopy];
    }

    else
    {
      [objectCopy coordinate];
      if (fabs(v15) > 180.0 || fabs(v14) > 90.0)
      {
        invalidCoordinateAnnotations = self->_invalidCoordinateAnnotations;
        if (!invalidCoordinateAnnotations)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v18 = self->_invalidCoordinateAnnotations;
          self->_invalidCoordinateAnnotations = v17;

          invalidCoordinateAnnotations = self->_invalidCoordinateAnnotations;
        }

        [(NSMutableSet *)invalidCoordinateAnnotations addObject:objectCopy];
      }

      else
      {
        [(MKQuadTrie *)self->_annotations insert:objectCopy];
      }

      self->_isChangingCoordinate = 0;
      v19 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      [v19 MKCoordinateValue];
      v21 = v20;
      v23 = v22;

      [objectCopy coordinate];
      if (vabdd_f64(v21, v25) >= 0.00000000999999994 || vabdd_f64(v23, v24) >= 0.00000000999999994)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        selfCopy = self;
        v26 = self->_allClusterAnnotations;
        v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v42;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v42 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v41 + 1) + 8 * i);
              memberAnnotations = [v31 memberAnnotations];
              v33 = [memberAnnotations containsObject:objectCopy];

              if (v33)
              {
                [v31 _memberAnnotationCoordinateDidChange];
              }
            }

            v28 = [(NSHashTable *)v26 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v28);
        }

        v34 = [(NSMapTable *)selfCopy->_annotationsToRepresentations objectForKey:objectCopy];
        v35 = v34;
        if (v34)
        {
          [v34 _invalidateCachedCoordinate];
          _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
          v37 = 0.0;
          if (_mapkit_shouldAdoptImplicitAnimationParameters)
          {
            [MEMORY[0x1E69DD250] _currentAnimationDuration];
            v37 = v38;
          }

          WeakRetained = objc_loadWeakRetained(&selfCopy->_container);
          [WeakRetained moveAnnotationRepresentation:v35 fromCoordinate:_mapkit_shouldAdoptImplicitAnimationParameters animated:v21 duration:{v23, v37}];
        }

        else
        {
          [(MKAnnotationManager *)selfCopy updateVisibleAnnotations];
        }
      }
    }
  }
}

- (void)_removeRepresentationForAnnotation:(id)annotation fromCull:(BOOL)cull
{
  cullCopy = cull;
  annotationCopy = annotation;
  v6 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:?];
  v7 = v6;
  if (v6 && (!cullCopy || ([v6 isPersistent] & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);
    [WeakRetained removeAnnotationRepresentation:v7];

    [(MKAnnotationManager *)self cleanUpAnnotationRepresentationForRemoval:v7];
    reuseIdentifier = [v7 reuseIdentifier];
    if ([reuseIdentifier length])
    {
      reusableAnnotationRepresentations = self->_reusableAnnotationRepresentations;
      if (!reusableAnnotationRepresentations)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v12 = self->_reusableAnnotationRepresentations;
        self->_reusableAnnotationRepresentations = strongToStrongObjectsMapTable;

        reusableAnnotationRepresentations = self->_reusableAnnotationRepresentations;
      }

      v13 = [(NSMapTable *)reusableAnnotationRepresentations objectForKey:reuseIdentifier];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSMapTable *)self->_reusableAnnotationRepresentations setObject:v13 forKey:reuseIdentifier];
      }

      [v13 addObject:v7];
    }

    [(NSMapTable *)self->_annotationsToRepresentations removeObjectForKey:annotationCopy];
    [(NSMutableSet *)self->_annotationRepresentations removeObject:v7];
    [(NSHashTable *)self->_visibleAnnotations removeObject:annotationCopy];
    pendingRemovalAnnotationRepresentations = self->_pendingRemovalAnnotationRepresentations;
    if (!pendingRemovalAnnotationRepresentations)
    {
      v15 = [MEMORY[0x1E695DFA8] set];
      v16 = self->_pendingRemovalAnnotationRepresentations;
      self->_pendingRemovalAnnotationRepresentations = v15;

      pendingRemovalAnnotationRepresentations = self->_pendingRemovalAnnotationRepresentations;
    }

    [(NSMutableSet *)pendingRemovalAnnotationRepresentations addObject:v7];
  }
}

- (void)cleanUpAnnotationRepresentationForRemoval:(id)removal
{
  viewRepresentation = [removal viewRepresentation];
  if (viewRepresentation)
  {
    v4 = viewRepresentation;
    [viewRepresentation setAnnotation:0];
    viewRepresentation = v4;
  }
}

- (id)_addRepresentationForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (!self->_annotationsToRepresentations)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:100];
    annotationsToRepresentations = self->_annotationsToRepresentations;
    self->_annotationsToRepresentations = v5;
  }

  if (!self->_annotationRepresentations)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    annotationRepresentations = self->_annotationRepresentations;
    self->_annotationRepresentations = v7;
  }

  v9 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:annotationCopy];

  if (v9)
  {
    v10 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:annotationCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [annotationCopy shouldRepresentSelf] && (v11 = annotationCopy) != 0)
    {
      v10 = v11;
      [(MKAnnotationManager *)self annotationIsInternal:v11];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained annotationManager:self representationForAnnotation:annotationCopy];

      v13 = [(MKAnnotationManager *)self annotationIsInternal:annotationCopy];
      if (!v10 && v13)
      {
        v10 = [(MKAnnotationManager *)self newInternalAnnotationRepresentationForInternalAnnotation:annotationCopy];
      }

      if (!v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = @"MKMapViewDefaultClusterAnnotationViewReuseIdentifier";
        }

        else
        {
          v14 = @"MKMapViewDefaultAnnotationViewReuseIdentifier";
        }

        v10 = [(MKAnnotationManager *)self dequeueReusableAnnotationRepresentationWithIdentifier:v14];
        [(MKAnnotationManager *)self configureDefaultAnnotationRepresentation:v10 forAnnotation:annotationCopy];
      }
    }

    [(MKAnnotationManager *)self configureAnnotationRepresentation:v10 forAnnotation:annotationCopy];
    [(NSMapTable *)self->_annotationsToRepresentations setObject:v10 forKey:annotationCopy];
    [(NSMutableSet *)self->_annotationRepresentations addObject:v10];
    [(NSHashTable *)self->_visibleAnnotations addObject:annotationCopy];
    if ([(NSMutableSet *)self->_pendingAnnotations containsObject:annotationCopy])
    {
      v15 = [(NSMutableSet *)self->_disallowAnimationAnnotations containsObject:annotationCopy]^ 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_loadWeakRetained(&self->_container);
    [v16 addAnnotationRepresentation:v10 allowAnimation:v15];
  }

  return v10;
}

- (void)configureDefaultAnnotationRepresentation:(id)representation forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  viewRepresentation = [representation viewRepresentation];
  if (!viewRepresentation)
  {
    goto LABEL_18;
  }

  v6 = _MKLinkedOnOrAfterReleaseSet(1539);
  v7 = objc_opt_respondsToSelector();
  if (!v6)
  {
    if (v7)
    {
      title = [annotationCopy title];
      v10 = [title length] != 0;
      v9 = viewRepresentation;
      goto LABEL_8;
    }

LABEL_10:
    [viewRepresentation setCanShowCallout:0];
    goto LABEL_11;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  title = [annotationCopy title];
  if (![title length])
  {
    detailCalloutAccessoryView = [viewRepresentation detailCalloutAccessoryView];
    [viewRepresentation setCanShowCallout:detailCalloutAccessoryView != 0];

    goto LABEL_9;
  }

  v9 = viewRepresentation;
  v10 = 1;
LABEL_8:
  [v9 setCanShowCallout:v10];
LABEL_9:

LABEL_11:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clusteringIdentifier = [annotationCopy clusteringIdentifier];
    [viewRepresentation setClusteringIdentifier:clusteringIdentifier];
LABEL_13:

    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector())
  {
    clusteringIdentifier = [annotationCopy _representedMapItem];
    if (clusteringIdentifier)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = viewRepresentation;
        _styleAttributes = [clusteringIdentifier _styleAttributes];
        [v12 _setStyleAttributes:_styleAttributes];
      }
    }

    goto LABEL_13;
  }

LABEL_18:
}

- (void)configureAnnotationRepresentation:(id)representation forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  viewRepresentation = [representation viewRepresentation];
  v6 = viewRepresentation;
  if (viewRepresentation)
  {
    [viewRepresentation setAnnotation:annotationCopy];
  }
}

- (id)newInternalAnnotationRepresentationForInternalAnnotation:(id)annotation
{
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userLocationView = self->_userLocationView;
    if (!userLocationView)
    {
      v6 = [[_MKUserLocationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:0];
      v7 = self->_userLocationView;
      self->_userLocationView = &v6->super.super;

      userLocationView = self->_userLocationView;
    }

    v8 = userLocationView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)annotationIsInternal:(id)internal
{
  internalCopy = internal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)deselectAnnotation:(id)annotation animated:(BOOL)animated
{
  animatedCopy = animated;
  annotationCopy = annotation;
  selectedAnnotation = self->_selectedAnnotation;
  if (annotationCopy)
  {
    v8 = annotationCopy;
    if (selectedAnnotation != annotationCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!selectedAnnotation)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v8 = selectedAnnotation;
  }

  v16 = v8;
  v9 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 annotationManager:self willDeselectAnnotationRepresentation:v9];
  }

  self->_isDeferringContainerSelection = 0;
  v13 = objc_loadWeakRetained(&self->_container);
  [v13 deselectAnnotationRepresentation:v9 animated:animatedCopy];

  [v9 _setHiddenForOffscreen:0];
  v14 = self->_selectedAnnotation;
  self->_selectedAnnotation = 0;

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 annotationManager:self didDeselectAnnotationRepresentation:v9];

  [(MKAnnotationManager *)self updateVisibleAnnotations];
  v8 = v16;
LABEL_10:
}

- (void)_annotationDidChangeState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  v7 = stateCopy;
  if (self->_isDeferringContainerSelection && self->_selectedAnnotation == stateCopy)
  {
    if ([(MKQuadTrie *)self->_annotations contains:stateCopy])
    {
      v8 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:v7];
      if (v8)
      {
        v9 = v8;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v11 = objc_opt_respondsToSelector();

        if ((v11 & 1) == 0 || (v12 = objc_loadWeakRetained(&self->_delegate), v13 = [v12 annotationManager:self canSelectAnnotationRepresentation:v9], v12, v13))
        {
          self->_isDeferringContainerSelection = 0;
          v14 = objc_loadWeakRetained(&self->_container);
          v15 = v14;
          deferredContainerSelectionAnimated = 0;
          if (animatedCopy)
          {
            deferredContainerSelectionAnimated = self->_deferredContainerSelectionAnimated;
          }

          [v14 selectAnnotationRepresentation:v9 animated:deferredContainerSelectionAnimated];
        }
      }
    }

    else
    {
      v17 = MKGetAnnotationsLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_ERROR, "ERROR: Trying to select an annotation which has not been added", v18, 2u);
      }
    }
  }
}

- (void)selectAnnotation:(id)annotation animated:(BOOL)animated
{
  animatedCopy = animated;
  annotationCopy = annotation;
  v8 = annotationCopy;
  selectedAnnotation = self->_selectedAnnotation;
  if (!annotationCopy || selectedAnnotation != annotationCopy)
  {
    if (selectedAnnotation)
    {
      if (animatedCopy && (v10 = objc_loadWeakRetained(&self->_delegate), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = [WeakRetained annotationManager:self shouldAnimateDeselectionOfAnnotation:self->_selectedAnnotation forSelectionOfAnnotation:v8];
      }

      else
      {
        v13 = 0;
      }

      [(MKAnnotationManager *)self deselectAnnotation:self->_selectedAnnotation animated:v13];
    }

    if (v8)
    {
      if ([(MKQuadTrie *)self->_annotations contains:v8])
      {
        v14 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:v8];
        if (!v14)
        {
          v14 = [(MKAnnotationManager *)self _addRepresentationForAnnotation:v8];
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 annotationManagerDidChangeVisibleAnnotationRepresentations:self];

          v16 = objc_loadWeakRetained(&self->_delegate);
          v17 = [MEMORY[0x1E695DEC8] arrayWithObject:v14];
          [v16 annotationManager:self didAddAnnotationRepresentations:v17];
        }

        objc_storeStrong(&self->_selectedAnnotation, annotation);
        v18 = objc_loadWeakRetained(&self->_delegate);
        v19 = objc_opt_respondsToSelector();

        if ((v19 & 1) != 0 && (v20 = objc_loadWeakRetained(&self->_delegate), v21 = [v20 annotationManager:self canSelectAnnotationRepresentation:v14], v20, !v21))
        {
          self->_isDeferringContainerSelection = 1;
          self->_deferredContainerSelectionAnimated = animatedCopy;
        }

        else
        {
          v22 = objc_loadWeakRetained(&self->_container);
          [v22 selectAnnotationRepresentation:v14 animated:animatedCopy];
        }

        v24 = objc_loadWeakRetained(&self->_delegate);
        [v24 annotationManager:self didSelectAnnotationRepresentation:v14];
      }

      else
      {
        v23 = MKGetAnnotationsLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25[0] = 0;
          _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_ERROR, "ERROR: Trying to select an annotation which has not been added", v25, 2u);
        }
      }
    }
  }
}

- (void)showAnnotationsInMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v6 = rect.var0.var0;
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_container);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_container);
    annotationRectTest = [v9 annotationRectTest];

    if (annotationRectTest && annotationRectTest[2](annotationRectTest, v6, v5, var0, var1) != 1)
    {
      updateVisibleTimer = self->_updateVisibleTimer;
      if (updateVisibleTimer)
      {
        [(NSTimer *)updateVisibleTimer invalidate];
        v12 = self->_updateVisibleTimer;
        self->_updateVisibleTimer = 0;
      }

      var1 = [(MKQuadTrie *)self->_annotations itemsInMapRect:v6, v5, var0, var1];
      if ([var1 containsObject:self->_selectedAnnotation])
      {
        [var1 removeObject:self->_selectedAnnotation];
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = self->_visibleAnnotations;
      v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [var1 removeObject:*(*(&v34 + 1) + 8 * i)];
          }

          v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v16);
      }

      [(NSMutableSet *)self->_pendingAnnotations minusSet:var1];
      [(NSMutableSet *)self->_disallowAnimationAnnotations minusSet:var1];
      if ([var1 count])
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v19 = var1;
        v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v31;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v31 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v30 + 1) + 8 * j);
              if (!v22)
              {
                v26 = objc_alloc(MEMORY[0x1E695DF70]);
                v22 = [v26 initWithCapacity:{objc_msgSend(v19, "count", v30)}];
              }

              v27 = [(MKAnnotationManager *)self _addRepresentationForAnnotation:v25, v30];
              [v22 addObject:v27];
            }

            v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        if ([v22 count])
        {
          v28 = objc_loadWeakRetained(&self->_delegate);
          [v28 annotationManagerDidChangeVisibleAnnotationRepresentations:self];

          v29 = objc_loadWeakRetained(&self->_delegate);
          [v29 annotationManager:self didAddAnnotationRepresentations:v22];
        }
      }
    }
  }
}

- (void)registerClass:(Class)class forRepresentationReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  v12 = identifierCopy;
  if (class)
  {
    goto LABEL_7;
  }

  if (([identifierCopy isEqualToString:@"MKMapViewDefaultAnnotationViewReuseIdentifier"] & 1) == 0)
  {
    v8 = [v12 isEqualToString:@"MKMapViewDefaultClusterAnnotationViewReuseIdentifier"];
    v7 = v12;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  class = objc_opt_class();
  if (_MKLinkedOnOrAfterReleaseSet(1540))
  {
    class = objc_opt_class();
  }

  v7 = v12;
  if (class)
  {
LABEL_7:
    registeredIdentifierToRepresentationClasses = self->_registeredIdentifierToRepresentationClasses;
    if (!registeredIdentifierToRepresentationClasses)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_registeredIdentifierToRepresentationClasses;
      self->_registeredIdentifierToRepresentationClasses = dictionary;

      v7 = v12;
      registeredIdentifierToRepresentationClasses = self->_registeredIdentifierToRepresentationClasses;
    }

    [(NSMutableDictionary *)registeredIdentifierToRepresentationClasses setObject:class forKey:v7];
  }

  else
  {
LABEL_13:
    [(NSMutableDictionary *)self->_registeredIdentifierToRepresentationClasses removeObjectForKey:v7];
  }
}

- (id)dequeueReusableAnnotationRepresentationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMapTable *)self->_reusableAnnotationRepresentations objectForKey:identifierCopy];
  if ([v5 count])
  {
    lastObject = [v5 lastObject];
    if ([(NSMutableSet *)self->_annotationRepresentations containsObject:lastObject])
    {
      do
      {
        if ([v5 count])
        {
          [v5 removeLastObject];
          lastObject2 = [v5 lastObject];
        }

        else
        {
          lastObject2 = 0;
        }

        lastObject = lastObject2;
      }

      while (([(NSMutableSet *)self->_annotationRepresentations containsObject:lastObject2]& 1) != 0);
    }

    else
    {
      lastObject2 = lastObject;
    }

    [lastObject2 prepareForReuse];
    if ([v5 count])
    {
      [v5 removeLastObject];
    }

    else
    {
      [(NSMapTable *)self->_reusableAnnotationRepresentations removeObjectForKey:identifierCopy];
    }
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_registeredIdentifierToRepresentationClasses objectForKey:identifierCopy];
    lastObject2 = [objc_msgSend(v8 "alloc")];
  }

  return lastObject2;
}

- (void)addRepresentationsForAnnotations:(id)annotations
{
  v21 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(annotationsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = annotationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(MKQuadTrie *)self->_annotations contains:v11, v16])
        {
          v12 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:v11];

          if (!v12)
          {
            v13 = [(MKAnnotationManager *)self _addRepresentationForAnnotation:v11];
            [v5 addObject:v13];
            [(NSMutableSet *)self->_pendingAnnotations removeObject:v11];
            [(NSMutableSet *)self->_disallowAnimationAnnotations removeObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained annotationManagerDidChangeVisibleAnnotationRepresentations:self];

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 annotationManager:self didAddAnnotationRepresentations:v5];
}

- (void)replaceAnnotation:(id)annotation withAnnotation:(id)withAnnotation
{
  annotationCopy = annotation;
  withAnnotationCopy = withAnnotation;
  if (![(MKQuadTrie *)self->_annotations contains:withAnnotationCopy])
  {
    v7 = [(MKQuadTrie *)self->_annotations contains:annotationCopy];
    if (annotationCopy)
    {
      if (v7)
      {
        if (withAnnotationCopy)
        {
          if (self->_selectedAnnotation == annotationCopy)
          {
            v8 = [(NSMapTable *)self->_annotationsToRepresentations objectForKey:annotationCopy];
            objc_storeStrong(&self->_selectedAnnotation, withAnnotation);
            [(NSMapTable *)self->_annotationsToRepresentations removeObjectForKey:annotationCopy];
            [(MKAnnotationManager *)self _removeAnnotation:annotationCopy updateVisible:0 removeFromContainer:0];
            [(MKAnnotationManager *)self _addAnnotation:withAnnotationCopy updateVisible:0];
            [(MKAnnotationManager *)self configureAnnotationRepresentation:v8 forAnnotation:withAnnotationCopy];
            [(NSMapTable *)self->_annotationsToRepresentations setObject:v8 forKey:withAnnotationCopy];
            [(NSHashTable *)self->_visibleAnnotations addObject:withAnnotationCopy];
          }

          else
          {
            [(MKAnnotationManager *)self removeAnnotation:annotationCopy];
            [(MKAnnotationManager *)self addAnnotation:withAnnotationCopy];
          }
        }

        else
        {
          [(MKAnnotationManager *)self removeAnnotation:annotationCopy];
        }
      }
    }
  }
}

- (void)removeAnnotations:(id)annotations
{
  v14 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [annotationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(annotationsCopy);
        }

        [(MKAnnotationManager *)self _removeAnnotation:*(*(&v9 + 1) + 8 * v8++) updateVisible:0 removeFromContainer:1];
      }

      while (v6 != v8);
      v6 = [annotationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MKAnnotationManager *)self updateVisibleAnnotations];
}

- (void)_removeAnnotation:(id)annotation updateVisible:(BOOL)visible removeFromContainer:(BOOL)container
{
  containerCopy = container;
  visibleCopy = visible;
  annotationCopy = annotation;
  v8 = [(MKQuadTrie *)self->_annotations contains:annotationCopy];
  v9 = annotationCopy;
  if (v8 || (v10 = [(NSMutableSet *)self->_invalidCoordinateAnnotations containsObject:annotationCopy], v9 = annotationCopy, v10))
  {
    if ([(MKQuadTrie *)self->_annotations contains:v9]|| [(NSMutableSet *)self->_invalidCoordinateAnnotations containsObject:annotationCopy])
    {
      [(MKAnnotation *)annotationCopy removeObserver:self forKeyPath:@"coordinate"];
    }

    [(MKQuadTrie *)self->_annotations remove:annotationCopy];
    [(NSMutableSet *)self->_invalidCoordinateAnnotations removeObject:annotationCopy];
    [(NSMutableSet *)self->_pendingAnnotations removeObject:annotationCopy];
    [(NSHashTable *)self->_visibleAnnotations removeObject:annotationCopy];
    [(NSMutableSet *)self->_disallowAnimationAnnotations removeObject:annotationCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSHashTable *)self->_allClusterAnnotations removeObject:annotationCopy];
    }

    v9 = annotationCopy;
    if (self->_selectedAnnotation == annotationCopy)
    {
      [(MKAnnotationManager *)self deselectAnnotation:annotationCopy animated:0];
      v9 = annotationCopy;
      if (!containerCopy)
      {
LABEL_10:
        if (!visibleCopy)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (!containerCopy)
    {
      goto LABEL_10;
    }

    [(MKAnnotationManager *)self _removeRepresentationForAnnotation:annotationCopy fromCull:0];
    v9 = annotationCopy;
    if (visibleCopy)
    {
LABEL_11:
      [(MKAnnotationManager *)self _setupUpdateVisibleAnnotationsTimer];
      v9 = annotationCopy;
    }
  }

LABEL_12:
}

- (id)addRepresentationForAnnotation:(id)annotation
{
  v14 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  [(MKAnnotationManager *)self _addAnnotation:annotationCopy updateVisible:0];
  v5 = [(MKAnnotationManager *)self _addRepresentationForAnnotation:annotationCopy];
  if (v5)
  {
    [(NSMutableSet *)self->_pendingAnnotations removeObject:annotationCopy];
    [(NSMutableSet *)self->_disallowAnimationAnnotations removeObject:annotationCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained annotationManagerDidChangeVisibleAnnotationRepresentations:self];

    v7 = objc_loadWeakRetained(&self->_delegate);
    v11 = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [v7 annotationManager:self didAddAnnotationRepresentations:v8];
  }

  else
  {
    v9 = MKGetAnnotationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v13 = annotationCopy;
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create cluster annotation view for annotation %{private}@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_pendingAnnotations removeObject:annotationCopy];
    [(NSMutableSet *)self->_disallowAnimationAnnotations removeObject:annotationCopy];
  }

  return v5;
}

- (void)addAnnotations:(id)annotations
{
  v14 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [annotationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(annotationsCopy);
        }

        [(MKAnnotationManager *)self _addAnnotation:*(*(&v9 + 1) + 8 * v8++) updateVisible:0];
      }

      while (v6 != v8);
      v6 = [annotationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MKAnnotationManager *)self _setupUpdateVisibleAnnotationsTimer];
}

- (void)addAnnotation:(id)annotation allowAnimation:(BOOL)animation
{
  annotationCopy = annotation;
  v10 = annotationCopy;
  if (annotationCopy && !animation)
  {
    disallowAnimationAnnotations = self->_disallowAnimationAnnotations;
    if (!disallowAnimationAnnotations)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_disallowAnimationAnnotations;
      self->_disallowAnimationAnnotations = v8;

      disallowAnimationAnnotations = self->_disallowAnimationAnnotations;
    }

    [(NSMutableSet *)disallowAnimationAnnotations addObject:v10];
    annotationCopy = v10;
  }

  [(MKAnnotationManager *)self _addAnnotation:annotationCopy updateVisible:1];
}

- (void)_addAnnotation:(id)annotation updateVisible:(BOOL)visible
{
  visibleCopy = visible;
  annotationCopy = annotation;
  if (annotationCopy)
  {
    v20 = annotationCopy;
    v7 = [(MKQuadTrie *)self->_annotations contains:annotationCopy];
    annotationCopy = v20;
    if (!v7)
    {
      v8 = [(NSMutableSet *)self->_invalidCoordinateAnnotations containsObject:v20];
      annotationCopy = v20;
      if ((v8 & 1) == 0)
      {
        [v20 addObserver:self forKeyPath:@"coordinate" options:10 context:0];
        [v20 coordinate];
        if (fabs(v10) > 180.0 || fabs(v9) > 90.0)
        {
          invalidCoordinateAnnotations = self->_invalidCoordinateAnnotations;
          if (!invalidCoordinateAnnotations)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v13 = self->_invalidCoordinateAnnotations;
            self->_invalidCoordinateAnnotations = v12;

            invalidCoordinateAnnotations = self->_invalidCoordinateAnnotations;
          }

          [(NSMutableSet *)invalidCoordinateAnnotations addObject:v20];
        }

        else
        {
          [(MKQuadTrie *)self->_annotations insert:v20];
        }

        pendingAnnotations = self->_pendingAnnotations;
        if (!pendingAnnotations)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v16 = self->_pendingAnnotations;
          self->_pendingAnnotations = v15;

          pendingAnnotations = self->_pendingAnnotations;
        }

        [(NSMutableSet *)pendingAnnotations addObject:v20];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          allClusterAnnotations = self->_allClusterAnnotations;
          if (!allClusterAnnotations)
          {
            v18 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:100];
            v19 = self->_allClusterAnnotations;
            self->_allClusterAnnotations = v18;

            allClusterAnnotations = self->_allClusterAnnotations;
          }

          [(NSHashTable *)allClusterAnnotations addObject:v20];
        }

        annotationCopy = v20;
        if (visibleCopy)
        {
          [(MKAnnotationManager *)self _setupUpdateVisibleAnnotationsTimer];
          annotationCopy = v20;
        }
      }
    }
  }
}

- (void)setContainer:(id)container
{
  v19 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_container);

  if (WeakRetained != containerCopy)
  {
    v6 = self->_selectedAnnotation;
    [(MKAnnotationManager *)self deselectAnnotation:v6 animated:0];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_annotationRepresentations;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          v13 = objc_loadWeakRetained(&self->_container);
          [v13 removeAnnotationRepresentation:{v12, v14}];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(NSMutableSet *)self->_annotationRepresentations removeAllObjects];
    [(NSMapTable *)self->_annotationsToRepresentations removeAllObjects];
    [(NSHashTable *)self->_visibleAnnotations removeAllObjects];
    objc_storeWeak(&self->_container, containerCopy);
    [(MKAnnotationManager *)self updateVisibleAnnotations];
    [(MKAnnotationManager *)self selectAnnotation:v6 animated:0];
  }
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  annotations = self->_annotations;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __30__MKAnnotationManager_dealloc__block_invoke;
  v23[3] = &unk_1E76C8710;
  v23[4] = self;
  [(MKQuadTrie *)annotations foreach:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_invalidCoordinateAnnotations;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v19 + 1) + 8 * v8++) removeObserver:self forKeyPath:@"coordinate"];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_annotationRepresentations;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(MKAnnotationManager *)self cleanUpAnnotationRepresentationForRemoval:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v11);
  }

  v14.receiver = self;
  v14.super_class = MKAnnotationManager;
  [(MKAnnotationManager *)&v14 dealloc];
}

@end