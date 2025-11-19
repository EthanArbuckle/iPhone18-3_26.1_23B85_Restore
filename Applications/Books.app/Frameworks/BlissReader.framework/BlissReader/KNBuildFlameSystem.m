@interface KNBuildFlameSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3;
- (void)dealloc;
- (void)p_setupBottomRowWithMetalTexture:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 bakedScale:(double)a6;
- (void)p_setupParticleDataWithTexture:(id)a3;
@end

@implementation KNBuildFlameSystem

- (void)dealloc
{
  free(self->_bottomRow);
  v3.receiver = self;
  v3.super_class = KNBuildFlameSystem;
  [(KNBuildFlameSystem *)&v3 dealloc];
}

- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildFlameSystem *)self randomGenerator:a3.x];
  if (self->_bottomRow)
  {
    do
    {
      v5 = &self->_bottomRow[[v4 intBetween:0 :self->_bottomRowCount - 1]];
      y = v5->y;
    }

    while (y == -1.0);
    x = v5->x;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  [(KNBuildFlameSystem *)self objectSize];
  v9 = x * v8;
  [(KNBuildFlameSystem *)self objectSize];
  v11 = y * v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildFlameSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = [objc_opt_class() numberOfVerticesPerParticle] * v4;
  v6 = [(KNBuildFlameSystem *)self dataBuffer];
  v7 = [(KNBuildFlameSystem *)self positionAttribute];
  [v6 metalPoint2DForAttribute:v7 atIndex:v5];
  v9 = v8;

  height = self->_actualSize.height;
  if (height <= v9)
  {
    v11 = self->_actualSize.height;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 * 0.9 + height * 0.2;
  v13 = [(KNBuildFlameSystem *)self randomGenerator];
  [v13 doubleBetween:0.0 :0.1];
  v15 = v12 * (v14 + 1.0);

  [(KNBuildFlameSystem *)self speedMax];
  v17 = 1.0 / v16;
  *&v15 = v15;
  v18 = v17 * *&v15;
  v19 = v17 * 0.0;
  v20 = v18;
  v21 = v19;
  result.var2 = v21;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(KNBuildFlameSystem *)self duration];
  v7 = 1.0 / fmax(v6, 2.0);
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [(KNBuildFlameSystem *)self randomGenerator];
  [v9 doubleBetween:0.8 :1.0];
  v11 = v10 * v8;

  v12 = [(KNBuildFlameSystem *)self indexFromPoint:x, y];
  v13 = [(KNBuildFlameSystem *)self particleCount];
  v14 = (1.0 - v11) * (v12 / v13 * 0.75 + v12 / v13 * (v12 / v13) * 0.25);
  v15 = v11;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildFlameSystem *)self randomGenerator:a3.x];
  v5 = [(KNBuildFlameSystem *)self randomGenerator];
  [v5 doubleBetween:-1.0 :1.0];
  v7 = v6;
  [v4 doubleBetween:-1.0 :1.0];
  v9 = v8;

  v10 = 0.0;
  *&v7 = v7;
  v11 = *&v7;
  v12 = v9;
  result.var2 = v12;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

- (void)p_setupBottomRowWithMetalTexture:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 bakedScale:(double)a6
{
  v9 = a3;
  v10 = [(KNBuildFlameSystem *)self metalContext];
  v11 = [v10 device];

  v52 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:v11 library:@"KeynoteMetalLibrary"];
  v12 = [v52 newFunctionWithName:@"buildFlameBottomRowComputeShader"];
  v53 = [v11 newBufferWithBytes:malloc_type_malloc(16 * a4 length:0x1000040451B5BE8uLL) options:{16 * a4, 0}];
  v13 = objc_alloc_init(MTLComputePipelineDescriptor);
  v51 = v12;
  [v13 setComputeFunction:v12];
  v14 = objc_alloc_init(MTLBufferLayoutDescriptor);
  [v14 setStride:16];
  [v14 setStepRate:1];
  [v14 setStepFunction:5];
  v15 = [v13 stageInputDescriptor];
  v16 = [v15 layouts];
  [v16 setObject:v14 atIndexedSubscript:0];

  v60[0] = 0;
  v59 = 0;
  v17 = [v11 newComputePipelineStateWithDescriptor:v13 options:0 reflection:v60 error:&v59];
  v18 = v60[0];
  v19 = v59;
  v20 = v19;
  if (v17)
  {
    v46 = v19;
    v47 = v18;
    v48 = v11;
    v21 = [v17 threadExecutionWidth];
    v49 = v9;
    v44 = ([v9 width] + v21 - 1) / v21;
    if (a6 <= 1.0)
    {
      TSUClamp();
      a6 = v22;
    }

    v58 = a6;
    v23 = [(KNBuildFlameSystem *)self metalContext];
    v24 = [v23 commandQueue];
    v25 = [v24 commandBuffer];

    v26 = [v25 computeCommandEncoder];
    [v26 setComputePipelineState:v17];
    [v26 setBuffer:v53 offset:0 atIndex:0];
    [v26 setBytes:&v58 length:4 atIndex:1];
    [v26 setTexture:v49 atIndex:0];
    v56 = v45;
    v57 = vdupq_n_s64(1uLL);
    v54 = v21;
    v55 = v57;
    [v26 dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
    [v26 endEncoding];
    [v25 commit];
    [v25 waitUntilCompleted];
    v27 = [v53 contents];
    v28 = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
    self->_bottomRow = v28;
    self->_bottomRowCount = a4;
    x = CGPointZero.x;
    y = CGPointZero.y;
    v31 = 0;
    if (a4)
    {
      v32 = 0;
      p_y = &v28->y;
      v34 = a4;
      v35 = a5;
      do
      {
        v36 = v27[v32];
        v37 = *&v36 / a4;
        LODWORD(v38) = HIDWORD(*&v27[v32]);
        v39 = v38;
        v40 = v32;
        if (v34 >= v32)
        {
          v41 = v32;
        }

        else
        {
          v41 = v34;
        }

        *&v36 = *(&v36 + 2);
        if (v35 < *(&v36 + 2))
        {
          *&v36 = v35;
        }

        if (x >= v40)
        {
          v40 = x;
        }

        if (y >= v39)
        {
          v39 = y;
        }

        v42 = v38 <= -1.0;
        if (v38 > -1.0)
        {
          v43 = v38 / a5;
        }

        else
        {
          v43 = -1.0;
        }

        if (!v42)
        {
          y = v39;
          x = v40;
          v35 = *&v36;
          v34 = v41;
          v31 = 1;
        }

        *(p_y - 1) = v37;
        *p_y = v43;
        ++v32;
        p_y += 2;
      }

      while (a4 != v32);
    }

    else
    {
      v35 = a5;
      v34 = 0;
    }

    [(KNBuildFlameSystem *)self setShouldDraw:v31 & 1];
    self->_actualSize.width = x - v34;
    self->_actualSize.height = y - v35;

    v11 = v48;
    v9 = v49;
    v20 = v46;
    v18 = v47;
  }
}

- (void)p_setupParticleDataWithTexture:(id)a3
{
  v4 = a3;
  [(KNBuildFlameSystem *)self setShouldDraw:0];
  v5 = [(KNBuildFlameSystem *)self metalContext];
  v6 = [v4 metalTextureWithContext:v5];

  if (v6)
  {
    v7 = [v6 width];
    v8 = [v6 height];
    [v4 bakedScale];
    [(KNBuildFlameSystem *)self p_setupBottomRowWithMetalTexture:v6 width:v7 height:v8 bakedScale:?];
  }

  if ([(KNBuildFlameSystem *)self shouldDraw])
  {
    v54.receiver = self;
    v54.super_class = KNBuildFlameSystem;
    [(KNBuildFlameSystem *)&v54 p_setupParticleDataWithTexture:0];
    height = self->_actualSize.height;
    if (([(KNBuildFlameSystem *)self particleCount]& 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = 0;
      v11 = height * 0.5;
      v12 = v11 * 0.5;
      do
      {
        v13 = [(KNBuildFlameSystem *)self dataBuffer];
        v14 = [(KNBuildFlameSystem *)self positionAttribute];
        [v13 metalPoint2DForAttribute:v14 atIndex:v10];
        v16 = v15;
        v18 = v17;

        v19 = v16 - v12;
        v20 = v18 - v12;
        v21 = v19;
        v22 = v20;
        v55.origin.x = v19;
        v55.origin.y = v20;
        v55.size.width = v11;
        v55.size.height = v11;
        MidX = CGRectGetMidX(v55);
        v56.origin.x = v21;
        v56.origin.y = v22;
        v56.size.width = v11;
        v56.size.height = v11;
        v24 = MidX;
        MidY = CGRectGetMidY(v56);
        v26 = [(KNBuildFlameSystem *)self dataBuffer];
        v57.origin.x = v21;
        v57.origin.y = v22;
        v57.size.width = v11;
        v57.size.height = v11;
        MinX = CGRectGetMinX(v57);
        v58.origin.x = v21;
        v58.origin.y = v22;
        v58.size.width = v11;
        v58.size.height = v11;
        MinY = CGRectGetMinY(v58);
        v29 = [(KNBuildFlameSystem *)self positionAttribute];
        *&MinX = MinX;
        LODWORD(v30) = LODWORD(MinX);
        *&v31 = MinY;
        [v26 setMetalPoint2D:v29 forAttribute:v10 atIndex:{v30, v31}];

        v32 = [(KNBuildFlameSystem *)self dataBuffer];
        v59.origin.x = v21;
        v59.origin.y = v22;
        v59.size.width = v11;
        v59.size.height = v11;
        MaxX = CGRectGetMaxX(v59);
        v60.origin.x = v21;
        v60.origin.y = v22;
        v60.size.width = v11;
        v60.size.height = v11;
        v34 = CGRectGetMinY(v60);
        v35 = [(KNBuildFlameSystem *)self positionAttribute];
        *&MaxX = MaxX;
        LODWORD(v36) = LODWORD(MaxX);
        *&v37 = v34;
        [v32 setMetalPoint2D:v35 forAttribute:v10 | 1 atIndex:{v36, v37}];

        v38 = [(KNBuildFlameSystem *)self dataBuffer];
        v61.origin.x = v21;
        v61.origin.y = v22;
        v61.size.width = v11;
        v61.size.height = v11;
        v39 = CGRectGetMaxX(v61);
        v62.origin.x = v21;
        v62.origin.y = v22;
        v62.size.width = v11;
        v62.size.height = v11;
        MaxY = CGRectGetMaxY(v62);
        v41 = [(KNBuildFlameSystem *)self positionAttribute];
        *&v39 = v39;
        LODWORD(v42) = LODWORD(v39);
        *&v43 = MaxY;
        [v38 setMetalPoint2D:v41 forAttribute:v10 | 2 atIndex:{v42, v43}];

        v44 = [(KNBuildFlameSystem *)self dataBuffer];
        v63.origin.x = v21;
        v63.origin.y = v22;
        v63.size.width = v11;
        v63.size.height = v11;
        v45 = CGRectGetMinX(v63);
        v64.origin.x = v21;
        v64.origin.y = v22;
        v64.size.width = v11;
        v64.size.height = v11;
        *&v22 = CGRectGetMaxY(v64);
        v46 = [(KNBuildFlameSystem *)self positionAttribute];
        *&v21 = v45;
        LODWORD(v47) = LODWORD(v21);
        LODWORD(v48) = LODWORD(v22);
        [v44 setMetalPoint2D:v46 forAttribute:v10 | 3 atIndex:{v47, v48}];

        for (i = 0; i != 4; ++i)
        {
          v50 = [(KNBuildFlameSystem *)self dataBuffer];
          v51 = [(KNBuildFlameSystem *)self centerAttribute];
          *&v52 = v24;
          *&v53 = MidY;
          [v50 setMetalPoint2D:v51 forAttribute:v10 + i atIndex:{v52, v53}];
        }

        v10 += 4;
      }

      while (v10 < 4 * [(KNBuildFlameSystem *)self particleCount]);
    }
  }
}

@end