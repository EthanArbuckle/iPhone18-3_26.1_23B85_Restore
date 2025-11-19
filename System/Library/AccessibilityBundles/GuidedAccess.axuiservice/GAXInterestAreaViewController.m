@interface GAXInterestAreaViewController
- (BOOL)_interestAreaPath:(id)a3 shouldShowResizingKnobAtPosition:(unint64_t)a4;
- (BOOL)interestAreaView:(id)a3 shouldAddCloseButtonForInterestAreaPathAtIndex:(unint64_t)a4;
- (BOOL)interestAreaView:(id)a3 shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)a4;
- (BOOL)shouldAllowEditingInterestAreas;
- (CGPoint)_locationForTouch:(id)a3;
- (CGPoint)lastTranslationAppliedToPathBeingDragged;
- (CGRect)_boundsForConstrainingFingerPath;
- (GAXInterestAreaViewControllerDelegate)delegate;
- (GAXPathMapping)interestAreaPathMapping;
- (GAXPathMapping)interestAreaPaths;
- (GAXPathMapping)interestAreaPathsForStorage;
- (GAXPathMapping)interestAreaPathsInScreenCoordinates;
- (NSMutableArray)orderedInterestAreaPaths;
- (double)scaleForSpecialControlsInInterestAreaView:(id)a3;
- (float)snapAnimationProgress;
- (float)snapAnimationRawProgress;
- (id)_childrenOfParentInterestAreaPath:(id)a3;
- (id)_interestAreaPathAtIndex:(unint64_t)a3 parent:(id *)a4;
- (id)_interestAreaPathsIntersectingPath:(id)a3;
- (id)_orientationAgnosticPathsFromOrientationAwarePaths:(id)a3 shouldConsolidateOrientationsOnSameAxis:(BOOL)a4;
- (id)_parentOfInterestAreaPath:(id)a3;
- (id)_referenceViewForConvertingFromAndToWindowCoordinateSystem;
- (id)interestAreaView:(id)a3 dynamicInterestAreaPathAtIndex:(unint64_t)a4;
- (id)interestAreaView:(id)a3 interestAreaPathAtIndex:(unint64_t)a4;
- (int)_backgroundStyleForCurrentState;
- (int)_backgroundStyleForEditing:(BOOL)a3;
- (int64_t)_compareInterestAreaPath:(id)a3 toPath:(id)a4;
- (unint64_t)_numberOfInterestAreaPaths;
- (unint64_t)interestAreaView:(id)a3 visibleKnobPositionsForInterestAreaPathAtIndex:(unint64_t)a4;
- (unint64_t)numberOfDynamicInterestAreaPathsForInterestAreaView:(id)a3;
- (void)_addInterestAreaPath:(id)a3 withParent:(id)a4 notifyInterestAreaView:(BOOL)a5 notifyDelegate:(BOOL)a6;
- (void)_applyInterestAreaPathsForStorageAnimated:(BOOL)a3;
- (void)_archiveInterestAreaPathsForStorage;
- (void)_beginInterestAreaPathsUpdate;
- (void)_computeFinalPathForFingerPath:(id)a3 completion:(id)a4;
- (void)_didFinishRecordingCurrentSequenceOfTouchEvents;
- (void)_didRecordTouchEventAtLocation:(CGPoint)a3;
- (void)_displayDidRefresh:(id)a3;
- (void)_endInterestAreaPathsUpdateAnimated:(BOOL)a3;
- (void)_enumerateInterestAreaPathsUsingBlock:(id)a3;
- (void)_interestAreaPath:(id)a3 ensureExistenceOfKnownParent:(id)a4 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:(id)a5 orphanedInterestAreaPaths:(id)a6;
- (void)_interestAreaPathsDidChange;
- (void)_makeInterestAreaPath:(id)a3 adoptOtherInterestAreaPath:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_removeInterestAreaPathAtIndices:(id)a3 notifyDelegate:(BOOL)a4;
- (void)_updateBackgroundVisibilityAnimated:(BOOL)a3;
- (void)_updateInterestAreaPathsWithPath:(id)a3 updatedInterestAreaPathAlreadyAdded:(BOOL)a4;
- (void)commonInit;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)interestAreaView:(id)a3 didActivateCloseButtonForInterestAreaPathAtIndex:(unint64_t)a4;
- (void)interestAreaView:(id)a3 didFinishMovingInterestAreaPathAtIndex:(unint64_t)a4;
- (void)interestAreaView:(id)a3 interestAreaPathAtIndex:(unint64_t)a4 wasMovedWithTranslation:(CGPoint)a5;
- (void)interestAreaView:(id)a3 resizingKnobAtPosition:(unint64_t)a4 wasMovedToPoint:(CGPoint)a5 forInterestAreaPathAtIndex:(unint64_t)a6 constrainedResizingKnobCenter:(CGPoint *)a7;
- (void)interestAreaView:(id)a3 willBeginMovingInterestAreaPathAtIndex:(unint64_t)a4;
- (void)loadView;
- (void)setAllowsDimmingInterestAreaPaths:(BOOL)a3 animated:(BOOL)a4;
- (void)setBackgroundShouldCoverEverything:(BOOL)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setInterestAreaPaths:(id)a3 animated:(BOOL)a4;
- (void)setInterestAreaPathsForStorage:(id)a3 animated:(BOOL)a4;
- (void)setStyleProvider:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)transitionIn;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
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
  v3 = [(GAXInterestAreaViewController *)self interestAreaPaths];
  v4 = [(GAXInterestAreaViewController *)self _orientationAgnosticPathsFromOrientationAwarePaths:v3 shouldConsolidateOrientationsOnSameAxis:1];

  return v4;
}

- (GAXPathMapping)interestAreaPathsInScreenCoordinates
{
  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorage];
  v3 = [(GAXInterestAreaViewController *)self interestAreaPaths];
  v4 = [(GAXInterestAreaViewController *)self _orientationAgnosticPathsFromOrientationAwarePaths:v3 shouldConsolidateOrientationsOnSameAxis:0];

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

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      v6 = [(GAXInterestAreaViewController *)self interestAreaView];
      [v6 setStyleProvider:v7];
    }
  }

  _objc_release_x2();
}

- (float)snapAnimationRawProgress
{
  v3 = [(GAXInterestAreaViewController *)self styleProvider];
  v4 = v3;
  if (v3)
  {
    [v3 interestAreaViewSnapAnimationDuration];
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
  v3 = [(GAXInterestAreaViewController *)self isEditing];
  if (v3)
  {
    LOBYTE(v3) = ![(GAXInterestAreaViewController *)self backgroundShouldCoverEverything];
  }

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_editing = a3;
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      v7 = [(GAXInterestAreaViewController *)self interestAreaView];
      [v7 setSpecialControlsVisible:v5 animated:v4];
      [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:v4];
    }
  }
}

- (void)setAllowsDimmingInterestAreaPaths:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_allowsDimmingInterestAreaPaths != a3)
  {
    self->_allowsDimmingInterestAreaPaths = a3;
    [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:a4];
  }
}

- (void)setInterestAreaPaths:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(GAXInterestAreaViewController *)self interestAreaView];
  v8 = [(GAXInterestAreaViewController *)self numberOfInterestAreaPathsForInterestAreaView:v7];
  [(GAXInterestAreaViewController *)self setCachedInterestAreaPathsForStorage:0];
  [(GAXInterestAreaViewController *)self setInterestAreaPathMapping:0];
  [(GAXInterestAreaViewController *)self setOrderedInterestAreaPaths:0];
  if (v4)
  {
    v9 = [NSIndexSet indexSetWithIndexesInRange:0, v8];
    [v7 deleteInterestAreaPathsAtIndices:v9];
  }

  [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14804;
  v10[3] = &unk_5D490;
  v10[4] = self;
  v11 = v4;
  [v6 enumeratePathsAndParentsUsingBlock:v10];

  if (!v4)
  {
    [v7 reloadAllInterestAreaPaths];
  }

  [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdateAnimated:v4];
}

- (void)setInterestAreaPathsForStorage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(GAXInterestAreaViewController *)self setCachedInterestAreaPathsForStorage:a3];

  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorageAnimated:v4];
}

- (void)setBackgroundShouldCoverEverything:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_backgroundShouldCoverEverything != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_backgroundShouldCoverEverything = a3;
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      v7 = [(GAXInterestAreaViewController *)self interestAreaView];
      [v7 setBackgroundShouldCoverEverything:v5 animated:v4];
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
  v3 = [(GAXInterestAreaViewController *)self styleProvider];
  [v4 setStyleProvider:v3];

  [(GAXViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaViewController;
  [(GAXInterestAreaViewController *)&v4 viewWillAppear:a3];
  [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GAXInterestAreaViewController;
  [(GAXInterestAreaViewController *)&v4 viewDidAppear:a3];
  [(GAXInterestAreaViewController *)self _applyInterestAreaPathsForStorage];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v8.receiver = self;
  v8.super_class = GAXInterestAreaViewController;
  [GAXInterestAreaViewController willRotateToInterfaceOrientation:"willRotateToInterfaceOrientation:duration:" duration:?];
  v7 = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 interestAreaViewController:self willRotateToInterfaceOrientation:a3 duration:a4];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = GAXInterestAreaViewController;
  [(GAXInterestAreaViewController *)&v6 didRotateFromInterfaceOrientation:?];
  v5 = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 interestAreaViewController:self didRotateFromInterfaceOrientation:a3];
  }
}

- (void)_displayDidRefresh:(id)a3
{
  v12 = a3;
  v5 = [(GAXInterestAreaViewController *)self pathInterpolator];
  if (v5)
  {
    [(GAXInterestAreaViewController *)self setCurrentInterpolatedPath:0];
    v6 = [(GAXInterestAreaViewController *)self interestAreaView];
    [(GAXInterestAreaViewController *)self snapAnimationProgress];
    if (v7 >= 1.0)
    {
      v8 = [(GAXInterestAreaViewController *)self pathInterpolator];
      v9 = [v8 endingPath];

      [(GAXInterestAreaViewController *)self setFingerPath:0];
      [(GAXInterestAreaViewController *)self setPathInterpolator:0];
      [(GAXInterestAreaViewController *)self setCurrentInterpolatedPath:0];
      [v12 removeTarget:self selector:a2];
      v10 = [(GAXInterestAreaViewController *)self interestAreaView];
      v11 = [NSIndexSet indexSetWithIndex:0];
      [v10 deleteDynamicInterestAreaPathAtIndices:v11];

      [(GAXInterestAreaViewController *)self _updateInterestAreaPathsWithPath:v9 updatedInterestAreaPathAlreadyAdded:0];
      [(GAXInterestAreaViewController *)self _didFinishRecordingCurrentSequenceOfTouchEvents];
      [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:1];
      [v6 reloadAllAccessoryControls];
    }

    [v6 reloadDynamicInterestAreaPathAtIndex:0];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v8 = [(GAXInterestAreaViewController *)self interestAreaView];
    v9 = [v6 anyObject];
    [(GAXInterestAreaViewController *)self setCurrentTouch:v9];
    [(GAXInterestAreaViewController *)self _locationForTouch:v9];
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
      [v8 insertDynamicInterestAreaPathAtIndex:0];
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v15 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    v8 = [(GAXInterestAreaViewController *)self fingerPath];
    v9 = [(GAXInterestAreaViewController *)self currentTouch];
    v10 = v9;
    if (v8 && v9 && [v6 containsObject:v9])
    {
      v11 = [(GAXInterestAreaViewController *)self interestAreaView];
      [(GAXInterestAreaViewController *)self _locationForTouch:v10];
      v13 = v12;
      v15 = v14;
      [v8 addLineToPoint:?];
      [(GAXInterestAreaViewController *)self _didRecordTouchEventAtLocation:v13, v15];
      [v11 reloadDynamicInterestAreaPathAtIndex:0];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v16 touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    v8 = [(GAXInterestAreaViewController *)self fingerPath];
    v9 = [(GAXInterestAreaViewController *)self currentTouch];
    v10 = v9;
    if (v8 && v9 && [v6 containsObject:v9])
    {
      v11 = [(GAXInterestAreaViewController *)self interestAreaView];
      [(GAXInterestAreaViewController *)self _locationForTouch:v10];
      v13 = v12;
      v15 = v14;
      [v8 addLineToPoint:?];
      [v8 closePath];
      v16 = [v8 equivalentPathForDirection:0];

      [(GAXInterestAreaViewController *)self setFingerPath:v16];
      [(GAXInterestAreaViewController *)self _didRecordTouchEventAtLocation:v13, v15];
      [v11 reloadDynamicInterestAreaPathAtIndex:0];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_15250;
      v19[3] = &unk_5D508;
      v19[4] = self;
      v8 = v16;
      v20 = v8;
      v21 = v11;
      v17 = v11;
      [(GAXInterestAreaViewController *)self _computeFinalPathForFingerPath:v8 completion:v19];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v18 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(GAXInterestAreaViewController *)self shouldAllowEditingInterestAreas])
  {
    [(GAXInterestAreaViewController *)self touchesEnded:v7 withEvent:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXInterestAreaViewController;
    [(GAXInterestAreaViewController *)&v8 touchesCancelled:v7 withEvent:v6];
  }
}

- (int64_t)_compareInterestAreaPath:(id)a3 toPath:(id)a4
{
  v5 = a4;
  [a3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 bounds];
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

- (void)_interestAreaPath:(id)a3 ensureExistenceOfKnownParent:(id)a4 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:(id)a5 orphanedInterestAreaPaths:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v12 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:v10];
    if (!v12)
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
        v23 = [v16 firstObject];
        if (v23 != 0 && v17)
        {
          [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:v23 notifyDelegate:1];
          [v13 removeObject:v23];
        }
      }

      else
      {
        v23 = 0;
      }

      [(GAXInterestAreaViewController *)self _makeInterestAreaPath:v23 adoptOtherInterestAreaPath:v10 notifyDelegate:1];
      [v13 removeObject:v10];
LABEL_39:

      goto LABEL_40;
    }
  }

  v25 = v13;
  v26 = v10;
  v14 = objc_opt_new();
  v15 = [[NSMutableSet alloc] initWithSet:v12];
  if (![v15 count])
  {

    v16 = 0;
    v17 = 1;
    v10 = v26;
LABEL_33:
    v13 = v25;
    goto LABEL_34;
  }

  v24 = v12;
  v16 = 0;
  v17 = 1;
  v27 = self;
  do
  {
    v18 = [v15 anyObject];
    if (!v18)
    {
      _AXAssert();
    }

    if (([v14 containsObject:v18] & 1) == 0)
    {
      v19 = v18 == v11;
      if (v18 == v11)
      {
LABEL_24:
        [v14 addObject:v18];
        goto LABEL_25;
      }

      v20 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:v18];
      v21 = [v20 allObjects];
      [v15 addObjectsFromArray:v21];
      if (v17)
      {
        if (!v16)
        {
          v16 = objc_opt_new();
        }

        v22 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v18];
        v17 = v22 != 0;
        if (!v22)
        {
          [v16 removeAllObjects];
        }

        if (!v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v22 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v18];
        if (v22)
        {
          v17 = 0;
LABEL_23:

          self = v27;
          goto LABEL_24;
        }

        if (!v16)
        {
          v16 = objc_opt_new();
        }

        v17 = 0;
        if (!v18)
        {
          goto LABEL_23;
        }
      }

      [v16 addObject:v18];
      goto LABEL_23;
    }

    v19 = 0;
LABEL_25:
    [v15 removeObject:v18];
  }

  while ([v15 count] && !v19);

  if (!v19)
  {
    v10 = v26;
    v12 = v24;
    goto LABEL_33;
  }

  [v11 topLeftPointOnPath];
  v10 = v26;
  v13 = v25;
  if ([v26 containsPoint:?])
  {
    [(GAXInterestAreaViewController *)self _makeInterestAreaPath:0 adoptOtherInterestAreaPath:v26 notifyDelegate:1];
    [(GAXInterestAreaViewController *)self _interestAreaPath:v11 ensureExistenceOfKnownParent:0 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:0 orphanedInterestAreaPaths:v25];
    v23 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v11];
    v12 = v24;
    if (v23 != v26)
    {
      [(GAXInterestAreaViewController *)self _interestAreaPath:v26 ensureExistenceOfKnownParent:v23 orFindAdoptiveParentUsingDirectIntersectingInterestAreaPaths:0 orphanedInterestAreaPaths:v25];
    }

    goto LABEL_39;
  }

  v12 = v24;
LABEL_40:
}

- (void)_updateInterestAreaPathsWithPath:(id)a3 updatedInterestAreaPathAlreadyAdded:(BOOL)a4
{
  v61 = a4;
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v58 = v5;
  if (!v5 || ([v5 isEmpty] & 1) != 0)
  {
    goto LABEL_107;
  }

  if (v61)
  {
    v54 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v5];
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
  v103 = v61;
  v6 = v5;
  v99 = v6;
  v100 = self;
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
    v9 = [v56 allObjects];
    v62 = [v8 initWithArray:v9];

    if (!v61)
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
    if (!v61)
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

  v59 = [(GAXInterestAreaViewController *)self oldInterestAreaPathsIntersectingWithMovingPath];
  if ([v59 count])
  {
    v11 = [[NSMutableSet alloc] initWithSet:v59];
    v12 = objc_opt_new();
    v64 = objc_opt_new();
    while ([v11 count])
    {
      v13 = [v11 anyObject];
      if (!v13)
      {
        _AXAssert();
      }

      [v12 addObject:v13];
      v14 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:v13];
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

      [v64 addObject:v13];
      [v11 removeObject:v13];
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
      if (!v61)
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
        if (v61)
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
    if (v61)
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

- (void)_computeFinalPathForFingerPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 getInterestAreaPathForFingerPath:v6 interestAreaViewController:self completion:v7];
  }

  else
  {
    v10 = v7;
    v9 = v6;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)_interestAreaPathsDidChange
{
  v3 = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 interestAreaPathsDidChangeForInterestAreaViewController:self];
  }
}

- (CGRect)_boundsForConstrainingFingerPath
{
  v3 = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 boundsForConstrainingFingerPathInInterestAreaViewController:self];
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

- (void)_enumerateInterestAreaPathsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16A60;
  v7[3] = &unk_5D5D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (unint64_t)_numberOfInterestAreaPaths
{
  v2 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v3 = [v2 count];

  return v3;
}

- (id)_interestAreaPathAtIndex:(unint64_t)a3 parent:(id *)a4
{
  v7 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v8 = [v7 objectAtIndex:a3];

  if (a4)
  {
    *a4 = [(GAXInterestAreaViewController *)self _parentOfInterestAreaPath:v8];
  }

  return v8;
}

- (id)_parentOfInterestAreaPath:(id)a3
{
  v4 = a3;
  v5 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v6 = [v5 parentOfPath:v4];

  return v6;
}

- (id)_childrenOfParentInterestAreaPath:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_141F0;
  v19 = sub_14200;
  v20 = 0;
  v5 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_16D78;
  v12 = &unk_5D5F8;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  [v5 enumeratePathsAndParentsUsingBlock:&v9];

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

- (id)_interestAreaPathsIntersectingPath:(id)a3
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
  v4 = a3;
  v11 = v4;
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

- (void)_endInterestAreaPathsUpdateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(GAXInterestAreaViewController *)self interestAreaPathsUpdateCount];
  if (v5)
  {
    v6 = v5 - 1;
    [(GAXInterestAreaViewController *)self setInterestAreaPathsUpdateCount:v5 - 1];
    if (!v6)
    {
      [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:v3];
      if ([(GAXInterestAreaViewController *)self shouldNotifyDelegateOfInterestAreaPathsChange])
      {
        [(GAXInterestAreaViewController *)self _interestAreaPathsDidChange];
        [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:0];
      }
    }
  }

  [(GAXInterestAreaViewController *)self _archiveInterestAreaPathsForStorage];
}

- (void)_addInterestAreaPath:(id)a3 withParent:(id)a4 notifyInterestAreaView:(BOOL)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v19 = a3;
  v10 = a4;
  v11 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v12 = [v11 containsPath:v19];

  if (v12)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v17 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
    [v17 addPath:v19 withParentPath:v10];

    v18 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
    [v18 addObject:v19];

    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
  v13 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  [v13 addPath:v19 withParentPath:v10];

  v14 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  [v14 addObject:v19];

  v15 = [(GAXInterestAreaViewController *)self interestAreaView];
  v16 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  [v15 insertInterestAreaPathAtIndex:{objc_msgSend(v16, "count") - 1}];

  [(GAXInterestAreaViewController *)self _updateBackgroundVisibilityAnimated:0];
  if (v6)
  {
LABEL_6:
    [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:1];
  }

LABEL_7:
  if (v7)
  {
    [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdate];
  }

LABEL_9:
}

- (void)_makeInterestAreaPath:(id)a3 adoptOtherInterestAreaPath:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  if ([v9 containsPath:v8])
  {
    [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
    [v9 replaceParentOfPath:v8 withPath:v10];
    if (v5)
    {
      [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:1];
    }

    [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdate];
  }
}

- (void)_removeInterestAreaPathAtIndices:(id)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(GAXInterestAreaViewController *)self interestAreaPathMapping];
  v8 = [(GAXInterestAreaViewController *)self orderedInterestAreaPaths];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = [v8 count];
  [(GAXInterestAreaViewController *)self _beginInterestAreaPathsUpdate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_17488;
  v12[3] = &unk_5D620;
  v15 = v16;
  v9 = v8;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [v6 enumerateIndexesWithOptions:2 usingBlock:v12];
  v11 = [(GAXInterestAreaViewController *)self interestAreaView];
  [v11 deleteInterestAreaPathsAtIndices:v6];

  if (v4)
  {
    [(GAXInterestAreaViewController *)self setShouldNotifyDelegateOfInterestAreaPathsChange:1];
  }

  [(GAXInterestAreaViewController *)self _endInterestAreaPathsUpdate];

  _Block_object_dispose(v16, 8);
}

- (int)_backgroundStyleForEditing:(BOOL)a3
{
  result = [(GAXInterestAreaViewController *)self allowsDimmingInterestAreaPaths];
  if (result)
  {
    if (a3)
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
  v3 = [(GAXInterestAreaViewController *)self isEditing];

  return [(GAXInterestAreaViewController *)self _backgroundStyleForEditing:v3];
}

- (void)_updateBackgroundVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(GAXInterestAreaViewController *)self isViewLoaded])
  {
    v5 = [(GAXInterestAreaViewController *)self interestAreaView];
    [v5 setBackgroundStyle:-[GAXInterestAreaViewController _backgroundStyleForCurrentState](self animated:{"_backgroundStyleForCurrentState"), v3}];
  }
}

- (id)_referenceViewForConvertingFromAndToWindowCoordinateSystem
{
  v3 = [(GAXInterestAreaViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 referenceViewForConvertingFromAndToWindowCoordinateSystemForInterestAreaViewController:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(GAXInterestAreaViewController *)self isViewLoaded])
    {
      v5 = [(GAXInterestAreaViewController *)self view];
      v4 = [v5 window];

      if (v4)
      {
        v4 = v5;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_orientationAgnosticPathsFromOrientationAwarePaths:(id)a3 shouldConsolidateOrientationsOnSameAxis:(BOOL)a4
{
  v6 = a3;
  if (-[GAXInterestAreaViewController isViewLoaded](self, "isViewLoaded") && (-[GAXInterestAreaViewController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [(GAXInterestAreaViewController *)self _referenceViewForConvertingFromAndToWindowCoordinateSystem];
    v10 = [v9 window];
    v11 = +[UIScreen mainScreen];
    v12 = [v11 coordinateSpace];
    v13 = +[UIScreen mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = +[UIScreen mainScreen];
    v23 = [v22 fixedCoordinateSpace];
    [v12 convertRect:v23 toCoordinateSpace:{v15, v17, v19, v21}];
    v25 = v24;
    v27 = v26;

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_178E4;
    v32[3] = &unk_5D648;
    v33 = v9;
    v34 = v10;
    v38 = a4;
    v35 = [(GAXInterestAreaViewController *)self interfaceOrientation];
    v36 = v25;
    v37 = v27;
    v28 = v10;
    v29 = v9;
    v30 = [v6 pathMappingByTransformingPointsInPathsUsingBlock:v32];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)_archiveInterestAreaPathsForStorage
{
  v3 = [(GAXInterestAreaViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 archiveInterestAreaPathsForStorageInterestAreaViewController:self];
  }
}

- (void)_applyInterestAreaPathsForStorageAnimated:(BOOL)a3
{
  v3 = a3;
  if (-[GAXInterestAreaViewController isViewLoaded](self, "isViewLoaded") && (-[GAXInterestAreaViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(GAXInterestAreaViewController *)self cachedInterestAreaPathsForStorage];
    if (v7)
    {
      v8 = [(GAXInterestAreaViewController *)self _referenceViewForConvertingFromAndToWindowCoordinateSystem];
      v9 = [v8 window];
      v10 = +[UIScreen mainScreen];
      v11 = [v10 coordinateSpace];
      v12 = +[UIScreen mainScreen];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = +[UIScreen mainScreen];
      v22 = [v21 fixedCoordinateSpace];
      [v11 convertRect:v22 toCoordinateSpace:{v14, v16, v18, v20}];
      v24 = v23;
      v26 = v25;

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_17C00;
      v31[3] = &unk_5D670;
      v33 = v8;
      v34 = [(GAXInterestAreaViewController *)self interfaceOrientation];
      v35 = v24;
      v36 = v26;
      v32 = v9;
      v27 = v8;
      v28 = v9;
      v29 = [v7 pathMappingByTransformingPointsInPathsUsingBlock:v31];
      [(GAXInterestAreaViewController *)self setInterestAreaPaths:v29 animated:v3];
      [(GAXInterestAreaViewController *)self setCachedInterestAreaPathsForStorage:0];
    }
  }

  else
  {
    v30 = [(GAXInterestAreaViewController *)self cachedInterestAreaPathsForStorage];

    if (!v30)
    {
      return;
    }

    v7 = GAXLogBlockedTouches();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_33B18(v7);
    }
  }
}

- (CGPoint)_locationForTouch:(id)a3
{
  v4 = a3;
  v5 = [(GAXInterestAreaViewController *)self interestAreaView];
  [v4 locationInView:v5];
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

- (BOOL)_interestAreaPath:(id)a3 shouldShowResizingKnobAtPosition:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      [v6 bottomRightPointOnPath];
      goto LABEL_10;
    }

    if (a4 == 8)
    {
      [v6 bottomLeftPointOnPath];
      goto LABEL_10;
    }
  }

  else
  {
    if (a4 == 1)
    {
      [v6 topLeftPointOnPath];
      goto LABEL_10;
    }

    if (a4 == 2)
    {
      [v6 topRightPointOnPath];
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

- (void)_didRecordTouchEventAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(GAXInterestAreaViewController *)self interestAreaView];
  if (![(GAXInterestAreaViewController *)self outOfBoundsDrawingEnabled])
  {
    [v6 bounds];
    v12.x = x;
    v12.y = y;
    if (!CGRectContainsPoint(v13, v12))
    {
      v7 = [(GAXInterestAreaViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = *&UIEdgeInsetsZero.bottom;
        v10 = *&UIEdgeInsetsZero.top;
        v11 = v8;
        v9 = [v7 viewToCoverWithOutOfBoundsDrawingForInterestAreaViewWithController:self edgeInsets:&v10];
        if (v9)
        {
          [v6 adjustOutOfBoundsDrawingToCoverView:v9 edgeInsets:{v10, v11}];
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
    v3 = [(GAXInterestAreaViewController *)self interestAreaView];
    [v3 adjustOutOfBoundsDrawingToCoverView:0 edgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    [(GAXInterestAreaViewController *)self setOutOfBoundsDrawingEnabled:0];
  }

  [(GAXInterestAreaViewController *)self setCurrentTouch:0];
}

- (id)interestAreaView:(id)a3 interestAreaPathAtIndex:(unint64_t)a4
{
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]<= a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:0];
  }

  return v6;
}

- (unint64_t)numberOfDynamicInterestAreaPathsForInterestAreaView:(id)a3
{
  v4 = a3;
  v5 = [(GAXInterestAreaViewController *)self fingerPath];
  if (v5)
  {

LABEL_4:
    v6 = &dword_0 + 1;
    goto LABEL_5;
  }

  v6 = [(GAXInterestAreaViewController *)self pathInterpolator];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:

  return v6;
}

- (id)interestAreaView:(id)a3 dynamicInterestAreaPathAtIndex:(unint64_t)a4
{
  v5 = [(GAXInterestAreaViewController *)self pathInterpolator:a3];
  if (v5)
  {
    v6 = [(GAXInterestAreaViewController *)self currentInterpolatedPath];
    if (!v6)
    {
      [(GAXInterestAreaViewController *)self snapAnimationProgress];
      v6 = [v5 interpolatedPathForProgress:?];
      [(GAXInterestAreaViewController *)self setCurrentInterpolatedPath:v6];
    }
  }

  else
  {
    v6 = [(GAXInterestAreaViewController *)self fingerPath];
  }

  return v6;
}

- (BOOL)interestAreaView:(id)a3 shouldAddCloseButtonForInterestAreaPathAtIndex:(unint64_t)a4
{
  v6 = [(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths];
  if (a4 + 1 < v6 || (v7 = v6, [(GAXInterestAreaViewController *)self pathInterpolator], v8 = objc_claimAutoreleasedReturnValue(), v8, result = 0, v7 > a4) && !v8)
  {
    v11 = 0;
    v10 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:&v11];
    return v11 == 0;
  }

  return result;
}

- (void)interestAreaView:(id)a3 didActivateCloseButtonForInterestAreaPathAtIndex:(unint64_t)a4
{
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> a4)
  {
    v6 = objc_opt_new();
    [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:0];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_183C0;
    v13 = v12 = &unk_5D6C0;
    v14 = v6;
    v7 = v6;
    v8 = v13;
    [(GAXInterestAreaViewController *)self _enumerateInterestAreaPathsUsingBlock:&v9];
    [v7 addIndex:{a4, v9, v10, v11, v12}];
    [(GAXInterestAreaViewController *)self _removeInterestAreaPathAtIndices:v7 notifyDelegate:1];
  }
}

- (unint64_t)interestAreaView:(id)a3 visibleKnobPositionsForInterestAreaPathAtIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]<= a4 || [(GAXInterestAreaViewController *)self interestAreaView:v6 shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:a4])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:0];
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

- (void)interestAreaView:(id)a3 resizingKnobAtPosition:(unint64_t)a4 wasMovedToPoint:(CGPoint)a5 forInterestAreaPathAtIndex:(unint64_t)a6 constrainedResizingKnobCenter:(CGPoint *)a7
{
  y = a5.y;
  x = a5.x;
  v13 = a3;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> a6)
  {
    v92 = x;
    rect = y;
    v14 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a6 parent:0];
    v15 = v14;
    v16 = CGPointZero.x;
    v17 = CGPointZero.y;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
    if (a4 > 3)
    {
      if (a4 == 4)
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
        if (a4 == 8)
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

    else if (a4 == 1)
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
      if (a4 == 2)
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
    v38 = [(GAXInterestAreaViewController *)self styleProvider];
    [v38 minimumSizeForInterestAreaPath];
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

    [v13 contentsBounds];
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
    if (a7)
    {
      a7->x = ProjectionToFrame;
      a7->y = v61;
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
    [v13 reloadFrameOfInterestAreaPathAtIndex:a6];
    [v13 reloadAccessoryControlsForInterestAreaPathAtIndex:a6];
  }
}

- (void)interestAreaView:(id)a3 willBeginMovingInterestAreaPathAtIndex:(unint64_t)a4
{
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> a4)
  {
    v6 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:0];
    v7 = [(GAXInterestAreaViewController *)self _interestAreaPathsIntersectingPath:v6];

    [(GAXInterestAreaViewController *)self setOldInterestAreaPathsIntersectingWithMovingPath:v7];
  }
}

- (void)interestAreaView:(id)a3 interestAreaPathAtIndex:(unint64_t)a4 wasMovedWithTranslation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> a4)
  {
    v10 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:0];
    [v10 bounds];
    v12 = v11;
    v44 = v14;
    v45 = v13;
    v16 = v15;
    v42 = v15;
    [v9 contentsBounds];
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
    [v9 reloadFrameOfInterestAreaPathAtIndex:a4];
    [v9 reloadAccessoryControlsForInterestAreaPathAtIndex:a4];
  }
}

- (void)interestAreaView:(id)a3 didFinishMovingInterestAreaPathAtIndex:(unint64_t)a4
{
  v7 = a3;
  if ([(GAXInterestAreaViewController *)self _numberOfInterestAreaPaths]> a4)
  {
    v6 = [(GAXInterestAreaViewController *)self _interestAreaPathAtIndex:a4 parent:0];
    [(GAXInterestAreaViewController *)self _updateInterestAreaPathsWithPath:v6 updatedInterestAreaPathAlreadyAdded:1];

    [(GAXInterestAreaViewController *)self setOldInterestAreaPathsIntersectingWithMovingPath:0];
    [(GAXInterestAreaViewController *)self setLastTranslationAppliedToPathBeingDragged:CGPointZero.x, CGPointZero.y];
    [v7 reloadAllAccessoryControls];
  }
}

- (double)scaleForSpecialControlsInInterestAreaView:(id)a3
{
  v4 = [(GAXInterestAreaViewController *)self delegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 scaleForSpecialControlsInInterestAreaViewController:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)interestAreaView:(id)a3 shouldDisableSmartLayoutRelativeToEdgesForInterestAreaPathAtIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(GAXInterestAreaViewController *)self isEditing])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(GAXInterestAreaViewController *)self numberOfInterestAreaPathsForInterestAreaView:v6];
    if (a4)
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