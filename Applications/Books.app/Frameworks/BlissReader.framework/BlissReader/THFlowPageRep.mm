@interface THFlowPageRep
- (id)p_desiredVisibleLayoutsForRect:(CGRect)rect;
- (void)canvasDidScrollInFlowMode;
- (void)updateChildrenFromLayout;
@end

@implementation THFlowPageRep

- (void)canvasDidScrollInFlowMode
{
  if ([-[THFlowPageRep layout](self "layout")])
  {
    if ([-[THFlowPageRep layout](self "layout")])
    {
      v3 = [-[THFlowPageRep childReps](self "childReps")];
      [-[THFlowPageRep interactiveCanvasController](self "interactiveCanvasController")];
      if (([-[THFlowPageRep p_desiredVisibleLayoutsForRect:](self "p_desiredVisibleLayoutsForRect:{"isEqualToArray:", v3}")] & 1) == 0)
      {
        [-[THFlowPageRep interactiveCanvasController](self "interactiveCanvasController")];
      }
    }

    layout = [(THFlowPageRep *)self layout];

    [layout canvasDidScroll];
  }
}

- (void)updateChildrenFromLayout
{
  [-[THFlowPageRep interactiveCanvasController](self "interactiveCanvasController")];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_11C200;
  v4[3] = &unk_45DBC0;
  v4[4] = self;
  -[THPageRep setChildReps:](self, "setChildReps:", [-[THFlowPageRep p_desiredVisibleLayoutsForRect:](self "p_desiredVisibleLayoutsForRect:{"arrayPiecewiseTransformedBy:", v4}")]);
  [-[THFlowPageRep childReps](self "childReps")];
}

- (id)p_desiredVisibleLayoutsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [-[THFlowPageRep layout](self "layout")];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 frameInRoot];
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        if (CGRectIntersectsRect(v21, v22))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

@end