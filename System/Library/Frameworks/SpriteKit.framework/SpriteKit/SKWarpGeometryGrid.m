@interface SKWarpGeometryGrid
+ (SKWarpGeometryGrid)grid;
+ (SKWarpGeometryGrid)gridWithColumns:(NSInteger)cols rows:(NSInteger)rows;
+ (SKWarpGeometryGrid)gridWithColumns:(NSInteger)cols rows:(NSInteger)rows sourcePositions:(const vector_float2 *)sourcePositions destPositions:(const vector_float2 *)destPositions;
- (BOOL)isEqualToGrid:(id)a3;
- (SKWarpGeometryGrid)gridByReplacingDestPositions:(const vector_float2 *)destPositions;
- (SKWarpGeometryGrid)gridByReplacingSourcePositions:(const vector_float2 *)sourcePositions;
- (SKWarpGeometryGrid)initWithCoder:(NSCoder *)aDecoder;
- (SKWarpGeometryGrid)initWithColumns:(NSInteger)cols rows:(NSInteger)rows sourcePositions:(const vector_float2 *)sourcePositions destPositions:(const vector_float2 *)destPositions;
- (id).cxx_construct;
- (vector_float2)destPositionAtIndex:(NSInteger)index;
- (vector_float2)sourcePositionAtIndex:(NSInteger)index;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKWarpGeometryGrid

+ (SKWarpGeometryGrid)grid
{
  v2 = objc_opt_class();

  return [v2 gridWithColumns:1 rows:1 sourcePositions:0 destPositions:0];
}

+ (SKWarpGeometryGrid)gridWithColumns:(NSInteger)cols rows:(NSInteger)rows
{
  v6 = objc_opt_class();

  return [v6 gridWithColumns:cols rows:rows sourcePositions:0 destPositions:0];
}

+ (SKWarpGeometryGrid)gridWithColumns:(NSInteger)cols rows:(NSInteger)rows sourcePositions:(const vector_float2 *)sourcePositions destPositions:(const vector_float2 *)destPositions
{
  v6 = [objc_alloc(objc_opt_class()) initWithColumns:cols rows:rows sourcePositions:sourcePositions destPositions:destPositions];

  return v6;
}

- (SKWarpGeometryGrid)initWithColumns:(NSInteger)cols rows:(NSInteger)rows sourcePositions:(const vector_float2 *)sourcePositions destPositions:(const vector_float2 *)destPositions
{
  v30.receiver = self;
  v30.super_class = SKWarpGeometryGrid;
  v10 = [(SKWarpGeometryGrid *)&v30 init];
  v11 = v10;
  v12 = v10;
  if (!v10)
  {
LABEL_26:
    v15 = v12;
    goto LABEL_27;
  }

  dimensions = v10->_dimensions;
  *v10->_dimensions = __PAIR64__(rows, cols);
  if (cols >= 1 && rows > 0)
  {
    if (rows * cols < 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = cols + 1 + (cols + 1) * rows;
    }

    v10->_vertexCount = v14;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v10->_anon_8, v14);
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v11->_anon_20, v12->_vertexCount);
    if (sourcePositions | destPositions)
    {
      v12->_isIdentityWarp = 0;
      if (sourcePositions)
      {
        memcpy(*v11->_anon_8, sourcePositions, 8 * v12->_vertexCount);
LABEL_18:
        if (destPositions)
        {
          memcpy(*v11->_anon_20, destPositions, 8 * v12->_vertexCount);
        }

        else if ((*&v11->_dimensions[4] & 0x80000000) == 0)
        {
          v23 = 0;
          v24 = *dimensions;
          do
          {
            v25 = v24.i32[0];
            if ((v24.i32[0] & 0x80000000) == 0)
            {
              v26 = 0;
              v27 = -1;
              do
              {
                v28.f32[0] = v26;
                v24.i32[0] = v25;
                v28.f32[1] = v23;
                *(*v11->_anon_20 + 8 * (v26 + (v23 + v23 * v25))) = vdiv_f32(v28, vcvt_f32_s32(v24));
                v24 = *dimensions;
                v25 = *dimensions;
                ++v27;
                ++v26;
              }

              while (v27 < v25);
            }

            v22 = v23++ < v24.i32[1];
          }

          while (v22);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v12->_isIdentityWarp = 1;
    }

    if ((*&v11->_dimensions[4] & 0x80000000) == 0)
    {
      v16 = 0;
      v17 = *dimensions;
      do
      {
        v18 = v17.i32[0];
        if ((v17.i32[0] & 0x80000000) == 0)
        {
          v19 = 0;
          v20 = -1;
          do
          {
            v21.f32[0] = v19;
            v17.i32[0] = v18;
            v21.f32[1] = v16;
            *(*v11->_anon_8 + 8 * (v19 + (v16 + v16 * v18))) = vdiv_f32(v21, vcvt_f32_s32(v17));
            v17 = *dimensions;
            v18 = *dimensions;
            ++v20;
            ++v19;
          }

          while (v20 < v18);
        }

        v22 = v16++ < v17.i32[1];
      }

      while (v22);
    }

    goto LABEL_18;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKWarpGeometryGrid: numberOfColumns and numberOfRows must be greater than or equal to 1"];
  v15 = 0;
LABEL_27:

  return v15;
}

- (SKWarpGeometryGrid)initWithCoder:(NSCoder *)aDecoder
{
  v47[3] = *MEMORY[0x277D85DE8];
  v44 = aDecoder;
  v45.receiver = self;
  v45.super_class = SKWarpGeometryGrid;
  v4 = [(SKWarpGeometryGrid *)&v45 init];
  if (v4)
  {
    *v4->_dimensions = [(NSCoder *)v44 decodeIntegerForKey:@"_numberOfColumns"];
    v5 = [(NSCoder *)v44 decodeIntegerForKey:@"_numberOfRows"];
    v6.i32[0] = 0;
    v7 = *v4->_dimensions;
    v8 = vcgt_s32(v6, v7);
    v7.i32[1] = v5;
    v9.i32[1] = v5;
    v9.i32[0] = 0;
    v10 = vbsl_s8(vdup_lane_s32(v8, 0), v9, v7);
    v11 = vdup_lane_s32(vcgt_s32(v6, vdup_lane_s32(v10, 1)), 0);
    v12 = vbsl_s8(v11, v10.u32[0], v10);
    v13 = vbic_s8(v10, v11);
    *v4->_dimensions = v12;
    v14 = v13.i32[1] + 1 + (v13.i32[1] + 1) * v12.i32[0];
    if (v12.i32[0] * v13.i32[1] < 1)
    {
      v14 = 1;
    }

    v4->_vertexCount = v14;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v4->_anon_8, v14);
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v4->_anon_20, v4->_vertexCount);
    v15 = MEMORY[0x277CBEB98];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v47[2] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    v17 = [v15 setWithArray:v16];
    v18 = [(NSCoder *)v44 decodeObjectOfClasses:v17 forKey:@"_sourcePositions"];

    v19 = 0;
    for (i = 0; ; ++i)
    {
      v21 = [v18 count];
      vertexCount = v4->_vertexCount;
      if (v21 < vertexCount)
      {
        vertexCount = v21;
      }

      if (vertexCount <= i)
      {
        break;
      }

      v23 = [v18 objectAtIndexedSubscript:i];
      v24 = [v23 objectAtIndexedSubscript:0];
      [v24 floatValue];
      *(*v4->_anon_8 + v19) = v25;

      v26 = [v18 objectAtIndexedSubscript:i];
      v27 = [v26 objectAtIndexedSubscript:1];
      [v27 floatValue];
      *(*v4->_anon_8 + v19 + 4) = v28;

      v19 += 8;
    }

    v29 = MEMORY[0x277CBEB98];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v46[2] = objc_opt_class();
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v31 = [v29 setWithArray:v30];
    v32 = [(NSCoder *)v44 decodeObjectOfClasses:v31 forKey:@"_destPositions"];

    v33 = 0;
    for (j = 0; ; ++j)
    {
      v35 = [v18 count];
      v36 = v4->_vertexCount;
      if (v35 < v36)
      {
        v36 = v35;
      }

      if (v36 <= j)
      {
        break;
      }

      v37 = [v32 objectAtIndexedSubscript:j];
      v38 = [v37 objectAtIndexedSubscript:0];
      [v38 floatValue];
      *(*v4->_anon_20 + v33) = v39;

      v40 = [v32 objectAtIndexedSubscript:j];
      v41 = [v40 objectAtIndexedSubscript:1];
      [v41 floatValue];
      *(*v4->_anon_20 + v33 + 4) = v42;

      v33 += 8;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = a3;
  [v17 encodeInteger:1 forKey:@"_SKWarpGeometryGridVersion"];
  [v17 encodeInteger:-[SKWarpGeometryGrid numberOfColumns](self forKey:{"numberOfColumns"), @"_numberOfColumns"}];
  [v17 encodeInteger:-[SKWarpGeometryGrid numberOfRows](self forKey:{"numberOfRows"), @"_numberOfRows"}];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[SKWarpGeometryGrid vertexCount](self, "vertexCount")}];
  v4 = 0;
  v5 = 4;
  while ([(SKWarpGeometryGrid *)self vertexCount]> v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:*(*self->_anon_8 + 8 * v4)];
    v20[0] = v6;
    LODWORD(v7) = *(*self->_anon_8 + v5);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v20[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v18 addObject:v9];

    ++v4;
    v5 += 8;
  }

  [v17 encodeObject:v18 forKey:@"_sourcePositions"];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[SKWarpGeometryGrid vertexCount](self, "vertexCount")}];
  v11 = 0;
  v12 = 4;
  while ([(SKWarpGeometryGrid *)self vertexCount]> v11)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:*(*self->_anon_20 + 8 * v11)];
    v19[0] = v13;
    LODWORD(v14) = *(*self->_anon_20 + v12);
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v19[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [v10 addObject:v16];

    ++v11;
    v12 += 8;
  }

  [v17 encodeObject:v10 forKey:@"_destPositions"];
}

- (BOOL)isEqualToGrid:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_19;
  }

  v5 = [(SKWarpGeometryGrid *)self numberOfColumns];
  if (v5 == [(SKWarpGeometryGrid *)v4 numberOfColumns])
  {
    v6 = [(SKWarpGeometryGrid *)self numberOfRows];
    if (v6 == [(SKWarpGeometryGrid *)v4 numberOfRows])
    {
      v7 = *self->_anon_8;
      v8 = *&self->_anon_8[8] - v7;
      if (v8)
      {
        v9 = v8 >> 3;
        v10 = *v4->_anon_8;
        if (v9 <= 1)
        {
          v9 = 1;
        }

        do
        {
          v11 = vsub_f32(*v7, *v10);
          if ((v11.i32[0] & 0x60000000) != 0 || (v11.i32[1] & 0x60000000) != 0)
          {
            goto LABEL_18;
          }

          ++v10;
          ++v7;
        }

        while (--v9);
      }

      v12 = *self->_anon_20;
      v13 = *&self->_anon_20[8];
      v14 = v13 - v12;
      if (v13 != v12)
      {
        v15 = 0;
        v16 = v14 >> 3;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        while (1)
        {
          v18 = vsub_f32(*(v12 + 8 * v15), *(*v4->_anon_20 + 8 * v15));
          if ((v18.i32[0] & 0x60000000) != 0 || (v18.i32[1] & 0x60000000) != 0)
          {
            goto LABEL_18;
          }

          if (v17 == ++v15)
          {
            v19 = v16 <= v15;
            goto LABEL_20;
          }
        }
      }

LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }
  }

LABEL_18:
  v19 = 0;
LABEL_20:

  return v19;
}

- (vector_float2)sourcePositionAtIndex:(NSInteger)index
{
  if (index < 0 || self->_vertexCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"SKWarpGeometryGrid: index must be in the range [0, vertexCount - 1]", v3, v4}];
    return 0;
  }

  else
  {
    return *(*self->_anon_8 + 8 * index);
  }
}

- (vector_float2)destPositionAtIndex:(NSInteger)index
{
  if (index < 0 || self->_vertexCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"SKWarpGeometryGrid: index must be in the range [0, vertexCount - 1]", v3, v4}];
    return 0;
  }

  else
  {
    return *(*self->_anon_20 + 8 * index);
  }
}

- (SKWarpGeometryGrid)gridByReplacingSourcePositions:(const vector_float2 *)sourcePositions
{
  v5 = objc_opt_class();
  v6 = [(SKWarpGeometryGrid *)self numberOfColumns];
  v7 = [(SKWarpGeometryGrid *)self numberOfRows];
  v8 = [(SKWarpGeometryGrid *)self destPositions];

  return [v5 gridWithColumns:v6 rows:v7 sourcePositions:sourcePositions destPositions:v8];
}

- (SKWarpGeometryGrid)gridByReplacingDestPositions:(const vector_float2 *)destPositions
{
  v5 = objc_opt_class();
  v6 = [(SKWarpGeometryGrid *)self numberOfColumns];
  v7 = [(SKWarpGeometryGrid *)self numberOfRows];
  v8 = [(SKWarpGeometryGrid *)self sourcePositions];

  return [v5 gridWithColumns:v6 rows:v7 sourcePositions:v8 destPositions:destPositions];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end