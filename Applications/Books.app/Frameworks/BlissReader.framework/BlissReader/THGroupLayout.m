@interface THGroupLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (id)adjustLayoutGeometry:(id)a3 forLayout:(id)a4;
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
  v3 = [(THGroupLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THGroupLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (id)adjustLayoutGeometry:(id)a3 forLayout:(id)a4
{
  v4 = a3;
  if ([(THGroupLayout *)self isCompactFlowPresentation:a3])
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
      if (v4)
      {
        [v4 transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      v12 = v15;
      CGAffineTransformConcat(&v14, &t1, &v12);
      v15 = v14;
      v10 = [TSDLayoutGeometry alloc];
      [v4 size];
      v14 = v15;
      return [v10 initWithSize:&v14 transform:?];
    }
  }

  return v4;
}

@end