@interface UIView
- (CGPoint)zw_boundsCenter;
- (CGPoint)zw_convertPointFromScreenCoordinates:(CGPoint)coordinates;
- (CGPoint)zw_convertPointToScreenCoordinates:(CGPoint)coordinates;
- (CGRect)zw_convertBoundsToScreenCoordinates;
- (CGRect)zw_convertRectFromScreenCoordinates:(CGRect)coordinates;
- (CGRect)zw_convertRectToScreenCoordinates:(CGRect)coordinates;
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

- (CGRect)zw_convertRectToScreenCoordinates:(CGRect)coordinates
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  window = [(UIView *)self window];
  v9 = window;
  if (window)
  {
    [window convertRect:self fromView:{x, y, width, height}];
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

- (CGRect)zw_convertRectFromScreenCoordinates:(CGRect)coordinates
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  window = [(UIView *)self window];
  v9 = window;
  if (window)
  {
    [window _convertRectFromSceneReferenceSpace:{x, y, width, height}];
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

- (CGPoint)zw_convertPointToScreenCoordinates:(CGPoint)coordinates
{
  y = coordinates.y;
  x = coordinates.x;
  window = [(UIView *)self window];
  v7 = window;
  if (window)
  {
    [window convertPoint:self fromView:{x, y}];
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

- (CGPoint)zw_convertPointFromScreenCoordinates:(CGPoint)coordinates
{
  y = coordinates.y;
  x = coordinates.x;
  window = [(UIView *)self window];
  v7 = window;
  if (window)
  {
    [window _convertPointFromSceneReferenceSpace:{x, y}];
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