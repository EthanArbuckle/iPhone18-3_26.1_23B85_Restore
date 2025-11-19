@interface RgonStack
- (RgonStack)init;
- (RgonStack)initWithCoder:(id)a3;
- (float)DistToPointX:(float)a3 Y:(float)a4 Z:(float)a5;
- (int)containsPointPlanarConditionalX2:(float)a3 Y:(float)a4 Z:(float)a5 epsilonDark:(float)a6 epsilonLight:(float)a7 epsilonMid:(float)a8 shouldPrint:(BOOL)a9;
- (int)containsPointPlanarConditionalX:(float)a3 Y:(float)a4 Z:(float)a5 epsilonDark:(float)a6 epsilonLight:(float)a7;
- (int)containsPointPlanarX:(float)a3 Y:(float)a4 Z:(float)a5;
- (int)containsPointX:(float)a3 Y:(float)a4 Z:(float)a5;
- (void)AdjustForPointX:(double)a3 Y:(double)a4 Z:(double)a5;
- (void)CalculateEdges;
- (void)CalculateVertices;
- (void)PrintConstraints;
- (void)PrintFacets;
- (void)PrintVertices;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)normalVectorForRgon1:(id)a3 withZ1:(float)a4 rgon2:(id)a5 withZ2:(float)a6 atIndex:(int)a7 placedInto:(float *)a8;
@end

@implementation RgonStack

- (RgonStack)init
{
  v6.receiver = self;
  v6.super_class = RgonStack;
  v2 = [(RgonStack *)&v6 init];
  v2->binCount = 0;
  v3 = 256;
  v2->stack = [[NSMutableArray alloc] initWithCapacity:256];
  do
  {
    v4 = objc_alloc_init(Rgon);
    [(NSMutableArray *)v2->stack addObject:v4];

    --v3;
  }

  while (v3);
  v2->zMax = -100000.0;
  *&v2->binSize = xmmword_550D0;
  v2->zDarkThr = 0;
  return v2;
}

- (RgonStack)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = RgonStack;
  v4 = [(RgonStack *)&v10 init];
  if (v4)
  {
    v4->stack = [a3 decodeObjectForKey:@"RGON_STACK"];
    v4->binCount = [a3 decodeIntegerForKey:@"BIN_COUNT"];
    v4->binOffset = [a3 decodeIntegerForKey:@"BIN_OFFSET"];
    [a3 decodeDoubleForKey:@"BIN_SIZE"];
    v4->binSize = v5;
    [a3 decodeDoubleForKey:@"LOW_Z"];
    v4->zMin = v6;
    [a3 decodeDoubleForKey:@"HIGH_Z"];
    v4->zMax = v7;
    [a3 decodeDoubleForKey:@"DARKTHR_Z"];
    v4->zDarkThr = v8;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->stack forKey:@"RGON_STACK"];
  [a3 encodeInteger:self->binCount forKey:@"BIN_COUNT"];
  [a3 encodeInteger:self->binOffset forKey:@"BIN_OFFSET"];
  [a3 encodeDouble:@"BIN_SIZE" forKey:self->binSize];
  [a3 encodeDouble:@"LOW_Z" forKey:self->zMin];
  [a3 encodeDouble:@"HIGH_Z" forKey:self->zMax];
  zDarkThr = self->zDarkThr;

  [a3 encodeDouble:@"DARKTHR_Z" forKey:zDarkThr];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RgonStack;
  [(RgonStack *)&v3 dealloc];
}

- (void)AdjustForPointX:(double)a3 Y:(double)a4 Z:(double)a5
{
  if (self->zMin > a5)
  {
    self->zMin = a5;
  }

  if (self->zMax < a5)
  {
    self->zMax = a5;
  }

  v8 = [(NSMutableArray *)self->stack objectAtIndex:(a5 / self->binSize + 0.5)];
  [v8 count];
  if (!v9)
  {
    ++self->binCount;
  }

  *&v9 = a3;
  *&v10 = a4;
  [v8 AdjustForPointX:v9 Y:v10];
}

- (int)containsPointX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v8 = a5 / self->binSize;
  v9 = vcvtpd_s64_f64(v8);
  v10 = [(NSMutableArray *)self->stack objectAtIndex:vcvtmd_s64_f64(v8)];
  v11 = [(NSMutableArray *)self->stack objectAtIndex:v9];
  if (v10 | v11)
  {
    v14 = v11;
    if (v10)
    {
      *&v12 = a3;
      *&v13 = a4;
      LODWORD(v10) = [v10 containsPointX:v12 Y:v13] != 0;
    }

    if (v14)
    {
      *&v12 = a3;
      *&v13 = a4;
      if ([v14 containsPointX:v12 Y:v13])
      {
        LODWORD(v10) = 1;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  return v10;
}

- (float)DistToPointX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v7 = [(NSMutableArray *)self->stack objectAtIndex:(a5 / self->binSize)];
  if (!v7)
  {
    return 1000.0;
  }

  *&v8 = a3;
  *&v9 = a4;

  [v7 DistToPointX:v8 Y:v9];
  return result;
}

- (void)CalculateVertices
{
  for (i = 0; i != 256; ++i)
  {
    v4 = [(NSMutableArray *)self->stack objectAtIndex:i];
    [v4 count];
    if (v5 > 3.0)
    {
      [v4 CalculateVertices];
    }
  }
}

- (void)CalculateEdges
{
  for (i = 0; i != 256; ++i)
  {
    v4 = [(NSMutableArray *)self->stack objectAtIndex:i];
    [v4 count];
    if (v5 > 3.0)
    {
      [v4 CalculateEdges];
    }
  }
}

- (void)PrintVertices
{
  puts(" \n rgon stack print vertices");
  for (i = 0; i != 256; ++i)
  {
    v4 = [(NSMutableArray *)self->stack objectAtIndex:i];
    [v4 count];
    if (v5 > 3.0)
    {
      v6 = self->binSize * i;
      [v4 PrintVerticesWithZCoord:v6];
      printf("\n,");
    }
  }

  puts(" \n end rgon stack print vertices");
}

- (void)PrintConstraints
{
  puts(" \n rgon stack print constraints");
  for (i = 0; i != 256; ++i)
  {
    v4 = [(NSMutableArray *)self->stack objectAtIndex:i];
    [v4 count];
    if (v5 > 3.0)
    {
      [v4 PrintConstraints];
    }
  }

  puts(" \n end rgon stack print constraints");
}

- (void)PrintFacets
{
  v26 = +[NSMutableArray array];
  v25 = +[NSMutableArray array];
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(NSMutableArray *)self->stack objectAtIndex:v3];
    [v5 count];
    if (v6 > 3.0)
    {
      [v26 addObject:v5];
      [v25 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v3)}];
      ++v4;
    }

    ++v3;
  }

  while (v3 != 256);
  printf(" rgon stack print facets of stack with  %d rgons\n", v4);
  if (v4 >= 2)
  {
    v22 = v4;
    v23 = self;
    v7 = 1;
    do
    {
      v8 = [v26 objectAtIndex:v7 - 1];
      v9 = [v26 objectAtIndex:v7];
      [objc_msgSend(v25 objectAtIndex:{v7 - 1), "floatValue"}];
      v11 = self->binSize * v10;
      v24 = v7;
      [objc_msgSend(v25 objectAtIndex:{v7), "floatValue"}];
      v13 = self->binSize * v12;
      v14 = [v8 rgonPtr];
      v15 = [v9 rgonPtr];
      v16 = v11;
      v17 = v13;
      v18 = (v15 + 16);
      v19 = (v14 + 16);
      for (i = 1; i != 33; ++i)
      {
        printf(" Line[ { ");
        printf(" {%5.2f,%5.2f,%5.2f},", *(v19 - 1), *v19, v16);
        v21 = 28 * (i & 0x1F);
        printf(" {%5.2f,%5.2f,%5.2f},", *&v14[v21 + 12], *&v14[v21 + 16], v16);
        printf(" {%5.2f,%5.2f,%5.2f},", *&v15[v21 + 12], *&v15[v21 + 16], v17);
        printf(" {%5.2f,%5.2f,%5.2f},", *(v18 - 1), *v18, v17);
        printf(" {%5.2f,%5.2f,%5.2f} ", *(v19 - 1), *v19, v16);
        puts(" }] ,");
        v18 += 7;
        v19 += 7;
      }

      self = v23;
      v7 = v24 + 1;
    }

    while (v24 + 1 != v22);
  }

  puts("\n end rgon stack print");
}

- (int)containsPointPlanarX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v9 = a5 / self->binSize;
  v10 = vcvtmd_s64_f64(v9);
  v11 = vcvtpd_s64_f64(v9);
  v12 = [(NSMutableArray *)self->stack objectAtIndex:v10];
  v13 = [(NSMutableArray *)self->stack objectAtIndex:v11];
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    return 0;
  }

  v16 = v13;
  v17 = [v12 rgonPtr];
  v18 = [v16 rgonPtr];
  v19 = 0;
  v20 = (v18 + 16);
  v21 = (v17 + 16);
  do
  {
    v22 = v19;
    if (v19 == 32)
    {
      break;
    }

    ++v19;
    v23 = &v17[28 * ((v22 + 1) & 0x1F)];
    v24 = *(v21 - 1);
    v25 = v24 - v23[3];
    v26 = *v21 - v23[4];
    v27 = v24 - *(v20 - 1);
    v28 = *v21 - *v20;
    binSize = self->binSize;
    v30 = binSize * (v10 - v11);
    v31 = (v28 * -0.0) + (v26 * v30);
    v32 = (v27 * 0.0) - (v25 * v30);
    v33 = (v25 * v28) - (v26 * v27);
    v34 = ((*v21 * v32) + (v31 * v24)) + (v33 * v10) * binSize;
    v20 += 7;
    v21 += 7;
  }

  while (((((v32 * a4) + (v31 * a3)) + (v33 * a5)) - v34) <= 20.0);
  return v22 > 0x1F;
}

- (int)containsPointPlanarConditionalX:(float)a3 Y:(float)a4 Z:(float)a5 epsilonDark:(float)a6 epsilonLight:(float)a7
{
  zMin = self->zMin;
  zMax = self->zMax;
  if (zMax == zMin)
  {
    return 0;
  }

  v15 = a5;
  v16 = a5 / self->binSize;
  v17 = vcvtmd_s64_f64(v16);
  v18 = vcvtpd_s64_f64(v16);
  v19 = [(NSMutableArray *)self->stack objectAtIndex:v17];
  v20 = [(NSMutableArray *)self->stack objectAtIndex:v18];
  if (!(v19 | v20))
  {
    return 0;
  }

  v21 = v20;
  [v20 count];
  if (v22 < 30.0)
  {
    [v19 count];
    if (v23 < 10.0)
    {
      return 0;
    }
  }

  [v19 count];
  if (v24 < 30.0)
  {
    [v21 count];
    if (v25 < 10.0)
    {
      return 0;
    }
  }

  v27 = (v15 - zMin) / (zMax - zMin);
  v28 = ((1.0 - v27) * a6) + (v27 * a7);
  v29 = [v19 rgonPtr];
  v30 = [v21 rgonPtr];
  v31 = 0;
  v32 = (v30 + 16);
  v33 = (v29 + 16);
  do
  {
    v34 = v31;
    if (v31 == 32)
    {
      break;
    }

    ++v31;
    v35 = &v29[28 * ((v34 + 1) & 0x1F)];
    v36 = *(v33 - 1);
    v37 = -(*(v33 - 3) - ((v36 - v35[3]) * 0.0));
    v38 = *(v33 - 4) + ((*v33 - v35[4]) * 0.0);
    v39 = v36 - *(v32 - 1);
    v40 = *v33 - *v32;
    binSize = self->binSize;
    v42 = binSize * (v17 - v18);
    v43 = (v40 * -0.0) + (v38 * v42);
    v44 = (v39 * 0.0) - (v37 * v42);
    v45 = (v37 * v40) - (v38 * v39);
    v46 = ((*v33 * v44) + (v43 * v36)) + (v45 * v17) * binSize;
    v32 += 7;
    v33 += 7;
  }

  while (((((v44 * a4) + (v43 * a3)) + (v45 * a5)) - v46) <= v28);
  return v34 > 0x1F;
}

- (int)containsPointPlanarConditionalX2:(float)a3 Y:(float)a4 Z:(float)a5 epsilonDark:(float)a6 epsilonLight:(float)a7 epsilonMid:(float)a8 shouldPrint:(BOOL)a9
{
  zMin = self->zMin;
  zMax = self->zMax;
  if (zMax == zMin)
  {
    return 0;
  }

  v16 = a5;
  v17 = a5 / self->binSize;
  v18 = vcvtmd_s64_f64(v17);
  v19 = vcvtpd_s64_f64(v17);
  v20 = [(NSMutableArray *)self->stack objectAtIndex:v18];
  v21 = [(NSMutableArray *)self->stack objectAtIndex:v19];
  if (!(v20 | v21))
  {
    return 0;
  }

  v23 = v21;
  v24 = zMax - zMin;
  v25 = (v16 - zMin) / (zMax - zMin);
  *&v25 = v25;
  v26 = ((1.0 - *&v25) * a6) + (*&v25 * a7);
  v46 = -1;
  v47[0] = -1;
  *&v25 = a3;
  *&v24 = a4;
  *&v22 = v26;
  v27 = [v20 containsPointX:v47 Y:v25 withTolerance:v24 returnIndex:v22];
  *&v28 = a3;
  *&v29 = a4;
  *&v30 = v26;
  v31 = [v23 containsPointX:&v46 Y:v28 withTolerance:v29 returnIndex:v30];
  if (v27)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    if (v27 | v31)
    {
      v33 = (v16 - v18 * self->binSize) / self->binSize;
      v45 = v33;
      v34 = [v20 rgonPtr];
      v35 = [v23 rgonPtr];
      v36 = 0;
      *v37.i32 = 1.0 - v45;
      v38 = vdup_lane_s32(v37, 0);
      do
      {
        v39 = &v47[v36 / 4 + 1];
        v39[1] = vmla_f32(vmul_n_f32(*&v35[v36 + 8], v45), *&v34[v36 + 8], v38);
        v39[2].f32[0] = (*&v35[v36 + 16] * v45) + (*v37.i32 * *&v34[v36 + 16]);
        v36 += 28;
      }

      while (v36 != 896);
      v40 = 0;
      v41 = 0;
      do
      {
        if (*&v47[v40 + 4] != 0.0 || *&v47[v40 + 6] != 0.0)
        {
          ++v41;
        }

        v40 += 7;
      }

      while (v40 != 28);
      if (v41 >= 3)
      {
        v43 = 0;
        while (1)
        {
          v44 = &v47[7 * dword_550E0[v43] + 1];
          if (((v44[1] * a4) + (*v44 * a3)) < (v44[2] - v26))
          {
            break;
          }

          if (++v43 == 32)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

- (void)normalVectorForRgon1:(id)a3 withZ1:(float)a4 rgon2:(id)a5 withZ2:(float)a6 atIndex:(int)a7 placedInto:(float *)a8
{
  v13 = [a3 rgonPtr];
  v14 = [a5 rgonPtr];
  v15 = 0;
  v16 = 28 * a7;
  v17 = &v13[v16];
  v18 = &v14[v16];
  v19 = v17[3];
  v20 = v17[4];
  v21 = v19 - v18[3];
  v22 = v20 - v18[4];
  v23 = v17[10] - v19;
  v24 = v17[11] - v20;
  v27 = (v22 * 0.0) - ((a4 - a6) * v24);
  v28 = (v21 * -0.0) + ((a4 - a6) * v23);
  v29 = (v21 * v24) - (v22 * v23);
  v25 = sqrtf(((v28 * v28) + (v27 * v27)) + (v29 * v29));
  if (v25 < 0.00001)
  {
    v25 = 1.0;
  }

  do
  {
    a8[v15] = (*(&v27 + v15 * 4) * 3.0) / v25;
    ++v15;
  }

  while (v15 != 3);
  v26 = &v14[28 * a7 + 28];
  a8[3] = (((v17[3] + v18[3]) + v17[10]) + v26[3]) * 0.25;
  a8[4] = (((v17[4] + v18[4]) + v17[11]) + v26[4]) * 0.25;
  a8[5] = (a4 + a6) * 0.5;
  printf("Hue[.4],Line[{{%5.2f,%5.2f,%5.2f}, {%5.2f,%5.2f,%5.2f} }],\n", v18[3], v18[4], a6, v26[3], v26[4], a6);
}

@end