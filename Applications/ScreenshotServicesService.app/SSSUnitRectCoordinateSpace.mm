@interface SSSUnitRectCoordinateSpace
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)_rectInViewSpaceForUnitRect:(CGRect)rect;
- (CGRect)_unitRectOfRectInViewSpace:(CGRect)space;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (SSSUnitRectCoordinateSpace)initWithView:(id)view;
@end

@implementation SSSUnitRectCoordinateSpace

- (SSSUnitRectCoordinateSpace)initWithView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = SSSUnitRectCoordinateSpace;
  v5 = [(SSSUnitRectCoordinateSpace *)&v8 init];
  view = v5->_view;
  v5->_view = viewCopy;

  return v5;
}

- (CGRect)_unitRectOfRectInViewSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
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

- (CGRect)_rectInViewSpaceForUnitRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  [space convertRect:self fromCoordinateSpace:{point.x, point.y, 1.0, 1.0}];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  [(SSSUnitRectCoordinateSpace *)self convertRect:space fromCoordinateSpace:point.x, point.y, 1.0, 1.0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  [(SSSUnitRectCoordinateSpace *)self _rectInViewSpaceForUnitRect:x, y, width, height];
  [spaceCopy convertRect:self->_view fromCoordinateSpace:?];
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

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  [(UIView *)self->_view convertRect:space fromCoordinateSpace:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

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