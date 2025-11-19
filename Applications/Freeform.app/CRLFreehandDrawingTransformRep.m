@interface CRLFreehandDrawingTransformRep
- (BOOL)p_isInDrawingMode;
- (BOOL)p_isInDrawingTransformMode;
- (BOOL)p_shouldDisplayAnimatedSelectionOutline;
- (BOOL)p_siblingLayoutInLayoutState:(int)a3;
- (BOOL)p_toolkitWantsToSuppressKnobs;
- (BOOL)pathContainsPoint:(CGPoint)a3;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)willHandleFreeTransformingLayoutForRep:(id)a3;
- (BOOL)willHandleResizingLayoutForRep:(id)a3;
- (CRLFreehandDrawingTransformRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)additionalRepsToResize;
- (id)dynamicResizeDidBegin;
- (id)overlayRenderables;
- (id)p_calculateLayerRelativePathForAffordance;
- (id)p_siblingReps;
- (id)p_transformLayout;
- (void)documentModeDidChange;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicallyFreeTransformingWithTracker:(id)a3;
- (void)dynamicallyResizingWithTracker:(id)a3;
- (void)invalidateSubselectionAffordance;
- (void)willBeRemoved;
@end

@implementation CRLFreehandDrawingTransformRep

- (CRLFreehandDrawingTransformRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingTransformRep;
  v4 = [(CRLCanvasRep *)&v8 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    v4->_viewScaleForCurrentLayerRelativePath = 0.0;
    v6 = [(CRLCanvasRep *)v4 interactiveCanvasController];
    [v6 addDecorator:v5];
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
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v4 invalidateOverlayLayersForRep:self];
}

- (BOOL)pathContainsPoint:(CGPoint)a3
{
  currentLayerRelativePath = self->_currentLayerRelativePath;
  if (currentLayerRelativePath)
  {
    LOBYTE(currentLayerRelativePath) = [(CRLBezierPath *)currentLayerRelativePath containsPoint:a3.x, a3.y];
  }

  return currentLayerRelativePath;
}

- (id)overlayRenderables
{
  v32.receiver = self;
  v32.super_class = CRLFreehandDrawingTransformRep;
  v3 = [(CRLCanvasRep *)&v32 overlayRenderables];
  v4 = v3;
  v5 = &__NSArray0__struct;
  if (v3)
  {
    v5 = v3;
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

    v22 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v22 viewScale];
    v24 = v23;

    if (!self->_currentLayerRelativePath || v24 != self->_viewScaleForCurrentLayerRelativePath)
    {
      v25 = [(CRLFreehandDrawingTransformRep *)self p_calculateLayerRelativePathForAffordance];
      currentLayerRelativePath = self->_currentLayerRelativePath;
      self->_currentLayerRelativePath = v25;

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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 isInDynamicOperation];

  LOBYTE(v3) = [(CRLFreehandDrawingTransformRep *)self p_siblingLayoutInLayoutState:4];
  v5 = [(CRLFreehandDrawingTransformRep *)self p_isInDrawingTransformMode];
  v6 = v4 ^ 1 | v3;
  if (!v5)
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
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 isInDynamicOperation] ^ 1;
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 removeDecorator:self];

  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v4 willBeRemoved];
}

- (id)p_transformLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (id)p_calculateLayerRelativePathForAffordance
{
  v3 = [(CRLFreehandDrawingTransformRep *)self p_transformLayout];
  v4 = [v3 representedShapeLayouts];

  if ([v4 count])
  {
    v5 = [v4 allObjects];
    v6 = [(CRLCanvasRep *)self canvas];
    [v6 viewScale];
    v7 = 1.0;
    if (v8 > 0.0)
    {
      [v6 viewScale];
      v7 = v9;
    }

    v10 = [CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:v5 scaledOutset:20.0 viewScale:v7];
    memset(&v16, 0, sizeof(v16));
    v11 = [(CRLCanvasRep *)self layout];
    v12 = v11;
    if (v11)
    {
      [v11 transformInRoot];
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
  v3 = [(CRLFreehandDrawingTransformRep *)self p_toolkitWantsToSuppressKnobs];
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 layerHost];
    v6 = [v5 asiOSCVC];

    v7 = [v6 smartSelectionManager];
    v8 = objc_opt_class();
    v9 = [(CRLCanvasRep *)self info];
    v10 = sub_100014370(v8, v9);

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [v10 representedShapeInfos];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = objc_opt_class();
          v18 = sub_100014370(v17, v16);
          if (v18 && [v7 doesCurrentSmartSelectedDrawingShapeItemsContainDrawingShapeItem:v18])
          {

            v3 = 0;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (BOOL)p_toolkitWantsToSuppressKnobs
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 freehandDrawingToolkit];
  v4 = [v3 wantsToSuppressKnobsOnTransformReps];

  return v4;
}

- (BOOL)p_isInDrawingMode
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 freehandDrawingToolkit];
  v4 = [v3 isInDrawingMode];

  return v4;
}

- (BOOL)p_isInDrawingTransformMode
{
  v3 = [(CRLFreehandDrawingTransformRep *)self p_isInDrawingMode];
  if (v3)
  {
    LOBYTE(v3) = ![(CRLFreehandDrawingTransformRep *)self p_toolkitWantsToSuppressKnobs];
  }

  return v3;
}

- (BOOL)p_siblingLayoutInLayoutState:(int)a3
{
  v5 = objc_opt_class();
  v6 = [(CRLCanvasRep *)self layout];
  v7 = [v6 parent];
  v8 = sub_100013F00(v5, v7);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 children];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v16 + 1) + 8 * i) layoutState] == a3)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [(CRLCanvasRep *)&v16 dynamicResizeDidBegin];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 != self && [*(*(&v12 + 1) + 8 * i) isSelected])
        {
          v10 = [(CRLFreehandDrawingTransformRep *)v9 dynamicResizeDidBegin];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)dynamicallyResizingWithTracker:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v15 dynamicallyResizingWithTracker:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v11 + 1) + 8 * v9) isSelected])
        {
          [(CRLFreehandDrawingTransformRep *)v10 dynamicallyResizingWithTracker:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
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

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v12 + 1) + 8 * v9) isSelected])
        {
          [v4 applyNewBoundsToRep:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v11 dynamicResizeDidEndWithTracker:v4];
}

- (BOOL)willHandleResizingLayoutForRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self parentRep];
  v6 = [v4 parentRep];

  return v5 == v6;
}

- (id)p_siblingReps
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = [v4 parent];
  v6 = sub_100013F00(v3, v5);

  if (v6 && ([v6 info], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = objc_opt_class();
    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [v6 info];
    v11 = [v9 repForInfo:v10];
    v12 = sub_100013F00(v8, v11);

    v13 = [v12 childReps];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)additionalRepsToResize
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  v5 = [(CRLCanvasRep *)self info];
  v6 = sub_100014370(v4, v5);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 representedShapeInfos];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(CRLCanvasRep *)self interactiveCanvasController];
        v14 = [v13 repForInfo:v12];
        [v3 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v15 dynamicFreeTransformDidBeginWithTracker:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v11 + 1) + 8 * v9) isSelected])
        {
          [(CRLFreehandDrawingTransformRep *)v10 dynamicFreeTransformDidBeginWithTracker:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)dynamicallyFreeTransformingWithTracker:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v15 dynamicallyFreeTransformingWithTracker:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v11 + 1) + 8 * v9) isSelected])
        {
          [(CRLFreehandDrawingTransformRep *)v10 dynamicallyFreeTransformingWithTracker:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CRLFreehandDrawingTransformRep *)self p_siblingReps];
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

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v12 + 1) + 8 * v9) isSelected])
        {
          [v4 applyNewBoundsToRep:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingTransformRep;
  [(CRLCanvasRep *)&v11 dynamicFreeTransformDidEndWithTracker:v4];
}

- (BOOL)willHandleFreeTransformingLayoutForRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self parentRep];
  v6 = [v4 parentRep];

  return v5 == v6;
}

@end