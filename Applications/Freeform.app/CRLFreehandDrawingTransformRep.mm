@interface CRLFreehandDrawingTransformRep
- (BOOL)p_isInDrawingMode;
- (BOOL)p_isInDrawingTransformMode;
- (BOOL)p_shouldDisplayAnimatedSelectionOutline;
- (BOOL)p_siblingLayoutInLayoutState:(int)state;
- (BOOL)p_toolkitWantsToSuppressKnobs;
- (BOOL)pathContainsPoint:(CGPoint)point;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)willHandleFreeTransformingLayoutForRep:(id)rep;
- (BOOL)willHandleResizingLayoutForRep:(id)rep;
- (CRLFreehandDrawingTransformRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)additionalRepsToResize;
- (id)dynamicResizeDidBegin;
- (id)overlayRenderables;
- (id)p_calculateLayerRelativePathForAffordance;
- (id)p_siblingReps;
- (id)p_transformLayout;
- (void)documentModeDidChange;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker;
- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)dynamicallyFreeTransformingWithTracker:(id)tracker;
- (void)dynamicallyResizingWithTracker:(id)tracker;
- (void)invalidateSubselectionAffordance;
- (void)willBeRemoved;
@end

@implementation CRLFreehandDrawingTransformRep

- (CRLFreehandDrawingTransformRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingTransformRep;
  v4 = [(CRLCanvasRep *)&v8 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4)
  {
    v4->_viewScaleForCurrentLayerRelativePath = 0.0;
    interactiveCanvasController = [(CRLCanvasRep *)v4 interactiveCanvasController];
    [interactiveCanvasController addDecorator:v5];
  }

  return v5;
}

- (void)invalidateSubselectionAffordance
{
  currentLayerRelativePath = self->_currentLayerRelativePath;
  self->_currentLayerRelativePath = 0;

  self->_viewScaleForCurrentLayerRelativePath = 0.0;
  [(CRLCanvasRenderable *)self->_blackPathRenderable removeAnimationForKey:@"linePhase"];
  [(CRLCanvasRenderable *)self->_whitePathRenderable removeAnimationForKey:@"linePhase"];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateOverlayLayersForRep:self];
}

- (BOOL)pathContainsPoint:(CGPoint)point
{
  currentLayerRelativePath = self->_currentLayerRelativePath;
  if (currentLayerRelativePath)
  {
    LOBYTE(currentLayerRelativePath) = [(CRLBezierPath *)currentLayerRelativePath containsPoint:point.x, point.y];
  }

  return currentLayerRelativePath;
}

- (id)overlayRenderables
{
  v32.receiver = self;
  v32.super_class = CRLFreehandDrawingTransformRep;
  overlayRenderables = [(CRLCanvasRep *)&v32 overlayRenderables];
  v4 = overlayRenderables;
  v5 = &__NSArray0__struct;
  if (overlayRenderables)
  {
    v5 = overlayRenderables;
  }

  v6 = v5;

  if ([(CRLFreehandDrawingTransformRep *)self p_shouldDisplayAnimatedSelectionOutline])
  {
    v7 = +[CRLFreehandDrawingToolMarquee wasLastMarqueeClockwise];
    blackPathRenderable = self->_blackPathRenderable;
    if (!blackPathRenderable)
    {
      v9 = +[CRLColor blackColor];
      v10 = [CRLFreehandDrawingToolMarquee dottedMarqueeRenderableOfColor:v9 offsetDashes:0];
      v11 = self->_blackPathRenderable;
      self->_blackPathRenderable = v10;

      blackPathRenderable = self->_blackPathRenderable;
    }

    v12 = [(CRLCanvasRenderable *)blackPathRenderable animationForKey:@"linePhase"];

    if (!v12)
    {
      v13 = self->_blackPathRenderable;
      v14 = [CRLFreehandDrawingToolMarquee dottedMarqueeRenderableAnimationWithOffsetDashes:0 clockwise:v7];
      [(CRLCanvasRenderable *)v13 addAnimation:v14 forKey:@"linePhase"];
    }

    whitePathRenderable = self->_whitePathRenderable;
    if (!whitePathRenderable)
    {
      v16 = +[CRLColor whiteColor];
      v17 = [CRLFreehandDrawingToolMarquee dottedMarqueeRenderableOfColor:v16 offsetDashes:1];
      v18 = self->_whitePathRenderable;
      self->_whitePathRenderable = v17;

      whitePathRenderable = self->_whitePathRenderable;
    }

    v19 = [(CRLCanvasRenderable *)whitePathRenderable animationForKey:@"linePhase"];

    if (!v19)
    {
      v20 = self->_whitePathRenderable;
      v21 = [CRLFreehandDrawingToolMarquee dottedMarqueeRenderableAnimationWithOffsetDashes:1 clockwise:v7];
      [(CRLCanvasRenderable *)v20 addAnimation:v21 forKey:@"linePhase"];
    }

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController viewScale];
    v24 = v23;

    if (!self->_currentLayerRelativePath || v24 != self->_viewScaleForCurrentLayerRelativePath)
    {
      p_calculateLayerRelativePathForAffordance = [(CRLFreehandDrawingTransformRep *)self p_calculateLayerRelativePathForAffordance];
      currentLayerRelativePath = self->_currentLayerRelativePath;
      self->_currentLayerRelativePath = p_calculateLayerRelativePathForAffordance;

      [(CRLCanvasShapeRenderable *)self->_blackPathRenderable setPath:[(CRLBezierPath *)self->_currentLayerRelativePath CGPath]];
      [(CRLCanvasShapeRenderable *)self->_whitePathRenderable setPath:[(CRLBezierPath *)self->_currentLayerRelativePath CGPath]];
      self->_viewScaleForCurrentLayerRelativePath = v24;
    }

    v27 = +[CATransaction disableActions];
    [CATransaction setDisableActions:1];
    [(CRLCanvasRep *)self layerFrameInScaledCanvas];
    [(CRLCanvasRenderable *)self->_blackPathRenderable setFrame:?];
    [(CRLCanvasRep *)self layerFrameInScaledCanvas];
    [(CRLCanvasRenderable *)self->_whitePathRenderable setFrame:?];
    [CATransaction setDisableActions:v27];
    v28 = self->_whitePathRenderable;
    v33[0] = self->_blackPathRenderable;
    v33[1] = v28;
    v29 = [NSArray arrayWithObjects:v33 count:2];
    v30 = [v6 arrayByAddingObjectsFromArray:v29];

    v6 = v30;
  }

  return v6;
}

- (BOOL)shouldShowKnobs
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  isInDynamicOperation = [interactiveCanvasController isInDynamicOperation];

  LOBYTE(interactiveCanvasController) = [(CRLFreehandDrawingTransformRep *)self p_siblingLayoutInLayoutState:4];
  p_isInDrawingTransformMode = [(CRLFreehandDrawingTransformRep *)self p_isInDrawingTransformMode];
  v6 = isInDynamicOperation ^ 1 | interactiveCanvasController;
  if (!p_isInDrawingTransformMode)
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)shouldCreateSelectionKnobs
{
  v3 = [(CRLFreehandDrawingTransformRep *)self p_siblingLayoutInLayoutState:2];
  v4 = [(CRLFreehandDrawingTransformRep *)self p_siblingLayoutInLayoutState:3];
  v5 = [(CRLFreehandDrawingTransformRep *)self p_siblingLayoutInLayoutState:5];
  return [(CRLFreehandDrawingTransformRep *)self p_isInDrawingTransformMode]& (v3 ^ 1) & ((v4 | v5) ^ 1);
}

- (BOOL)shouldShowSelectionHighlight
{
  if ([(CRLFreehandDrawingTransformRep *)self p_isInDrawingTransformMode])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [interactiveCanvasController isInDynamicOperation] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)documentModeDidChange
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v3 documentModeDidChange];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)willBeRemoved
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController removeDecorator:self];

  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v4 willBeRemoved];
}

- (id)p_transformLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, layout);

  return v5;
}

- (id)p_calculateLayerRelativePathForAffordance
{
  p_transformLayout = [(CRLFreehandDrawingTransformRep *)self p_transformLayout];
  representedShapeLayouts = [p_transformLayout representedShapeLayouts];

  if ([representedShapeLayouts count])
  {
    allObjects = [representedShapeLayouts allObjects];
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v7 = 1.0;
    if (v8 > 0.0)
    {
      [canvas viewScale];
      v7 = v9;
    }

    v10 = [CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:allObjects scaledOutset:20.0 viewScale:v7];
    memset(&v16, 0, sizeof(v16));
    layout = [(CRLCanvasRep *)self layout];
    v12 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    CGAffineTransformInvert(&t1, &v14);
    [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
    CGAffineTransformConcat(&v16, &t1, &v14);

    t1 = v16;
    [v10 transformUsingAffineTransform:&t1];
  }

  else
  {
    v10 = +[CRLBezierPath bezierPath];
  }

  return v10;
}

- (BOOL)p_shouldDisplayAnimatedSelectionOutline
{
  p_toolkitWantsToSuppressKnobs = [(CRLFreehandDrawingTransformRep *)self p_toolkitWantsToSuppressKnobs];
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    v8 = objc_opt_class();
    info = [(CRLCanvasRep *)self info];
    v10 = sub_100014370(v8, info);

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    representedShapeInfos = [v10 representedShapeInfos];
    v12 = [representedShapeInfos countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(representedShapeInfos);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = objc_opt_class();
          v18 = sub_100014370(v17, v16);
          if (v18 && [smartSelectionManager doesCurrentSmartSelectedDrawingShapeItemsContainDrawingShapeItem:v18])
          {

            p_toolkitWantsToSuppressKnobs = 0;
            goto LABEL_13;
          }
        }

        v13 = [representedShapeInfos countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return p_toolkitWantsToSuppressKnobs;
}

- (BOOL)p_toolkitWantsToSuppressKnobs
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  wantsToSuppressKnobsOnTransformReps = [freehandDrawingToolkit wantsToSuppressKnobsOnTransformReps];

  return wantsToSuppressKnobsOnTransformReps;
}

- (BOOL)p_isInDrawingMode
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  return isInDrawingMode;
}

- (BOOL)p_isInDrawingTransformMode
{
  p_isInDrawingMode = [(CRLFreehandDrawingTransformRep *)self p_isInDrawingMode];
  if (p_isInDrawingMode)
  {
    LOBYTE(p_isInDrawingMode) = ![(CRLFreehandDrawingTransformRep *)self p_toolkitWantsToSuppressKnobs];
  }

  return p_isInDrawingMode;
}

- (BOOL)p_siblingLayoutInLayoutState:(int)state
{
  v5 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  parent = [layout parent];
  v8 = sub_100013F00(v5, parent);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [v8 children];
  v10 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(children);
        }

        if ([*(*(&v16 + 1) + 8 * i) layoutState] == state)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)dynamicResizeDidBegin
{
  v16.receiver = self;
  v16.super_class = CRLFreehandDrawingTransformRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v16 dynamicResizeDidBegin];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  p_siblingReps = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v5 = [p_siblingReps countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(p_siblingReps);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 != self && [*(*(&v12 + 1) + 8 * i) isSelected])
        {
          dynamicResizeDidBegin2 = [(CRLFreehandDrawingTransformRep *)v9 dynamicResizeDidBegin];
        }
      }

      v6 = [p_siblingReps countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return dynamicResizeDidBegin;
}

- (void)dynamicallyResizingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v15 dynamicallyResizingWithTracker:trackerCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  p_siblingReps = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [p_siblingReps countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(p_siblingReps);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v11 + 1) + 8 * v9) isSelected])
        {
          [(CRLFreehandDrawingTransformRep *)v10 dynamicallyResizingWithTracker:trackerCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [p_siblingReps countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  p_siblingReps = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [p_siblingReps countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(p_siblingReps);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v12 + 1) + 8 * v9) isSelected])
        {
          [trackerCopy applyNewBoundsToRep:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [p_siblingReps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v11 dynamicResizeDidEndWithTracker:trackerCopy];
}

- (BOOL)willHandleResizingLayoutForRep:(id)rep
{
  repCopy = rep;
  parentRep = [(CRLCanvasRep *)self parentRep];
  parentRep2 = [repCopy parentRep];

  return parentRep == parentRep2;
}

- (id)p_siblingReps
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  parent = [layout parent];
  v6 = sub_100013F00(v3, parent);

  if (v6 && ([v6 info], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = objc_opt_class();
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    info = [v6 info];
    v11 = [interactiveCanvasController repForInfo:info];
    v12 = sub_100013F00(v8, v11);

    childReps = [v12 childReps];
  }

  else
  {
    childReps = 0;
  }

  return childReps;
}

- (id)additionalRepsToResize
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v6 = sub_100014370(v4, info);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  representedShapeInfos = [v6 representedShapeInfos];
  v8 = [representedShapeInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(representedShapeInfos);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        v14 = [interactiveCanvasController repForInfo:v12];
        [v3 addObject:v14];
      }

      v9 = [representedShapeInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v15 dynamicFreeTransformDidBeginWithTracker:trackerCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  p_siblingReps = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [p_siblingReps countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(p_siblingReps);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v11 + 1) + 8 * v9) isSelected])
        {
          [(CRLFreehandDrawingTransformRep *)v10 dynamicFreeTransformDidBeginWithTracker:trackerCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [p_siblingReps countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)dynamicallyFreeTransformingWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v15 dynamicallyFreeTransformingWithTracker:trackerCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  p_siblingReps = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [p_siblingReps countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(p_siblingReps);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v11 + 1) + 8 * v9) isSelected])
        {
          [(CRLFreehandDrawingTransformRep *)v10 dynamicallyFreeTransformingWithTracker:trackerCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [p_siblingReps countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  p_siblingReps = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [p_siblingReps countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(p_siblingReps);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v12 + 1) + 8 * v9) isSelected])
        {
          [trackerCopy applyNewBoundsToRep:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [p_siblingReps countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v11 dynamicFreeTransformDidEndWithTracker:trackerCopy];
}

- (BOOL)willHandleFreeTransformingLayoutForRep:(id)rep
{
  repCopy = rep;
  parentRep = [(CRLCanvasRep *)self parentRep];
  parentRep2 = [repCopy parentRep];

  return parentRep == parentRep2;
}

@end