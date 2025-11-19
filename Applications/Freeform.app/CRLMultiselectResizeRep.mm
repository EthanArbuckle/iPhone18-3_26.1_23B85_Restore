@interface CRLMultiselectResizeRep
- (BOOL)p_representedSelectedLayoutInLayoutState:(int)a3;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)willHandleResizingLayoutForRep:(id)a3;
- (CRLMultiselectResizeRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)additionalRepsToResize;
- (id)dynamicResizeDidBegin;
- (id)p_multiselectLayout;
- (id)p_representedSelectedReps;
- (id)repForRotating;
- (void)documentModeDidChange;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)selectionDidChange;
- (void)willBeRemoved;
@end

@implementation CRLMultiselectResizeRep

- (CRLMultiselectResizeRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v8.receiver = self;
  v8.super_class = CRLMultiselectResizeRep;
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

- (void)selectionDidChange
{
  [(CRLCanvasRep *)self invalidateKnobPositions];
  v3 = [(CRLCanvasRep *)self layout];
  [v3 invalidateFrame];
}

- (id)repForRotating
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 supportsRotation];

  if (v4)
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowKnobs
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 isInDynamicOperation];

  return [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:4]|| (v4 & 1) == 0;
}

- (BOOL)shouldCreateSelectionKnobs
{
  v3 = [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:2];
  v4 = [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:3];
  return ((v3 | v4 | [(CRLMultiselectResizeRep *)self p_representedSelectedLayoutInLayoutState:5]) & 1) == 0;
}

- (BOOL)shouldShowSelectionHighlight
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 isInDynamicOperation];

  return v3 ^ 1;
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 removeDecorator:self];

  v4.receiver = self;
  v4.super_class = CRLMultiselectResizeRep;
  [(CRLCanvasRep *)&v4 willBeRemoved];
}

- (id)p_multiselectLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (BOOL)p_representedSelectedLayoutInLayoutState:(int)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLMultiselectResizeRep *)self p_multiselectLayout];
  v5 = [v4 representedSelectedLayouts];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) layoutState] == a3)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(CRLCanvasRep *)&v16 dynamicResizeDidBegin];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLMultiselectResizeRep *)self p_representedSelectedReps];
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
          v10 = [(CRLMultiselectResizeRep *)v9 dynamicResizeDidBegin];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CRLMultiselectResizeRep *)self p_representedSelectedReps];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10 != self && [*(*(&v13 + 1) + 8 * v9) isSelected])
        {
          [v4 applyNewBoundsToRep:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self invalidateKnobs];
  v12.receiver = self;
  v12.super_class = CRLMultiselectResizeRep;
  [(CRLCanvasRep *)&v12 dynamicResizeDidEndWithTracker:v4];
  v11 = [(CRLCanvasRep *)self layout];
  [v11 invalidatePosition];
}

- (BOOL)willHandleResizingLayoutForRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self parentRep];
  v6 = [v4 parentRep];

  return v5 == v6;
}

- (id)p_representedSelectedReps
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  v5 = [(CRLCanvasRep *)self info];
  v6 = sub_100014370(v4, v5);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 representedSelectedBoardItems];
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
  v7 = [v6 representedSelectedBoardItems];
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

@end