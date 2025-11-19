@interface ARUIRingsGeometry
- (ARUIRingsGeometry)init;
- (unsigned)connectedIndiciesGeometry;
- (unsigned)disconnectedIndiciesGeometry;
- (void)enumerateVertexGeometryWithBlock:(id)a3;
@end

@implementation ARUIRingsGeometry

- (ARUIRingsGeometry)init
{
  v3.receiver = self;
  v3.super_class = ARUIRingsGeometry;
  result = [(ARUIRingsGeometry *)&v3 init];
  if (result)
  {
    *&result->_startingRadian = 0x40C90FDB00000000;
  }

  return result;
}

- (unsigned)connectedIndiciesGeometry
{
  v3 = malloc_type_malloc(12 * [(ARUIRingsGeometry *)self circleSegments], 0x416C0078uLL);
  if ([(ARUIRingsGeometry *)self circleSegments])
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v3[v4] = v6 - 1;
      v3[v4 + 1] = v6 % (2 * [(ARUIRingsGeometry *)self circleSegments]);
      v3[v4 + 2] = (v6 + 2) % (2 * [(ARUIRingsGeometry *)self circleSegments]);
      v3[v4 + 3] = v6 - 1;
      v3[v4 + 4] = (v6 + 1) % (2 * [(ARUIRingsGeometry *)self circleSegments]);
      v3[v4 + 5] = (v6 + 2) % (2 * [(ARUIRingsGeometry *)self circleSegments]);
      ++v5;
      v4 += 6;
      v6 += 2;
    }

    while (v5 < [(ARUIRingsGeometry *)self circleSegments]);
  }

  return v3;
}

- (void)enumerateVertexGeometryWithBlock:(id)a3
{
  v16 = a3;
  [(ARUIRingsGeometry *)self endingRadian];
  v5 = v4;
  [(ARUIRingsGeometry *)self startingRadian];
  v7 = v6;
  v8 = [(ARUIRingsGeometry *)self circleSegments];
  if ([(ARUIRingsGeometry *)self circleSegments])
  {
    v9 = 0;
    v10 = 0;
    v11 = (v5 - v7) / (v8 - 1);
    do
    {
      [(ARUIRingsGeometry *)self startingRadian];
      v13 = v12 + (v10 * v11);
      v14 = v13 / 6.28318531;
      v15 = __sincosf_stret(v13);
      v16[2](v16, v10, v9, v13, v14, v15.__sinval, v15.__cosval);
      v10 = (v10 + 1);
      v9 = (v9 + 2);
    }

    while (v10 < [(ARUIRingsGeometry *)self circleSegments]);
  }
}

- (unsigned)disconnectedIndiciesGeometry
{
  v3 = malloc_type_malloc(2 * (6 * [(ARUIRingsGeometry *)self circleSegments]- 6), 0x3B3EDC05uLL);
  if ([(ARUIRingsGeometry *)self circleSegments])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v3[v4] = 2 * v5;
      v3[v4 + 1] = (2 * v5) | 1;
      v3[v4 + 2] = 2 * v5 + 3;
      v3[v4 + 3] = 2 * v5;
      v3[v4 + 4] = 2 * v5 + 2;
      v3[v4 + 5] = 2 * v5++ + 3;
      v4 += 6;
    }

    while (v5 < [(ARUIRingsGeometry *)self circleSegments]);
  }

  return v3;
}

@end