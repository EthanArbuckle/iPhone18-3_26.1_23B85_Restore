@interface THImageLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isInRoot;
- (BOOL)isReflowablePresentation;
- (double)p_insetAmount;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4 scale:(double)a5;
- (id)layoutGeometryFromProvider;
- (id)p_expandedLayoutGeometryForFrame:(CGRect)a3;
@end

@implementation THImageLayout

- (BOOL)isExpanded
{
  v3 = [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self]- 1;
  if (self->_delegate)
  {
    v4 = v3 >= 2;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (BOOL)isCompactFlowPresentation
{
  v3 = [(THImageLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THImageLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (BOOL)isInRoot
{
  objc_opt_class();
  [(THImageLayout *)self parent];
  return TSUDynamicCast() != 0;
}

- (double)p_insetAmount
{
  v3 = [(THImageLayout *)self isIntroMedia];
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    v5 = [-[THImageLayout layoutController](self layoutController];
    result = 10.0;
    if ((v5 & 1) == 0)
    {
      v6 = [-[THImageLayout layoutController](self layoutController];
      result = 32.0;
      if (v6)
      {
        return 10.0;
      }
    }
  }

  return result;
}

- (id)p_expandedLayoutGeometryForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(THImageLayout *)self p_insetAmount];
  v9 = v8;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v13 = CGRectInset(v12, v9, v9);
  v11.receiver = self;
  v11.super_class = THImageLayout;
  return [TSDLayout layoutGeometryFittingLayoutGeometry:[(THImageLayout *)&v11 layoutGeometryFromProvider] inFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
}

- (id)layoutGeometryFromProvider
{
  if ([(THImageLayout *)self isExpanded]&& [(THImageLayout *)self isInRoot])
  {
    [(THWWidgetLayoutDelegate *)[(THImageLayout *)self delegate] widgetLayoutBounds];

    return [(THImageLayout *)self p_expandedLayoutGeometryForFrame:?];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = THImageLayout;
    return [(THImageLayout *)&v4 layoutGeometryFromProvider];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = [(THImageLayout *)self p_expandedLayoutGeometryForFrame:0.0, 0.0, a3.width, a3.height, a5];
  v9 = [(THImageLayout *)self p_expandedLayoutGeometryForFrame:0.0, 0.0, width, height];
  [v8 frame];
  v11 = v10;
  v13 = v12;
  [v9 frame];
  result = 1.0;
  if (v11 > 0.0 && v13 > 0.0)
  {
    v17 = v14 / v11;
    v18 = v15 / v13;
    return fminf(v17, v18);
  }

  return result;
}

@end