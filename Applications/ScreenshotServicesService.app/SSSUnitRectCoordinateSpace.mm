@interface SSSUnitRectCoordinateSpace
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)_rectInViewSpaceForUnitRect:(CGRect)a3;
- (CGRect)_unitRectOfRectInViewSpace:(CGRect)a3;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (SSSUnitRectCoordinateSpace)initWithView:(id)a3;
@end

@implementation SSSUnitRectCoordinateSpace

- (SSSUnitRectCoordinateSpace)initWithView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSSUnitRectCoordinateSpace;
  v5 = [(SSSUnitRectCoordinateSpace *)&v8 init];
  view = v5->_view;
  v5->_view = v4;

  return v5;
}

- (CGRect)_unitRectOfRectInViewSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self->_view bounds];
  v9 = (x - v7) / v8;
  v12 = (y - v10) / v11;
  v13 = width / v8;
  v14 = height / v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v9;
  return result;
}

- (CGRect)_rectInViewSpaceForUnitRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self->_view bounds];
  v9 = v7 + x * v8;
  v12 = v10 + y * v11;
  v13 = width * v8;
  v14 = height * v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v9;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  [a4 convertRect:self fromCoordinateSpace:{a3.x, a3.y, 1.0, 1.0}];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  [(SSSUnitRectCoordinateSpace *)self convertRect:a4 fromCoordinateSpace:a3.x, a3.y, 1.0, 1.0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(SSSUnitRectCoordinateSpace *)self _rectInViewSpaceForUnitRect:x, y, width, height];
  [v9 convertRect:self->_view fromCoordinateSpace:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  [(UIView *)self->_view convertRect:a4 fromCoordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(SSSUnitRectCoordinateSpace *)self _unitRectOfRectInViewSpace:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)bounds
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end