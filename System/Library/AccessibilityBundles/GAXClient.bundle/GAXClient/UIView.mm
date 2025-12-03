@interface UIView
- (CGPoint)gax_convertPointToDeviceCoordinates:(CGPoint)coordinates;
- (CGRect)gax_convertRectFromDeviceCoordinates:(CGRect)coordinates;
- (CGRect)gax_deviceFrame;
- (CGRect)gax_globalFrame;
- (id)gax_findDescendantsMatchingBlock:(id)block shouldStopAtFirstMatch:(BOOL)match;
- (void)gax_setCenter:(CGPoint)center alignWithGrid:(BOOL)grid;
@end

@implementation UIView

- (CGRect)gax_globalFrame
{
  window = [(UIView *)self window];
  [(UIView *)self bounds];
  [(UIView *)self convertRect:window toView:?];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (window)
  {
    [window convertRect:0 toWindow:{v4, v5, v6, v7}];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)gax_deviceFrame
{
  layer = [(UIView *)self layer];
  window = [(UIView *)self window];
  layer2 = [window layer];
  superlayer = [layer2 superlayer];

  [layer bounds];
  [layer convertRect:superlayer toLayer:?];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (superlayer)
  {
    [superlayer convertRect:0 toLayer:{v7, v8, v9, v10}];
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)gax_convertPointToDeviceCoordinates:(CGPoint)coordinates
{
  y = coordinates.y;
  x = coordinates.x;
  layer = [(UIView *)self layer];
  window = [(UIView *)self window];
  layer2 = [window layer];
  superlayer = [layer2 superlayer];

  [layer convertPoint:superlayer toLayer:{x, y}];
  v12 = v10;
  v13 = v11;
  if (superlayer)
  {
    [superlayer convertPoint:0 toLayer:{v10, v11}];
    v12 = v14;
    v13 = v15;
  }

  v16 = v12;
  v17 = v13;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)gax_convertRectFromDeviceCoordinates:(CGRect)coordinates
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  layer = [(UIView *)self layer];
  window = [(UIView *)self window];
  layer2 = [window layer];
  superlayer = [layer2 superlayer];

  if (superlayer)
  {
    [superlayer convertRect:0 fromLayer:{x, y, width, height}];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  [layer convertRect:superlayer fromLayer:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)gax_setCenter:(CGPoint)center alignWithGrid:(BOOL)grid
{
  y = center.y;
  x = center.x;
  if (grid)
  {
    memset(&v18, 0, sizeof(v18));
    [(UIView *)self transform];
    v17 = v18;
    IsIdentity = CGAffineTransformIsIdentity(&v17);
    if (!IsIdentity)
    {
      v8 = *&CGAffineTransformIdentity.c;
      *&v17.a = *&CGAffineTransformIdentity.a;
      *&v17.c = v8;
      *&v17.tx = *&CGAffineTransformIdentity.tx;
      [(UIView *)self setTransform:&v17];
    }

    [(UIView *)self center];
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeTranslation(&v17, x - v9, y - v10);
    [(UIView *)self frame];
    v16 = v17;
    v21 = CGRectApplyAffineTransform(v20, &v16);
    width = v21.size.width;
    height = v21.size.height;
    v22 = CGRectIntegral(v21);
    v13 = v22.origin.x;
    v14 = v22.origin.y;
    v22.size.width = width;
    v22.size.height = height;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = v13;
    v23.origin.y = v14;
    v23.size.width = width;
    v23.size.height = height;
    [(UIView *)self setCenter:MidX, CGRectGetMidY(v23)];
    if (!IsIdentity)
    {
      v16 = v18;
      [(UIView *)self setTransform:&v16];
    }
  }

  else
  {

    [(UIView *)self setCenter:?];
  }
}

- (id)gax_findDescendantsMatchingBlock:(id)block shouldStopAtFirstMatch:(BOOL)match
{
  matchCopy = match;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = +[NSMutableArray array];
    v8 = [NSMutableArray arrayWithObject:self];
    if ([v8 count])
    {
      while (1)
      {
        v9 = [v8 objectAtIndex:0];
        if (blockCopy[2](blockCopy, v9))
        {
          [v7 addObject:v9];
        }

        if (matchCopy && [v7 count] == &dword_0 + 1)
        {
          break;
        }

        subviews = [v9 subviews];
        [v8 addObjectsFromArray:subviews];

        [v8 removeObjectAtIndex:0];
        if (![v8 count])
        {
          goto LABEL_11;
        }
      }
    }

LABEL_11:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end