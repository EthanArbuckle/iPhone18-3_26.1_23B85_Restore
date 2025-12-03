@interface CRLSwappableAxesGeometry
+ (id)geometryWithXAxisAlongEdge:(int)edge;
+ (id)standardAxesGeometry;
+ (id)swappedAxesGeometry;
- (BOOL)rect:(CGRect)rect horizontallyOverlapsRect:(CGRect)overlapsRect;
- (BOOL)rect:(CGRect)rect verticallyOverlapsRect:(CGRect)overlapsRect;
- (CGPoint)makePointWithX:(double)x Y:(double)y;
- (CGRect)makeHorizontalSpacingRectBetweenRect:(CGRect)rect andRect:(CGRect)andRect;
- (CGRect)makeRectWithX:(double)x Y:(double)y width:(double)width height:(double)height;
- (CGRect)makeVerticalSpacingRectBetweenRect:(CGRect)rect andRect:(CGRect)andRect;
- (double)pointX:(CGPoint)x;
- (double)pointY:(CGPoint)y;
- (double)rectHeight:(CGRect)height;
- (double)rectMaxX:(CGRect)x;
- (double)rectMaxY:(CGRect)y;
- (double)rectMidX:(CGRect)x;
- (double)rectMidY:(CGRect)y;
- (double)rectMinX:(CGRect)x;
- (double)rectMinY:(CGRect)y;
- (double)rectWidth:(CGRect)width;
- (id)description;
- (id)initFlipped:(BOOL)flipped;
- (int)edgeForStandardRectEdge:(int)edge;
- (unint64_t)knobTagForStandardKnobTag:(unint64_t)tag;
@end

@implementation CRLSwappableAxesGeometry

- (id)initFlipped:(BOOL)flipped
{
  v5.receiver = self;
  v5.super_class = CRLSwappableAxesGeometry;
  result = [(CRLSwappableAxesGeometry *)&v5 init];
  if (result)
  {
    *(result + 16) = flipped;
  }

  return result;
}

+ (id)standardAxesGeometry
{
  v2 = qword_101A34458;
  if (!qword_101A34458)
  {
    v3 = [[CRLSwappableAxesGeometry alloc] initFlipped:0];
    v4 = qword_101A34458;
    qword_101A34458 = v3;

    v2 = qword_101A34458;
  }

  return v2;
}

+ (id)swappedAxesGeometry
{
  v2 = qword_101A34460;
  if (!qword_101A34460)
  {
    v3 = [[CRLSwappableAxesGeometry alloc] initFlipped:1];
    v4 = qword_101A34460;
    qword_101A34460 = v3;

    v2 = qword_101A34460;
  }

  return v2;
}

+ (id)geometryWithXAxisAlongEdge:(int)edge
{
  if ((edge - 3) < 3)
  {
    v3 = +[CRLSwappableAxesGeometry swappedAxesGeometry];
  }

  else if (edge > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[CRLSwappableAxesGeometry standardAxesGeometry];
  }

  return v3;
}

- (unint64_t)knobTagForStandardKnobTag:(unint64_t)tag
{
  if (self->mFlipped)
  {
    if (tag < 0xA && ((0x3DFu >> tag) & 1) != 0)
    {
      return qword_101462608[tag];
    }

    else
    {
      v11 = [CRLAssertionHandler _atomicIncrementAssertCount:v8];
      if (qword_101AD5A10 != -1)
      {
        sub_10130ED28();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130ED3C(v11, v12);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10130EDE8();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v13, v11);
      }

      v14 = [NSString stringWithUTF8String:"[CRLSwappableAxesGeometry knobTagForStandardKnobTag:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSwappableAxesGeometry.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:88 isFatal:0 description:"Unexpected knob tag"];

      return 0;
    }
  }

  return tag;
}

- (int)edgeForStandardRectEdge:(int)edge
{
  if (self->mFlipped)
  {
    if ((edge - 1) > 4)
    {
      return 3;
    }

    else
    {
      return dword_101462658[edge - 1];
    }
  }

  return edge;
}

- (BOOL)rect:(CGRect)rect horizontallyOverlapsRect:(CGRect)overlapsRect
{
  if (self->mFlipped)
  {
    return sub_10011F07C(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, overlapsRect.origin.x, overlapsRect.origin.y, overlapsRect.size.width, overlapsRect.size.height);
  }

  else
  {
    return sub_10011F144(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, overlapsRect.origin.x, overlapsRect.origin.y, overlapsRect.size.width, overlapsRect.size.height);
  }
}

- (BOOL)rect:(CGRect)rect verticallyOverlapsRect:(CGRect)overlapsRect
{
  if (self->mFlipped)
  {
    return sub_10011F144(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, overlapsRect.origin.x, overlapsRect.origin.y, overlapsRect.size.width, overlapsRect.size.height);
  }

  else
  {
    return sub_10011F07C(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, overlapsRect.origin.x, overlapsRect.origin.y, overlapsRect.size.width, overlapsRect.size.height);
  }
}

- (double)rectMinX:(CGRect)x
{
  if (self->mFlipped)
  {
    return CGRectGetMinY(x);
  }

  else
  {
    return CGRectGetMinX(x);
  }
}

- (double)rectMinY:(CGRect)y
{
  if (self->mFlipped)
  {
    return CGRectGetMinX(y);
  }

  else
  {
    return CGRectGetMinY(y);
  }
}

- (double)rectMidX:(CGRect)x
{
  if (self->mFlipped)
  {
    return CGRectGetMidY(x);
  }

  else
  {
    return CGRectGetMidX(x);
  }
}

- (double)rectMidY:(CGRect)y
{
  if (self->mFlipped)
  {
    return CGRectGetMidX(y);
  }

  else
  {
    return CGRectGetMidY(y);
  }
}

- (double)rectMaxX:(CGRect)x
{
  if (self->mFlipped)
  {
    return CGRectGetMaxY(x);
  }

  else
  {
    return CGRectGetMaxX(x);
  }
}

- (double)rectMaxY:(CGRect)y
{
  if (self->mFlipped)
  {
    return CGRectGetMaxX(y);
  }

  else
  {
    return CGRectGetMaxY(y);
  }
}

- (double)rectWidth:(CGRect)width
{
  if (self->mFlipped)
  {
    return CGRectGetHeight(width);
  }

  else
  {
    return CGRectGetWidth(width);
  }
}

- (double)rectHeight:(CGRect)height
{
  if (self->mFlipped)
  {
    return CGRectGetWidth(height);
  }

  else
  {
    return CGRectGetHeight(height);
  }
}

- (CGRect)makeRectWithX:(double)x Y:(double)y width:(double)width height:(double)height
{
  if (self->mFlipped)
  {
    xCopy = y;
  }

  else
  {
    xCopy = x;
  }

  if (self->mFlipped)
  {
    y = x;
    widthCopy = height;
  }

  else
  {
    widthCopy = width;
  }

  if (self->mFlipped)
  {
    height = width;
  }

  v8 = xCopy;
  v9 = widthCopy;
  result.size.height = height;
  result.size.width = v9;
  result.origin.y = y;
  result.origin.x = v8;
  return result;
}

- (CGRect)makeHorizontalSpacingRectBetweenRect:(CGRect)rect andRect:(CGRect)andRect
{
  if (self->mFlipped)
  {
    v4 = sub_10011FDEC(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, andRect.origin.x, andRect.origin.y, andRect.size.width, andRect.size.height);
  }

  else
  {
    v4 = sub_10011FCA0(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, andRect.origin.x, andRect.origin.y, andRect.size.width, andRect.size.height);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)makeVerticalSpacingRectBetweenRect:(CGRect)rect andRect:(CGRect)andRect
{
  if (self->mFlipped)
  {
    v4 = sub_10011FCA0(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, andRect.origin.x, andRect.origin.y, andRect.size.width, andRect.size.height);
  }

  else
  {
    v4 = sub_10011FDEC(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, andRect.origin.x, andRect.origin.y, andRect.size.width, andRect.size.height);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)pointX:(CGPoint)x
{
  if (self->mFlipped)
  {
    x.x = x.y;
  }

  return x.x;
}

- (double)pointY:(CGPoint)y
{
  if (!self->mFlipped)
  {
    y.x = y.y;
  }

  return y.x;
}

- (CGPoint)makePointWithX:(double)x Y:(double)y
{
  if (self->mFlipped)
  {
    xCopy = y;
  }

  else
  {
    xCopy = x;
  }

  if (self->mFlipped)
  {
    y = x;
  }

  v5 = xCopy;
  result.y = y;
  result.x = v5;
  return result;
}

- (id)description
{
  if (self->mFlipped)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [NSString stringWithFormat:@"<CRLSwappableAxesGeometry: %p isFlipped: %@>", self, v2];
}

@end