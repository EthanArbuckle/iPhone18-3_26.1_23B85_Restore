@interface RgonStack
- (RgonStack)init;
- (RgonStack)initWithCoder:(id)coder;
- (float)DistToPointX:(float)x Y:(float)y Z:(float)z;
- (int)containsPointPlanarConditionalX2:(float)x2 Y:(float)y Z:(float)z epsilonDark:(float)dark epsilonLight:(float)light epsilonMid:(float)mid shouldPrint:(BOOL)print;
- (int)containsPointPlanarConditionalX:(float)x Y:(float)y Z:(float)z epsilonDark:(float)dark epsilonLight:(float)light;
- (int)containsPointPlanarX:(float)x Y:(float)y Z:(float)z;
- (int)containsPointX:(float)x Y:(float)y Z:(float)z;
- (void)AdjustForPointX:(double)x Y:(double)y Z:(double)z;
- (void)CalculateEdges;
- (void)CalculateVertices;
- (void)PrintConstraints;
- (void)PrintFacets;
- (void)PrintVertices;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)normalVectorForRgon1:(id)rgon1 withZ1:(float)z1 rgon2:(id)rgon2 withZ2:(float)z2 atIndex:(int)index placedInto:(float *)into;
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

- (RgonStack)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = RgonStack;
  v4 = [(RgonStack *)&v10 init];
  if (v4)
  {
    v4->stack = [coder decodeObjectForKey:@"RGON_STACK"];
    v4->binCount = [coder decodeIntegerForKey:@"BIN_COUNT"];
    v4->binOffset = [coder decodeIntegerForKey:@"BIN_OFFSET"];
    [coder decodeDoubleForKey:@"BIN_SIZE"];
    v4->binSize = v5;
    [coder decodeDoubleForKey:@"LOW_Z"];
    v4->zMin = v6;
    [coder decodeDoubleForKey:@"HIGH_Z"];
    v4->zMax = v7;
    [coder decodeDoubleForKey:@"DARKTHR_Z"];
    v4->zDarkThr = v8;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->stack forKey:@"RGON_STACK"];
  [coder encodeInteger:self->binCount forKey:@"BIN_COUNT"];
  [coder encodeInteger:self->binOffset forKey:@"BIN_OFFSET"];
  [coder encodeDouble:@"BIN_SIZE" forKey:self->binSize];
  [coder encodeDouble:@"LOW_Z" forKey:self->zMin];
  [coder encodeDouble:@"HIGH_Z" forKey:self->zMax];
  zDarkThr = self->zDarkThr;

  [coder encodeDouble:@"DARKTHR_Z" forKey:zDarkThr];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RgonStack;
  [(RgonStack *)&v3 dealloc];
}

- (void)AdjustForPointX:(double)x Y:(double)y Z:(double)z
{
  if (self->zMin > z)
  {
    self->zMin = z;
  }

  if (self->zMax < z)
  {
    self->zMax = z;
  }

  v8 = [(NSMutableArray *)self->stack objectAtIndex:(z / self->binSize + 0.5)];
  [v8 count];
  if (!v9)
  {
    ++self->binCount;
  }

  *&v9 = x;
  *&v10 = y;
  [v8 AdjustForPointX:v9 Y:v10];
}

- (int)containsPointX:(float)x Y:(float)y Z:(float)z
{
  v8 = z / self->binSize;
  v9 = vcvtpd_s64_f64(v8);
  v10 = [(NSMutableArray *)self->stack objectAtIndex:vcvtmd_s64_f64(v8)];
  v11 = [(NSMutableArray *)self->stack objectAtIndex:v9];
  if (v10 | v11)
  {
    v14 = v11;
    if (v10)
    {
      *&v12 = x;
      *&v13 = y;
      LODWORD(v10) = [v10 containsPointX:v12 Y:v13] != 0;
    }

    if (v14)
    {
      *&v12 = x;
      *&v13 = y;
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

- (float)DistToPointX:(float)x Y:(float)y Z:(float)z
{
  v7 = [(NSMutableArray *)self->stack objectAtIndex:(z / self->binSize)];
  if (!v7)
  {
    return 1000.0;
  }

  *&v8 = x;
  *&v9 = y;

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
    selfCopy = self;
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
      rgonPtr = [v8 rgonPtr];
      rgonPtr2 = [v9 rgonPtr];
      v16 = v11;
      v17 = v13;
      v18 = (rgonPtr2 + 16);
      v19 = (rgonPtr + 16);
      for (i = 1; i != 33; ++i)
      {
        printf(" Line[ { ");
        printf(" {%5.2f,%5.2f,%5.2f},", *(v19 - 1), *v19, v16);
        v21 = 28 * (i & 0x1F);
        printf(" {%5.2f,%5.2f,%5.2f},", *&rgonPtr[v21 + 12], *&rgonPtr[v21 + 16], v16);
        printf(" {%5.2f,%5.2f,%5.2f},", *&rgonPtr2[v21 + 12], *&rgonPtr2[v21 + 16], v17);
        printf(" {%5.2f,%5.2f,%5.2f},", *(v18 - 1), *v18, v17);
        printf(" {%5.2f,%5.2f,%5.2f} ", *(v19 - 1), *v19, v16);
        puts(" }] ,");
        v18 += 7;
        v19 += 7;
      }

      self = selfCopy;
      v7 = v24 + 1;
    }

    while (v24 + 1 != v22);
  }

  puts("\n end rgon stack print");
}

- (int)containsPointPlanarX:(float)x Y:(float)y Z:(float)z
{
  v9 = z / self->binSize;
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
  rgonPtr = [v12 rgonPtr];
  rgonPtr2 = [v16 rgonPtr];
  v19 = 0;
  v20 = (rgonPtr2 + 16);
  v21 = (rgonPtr + 16);
  do
  {
    v22 = v19;
    if (v19 == 32)
    {
      break;
    }

    ++v19;
    v23 = &rgonPtr[28 * ((v22 + 1) & 0x1F)];
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

  while (((((v32 * y) + (v31 * x)) + (v33 * z)) - v34) <= 20.0);
  return v22 > 0x1F;
}

- (int)containsPointPlanarConditionalX:(float)x Y:(float)y Z:(float)z epsilonDark:(float)dark epsilonLight:(float)light
{
  zMin = self->zMin;
  zMax = self->zMax;
  if (zMax == zMin)
  {
    return 0;
  }

  zCopy = z;
  v16 = z / self->binSize;
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

  v27 = (zCopy - zMin) / (zMax - zMin);
  v28 = ((1.0 - v27) * dark) + (v27 * light);
  rgonPtr = [v19 rgonPtr];
  rgonPtr2 = [v21 rgonPtr];
  v31 = 0;
  v32 = (rgonPtr2 + 16);
  v33 = (rgonPtr + 16);
  do
  {
    v34 = v31;
    if (v31 == 32)
    {
      break;
    }

    ++v31;
    v35 = &rgonPtr[28 * ((v34 + 1) & 0x1F)];
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

  while (((((v44 * y) + (v43 * x)) + (v45 * z)) - v46) <= v28);
  return v34 > 0x1F;
}

- (int)containsPointPlanarConditionalX2:(float)x2 Y:(float)y Z:(float)z epsilonDark:(float)dark epsilonLight:(float)light epsilonMid:(float)mid shouldPrint:(BOOL)print
{
  zMin = self->zMin;
  zMax = self->zMax;
  if (zMax == zMin)
  {
    return 0;
  }

  zCopy = z;
  v17 = z / self->binSize;
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
  v25 = (zCopy - zMin) / (zMax - zMin);
  *&v25 = v25;
  v26 = ((1.0 - *&v25) * dark) + (*&v25 * light);
  v46 = -1;
  v47[0] = -1;
  *&v25 = x2;
  *&v24 = y;
  *&v22 = v26;
  v27 = [v20 containsPointX:v47 Y:v25 withTolerance:v24 returnIndex:v22];
  *&v28 = x2;
  *&v29 = y;
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
      v33 = (zCopy - v18 * self->binSize) / self->binSize;
      v45 = v33;
      rgonPtr = [v20 rgonPtr];
      rgonPtr2 = [v23 rgonPtr];
      v36 = 0;
      *v37.i32 = 1.0 - v45;
      v38 = vdup_lane_s32(v37, 0);
      do
      {
        v39 = &v47[v36 / 4 + 1];
        v39[1] = vmla_f32(vmul_n_f32(*&rgonPtr2[v36 + 8], v45), *&rgonPtr[v36 + 8], v38);
        v39[2].f32[0] = (*&rgonPtr2[v36 + 16] * v45) + (*v37.i32 * *&rgonPtr[v36 + 16]);
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
          if (((v44[1] * y) + (*v44 * x2)) < (v44[2] - v26))
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

- (void)normalVectorForRgon1:(id)rgon1 withZ1:(float)z1 rgon2:(id)rgon2 withZ2:(float)z2 atIndex:(int)index placedInto:(float *)into
{
  rgonPtr = [rgon1 rgonPtr];
  rgonPtr2 = [rgon2 rgonPtr];
  v15 = 0;
  v16 = 28 * index;
  v17 = &rgonPtr[v16];
  v18 = &rgonPtr2[v16];
  v19 = v17[3];
  v20 = v17[4];
  v21 = v19 - v18[3];
  v22 = v20 - v18[4];
  v23 = v17[10] - v19;
  v24 = v17[11] - v20;
  v27 = (v22 * 0.0) - ((z1 - z2) * v24);
  v28 = (v21 * -0.0) + ((z1 - z2) * v23);
  v29 = (v21 * v24) - (v22 * v23);
  v25 = sqrtf(((v28 * v28) + (v27 * v27)) + (v29 * v29));
  if (v25 < 0.00001)
  {
    v25 = 1.0;
  }

  do
  {
    into[v15] = (*(&v27 + v15 * 4) * 3.0) / v25;
    ++v15;
  }

  while (v15 != 3);
  v26 = &rgonPtr2[28 * index + 28];
  into[3] = (((v17[3] + v18[3]) + v17[10]) + v26[3]) * 0.25;
  into[4] = (((v17[4] + v18[4]) + v17[11]) + v26[4]) * 0.25;
  into[5] = (z1 + z2) * 0.5;
  printf("Hue[.4],Line[{{%5.2f,%5.2f,%5.2f}, {%5.2f,%5.2f,%5.2f} }],\n", v18[3], v18[4], z2, v26[3], v26[4], z2);
}

@end