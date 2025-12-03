@interface THImageLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isInRoot;
- (BOOL)isReflowablePresentation;
- (double)p_insetAmount;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize scale:(double)scale;
- (id)layoutGeometryFromProvider;
- (id)p_expandedLayoutGeometryForFrame:(CGRect)frame;
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
  delegate = [(THImageLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THImageLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (BOOL)isInRoot
{
  objc_opt_class();
  [(THImageLayout *)self parent];
  return TSUDynamicCast() != 0;
}

- (double)p_insetAmount
{
  isIntroMedia = [(THImageLayout *)self isIntroMedia];
  result = 0.0;
  if ((isIntroMedia & 1) == 0)
  {
    layoutController = [-[THImageLayout layoutController](self layoutController];
    result = 10.0;
    if ((layoutController & 1) == 0)
    {
      layoutController2 = [-[THImageLayout layoutController](self layoutController];
      result = 32.0;
      if (layoutController2)
      {
        return 10.0;
      }
    }
  }

  return result;
}

- (id)p_expandedLayoutGeometryForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize scale:(double)scale
{
  height = toSize.height;
  width = toSize.width;
  scale = [(THImageLayout *)self p_expandedLayoutGeometryForFrame:0.0, 0.0, size.width, size.height, scale];
  height = [(THImageLayout *)self p_expandedLayoutGeometryForFrame:0.0, 0.0, width, height];
  [scale frame];
  v11 = v10;
  v13 = v12;
  [height frame];
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