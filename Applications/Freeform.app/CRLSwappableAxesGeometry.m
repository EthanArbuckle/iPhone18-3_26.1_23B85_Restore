@interface CRLSwappableAxesGeometry
+ (id)geometryWithXAxisAlongEdge:(int)a3;
+ (id)standardAxesGeometry;
+ (id)swappedAxesGeometry;
- (BOOL)rect:(CGRect)a3 horizontallyOverlapsRect:(CGRect)a4;
- (BOOL)rect:(CGRect)a3 verticallyOverlapsRect:(CGRect)a4;
- (CGPoint)makePointWithX:(double)a3 Y:(double)a4;
- (CGRect)makeHorizontalSpacingRectBetweenRect:(CGRect)a3 andRect:(CGRect)a4;
- (CGRect)makeRectWithX:(double)a3 Y:(double)a4 width:(double)a5 height:(double)a6;
- (CGRect)makeVerticalSpacingRectBetweenRect:(CGRect)a3 andRect:(CGRect)a4;
- (double)pointX:(CGPoint)a3;
- (double)pointY:(CGPoint)a3;
- (double)rectHeight:(CGRect)a3;
- (double)rectMaxX:(CGRect)a3;
- (double)rectMaxY:(CGRect)a3;
- (double)rectMidX:(CGRect)a3;
- (double)rectMidY:(CGRect)a3;
- (double)rectMinX:(CGRect)a3;
- (double)rectMinY:(CGRect)a3;
- (double)rectWidth:(CGRect)a3;
- (id)description;
- (id)initFlipped:(BOOL)a3;
- (int)edgeForStandardRectEdge:(int)a3;
- (unint64_t)knobTagForStandardKnobTag:(unint64_t)a3;
@end

@implementation CRLSwappableAxesGeometry

- (id)initFlipped:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLSwappableAxesGeometry;
  result = [(CRLSwappableAxesGeometry *)&v5 init];
  if (result)
  {
    *(result + 16) = a3;
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

+ (id)geometryWithXAxisAlongEdge:(int)a3
{
  if ((a3 - 3) < 3)
  {
    v3 = +[CRLSwappableAxesGeometry swappedAxesGeometry];
  }

  else if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[CRLSwappableAxesGeometry standardAxesGeometry];
  }

  return v3;
}

- (unint64_t)knobTagForStandardKnobTag:(unint64_t)a3
{
  if (self->mFlipped)
  {
    if (a3 < 0xA && ((0x3DFu >> a3) & 1) != 0)
    {
      return qword_101462608[a3];
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

  return a3;
}

- (int)edgeForStandardRectEdge:(int)a3
{
  if (self->mFlipped)
  {
    if ((a3 - 1) > 4)
    {
      return 3;
    }

    else
    {
      return dword_101462658[a3 - 1];
    }
  }

  return a3;
}

- (BOOL)rect:(CGRect)a3 horizontallyOverlapsRect:(CGRect)a4
{
  if (self->mFlipped)
  {
    return sub_10011F07C(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }

  else
  {
    return sub_10011F144(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }
}

- (BOOL)rect:(CGRect)a3 verticallyOverlapsRect:(CGRect)a4
{
  if (self->mFlipped)
  {
    return sub_10011F144(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }

  else
  {
    return sub_10011F07C(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }
}

- (double)rectMinX:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetMinY(a3);
  }

  else
  {
    return CGRectGetMinX(a3);
  }
}

- (double)rectMinY:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetMinX(a3);
  }

  else
  {
    return CGRectGetMinY(a3);
  }
}

- (double)rectMidX:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetMidY(a3);
  }

  else
  {
    return CGRectGetMidX(a3);
  }
}

- (double)rectMidY:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetMidX(a3);
  }

  else
  {
    return CGRectGetMidY(a3);
  }
}

- (double)rectMaxX:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetMaxY(a3);
  }

  else
  {
    return CGRectGetMaxX(a3);
  }
}

- (double)rectMaxY:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetMaxX(a3);
  }

  else
  {
    return CGRectGetMaxY(a3);
  }
}

- (double)rectWidth:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetHeight(a3);
  }

  else
  {
    return CGRectGetWidth(a3);
  }
}

- (double)rectHeight:(CGRect)a3
{
  if (self->mFlipped)
  {
    return CGRectGetWidth(a3);
  }

  else
  {
    return CGRectGetHeight(a3);
  }
}

- (CGRect)makeRectWithX:(double)a3 Y:(double)a4 width:(double)a5 height:(double)a6
{
  if (self->mFlipped)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (self->mFlipped)
  {
    a4 = a3;
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (self->mFlipped)
  {
    a6 = a5;
  }

  v8 = v6;
  v9 = v7;
  result.size.height = a6;
  result.size.width = v9;
  result.origin.y = a4;
  result.origin.x = v8;
  return result;
}

- (CGRect)makeHorizontalSpacingRectBetweenRect:(CGRect)a3 andRect:(CGRect)a4
{
  if (self->mFlipped)
  {
    v4 = sub_10011FDEC(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }

  else
  {
    v4 = sub_10011FCA0(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)makeVerticalSpacingRectBetweenRect:(CGRect)a3 andRect:(CGRect)a4
{
  if (self->mFlipped)
  {
    v4 = sub_10011FCA0(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }

  else
  {
    v4 = sub_10011FDEC(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)pointX:(CGPoint)a3
{
  if (self->mFlipped)
  {
    a3.x = a3.y;
  }

  return a3.x;
}

- (double)pointY:(CGPoint)a3
{
  if (!self->mFlipped)
  {
    a3.x = a3.y;
  }

  return a3.x;
}

- (CGPoint)makePointWithX:(double)a3 Y:(double)a4
{
  if (self->mFlipped)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (self->mFlipped)
  {
    a4 = a3;
  }

  v5 = v4;
  result.y = a4;
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