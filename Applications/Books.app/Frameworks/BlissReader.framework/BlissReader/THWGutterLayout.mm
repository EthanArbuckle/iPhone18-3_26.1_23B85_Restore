@interface THWGutterLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGRect)p_leftThirdBounds;
- (CGRect)p_rightTwoThirdBounds;
- (double)p_scaleToFitStage;
- (id)adjustImageGeometry:(id)geometry withLayoutGeometry:(id)layoutGeometry forLayout:(id)layout;
- (id)childInfosForLayout;
- (id)layoutGeometryForLayout:(id)layout;
- (id)layoutGeometryFromProvider;
- (void)dealloc;
- (void)p_invalidateExternal;
- (void)wasAddedToLayoutController:(id)controller;
@end

@implementation THWGutterLayout

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWGutterLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)layoutGeometryFromProvider
{
  v10.receiver = self;
  v10.super_class = THWGutterLayout;
  layoutGeometryFromProvider = [(THWGutterLayout *)&v10 layoutGeometryFromProvider];
  if ([(THWGutterLayout *)self isCompactFlowPresentation])
  {
    [(THWWidgetLayoutDelegate *)[(THWGutterLayout *)self delegate] widgetLayoutBounds];
    v5 = v4;
    v6 = 414.0;
    if (v4 <= 414.0)
    {
      v6 = v4;
    }

    v7 = v6 + -40.0;
    [-[THWGutterLayout info](self "info")];
    return [[TSDLayoutGeometry alloc] initWithFrame:{(v5 - v7) * 0.5, 0.0, v7, fmax(v8 + 20.0, 120.0)}];
  }

  return layoutGeometryFromProvider;
}

- (id)childInfosForLayout
{
  v5.receiver = self;
  v5.super_class = THWGutterLayout;
  childInfosForLayout = [(THWGutterLayout *)&v5 childInfosForLayout];
  if (-[THWGutterLayout isCompactFlowPresentation](self, "isCompactFlowPresentation") && [-[THWGutterLayout info](self "info")] && objc_msgSend(objc_msgSend(-[THWGutterLayout info](self, "info"), "titleShape"), "containedStorage"))
  {
    childInfosForLayout = [childInfosForLayout mutableCopy];
    [childInfosForLayout removeObjectIdenticalTo:{objc_msgSend(-[THWGutterLayout info](self, "info"), "titleShape")}];
    [childInfosForLayout addObject:{objc_msgSend(objc_msgSend(-[THWGutterLayout info](self, "info"), "titleShape"), "containedStorage")}];
  }

  return childInfosForLayout;
}

- (CGRect)p_leftThirdBounds
{
  [-[THWGutterLayout geometry](self "geometry")];
  v4 = v3 / 3.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v2;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)p_rightTwoThirdBounds
{
  [-[THWGutterLayout geometry](self "geometry")];
  v4 = v3 / 3.0;
  v5 = (v3 + v3) / 3.0;
  v6 = 0.0;
  result.size.height = v2;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (double)p_scaleToFitStage
{
  [objc_msgSend(objc_msgSend(-[THWGutterLayout info](self "info")];
  v4 = v3;
  v6 = v5;
  [(THWGutterLayout *)self p_leftThirdBounds];

  return THScaleNeededToFitSizeInSize(v4, v6, v7, v8);
}

- (id)layoutGeometryForLayout:(id)layout
{
  if (![(THWGutterLayout *)self isCompactFlowPresentation])
  {
    return 0;
  }

  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_opt_class();
  v5 = TSUDynamicCast();
  info = [v4 info];
  if (info != [-[THWGutterLayout info](self "info")] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    info2 = [v4 info];
    if (info2 == [-[THWGutterLayout info](self "info")])
    {
      [objc_msgSend(objc_msgSend(v4 "info")];
      [(THWGutterLayout *)self p_leftThirdBounds];
      TSDFitOrFillSizeInRect();
      goto LABEL_9;
    }

    if (v5)
    {
      [v5 invalidateTextLayout];
      [(THWGutterLayout *)self p_rightTwoThirdBounds];
      v23 = CGRectInset(v22, 10.0, 10.0);
LABEL_9:
      v9 = [[TSDLayoutGeometry alloc] initWithFrame:{v23.origin.x, v23.origin.y, v23.size.width, v23.size.height}];

      return v9;
    }

    return 0;
  }

  v10 = [TSDLayoutGeometry alloc];
  [-[THWGutterLayout info](self "info")];
  v11 = [v10 initWithFrame:?];
  [(THWGutterLayout *)self p_leftThirdBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(THWGutterLayout *)self p_scaleToFitStage];

  return [TSDLayout layoutGeometryFittingLayoutGeometry:v11 inFrame:v13 scale:v15, v17, v19, v20];
}

- (id)adjustImageGeometry:(id)geometry withLayoutGeometry:(id)layoutGeometry forLayout:(id)layout
{
  if (![(THWGutterLayout *)self isCompactFlowPresentation:geometry])
  {
    return geometry;
  }

  objc_opt_class();
  info = [TSUDynamicCast() info];
  if (info != [-[THWGutterLayout info](self "info")])
  {
    return geometry;
  }

  [(THWGutterLayout *)self p_leftThirdBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(THWGutterLayout *)self p_scaleToFitStage];

  return [TSDLayout layoutGeometryFittingLayoutGeometry:geometry inFrame:v10 scale:v12, v14, v16, v17];
}

- (BOOL)isExpanded
{
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1;
  }

  return delegate;
}

- (BOOL)isCompactFlowPresentation
{
  delegate = [(THWGutterLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THWGutterLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (void)p_invalidateExternal
{
  [(THWGutterLayout *)self invalidateFrame];

  [(THWGutterLayout *)self invalidateChildren];
}

- (void)wasAddedToLayoutController:(id)controller
{
  v4.receiver = self;
  v4.super_class = THWGutterLayout;
  [(THWGutterLayout *)&v4 wasAddedToLayoutController:controller];
  [(THWGutterLayout *)self p_invalidateExternal];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end