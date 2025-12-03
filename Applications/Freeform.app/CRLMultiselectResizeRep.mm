@interface CRLMultiselectResizeRep
- (BOOL)p_representedSelectedLayoutInLayoutState:(int)state;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)willHandleResizingLayoutForRep:(id)rep;
- (CRLMultiselectResizeRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)additionalRepsToResize;
- (id)dynamicResizeDidBegin;
- (id)p_multiselectLayout;
- (id)p_representedSelectedReps;
- (id)repForRotating;
- (void)documentModeDidChange;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)selectionDidChange;
- (void)willBeRemoved;
@end

@implementation CRLMultiselectResizeRep

- (CRLMultiselectResizeRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v8.receiver = self;
  v8.super_class = CRLMultiselectResizeRep;
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

- (void)selectionDidChange
{
  [(CRLCanvasRep *)self invalidateKnobPositions];
  layout = [(CRLCanvasRep *)self layout];
  [layout invalidateFrame];
}

- (id)repForRotating
{
  layout = [(CRLCanvasRep *)self layout];
  supportsRotation = [layout supportsRotation];

  if (supportsRotation)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)shouldShowKnobs
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  isInDynamicOperation = [interactiveCanvasController isInDynamicOperation];

  return [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:4]|| (isInDynamicOperation & 1) == 0;
}

- (BOOL)shouldCreateSelectionKnobs
{
  v3 = [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:2];
  v4 = [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:3];
  return ((v3 | v4 | [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:5]) & 1) == 0;
}

- (BOOL)shouldShowSelectionHighlight
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  isInDynamicOperation = [interactiveCanvasController isInDynamicOperation];

  return isInDynamicOperation ^ 1;
}

- (void)documentModeDidChange
{
  v3.receiver = self;
  v3.super_class = CRLMultiselectResizeRep;
  [(CRLCanvasRep *)&v3 documentModeDidChange];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)willBeRemoved
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController removeDecorator:self];

  v4.receiver = self;
  v4.super_class = CRLMultiselectResizeRep;
  [(CRLCanvasRep *)&v4 willBeRemoved];
}

- (id)p_multiselectLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, layout);

  return v5;
}

- (BOOL)p_representedSelectedLayoutInLayoutState:(int)state
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  p_multiselectLayout = [(CRLMultiselectResizeRep *)self p_multiselectLayout];
  representedSelectedLayouts = [p_multiselectLayout representedSelectedLayouts];

  v6 = [representedSelectedLayouts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(representedSelectedLayouts);
        }

        if ([*(*(&v12 + 1) + 8 * i) layoutState] == state)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [representedSelectedLayouts countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)dynamicResizeDidBegin
{
  v16.receiver = self;
  v16.super_class = CRLMultiselectResizeRep;
  dynamicResizeDidBegin = [(CRLCanvasRep *)&v16 dynamicResizeDidBegin];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  p_representedSelectedReps = [(CRLMultiselectResizeRep *)self p_representedSelectedReps];
  v5 = [p_representedSelectedReps countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(p_representedSelectedReps);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 != self && [*(*(&v12 + 1) + 8 * i) isSelected])
        {
          dynamicResizeDidBegin2 = [(CRLMultiselectResizeRep *)v9 dynamicResizeDidBegin];
        }
      }

      v6 = [p_representedSelectedReps countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return dynamicResizeDidBegin;
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  p_representedSelectedReps = [(CRLMultiselectResizeRep *)self p_representedSelectedReps];
  v6 = [p_representedSelectedReps countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(p_representedSelectedReps);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v13 + 1) + 8 * v9) isSelected])
        {
          [trackerCopy applyNewBoundsToRep:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [p_representedSelectedReps countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  v12.receiver = self;
  v12.super_class = CRLMultiselectResizeRep;
  [(CRLCanvasRep *)&v12 dynamicResizeDidEndWithTracker:trackerCopy];
  layout = [(CRLCanvasRep *)self layout];
  [layout invalidatePosition];
}

- (BOOL)willHandleResizingLayoutForRep:(id)rep
{
  repCopy = rep;
  parentRep = [(CRLCanvasRep *)self parentRep];
  parentRep2 = [repCopy parentRep];

  return parentRep == parentRep2;
}

- (id)p_representedSelectedReps
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v6 = sub_100014370(v4, info);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  representedSelectedBoardItems = [v6 representedSelectedBoardItems];
  v8 = [representedSelectedBoardItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(representedSelectedBoardItems);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        v14 = [interactiveCanvasController repForInfo:v12];
        [v3 addObject:v14];
      }

      v9 = [representedSelectedBoardItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v3;
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
  representedSelectedBoardItems = [v6 representedSelectedBoardItems];
  v8 = [representedSelectedBoardItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(representedSelectedBoardItems);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        v14 = [interactiveCanvasController repForInfo:v12];
        [v3 addObject:v14];
      }

      v9 = [representedSelectedBoardItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v3;
}

@end