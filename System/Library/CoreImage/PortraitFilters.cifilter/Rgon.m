@interface Rgon
+ (id)newInterpolatedRgonFrom:(id)a3 withRgon:(id)a4 param:(float)a5;
- ($94F468A8D4C62B317260615823C2B210)intersectionEdge:(int)a3 withEdge:(int)a4;
- (BOOL)CollapseOrphans;
- (BOOL)IntersectionRgonOf:(id)a3 withRgon:(id)a4;
- (CGRect)boundsFloatRect;
- (Rgon)init;
- (Rgon)initWithCoder:(id)a3;
- (double)Density;
- (float)Area;
- (float)AspectRatio;
- (float)CommonCenterForIndex:(int)a3;
- (float)Diameter;
- (float)DiameterAtFacetCountMeasuredFromVertical:(int)a3;
- (float)DistToPointX:(float)a3 Y:(float)a4;
- (float)DistanceBetweenCenters:(id)a3;
- (float)DistanceCenterToRGon:(id)a3;
- (float)DistanceFromRgon:(id)a3;
- (float)MeanVertexDistFromX:(float)a3 Y:(float)a4;
- (float)MinDiameter;
- (float)Perimeter;
- (float)Radius;
- (float)dASide:(int)a3 movesds:(float)a4;
- (float)dASide:(int)a3 movesds:(float)a4 retaining:(int)a5 pointsFromArray:(id)a6;
- (float)vertexAtClockHour:(float)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createWithCollapsedOrphans2;
- (id)unionRgonOf:(id)a3 withRgon:(id)a4;
- (int)AdjustForPointX:(float)a3 Y:(float)a4;
- (int)AspectIndex;
- (int)OutsideReturnFirstEdgeExcludingX:(float)a3 Y:(float)a4;
- (int)containsPointX:(float)a3 Y:(float)a4;
- (int)containsPointX:(float)a3 Y:(float)a4 inArray:(int *)a5 ofCount:(int)a6;
- (int)containsPointX:(float)a3 Y:(float)a4 withTolerance:(float)a5 returnIndex:(int *)a6;
- (int)pointX:(float)a3 Y:(float)a4 isOutsideBorderlinesInArray:(int *)a5 ofCount:(int)a6;
- (void)CalculateAndReturnVertices:(float *)a3;
- (void)CalculateEdges;
- (void)CalculateFromVertices;
- (void)CalculateVertices;
- (void)Dilate:(float)a3;
- (void)DirectionalDilateByAmount:(float)a3 xDirection:(float)a4 yDirection:(float)a5;
- (void)IntersectionOfEdge:(int)a3 withEdge:(int)a4 resultPoint:(float)a5[2];
- (void)PrintConstraints;
- (void)PrintVertices;
- (void)PrintVerticesWithZCoord:(double)a3;
- (void)Reset;
- (void)RoundToPercent:(float)a3;
- (void)ShrinkByAmount:(float)a3;
- (void)UnionWith:(id)a3;
- (void)dealloc;
- (void)dentRgonInwardByAmount:(float)a3 xDirection:(float)a4 yDirection:(float)a5;
- (void)recalculateMaxMins;
- (void)translateByAmount:(float)a3 xDirection:(float)a4 yDirection:(float)a5;
@end

@implementation Rgon

- (Rgon)init
{
  v9.receiver = self;
  v9.super_class = Rgon;
  v2 = [(Rgon *)&v9 init];
  if (v2)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = __sincosf_stret(v4);
      v6 = &v2[v3];
      *(v6 + 2) = -v5.__cosval;
      *(v6 + 3) = -v5.__sinval;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 28) = 3212836864;
      v4 = v4 + 0.196349541;
      v3 += 28;
    }

    while (v3 != 896);
    [v2 setRgonPtr:v2 + 8];
    [v2 setPointerToRgonArray:v2 + 8];
    *(v2 + 118) = 0;
    *(v2 + 122) = 0;
    *(v2 + 238) = 0;
    v7.f64[0] = 2.84809454e-306;
    v7.f64[1] = 2.84809454e-306;
    *(v2 + 956) = vnegq_f64(v7);
  }

  return v2;
}

- (Rgon)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = Rgon;
  v4 = [(Rgon *)&v10 init];
  if (v4)
  {
    v9 = 0;
    v5 = [a3 decodeBytesForKey:@"RGON_ARRAY" returnedLength:&v9];
    for (i = 8; i != 904; ++i)
    {
      v7 = *v5++;
      *(&v4->super.isa + i) = v7;
    }

    [(Rgon *)v4 setRgonPtr:v4->rgonArray];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Rgon;
  [(Rgon *)&v2 dealloc];
}

- (void)Reset
{
  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = __sincosf_stret(v4);
    v6 = self + v3;
    *(v6 + 2) = -v5.__cosval;
    *(v6 + 3) = -v5.__sinval;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 28) = 3212836864;
    v4 = v4 + 0.196349541;
    v3 += 28;
  }

  while (v3 != 896);

  [(Rgon *)self setRgonPtr:self->rgonArray];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[Rgon allocWithZone:?]];
  v5 = [(Rgon *)v4 rgonPtr];
  v6 = [(Rgon *)self rgonPtr];
  v7 = 224;
  do
  {
    v8 = *v6;
    v6 = (v6 + 4);
    *v5 = v8;
    v5 = (v5 + 4);
    --v7;
  }

  while (v7);
  [(Rgon *)v4 setPointerToRgonArray:v5];
  return v4;
}

- (float)vertexAtClockHour:(float)a3
{
  v3 = llroundf(((a3 + -3.0) / -12.0) * 32.0) + 32;
  v4 = v3 & 0x1F;
  v6 = -v3;
  v5 = v6 < 0;
  v7 = v6 & 0x1F;
  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = -v7;
  }

  return &self->rgonArray[v8][3];
}

- (int)AdjustForPointX:(float)a3 Y:(float)a4
{
  v4 = 0;
  v5 = &self->rgonArray[0][2];
  v6 = -1;
  v7 = -1.0;
  do
  {
    v8 = (*(v5 - 1) * a4) + (a3 * *(v5 - 2));
    if (v5[1] == 0.0)
    {
      v5[1] = 1.0;
      if (v5[3] == -1.0)
      {
LABEL_6:
        v5[3] = 1.0;
      }

LABEL_7:
      *v5 = v8;
      v6 = v4;
      goto LABEL_8;
    }

    if (v5[3] == -1.0)
    {
      goto LABEL_6;
    }

    v9 = v8 - *v5;
    if (v9 < 0.0)
    {
      goto LABEL_7;
    }

    v10 = v7 < 0.0;
    if (v9 < v7)
    {
      v10 = 1;
    }

    if (v10)
    {
      v7 = v8 - *v5;
      v6 = v4;
    }

LABEL_8:
    ++v4;
    v5 += 7;
  }

  while (v4 != 32);
  self->count = self->count + 1.0;
  if (self->ymin > a4)
  {
    self->ymin = a4;
  }

  if (self->ymax < a4)
  {
    self->ymax = a4;
  }

  if (self->xmin > a3)
  {
    self->xmin = a3;
  }

  if (self->xmax < a3)
  {
    self->xmax = a3;
  }

  return v6;
}

- (void)CalculateVertices
{
  v2 = &self->rgonArray[0][2];
  for (i = 1; i != 33; ++i)
  {
    v4 = self->rgonArray[i & 0x1F];
    v5 = *v2;
    v6 = v4[2];
    v7 = *v4;
    v4[3] = ((v4[1] * *v2) - (*(v2 - 1) * v6)) * 5.1258;
    v4[4] = ((v6 * *(v2 - 2)) - (v7 * v5)) * 5.1258;
    v2 += 7;
  }
}

- (float)dASide:(int)a3 movesds:(float)a4
{
  [(Rgon *)self Area];
  v8 = v7;
  v9 = objc_alloc_init(Rgon);
  rgonArray = self->rgonArray;
  v11 = rgonArray[a3];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2] + a4;
  for (i = 1; i != 33; ++i)
  {
    if (((v13 * rgonArray[i & 0x1F][4]) + (v12 * rgonArray[i & 0x1F][3])) > v14)
    {
      [Rgon AdjustForPointX:v9 Y:"AdjustForPointX:Y:"];
    }
  }

  [(Rgon *)v9 CalculateVertices];
  [(Rgon *)v9 CalculateEdges];
  [(Rgon *)v9 Area];
  v17 = v8 - v16;

  return v17;
}

- (float)dASide:(int)a3 movesds:(float)a4 retaining:(int)a5 pointsFromArray:(id)a6
{
  [(Rgon *)self Area];
  v12 = v11;
  v13 = objc_alloc_init(Rgon);
  v14 = (self + 28 * a3);
  v16 = v14[2];
  v17 = v14[3];
  v15 = (v14 + 2);
  v18 = *(v15 + 2) + a4;
  v19 = &self->rgonArray[0][4];
  v20 = 32;
  do
  {
    if (((v17 * *v19) + (v16 * *(v19 - 1))) > v18)
    {
      [Rgon AdjustForPointX:v13 Y:"AdjustForPointX:Y:"];
    }

    v19 += 7;
    --v20;
  }

  while (v20);
  [objc_msgSend(a6 objectAtIndex:{0), "getValue:", &v35}];
  v21 = v16;
  v22 = v17;
  v23 = v36 * v22 + v21 * v35 - *(v15 + 2);
  if (v23 >= a4)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      [objc_msgSend(a6 objectAtIndex:{v24), "getValue:", &v35}];
      v25 = v24 + 1;
      v26 = v36 * v22 + v21 * v35 - *(v15 + 2);
      if (v26 >= a4)
      {
        break;
      }
    }

    while (v24++ < 0x63);
  }

  if (a5 >= 1)
  {
    v28 = v25 + a5;
    v29 = v25;
    do
    {
      [objc_msgSend(a6 objectAtIndex:{v29), "getValue:", &v35}];
      HIDWORD(v30) = HIDWORD(v35);
      HIDWORD(v31) = HIDWORD(v36);
      if (v36 * v22 + v21 * v35 > v18)
      {
        *&v30 = v35;
        *&v31 = v36;
        [(Rgon *)v13 AdjustForPointX:v30 Y:v31];
      }

      ++v29;
    }

    while (v29 < v28);
  }

  [(Rgon *)v13 CalculateVertices];
  [(Rgon *)v13 CalculateEdges];
  [(Rgon *)v13 Area];
  v33 = v12 - v32;

  return v33;
}

- (void)CalculateAndReturnVertices:(float *)a3
{
  v3 = &self->rgonArray[0][2];
  v4 = 2;
  for (i = 1; i != 33; ++i)
  {
    v6 = self->rgonArray[i & 0x1F];
    v7 = *v3;
    v8 = v6[2];
    v9 = *v6;
    v10 = ((v6[1] * *v3) - (*(v3 - 1) * v8)) * 5.1258;
    v6[3] = v10;
    v6[4] = ((v8 * *(v3 - 2)) - (v9 * v7)) * 5.1258;
    a3[v4 & 0x3E] = v10;
    a3[v4 & 0x3E | 1] = v6[4];
    v3 += 7;
    v4 += 2;
  }
}

- (CGRect)boundsFloatRect
{
  v2 = &self->rgonArray[0][2];
  v3 = 3.4028e38;
  v4 = -3.4028e38;
  v5 = 1;
  v6 = -3.4028e38;
  v7 = 3.4028e38;
  do
  {
    v8 = self->rgonArray[v5 & 0x1F];
    v9 = *v2;
    v10 = v8[2];
    v11 = *v8;
    v12 = ((v8[1] * *v2) - (*(v2 - 1) * v10)) * 5.1258;
    v8[3] = v12;
    v13 = ((v10 * *(v2 - 2)) - (v11 * v9)) * 5.1258;
    v8[4] = v13;
    if (v12 < v7)
    {
      v7 = v12;
    }

    if (v12 > v6)
    {
      v6 = v12;
    }

    if (v13 < v3)
    {
      v3 = v13;
    }

    if (v13 > v4)
    {
      v4 = v13;
    }

    v2 += 7;
    ++v5;
  }

  while (v5 != 33);
  v14 = v7;
  v15 = v3;
  v16 = (v6 - v7);
  v17 = (v4 - v3);
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)CalculateFromVertices
{
  v3 = 0;
  v4 = &self->rgonArray[1][4];
  do
  {
    *&v5 = *(v4 - 8);
    *(&v5 + 1) = *(v4 - 1);
    *&v6 = *(v4 - 7);
    *(&v6 + 1) = *v4;
    v7 = &v10[v3];
    vst2_f32(v7, *&v5);
    v3 += 16;
    v4 += 14;
  }

  while (v3 != 256);
  for (i = 20; i != 916; i += 28)
  {
    *(&self->super.isa + i) = 0;
  }

  for (j = 0; j != 256; j += 8)
  {
    LODWORD(v5) = *&v10[j];
    LODWORD(v6) = *&v10[j + 4];
    [(Rgon *)self AdjustForPointX:v5 Y:v6];
  }

  [(Rgon *)self CalculateVertices];

  [(Rgon *)self CalculateEdges];
}

- (void)CalculateEdges
{
  v2 = &self->rgonArray[0][5];
  for (i = 1; i != 33; ++i)
  {
    *v2 = vsub_f32(*&self->rgonArray[i & 0x1F][3], v2[-1]);
    v2 = (v2 + 28);
  }
}

- (void)DirectionalDilateByAmount:(float)a3 xDirection:(float)a4 yDirection:(float)a5
{
  for (i = 0; i != 32; ++i)
  {
    v7 = (self->rgonArray[i][1] * a5) + (self->rgonArray[i][0] * a4);
    if (v7 < 0.0)
    {
      self->rgonArray[i][2] = self->rgonArray[i][2] + (a3 * v7);
    }
  }

  [(Rgon *)self CalculateVertices];
  [(Rgon *)self CalculateEdges];

  [(Rgon *)self recalculateMaxMins];
}

- (void)translateByAmount:(float)a3 xDirection:(float)a4 yDirection:(float)a5
{
  for (i = 0; i != 32; ++i)
  {
    self->rgonArray[i][2] = self->rgonArray[i][2] + (a3 * ((self->rgonArray[i][1] * a5) + (self->rgonArray[i][0] * a4)));
  }

  [(Rgon *)self CalculateVertices];

  [(Rgon *)self CalculateEdges];
}

- (void)dentRgonInwardByAmount:(float)a3 xDirection:(float)a4 yDirection:(float)a5
{
  [(Rgon *)self CalculateVertices];
  v9 = 0;
  v10 = (self->rgonArray[0][4] * a5) + (self->rgonArray[0][3] * a4);
  do
  {
    v11 = self->rgonArray[v9 + 1][4] * a5;
    if ((v11 + (self->rgonArray[v9 + 1][3] * a4)) < v10)
    {
      v10 = v11 + (self->rgonArray[v9 + 1][3] * a4);
    }

    ++v9;
  }

  while (v9 != 31);
  for (i = 0; i != 32; ++i)
  {
    v13 = (self + i * 28);
    v15 = self->rgonArray[i][3];
    v14 = self->rgonArray[i][4];
    v16 = ((v14 * a5) + (v15 * a4)) - v10;
    if (v16 < a3)
    {
      v17 = a3 - v16;
      v13[5] = v15 + (a4 * v17);
      v13[6] = v14 + (a5 * v17);
    }
  }

  [(Rgon *)self CalculateFromVertices];

  [(Rgon *)self CalculateEdges];
}

- (void)Dilate:(float)a3
{
  for (i = 16; i != 912; i += 28)
  {
    *(&self->super.isa + i) = *(&self->super.isa + i) - a3;
  }

  [(Rgon *)self CalculateVertices];
  [(Rgon *)self CalculateEdges];

  [(Rgon *)self recalculateMaxMins];
}

- (void)recalculateMaxMins
{
  ymax = self->ymax;
  for (i = 24; i != 920; i += 28)
  {
    v4 = *(&self->super.isa + i);
    p_ymax = &self->ymax;
    v6 = v4;
    if (v4 <= ymax)
    {
      p_ymax = &self->ymin;
      v6 = ymax;
      if (v4 >= self->ymin)
      {
        continue;
      }
    }

    *p_ymax = v4;
    ymax = v6;
  }
}

- (int)containsPointX:(float)a3 Y:(float)a4 inArray:(int *)a5 ofCount:(int)a6
{
  v6 = 0;
  rgonArray = self->rgonArray;
  v8 = &self->rgonArray[0][5];
  v9 = 4;
  do
  {
    if (*(v8 - 2) != 0.0 || *v8 != 0.0)
    {
      ++v6;
    }

    v8 += 7;
    --v9;
  }

  while (v9);
  if (v6 < 3)
  {
    return 0;
  }

  if (a6 < 1)
  {
    return 1;
  }

  if (((rgonArray[*a5][1] * a4) + (rgonArray[*a5][0] * a3)) < (rgonArray[*a5][2] + -0.00001))
  {
    return 0;
  }

  v11 = 1;
  do
  {
    v12 = v11;
    if (a6 == v11)
    {
      break;
    }

    v13 = rgonArray[a5[v11]];
    v14 = (v13[1] * a4) + (*v13 * a3);
    v15 = v13[2] + -0.00001;
    v11 = v12 + 1;
  }

  while (v14 >= v15);
  return v12 >= a6;
}

- (int)pointX:(float)a3 Y:(float)a4 isOutsideBorderlinesInArray:(int *)a5 ofCount:(int)a6
{
  v6 = 0;
  rgonArray = self->rgonArray;
  v8 = &self->rgonArray[0][5];
  v9 = 4;
  do
  {
    if (*(v8 - 2) != 0.0 || *v8 != 0.0)
    {
      ++v6;
    }

    v8 += 7;
    --v9;
  }

  while (v9);
  result = 0;
  if (v6 >= 3 && a6 >= 1)
  {
    if (((rgonArray[*a5][1] * a4) + (rgonArray[*a5][0] * a3)) >= (rgonArray[*a5][2] + -0.00001))
    {
      v11 = 1;
      do
      {
        v12 = v11;
        if (a6 == v11)
        {
          break;
        }

        v13 = rgonArray[a5[v11]];
        v14 = (v13[1] * a4) + (*v13 * a3);
        v15 = v13[2] + -0.00001;
        v11 = v12 + 1;
      }

      while (v14 >= v15);
      return v12 < a6;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int)containsPointX:(float)a3 Y:(float)a4
{
  v4 = 0;
  v5 = &self->rgonArray[0][5];
  v6 = 4;
  do
  {
    if (*(v5 - 2) != 0.0 || *v5 != 0.0)
    {
      ++v4;
    }

    v5 += 7;
    --v6;
  }

  while (v6);
  if (v4 < 3)
  {
    return 0;
  }

  lastFaceFlunked = self->lastFaceFlunked;
  v9 = lastFaceFlunked + 31;
  do
  {
    v10 = self->rgonArray[dword_550E0[lastFaceFlunked]];
    v11 = (v10[1] * a4) + (*v10 * a3);
    v12 = v10[2] + -0.01;
  }

  while (v11 >= v12 && lastFaceFlunked++ < v9);
  return v11 >= v12;
}

- (int)containsPointX:(float)a3 Y:(float)a4 withTolerance:(float)a5 returnIndex:(int *)a6
{
  v6 = 0;
  lastFaceFlunked = self->lastFaceFlunked;
  v8 = &self->rgonArray[0][5];
  v9 = 4;
  do
  {
    if (*(v8 - 2) != 0.0 || *v8 != 0.0)
    {
      ++v6;
    }

    v8 += 7;
    --v9;
  }

  while (v9);
  if (v6 >= 3)
  {
    v11 = lastFaceFlunked + 31;
    if (__OFSUB__(lastFaceFlunked, lastFaceFlunked + 31))
    {
      v11 = self->lastFaceFlunked;
    }

    v12 = v11 - lastFaceFlunked + 1;
    v13 = &dword_550E0[lastFaceFlunked];
    while (1)
    {
      v14 = *v13++;
      if (((self->rgonArray[v14][1] * a4) + (self->rgonArray[v14][0] * a3)) < (self->rgonArray[v14][2] - a5))
      {
        break;
      }

      ++lastFaceFlunked;
      if (!--v12)
      {
        lastFaceFlunked = 0;
        result = 1;
        if (a6)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  else
  {
    lastFaceFlunked = 0;
  }

  result = 0;
  if (a6)
  {
LABEL_9:
    *a6 = lastFaceFlunked;
  }

  return result;
}

- (float)CommonCenterForIndex:(int)a3
{
  v3 = 0.0;
  for (i = 8; i != 904; i += 28)
  {
    v3 = v3 + *(&self->super.isa + 4 * a3 + i);
  }

  return v3 * 0.03125;
}

- (float)MeanVertexDistFromX:(float)a3 Y:(float)a4
{
  v4 = vdupq_lane_s32(*&a3, 0);
  v5 = vdupq_lane_s32(*&a4, 0);
  v6 = &self->rgonArray[2][3];
  v7 = 0.0;
  v8 = 32;
  do
  {
    v9.i32[0] = *(v6 - 14);
    v10.i32[0] = *(v6 - 13);
    v9.i32[1] = *(v6 - 7);
    v9.i32[2] = *v6;
    v9.i32[3] = v6[7];
    v11 = vsubq_f32(v4, v9);
    v10.i32[1] = *(v6 - 6);
    v10.i32[2] = v6[1];
    v10.i32[3] = v6[8];
    v12 = vsubq_f32(v5, v10);
    v13 = vsqrtq_f32(vmlaq_f32(vmulq_f32(v12, v12), v11, v11));
    v7 = (((v7 + v13.f32[0]) + v13.f32[1]) + v13.f32[2]) + v13.f32[3];
    v6 += 28;
    v8 -= 4;
  }

  while (v8);
  return v7 * 0.03125;
}

- (float)Radius
{
  [(Rgon *)self XCenter];
  v4 = v3;
  [(Rgon *)self YCenter];
  v6 = v5;
  [(Rgon *)self CalculateVertices];
  LODWORD(v7) = v4;
  LODWORD(v8) = v6;

  [(Rgon *)self MeanVertexDistFromX:v7 Y:v8];
  return result;
}

- (float)Diameter
{
  result = 0.0;
  v3 = 16;
  do
  {
    v4 = fabsf(self->rgonArray[0][2] + self->rgonArray[16][2]);
    if (v4 > result)
    {
      result = v4;
    }

    self = (self + 28);
    --v3;
  }

  while (v3);
  return result;
}

- (float)MinDiameter
{
  result = 3.4028e38;
  v3 = 16;
  do
  {
    v4 = fabsf(self->rgonArray[0][2] + self->rgonArray[16][2]);
    if (v4 < result)
    {
      result = v4;
    }

    self = (self + 28);
    --v3;
  }

  while (v3);
  return result;
}

- (int)AspectIndex
{
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = &self->rgonArray[8][2];
  LODWORD(v2) = 1.0;
  while (1)
  {
    v7 = *(v6 - 56) + v6[56];
    if (v7 == 0.0)
    {
      break;
    }

    v8 = *v6;
    v6 += 7;
    v9 = fabsf((v8 + self->rgonArray[(v4 + 24) & 0x1F][2]) / v7);
    if (v9 >= *&v2)
    {
      v5 = v5;
    }

    else
    {
      v5 = v4;
    }

    if (v9 < *&v2)
    {
      *&v2 = v9;
    }

    if (++v4 == 16)
    {
      [(Rgon *)self setAspectRatio:v2];
      [(Rgon *)self setMaxAxisIndex:v5];
      return v5;
    }
  }

  LODWORD(v5) = -1;
  return v5;
}

- (float)DiameterAtFacetCountMeasuredFromVertical:(int)a3
{
  v3 = (a3 + 24) & 0x1F;
  if (a3 + 24 <= 0)
  {
    v3 = -(-(a3 + 24) & 0x1F);
  }

  return fabsf(self->rgonArray[v3][2] + self->rgonArray[(v3 + 16 - ((v3 + 16 + (((v3 + 16) >> 10) & 0x1F)) & 0xE0))][2]);
}

- (void)RoundToPercent:(float)a3
{
  [(Rgon *)self XCenter];
  v6 = v5;
  [(Rgon *)self YCenter];
  v8 = v7;
  *&v9 = v6;
  *&v10 = v8;
  [(Rgon *)self MeanVertexDistFromX:v9 Y:v10];
  v11 = 0;
  v13 = v12 * 0.91;
  do
  {
    self->rgonArray[v11][2] = self->rgonArray[v11][2] + (a3 * (((self->rgonArray[v11][1] * (v8 - self->rgonArray[v11][4])) + ((v6 - self->rgonArray[v11][3]) * self->rgonArray[v11][0])) - v13));
    ++v11;
  }

  while (v11 != 32);

  [(Rgon *)self CalculateVertices];
}

- (float)DistToPointX:(float)a3 Y:(float)a4
{
  v4 = &self->rgonArray[0][3];
  v5 = 1;
  v6 = 3.4028e38;
  LOBYTE(v7) = 1;
  do
  {
    v8 = *v4 - a3;
    v9 = v4[1] - a4;
    v10 = self->rgonArray[v5 & 0x1F];
    v11 = sqrtf((v4[3] * v4[3]) + (v4[2] * v4[2]));
    v12 = sqrtf((v9 * v9) + (v8 * v8));
    v13 = sqrtf(((v10[4] - a4) * (v10[4] - a4)) + ((v10[3] - a3) * (v10[3] - a3)));
    if ((((v11 * v11) + (v12 * v12)) - (v13 * v13)) <= 0.0 || (((v11 * v11) + (v13 * v13)) - (v12 * v12)) <= 0.0)
    {
      if (v12 < v6)
      {
        v6 = v12;
      }

      v14 = 1;
      if (v13 < v6)
      {
        v6 = v13;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = (v9 * *(v4 - 2)) + (*(v4 - 3) * v8);
    if (v15 >= v6)
    {
      v14 = 1;
    }

    if (!((v15 <= 0.0) | v14 & 1))
    {
      v6 = v15;
    }

    v7 = (v15 <= 0.0) & v7;
    ++v5;
    v4 += 7;
  }

  while (v5 != 33);
  result = 0.0;
  if (!v7)
  {
    return v6;
  }

  return result;
}

- (float)DistanceFromRgon:(id)a3
{
  v5 = [a3 rgonPtr] + 16;
  v8 = 3.4028e38;
  v9 = 32;
  do
  {
    LODWORD(v6) = *(v5 - 1);
    LODWORD(v7) = *v5;
    [(Rgon *)self DistToPointX:v6 Y:v7];
    if (*&v6 < v8)
    {
      v8 = *&v6;
    }

    v5 += 7;
    --v9;
  }

  while (v9);
  v10 = &self->rgonArray[0][4];
  v11 = 32;
  do
  {
    *&v6 = *(v10 - 1);
    *&v7 = *v10;
    [a3 DistToPointX:v6 Y:v7];
    if (*&v6 < v8)
    {
      v8 = *&v6;
    }

    v10 += 7;
    --v11;
  }

  while (v11);
  return v8;
}

- (float)DistanceBetweenCenters:(id)a3
{
  [(Rgon *)self XCenter];
  v6 = v5;
  [(Rgon *)self YCenter];
  v8 = v7;
  [a3 XCenter];
  v10 = v9;
  [a3 YCenter];
  return sqrtf(((v11 - v8) * (v11 - v8)) + ((v10 - v6) * (v10 - v6)));
}

- (float)Area
{
  v2 = &self->rgonArray[0][6];
  v3 = 0.0;
  v4 = 32;
  do
  {
    v3 = v3 + ((*(v2 - 3) * *v2) - (*(v2 - 2) * *(v2 - 1)));
    v2 += 7;
    --v4;
  }

  while (v4);
  return fabsf(v3 * 0.5);
}

- (double)Density
{
  count = self->count;
  [(Rgon *)self Area];
  return count / v3;
}

- (float)Perimeter
{
  v2 = &self->rgonArray[0][6];
  v3 = 0.0;
  v4 = 32;
  do
  {
    v3 = v3 + sqrtf((*v2 * *v2) + (*(v2 - 1) * *(v2 - 1)));
    v2 += 7;
    --v4;
  }

  while (v4);
  return fabsf(v3);
}

- (float)AspectRatio
{
  [(Rgon *)self Diameter];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    [(Rgon *)self MinDiameter];
    return v6 / v4;
  }

  return result;
}

- (void)IntersectionOfEdge:(int)a3 withEdge:(int)a4 resultPoint:(float)a5[2]
{
  if (a4 != a3)
  {
    rgonArray = self->rgonArray;
    v9 = (2 * (a4 - a3)) * 3.14159265 * 0.03125;
    v10 = 1.0 / sinf(v9);
    v11 = rgonArray[a4];
    v12 = rgonArray[a3];
    *a5 = v10 * ((v11[1] * v12[2]) - (v12[1] * v11[2]));
    a5[1] = v10 * ((*v12 * v11[2]) - (*v11 * v12[2]));
  }
}

- (void)PrintVertices
{
  v3 = &self->rgonArray[0][4];
  v4 = 32;
  do
  {
    printf(" {%f , %f },", *(v3 - 1), *v3);
    v3 += 7;
    --v4;
  }

  while (v4);
  printf(" {%f , %f }", self->rgonArray[0][3], self->rgonArray[0][4]);

  putchar(10);
}

- (void)PrintVerticesWithZCoord:(double)a3
{
  printf(" Line[ { ");
  v5 = &self->rgonArray[0][4];
  v6 = 32;
  do
  {
    printf(" {%f,%f,%f},", *(v5 - 1), *v5, a3);
    v5 += 7;
    --v6;
  }

  while (v6);
  printf(" {%f,%f,%f}", self->rgonArray[0][3], self->rgonArray[0][4], a3);
  printf(" }] ");

  putchar(10);
}

- (void)PrintConstraints
{
  printf("\n{");
  for (i = 16; i != 884; i += 28)
  {
    printf(" %f,", *(&self->super.isa + i));
  }

  printf(" %f } \n", self->rgonArray[31][2]);
}

- (void)ShrinkByAmount:(float)a3
{
  for (i = 16; i != 912; i += 28)
  {
    *(&self->super.isa + i) = *(&self->super.isa + i) + a3;
  }

  v5 = [(Rgon *)self createWithCollapsedOrphans2];
  v6 = [v5 rgonPtr];
  v7 = 0;
  v8 = v6 + 8;
  do
  {
    v9 = (self + v7);
    v9[4] = *&v8[v7];
    v9[5] = *&v8[v7 + 4];
    v9[6] = *&v8[v7 + 8];
    v7 += 28;
  }

  while (v7 != 896);

  [(Rgon *)self CalculateEdges];
}

- (int)OutsideReturnFirstEdgeExcludingX:(float)a3 Y:(float)a4
{
  v5 = 0;
  for (i = &self->rgonArray[0][2]; ((*(i - 1) * a4) + (*(i - 2) * a3)) >= (*i + -0.00001); i += 7)
  {
    if (++v5 == 32)
    {
      LODWORD(v5) = -1;
      return v5;
    }
  }

  return v5;
}

- ($94F468A8D4C62B317260615823C2B210)intersectionEdge:(int)a3 withEdge:(int)a4
{
  v4 = 0.0;
  v5 = 0.0;
  if (a4 != a3)
  {
    rgonArray = self->rgonArray;
    v9 = (2 * (a4 - a3)) * 3.14159265 * 0.03125;
    v10 = 1.0 / sinf(v9);
    v11 = rgonArray[a4];
    v12 = rgonArray[a3];
    v13 = v12[2];
    v14 = v11[2];
    v5 = v10 * ((v11[1] * v13) - (v12[1] * v14));
    v4 = v10 * ((v14 * *v12) - (*v11 * v13));
  }

  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (id)createWithCollapsedOrphans2
{
  v3 = objc_alloc_init(Rgon);
  v4 = 0;
  do
  {
    v5 = -22;
    do
    {
      if (v5 != -11)
      {
        v6 = v4 + v5 + 11;
        v7 = v6 & 0x1F;
        v9 = -v6;
        v8 = v9 < 0;
        v10 = v9 & 0x1F;
        if (v8)
        {
          v11 = v7;
        }

        else
        {
          v11 = -v10;
        }

        [(Rgon *)self IntersectionOfEdge:v11 withEdge:v4 resultPoint:&v20];
        v12 = v20;
        v13 = v21;
        LODWORD(v14) = v20;
        LODWORD(v15) = v21;
        if ([(Rgon *)self containsPointX:v14 Y:v15])
        {
          LODWORD(v16) = v12;
          LODWORD(v17) = v13;
          [(Rgon *)v3 AdjustForPointX:v16 Y:v17];
        }
      }
    }

    while (!__CFADD__(v5++, 1));
    v4 = (v4 + 1);
  }

  while (v4 != 32);
  [(Rgon *)v3 CalculateVertices];
  return v3;
}

- (BOOL)CollapseOrphans
{
  rgonArray = self->rgonArray;
  v33 = 0;
  v5 = &self->rgonArray[0][4];
  v6 = -32;
  while (1)
  {
    *&v2 = *(v5 - 1);
    *&v3 = *v5;
    if ([(Rgon *)self containsPointX:v2 Y:v3, rgonArray])
    {
      break;
    }

    v5 += 7;
    v7 = __CFADD__(v6++, 1);
    if (v7)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = *(v5 - 1);
  v10 = *v5;
  v31 = v9;
  v32 = v10;
  v11 = (v6 + 33) & 0x1F;
  v12 = 0.0;
  v13 = 1;
  while (v11 <= 30)
  {
    v14 = 0;
    v15 = &v31 + 2 * v13;
    v16 = &self->rgonArray[v11][3];
    while (1)
    {
      *&v2 = *v16;
      *&v3 = v16[1];
      v17 = [(Rgon *)self OutsideReturnFirstEdgeExcludingX:v2 Y:v3];
      if ((v17 & 0x80000000) == 0)
      {
        break;
      }

      v29 = *v16;
      *v15 = *v16;
      *&v2 = asinf((*(v16 - 3) * v16[5]) - (*(v16 - 2) * v16[4]));
      if (v13 >= 3 && (vabds_f32(*&v29, v9) + vabds_f32(*(&v29 + 1), v10)) < 0.00000001)
      {
        v14 = 1;
      }

      ++v11;
      v12 = v12 + *&v2;
      if (v12 > 6.2832 && v13 > 2)
      {
        v14 = 1;
      }

      ++v13;
      v15 += 2;
      v16 += 7;
      if (v11 - 1 >= 30)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    [(Rgon *)self IntersectionOfEdge:(v11 - 1) withEdge:v17 resultPoint:&v33];
    LODWORD(v20) = HIDWORD(v33);
    LODWORD(v19) = v33;
    v21 = [(Rgon *)self OutsideReturnFirstEdgeExcludingX:v19 Y:v20];
    if (v21 < 1)
    {
LABEL_26:
      if (v21 && v13 <= 31)
      {
        v30 = v33;
        *(&v31 + v13) = v33;
        *&v2 = asinf((rgonArray[v11 - 1][0] * rgonArray[v17][1]) - (rgonArray[v11 - 1][1] * rgonArray[v17][0]));
        if (v13 >= 3 && (vabds_f32(*&v30, v9) + vabds_f32(*(&v30 + 1), v10)) < 0.00000001)
        {
          v14 = 1;
        }

        v12 = v12 + *&v2;
        if (v12 > 6.2832 && v13 > 2)
        {
          v14 = 1;
        }

        ++v13;
      }
    }

    else
    {
      v22 = 32;
      while (1)
      {
        LODWORD(v17) = v21;
        [(Rgon *)self IntersectionOfEdge:(v11 - 1) withEdge:v21 resultPoint:&v33];
        if (!--v22)
        {
          break;
        }

        LODWORD(v3) = HIDWORD(v33);
        LODWORD(v2) = v33;
        v21 = [(Rgon *)self OutsideReturnFirstEdgeExcludingX:v2 Y:v3];
        if (v21 < 1)
        {
          goto LABEL_26;
        }
      }
    }

    if (v17 >= v11)
    {
      v11 = v17 + 1;
      if (v17 + 1 <= 31 && !v14)
      {
        v7 = v8++ >= 0x1F;
        if (!v7)
        {
          continue;
        }
      }
    }

    goto LABEL_44;
  }

  v14 = 0;
  v11 = 31;
  v17 = 0xFFFFFFFFLL;
LABEL_21:
  if (v11 != 31)
  {
    goto LABEL_22;
  }

  v2 = *&self->rgonArray[31][3];
  *(&v31 + v13++) = v2;
LABEL_44:
  if (v13 < 3)
  {
    return 0;
  }

  for (i = 20; i != 916; i += 28)
  {
    *(&self->super.isa + i) = 0;
  }

  v25 = v13;
  v26 = &v32;
  do
  {
    *&v2 = *(v26 - 1);
    *&v3 = *v26;
    [(Rgon *)self AdjustForPointX:v2 Y:v3];
    v26 += 2;
    --v25;
  }

  while (v25);
  [(Rgon *)self CalculateVertices];
  return 1;
}

- (void)UnionWith:(id)a3
{
  v4 = [a3 rgonPtr] + 16;
  v7 = 32;
  do
  {
    LODWORD(v5) = *(v4 - 1);
    LODWORD(v6) = *v4;
    [(Rgon *)self AdjustForPointX:v5 Y:v6];
    v4 += 7;
    --v7;
  }

  while (v7);

  [(Rgon *)self CalculateVertices];
}

- (id)unionRgonOf:(id)a3 withRgon:(id)a4
{
  v5 = [a4 copy];
  [v5 UnionWith:a3];

  return v5;
}

+ (id)newInterpolatedRgonFrom:(id)a3 withRgon:(id)a4 param:(float)a5
{
  v8 = [a4 copy];
  v9 = [a3 rgonPtr];
  v10 = [a4 rgonPtr];
  v11 = [v8 rgonPtr];
  v12 = 1.0 - a5;
  v13 = (v9 + 16);
  v14 = (v11 + 16);
  v15 = (v10 + 16);
  v16 = 32;
  do
  {
    *(v14 - 2) = (*(v15 - 2) * a5) + (v12 * *(v13 - 2));
    *(v14 - 1) = (*(v15 - 1) * a5) + (v12 * *(v13 - 1));
    v17 = *v13;
    v13 += 7;
    v18 = v17;
    v19 = *v15;
    v15 += 7;
    *v14 = (v19 * a5) + (v12 * v18);
    v14 += 7;
    --v16;
  }

  while (v16);
  return v8;
}

- (BOOL)IntersectionRgonOf:(id)a3 withRgon:(id)a4
{
  v6 = [a3 rgonPtr];
  v7 = [a4 rgonPtr];
  for (i = 0; i != 32; ++i)
  {
    v9 = *&v6[i * 28 + 8];
    self->rgonArray[i][2] = v9;
    v10 = *&v7[i * 28 + 8];
    if (v10 > v9)
    {
      self->rgonArray[i][2] = v10;
    }
  }

  [(Rgon *)self CalculateVertices];

  return [(Rgon *)self CollapseOrphans];
}

- (float)DistanceCenterToRGon:(id)a3
{
  [(Rgon *)self XCenter];
  v6 = v5;
  [(Rgon *)self YCenter];
  v8 = v7;
  [a3 XCenter];
  v10 = v9;
  [a3 YCenter];
  LODWORD(v12) = v11;
  LODWORD(v13) = v10;
  [(Rgon *)self DistToPointX:v13 Y:v12];
  v15 = v14;
  LODWORD(v16) = v6;
  LODWORD(v17) = v8;
  [a3 DistToPointX:v16 Y:v17];
  if (v15 < result)
  {
    return v15;
  }

  return result;
}

@end