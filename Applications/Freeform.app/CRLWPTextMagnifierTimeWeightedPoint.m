@interface CRLWPTextMagnifierTimeWeightedPoint
- (BOOL)historyCovers:(double)a3;
- (CGPoint)weightedPoint;
- (CGSize)displacementInInterval:(double)a3;
- (CGSize)displacementInInterval:(double)a3 priorTo:(double)a4;
- (double)distanceCoveredInInterval:(double)a3;
- (double)distanceCoveredInInterval:(double)a3 priorTo:(double)a4;
- (void)addPoint:(CGPoint)a3;
- (void)clearHistory;
@end

@implementation CRLWPTextMagnifierTimeWeightedPoint

- (void)clearHistory
{
  p_time = &self->m_points[0].time;
  v3 = 16;
  v4 = CGPointZero;
  do
  {
    *(p_time - 1) = v4;
    *p_time = -1.0;
    p_time += 3;
    --v3;
  }

  while (v3);
}

- (void)addPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v8 = (self + 24 * m_index);
  v8[2] = x;
  v8[3] = y;
  v8[4] = Current;
  if (m_index <= 14)
  {
    v9 = m_index + 1;
  }

  else
  {
    v9 = 0;
  }

  self->m_index = v9;
}

- (CGPoint)weightedPoint
{
  y = CGPointZero.y;
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v6 = m_index - 1;
  v7 = self + 24 * m_index;
  v8 = 16;
  x = CGPointZero.x;
  v10 = y;
  while (1)
  {
    v11 = &v7[384 * (v6 >> 63)];
    v12 = v11[1];
    if (v12 == -1.0)
    {
      break;
    }

    v14 = *(v11 - 1);
    v13 = *v11;
    if (x == CGPointZero.x && v10 == y)
    {
      v10 = *v11;
      x = *(v11 - 1);
    }

    else if (Current - v12 > 0.15)
    {
      goto LABEL_13;
    }

    --v6;
    v7 -= 24;
    v13 = v10;
    v14 = x;
    if (!--v8)
    {
      goto LABEL_13;
    }
  }

  v13 = v10;
  v14 = x;
LABEL_13:
  v16 = v14;
  result.y = v13;
  result.x = v16;
  return result;
}

- (BOOL)historyCovers:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v7 = m_index - 1;
  v8 = self + 24 * m_index;
  v9 = 16;
  while (1)
  {
    v10 = &v8[384 * (v7 >> 63)];
    v11 = v10[1];
    if (v11 == -1.0)
    {
      return 0;
    }

    if (*(v10 - 1) == CGPointZero.x && *v10 == CGPointZero.y)
    {
      return 0;
    }

    if (Current - v11 > a3)
    {
      break;
    }

    --v7;
    v8 -= 24;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

- (double)distanceCoveredInInterval:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();

  [(CRLWPTextMagnifierTimeWeightedPoint *)self distanceCoveredInInterval:a3 priorTo:Current];
  return result;
}

- (CGSize)displacementInInterval:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();

  [(CRLWPTextMagnifierTimeWeightedPoint *)self displacementInInterval:a3 priorTo:Current];
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)displacementInInterval:(double)a3 priorTo:(double)a4
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  m_index = self->m_index;
  v9 = m_index - 1;
  v10 = self + 24 * m_index;
  v11 = 16;
  y = CGPointZero.y;
  x = CGPointZero.x;
  do
  {
    v14 = &v10[384 * (v9 >> 63)];
    v15 = v14[1];
    if (v15 == -1.0)
    {
      break;
    }

    v16 = *(v14 - 1);
    v17 = *v14 == CGPointZero.y && v16 == CGPointZero.x;
    v18 = a4 - v15;
    if (v17 || v18 > a3)
    {
      break;
    }

    v20 = width + x - v16;
    v21 = height + y - *v14;
    if (v11 != 16)
    {
      height = v21;
    }

    --v9;
    if (v11 != 16)
    {
      width = v20;
    }

    v10 -= 24;
    y = *v14;
    x = *(v14 - 1);
    --v11;
  }

  while (v11);
  result.height = height;
  result.width = width;
  return result;
}

- (double)distanceCoveredInInterval:(double)a3 priorTo:(double)a4
{
  y = CGPointZero.y;
  m_index = self->m_index;
  v8 = m_index - 1;
  v9 = self + 24 * m_index;
  v10 = 0.0;
  v11 = 16;
  v12 = y;
  x = CGPointZero.x;
  do
  {
    v14 = &v9[384 * (v8 >> 63)];
    v15 = v14[1];
    if (v15 == -1.0)
    {
      break;
    }

    v16 = *(v14 - 1);
    v17 = *v14;
    v18 = *v14 == y && v16 == CGPointZero.x;
    v19 = a4 - v15;
    if (v18 || v19 > a3)
    {
      break;
    }

    if (v11 != 16)
    {
      v10 = v10 + sub_100120090(x, v12, *(v14 - 1), *v14);
    }

    --v8;
    v9 -= 24;
    v12 = v17;
    x = v16;
    --v11;
  }

  while (v11);
  return v10;
}

@end