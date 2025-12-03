@interface THFlowSectionRep
- (void)canvasDidScrollInFlowMode;
@end

@implementation THFlowSectionRep

- (void)canvasDidScrollInFlowMode
{
  if (![objc_msgSend(-[THFlowSectionRep layout](self "layout")])
  {
    [-[THFlowSectionRep interactiveCanvasController](self "interactiveCanvasController")];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(THFlowSectionRep *)self frameInUnscaledCanvas];
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    rect = v20.origin.x;
    MaxY = CGRectGetMaxY(v20);
    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    if (MaxY > CGRectGetMinY(v21))
    {
      v22.origin.x = rect;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MinY = CGRectGetMinY(v22);
      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      if (MinY < CGRectGetMaxY(v23))
      {
        interactiveCanvasController = [(THFlowSectionRep *)self interactiveCanvasController];
        layout = [(THFlowSectionRep *)self layout];

        [interactiveCanvasController invalidateLayoutInBackground:layout];
      }
    }
  }
}

@end