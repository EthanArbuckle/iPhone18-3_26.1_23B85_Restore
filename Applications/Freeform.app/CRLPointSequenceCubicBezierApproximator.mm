@interface CRLPointSequenceCubicBezierApproximator
- (CGPoint)controlPoint1;
- (CGPoint)controlPoint2;
- (CRLPointSequenceCubicBezierApproximator)initWithDataPoints:(const void *)points;
- (id).cxx_construct;
- (void)computeApproximationError;
- (void)computeCoefficientMatrix;
- (void)computeConstantVector;
- (void)computeControlPoints;
- (void)computeErrorDistances;
- (void)computeKnots;
- (void)run;
@end

@implementation CRLPointSequenceCubicBezierApproximator

- (CRLPointSequenceCubicBezierApproximator)initWithDataPoints:(const void *)points
{
  v8.receiver = self;
  v8.super_class = CRLPointSequenceCubicBezierApproximator;
  v4 = [(CRLPointSequenceCubicBezierApproximator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    p_dataPoints = &v4->_dataPoints;
    if (&v5->_dataPoints != points)
    {
      sub_1000DB520(p_dataPoints, *points, *(points + 1), (*(points + 1) - *points) >> 4);
    }

    v5->_n = ((*(points + 1) - *points) >> 4) - 1;
  }

  return v5;
}

- (void)computeKnots
{
  sub_1001DC32C([(CRLPointSequenceCubicBezierApproximator *)self knots], [(CRLPointSequenceCubicBezierApproximator *)self n]+ 1);
  **[(CRLPointSequenceCubicBezierApproximator *)self knots]= 0;
  if ([(CRLPointSequenceCubicBezierApproximator *)self n])
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 1;
    do
    {
      v6 = (*[(CRLPointSequenceCubicBezierApproximator *)self dataPoints]+ v3);
      v7 = *v6;
      v8 = v6[1];
      dataPoints = [(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
      v4 = v4 + sqrt(sub_100120090(v7, v8, *(*dataPoints + v3 + 16), *(*dataPoints + v3 + 24)));
      *(*[(CRLPointSequenceCubicBezierApproximator *)self knots]+ 8 * v5++) = v4;
      v3 += 16;
    }

    while (v5 <= [(CRLPointSequenceCubicBezierApproximator *)self n]);
  }

  else
  {
    v4 = 0.0;
  }

  if ([(CRLPointSequenceCubicBezierApproximator *)self n])
  {
    v10 = 1;
    do
    {
      knots = [(CRLPointSequenceCubicBezierApproximator *)self knots];
      *(*knots + 8 * v10) = *(*knots + 8 * v10) / v4;
      ++v10;
    }

    while (v10 <= [(CRLPointSequenceCubicBezierApproximator *)self n]);
  }
}

- (void)computeErrorDistances
{
  sub_1000DAA88([(CRLPointSequenceCubicBezierApproximator *)self errorDistances], [(CRLPointSequenceCubicBezierApproximator *)self n]+ 1);
  if ([(CRLPointSequenceCubicBezierApproximator *)self n]!= 1)
  {
    v3 = 1;
    do
    {
      v4 = *[(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
      v5 = *[(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
      v6 = 1.0 - *(*[(CRLPointSequenceCubicBezierApproximator *)self knots]+ 8 * v3);
      v11 = vmulq_n_f64(*v5, v6 * (v6 * v6));
      dataPoints = [(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
      v8 = [(CRLPointSequenceCubicBezierApproximator *)self n];
      v9 = *dataPoints;
      knots = [(CRLPointSequenceCubicBezierApproximator *)self knots];
      v12 = vsubq_f64(*(v4 + 16 * v3), vaddq_f64(v11, vmulq_n_f64(*(v9 + 16 * v8), *(*knots + 8 * v3) * (*(*knots + 8 * v3) * *(*knots + 8 * v3)))));
      *(*[(CRLPointSequenceCubicBezierApproximator *)self errorDistances]+ 16 * v3++) = v12;
    }

    while (v3 <= [(CRLPointSequenceCubicBezierApproximator *)self n]- 1);
  }
}

- (void)computeConstantVector
{
  for (i = 1; i != 3; ++i)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    if ([(CRLPointSequenceCubicBezierApproximator *)self n]!= 1)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = *[(CRLPointSequenceCubicBezierApproximator *)self errorDistances]+ v6;
        v9 = sub_1001DC48C(i, *(*[(CRLPointSequenceCubicBezierApproximator *)self knots]+ 8 * v7));
        x = x + v9 * *(v8 + 16);
        y = y + v9 * *(v8 + 24);
        ++v7;
        v6 += 16;
      }

      while (v7 <= [(CRLPointSequenceCubicBezierApproximator *)self n]- 1);
    }

    v10 = ([(CRLPointSequenceCubicBezierApproximator *)self rhs]+ 16 * i);
    *(v10 - 2) = x;
    *(v10 - 1) = y;
  }
}

- (void)computeCoefficientMatrix
{
  for (i = 1; i != 3; ++i)
  {
    for (j = 1; j != 3; ++j)
    {
      [(CRLPointSequenceCubicBezierApproximator *)self n];
      v5 = 0;
      v6 = 0.0;
      do
      {
        v7 = sub_1001DC48C(i, *(*[(CRLPointSequenceCubicBezierApproximator *)self knots]+ 8 * v5));
        v6 = v6 + v7 * sub_1001DC48C(j, *(*[(CRLPointSequenceCubicBezierApproximator *)self knots]+ 8 * v5++));
      }

      while (v5 <= [(CRLPointSequenceCubicBezierApproximator *)self n]);
      *([(CRLPointSequenceCubicBezierApproximator *)self lhs]+ 2 * i + j - 3) = v6;
    }
  }
}

- (void)computeControlPoints
{
  v3 = *[(CRLPointSequenceCubicBezierApproximator *)self lhs];
  v4 = *([(CRLPointSequenceCubicBezierApproximator *)self lhs]+ 1);
  v5 = *([(CRLPointSequenceCubicBezierApproximator *)self lhs]+ 2);
  v6 = *([(CRLPointSequenceCubicBezierApproximator *)self lhs]+ 3);
  v7 = v3 * v6 - v4 * v5;
  if (v7 >= 0.000001)
  {
    v9 = -v5 / v7;
    v10 = v3 / v7;
    [(CRLPointSequenceCubicBezierApproximator *)self setControlPoint1:vaddq_f64(vmulq_n_f64(*[(CRLPointSequenceCubicBezierApproximator *)self rhs], v6 / v7), vmulq_n_f64(*([(CRLPointSequenceCubicBezierApproximator *)self rhs]+ 1), -v4 / v7))];
    v8 = vaddq_f64(vmulq_n_f64(*[(CRLPointSequenceCubicBezierApproximator *)self rhs], v9), vmulq_n_f64(*([(CRLPointSequenceCubicBezierApproximator *)self rhs]+ 1), v10));

    [(CRLPointSequenceCubicBezierApproximator *)self setControlPoint2:*&v8];
  }

  else
  {

    [(CRLPointSequenceCubicBezierApproximator *)self setApproximationError:INFINITY];
  }
}

- (void)computeApproximationError
{
  v20 = **[(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
  [(CRLPointSequenceCubicBezierApproximator *)self controlPoint1];
  v21 = v3;
  v22 = v4;
  [(CRLPointSequenceCubicBezierApproximator *)self controlPoint2];
  v23 = v5;
  v24 = v6;
  dataPoints = [(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
  v25 = *(*dataPoints + 16 * [(CRLPointSequenceCubicBezierApproximator *)self n]);
  [(CRLPointSequenceCubicBezierApproximator *)self approximationError];
  if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    [(CRLPointSequenceCubicBezierApproximator *)self n];
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = (*[(CRLPointSequenceCubicBezierApproximator *)self dataPoints]+ 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      v14 = 0;
      v15 = *(*[(CRLPointSequenceCubicBezierApproximator *)self knots]+ 8 * v9);
      v16 = CGPointZero;
      do
      {
        v17 = vaddq_f64(v16, vmulq_n_f64(*(&v20 + v14), sub_1001DC48C(v14, v15)));
        v19 = v17;
        v16 = v17;
        ++v14;
      }

      while (v14 != 4);
      v10 = v10 + sub_10011F068(v17.f64[0], v17.f64[1], v12, v13);
      ++v9;
    }

    while (v9 <= [(CRLPointSequenceCubicBezierApproximator *)self n]);
    [(CRLPointSequenceCubicBezierApproximator *)self setApproximationError:sqrt(v10)];
  }

  v18 = -1;
  do
  {
    ++v18;
  }

  while (v18 <= [(CRLPointSequenceCubicBezierApproximator *)self n]);
}

- (void)run
{
  if ([(CRLPointSequenceCubicBezierApproximator *)self n]< 3)
  {
    if ([(CRLPointSequenceCubicBezierApproximator *)self n]== 2)
    {
      dataPoints = [(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
      v4 = vaddq_f64(vaddq_f64(**dataPoints, **dataPoints), *(*[(CRLPointSequenceCubicBezierApproximator *)self dataPoints]+ 16));
      __asm { FMOV            V1.2D, #3.0 }

      v11 = _Q1;
      [(CRLPointSequenceCubicBezierApproximator *)self setControlPoint1:vdivq_f64(v4, _Q1)];
      dataPoints2 = [(CRLPointSequenceCubicBezierApproximator *)self dataPoints];
      [(CRLPointSequenceCubicBezierApproximator *)self setControlPoint2:vdivq_f64(vaddq_f64(vaddq_f64((*dataPoints2)[2], (*dataPoints2)[2]), *(*[(CRLPointSequenceCubicBezierApproximator *)self dataPoints]+ 16)), v11)];

      [(CRLPointSequenceCubicBezierApproximator *)self setApproximationError:0.0];
    }
  }

  else
  {
    [(CRLPointSequenceCubicBezierApproximator *)self computeKnots];
    [(CRLPointSequenceCubicBezierApproximator *)self computeErrorDistances];
    [(CRLPointSequenceCubicBezierApproximator *)self computeConstantVector];
    [(CRLPointSequenceCubicBezierApproximator *)self computeCoefficientMatrix];
    [(CRLPointSequenceCubicBezierApproximator *)self computeControlPoints];

    [(CRLPointSequenceCubicBezierApproximator *)self computeApproximationError];
  }
}

- (CGPoint)controlPoint1
{
  x = self->_controlPoint1.x;
  y = self->_controlPoint1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)controlPoint2
{
  x = self->_controlPoint2.x;
  y = self->_controlPoint2.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  v2 = CGPointZero;
  *(self + 10) = CGPointZero;
  *(self + 11) = v2;
  return self;
}

@end