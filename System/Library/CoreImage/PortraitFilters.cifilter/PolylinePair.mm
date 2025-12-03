@interface PolylinePair
- (CGPoint)axisV;
- (CGPoint)normVbottom;
- (CGPoint)normVtop;
- (CGRect)xyBoundsRect;
- (PolylinePair)initWithMaxsize:(float)maxsize segmentDelta:(float)delta andAxis:(CGPoint)axis;
- (id)createTopBottomRegion;
- (void)accomodatePoint:(CGPoint)point;
- (void)constructBezierWithToleranceTop:(float)top bottom:(float)bottom;
- (void)dealloc;
- (void)expandWithToleranceTop:(float)top bottom:(float)bottom;
- (void)extrapolateAndJoinTopAndBottom;
@end

@implementation PolylinePair

- (PolylinePair)initWithMaxsize:(float)maxsize segmentDelta:(float)delta andAxis:(CGPoint)axis
{
  y = axis.y;
  x = axis.x;
  v19.receiver = self;
  v19.super_class = PolylinePair;
  v9 = [(PolylinePair *)&v19 init];
  v10 = [Polyline alloc];
  *&v11 = maxsize;
  *&v12 = delta;
  v9->_top = [(Polyline *)v10 initWithMaxsize:v11 segmentDelta:v12 andAxis:x, y];
  v13 = [Polyline alloc];
  *&v14 = maxsize;
  *&v15 = delta;
  v9->_bottom = [(Polyline *)v13 initWithMaxsize:v14 segmentDelta:v15 andAxis:x, y];
  [(Polyline *)v9->_top normV];
  v9->normVtop.x = v16;
  v9->normVtop.y = v17;
  v9->normVbottom.x = -v16;
  v9->normVbottom.y = -v17;
  [(Polyline *)v9->_bottom setNormV:?];
  v9->sdelta = delta;
  return v9;
}

- (void)dealloc
{
  CGPathRelease(self->boundsPath);
  v3.receiver = self;
  v3.super_class = PolylinePair;
  [(PolylinePair *)&v3 dealloc];
}

- (CGRect)xyBoundsRect
{
  [(Polyline *)self->_top xyBoundsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(Polyline *)self->_bottom xyBoundsRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;

  return CGRectUnion(*&v19, *&v12);
}

- (void)accomodatePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [[(PolylinePair *)self top] accomodatePoint:point.x, point.y];
  [[(PolylinePair *)self bottom] accomodatePoint:x, y];
  [[(PolylinePair *)self top] s0];
  v7 = v6;
  [[(PolylinePair *)self bottom] s0];
  if (v7 < v8)
  {
    v8 = v7;
  }

  self->s0 = v8;
  [[(PolylinePair *)self top] s1];
  v10 = v9;
  [[(PolylinePair *)self bottom] s1];
  if (v10 >= v11)
  {
    v11 = v10;
  }

  self->s1 = v11;
}

- (void)extrapolateAndJoinTopAndBottom
{
  top = self->_top;
  [(Polyline *)top s0];
  [(Polyline *)top xyFromS:?];
  v5 = v4;
  v7 = v6;
  v8 = self->_top;
  [(Polyline *)v8 s0];
  [(Polyline *)v8 xyFromS:v9 + self->sdelta];
  v11 = v10;
  v13 = v12;
  bottom = self->_bottom;
  [(Polyline *)bottom s0];
  [(Polyline *)bottom xyFromS:?];
  v16 = v15;
  v18 = v17;
  v19 = self->_bottom;
  [(Polyline *)v19 s0];
  [(Polyline *)v19 xyFromS:v20 + self->sdelta];
  v23 = (v13 - v7) / (v11 - v5);
  if (v11 - v5 == 0.0)
  {
    v23 = 0.0;
  }

  v24 = (v22 - v18) / (v21 - v16);
  if (vabdd_f64(v24, v23) >= 0.01)
  {
    v25 = (v7 - v18 + v24 * v16 - v23 * v5) / (v24 - v23);
    v7 = v7 - v23 * (v5 - v25);
  }

  else
  {
    v25 = v5 - self->sdelta;
  }

  [[(PolylinePair *)self top] accomodatePoint:v25, v7];
  [[(PolylinePair *)self bottom] accomodatePoint:v25, v7];
  v26 = self->_top;
  [(Polyline *)v26 s1];
  [(Polyline *)v26 xyFromS:?];
  v28 = v27;
  v30 = v29;
  v31 = self->_top;
  [(Polyline *)v31 s1];
  [(Polyline *)v31 xyFromS:v32 - self->sdelta];
  v34 = v33;
  v36 = v35;
  v37 = self->_bottom;
  [(Polyline *)v37 s1];
  [(Polyline *)v37 xyFromS:?];
  v39 = v38;
  v41 = v40;
  v42 = self->_bottom;
  [(Polyline *)v42 s1];
  [(Polyline *)v42 xyFromS:v43 - self->sdelta];
  v46 = (v36 - v30) / (v34 - v28);
  if (v34 - v28 == 0.0)
  {
    v46 = 0.0;
  }

  v47 = (v45 - v41) / (v44 - v39);
  if (vabdd_f64(v47, v46) >= 0.01)
  {
    v48 = (v30 - v41 + v47 * v39 - v46 * v28) / (v47 - v46);
    v30 = v30 - v46 * (v28 - v48);
  }

  else
  {
    v48 = v28 + self->sdelta;
  }

  v49 = v48 + 0.00100000005;
  [[(PolylinePair *)self top] accomodatePoint:v48 + 0.00100000005, v30];
  bottom = [(PolylinePair *)self bottom];

  [(Polyline *)bottom accomodatePoint:v49, v30];
}

- (void)constructBezierWithToleranceTop:(float)top bottom:(float)bottom
{
  Mutable = CGPathCreateMutable();
  [(Polyline *)self->_top xyFromS:self->s0 + 0.00100000005];
  topCopy = top;
  CGPathMoveToPoint(Mutable, 0, v9 + self->normVtop.x * top, v10 + self->normVtop.y * top);
  sdelta = self->sdelta;
  s1 = self->s1;
  v13 = self->s0 + sdelta + 0.00100000005;
  v14 = v13;
  while (s1 + sdelta * 0.5 + 0.00100000005 >= v14)
  {
    [(Polyline *)self->_top xyFromS:v14];
    CGPathAddLineToPoint(Mutable, 0, v15 + self->normVtop.x * topCopy, v16 + self->normVtop.y * topCopy);
    sdelta = self->sdelta;
    v17 = v14 + sdelta;
    v14 = v17;
    s1 = self->s1;
  }

  v18 = s1 + 0.00100000005;
  [(Polyline *)self->_bottom xyFromS:s1 + 0.00100000005];
  bottomCopy = bottom;
  CGPathAddLineToPoint(Mutable, 0, v20 + self->normVbottom.x * bottom, v21 + self->normVbottom.y * bottom);
  for (i = v18; ; i = v23 - self->sdelta)
  {
    v23 = i;
    if (self->s0 > i)
    {
      break;
    }

    [(Polyline *)self->_bottom xyFromS:v23];
    CGPathAddLineToPoint(Mutable, 0, v24 + self->normVbottom.x * bottomCopy, v25 + self->normVbottom.y * bottomCopy);
  }

  CGPathCloseSubpath(Mutable);
  boundsPath = self->boundsPath;
  if (boundsPath)
  {
    CGPathRelease(boundsPath);
  }

  self->boundsPath = CGPathCreateCopy(Mutable);

  CGPathRelease(Mutable);
}

- (void)expandWithToleranceTop:(float)top bottom:(float)bottom
{
  top = self->_top;
  [[(PolylinePair *)self top] s0];
  [(Polyline *)top xyFromS:v8 + 0.0000999999975];
  topCopy = top;
  v10 = self->normVtop.y * top;
  v12 = v11 + self->normVtop.x * top;
  [[(PolylinePair *)self top] accomodatePoint:v12, v13 + v10];
  [[(PolylinePair *)self top] s0];
  *&v14 = v14 + self->sdelta + 0.0000999999975;
  v15 = *&v14;
  [[(PolylinePair *)self top] s1];
  if (v16 + self->sdelta + -0.0000999999975 > v15)
  {
    do
    {
      [(Polyline *)self->_top xyFromS:v15];
      sdelta = self->sdelta;
      if (v17 - v12 >= sdelta * 0.1)
      {
        v12 = v17 + self->normVtop.x * topCopy;
        [[(PolylinePair *)self top] accomodatePoint:v12, v18 + self->normVtop.y * topCopy];
        sdelta = self->sdelta;
      }

      v20 = v15 + sdelta;
      v15 = v20;
      [[(PolylinePair *)self top] s1];
    }

    while (v21 + self->sdelta + -0.0000999999975 > v15);
  }

  v22 = self->s1 + 0.0000999999975;
  bottom = self->_bottom;
  [(PolylinePair *)self s1];
  [(Polyline *)bottom xyFromS:?];
  bottomCopy = bottom;
  v25 = self->normVbottom.y * bottom;
  [[(PolylinePair *)self bottom] accomodatePoint:v26 + self->normVbottom.x * bottom, v27 + v25];
  for (i = v22 - self->sdelta; ; i = v30 - self->sdelta)
  {
    v29 = i;
    v30 = v29;
    [[(PolylinePair *)self bottom] s0];
    if (v31 > v30)
    {
      break;
    }

    [(Polyline *)self->_bottom xyFromS:v30];
    [[(PolylinePair *)self bottom] accomodatePoint:v32 + self->normVbottom.x * bottomCopy, v33 + self->normVbottom.y * bottomCopy];
  }
}

- (id)createTopBottomRegion
{
  [(PolylinePair *)self xyBoundsRect];
  v7 = [[TopBottomRegion alloc] initWithSegments:(self->s1 - self->s0) boundsRect:v3, v4, v5, v6];
  [(Polyline *)self->_top xyFromS:self->s0 + 0.00100000005];
  *&v8 = v8;
  *&v9 = v9;
  [(TopBottomRegion *)v7 adjustForX:v8 Y:v9];
  sdelta = self->sdelta;
  s1 = self->s1;
  v12 = self->s0 + sdelta + 0.00100000005;
  v13 = v12;
  while (s1 + sdelta * 0.5 + 0.00100000005 >= v13)
  {
    [(Polyline *)self->_top xyFromS:v13];
    *&v14 = v14;
    *&v15 = v15;
    [(TopBottomRegion *)v7 adjustForX:v14 Y:v15];
    sdelta = self->sdelta;
    v16 = v13 + sdelta;
    v13 = v16;
    s1 = self->s1;
  }

  v17 = s1 + 0.00100000005;
  [(Polyline *)self->_bottom xyFromS:s1 + 0.00100000005];
  *&v18 = v18;
  *&v19 = v19;
  [(TopBottomRegion *)v7 adjustForX:v18 Y:v19];
  for (i = v17; ; i = v21 - self->sdelta)
  {
    v21 = i;
    if (self->s0 > i)
    {
      break;
    }

    [(Polyline *)self->_bottom xyFromS:v21];
    *&v22 = v22;
    *&v23 = v23;
    [(TopBottomRegion *)v7 adjustForX:v22 Y:v23];
  }

  return v7;
}

- (CGPoint)normVtop
{
  objc_copyStruct(v4, &self->normVtop, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)normVbottom
{
  objc_copyStruct(v4, &self->normVbottom, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)axisV
{
  objc_copyStruct(v4, &self->axisV, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end