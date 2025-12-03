@interface CPZoneBorderIntersection
- (CGRect)intersectionRect;
- (id)initSuper;
- (int64_t)comparePositionLengthwise:(id)lengthwise;
@end

@implementation CPZoneBorderIntersection

- (int64_t)comparePositionLengthwise:(id)lengthwise
{
  x = self->intersectionRect.origin.x;
  [lengthwise intersectionRect];
  v7 = v6;
  y = self->intersectionRect.origin.y;
  [lengthwise intersectionRect];
  if (vabdd_f64(v7, x) < vabdd_f64(v9, y))
  {
    v10 = y == v9;
    if (y >= v9)
    {
      return !v10;
    }

    return -1;
  }

  v10 = x == v7;
  if (x < v7)
  {
    return -1;
  }

  return !v10;
}

- (CGRect)intersectionRect
{
  x = self->intersectionRect.origin.x;
  y = self->intersectionRect.origin.y;
  width = self->intersectionRect.size.width;
  height = self->intersectionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)initSuper
{
  v3.receiver = self;
  v3.super_class = CPZoneBorderIntersection;
  return [(CPZoneBorderIntersection *)&v3 init];
}

@end