@interface CACGPathCodingSegment
- (CACGPathCodingSegment)initWithCGPathElement:(const CGPathElement *)element;
- (CACGPathCodingSegment)initWithCoder:(id)coder;
- (void)addToCGPath:(CGPath *)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CACGPathCodingSegment

- (CACGPathCodingSegment)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CACGPathCodingSegment;
  v4 = [(CACGPathCodingSegment *)&v15 init];
  if (v4)
  {
    v5 = [coder decodeIntForKey:@"LKCGPathType"];
    v4->_type = v5;
    if (v5 <= 3)
    {
      v6 = 0xCu >> (v5 & 0xF);
      v7 = 8u >> (v5 & 0xF);
      [coder decodeDoubleForKey:@"LKCGPathPoint0_x"];
      v4->_points[0].x = v8;
      [coder decodeDoubleForKey:@"LKCGPathPoint0_y"];
      v4->_points[0].y = v9;
      if (v6)
      {
        [coder decodeDoubleForKey:@"LKCGPathPoint1_x"];
        v4->_points[1].x = v10;
        [coder decodeDoubleForKey:@"LKCGPathPoint1_y"];
        v4->_points[1].y = v11;
      }

      if (v7)
      {
        [coder decodeDoubleForKey:@"LKCGPathPoint2_x"];
        v4->_points[2].x = v12;
        [coder decodeDoubleForKey:@"LKCGPathPoint2_y"];
        v4->_points[2].y = v13;
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_type forKey:@"LKCGPathType"];
  type = self->_type;
  if (type <= 3)
  {
    v6 = 0xCu >> type;
    v7 = 8u >> type;
    [coder encodeDouble:@"LKCGPathPoint0_x" forKey:self->_points[0].x];
    [coder encodeDouble:@"LKCGPathPoint0_y" forKey:self->_points[0].y];
    if (v6)
    {
      [coder encodeDouble:@"LKCGPathPoint1_x" forKey:self->_points[1].x];
      [coder encodeDouble:@"LKCGPathPoint1_y" forKey:self->_points[1].y];
    }

    if (v7)
    {
      [coder encodeDouble:@"LKCGPathPoint2_x" forKey:self->_points[2].x];
      y = self->_points[2].y;

      [coder encodeDouble:@"LKCGPathPoint2_y" forKey:y];
    }
  }
}

- (void)addToCGPath:(CGPath *)path
{
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        CGPathAddLineToPoint(path, 0, self->_points[0].x, self->_points[0].y);
      }
    }

    else
    {
      CGPathMoveToPoint(path, 0, self->_points[0].x, self->_points[0].y);
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        CGPathAddQuadCurveToPoint(path, 0, self->_points[0].x, self->_points[0].y, self->_points[1].x, self->_points[1].y);
        break;
      case 3:
        CGPathAddCurveToPoint(path, 0, self->_points[0].x, self->_points[0].y, self->_points[1].x, self->_points[1].y, self->_points[2].x, self->_points[2].y);
        break;
      case 4:
        CGPathCloseSubpath(path);
        break;
    }
  }
}

- (CACGPathCodingSegment)initWithCGPathElement:(const CGPathElement *)element
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CACGPathCodingSegment;
  result = [(CACGPathCodingSegment *)&v6 init];
  if (result)
  {
    type = element->type;
    result->_type = element->type;
    if (type >= kCGPathElementAddQuadCurveToPoint)
    {
      if (type != kCGPathElementAddQuadCurveToPoint)
      {
        if (type != kCGPathElementAddCurveToPoint)
        {
          return result;
        }

        result->_points[2] = element->points[2];
      }

      result->_points[1] = element->points[1];
    }

    result->_points[0] = *element->points;
  }

  return result;
}

@end