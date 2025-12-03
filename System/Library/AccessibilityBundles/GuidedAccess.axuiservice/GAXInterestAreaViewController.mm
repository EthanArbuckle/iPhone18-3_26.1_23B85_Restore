@interface GAXInterestAreaViewController
- (BOOL)_interestAreaPath:(id)path shouldShowResizingKnobAtPosition:(unint64_t)position;
- (BOOL)interestAreaView:(id)view shouldAddCloseButtonForInterestAreaPathAtIndex:(unint64_t)index;
- (BOOL)interestAreaView:(id)view shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)index;
- (BOOL)shouldAllowEditingInterestAreas;
- (CGPoint)_locationForTouch:(id)touch;
- (CGPoint)lastTranslationAppliedToPathBeingDragged;
- (CGRect)_boundsForConstrainingFingerPath;
- (GAXInterestAreaViewControllerDelegate)delegate;
- (GAXPathMapping)interestAreaPathMapping;
- (GAXPathMapping)interestAreaPaths;
- (GAXPathMapping)interestAreaPathsForStorage;
- (GAXPathMapping)interestAreaPathsInScreenCoordinates;
- (NSMutableArray)orderedInterestAreaPaths;
- (double)scaleForSpecialControlsInInterestAreaView:(id)view;
- (float)snapAnimationProgress;
- (float)snapAnimationRawProgress;
- (id)_childrenOfParentInterestAreaPath:(id)path;
- (id)_interestAreaPathAtIndex:(unint64_t)index parent:(id *)parent;
- (id)_interestAreaPathsIntersectingPath:(id)path;
- (id)_orientationAgnosticPathsFromOrientationAwarePaths:(id)paths shouldConsolidateOrientationsOnSameAxis:(BOOL)axis;
- (id)_parentOfInterestAreaPath:(id)path;
- (id)_referenceViewForConvertingFromAndToWindowCoordinateSystem;
- (id)interestAreaView:(id)view dynamicInterestAreaPathAtIndex:(unint64_t)index;
- (id)interestAreaView:(id)view interestAreaPathAtIndex:(unint64_t)index;
- (int)_backgroundStyleForCurrentState;
- (int)_backgroundStyleForEditing:(BOOL)editing;
- (int64_t)_compareInterestAreaPath:(id)path toPath:(id)toPath;
- (unint64_t)_numberOfInterestAreaPaths;
- (unint64_t)interestAreaView:(id)view visibleKnobPositionsForInterestAreaPathAtIndex:(unint64_t)index;
- (unint64_t)numberOfDynamicInterestAreaPathsForInterestAreaView:(id)view;
- (void)_addInterestAreaPath:(id)path withParent:(id)parent notifyInterestAreaView:(BOOL)view notifyDelegate:(BOOL)delegate;
- (void)_applyInterestAreaPathsForStorageAnimated:(BOOL)animated;
- (void)_archiveInterestAreaPathsForStorage;
- (void)_beginInterestAreaPathsUpdate;
- (void)_computeFinalPathForFingerPath:(id)path completion:(id)completion;
- (void)_didFinishRecordingCurrentSequenceOfTouchEvents;
- (void)_didRecordTouchEventAtLocation:(CGPoint)location;
- (void)_displayDidRefresh:(id)refresh;
- (void)_endInterestAreaPathsUpdateAnimated:(BOOL)animated;
- (void)_enumerateInterestAreaPathsUsingBlock:(id)block;
- (void)_interestAreaPath:(id)path ensureExistenceOfKnownParent:(id)parent orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:(id)paths orphanedInterestAreaPaths:(id)areaPaths;
- (void)_interestAreaPathsDidChange;
- (void)_makeInterestAreaPath:(id)path adoptOtherInterestAreaPath:(id)areaPath notifyDelegate:(BOOL)delegate;
- (void)_removeInterestAreaPathAtIndices:(id)indices notifyDelegate:(BOOL)delegate;
- (void)_updateBackgroundVisibilityAnimated:(BOOL)animated;
- (void)_updateInterestAreaPathsWithPath:(id)path updatedInterestAreaPathAlreadyAdded:(BOOL)added;
- (void)commonInit;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)interestAreaView:(id)view didActivateCloseButtonForInterestAreaPathAtIndex:(unint64_t)index;
- (void)interestAreaView:(id)view didFinishMovingInterestAreaPathAtIndex:(unint64_t)index;
- (void)interestAreaView:(id)view interestAreaPathAtIndex:(unint64_t)index wasMovedWithTranslation:(CGPoint)translation;
- (void)interestAreaView:(id)view resizingKnobAtPosition:(unint64_t)position wasMovedToPoint:(CGPoint)point forInterestAreaPathAtIndex:(unint64_t)index constrainedResizingKnobCenter:(CGPoint *)center;
- (void)interestAreaView:(id)view willBeginMovingInterestAreaPathAtIndex:(unint64_t)index;
- (void)loadView;
- (void)setAllowsDimmingInterestAreaPaths:(BOOL)paths animated:(BOOL)animated;
- (void)setBackgroundShouldCoverEverything:(BOOL)everything animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setInterestAreaPaths:(id)paths animated:(BOOL)animated;
- (void)setInterestAreaPathsForStorage:(id)storage animated:(BOOL)animated;
- (void)setStyleProvider:(id)provider;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)transitionIn;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation GAXInterestAreaViewController

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = GAXInterestAreaViewController;
  [(GAXViewController *)&v3 commonInit];
  [(GAXInterestAreaViewController *)self setAllowsDimmingInterestAreaPaths:1];
}

- (GAXPathMapping)interestAreaPaths
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_141F0;
  v9 = sub_14200;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_14208;
  v4[3] = &unk_5D468;
  v4[4] = &v5;
  [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (GAXPathMapping)interestAreaPathsForStorage
{
  interestAreaPaths = [(GAXInterestAreaViewController *)self interestAreaPaths];
  v4 = [(GAXInterestAreaViewController *)self _orientationAgnosticPathsFromOrientationAwarePaths:interestAreaPaths shouldConsolidateOrientationsOnSameAxis:1];

  return v4;
}

- (GAXPathMapping)interestAreaPathsInScreenCoordinates
{
  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorage];
  interestAreaPaths = [(GAXInterestAreaViewController *)self interestAreaPaths];
  v4 = [(GAXInterestAreaViewController *)self _orientationAgnosticPathsFromOrientationAwarePaths:interestAreaPaths shouldConsolidateOrientationsOnSameAxis:0];

  return v4;
}

- (GAXPathMapping)interestAreaPathMapping
{
  if (!self->_interestAreaPathMapping && [(GAXInterestAreaViewController *)self interestAreaPathsUpdateCount])
  {
    v3 = objc_opt_new();
    interestAreaPathMapping = self->_interestAreaPathMapping;
    self->_interestAreaPathMapping = v3;
  }

  v5 = self->_interestAreaPathMapping;

  return v5;
}

- (NSMutableArray)orderedInterestAreaPaths
{
  if (!self->_orderedInterestAreaPaths && [(GAXInterestAreaViewController *)self interestAreaPathsUpdateCount])
  {
    v3 = objc_opt_new();
    orderedInterestAreaPaths = self->_orderedInterestAreaPaths;
    self->_orderedInterestAreaPaths = v3;
  }

  v5 = self->_orderedInterestAreaPaths;

  return v5;
}

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(&self->_styleProvider, provider);
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
      [interestAreaView setStyleProvider:v7];
    }
  }

  _objc_release_x2();
}

- (float)snapAnimationRawProgress
{
  styleProvider = [(GAXInterestAreaViewController *)self styleProvider];
  v4 = styleProvider;
  if (styleProvider)
  {
    [styleProvider interestAreaViewSnapAnimationDuration];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  [(GAXInterestAreaViewController *)self snapAnimationDidStartTimeInterval];
  *&v9 = (v8 - v9) / v6;
  v10 = fminf(*&v9, 1.0);

  return v10;
}

- (float)snapAnimationProgress
{
  v3 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [(GAXInterestAreaViewController *)self snapAnimationRawProgress];
  [v3 _solveForInput:?];
  v5 = v4;

  return v5;
}

- (BOOL)shouldAllowEditingInterestAreas
{
  isEditing = [(GAXInterestAreaViewController *)self isEditing];
  if (isEditing)
  {
    LOBYTE(isEditing) = ![(GAXInterestAreaViewController *)self backgroundShouldCoverEverything];
  }

  return isEditing;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    animatedCopy = animated;
    editingCopy = editing;
    self->_editing = editing;
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
      [interestAreaView setSpecialControlsVisible:editingCopy animated:animatedCopy];
      [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:animatedCopy];
    }
  }
}

- (void)setAllowsDimmingInterestAreaPaths:(BOOL)paths animated:(BOOL)animated
{
  if (self->_allowsDimmingInterestAreaPaths != paths)
  {
    self->_allowsDimmingInterestAreaPaths = paths;
    [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:animated];
  }
}

- (void)setInterestAreaPaths:(id)paths animated:(BOOL)animated
{
  animatedCopy = animated;
  pathsCopy = paths;
  interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
  v8 = [(GAXInterestAreaViewController *)self numberOfInterestAreaPathsForInterestAreaView:interestAreaView];
  [(GAXInterestAreaViewController *)self setCachedInterestAreaPathsForStorage:0];
  [(GAXInterestAreaViewController *)self setInterestAreaPathMapping:0];
  [(GAXInterestAreaViewController *)self setOrderedInterestAreaPaths:0];
  if (animatedCopy)
  {
    v9 = [NSIndexSet indexSetWithIndexesInRange:0, v8];
    [interestAreaView deleteInterestAreaPathsAtIndices:v9];
  }

  [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14804;
  v10[3] = &unk_5D490;
  v10[4] = self;
  v11 = animatedCopy;
  [pathsCopy enumeratePathsAndParentsUsingBlock:v10];

  if (!animatedCopy)
  {
    [interestAreaView reloadAllInterestAreaPaths];
  }

  [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdateAnimated:animatedCopy];
}

- (void)setInterestAreaPathsForStorage:(id)storage animated:(BOOL)animated
{
  animatedCopy = animated;
  [(GAXInterestAreaViewController *)self setCachedInterestAreaPathsForStorage:storage];

  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorageAnimated:animatedCopy];
}

- (void)setBackgroundShouldCoverEverything:(BOOL)everything animated:(BOOL)animated
{
  if (self->_backgroundShouldCoverEverything != everything)
  {
    animatedCopy = animated;
    everythingCopy = everything;
    self->_backgroundShouldCoverEverything = everything;
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
      [interestAreaView setBackgroundShouldCoverEverything:everythingCopy animated:animatedCopy];
    }
  }
}

- (void)transitionIn
{
  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorage];
  self->_allowsDimmingInterestAreaPaths = 1;

  [(GAXInterestAreaViewController *)self setEditing:1 animated:1];
}

- (void)loadView
{
  v4 = objc_opt_new();
  [v4 setSpecialControlsVisible:{-[GAXInterestAreaViewController isEditing](self, "isEditing")}];
  [v4 setBackgroundShouldCoverEverything:{-[GAXInterestAreaViewController backgroundShouldCoverEverything](self, "backgroundShouldCoverEverything")}];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
  styleProvider = [(GAXInterestAreaViewController *)self styleProvider];
  [v4 setStyleProvider:styleProvider];

  [(GAXViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaViewController;
  [(GAXInterestAreaViewController *)&v4 viewWillAppear:appear];
  [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaViewController;
  [(GAXInterestAreaViewController *)&v4 viewDidAppear:appear];
  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorage];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v8.receiver = self;
  v8.super_class = GAXInterestAreaViewController;
  [GAXInterestAreaViewController willRotateToInterfaceOrientation:"willRotateToInterfaceOrientation:duration:" duration:?];
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate interestAreaViewController:self willRotateToInterfaceOrientation:orientation duration:duration];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaViewController;
  [(GAXInterestAreaViewController *)&v6 didRotateFromInterfaceOrientation:?];
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate interestAreaViewController:self didRotateFromInterfaceOrientation:orientation];
  }
}

- (void)_displayDidRefresh:(id)refresh
{
  refreshCopy = refresh;
  pathInterpolator = [(GAXInterestAreaViewController *)self pathInterpolator];
  if (pathInterpolator)
  {
    [(GAXInterestAreaViewController *)self setCurrentInterpolatedPath:0];
    interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
    [(GAXInterestAreaViewController *)self snapAnimationProgress];
    if (v7 >= 1.0)
    {
      pathInterpolator2 = [(GAXInterestAreaViewController *)self pathInterpolator];
      endingPath = [pathInterpolator2 endingPath];

      [(GAXInterestAreaViewController *)self setFingerPath:0];
      [(GAXInterestAreaViewController *)self setPathInterpolator:0];
      [(GAXInterestAreaViewController *)self setCurrentInterpolatedPath:0];
      [refreshCopy removeTarget:self selector:a2];
      interestAreaView2 = [(GAXInterestAreaViewController *)self interestAreaView];
      v11 = [NSIndexSet indexSetWithIndex:0];
      [interestAreaView2 deleteDynamicInterestAreaPathAtIndices:v11];

      [(GAXInterestAreaViewController *)self _updateInterestAreaPathsWithPath:endingPath updatedInterestAreaPathAlreadyAdded:0];
      [(GAXInterestAreaViewController *)self _didFinishRecordingCurrentSequenceOfTouchEvents];
      [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:1];
      [interestAreaView reloadAllAccessoryControls];
    }

    [interestAreaView reloadDynamicInterestAreaPathAtIndex:0];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
    anyObject = [beganCopy anyObject];
    [(GAXInterestAreaViewController *)self setCurrentTouch:anyObject];
    [(GAXInterestAreaViewController *)self _locationForTouch:anyObject];
    v11 = v10;
    v13 = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_14F20;
    v16[3] = &unk_5D4B8;
    *&v16[5] = v10;
    *&v16[6] = v12;
    v16[4] = &v17;
    [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:v16];
    if ((v18[3] & 1) == 0)
    {
      v14 = objc_opt_new();
      [(GAXInterestAreaViewController *)self setFingerPath:v14];
      [v14 moveToPoint:{v11, v13}];
      [(GAXInterestAreaViewController *)self _didRecordTouchEventAtLocation:v11, v13];
      [interestAreaView insertDynamicInterestAreaPathAtIndex:0];
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v15 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    fingerPath = [(GAXInterestAreaViewController *)self fingerPath];
    currentTouch = [(GAXInterestAreaViewController *)self currentTouch];
    v10 = currentTouch;
    if (fingerPath && currentTouch && [movedCopy containsObject:currentTouch])
    {
      interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
      [(GAXInterestAreaViewController *)self _locationForTouch:v10];
      v13 = v12;
      v15 = v14;
      [fingerPath addLineToPoint:?];
      [(GAXInterestAreaViewController *)self _didRecordTouchEventAtLocation:v13, v15];
      [interestAreaView reloadDynamicInterestAreaPathAtIndex:0];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v16 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    fingerPath = [(GAXInterestAreaViewController *)self fingerPath];
    currentTouch = [(GAXInterestAreaViewController *)self currentTouch];
    v10 = currentTouch;
    if (fingerPath && currentTouch && [endedCopy containsObject:currentTouch])
    {
      interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
      [(GAXInterestAreaViewController *)self _locationForTouch:v10];
      v13 = v12;
      v15 = v14;
      [fingerPath addLineToPoint:?];
      [fingerPath closePath];
      v16 = [fingerPath equivalentPathForDirection:0];

      [(GAXInterestAreaViewController *)self setFingerPath:v16];
      [(GAXInterestAreaViewController *)self _didRecordTouchEventAtLocation:v13, v15];
      [interestAreaView reloadDynamicInterestAreaPathAtIndex:0];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_15250;
      v19[3] = &unk_5D508;
      v19[4] = self;
      fingerPath = v16;
      v20 = fingerPath;
      v21 = interestAreaView;
      v17 = interestAreaView;
      [(GAXInterestAreaViewController *)self _computeFinalPathForFingerPath:fingerPath completion:v19];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v18 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    [(GAXInterestAreaViewController *)self touchesEnded:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (int64_t)_compareInterestAreaPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  [path bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [toPathCopy bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  rect = v7;
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v23 = CGRectGetMinY(v30);
  if (MinY >= v23)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  if (MinY == v23)
  {
    v31.origin.x = rect;
    v31.origin.y = v9;
    v31.size.width = v11;
    v31.size.height = v13;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v26 = CGRectGetMinX(v32);
    if (MinX >= v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = -1;
    }

    if (MinX == v26)
    {
      return 0;
    }

    else
    {
      return v27;
    }
  }

  return result;
}

- (void)_interestAreaPath:(id)path ensureExistenceOfKnownParent:(id)parent orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:(id)paths orphanedInterestAreaPaths:(id)areaPaths
{
  pathCopy = path;
  parentCopy = parent;
  pathsCopy = paths;
  areaPathsCopy = areaPaths;
  if (!pathsCopy)
  {
    pathsCopy = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:pathCopy];
    if (!pathsCopy)
    {
      v16 = 0;
      v17 = 1;
LABEL_34:
      if ([v16 count])
      {
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_15A00;
        v28[3] = &unk_5D530;
        v28[4] = self;
        [v16 sortUsingComparator:v28];
        firstObject = [v16 firstObject];
        if (firstObject != 0 && v17)
        {
          [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:firstObject notifyDelegate:1];
          [areaPathsCopy removeObject:firstObject];
        }
      }

      else
      {
        firstObject = 0;
      }

      [(GAXInterestAreaViewController *)self _makeInterestAreaPath:firstObject adoptOtherInterestAreaPath:pathCopy notifyDelegate:1];
      [areaPathsCopy removeObject:pathCopy];
LABEL_39:

      goto LABEL_40;
    }
  }

  v25 = areaPathsCopy;
  v26 = pathCopy;
  v14 = objc_opt_new();
  v15 = [[NSMutableSet alloc] initWithSet:pathsCopy];
  if (![v15 count])
  {

    v16 = 0;
    v17 = 1;
    pathCopy = v26;
LABEL_33:
    areaPathsCopy = v25;
    goto LABEL_34;
  }

  v24 = pathsCopy;
  v16 = 0;
  v17 = 1;
  selfCopy = self;
  do
  {
    anyObject = [v15 anyObject];
    if (!anyObject)
    {
      _AXAssert();
    }

    if (([v14 containsObject:anyObject] & 1) == 0)
    {
      v19 = anyObject == parentCopy;
      if (anyObject == parentCopy)
      {
LABEL_24:
        [v14 addObject:anyObject];
        goto LABEL_25;
      }

      v20 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:anyObject];
      allObjects = [v20 allObjects];
      [v15 addObjectsFromArray:allObjects];
      if (v17)
      {
        if (!v16)
        {
          v16 = objc_opt_new();
        }

        v22 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:anyObject];
        v17 = v22 != 0;
        if (!v22)
        {
          [v16 removeAllObjects];
        }

        if (!anyObject)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v22 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:anyObject];
        if (v22)
        {
          v17 = 0;
LABEL_23:

          self = selfCopy;
          goto LABEL_24;
        }

        if (!v16)
        {
          v16 = objc_opt_new();
        }

        v17 = 0;
        if (!anyObject)
        {
          goto LABEL_23;
        }
      }

      [v16 addObject:anyObject];
      goto LABEL_23;
    }

    v19 = 0;
LABEL_25:
    [v15 removeObject:anyObject];
  }

  while ([v15 count] && !v19);

  if (!v19)
  {
    pathCopy = v26;
    pathsCopy = v24;
    goto LABEL_33;
  }

  [parentCopy topLeftPointOnPath];
  pathCopy = v26;
  areaPathsCopy = v25;
  if ([v26 containsPoint:?])
  {
    [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:v26 notifyDelegate:1];
    [(GAXInterestAreaViewController *)self _interestAreaPath:parentCopy ensureExistenceOfKnownParent:0 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:0 orphanedInterestAreaPaths:v25];
    firstObject = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:parentCopy];
    pathsCopy = v24;
    if (firstObject != v26)
    {
      [(GAXInterestAreaViewController *)self _interestAreaPath:v26 ensureExistenceOfKnownParent:firstObject orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:0 orphanedInterestAreaPaths:v25];
    }

    goto LABEL_39;
  }

  pathsCopy = v24;
LABEL_40:
}

- (void)_updateInterestAreaPathsWithPath:(id)path updatedInterestAreaPathAlreadyAdded:(BOOL)added
{
  addedCopy = added;
  pathCopy = path;
  context = objc_autoreleasePoolPush();
  v58 = pathCopy;
  if (!pathCopy || ([pathCopy isEmpty] & 1) != 0)
  {
    goto LABEL_107;
  }

  if (addedCopy)
  {
    v54 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:pathCopy];
  }

  else
  {
    v54 = 0;
  }

  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x3032000000;
  v110[3] = sub_141F0;
  v110[4] = sub_14200;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_141F0;
  v108 = sub_14200;
  v109 = 0;
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_1659C;
  v98[3] = &unk_5D558;
  v103 = addedCopy;
  v6 = pathCopy;
  v99 = v6;
  selfCopy = self;
  v101 = v110;
  v102 = &v104;
  [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:v98];
  v7 = v105[5];
  if (v7)
  {
    [(GAXInterestAreaViewController *)self _removeInterestAreaPathAtIndices:v7 notifyDelegate:1];
  }

  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_141F0;
  v96 = sub_14200;
  v97 = 0;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_166EC;
  v91[3] = &unk_5D580;
  v91[4] = v110;
  v91[5] = &v92;
  [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:v91, v54];
  v56 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:v6];
  if (v56)
  {
    v8 = [NSMutableArray alloc];
    allObjects = [v56 allObjects];
    v62 = [v8 initWithArray:allObjects];

    if (!addedCopy)
    {
      v10 = v62;
      if (!v62)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (!addedCopy)
    {
LABEL_42:
      [(GAXInterestAreaViewController *)self _addInterestAreaPath:v6 withParent:0 notifyDelegate:1];
LABEL_91:
      v27 = 0;
      goto LABEL_94;
    }

    v62 = 0;
  }

  if (v55)
  {
    [(GAXInterestAreaViewController *)self _interestAreaPath:v6 ensureExistenceOfKnownParent:v55 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:v56 orphanedInterestAreaPaths:v93[5]];
  }

  oldInterestAreaPathsIntersectingWithMovingPath = [(GAXInterestAreaViewController *)self oldInterestAreaPathsIntersectingWithMovingPath];
  if ([oldInterestAreaPathsIntersectingWithMovingPath count])
  {
    v11 = [[NSMutableSet alloc] initWithSet:oldInterestAreaPathsIntersectingWithMovingPath];
    v12 = objc_opt_new();
    v64 = objc_opt_new();
    while ([v11 count])
    {
      anyObject = [v11 anyObject];
      if (!anyObject)
      {
        _AXAssert();
      }

      [v12 addObject:anyObject];
      v14 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:anyObject];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v87 objects:v117 count:16];
      if (v16)
      {
        v17 = *v88;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v88 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v87 + 1) + 8 * i);
            if (([v12 containsObject:v19] & 1) == 0)
            {
              [v11 addObject:v19];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v87 objects:v117 count:16];
        }

        while (v16);
      }

      [v64 addObject:anyObject];
      [v11 removeObject:anyObject];
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v20 = v64;
    v21 = [v20 countByEnumeratingWithState:&v83 objects:v116 count:16];
    if (v21)
    {
      v22 = *v84;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v84 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v83 + 1) + 8 * j);
          v25 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v24];
          if (v25)
          {
            [(GAXInterestAreaViewController *)self _interestAreaPath:v24 ensureExistenceOfKnownParent:v25 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:0 orphanedInterestAreaPaths:v93[5]];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v83 objects:v116 count:16];
      }

      while (v21);
    }

    v10 = v62;
    if (!v62)
    {
      if (!addedCopy)
      {
        goto LABEL_42;
      }

LABEL_90:
      [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:v6 notifyDelegate:1];
      [v93[5] removeObject:v6];
      goto LABEL_91;
    }
  }

  else
  {

    v10 = v62;
    if (!v62)
    {
      goto LABEL_90;
    }
  }

LABEL_44:
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_167A0;
  v82[3] = &unk_5D530;
  v82[4] = self;
  v26 = v10;
  [v10 sortUsingComparator:v82];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v27 = v26;
  v28 = 0;
  v29 = [v27 countByEnumeratingWithState:&v78 objects:v115 count:16];
  if (!v29)
  {
    goto LABEL_87;
  }

  v30 = *v79;
  v63 = *v79;
  v60 = v27;
  do
  {
    v31 = 0;
    v65 = v29;
    do
    {
      if (*v79 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v78 + 1) + 8 * v31);
      if (v28)
      {
        if (v32 == v28)
        {
          goto LABEL_85;
        }

        v33 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:*(*(&v78 + 1) + 8 * v31)];
        v34 = v33;
        if (v33)
        {
          v35 = v33 == v28;
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          v37 = [(GAXInterestAreaViewController *)self _childrenOfParentInterestAreaPath:v33];
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v38 = v37;
          v39 = [v38 countByEnumeratingWithState:&v70 objects:v113 count:16];
          v40 = v39;
          if (v39)
          {
            v41 = *v71;
            do
            {
              v42 = 0;
              do
              {
                if (*v71 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v70 + 1) + 8 * v42);
                [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v28 adoptOtherInterestAreaPath:v43 notifyDelegate:1];
                [v93[5] removeObject:v43];
                v42 = v42 + 1;
              }

              while (v40 != v42);
              v40 = [v38 countByEnumeratingWithState:&v70 objects:v113 count:16];
            }

            while (v40);
          }

          v27 = v60;
          v30 = v63;
          v29 = v65;
          [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v28 adoptOtherInterestAreaPath:v34 notifyDelegate:1];
          [v93[5] removeObject:v34];
          goto LABEL_83;
        }

        [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v28 adoptOtherInterestAreaPath:v32 notifyDelegate:1];
        [v93[5] removeObject:v32];
LABEL_84:

        goto LABEL_85;
      }

      v28 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:*(*(&v78 + 1) + 8 * v31)];
      if (!v28)
      {
        v28 = v32;
      }

      [v28 topLeftPointOnPath];
      if ([v6 containsPoint:?])
      {
        v36 = [(GAXInterestAreaViewController *)self _childrenOfParentInterestAreaPath:v28];
        if (addedCopy)
        {
          [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:v6 notifyDelegate:1];
        }

        else
        {
          [(GAXInterestAreaViewController *)self _addInterestAreaPath:v6 withParent:0 notifyDelegate:1];
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v34 = v36;
        v44 = [v34 countByEnumeratingWithState:&v74 objects:v114 count:16];
        if (v44)
        {
          v45 = *v75;
          do
          {
            for (k = 0; k != v44; k = k + 1)
            {
              if (*v75 != v45)
              {
                objc_enumerationMutation(v34);
              }

              v47 = *(*(&v74 + 1) + 8 * k);
              [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v6 adoptOtherInterestAreaPath:v47 notifyDelegate:1];
              [v93[5] removeObject:v47];
            }

            v44 = [v34 countByEnumeratingWithState:&v74 objects:v114 count:16];
          }

          while (v44);
        }

        v30 = v63;
        v29 = v65;
        if (v28 != v6)
        {
          [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v6 adoptOtherInterestAreaPath:v28 notifyDelegate:1];
        }

        [v93[5] removeObject:v28];
        v38 = v28;
        v28 = v6;
LABEL_83:

        goto LABEL_84;
      }

      if ([v93[5] containsObject:v28])
      {
        [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:v28 notifyDelegate:1];
        [v93[5] removeObject:v28];
      }

LABEL_85:
      v31 = v31 + 1;
    }

    while (v31 != v29);
    v29 = [v27 countByEnumeratingWithState:&v78 objects:v115 count:16];
  }

  while (v29);
LABEL_87:

  if (v28 != v6)
  {
    if (addedCopy)
    {
      [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v28 adoptOtherInterestAreaPath:v6 notifyDelegate:1];
    }

    else
    {
      [(GAXInterestAreaViewController *)self _addInterestAreaPath:v6 withParent:v28 notifyDelegate:1];
    }
  }

LABEL_94:
  v48 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v6];
  if (!v48)
  {
    v48 = v6;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v49 = v93[5];
  v50 = [v49 countByEnumeratingWithState:&v66 objects:v112 count:16];
  if (v50)
  {
    v51 = *v67;
    do
    {
      for (m = 0; m != v50; m = m + 1)
      {
        if (*v67 != v51)
        {
          objc_enumerationMutation(v49);
        }

        if (*(*(&v66 + 1) + 8 * m) == v6)
        {
          v53 = 0;
        }

        else
        {
          v53 = v48;
        }

        [GAXInterestAreaViewController _makeInterestAreaPath:"_makeInterestAreaPath:adoptOtherInterestAreaPath:notifyDelegate:" adoptOtherInterestAreaPath:v53 notifyDelegate:?];
      }

      v50 = [v49 countByEnumeratingWithState:&v66 objects:v112 count:16];
    }

    while (v50);
  }

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v104, 8);

  _Block_object_dispose(v110, 8);
LABEL_107:
  objc_autoreleasePoolPop(context);
}

- (void)_computeFinalPathForFingerPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate getInterestAreaPathForFingerPath:pathCopy interestAreaViewController:self completion:completionCopy];
  }

  else
  {
    v10 = completionCopy;
    v9 = pathCopy;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)_interestAreaPathsDidChange
{
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate interestAreaPathsDidChangeForInterestAreaViewController:self];
  }
}

- (CGRect)_boundsForConstrainingFingerPath
{
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate boundsForConstrainingFingerPathInInterestAreaViewController:self];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_enumerateInterestAreaPathsUsingBlock:(id)block
{
  blockCopy = block;
  orderedInterestAreaPaths = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16A60;
  v7[3] = &unk_5D5D0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [orderedInterestAreaPaths enumerateObjectsUsingBlock:v7];
}

- (unint64_t)_numberOfInterestAreaPaths
{
  orderedInterestAreaPaths = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v3 = [orderedInterestAreaPaths count];

  return v3;
}

- (id)_interestAreaPathAtIndex:(unint64_t)index parent:(id *)parent
{
  orderedInterestAreaPaths = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v8 = [orderedInterestAreaPaths objectAtIndex:index];

  if (parent)
  {
    *parent = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v8];
  }

  return v8;
}

- (id)_parentOfInterestAreaPath:(id)path
{
  pathCopy = path;
  interestAreaPathMapping = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v6 = [interestAreaPathMapping parentOfPath:pathCopy];

  return v6;
}

- (id)_childrenOfParentInterestAreaPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_141F0;
  v19 = sub_14200;
  v20 = 0;
  interestAreaPathMapping = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_16D78;
  v12 = &unk_5D5F8;
  v6 = pathCopy;
  v13 = v6;
  v14 = &v15;
  [interestAreaPathMapping enumeratePathsAndParentsUsingBlock:&v9];

  if (v16[5])
  {
    v7 = [NSSet setWithSet:v9, v10, v11, v12];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (id)_interestAreaPathsIntersectingPath:(id)path
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_141F0;
  v17 = sub_14200;
  v18 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_16F68;
  v10 = &unk_5D4E0;
  pathCopy = path;
  v11 = pathCopy;
  v12 = &v13;
  [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:&v7];
  if (v14[5])
  {
    v5 = [NSSet setWithSet:v7, v8, v9, v10];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v5;
}

- (void)_beginInterestAreaPathsUpdate
{
  v3 = [(GAXInterestAreaViewController *)self interestAreaPathsUpdateCount]+ 1;

  [(GAXInterestAreaViewController *)self setInterestAreaPathsUpdateCount:v3];
}

- (void)_endInterestAreaPathsUpdateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  interestAreaPathsUpdateCount = [(GAXInterestAreaViewController *)self interestAreaPathsUpdateCount];
  if (interestAreaPathsUpdateCount)
  {
    v6 = interestAreaPathsUpdateCount - 1;
    [(GAXInterestAreaViewController *)self setInterestAreaPathsUpdateCount:interestAreaPathsUpdateCount - 1];
    if (!v6)
    {
      [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:animatedCopy];
      if ([(GAXInterestAreaViewController *)self shouldNotifyDelegateOfInterestAreaPathsChange])
      {
        [(GAXInterestAreaViewController *)self _interestAreaPathsDidChange];
        [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:0];
      }
    }
  }

  [(GAXInterestAreaViewController *)self _archiveInterestAreaPathsForStorage];
}

- (void)_addInterestAreaPath:(id)path withParent:(id)parent notifyInterestAreaView:(BOOL)view notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  viewCopy = view;
  pathCopy = path;
  parentCopy = parent;
  interestAreaPathMapping = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v12 = [interestAreaPathMapping containsPath:pathCopy];

  if (v12)
  {
    goto LABEL_9;
  }

  if (!viewCopy)
  {
    interestAreaPathMapping2 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
    [interestAreaPathMapping2 addPath:pathCopy withParentPath:parentCopy];

    orderedInterestAreaPaths = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
    [orderedInterestAreaPaths addObject:pathCopy];

    if (!delegateCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
  interestAreaPathMapping3 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  [interestAreaPathMapping3 addPath:pathCopy withParentPath:parentCopy];

  orderedInterestAreaPaths2 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  [orderedInterestAreaPaths2 addObject:pathCopy];

  interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
  orderedInterestAreaPaths3 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  [interestAreaView insertInterestAreaPathAtIndex:{objc_msgSend(orderedInterestAreaPaths3, "count") - 1}];

  [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:0];
  if (delegateCopy)
  {
LABEL_6:
    [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:1];
  }

LABEL_7:
  if (viewCopy)
  {
    [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdate];
  }

LABEL_9:
}

- (void)_makeInterestAreaPath:(id)path adoptOtherInterestAreaPath:(id)areaPath notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  pathCopy = path;
  areaPathCopy = areaPath;
  interestAreaPathMapping = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  if ([interestAreaPathMapping containsPath:areaPathCopy])
  {
    [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
    [interestAreaPathMapping replaceParentOfPath:areaPathCopy withPath:pathCopy];
    if (delegateCopy)
    {
      [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:1];
    }

    [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdate];
  }
}

- (void)_removeInterestAreaPathAtIndices:(id)indices notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  indicesCopy = indices;
  interestAreaPathMapping = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  orderedInterestAreaPaths = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = [orderedInterestAreaPaths count];
  [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_17488;
  v12[3] = &unk_5D620;
  v15 = v16;
  v9 = orderedInterestAreaPaths;
  v13 = v9;
  v10 = interestAreaPathMapping;
  v14 = v10;
  [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v12];
  interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
  [interestAreaView deleteInterestAreaPathsAtIndices:indicesCopy];

  if (delegateCopy)
  {
    [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:1];
  }

  [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdate];

  _Block_object_dispose(v16, 8);
}

- (int)_backgroundStyleForEditing:(BOOL)editing
{
  result = [(GAXInterestAreaViewController *)self allowsDimmingInterestAreaPaths];
  if (result)
  {
    if (editing)
    {
      return 2;
    }

    else
    {
      return [(GAXInterestAreaViewController *)self numberOfInterestAreaPathsForInterestAreaView:0]!= 0;
    }
  }

  return result;
}

- (int)_backgroundStyleForCurrentState
{
  isEditing = [(GAXInterestAreaViewController *)self isEditing];

  return [(GAXInterestAreaViewController *)self _backgroundStyleForEditing:isEditing];
}

- (void)_updateBackgroundVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(GAXInterestAreaViewController *)self isViewLoaded])
  {
    interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
    [interestAreaView setBackgroundStyle:-[GAXInterestAreaViewController _backgroundStyleForCurrentState](self animated:{"_backgroundStyleForCurrentState"), animatedCopy}];
  }
}

- (id)_referenceViewForConvertingFromAndToWindowCoordinateSystem
{
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate referenceViewForConvertingFromAndToWindowCoordinateSystemForInterestAreaViewController:self], (window = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      view = [(GAXInterestAreaViewController *)self view];
      window = [view window];

      if (window)
      {
        window = view;
      }
    }

    else
    {
      window = 0;
    }
  }

  return window;
}

- (id)_orientationAgnosticPathsFromOrientationAwarePaths:(id)paths shouldConsolidateOrientationsOnSameAxis:(BOOL)axis
{
  pathsCopy = paths;
  if (-[GAXInterestAreaViewController isViewLoaded](self, "isViewLoaded") && (-[GAXInterestAreaViewController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    _referenceViewForConvertingFromAndToWindowCoordinateSystem = [(GAXInterestAreaViewController *)self _referenceViewForConvertingFromAndToWindowCoordinateSystem];
    window = [_referenceViewForConvertingFromAndToWindowCoordinateSystem window];
    v11 = +[UIScreen mainScreen];
    coordinateSpace = [v11 coordinateSpace];
    v13 = +[UIScreen mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = +[UIScreen mainScreen];
    fixedCoordinateSpace = [v22 fixedCoordinateSpace];
    [coordinateSpace convertRect:fixedCoordinateSpace toCoordinateSpace:{v15, v17, v19, v21}];
    v25 = v24;
    v27 = v26;

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_178E4;
    v32[3] = &unk_5D648;
    v33 = _referenceViewForConvertingFromAndToWindowCoordinateSystem;
    v34 = window;
    axisCopy = axis;
    interfaceOrientation = [(GAXInterestAreaViewController *)self interfaceOrientation];
    v36 = v25;
    v37 = v27;
    v28 = window;
    v29 = _referenceViewForConvertingFromAndToWindowCoordinateSystem;
    v30 = [pathsCopy pathMappingByTransformingPointsInPathsUsingBlock:v32];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)_archiveInterestAreaPathsForStorage
{
  delegate = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate archiveInterestAreaPathsForStorageInterestAreaViewController:self];
  }
}

- (void)_applyInterestAreaPathsForStorageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (-[GAXInterestAreaViewController isViewLoaded](self, "isViewLoaded") && (-[GAXInterestAreaViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    cachedInterestAreaPathsForStorage = [(GAXInterestAreaViewController *)self cachedInterestAreaPathsForStorage];
    if (cachedInterestAreaPathsForStorage)
    {
      _referenceViewForConvertingFromAndToWindowCoordinateSystem = [(GAXInterestAreaViewController *)self _referenceViewForConvertingFromAndToWindowCoordinateSystem];
      window = [_referenceViewForConvertingFromAndToWindowCoordinateSystem window];
      v10 = +[UIScreen mainScreen];
      coordinateSpace = [v10 coordinateSpace];
      v12 = +[UIScreen mainScreen];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = +[UIScreen mainScreen];
      fixedCoordinateSpace = [v21 fixedCoordinateSpace];
      [coordinateSpace convertRect:fixedCoordinateSpace toCoordinateSpace:{v14, v16, v18, v20}];
      v24 = v23;
      v26 = v25;

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_17C00;
      v31[3] = &unk_5D670;
      v33 = _referenceViewForConvertingFromAndToWindowCoordinateSystem;
      interfaceOrientation = [(GAXInterestAreaViewController *)self interfaceOrientation];
      v35 = v24;
      v36 = v26;
      v32 = window;
      v27 = _referenceViewForConvertingFromAndToWindowCoordinateSystem;
      v28 = window;
      v29 = [cachedInterestAreaPathsForStorage pathMappingByTransformingPointsInPathsUsingBlock:v31];
      [(GAXInterestAreaViewController *)self setInterestAreaPaths:v29 animated:animatedCopy];
      [(GAXInterestAreaViewController *)self setCachedInterestAreaPathsForStorage:0];
    }
  }

  else
  {
    cachedInterestAreaPathsForStorage2 = [(GAXInterestAreaViewController *)self cachedInterestAreaPathsForStorage];

    if (!cachedInterestAreaPathsForStorage2)
    {
      return;
    }

    cachedInterestAreaPathsForStorage = GAXLogBlockedTouches();
    if (os_log_type_enabled(cachedInterestAreaPathsForStorage, OS_LOG_TYPE_DEBUG))
    {
      sub_33B18(cachedInterestAreaPathsForStorage);
    }
  }
}

- (CGPoint)_locationForTouch:(id)touch
{
  touchCopy = touch;
  interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
  [touchCopy locationInView:interestAreaView];
  v7 = v6;
  v9 = v8;

  [(GAXInterestAreaViewController *)self _boundsForConstrainingFingerPath];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectIsNull(v18) || (v19.origin.x = x, v19.origin.y = y, v19.size.width = width, v19.size.height = height, CGRectIsEmpty(v19)))
  {
    ProjectionToFrame = v7;
    v15 = v9;
  }

  else
  {

    ProjectionToFrame = GAX_CGPointGetProjectionToFrame(v7, v9, x, y, width, height);
  }

  result.y = v15;
  result.x = ProjectionToFrame;
  return result;
}

- (BOOL)_interestAreaPath:(id)path shouldShowResizingKnobAtPosition:(unint64_t)position
{
  pathCopy = path;
  v7 = pathCopy;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (position > 3)
  {
    if (position == 4)
    {
      [pathCopy bottomRightPointOnPath];
      goto LABEL_10;
    }

    if (position == 8)
    {
      [pathCopy bottomLeftPointOnPath];
      goto LABEL_10;
    }
  }

  else
  {
    if (position == 1)
    {
      [pathCopy topLeftPointOnPath];
      goto LABEL_10;
    }

    if (position == 2)
    {
      [pathCopy topRightPointOnPath];
LABEL_10:
      x = v10;
      y = v11;
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_17ED8;
  v15[3] = &unk_5D698;
  v12 = v7;
  v18 = x;
  v19 = y;
  v16 = v12;
  v17 = &v20;
  [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:v15];
  v13 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v13;
}

- (void)_didRecordTouchEventAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
  if (![(GAXInterestAreaViewController *)self outOfBoundsDrawingEnabled])
  {
    [interestAreaView bounds];
    v12.x = x;
    v12.y = y;
    if (!CGRectContainsPoint(v13, v12))
    {
      delegate = [(GAXInterestAreaViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = *&UIEdgeInsetsZero.bottom;
        v10 = *&UIEdgeInsetsZero.top;
        v11 = v8;
        v9 = [delegate viewToCoverWithOutOfBoundsDrawingForInterestAreaViewWithController:self edgeInsets:&v10];
        if (v9)
        {
          [interestAreaView adjustOutOfBoundsDrawingToCoverView:v9 edgeInsets:{v10, v11}];
          [(GAXInterestAreaViewController *)self setOutOfBoundsDrawingEnabled:1];
        }
      }
    }
  }
}

- (void)_didFinishRecordingCurrentSequenceOfTouchEvents
{
  if ([(GAXInterestAreaViewController *)self outOfBoundsDrawingEnabled])
  {
    interestAreaView = [(GAXInterestAreaViewController *)self interestAreaView];
    [interestAreaView adjustOutOfBoundsDrawingToCoverView:0 edgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    [(GAXInterestAreaViewController *)self setOutOfBoundsDrawingEnabled:0];
  }

  [(GAXInterestAreaViewController *)self setCurrentTouch:0];
}

- (id)interestAreaView:(id)view interestAreaPathAtIndex:(unint64_t)index
{
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]<= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
  }

  return v6;
}

- (unint64_t)numberOfDynamicInterestAreaPathsForInterestAreaView:(id)view
{
  viewCopy = view;
  fingerPath = [(GAXInterestAreaViewController *)self fingerPath];
  if (fingerPath)
  {

LABEL_4:
    pathInterpolator = &dword_0 + 1;
    goto LABEL_5;
  }

  pathInterpolator = [(GAXInterestAreaViewController *)self pathInterpolator];

  if (pathInterpolator)
  {
    goto LABEL_4;
  }

LABEL_5:

  return pathInterpolator;
}

- (id)interestAreaView:(id)view dynamicInterestAreaPathAtIndex:(unint64_t)index
{
  v5 = [(GAXInterestAreaViewController *)self pathInterpolator:view];
  if (v5)
  {
    currentInterpolatedPath = [(GAXInterestAreaViewController *)self currentInterpolatedPath];
    if (!currentInterpolatedPath)
    {
      [(GAXInterestAreaViewController *)self snapAnimationProgress];
      currentInterpolatedPath = [v5 interpolatedPathForProgress:?];
      [(GAXInterestAreaViewController *)self setCurrentInterpolatedPath:currentInterpolatedPath];
    }
  }

  else
  {
    currentInterpolatedPath = [(GAXInterestAreaViewController *)self fingerPath];
  }

  return currentInterpolatedPath;
}

- (BOOL)interestAreaView:(id)view shouldAddCloseButtonForInterestAreaPathAtIndex:(unint64_t)index
{
  _numberOfInterestAreaPaths = [(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths];
  if (index + 1 < _numberOfInterestAreaPaths || (v7 = _numberOfInterestAreaPaths, [(GAXInterestAreaViewController *)self pathInterpolator], v8 = objc_claimAutoreleasedReturnValue(), v8, result = 0, v7 > index) && !v8)
  {
    v11 = 0;
    v10 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:&v11];
    return v11 == 0;
  }

  return result;
}

- (void)interestAreaView:(id)view didActivateCloseButtonForInterestAreaPathAtIndex:(unint64_t)index
{
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> index)
  {
    v6 = objc_opt_new();
    [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_183C0;
    v13 = v12 = &unk_5D6C0;
    v14 = v6;
    v7 = v6;
    v8 = v13;
    [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:&v9];
    [v7 addIndex:{index, v9, v10, v11, v12}];
    [(GAXInterestAreaViewController *)self _removeInterestAreaPathAtIndices:v7 notifyDelegate:1];
  }
}

- (unint64_t)interestAreaView:(id)view visibleKnobPositionsForInterestAreaPathAtIndex:(unint64_t)index
{
  viewCopy = view;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]<= index || [(GAXInterestAreaViewController *)self interestAreaView:viewCopy shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:index])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
    v9 = 0;
    v7 = 0;
    do
    {
      v10 = qword_41F88[v9];
      if ([(GAXInterestAreaViewController *)self _interestAreaPath:v8 shouldShowResizingKnobAtPosition:v10])
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v7 |= v11;
      ++v9;
    }

    while (v9 != 4);
  }

  return v7;
}

- (void)interestAreaView:(id)view resizingKnobAtPosition:(unint64_t)position wasMovedToPoint:(CGPoint)point forInterestAreaPathAtIndex:(unint64_t)index constrainedResizingKnobCenter:(CGPoint *)center
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> index)
  {
    v92 = x;
    rect = y;
    v14 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
    v15 = v14;
    v16 = CGPointZero.x;
    v17 = CGPointZero.y;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
    if (position > 3)
    {
      if (position == 4)
      {
        [v14 bottomRightPointOnPath];
        v21 = v34;
        v20 = v35;
        [v15 topLeftPoint];
        v16 = v36;
        v17 = v37;
        vertical = 1.0;
        horizontal = 1.0;
      }

      else
      {
        v20 = CGPointZero.y;
        v21 = CGPointZero.x;
        if (position == 8)
        {
          [v14 bottomLeftPointOnPath];
          v21 = v26;
          v20 = v27;
          [v15 topRightPoint];
          v16 = v28;
          v17 = v29;
          horizontal = -1.0;
          vertical = 1.0;
        }
      }
    }

    else if (position == 1)
    {
      [v14 topLeftPointOnPath];
      v21 = v30;
      v20 = v31;
      [v15 bottomRightPoint];
      v16 = v32;
      v17 = v33;
      vertical = -1.0;
      horizontal = -1.0;
    }

    else
    {
      v20 = CGPointZero.y;
      v21 = CGPointZero.x;
      if (position == 2)
      {
        [v14 topRightPointOnPath];
        v21 = v22;
        v20 = v23;
        [v15 bottomLeftPoint];
        v16 = v24;
        v17 = v25;
        horizontal = 1.0;
        vertical = -1.0;
      }
    }

    v90 = v17;
    v91 = v16;
    styleProvider = [(GAXInterestAreaViewController *)self styleProvider];
    [styleProvider minimumSizeForInterestAreaPath];
    v40 = v39;
    v42 = v41;

    v87 = v21 - v16;
    v43 = vabdd_f64(v92, v16);
    v44 = vabdd_f64(rect, v17);
    if ((v92 - v16) * (v21 - v16) < 0.0 || v43 < v40)
    {
      v46 = v16 + horizontal * v40;
    }

    else
    {
      v46 = v92;
    }

    v93 = v20 - v17;
    if ((rect - v17) * (v20 - v17) < 0.0 || v44 < v42)
    {
      v48 = v17 + vertical * v42;
    }

    else
    {
      v48 = rect;
    }

    [viewCopy contentsBounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v46;
    v58 = v50;
    ProjectionToFrame = GAX_CGPointGetProjectionToFrame(v57, v48, v50, v51, v53, v55);
    v61 = v60;
    [v15 bounds];
    v81 = v63;
    v82 = v62;
    recta = v64;
    v80 = v65;
    v99.origin.x = v58;
    v99.origin.y = v52;
    v99.size.width = v54;
    v99.size.height = v56;
    v86 = CGRectGetMinX(v99) - v91;
    v100.origin.x = v58;
    v100.origin.y = v52;
    v100.size.width = v54;
    v100.size.height = v56;
    v85 = CGRectGetMinY(v100) - v90;
    v101.origin.x = v58;
    v101.origin.y = v52;
    v101.size.width = v54;
    v101.size.height = v56;
    v84 = CGRectGetMaxX(v101) - v91;
    v102.origin.x = v58;
    v102.origin.y = v52;
    v102.size.width = v54;
    v102.size.height = v56;
    v83 = CGRectGetMaxY(v102) - v90;
    v103.origin.x = v82;
    v103.origin.y = v81;
    v103.size.width = recta;
    v103.size.height = v80;
    v79 = CGRectGetMinX(v103) - v91;
    v104.origin.x = v82;
    v104.origin.y = v81;
    v104.size.width = recta;
    v104.size.height = v80;
    v78 = CGRectGetMinY(v104) - v90;
    v105.origin.x = v82;
    v105.origin.y = v81;
    v105.size.width = recta;
    v105.size.height = v80;
    v66 = CGRectGetMaxX(v105) - v91;
    v106.origin.x = v82;
    v106.origin.y = v81;
    v106.size.width = recta;
    v106.size.height = v80;
    MaxY = CGRectGetMaxY(v106);
    *v97 = v86;
    *&v97[1] = v85;
    *&v97[2] = v79;
    *&v97[3] = v78;
    *v98 = v84;
    *&v98[1] = v83;
    *&v98[2] = v66;
    *&v98[3] = MaxY - v90;
    v68 = v97;
    v69 = 1;
    do
    {
      v70 = v69;
      v71 = v68[2];
      if (v71 != 0.0)
      {
        v72 = horizontal * (v91 + *v68 / v71 * v87);
        if (v72 >= horizontal * ProjectionToFrame)
        {
          v72 = horizontal * ProjectionToFrame;
        }

        ProjectionToFrame = horizontal * v72;
      }

      v73 = v68[3];
      if (v73 != 0.0)
      {
        v74 = vertical * (v90 + v68[1] / v73 * v93);
        if (v74 >= vertical * v61)
        {
          v74 = vertical * v61;
        }

        v61 = vertical * v74;
      }

      v69 = 0;
      v68 = v98;
    }

    while ((v70 & 1) != 0);
    if (center)
    {
      center->x = ProjectionToFrame;
      center->y = v61;
    }

    v75 = (ProjectionToFrame - v91) / v87;
    v76 = (v61 - v90) / v93;
    v77 = *&CGAffineTransformIdentity.c;
    *&v96.a = *&CGAffineTransformIdentity.a;
    *&v96.c = v77;
    *&v96.tx = *&CGAffineTransformIdentity.tx;
    *&v95.a = *&v96.a;
    *&v95.c = v77;
    *&v95.tx = *&v96.tx;
    CGAffineTransformTranslate(&v96, &v95, v91 * (1.0 - v75), v90 * (1.0 - v76));
    v94 = v96;
    CGAffineTransformScale(&v95, &v94, v75, v76);
    v96 = v95;
    [v15 applyTransform:&v95];
    [viewCopy reloadFrameOfInterestAreaPathAtIndex:index];
    [viewCopy reloadAccessoryControlsForInterestAreaPathAtIndex:index];
  }
}

- (void)interestAreaView:(id)view willBeginMovingInterestAreaPathAtIndex:(unint64_t)index
{
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> index)
  {
    v6 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
    v7 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:v6];

    [(GAXInterestAreaViewController *)self setOldInterestAreaPathsIntersectingWithMovingPath:v7];
  }
}

- (void)interestAreaView:(id)view interestAreaPathAtIndex:(unint64_t)index wasMovedWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  viewCopy = view;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> index)
  {
    v10 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
    [v10 bounds];
    v12 = v11;
    v44 = v14;
    v45 = v13;
    v16 = v15;
    v42 = v15;
    [viewCopy contentsBounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v49 = v21;
    v24 = v23;
    [(GAXInterestAreaViewController *)self lastTranslationAppliedToPathBeingDragged];
    v47 = x;
    v50 = y - v26;
    v51 = x - v25;
    v53.origin.x = v18;
    v53.origin.y = v20;
    v43 = v20;
    v53.size.width = v22;
    v53.size.height = v24;
    v48 = y;
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v12;
    v54.origin.y = v45;
    v54.size.width = v44;
    v54.size.height = v16;
    v28 = MaxX - CGRectGetMaxX(v54);
    if (v51 >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v51;
    }

    v55.origin.x = v18;
    v55.origin.y = v20;
    v55.size.width = v49;
    v55.size.height = v24;
    MinX = CGRectGetMinX(v55);
    v56.origin.x = v12;
    v56.origin.y = v45;
    v56.size.width = v44;
    v56.size.height = v42;
    v31 = MinX - CGRectGetMinX(v56);
    if (v29 >= v31)
    {
      v31 = v29;
    }

    v46 = v31;
    v57.origin.x = v18;
    v57.origin.y = v43;
    v57.size.width = v49;
    v57.size.height = v24;
    MaxY = CGRectGetMaxY(v57);
    v58.origin.x = v12;
    v58.origin.y = v45;
    v58.size.width = v44;
    v58.size.height = v42;
    v33 = MaxY - CGRectGetMaxY(v58);
    v34 = v49;
    if (v50 >= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v50;
    }

    v36 = v18;
    v37 = v43;
    v38 = v24;
    MinY = CGRectGetMinY(*(&v34 - 2));
    v59.origin.x = v12;
    v59.origin.y = v45;
    v59.size.width = v44;
    v59.size.height = v42;
    v40 = MinY - CGRectGetMinY(v59);
    if (v35 >= v40)
    {
      v41 = v35;
    }

    else
    {
      v41 = v40;
    }

    [(GAXInterestAreaViewController *)self setLastTranslationAppliedToPathBeingDragged:v47 + v46 - v51, v48 + v41 - v50, *&v12];
    CGAffineTransformMakeTranslation(&v52, v46, v41);
    [v10 applyTransform:&v52];
    [viewCopy reloadFrameOfInterestAreaPathAtIndex:index];
    [viewCopy reloadAccessoryControlsForInterestAreaPathAtIndex:index];
  }
}

- (void)interestAreaView:(id)view didFinishMovingInterestAreaPathAtIndex:(unint64_t)index
{
  viewCopy = view;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> index)
  {
    v6 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:index parent:0];
    [(GAXInterestAreaViewController *)self _updateInterestAreaPathsWithPath:v6 updatedInterestAreaPathAlreadyAdded:1];

    [(GAXInterestAreaViewController *)self setOldInterestAreaPathsIntersectingWithMovingPath:0];
    [(GAXInterestAreaViewController *)self setLastTranslationAppliedToPathBeingDragged:CGPointZero.x, CGPointZero.y];
    [viewCopy reloadAllAccessoryControls];
  }
}

- (double)scaleForSpecialControlsInInterestAreaView:(id)view
{
  delegate = [(GAXInterestAreaViewController *)self delegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate scaleForSpecialControlsInInterestAreaViewController:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)interestAreaView:(id)view shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)index
{
  viewCopy = view;
  if ([(GAXInterestAreaViewController *)self isEditing])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(GAXInterestAreaViewController *)self numberOfInterestAreaPathsForInterestAreaView:viewCopy];
    if (index)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 1;
    }

    v7 = v9;
  }

  return v7;
}

- (GAXInterestAreaViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastTranslationAppliedToPathBeingDragged
{
  x = self->_lastTranslationAppliedToPathBeingDragged.x;
  y = self->_lastTranslationAppliedToPathBeingDragged.y;
  result.y = y;
  result.x = x;
  return result;
}

@end