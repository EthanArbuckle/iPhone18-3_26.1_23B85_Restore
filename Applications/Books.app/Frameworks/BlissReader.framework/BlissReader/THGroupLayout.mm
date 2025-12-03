@interface THGroupLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (id)adjustLayoutGeometry:(id)geometry forLayout:(id)layout;
@end

@implementation THGroupLayout

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
  delegate = [(THGroupLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THGroupLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (id)adjustLayoutGeometry:(id)geometry forLayout:(id)layout
{
  geometryCopy = geometry;
  if ([(THGroupLayout *)self isCompactFlowPresentation:geometry])
  {
    objc_opt_class();
    [(THGroupLayout *)self parent];
    v6 = TSUDynamicCast();
    if (v6)
    {
      [v6 maximumFrameSizeForChild:self];
      v8 = v7;
      [-[THGroupLayout layoutGeometryFromInfo](self "layoutGeometryFromInfo")];
      memset(&v15, 0, sizeof(v15));
      CGAffineTransformMakeScale(&v15, v8 / v9, v8 / v9);
      if (geometryCopy)
      {
        [geometryCopy transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      v12 = v15;
      CGAffineTransformConcat(&v14, &t1, &v12);
      v15 = v14;
      v10 = [TSDLayoutGeometry alloc];
      [geometryCopy size];
      v14 = v15;
      return [v10 initWithSize:&v14 transform:?];
    }
  }

  return geometryCopy;
}

@end