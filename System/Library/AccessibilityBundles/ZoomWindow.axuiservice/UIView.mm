@interface UIView
- (CGPoint)zw_boundsCenter;
- (CGPoint)zw_convertPointFromScreenCoordinates:(CGPoint)a3;
- (CGPoint)zw_convertPointToScreenCoordinates:(CGPoint)a3;
- (CGRect)zw_convertBoundsToScreenCoordinates;
- (CGRect)zw_convertRectFromScreenCoordinates:(CGRect)a3;
- (CGRect)zw_convertRectToScreenCoordinates:(CGRect)a3;
@end

@implementation UIView

- (CGPoint)zw_boundsCenter
{
  [(UIView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(UIView *)self bounds];
  MidY = CGRectGetMidY(v8);
  v5 = MidX;
  result.y = MidY;
  result.x = v5;
  return result;
}

- (CGRect)zw_convertRectToScreenCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self window];
  v9 = v8;
  if (v8)
  {
    [v8 convertRect:self fromView:{x, y, width, height}];
    [v9 _convertRectToSceneReferenceSpace:?];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)zw_convertRectFromScreenCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self window];
  v9 = v8;
  if (v8)
  {
    [v8 _convertRectFromSceneReferenceSpace:{x, y, width, height}];
    [v9 convertRect:self toView:?];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)zw_convertPointToScreenCoordinates:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIView *)self window];
  v7 = v6;
  if (v6)
  {
    [v6 convertPoint:self fromView:{x, y}];
    [v7 _convertPointToSceneReferenceSpace:?];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)zw_convertPointFromScreenCoordinates:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIView *)self window];
  v7 = v6;
  if (v6)
  {
    [v6 _convertPointFromSceneReferenceSpace:{x, y}];
    [v7 convertPoint:self toView:?];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)zw_convertBoundsToScreenCoordinates
{
  [(UIView *)self bounds];

  [(UIView *)self zw_convertRectToScreenCoordinates:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end