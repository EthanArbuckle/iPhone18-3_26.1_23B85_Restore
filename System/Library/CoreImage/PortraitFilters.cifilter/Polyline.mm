@interface Polyline
- (CGPoint)axisV;
- (CGPoint)normV;
- (CGPoint)xyFromS2:(float)a3;
- (CGPoint)xyFromS:(double)a3;
- (CGRect)xyBoundsRect;
- (Polyline)initWithMaxsize:(float)a3 segmentDelta:(float)a4 andAxis:(CGPoint)a5;
- (void)accomodatePoint:(CGPoint)a3;
- (void)bridgeGapsLinear;
- (void)bridgeGapsMinimum;
- (void)constructBezierWithToleranceOutside:(float)a3 andInside:(float)a4;
- (void)dealloc;
- (void)lengthenStart:(float)a3 end:(float)a4;
- (void)printBounds;
- (void)printPoints;
- (void)printRect;
@end

@implementation Polyline

- (Polyline)initWithMaxsize:(float)a3 segmentDelta:(float)a4 andAxis:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v17.receiver = self;
  v17.super_class = Polyline;
  v9 = [(Polyline *)&v17 init];
  v10 = v9;
  v9->maxsize = a3;
  v9->sdelta = a4;
  v11 = ceil((a3 / a4) + 0.001);
  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  v9->nsegs = v11;
  v9->yyData = [[NSMutableData alloc] initWithLength:4 * v9->nsegs];
  v12 = sqrt(y * y + x * x);
  v13 = v12;
  v14 = 0.0;
  v15 = 0.0;
  if (v13 >= 0.01)
  {
    v14 = x / v13;
    v15 = y / v13;
  }

  v10->axisV.x = v14;
  v10->axisV.y = v15;
  v10->normV.x = -v15;
  v10->normV.y = v14;
  v10->s0 = v10->maxsize;
  v10->s1 = 0.0;
  v10->ymax = 0.0;
  v10->xmax = 0.0;
  v10->ymin = a3;
  v10->xmin = a3;
  return v10;
}

- (void)dealloc
{
  boundsPath = self->boundsPath;
  if (boundsPath)
  {
    CGPathRelease(boundsPath);
  }

  self->yyData = 0;
  v4.receiver = self;
  v4.super_class = Polyline;
  [(Polyline *)&v4 dealloc];
}

- (void)accomodatePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = a3.y * self->axisV.y + a3.x * self->axisV.x;
  v7 = a3.y * self->normV.y + x * self->normV.x;
  if (v6 <= 0.0)
  {
    v6 = 0.0;
  }

  sdelta = self->sdelta;
  v9 = (v6 / sdelta + 0.001);
  v10 = self->nsegs - 1;
  v11 = v10 < v9;
  if (v10 >= v9)
  {
    v10 = (v6 / sdelta + 0.001);
  }

  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = (v6 / sdelta + 0.001);
  }

  v13 = sdelta * v12;
  v14 = [(Polyline *)self yy];
  v15 = v14[v12];
  if (v15 == 0.0)
  {
    v15 = v7;
  }

  if (v15 <= v7)
  {
    v15 = v7;
  }

  v14[v12] = v15;
  if (v13 < self->s0)
  {
    self->s0 = v13;
  }

  if (v13 > self->s1)
  {
    self->s1 = v13;
  }

  xmin = self->xmin;
  if (x < xmin)
  {
    xmin = x;
    self->xmin = xmin;
  }

  xmax = self->xmax;
  if (x > xmax)
  {
    xmax = x;
    self->xmax = xmax;
  }

  ymin = self->ymin;
  if (y < ymin)
  {
    ymin = y;
    self->ymin = ymin;
  }

  ymax = self->ymax;
  if (y > ymax)
  {
    ymax = y;
    self->ymax = ymax;
  }

  self->xyBoundsRect.origin.x = xmin;
  self->xyBoundsRect.origin.y = ymin;
  self->xyBoundsRect.size.width = (xmax - xmin);
  self->xyBoundsRect.size.height = (ymax - ymin);
}

- (void)printPoints
{
  puts("\nPolyline points");
  v3 = (self->s0 / self->sdelta);
  v4 = [(Polyline *)self yy];
  printf("list001 = { {%f,%f}", self->sdelta * v3, v4[v3]);
  sdelta = self->sdelta;
  for (i = self->s0 + sdelta; i <= self->s1 + 0.001; i = i + sdelta)
  {
    printf(",{%f,%f}", sdelta * (i / sdelta), v4[(i / sdelta)]);
    sdelta = self->sdelta;
  }

  printf(" };\n Show[ g01 = Graphics[{ Line[list001], Hue[.4], AbsolutePointSize[5], Map[Point, list001]}]] ");
}

- (void)printBounds
{
  puts("\nPolyline bounds");
  printf("s  %f , %f, x and y {%f,%f },{%f, %f} ", self->s0, self->s1, self->xmin, self->xmax, self->ymin, self->ymax);

  putchar(10);
}

- (void)printRect
{
  x = self->xyBoundsRect.origin.x;
  y = self->xyBoundsRect.origin.y;
  v4 = x;
  v5 = self->xyBoundsRect.size.width + x;
  v6 = y;
  v7 = self->xyBoundsRect.size.height + y;
  puts("\n bounds Rect (polyline printRect)");
  printf("Line[{{%f,%f},{%f,%f},{%f,%f},{%f,%f},{%f,%f}}] ", v4, v6, v5, v6, v5, v7, v4, v7, v4, v6);

  putchar(10);
}

- (void)bridgeGapsLinear
{
  v3 = [(Polyline *)self yy];
  s1 = self->s1;
  v5 = self->s0 + 0.0000999999975;
  v6 = v5;
  if (s1 >= v5)
  {
    sdelta = self->sdelta;
    nsegs = self->nsegs;
    v9 = v3 + 1;
    do
    {
      v10 = (v6 / sdelta + 0.0000999999975);
      if (nsegs > v10)
      {
        if (v3[v10] == 0.0)
        {
          v11 = &v9[v10];
          v12 = 1;
          v13 = (v6 / sdelta + 0.0000999999975);
          while (1)
          {
            if (sdelta * v13 > s1)
            {
              v14 = v12;
              goto LABEL_12;
            }

            if (nsegs <= ++v13)
            {
              break;
            }

            v12 = 0;
            v14 = 0;
            v15 = *v11++;
            if (v15 != 0.0)
            {
              goto LABEL_12;
            }
          }

          v13 = nsegs;
        }

        else
        {
          v14 = 1;
          v13 = (v6 / sdelta + 0.0000999999975);
LABEL_12:
          if (v14)
          {
            goto LABEL_19;
          }
        }

        v16 = v13 - v10;
        if (v3[v10] == 0.0)
        {
          v17 = v3[v10 - 1];
          v19 = v3[v13] - v17;
          v20 = &v9[v10];
          v21 = 1;
          do
          {
            v18 = 1.0 / (v16 + 1);
            *(v20 - 1) = v17 + ((v18 * v21) * v19);
            v22 = *v20++;
            ++v21;
          }

          while (v22 == 0.0);
        }

        v5 = v6 + v16 * sdelta;
      }

LABEL_19:
      v5 = sdelta + v5;
      v6 = v5;
    }

    while (s1 >= v5);
  }
}

- (void)bridgeGapsMinimum
{
  v3 = [(Polyline *)self yy];
  sdelta = self->sdelta;
  s1 = self->s1;
  v6 = self->s0 + sdelta;
  for (i = v6; s1 > i; i = v12)
  {
    v8 = (i / sdelta);
    if (v3[v8] == 0.0)
    {
      v9 = v3[v8 - 1];
      v10 = &v3[v8 + 1];
      do
      {
        *(v10 - 1) = v9;
        v11 = *v10++;
      }

      while (v11 == 0.0);
    }

    v12 = sdelta + i;
  }
}

- (CGPoint)xyFromS:(double)a3
{
  v5 = [(Polyline *)self yy];
  v6 = 0.0;
  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  sdelta = self->sdelta;
  v8 = (v6 / sdelta);
  if (self->nsegs - 1 < v8)
  {
    v8 = self->nsegs - 1;
  }

  v9 = sdelta * v8;
  v10 = vaddq_f64(vmulq_n_f64(self->normV, v5[v8]), vmulq_n_f64(self->axisV, v9));
  v11 = v10.f64[1];
  result.x = v10.f64[0];
  result.y = v11;
  return result;
}

- (CGPoint)xyFromS2:(float)a3
{
  v5 = [(Polyline *)self yy];
  sdelta = self->sdelta;
  v7 = (a3 / sdelta);
  if (self->nsegs - 1 < v7)
  {
    v7 = self->nsegs - 1;
  }

  v8 = sdelta * v7;
  v9 = self->axisV.x * v8;
  y = self->normV.y;
  v11 = v5[v7] - v9;
  v12 = v9;
  v13 = (v11 / y);
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)lengthenStart:(float)a3 end:(float)a4
{
  [(Polyline *)self xyFromS:self->s0];
  v7 = v6;
  v9 = v8;
  [(Polyline *)self xyFromS:self->s0 + self->sdelta];
  v11 = v7 - v10;
  v13 = v9 - v12;
  v14 = sqrt(v13 * v13 + v11 * v11);
  v15 = v14;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  if (v15 >= 0.01)
  {
    v17 = v11 / v15;
    v18 = v13 / v15;
  }

  v19 = a3;
  v20 = v18 * a3;
  v21 = v7 + v17 * a3;
  [(Polyline *)self accomodatePoint:v21, v9 + v20];
  [(Polyline *)self setS0:v21];
  [(Polyline *)self xyFromS:self->s1 - self->sdelta];
  v23 = v22;
  v25 = v24;
  [(Polyline *)self xyFromS:self->s1];
  v28 = v26 - v23;
  v29 = v27 - v25;
  v30 = sqrt(v29 * v29 + v28 * v28);
  v31 = v30;
  v32 = v30 < 0.01;
  v33 = 0.0;
  if (!v32)
  {
    v16 = v28 / v31;
    v33 = v29 / v31;
  }

  v34 = v26 + v16 * v19;
  [(Polyline *)self accomodatePoint:v34, v27 + v33 * v19];
  v35 = v34;
  [(Polyline *)self setS1:self->sdelta * (v35 / self->sdelta + 0.001)];

  [(Polyline *)self bridgeGapsLinear];
}

- (void)constructBezierWithToleranceOutside:(float)a3 andInside:(float)a4
{
  [(Polyline *)self xyFromS:self->s0];
  v7 = a3;
  v8 = self->normV.y * a3;
  v10 = v9 + self->normV.x * a3;
  v12 = v11 + v8;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v10, v12);
  sdelta = self->sdelta;
  s1 = self->s1;
  v16 = self->s0 + sdelta;
  v17 = v16;
  while (s1 + sdelta > v17)
  {
    [(Polyline *)self xyFromS:v17];
    CGPathAddLineToPoint(Mutable, 0, v18 + self->normV.x * v7, v19 + self->normV.y * v7);
    sdelta = self->sdelta;
    v20 = v17 + sdelta;
    v17 = v20;
    s1 = self->s1;
  }

  [(Polyline *)self xyFromS:s1 + 0.00100000005];
  v22 = v21;
  v24 = v23;
  [(Polyline *)self xyFromS:self->s1 - self->sdelta];
  v26 = v22 - v25;
  v28 = v24 - v27;
  *&v25 = sqrt(v28 * v28 + v26 * v26);
  v29 = *&v25;
  v30 = 0.0;
  v31 = 0.0;
  if (v29 >= 0.01)
  {
    v30 = v26 / v29;
    v31 = v28 / v29;
  }

  v32 = self->sdelta * 3.0;
  v33 = -a4;
  CGPathAddQuadCurveToPoint(Mutable, 0, v22 + v30 * v32, v24 + v31 * v32, v22 + self->normV.x * v33, v24 + self->normV.y * v33);
  s0 = self->s0;
  v35 = self->s1;
  v36 = v35;
  v37 = self->sdelta;
  while (s0 + v37 < v36)
  {
    [(Polyline *)self xyFromS:v36];
    if (v39 != 0.0)
    {
      CGPathAddLineToPoint(Mutable, 0, v38 + self->normV.x * v33, v39 + self->normV.y * v33);
    }

    v37 = self->sdelta;
    v40 = v36 - v37;
    v36 = v40;
    s0 = self->s0;
  }

  [(Polyline *)self xyFromS:?];
  v42 = v41;
  v44 = v43;
  [(Polyline *)self xyFromS:self->s0 + self->sdelta];
  v46 = v42 - v45;
  v48 = v44 - v47;
  *&v45 = sqrt(v48 * v48 + v46 * v46);
  v49 = *&v45;
  v50 = 0.0;
  v51 = 0.0;
  if (v49 >= 0.01)
  {
    v50 = v46 / v49;
    v51 = v48 / v49;
  }

  v52 = self->sdelta * 3.0;
  CGPathAddQuadCurveToPoint(Mutable, 0, v42 + v50 * v52, v44 + v51 * v52, v10, v12);
  CGPathCloseSubpath(Mutable);
  boundsPath = self->boundsPath;
  if (boundsPath)
  {
    CGPathRelease(boundsPath);
  }

  self->boundsPath = CGPathCreateCopy(Mutable);

  CGPathRelease(Mutable);
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

- (CGPoint)normV
{
  objc_copyStruct(v4, &self->normV, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)xyBoundsRect
{
  objc_copyStruct(v6, &self->xyBoundsRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end