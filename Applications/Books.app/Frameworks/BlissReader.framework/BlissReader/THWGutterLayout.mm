@interface THWGutterLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGRect)p_leftThirdBounds;
- (CGRect)p_rightTwoThirdBounds;
- (double)p_scaleToFitStage;
- (id)adjustImageGeometry:(id)a3 withLayoutGeometry:(id)a4 forLayout:(id)a5;
- (id)childInfosForLayout;
- (id)layoutGeometryForLayout:(id)a3;
- (id)layoutGeometryFromProvider;
- (void)dealloc;
- (void)p_invalidateExternal;
- (void)wasAddedToLayoutController:(id)a3;
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
  v3 = [(THWGutterLayout *)&v10 layoutGeometryFromProvider];
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

  return v3;
}

- (id)childInfosForLayout
{
  v5.receiver = self;
  v5.super_class = THWGutterLayout;
  v3 = [(THWGutterLayout *)&v5 childInfosForLayout];
  if (-[THWGutterLayout isCompactFlowPresentation](self, "isCompactFlowPresentation") && [-[THWGutterLayout info](self "info")] && objc_msgSend(objc_msgSend(-[THWGutterLayout info](self, "info"), "titleShape"), "containedStorage"))
  {
    v3 = [v3 mutableCopy];
    [v3 removeObjectIdenticalTo:{objc_msgSend(-[THWGutterLayout info](self, "info"), "titleShape")}];
    [v3 addObject:{objc_msgSend(objc_msgSend(-[THWGutterLayout info](self, "info"), "titleShape"), "containedStorage")}];
  }

  return v3;
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

- (id)layoutGeometryForLayout:(id)a3
{
  if (![(THWGutterLayout *)self isCompactFlowPresentation])
  {
    return 0;
  }

  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = [v4 info];
  if (v6 != [-[THWGutterLayout info](self "info")] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v4 info];
    if (v7 == [-[THWGutterLayout info](self "info")])
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

- (id)adjustImageGeometry:(id)a3 withLayoutGeometry:(id)a4 forLayout:(id)a5
{
  if (![(THWGutterLayout *)self isCompactFlowPresentation:a3])
  {
    return a3;
  }

  objc_opt_class();
  v7 = [TSUDynamicCast() info];
  if (v7 != [-[THWGutterLayout info](self "info")])
  {
    return a3;
  }

  [(THWGutterLayout *)self p_leftThirdBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(THWGutterLayout *)self p_scaleToFitStage];

  return [TSDLayout layoutGeometryFittingLayoutGeometry:a3 inFrame:v10 scale:v12, v14, v16, v17];
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
  v3 = [(THWGutterLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THWGutterLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (void)p_invalidateExternal
{
  [(THWGutterLayout *)self invalidateFrame];

  [(THWGutterLayout *)self invalidateChildren];
}

- (void)wasAddedToLayoutController:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWGutterLayout;
  [(THWGutterLayout *)&v4 wasAddedToLayoutController:a3];
  [(THWGutterLayout *)self p_invalidateExternal];
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
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

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
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