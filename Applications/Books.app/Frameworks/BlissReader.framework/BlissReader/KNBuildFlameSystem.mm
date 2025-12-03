@interface KNBuildFlameSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)point;
- (void)dealloc;
- (void)p_setupBottomRowWithMetalTexture:(id)texture width:(unint64_t)width height:(unint64_t)height bakedScale:(double)scale;
- (void)p_setupParticleDataWithTexture:(id)texture;
@end

@implementation KNBuildFlameSystem

- (void)dealloc
{
  free(self->_bottomRow);
  v3.receiver = self;
  v3.super_class = KNBuildFlameSystem;
  [(KNBuildFlameSystem *)&v3 dealloc];
}

- (CGPoint)startingPointAtIndexPoint:(CGPoint)point
{
  v4 = [(KNBuildFlameSystem *)self randomGenerator:point.x];
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

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  v4 = [(KNBuildFlameSystem *)self indexFromPoint:point.x, point.y];
  v5 = [objc_opt_class() numberOfVerticesPerParticle] * v4;
  dataBuffer = [(KNBuildFlameSystem *)self dataBuffer];
  positionAttribute = [(KNBuildFlameSystem *)self positionAttribute];
  [dataBuffer metalPoint2DForAttribute:positionAttribute atIndex:v5];
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
  randomGenerator = [(KNBuildFlameSystem *)self randomGenerator];
  [randomGenerator doubleBetween:0.0 :0.1];
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

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

  randomGenerator = [(KNBuildFlameSystem *)self randomGenerator];
  [randomGenerator doubleBetween:0.8 :1.0];
  v11 = v10 * v8;

  v12 = [(KNBuildFlameSystem *)self indexFromPoint:x, y];
  particleCount = [(KNBuildFlameSystem *)self particleCount];
  v14 = (1.0 - v11) * (v12 / particleCount * 0.75 + v12 / particleCount * (v12 / particleCount) * 0.25);
  v15 = v11;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point
{
  v4 = [(KNBuildFlameSystem *)self randomGenerator:point.x];
  randomGenerator = [(KNBuildFlameSystem *)self randomGenerator];
  [randomGenerator doubleBetween:-1.0 :1.0];
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

- (void)p_setupBottomRowWithMetalTexture:(id)texture width:(unint64_t)width height:(unint64_t)height bakedScale:(double)scale
{
  textureCopy = texture;
  metalContext = [(KNBuildFlameSystem *)self metalContext];
  device = [metalContext device];

  v52 = [TSDMetalShaderLibraryLoader loadApplicationLibraryWithDevice:device library:@"KeynoteMetalLibrary"];
  v12 = [v52 newFunctionWithName:@"buildFlameBottomRowComputeShader"];
  v53 = [device newBufferWithBytes:malloc_type_malloc(16 * width length:0x1000040451B5BE8uLL) options:{16 * width, 0}];
  v13 = objc_alloc_init(MTLComputePipelineDescriptor);
  v51 = v12;
  [v13 setComputeFunction:v12];
  v14 = objc_alloc_init(MTLBufferLayoutDescriptor);
  [v14 setStride:16];
  [v14 setStepRate:1];
  [v14 setStepFunction:5];
  stageInputDescriptor = [v13 stageInputDescriptor];
  layouts = [stageInputDescriptor layouts];
  [layouts setObject:v14 atIndexedSubscript:0];

  v60[0] = 0;
  v59 = 0;
  v17 = [device newComputePipelineStateWithDescriptor:v13 options:0 reflection:v60 error:&v59];
  v18 = v60[0];
  v19 = v59;
  v20 = v19;
  if (v17)
  {
    v46 = v19;
    v47 = v18;
    v48 = device;
    threadExecutionWidth = [v17 threadExecutionWidth];
    v49 = textureCopy;
    v44 = ([textureCopy width] + threadExecutionWidth - 1) / threadExecutionWidth;
    if (scale <= 1.0)
    {
      TSUClamp();
      scale = v22;
    }

    scaleCopy = scale;
    metalContext2 = [(KNBuildFlameSystem *)self metalContext];
    commandQueue = [metalContext2 commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:v17];
    [computeCommandEncoder setBuffer:v53 offset:0 atIndex:0];
    [computeCommandEncoder setBytes:&scaleCopy length:4 atIndex:1];
    [computeCommandEncoder setTexture:v49 atIndex:0];
    v56 = v45;
    v57 = vdupq_n_s64(1uLL);
    v54 = threadExecutionWidth;
    v55 = v57;
    [computeCommandEncoder dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
    [computeCommandEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    contents = [v53 contents];
    v28 = malloc_type_malloc(16 * width, 0x1000040451B5BE8uLL);
    self->_bottomRow = v28;
    self->_bottomRowCount = width;
    x = CGPointZero.x;
    y = CGPointZero.y;
    v31 = 0;
    if (width)
    {
      v32 = 0;
      p_y = &v28->y;
      widthCopy = width;
      heightCopy2 = height;
      do
      {
        v36 = contents[v32];
        v37 = *&v36 / width;
        LODWORD(v38) = HIDWORD(*&contents[v32]);
        v39 = v38;
        v40 = v32;
        if (widthCopy >= v32)
        {
          v41 = v32;
        }

        else
        {
          v41 = widthCopy;
        }

        *&v36 = *(&v36 + 2);
        if (heightCopy2 < *(&v36 + 2))
        {
          *&v36 = heightCopy2;
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
          v43 = v38 / height;
        }

        else
        {
          v43 = -1.0;
        }

        if (!v42)
        {
          y = v39;
          x = v40;
          heightCopy2 = *&v36;
          widthCopy = v41;
          v31 = 1;
        }

        *(p_y - 1) = v37;
        *p_y = v43;
        ++v32;
        p_y += 2;
      }

      while (width != v32);
    }

    else
    {
      heightCopy2 = height;
      widthCopy = 0;
    }

    [(KNBuildFlameSystem *)self setShouldDraw:v31 & 1];
    self->_actualSize.width = x - widthCopy;
    self->_actualSize.height = y - heightCopy2;

    device = v48;
    textureCopy = v49;
    v20 = v46;
    v18 = v47;
  }
}

- (void)p_setupParticleDataWithTexture:(id)texture
{
  textureCopy = texture;
  [(KNBuildFlameSystem *)self setShouldDraw:0];
  metalContext = [(KNBuildFlameSystem *)self metalContext];
  v6 = [textureCopy metalTextureWithContext:metalContext];

  if (v6)
  {
    width = [v6 width];
    height = [v6 height];
    [textureCopy bakedScale];
    [(KNBuildFlameSystem *)self p_setupBottomRowWithMetalTexture:v6 width:width height:height bakedScale:?];
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
        dataBuffer = [(KNBuildFlameSystem *)self dataBuffer];
        positionAttribute = [(KNBuildFlameSystem *)self positionAttribute];
        [dataBuffer metalPoint2DForAttribute:positionAttribute atIndex:v10];
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
        dataBuffer2 = [(KNBuildFlameSystem *)self dataBuffer];
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
        positionAttribute2 = [(KNBuildFlameSystem *)self positionAttribute];
        *&MinX = MinX;
        LODWORD(v30) = LODWORD(MinX);
        *&v31 = MinY;
        [dataBuffer2 setMetalPoint2D:positionAttribute2 forAttribute:v10 atIndex:{v30, v31}];

        dataBuffer3 = [(KNBuildFlameSystem *)self dataBuffer];
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
        positionAttribute3 = [(KNBuildFlameSystem *)self positionAttribute];
        *&MaxX = MaxX;
        LODWORD(v36) = LODWORD(MaxX);
        *&v37 = v34;
        [dataBuffer3 setMetalPoint2D:positionAttribute3 forAttribute:v10 | 1 atIndex:{v36, v37}];

        dataBuffer4 = [(KNBuildFlameSystem *)self dataBuffer];
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
        positionAttribute4 = [(KNBuildFlameSystem *)self positionAttribute];
        *&v39 = v39;
        LODWORD(v42) = LODWORD(v39);
        *&v43 = MaxY;
        [dataBuffer4 setMetalPoint2D:positionAttribute4 forAttribute:v10 | 2 atIndex:{v42, v43}];

        dataBuffer5 = [(KNBuildFlameSystem *)self dataBuffer];
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
        positionAttribute5 = [(KNBuildFlameSystem *)self positionAttribute];
        *&v21 = v45;
        LODWORD(v47) = LODWORD(v21);
        LODWORD(v48) = LODWORD(v22);
        [dataBuffer5 setMetalPoint2D:positionAttribute5 forAttribute:v10 | 3 atIndex:{v47, v48}];

        for (i = 0; i != 4; ++i)
        {
          dataBuffer6 = [(KNBuildFlameSystem *)self dataBuffer];
          centerAttribute = [(KNBuildFlameSystem *)self centerAttribute];
          *&v52 = v24;
          *&v53 = MidY;
          [dataBuffer6 setMetalPoint2D:centerAttribute forAttribute:v10 + i atIndex:{v52, v53}];
        }

        v10 += 4;
      }

      while (v10 < 4 * [(KNBuildFlameSystem *)self particleCount]);
    }
  }
}

@end