@interface CRLCanvasRepDragTracker
- (BOOL)insertInfosAndUpdateDragForDuplicatingDragIfAppropriate;
- (BOOL)p_delegateIsHandlingDrag;
- (BOOL)supportsAlignmentGuides;
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGRect)p_selectedInfosRect;
- (CRLCanvasRepDragTracker)initWithRep:(id)a3;
- (NSArray)decoratorOverlayRenderables;
- (id)p_infosFromReps:(id)a3;
- (id)p_orderedDraggedReps;
- (id)p_repsBeingHoveredAtCurrentDragPoint;
- (id)p_repsForInfos:(id)a3 fromReps:(id)a4;
- (id)repsForGuidesWhenManipulatingReps:(id)a3;
- (id)selectionBehaviorForReps:(id)a3;
- (void)addUnscaledDragDelta:(CGPoint)a3 roundDeltaToViewScale:(BOOL)a4;
- (void)beginShowingDragUIForInitialDragPoint:(CGPoint)a3;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)commitChangesForReps:(id)a3;
- (void)dealloc;
- (void)didChangeCurrentlyTransformingReps;
- (void)endPossibleRepDragGesture;
- (void)p_didBeginDrag;
- (void)p_hideHUD;
- (void)p_makeSiblingRepsOfRep:(id)a3 performBlock:(id)a4;
- (void)p_updateGuides;
- (void)p_updateHUDAtPoint:(CGPoint)a3;
- (void)p_updateRepsBeingHoveredAtCurrentDragPoint;
- (void)setActualDragPoint:(CGPoint)a3;
- (void)setShouldConstrain:(BOOL)a3;
- (void)setShouldShowGuides:(BOOL)a3;
- (void)setSnapLevel:(double)a3;
- (void)willBeginDynamicOperationForReps:(id)a3;
@end

@implementation CRLCanvasRepDragTracker

- (CRLCanvasRepDragTracker)initWithRep:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRLCanvasRepDragTracker;
  v5 = [(CRLCanvasRepDragTracker *)&v21 init];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101397908();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101397930();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013979E0();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker initWithRep:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:136 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
    }

    [(CRLCanvasRepDragTracker *)v5 setRep:v4];
    v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    mMapRepsToSnapOffsets = v5->mMapRepsToSnapOffsets;
    v5->mMapRepsToSnapOffsets = v9;

    v11 = [v4 interactiveCanvasController];
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CRLCanvasRepDragTracker *)v5 rep];
      v13 = [v12 allowDragDelegate];

      if (v13)
      {
        v14 = [v11 repDragTrackerDelegateForRep:v4];
        mDelegate = v5->mDelegate;
        v5->mDelegate = v14;
      }
    }

    v16 = objc_alloc_init(CRLCanvasHUDController);
    mSecondHUDController = v5->mSecondHUDController;
    v5->mSecondHUDController = v16;

    v5->mShowDragHUD = 0;
    v18 = objc_alloc_init(UIImpactFeedbackGenerator);
    mImpactFeedbackGenerator = v5->mImpactFeedbackGenerator;
    v5->mImpactFeedbackGenerator = v18;

    [(UIImpactFeedbackGenerator *)v5->mImpactFeedbackGenerator prepare];
    v5->mConstraintAngle = -1.0;
  }

  return v5;
}

- (void)dealloc
{
  if (self->mHaveShownHUD || self->mHaveShownSecondHUD)
  {
    [(CRLCanvasRepDragTracker *)self p_hideHUD];
  }

  [(CRLCanvasRenderable *)self->mGuideRenderable setDelegate:0];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = CRLCanvasRepDragTracker;
  [(CRLCanvasRepDragTracker *)&v3 dealloc];
}

- (void)beginShowingDragUIForInitialDragPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag])
  {
    v6 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    v7 = [v6 dynamicOperationController];
    if ([v7 isInPossibleDynamicOperation])
    {
    }

    else
    {
      v8 = [v6 dynamicOperationController];
      v9 = [v8 isInOperation];

      if ((v9 & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101397A08();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101397A1C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101397AA4();
        }

        v10 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v10);
        }

        v11 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker beginShowingDragUIForInitialDragPoint:]"];
        v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:203 isFatal:0 description:"showing UI for drag without being in some kind of dynamic operation"];
      }
    }

    self->mInitialDragPoint.x = x;
    self->mInitialDragPoint.y = y;
    v13 = objc_alloc_init(NSMutableSet);
    mConnectedLineLayouts = self->mConnectedLineLayouts;
    self->mConnectedLineLayouts = v13;

    v15 = objc_alloc_init(NSMutableSet);
    mParentLayoutsForInvalidatingForAncestorCollabCursors = self->mParentLayoutsForInvalidatingForAncestorCollabCursors;
    self->mParentLayoutsForInvalidatingForAncestorCollabCursors = v15;

    [(CRLCanvasRepDragTracker *)self didChangeCurrentlyTransformingReps];
    [(CRLCanvasRepDragTracker *)self p_updateGuides];
    [(CRLCanvasRepDragTracker *)self performSelector:"p_updateHUDFromTimer" withObject:0 afterDelay:0.2];
  }
}

- (void)endPossibleRepDragGesture
{
  v4 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  if (self->mDelegate && self->mDidBeginDrag && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTrackerDidFinishDragging:self atPoint:self->mActualDragPoint.x, self->mActualDragPoint.y];
    [v4 layoutIfNeeded];
  }

  [(CRLCanvasRepDragTracker *)self p_hideHUD];
  [(CRLCanvasRepDragTracker *)self p_hideGuideRenderable];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3 = [v4 guideController];
  [v3 endAlignmentOperation];

  if (self->mGuideRenderable)
  {
    [v4 removeDecorator:self];
  }
}

- (BOOL)insertInfosAndUpdateDragForDuplicatingDragIfAppropriate
{
  v2 = self;
  if (self->mDidDuplicateWhenDragBegan)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397ACC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397AE0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397B68();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker insertInfosAndUpdateDragForDuplicatingDragIfAppropriate]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:266 isFatal:0 description:"Should only call insertInfosAndUpdateDragForDuplicatingDragIfAppropriate once!"];
  }

  if (![(CRLCanvasRepDragTracker *)v2 p_delegateIsHandlingDrag])
  {
    v6 = [(CRLCanvasRep *)v2->mRep interactiveCanvasController];
    v7 = [v6 canvasEditor];
    v8 = [(CRLCanvasRepDragTracker *)v2 rep];
    v9 = [v6 selectionModelTranslator];
    v10 = [v6 editorController];
    v11 = [v10 selectionPath];
    v12 = [v9 unlockedBoardItemsForSelectionPath:v11];

    if ([v7 canvasEditorCanOptionDragDuplicateWithSender:0] && objc_msgSend(v12, "count"))
    {
      v13 = [v6 commandController];
      [v13 openGroup];
      [v13 enableProgressiveEnqueuingInCurrentGroup];
      v2->mDidDuplicateWhenDragBegan = 1;
      v14 = [v7 canvasEditorHelper];
      v15 = [v14 insertCopiesOfInfos:v12 forDuplicatingDragOnRep:v8];

      [v6 layoutIfNeeded];
      v16 = [v7 selectionPathWithInfos:v15];
      v17 = [v6 editorController];
      [v17 setSelectionPath:v16];
    }

    else
    {
      v15 = 0;
    }

    v54 = objc_alloc_init(NSMutableSet);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v60;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v60 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [v6 repForInfo:*(*(&v59 + 1) + 8 * i)];
          if (v23)
          {
            [v54 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v20);
    }

    v24 = [v6 dynamicOperationController];
    [v24 stopTransformingReps:v54];

    v52 = v15;
    if ([v15 count])
    {
      v50 = v7;
      v51 = v2;
      v25 = [v6 topLevelZOrderedSiblingsOfInfos:v18];
      v26 = [v25 crl_arrayWithObjectsInSet:v18];

      v27 = [v8 info];
      v47 = v26;
      v28 = [v26 indexOfObjectIdenticalTo:v27];

      v53 = v28;
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101397B90();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101397BB8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101397C40();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v29);
        }

        v30 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker insertInfosAndUpdateDragForDuplicatingDragIfAppropriate]"];
        v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:314 isFatal:0 description:"Unable to find index!"];
      }

      v48 = v18;
      v49 = v8;
      v32 = [v6 topLevelZOrderedSiblingsOfInfos:v15];
      v33 = [v32 crl_arrayWithObjectsInSet:v15];

      v34 = objc_alloc_init(NSMutableSet);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v35 = v15;
      v36 = [v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        v39 = *v56;
        do
        {
          for (j = 0; j != v37; j = j + 1)
          {
            if (*v56 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v55 + 1) + 8 * j);
            v42 = [v6 repForInfo:v41 createIfNeeded:1];
            if (v42)
            {
              [v34 addObject:v42];
            }

            if ([v33 indexOfObjectIdenticalTo:v41] == v53)
            {
              v43 = v42;

              v38 = v43;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v37);
      }

      else
      {
        v38 = 0;
      }

      v44 = v34;
      if ([v34 count])
      {
        v45 = [v6 dynamicOperationController];
        [v45 startTransformingReps:v34];
      }

      v7 = v50;
      v2 = v51;
      v18 = v48;
      if (v38)
      {
        [(CRLCanvasRepDragTracker *)v51 setRep:v38];
      }

      v8 = v49;
    }

    else
    {
      v38 = 0;
    }
  }

  return v2->mDidDuplicateWhenDragBegan;
}

- (void)addUnscaledDragDelta:(CGPoint)a3 roundDeltaToViewScale:(BOOL)a4
{
  self->mRoundDragDelta = a4;
  self->mUnscaledDragDelta.x = sub_10011F334(self->mUnscaledDragDelta.x, self->mUnscaledDragDelta.y, a3.x);
  self->mUnscaledDragDelta.y = v5;
}

- (void)setActualDragPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->mHaveSetPreviousActualDragPoint)
  {
    self->mPreviousActualDragPoint = self->mActualDragPoint;
  }

  v8 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  [v8 convertBoundsToUnscaledPoint:{x, y}];
  self->mActualDragPoint.x = v6;
  self->mActualDragPoint.y = v7;
}

- (void)setShouldConstrain:(BOOL)a3
{
  if (self->mShouldConstrain != a3)
  {
    self->mShouldConstrain = a3;
    if (!self->mDidBeginDrag)
    {
      if (a3)
      {
        if (!self->mConstraintGuidesShowing)
        {
          [(CRLCanvasRepDragTracker *)self p_showGuideRenderable];
        }
      }

      else if (self->mConstraintGuidesShowing)
      {
        [(CRLCanvasRepDragTracker *)self p_hideGuideRenderable];
      }
    }
  }
}

- (void)setSnapLevel:(double)a3
{
  if (a3 != 0.0 && !self->mShouldConstrain)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397C68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397C7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397D04();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker setSnapLevel:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:375 isFatal:0 description:"non-zero snap level when we aren't constraining the drag. that doesn't make sense."];
  }

  if (self->mSnapLevel != a3)
  {
    self->mSnapLevel = a3;
  }
}

- (void)p_didBeginDrag
{
  if (!self->mDidBeginDrag)
  {
    self->mDidBeginDrag = 1;
    v3 = objc_alloc_init(NSMutableSet);
    mPreviousHoveredReps = self->mPreviousHoveredReps;
    self->mPreviousHoveredReps = v3;

    v5 = [(CRLCanvasRepDragTracker *)self rep];
    v6 = [v5 interactiveCanvasController];
    v7 = [v6 layerHost];
    v8 = [v7 asiOSCVC];
    [v8 hideEditMenu];

    if (!self->mTrackerDidBeginDragging)
    {
      mDelegate = self->mDelegate;
      if (mDelegate)
      {
        self->mTrackerDidBeginDragging = 1;
        x = self->mActualDragPoint.x;
        y = self->mActualDragPoint.y;

        [(CRLCanvasRepDragTrackerDelegate *)mDelegate dragTrackerWillBeginDragging:self atPoint:x, y];
      }
    }
  }
}

- (void)setShouldShowGuides:(BOOL)a3
{
  self->mShouldShowGuides = a3;
  if (a3 && !self->mShowDragHUD && ![(CRLCanvasRepDragTracker *)self shouldSnapToGuides])
  {
    self->mShowDragHUD = 1;
  }
}

- (void)p_updateRepsBeingHoveredAtCurrentDragPoint
{
  v3 = [(CRLCanvasRepDragTracker *)self p_repsBeingHoveredAtCurrentDragPoint];
  v4 = [(CRLCanvasRepDragTracker *)self p_orderedDraggedReps];
  v5 = [v3 mutableCopy];
  [v5 minusSet:self->mPreviousHoveredReps];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v33 + 1) + 8 * i) dragTrackerEnteredAt:v4 withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y}];
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * j);
        if ([(NSMutableSet *)self->mPreviousHoveredReps containsObject:v16])
        {
          [v16 dragTrackerMovedAt:v4 withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v17 = [(NSMutableSet *)self->mPreviousHoveredReps mutableCopy];
  [v17 minusSet:v11];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * k) dragTrackerExitedAt:v4 withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y, v25}];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v23 = [[NSMutableSet alloc] initWithSet:v11];
  mPreviousHoveredReps = self->mPreviousHoveredReps;
  self->mPreviousHoveredReps = v23;
}

- (id)p_repsBeingHoveredAtCurrentDragPoint
{
  v3 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  v4 = [v3 topLevelRepsForHitTesting];

  v5 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v11 != self->mRep)
        {
          [*(*(&v14 + 1) + 8 * i) convertNaturalPointFromUnscaledCanvas:{self->mActualDragPoint.x, self->mActualDragPoint.y, v14}];
          if ([(CRLCanvasRep *)v11 containsPoint:1 withPrecision:?])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [[NSSet alloc] initWithSet:v5];

  return v12;
}

- (id)p_orderedDraggedReps
{
  v2 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  v3 = [v2 editorController];
  v4 = [v3 selectionPath];

  v5 = [v2 selectionModelTranslator];
  v6 = [v5 boardItemsForSelectionPath:v4];

  v7 = [v2 topLevelZOrderedSiblingsOfInfos:v6];
  v8 = [v7 crl_arrayWithObjectsInSet:v6];
  v9 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v2 repForInfo:{*(*(&v17 + 1) + 8 * i), v17}];
        [v9 crl_addNonNilObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)willBeginDynamicOperationForReps:(id)a3
{
  v4 = a3;
  if (!self->mIsEnqueueingCommandsInRealTime)
  {
    v5 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    if (![v5 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime])
    {
LABEL_5:

      goto LABEL_6;
    }

    v6 = [(CRLCanvasRep *)self->mRep allowsSupportedDynamicOperationsToBeRealTime];

    if (v6)
    {
      v7 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
      v5 = [v7 commandController];

      [v5 openGroup];
      [v5 enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
      self->mIsEnqueueingCommandsInRealTime = 1;
      goto LABEL_5;
    }
  }

LABEL_6:
  if (![(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag]&& self->mDelegate && !self->mInWillBeginDynamicOperation)
  {
    self->mInWillBeginDynamicOperation = 1;
    [(CRLCanvasRepDragTracker *)self p_didBeginDrag];
    v8 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    v9 = [(CRLCanvasRepDragTracker *)self p_infosFromReps:v4];
    v10 = [(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTracker:self drawablesToDrag:v9 hitRep:self->mRep];
    v11 = [(CRLCanvasRepDragTracker *)self p_repsForInfos:v10 fromReps:v4];
    v41 = v9;
    v42 = v4;
    v39 = v11;
    v40 = v10;
    if ([(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTracker:self willBeginDraggingReps:v11 atPoint:self->mActualDragPoint.x, self->mActualDragPoint.y])
    {
      [v8 layoutIfNeeded];
      v12 = [(CRLCanvasRep *)self->mRep info];
      v13 = [v8 repForInfo:v12];

      if (v13 && v13 != self->mRep)
      {
        [(CRLCanvasRepDragTracker *)self setRep:v13];
      }

      v38 = self;
      v14 = +[NSMutableSet set];
      v43 = +[NSMutableSet set];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v15 = v4;
      v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v51;
        do
        {
          v19 = 0;
          v20 = v13;
          do
          {
            if (*v51 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v50 + 1) + 8 * v19);
            v22 = [(CRLCanvasRep *)v21 info];
            v13 = [v8 repForInfo:v22];

            if (v13)
            {
              v23 = v13 == v21;
            }

            else
            {
              v23 = 1;
            }

            if (!v23)
            {
              [v43 addObject:v21];
              [v14 addObject:v13];
            }

            v19 = v19 + 1;
            v20 = v13;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v17);
      }

      v24 = v14;
      v25 = [v14 count];
      v26 = v43;
      self = v38;
      v11 = v39;
      if (v25 != [v43 count])
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101397D2C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101397D54();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101397DDC();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v27);
        }

        v28 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker willBeginDynamicOperationForReps:]"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:533 isFatal:0 description:"number of reps uneven for attached drag"];

        v26 = v43;
      }

      v4 = v42;
      if ([v24 count])
      {
        v30 = [v8 dynamicOperationController];
        [v30 stopTransformingReps:v26];

        v31 = [v8 dynamicOperationController];
        [v31 startTransformingReps:v24];
      }

      v10 = v40;
      v9 = v41;
    }

    if (![(CRLCanvasRepDragTracker *)self isInspectorDrivenTracking])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v32 = v4;
      v33 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v46 + 1) + 8 * i);
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_100590964;
            v44[3] = &unk_101870D98;
            v45 = v8;
            [(CRLCanvasRepDragTracker *)self p_makeSiblingRepsOfRep:v37 performBlock:v44];
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v34);
      }

      v9 = v41;
      v4 = v42;
      v11 = v39;
      v10 = v40;
    }

    self->mInWillBeginDynamicOperation = 0;
  }
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  v4 = a3;
  if (self->mDidBeginDrag || (self->mUnscaledDragDelta.x == CGPointZero.x ? (v5 = self->mUnscaledDragDelta.y == CGPointZero.y) : (v5 = 0), !v5))
  {
    v205 = v4;
    v219 = self;
    v206 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    v6 = self;
    if (self->mRoundDragDelta)
    {
      [v206 viewScale];
      x = self->mUnscaledDragDelta.x;
      y = self->mUnscaledDragDelta.y;
      v10 = sub_10012218C(x, y, v9);
      v12 = v11;
    }

    else
    {
      v10 = self->mUnscaledDragDelta.x;
      v12 = self->mUnscaledDragDelta.y;
      x = v10;
      y = v12;
    }

    self->mUnscaledDragDelta.x = sub_10011F31C(x, y, v10);
    self->mUnscaledDragDelta.y = v13;
    [(CRLCanvasRepDragTracker *)self p_didBeginDrag];
    if ([(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag])
    {
LABEL_214:
      [(CRLCanvasRepDragTracker *)v6 p_updateRepsBeingHoveredAtCurrentDragPoint];
      v219->mPreviousActualDragPoint = v219->mActualDragPoint;
      v219->mHaveSetPreviousActualDragPoint = 1;

      v4 = v205;
      goto LABEL_215;
    }

    v14 = [(CRLCanvasRepDragTracker *)self shouldSnapToGuides];
    if (v14)
    {
      v15 = fabs(v12);
      v16 = v205;
      if (fabs(v10) >= 6.0)
      {
        v222 = [(CRLCanvasRepDragTracker *)v6 shouldShowGuides];
        v18 = 0;
        v217 = 1;
        v17 = v15 < 6.0;
      }

      else
      {
        v222 = 1;
        v17 = v15 < 6.0;
        v18 = 1;
        v217 = 1;
      }

      v19 = 1;
      v223 = 1;
      if (v17)
      {
LABEL_17:
        v213 = v19;
        v263 = 0u;
        v264 = 0u;
        v261 = 0u;
        v262 = 0u;
        v20 = v16;
        v21 = [v20 countByEnumeratingWithState:&v261 objects:v285 count:16];
        if (v21)
        {
          v22 = *v262;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v262 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = [(NSMapTable *)v219->mMapRepsToSnapOffsets objectForKey:*(*(&v261 + 1) + 8 * i)];
              if (!v24)
              {
                [(NSMapTable *)v219->mMapRepsToSnapOffsets removeAllObjects];
                goto LABEL_27;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v261 objects:v285 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v259 = 0u;
        v260 = 0u;
        v257 = 0u;
        v258 = 0u;
        v25 = v20;
        v26 = [v25 countByEnumeratingWithState:&v257 objects:v284 count:16];
        if (v26)
        {
          v27 = *v258;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v258 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v257 + 1) + 8 * j);
              if (([v29 isBeingDragged] & 1) == 0)
              {
                [v29 dynamicDragDidBegin];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v257 objects:v284 count:16];
          }

          while (v26);
        }

        v204 = [v206 commandController];
        v30 = v219;
        if (v219->mIsEnqueueingCommandsInRealTime)
        {
          [v204 openGroup];
          v30 = v219;
        }

        v216 = [(CRLCanvasRepDragTracker *)v30 repsForGuidesWhenManipulatingReps:v25];
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v31 = v25;
        v32 = [v31 countByEnumeratingWithState:&v253 objects:v283 count:16];
        v34 = CGRectZero.origin.x;
        v33 = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        rect = CGRectZero.size.height;
        if (v32)
        {
          v35 = *v254;
          do
          {
            for (k = 0; k != v32; k = k + 1)
            {
              if (*v254 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v253 + 1) + 8 * k);
              v38 = [v37 layout];
              v39 = [(NSMapTable *)v219->mMapRepsToSnapOffsets objectForKey:v37];
              v40 = v39;
              v41 = CGPointZero.x;
              if (v39)
              {
                [v39 CGPointValue];
                v41 = v42;
              }

              v43 = sub_10011F31C(v10, v12, v41);
              v45 = v44;
              if ([v37 shouldShowSizesInRulers] && objc_msgSend(v216, "containsObject:", v37))
              {
                [v37 snapRectForDynamicDragWithOffset:{v43, v45}];
                v34 = sub_10011FC04(v34, v33, width, rect, v46, v47, v48, v49);
                v33 = v50;
                width = v51;
                rect = v52;
              }

              [v38 dragByUnscaled:{v43, v45}];
            }

            v32 = [v31 countByEnumeratingWithState:&v253 objects:v283 count:16];
          }

          while (v32);
        }

        v53 = v219;
        if (v219->mIsEnqueueingCommandsInRealTime)
        {
          [v204 closeGroup];
          v53 = v219;
        }

        v55 = CGPointZero.x;
        v54 = CGPointZero.y;
        v212 = v54;
        if (v53->mShouldConstrain)
        {
          [(CRLCanvasRep *)v53->mRep i_dragOffset];
          v57 = v56;
          v59 = v58;
          v60 = sub_100120074(v56, v58);
          v61 = +[UIDevice crl_phoneUI];
          [v206 viewScale];
          if (v60 == 0.0)
          {
            v63 = v219;
            v219->mConstraintAngle = -1.0;
            mConstraintAngle = -1.0;
          }

          else
          {
            v65 = 200.0;
            if (v61)
            {
              v65 = 50.0;
            }

            v63 = v219;
            if (v60 > v65 / v62 || (mConstraintAngle = v219->mConstraintAngle, mConstraintAngle < 0.0))
            {
              v66 = acos(v57 / v60);
              if (v59 < 0.0)
              {
                v66 = 6.28318531 - v66;
              }

              mConstraintAngle = round(v66 / 0.785398163) * 0.785398163;
              v219->mConstraintAngle = mConstraintAngle;
            }
          }

          v67 = __sincos_stret(mConstraintAngle);
          v68 = sub_10011F328(v67.__cosval, v67.__sinval, v57, v59);
          v69 = sub_10011F340(v67.__cosval, v67.__sinval, v68);
          mSnapLevel = v63->mSnapLevel;
          if (mSnapLevel != 0.0)
          {
            v69 = mSnapLevel * round(v69 / mSnapLevel);
            v70 = mSnapLevel * round(v70 / mSnapLevel);
          }

          v55 = sub_10011F31C(v69, v70, v57);
          v54 = v72;
          v34 = sub_10011F334(v34, v33, v55);
          v33 = v73;
        }

        v249 = 0;
        v250 = &v249;
        v251 = 0x2020000000;
        v252 = 0;
        v74 = [v31 allObjects];
        v248[0] = _NSConcreteStackBlock;
        v248[1] = 3221225472;
        v248[2] = sub_1005920E0;
        v248[3] = &unk_101870DC0;
        v248[4] = &v249;
        v75 = [v74 crl_allObjectsPassTest:v248];

        v77 = v212;
        v76 = CGPointZero.x;
        v78 = v219;
        if ((v14 & v75) == 1)
        {
          if (!v219->mShouldConstrain || v219->mSnapLevel == 0.0 || (v77 = v212, v76 = CGPointZero.x, [v206 isCanvasBackgroundAlignmentSnappingEnabled]))
          {
            v79 = [v206 guideController];
            if ([v206 isCanvasBackgroundAlignmentSnappingEnabled] && objc_msgSend(v31, "count") == 1)
            {
              v80 = [v31 anyObject];
              v81 = objc_opt_class();
              v82 = [v80 layout];
              v83 = sub_100014370(v81, v82);

              if (v83 && [v83 pathIsLineSegment])
              {
                v84 = objc_opt_class();
                v85 = [v80 layout];
                v86 = sub_100014370(v84, v85);

                if (v86 && ([v86 isStraightLine] & 1) == 0)
                {
                  [v79 snapRectToGuides:0 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:0 isLine:v34 startPoint:v33 endPoint:{width, rect, CGPointZero.x, v212, CGPointZero.x, v212}];
                }

                else
                {
                  [v83 tailPoint];
                  [v83 convertNaturalPointToUnscaledCanvas:?];
                  v88 = v87;
                  v90 = v89;
                  [v83 headPoint];
                  [v83 convertNaturalPointToUnscaledCanvas:?];
                  [v79 snapRectToGuides:0 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:1 isLine:v34 startPoint:v33 endPoint:{width, rect, v88, v90, v91, v92}];
                }

                v76 = v93;
                v77 = v94;
              }

              else
              {
                LOBYTE(v203) = *(v250 + 24) ^ 1;
                [v79 snapRectToGuides:0 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:0 isLine:0 startPoint:0 endPoint:v34 hasHorizontalFlip:v33 hasVerticalFlip:width snapWithGuides:{rect, CGPointZero.x, v212, CGPointZero.x, v212, v203}];
                v76 = v98;
                v77 = v99;
              }
            }

            else
            {
              v95 = [v206 isCanvasBackgroundAlignmentSnappingEnabled];
              LOBYTE(v203) = *(v250 + 24) ^ 1;
              [v79 snapRectToGuides:0 forKnobTag:1 snapSize:v95 snapWithBackgroundAlignmentProvider:0 isLine:0 startPoint:0 endPoint:v34 hasHorizontalFlip:v33 hasVerticalFlip:width snapWithGuides:{rect, CGPointZero.x, v212, CGPointZero.x, v212, v203}];
              v76 = v96;
              v77 = v97;
            }

            v100 = +[NSMutableArray array];
            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            v101 = v31;
            v102 = [v101 countByEnumeratingWithState:&v244 objects:v282 count:16];
            if (v102)
            {
              v103 = *v245;
              do
              {
                for (m = 0; m != v102; m = m + 1)
                {
                  if (*v245 != v103)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v105 = [*(*(&v244 + 1) + 8 * m) additionalRectsForSnappingWithOffset:{v55, v54}];
                  [v100 addObjectsFromArray:v105];
                }

                v102 = [v101 countByEnumeratingWithState:&v244 objects:v282 count:16];
              }

              while (v102);
            }

            if ([v100 count])
            {
              v106 = [v79 didJustSnapInX];
              v107 = [v79 didJustSnapInY];
              v108 = v107;
              if (v106)
              {
                v109 = v76;
              }

              else
              {
                v109 = 1.79769313e308;
              }

              v242 = 0u;
              v243 = 0u;
              if (v107)
              {
                v110 = v77;
              }

              else
              {
                v110 = 1.79769313e308;
              }

              v240 = 0uLL;
              v241 = 0uLL;
              v111 = v100;
              v112 = [v111 countByEnumeratingWithState:&v240 objects:v281 count:16];
              v210 = v18;
              if (v112)
              {
                v113 = *v241;
                do
                {
                  for (n = 0; n != v112; n = n + 1)
                  {
                    if (*v241 != v113)
                    {
                      objc_enumerationMutation(v111);
                    }

                    [*(*(&v240 + 1) + 8 * n) CGRectValue];
                    [v79 snapRectToGuides:?];
                    v116 = v115;
                    v118 = v117;
                    v119 = [v79 didJustSnapInX];
                    v120 = [v79 didJustSnapInY];
                    v121 = v119 & (v116 < v109);
                    if (v121)
                    {
                      v109 = v116;
                    }

                    LOBYTE(v106) = v121 | v106;
                    v108 |= v120 & (v118 < v110);
                    if ((v120 & (v118 < v110)) != 0)
                    {
                      v110 = v118;
                    }
                  }

                  v112 = [v111 countByEnumeratingWithState:&v240 objects:v281 count:16];
                }

                while (v112);
              }

              v18 = v210;
              [v79 setDidJustSnapInX:v106 & 1];
              if (v110 == 1.79769313e308)
              {
                v77 = 0.0;
              }

              else
              {
                v77 = v110;
              }

              if (v109 == 1.79769313e308)
              {
                v76 = 0.0;
              }

              else
              {
                v76 = v109;
              }

              [v79 setDidJustSnapInY:v108 & 1];
            }

            v122 = [v206 canvasBackground];
            v123 = [v122 alignmentProvider];
            v124 = [v206 isCanvasBackgroundAlignmentSnappingEnabled] & (v123 != 0);
            if (!(v18 | v124))
            {
              v76 = 0.0;
            }

            if (!(v213 | v124))
            {
              v77 = 0.0;
            }

            v78 = v219;
          }
        }

        if (!v78->mShouldConstrain)
        {
          goto LABEL_161;
        }

        v125 = __sincos_stret(v78->mConstraintAngle);
        sinval = v125.__sinval;
        if (v125.__cosval == 0.0 || fabs(v125.__cosval) < 0.00999999978)
        {
          v130 = 0;
          v133 = 0;
          v129 = v77 != 0.0;
          v76 = 0.0;
        }

        else
        {
          v127 = v125.__sinval == 0.0;
          if (fabs(v125.__sinval) < 0.00999999978)
          {
            v127 = 1;
          }

          v128 = 0.0;
          if (!v127)
          {
            v128 = v77;
          }

          v129 = v128 != 0.0;
          v130 = v76 != 0.0;
          if (v76 == 0.0 || v128 == 0.0)
          {
            v77 = v128;
            v133 = v76 != 0.0;
          }

          else
          {
            v131 = fabs(v76);
            v132 = fabs(v77);
            if (v127)
            {
              v132 = 0.0;
            }

            v133 = v131 < v132;
            v129 = 1;
            v130 = 1;
            v77 = v128;
          }
        }

        v76 = sub_10011F334(v76, v77, v55);
        v77 = v134;
        v34 = sub_10011F31C(v34, v33, v55);
        v33 = v135;
        [(CRLCanvasRep *)v78->mRep i_dragOffset];
        v214 = v136;
        v138 = sub_10011F334(v136, v137, v76);
        v140 = v139;
        v141 = sub_100120074(v138, v139);
        v142 = v141;
        if (!v130 && !v129)
        {
LABEL_159:
          if (v142 > 0.0)
          {
            v157 = sub_10011F328(v125.__cosval, sinval, v138, v140);
            v158 = sub_10011F340(v125.__cosval, sinval, v157);
            v76 = sub_10011F31C(v158, v159, v214);
            v77 = v160;
          }

LABEL_161:
          [(NSMapTable *)v78->mMapRepsToSnapOffsets removeAllObjects];
          if (v78->mIsEnqueueingCommandsInRealTime)
          {
            [v204 openGroup];
          }

          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          v161 = v31;
          v162 = [v161 countByEnumeratingWithState:&v236 objects:v280 count:16];
          if (v162)
          {
            v163 = *v237;
            do
            {
              for (ii = 0; ii != v162; ii = ii + 1)
              {
                if (*v237 != v163)
                {
                  objc_enumerationMutation(v161);
                }

                v165 = *(*(&v236 + 1) + 8 * ii);
                v166 = [v165 layout];
                [v166 dragByUnscaled:{v76, v77}];
                mMapRepsToSnapOffsets = v219->mMapRepsToSnapOffsets;
                v168 = [NSValue valueWithCGPoint:v76, v77];
                [(NSMapTable *)mMapRepsToSnapOffsets setObject:v168 forKey:v165];
              }

              v162 = [v161 countByEnumeratingWithState:&v236 objects:v280 count:16];
            }

            while (v162);
          }

          if (v219->mIsEnqueueingCommandsInRealTime)
          {
            [v204 closeGroup];
          }

          v286.origin.x = v34;
          v286.origin.y = v33;
          v286.size.width = width;
          v286.size.height = rect;
          v287 = CGRectOffset(v286, v76, v77);
          v170 = v212;
          v169 = CGPointZero.x;
          if (v217)
          {
            v171 = v287.origin.x;
            v172 = v287.origin.y;
            v173 = v287.size.width;
            height = v287.size.height;
            v175 = [v206 guideController];
            [v175 showGuidesAlignedWithRect:v222 shouldRenderX:v223 shouldRenderY:{v171, v172, v173, height}];
            [v175 setDoNotRemoveExistingGuidesWhenDisplaying:1];
            recta = v175;
            v234 = 0u;
            v235 = 0u;
            v232 = 0u;
            v233 = 0u;
            obja = v161;
            v211 = [obja countByEnumeratingWithState:&v232 objects:v279 count:16];
            if (v211)
            {
              v209 = *v233;
              do
              {
                for (jj = 0; jj != v211; jj = jj + 1)
                {
                  if (*v233 != v209)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v176 = *(*(&v232 + 1) + 8 * jj);
                  v177 = [v176 additionalRectsForSnappingWithOffset:{v169, v170}];
                  v230 = 0u;
                  v231 = 0u;
                  v228 = 0u;
                  v229 = 0u;
                  v178 = v177;
                  v179 = [v178 countByEnumeratingWithState:&v228 objects:v278 count:16];
                  if (v179)
                  {
                    v180 = *v229;
                    do
                    {
                      for (kk = 0; kk != v179; kk = kk + 1)
                      {
                        if (*v229 != v180)
                        {
                          objc_enumerationMutation(v178);
                        }

                        [*(*(&v228 + 1) + 8 * kk) CGRectValue];
                        v186 = v182;
                        v187 = v183;
                        v188 = v184;
                        v189 = v185;
                        if (v184 <= 0.0 || v185 <= 0.0)
                        {
                          v190 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                          if (qword_101AD5A10 != -1)
                          {
                            sub_101398014();
                          }

                          v191 = off_1019EDA68;
                          if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                          {
                            v289.origin.x = v186;
                            v289.origin.y = v187;
                            v289.size.width = v188;
                            v289.size.height = v189;
                            v196 = NSStringFromCGRect(v289);
                            *buf = 67110402;
                            v267 = v190;
                            v268 = 2082;
                            v269 = "[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]";
                            v270 = 2082;
                            v271 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m";
                            v272 = 1024;
                            v273 = 995;
                            v274 = 2112;
                            v275 = v196;
                            v276 = 2112;
                            v277 = v176;
                            _os_log_error_impl(&_mh_execute_header, v191, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid additional snapping rect %@ from rep %@! Ignoring.", buf, 0x36u);
                          }

                          if (qword_101AD5A10 != -1)
                          {
                            sub_10139803C();
                          }

                          v192 = off_1019EDA68;
                          if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
                          {
                            v197 = +[CRLAssertionHandler packedBacktraceString];
                            *buf = 67109378;
                            v267 = v190;
                            v268 = 2114;
                            v269 = v197;
                            _os_log_error_impl(&_mh_execute_header, v192, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                          }

                          v193 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]"];
                          v194 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
                          v288.origin.x = v186;
                          v288.origin.y = v187;
                          v288.size.width = v188;
                          v288.size.height = v189;
                          v195 = NSStringFromCGRect(v288);
                          [CRLAssertionHandler handleFailureInFunction:v193 file:v194 lineNumber:995 isFatal:0 description:"Invalid additional snapping rect %@ from rep %@! Ignoring.", v195, v176];
                        }

                        else
                        {
                          [recta showGuidesAlignedWithRect:v222 shouldRenderX:v223 shouldRenderY:{v182, v183, v184, v185}];
                        }
                      }

                      v179 = [v178 countByEnumeratingWithState:&v228 objects:v278 count:16];
                    }

                    while (v179);
                  }

                  v170 = v212;
                  v169 = CGPointZero.x;
                }

                v211 = [obja countByEnumeratingWithState:&v232 objects:v279 count:16];
              }

              while (v211);
            }

            v198 = recta;
            [recta setDoNotRemoveExistingGuidesWhenDisplaying:0];
          }

          else
          {
            v198 = [v206 guideController];
            [v198 hideAlignmentGuides];
          }

          if (v219->mShouldConstrain)
          {
            if (!v219->mConstraintGuidesShowing)
            {
              [(CRLCanvasRepDragTracker *)v219 p_showGuideRenderable];
            }
          }

          else if (v219->mConstraintGuidesShowing)
          {
            [(CRLCanvasRepDragTracker *)v219 p_hideGuideRenderable];
          }

          v226 = 0u;
          v227 = 0u;
          v224 = 0u;
          v225 = 0u;
          v199 = v219->mParentLayoutsForInvalidatingForAncestorCollabCursors;
          v200 = [(NSMutableSet *)v199 countByEnumeratingWithState:&v224 objects:v265 count:16];
          if (v200)
          {
            v201 = *v225;
            do
            {
              for (mm = 0; mm != v200; mm = mm + 1)
              {
                if (*v225 != v201)
                {
                  objc_enumerationMutation(v199);
                }

                [*(*(&v224 + 1) + 8 * mm) invalidateFrame];
              }

              v200 = [(NSMutableSet *)v199 countByEnumeratingWithState:&v224 objects:v265 count:16];
            }

            while (v200);
          }

          [(CRLCanvasRepDragTracker *)v219 p_updateHUDAtPoint:v219->mLogicalDragPoint.x, v219->mLogicalDragPoint.y];
          _Block_object_dispose(&v249, 8);

          v6 = v219;
          goto LABEL_214;
        }

        if (v133)
        {
          if (v125.__cosval != 0.0)
          {
            v143 = v138 / v125.__cosval;
LABEL_138:
            v144 = fabs(v143);
LABEL_158:
            v155 = v142;
            v138 = sub_10011F340(v138, v140, v144 / v142);
            v140 = v156;
            v142 = v155;
            sinval = v125.__sinval;
            goto LABEL_159;
          }

          obj = v141;
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101397F3C();
          }

          v145 = off_1019EDA68;
          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
          {
            sub_101397F64();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101397FEC();
          }

          v146 = off_1019EDA68;
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            v147 = +[CRLAssertionHandler packedBacktraceString];
            sub_101397EDC(v147);
          }

          v148 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]"];
          v149 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
          [CRLAssertionHandler handleFailureInFunction:v148 file:v149 lineNumber:842 isFatal:0 description:"prioritizing X offset with a unit direction that doesn't have an X value!"];
        }

        else
        {
          if (v125.__sinval != 0.0)
          {
            v143 = v140 / v125.__sinval;
            goto LABEL_138;
          }

          obj = v141;
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101397E04();
          }

          v150 = off_1019EDA68;
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            sub_101397E2C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101397EB4();
          }

          v151 = off_1019EDA68;
          if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
          {
            v152 = +[CRLAssertionHandler packedBacktraceString];
            sub_101397EDC(v152);
          }

          v153 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]"];
          v154 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
          [CRLAssertionHandler handleFailureInFunction:v153 file:v154 lineNumber:850 isFatal:0 description:"prioritizing Y offset with a unit direction that doesn't have an Y value!"];
        }

        v142 = obj;
        v144 = obj;
        v78 = v219;
        goto LABEL_158;
      }
    }

    else
    {
      v217 = [(CRLCanvasRepDragTracker *)self shouldShowGuides];
      v222 = [(CRLCanvasRepDragTracker *)self shouldShowGuides];
      v18 = 0;
      v16 = v205;
    }

    v223 = [(CRLCanvasRepDragTracker *)v6 shouldShowGuides];
    v19 = 0;
    goto LABEL_17;
  }

LABEL_215:
}

- (void)commitChangesForReps:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  v6 = [v5 commandController];
  [v6 openGroup];
  if (self->mDidDuplicateWhenDragBegan)
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"Duplicate";
  }

  else
  {
    if ([v4 count] == 1)
    {
      v8 = [v4 anyObject];
      v10 = [v8 actionStringForDrag];
      goto LABEL_7;
    }

    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"Move";
  }

  v10 = [v7 localizedStringForKey:v9 value:0 table:@"UndoStrings"];
LABEL_7:
  v11 = v10;
  [v6 setCurrentGroupActionString:v10];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if ([v17 isBeingDragged])
        {
          [v17 dynamicDragDidEndAt:{self->mActualDragPoint.x, self->mActualDragPoint.y}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v18 = [(CRLCanvasRepDragTracker *)self p_repsBeingHoveredAtCurrentDragPoint];
  v19 = [(CRLCanvasRepDragTracker *)self p_orderedDraggedReps];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v28 + 1) + 8 * j) performAdditionalWorkToCommitDragTrackerAt:v19 withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y, v28}];
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v22);
  }

  [(NSMutableSet *)self->mPreviousHoveredReps removeAllObjects];
  [v6 closeGroup];
  if (self->mIsEnqueueingCommandsInRealTime)
  {
    v25 = [CRLCanvasCommandSelectionBehavior alloc];
    v26 = [v5 canvasEditor];
    v27 = [(CRLCanvasCommandSelectionBehavior *)v25 initWithCanvasEditor:v26 type:2];

    [v6 closeGroupWithSelectionBehavior:v27];
  }
}

- (id)repsForGuidesWhenManipulatingReps:(id)a3
{
  v3 = [a3 mutableCopy];

  return v3;
}

- (BOOL)supportsAlignmentGuides
{
  if ([(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag])
  {
    return 0;
  }

  else
  {
    return ![(CRLCanvasRepDragTracker *)self isArrowkeyDrivenTracking];
  }
}

- (void)didChangeCurrentlyTransformingReps
{
  if (byte_101A35520)
  {
    return;
  }

  byte_101A35520 = 1;
  v48 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  v3 = [v48 dynamicOperationController];
  v4 = objc_alloc_init(NSMutableSet);
  v47 = objc_alloc_init(NSMutableSet);
  v5 = [v3 currentlyTransformingReps];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v61;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        if (-[CRLCanvasRepDragTracker isDragInsertDrivenTracking](self, "isDragInsertDrivenTracking") || ([v10 isSelected] & 1) != 0)
        {
          if ([v10 isSelected])
          {
            v11 = [v10 additionalRepsForDragging];
            [v4 unionSet:v11];
          }
        }

        else
        {
          [v47 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v7);
  }

  [v47 minusSet:v4];
  [v4 minusSet:v5];
  if ([v4 count])
  {
    [v3 startTransformingReps:v4];
  }

  if ([v47 count])
  {
    [v3 stopTransformingReps:v47];
  }

  v45 = v3;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v12 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v57;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v56 + 1) + 8 * j);
        v17 = [v16 layout];
        v18 = [v17 connectedLayouts];

        if (v18)
        {
          [(NSMutableSet *)self->mConnectedLineLayouts unionSet:v18];
        }

        v19 = [v16 parentRep];
        if (v19)
        {
          v20 = v19;
          while (![v20 shouldShowCollaboratorCursorHighlight])
          {
            v21 = [v20 parentRep];

            v20 = v21;
            if (!v21)
            {
              goto LABEL_31;
            }
          }

          mParentLayoutsForInvalidatingForAncestorCollabCursors = self->mParentLayoutsForInvalidatingForAncestorCollabCursors;
          v23 = [v16 parentRep];
          v24 = [v23 layout];
          [(NSMutableSet *)mParentLayoutsForInvalidatingForAncestorCollabCursors addObject:v24];
        }

LABEL_31:
      }

      v13 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v13);
  }

  v25 = obj;

  v46 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v50 = self->mConnectedLineLayouts;
  v26 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
  v27 = v48;
  if (!v26)
  {
    goto LABEL_49;
  }

  v28 = v26;
  v29 = *v53;
  do
  {
    v30 = 0;
    v49 = v28;
    do
    {
      if (*v53 != v29)
      {
        objc_enumerationMutation(v50);
      }

      v31 = *(*(&v52 + 1) + 8 * v30);
      [v31 checkConnections];
      v32 = [v31 connectedTo];
      if (v32)
      {
        v33 = v32;
        v34 = [v31 connectedFrom];

        if (v34)
        {
          v35 = v29;
          v36 = [v31 connectedTo];
          v37 = [v36 info];
          v38 = [v27 repForInfo:v37];
          if ([v25 containsObject:v38])
          {
            v39 = [v31 connectedFrom];
            v40 = [v39 info];
            v41 = [v27 repForInfo:v40];
            v42 = [obj containsObject:v41];

            v27 = v48;
            v25 = obj;

            v29 = v35;
            v28 = v49;
            if (!v42)
            {
              goto LABEL_47;
            }

            v43 = [v31 info];
            v36 = [v48 repForInfo:v43];

            if (v36)
            {
              [v46 addObject:v36];
            }

            v27 = v48;
          }

          else
          {

            v29 = v35;
            v28 = v49;
          }
        }
      }

LABEL_47:
      v30 = v30 + 1;
    }

    while (v28 != v30);
    v28 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
  }

  while (v28);
LABEL_49:

  if ([v46 count])
  {
    [v45 startTransformingReps:v46];
  }

  byte_101A35520 = 0;
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5D00 != -1)
  {
    sub_101398064();
  }

  v2 = off_1019F1120;
  if (os_log_type_enabled(off_1019F1120, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "begin drag operation", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  v3 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  v4 = [v3 dynamicOperationController];
  v5 = [v4 allTransformedReps];
  [(CRLCanvasRep *)self->mRep i_dragOffset];
  v7 = v6;
  v9 = v8;
  if (qword_101AD5D00 != -1)
  {
    sub_101398078();
  }

  v10 = off_1019F1120;
  if (os_log_type_enabled(off_1019F1120, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v13 = 134218496;
    v14 = [v5 count];
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "end drag operation for %zi reps. Offset (%f, %f)", &v13, 0x20u);
  }

  return 1;
}

- (id)selectionBehaviorForReps:(id)a3
{
  v4 = [(CRLCanvasRepDragTracker *)self p_repsBeingHoveredAtCurrentDragPoint];
  v5 = [(CRLCanvasRepDragTracker *)self p_orderedDraggedReps];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) selectionBehaviorToCommitDragTrackerWithDraggedReps:{v5, v14}];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mConstraintGuidesShowing)
  {
    mGuideRenderable = self->mGuideRenderable;
    v2 = [NSArray arrayWithObjects:&mGuideRenderable count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)p_updateHUDAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v38 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  if (self->mShowDragHUD)
  {
    if ([(CRLCanvasRep *)self->mRep shouldShowDragHUD])
    {
      v6 = [v38 dynamicOperationController];
      v7 = [v6 currentlyTransformingReps];
      v8 = [v7 count];

      if (v8 == 1)
      {
        [(CRLCanvasRepDragTracker *)self p_selectedInfosRect];
        v10 = v9;
        MinY = v11;
        v14 = v13;
        v16 = v15;
        v17 = [v38 canvas];
        v18 = [v17 isAnchoredAtRight];

        if (v18)
        {
          v40.origin.x = v10;
          v40.origin.y = MinY;
          v40.size.width = v14;
          v40.size.height = v16;
          MaxX = CGRectGetMaxX(v40);
          v41.origin.x = v10;
          v41.origin.y = MinY;
          v41.size.width = v14;
          v41.size.height = v16;
          MinY = CGRectGetMinY(v41);
          v10 = -MaxX;
        }

        v20 = [v38 unitStringForPoint:{v10, MinY}];
        v21 = +[CRLCanvasHUDController sharedHUDController];
        [v21 setLabelText:v20];
        v22 = [v38 canvasView];
        [v21 showHUDForKey:self forTouchPoint:v22 inCanvasView:x withUpwardsNudge:{y, 75.0}];

        self->mHaveShownHUD = 1;
        goto LABEL_9;
      }
    }
  }

  if (self->mHaveShownHUD)
  {
    self->mHaveShownHUD = 0;
    v20 = +[CRLCanvasHUDController sharedHUDController];
    [v20 hideHUDForKey:self];
LABEL_9:
  }

  if (self->mShouldConstrain && ![(CRLCanvasRepDragTracker *)self shouldSuppressConstrainingHUD])
  {
    mConstraintAngle = self->mConstraintAngle;
    if (fabs(mConstraintAngle) >= 0.1 && fabs(mConstraintAngle + -6.28318531) >= 0.1 && fabs(mConstraintAngle + -3.14159265) >= 0.1)
    {
      if (fabs(mConstraintAngle + -1.57079633) >= 0.1 && fabs(mConstraintAngle + -4.71238898) >= 0.1)
      {
        if (self->mSnapLevel == 0.0)
        {
          v24 = +[NSBundle mainBundle];
          v25 = v24;
          v26 = @"Diagonal";
          goto LABEL_19;
        }

        v28 = +[NSBundle mainBundle];
        v25 = v28;
        v29 = @"Diagonal %i pt";
      }

      else
      {
        if (self->mSnapLevel == 0.0)
        {
          v24 = +[NSBundle mainBundle];
          v25 = v24;
          v26 = @"Vertical";
          goto LABEL_19;
        }

        v28 = +[NSBundle mainBundle];
        v25 = v28;
        v29 = @"Vertical %i pt";
      }
    }

    else
    {
      if (self->mSnapLevel == 0.0)
      {
        v24 = +[NSBundle mainBundle];
        v25 = v24;
        v26 = @"Horizontal";
LABEL_19:
        v27 = [v24 localizedStringForKey:v26 value:0 table:0];
LABEL_22:

        [(CRLCanvasHUDController *)self->mSecondHUDController setLabelText:v27];
        mSecondHUDController = self->mSecondHUDController;
        v32 = [(CRLCanvasHUDController *)mSecondHUDController view];
        [v32 frame];
        v34 = sub_10011F334(self->mConstrainingPoint.x, self->mConstrainingPoint.y, (v33 + v33) / 5.0);
        v36 = v35;
        v37 = [v38 canvasView];
        [(CRLCanvasHUDController *)mSecondHUDController showHUDForKey:self forTouchPoint:v37 inCanvasView:v34 withUpwardsNudge:v36, 75.0];

        self->mHaveShownSecondHUD = 1;
        goto LABEL_23;
      }

      v28 = +[NSBundle mainBundle];
      v25 = v28;
      v29 = @"Horizontal %i pt";
    }

    v30 = [v28 localizedStringForKey:v29 value:0 table:0];
    v27 = [NSString localizedStringWithFormat:v30, self->mSnapLevel];

    goto LABEL_22;
  }

  if (self->mHaveShownSecondHUD)
  {
    self->mHaveShownSecondHUD = 0;
    [(CRLCanvasHUDController *)self->mSecondHUDController hideHUDForKey:self];
  }

LABEL_23:
}

- (void)p_hideHUD
{
  if (self->mHaveShownHUD)
  {
    self->mHaveShownHUD = 0;
    v3 = +[CRLCanvasHUDController sharedHUDController];
    [v3 hideHUDForKey:self];
  }

  if (self->mHaveShownSecondHUD)
  {
    self->mHaveShownSecondHUD = 0;
    mSecondHUDController = self->mSecondHUDController;

    [(CRLCanvasHUDController *)mSecondHUDController hideHUDForKey:self];
  }
}

- (void)p_updateGuides
{
  v4 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  v3 = [v4 guideController];
  [(CRLCanvasRepDragTracker *)self p_selectedInfosRect];
  [v3 showGuidesAlignedWithRect:1 shouldRenderX:1 shouldRenderY:?];
}

- (CGRect)p_selectedInfosRect
{
  v2 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v2 dynamicOperationController];
  v8 = [v7 currentlyTransformingReps];

  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v12 = CGPointZero.y;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 shouldShowSizesInRulers])
        {
          [v14 snapRectForDynamicDragWithOffset:{CGPointZero.x, v12}];
          x = sub_10011FC04(x, y, width, height, v15, v16, v17, v18);
          y = v19;
          width = v20;
          height = v21;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)p_makeSiblingRepsOfRep:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->mDelegate && (objc_opt_respondsToSelector() & 1) != 0 && [(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTracker:self shouldApplyToSiblingRepsForRep:v6])
  {
    v8 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    v9 = [v6 info];
    v10 = [v8 repsForInfo:v9];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (*(*(&v16 + 1) + 8 * v15) != v6)
          {
            v7[2](v7);
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)p_delegateIsHandlingDrag
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(CRLCanvasRepDragTrackerDelegate *)mDelegate delegateDisplaysUIForRepDragTracker:self];
}

- (id)p_infosFromReps:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) info];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)p_repsForInfos:(id)a3 fromReps:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 info];
        v15 = [v5 containsObject:v14];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

@end