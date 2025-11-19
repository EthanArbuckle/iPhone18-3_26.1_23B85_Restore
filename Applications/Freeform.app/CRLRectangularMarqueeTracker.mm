@interface CRLRectangularMarqueeTracker
- (BOOL)p_shouldUpdateMarqueeFrameForDragDistance:(double)a3;
- (CGPoint)currentUnscaledDragPoint;
- (CGPoint)startingUnscaledPoint;
- (CGRect)p_currentUnscaledMarqueeRect;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLRectangularMarqueeTracker)initWithInteractiveCanvasController:(id)a3;
- (NSArray)decoratorOverlayRenderables;
- (void)beginMarquee;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)commitChangesForReps:(id)a3;
- (void)p_beginMarquee;
- (void)p_beginMarqueePressAnimation;
- (void)p_refreshRectsForReps;
- (void)p_setPendingSelection;
- (void)p_updateMarquee;
@end

@implementation CRLRectangularMarqueeTracker

- (CRLRectangularMarqueeTracker)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CRLRectangularMarqueeTracker;
  v5 = [(CRLRectangularMarqueeTracker *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
    v7 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    scaledRectsForReps = v6->_scaledRectsForReps;
    v6->_scaledRectsForReps = v7;

    v9 = objc_alloc_init(NSMutableSet);
    pendingSelection = v6->_pendingSelection;
    v6->_pendingSelection = v9;

    size = CGRectNull.size;
    v6->_selectionRectScaled.origin = CGRectNull.origin;
    v6->_selectionRectScaled.size = size;
    v12 = +[CRLCanvasShapeRenderable renderable];
    selectionOverlay = v6->_selectionOverlay;
    v6->_selectionOverlay = v12;

    WeakRetained = objc_loadWeakRetained(&v6->_interactiveCanvasController);
    [(CRLCanvasRenderable *)v6->_selectionOverlay setDelegate:WeakRetained];

    v15 = [CRLColor colorWithRed:0.17 green:0.44 blue:1.0 alpha:1.0];
    v16 = [CRLColor colorWithRed:0.12 green:0.31 blue:0.7 alpha:0.2];
    -[CRLCanvasRenderable setBorderColor:](v6->_selectionOverlay, "setBorderColor:", [v15 CGColor]);
    [(CRLCanvasRenderable *)v6->_selectionOverlay setBorderWidth:1.0];
    -[CRLCanvasRenderable setBackgroundColor:](v6->_selectionOverlay, "setBackgroundColor:", [v16 CGColor]);
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v6 selector:"p_refreshRectsForReps" name:@"CRLCanvasUpdateScrollNotification" object:v4];
  }

  return v6;
}

- (CGRect)p_currentUnscaledMarqueeRect
{
  if (self->_startedSelection)
  {
    x = sub_10011EC88(self->_startingUnscaledPoint.x, self->_startingUnscaledPoint.y, self->_currentUnscaledDragPoint.x);
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)beginMarquee
{
  if (!self->_startedSelection)
  {
    self->_startedSelection = 1;
    [(CRLRectangularMarqueeTracker *)self p_beginMarquee];
  }
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  v4 = a3;
  if (self->_startedSelection)
  {
    if (!self->_wasCurrentUnscaledDragPointSetExternally)
    {
      goto LABEL_6;
    }

    v5 = v4;
    [(CRLRectangularMarqueeTracker *)self p_updateMarquee];
  }

  else
  {
    self->_startedSelection = 1;
    v5 = v4;
    [(CRLRectangularMarqueeTracker *)self p_beginMarquee];
  }

  v4 = v5;
LABEL_6:
}

- (void)commitChangesForReps:(id)a3
{
  if (!self->_startedSelection)
  {
    return;
  }

  size = CGRectZero.size;
  self->_selectionRectScaled.origin = CGRectZero.origin;
  self->_selectionRectScaled.size = size;
  [(CRLCanvasRenderable *)self->_selectionOverlay setBounds:a3, self->_selectionRectScaled.origin.x, self->_selectionRectScaled.origin.y, self->_selectionRectScaled.size.width, self->_selectionRectScaled.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained removeDecorator:self];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v6 removeObserver:self name:@"CRLCanvasUpdateScrollNotification" object:v7];

  if ([(NSMutableSet *)self->_pendingSelection count])
  {
    if (![(CRLRectangularMarqueeTracker *)self shouldSuppressContextMenu])
    {
      v8 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v9 = [v8 layerHost];
      v10 = [v9 asiOSCVC];

      [v10 performSelector:"showDefaultEditUIForCurrentSelection" withObject:0 afterDelay:0.0];
LABEL_8:
    }
  }

  else if (![(CRLRectangularMarqueeTracker *)self shouldSuppressRestoringOriginalSelectionIfNothingSelected])
  {
    selectionBeforeMarquee = self->_selectionBeforeMarquee;
    v10 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v12 = [v10 editorController];
    [v12 setSelectionPath:selectionBeforeMarquee];

    goto LABEL_8;
  }

  v13 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v14 = [v13 layerHost];
  v15 = [v14 asiOSCVC];
  v18 = [v15 i_quickSelectViewController];

  if (v18)
  {
    [v18 unhideUIIfAppropriateAfterHidingForWindowRect];
  }

  v16 = +[NSNotificationCenter defaultCenter];
  v17 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v16 postNotificationName:@"CRLMarqueeDidEndNotification" object:v17 userInfo:0];
}

- (NSArray)decoratorOverlayRenderables
{
  selectionOverlay = self->_selectionOverlay;
  v2 = [NSArray arrayWithObjects:&selectionOverlay count:1];

  return v2;
}

- (void)p_updateMarquee
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained convertUnscaledToBoundsPoint:{self->_startingUnscaledPoint.x, self->_startingUnscaledPoint.y}];
  v5 = v4;
  v7 = v6;

  v8 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v8 convertUnscaledToBoundsPoint:{self->_currentUnscaledDragPoint.x, self->_currentUnscaledDragPoint.y}];
  v10 = v9;
  v12 = v11;

  v79.origin.x = sub_10011EC88(v5, v7, v10);
  v80 = CGRectIntegral(v79);
  self->_selectionRectScaled = v80;
  if (self->_shouldCenterResizeMarqueeRect)
  {
    v13 = sub_10011F340(v80.size.width, v80.size.height, 2.0);
    self->_selectionRectScaled.origin.x = sub_10011EC70(v5, v7, v13);
    self->_selectionRectScaled.origin.y = v14;
    self->_selectionRectScaled.size.width = v15;
    self->_selectionRectScaled.size.height = v16;
  }

  if ([(CRLRectangularMarqueeTracker *)self p_shouldUpdateMarqueeFrameForDragDistance:sub_100120090(v5, v7, v10, v12)])
  {
    [(CRLCanvasRenderable *)self->_selectionOverlay setFrame:self->_selectionRectScaled.origin.x, self->_selectionRectScaled.origin.y, self->_selectionRectScaled.size.width, self->_selectionRectScaled.size.height];
  }

  v17 = objc_alloc_init(NSMutableSet);
  v18 = objc_alloc_init(NSMutableSet);
  v19 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v19 convertBoundsToUnscaledRect:{self->_selectionRectScaled.origin.x, self->_selectionRectScaled.origin.y, self->_selectionRectScaled.size.width, self->_selectionRectScaled.size.height}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v28 = self->_scaledRectsForReps;
  v29 = [(NSMapTable *)v28 countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v75;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v74 + 1) + 8 * i);
        v34 = [(NSMapTable *)self->_scaledRectsForReps objectForKeyedSubscript:v33, v74];
        [v34 CGRectValue];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v43 = [v33 info];
        v82.origin.x = v36;
        v82.origin.y = v38;
        v82.size.width = v40;
        v82.size.height = v42;
        v44 = CGRectContainsRect(self->_selectionRectScaled, v82);
        v45 = v18;
        if (!v44)
        {
          v83.origin.x = v36;
          v83.origin.y = v38;
          v83.size.width = v40;
          v83.size.height = v42;
          v46 = CGRectIntersectsRect(self->_selectionRectScaled, v83);
          v45 = v17;
          if (v46)
          {
            if ([v33 intersectsUnscaledRect:{v21, v23, v25, v27}])
            {
              v45 = v18;
            }

            else
            {
              v45 = v17;
            }
          }
        }

        [v45 addObject:v43];
      }

      v30 = [(NSMapTable *)v28 countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v30);
  }

  [(NSMutableSet *)self->_pendingSelection minusSet:v17];
  [(NSMutableSet *)self->_pendingSelection unionSet:v18];
  if (self->_shouldInvertOriginalSelection)
  {
    [(NSMutableSet *)self->_pendingSelection crl_xorSet:self->_originalSelection];
  }

  [(CRLRectangularMarqueeTracker *)self p_setPendingSelection];
  self->_lastUnscaledPoint = self->_currentUnscaledDragPoint;
  v47 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v48 = [v47 layerHost];
  v49 = [v48 asiOSCVC];
  v50 = [v49 i_quickSelectViewController];

  if (v50)
  {
    [(CRLRectangularMarqueeTracker *)self p_currentUnscaledMarqueeRect];
    x = v81.origin.x;
    y = v81.origin.y;
    width = v81.size.width;
    height = v81.size.height;
    if (!CGRectIsNull(v81))
    {
      v55 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      [v55 convertUnscaledToBoundsRect:{x, y, width, height}];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v64 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v65 = [v64 canvasView];
      [v65 convertRect:0 toView:{v57, v59, v61, v63}];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      [v50 temporarilyHideUIIfAppropriateForWindowRect:{v67, v69, v71, v73}];
    }
  }
}

- (void)p_beginMarquee
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v3 postNotificationName:@"CRLMarqueeDidBeginNotification" object:WeakRetained userInfo:0];

  v5 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v5 addDecorator:self];

  v6 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v7 = [v6 editorController];
  v8 = [v7 selectionPath];
  selectionBeforeMarquee = self->_selectionBeforeMarquee;
  self->_selectionBeforeMarquee = v8;

  [(CRLRectangularMarqueeTracker *)self p_refreshRectsForReps];
  v10 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v32 = [v10 canvasEditor];

  v11 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  p_startingUnscaledPoint = &self->_startingUnscaledPoint;
  v13 = [v11 hitRep:{self->_startingUnscaledPoint.x, self->_startingUnscaledPoint.y}];

  v14 = [v13 repForSelecting];
  v15 = v14;
  if (self->_shouldInvertOriginalSelection || v14 && [v14 isSelectedIgnoringLocking])
  {
    v16 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v17 = [v16 infosForCurrentSelectionPath];

    v18 = [v17 objectsPassingTest:&stru_101871D68];

    [(NSMutableSet *)self->_pendingSelection unionSet:v18];
  }

  else
  {
    v18 = [v32 selectionPathWithInfo:0];
    v19 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v20 = [v19 editorController];
    [v20 setSelectionPath:v18];
  }

  v21 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v22 = [v21 selectionModelTranslator];
  v23 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v24 = [v23 editorController];
  v25 = [v24 selectionPath];
  v26 = [v22 boardItemsForSelectionPath:v25];
  originalSelection = self->_originalSelection;
  self->_originalSelection = v26;

  if (v15)
  {
    if (self->_shouldInvertOriginalSelection)
    {
      v28 = [v15 isSelectedIgnoringLocking];
      pendingSelection = self->_pendingSelection;
      v30 = [v15 info];
      if (v28)
      {
        [(NSMutableSet *)pendingSelection removeObject:v30];
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      if ([v15 isSelected])
      {
LABEL_14:
        [(CRLRectangularMarqueeTracker *)self p_setPendingSelection];
        goto LABEL_15;
      }

      pendingSelection = self->_pendingSelection;
      v30 = [v15 info];
    }

    [(NSMutableSet *)pendingSelection addObject:v30];
    goto LABEL_13;
  }

LABEL_15:
  if (![(CRLRectangularMarqueeTracker *)self shouldSuppressAnimationWhenMarqueeBegins])
  {
    [(CRLRectangularMarqueeTracker *)self p_beginMarqueePressAnimation];
  }

  v31 = *p_startingUnscaledPoint;
  self->_lastUnscaledPoint = *p_startingUnscaledPoint;
  self->_currentUnscaledDragPoint = v31;
}

- (void)p_setPendingSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v18 = [WeakRetained editorController];

  v4 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v5 = [v4 canvasEditor];

  v6 = [v18 selectionPath];
  v7 = [v6 mostSpecificSelectionOfClass:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    pendingSelection = self->_pendingSelection;
    v10 = [v7 boardItems];
    v11 = [v10 anyObject];
    [(NSMutableSet *)pendingSelection removeObject:v11];
  }

  v12 = [(NSMutableSet *)self->_pendingSelection count];
  if (!v8 || v12)
  {
    v17 = [v5 selectionPathWithInfos:self->_pendingSelection];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v14 = [v13 selectionModelTranslator];
    v15 = [v8 containerGroups];
    v16 = [v15 lastObject];
    v17 = [v14 selectionPathForNothingSelectedInsideGroup:v16];
  }

  [v18 setSelectionPath:v17];
}

- (void)p_refreshRectsForReps
{
  v3 = NSAllMapTableKeys(self->_scaledRectsForReps);
  v4 = [v3 mutableCopy];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained topLevelRepsForDragSelecting];

  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v35 + 1) + 8 * v10) repForSelecting];
        v12 = v11;
        if (v11 && ([v11 demandsExclusiveSelection] & 1) == 0)
        {
          v13 = NSAllMapTableKeys(self->_scaledRectsForReps);
          v14 = [v13 containsObject:v12];

          if ((v14 & 1) == 0)
          {
            v15 = objc_loadWeakRetained(&self->_interactiveCanvasController);
            [v12 frameInUnscaledCanvasForMarqueeSelecting];
            [v15 convertUnscaledToBoundsRect:?];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            scaledRectsForReps = self->_scaledRectsForReps;
            v25 = [NSValue valueWithCGRect:v17, v19, v21, v23];
            [(NSMapTable *)scaledRectsForReps setObject:v25 forKey:v12];
          }

          [v4 removeObject:v12];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v4;
  v27 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      v30 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(NSMapTable *)self->_scaledRectsForReps removeObjectForKey:*(*(&v31 + 1) + 8 * v30), v31];
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v28);
  }
}

- (void)p_beginMarqueePressAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained convertUnscaledToBoundsPoint:{self->_startingUnscaledPoint.x, self->_startingUnscaledPoint.y}];
  v5 = v4;
  v7 = v6;

  v8 = sub_10011EC70(v5, v7, 1.0);
  v10 = v9;
  v12 = v11;
  [(CRLCanvasRenderable *)self->_selectionOverlay setFrame:v8];
  [(CRLCanvasRenderable *)self->_selectionOverlay removeAnimationForKey:@"kCRLMarqueeStartAnimationKey"];
  v20 = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
  v13 = [NSValue valueWithCGSize:80.0, 80.0];
  [v20 setFromValue:v13];

  v14 = [NSValue valueWithCGSize:v10, v12];
  [v20 setToValue:v14];

  LODWORD(v15) = 1036831949;
  LODWORD(v16) = 0.25;
  LODWORD(v17) = 0.25;
  LODWORD(v18) = 1.0;
  v19 = [CAMediaTimingFunction functionWithControlPoints:v16];
  [v20 setTimingFunction:v19];

  [v20 setDuration:0.3];
  [v20 setDelegate:self];
  [(CRLCanvasRenderable *)self->_selectionOverlay addAnimation:v20 forKey:@"kCRLMarqueeStartAnimationKey"];
}

- (BOOL)p_shouldUpdateMarqueeFrameForDragDistance:(double)a3
{
  v5 = [(CRLCanvasRenderable *)self->_selectionOverlay animationForKey:@"kCRLMarqueeStartAnimationKey"];

  v6 = a3 >= 20.0 || v5 == 0;
  v7 = v6;
  if (v6)
  {
    [(CRLRectangularMarqueeTracker *)self p_stopMarqueePressAnimation];
  }

  return v7;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

- (CGPoint)startingUnscaledPoint
{
  x = self->_startingUnscaledPoint.x;
  y = self->_startingUnscaledPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentUnscaledDragPoint
{
  x = self->_currentUnscaledDragPoint.x;
  y = self->_currentUnscaledDragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end