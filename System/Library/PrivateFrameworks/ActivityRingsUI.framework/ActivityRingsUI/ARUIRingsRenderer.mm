@interface ARUIRingsRenderer
- (ARUIRingsRenderer)initWithDevice:(id)a3;
- (void)_renderEntireRings:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5 forState:(id)a6;
- (void)_renderRingsFollowingPercent:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5 forState:(id)a6;
- (void)beginRenderingWithCommandEncoder:(id)a3;
- (void)clearCaches;
- (void)renderRings:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5 forState:(id)a6;
@end

@implementation ARUIRingsRenderer

- (ARUIRingsRenderer)initWithDevice:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ARUIRingsRenderer;
  v5 = [(ARUIRingsRenderer *)&v11 init];
  if (v5)
  {
    v6 = [ARUIRingsStaticBufferFactory ringVertexPositionsBufferWithDevice:v4];
    v7 = [ARUIRingsStaticBufferFactory ringIndexBufferWithDevice:v4];
    v5->_indexCount = [v7 length] >> 1;
    v8 = +[ARUIRingUniformsCache defaultCache];
    cache = v5->_cache;
    v5->_cache = v8;
  }

  return v5;
}

- (void)beginRenderingWithCommandEncoder:(id)a3
{
  v3 = a3;
  v4 = [v3 device];
  v5 = [ARUIRingsStaticBufferFactory ringVertexPositionsBufferWithDevice:v4];

  [v3 setVertexBuffer:v5 offset:0 atIndex:0];
}

- (void)renderRings:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5 forState:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 renderPipelineState];
  [v11 setRenderPipelineState:v13];

  v14 = [v12 renderArea];
  if (v14 == 1)
  {
    [(ARUIRingsRenderer *)self _renderRingsFollowingPercent:v15 intoContext:v10 withCommandEncoder:v11 forState:v12];
  }

  else if (!v14)
  {
    [(ARUIRingsRenderer *)self _renderEntireRings:v15 intoContext:v10 withCommandEncoder:v11 forState:v12];
  }
}

- (void)_renderEntireRings:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5 forState:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v18 count])
  {
    v13 = 0;
    do
    {
      v14 = [v18 objectAtIndex:v13];
      v15 = [(ARUIRingUniformsCache *)self->_cache uniformsForRing:v14 renderedInContext:v10];
      if ([v12 shouldRunStateForRing:v14])
      {
        [v11 setVertexBytes:objc_msgSend(v15 length:"vertexAttributesBytes") atIndex:{128, 1}];
        [v11 setFragmentBytes:objc_msgSend(v15 length:"uniformsBytes") atIndex:{128, 0}];
        v16 = [v11 device];
        v17 = [ARUIRingsStaticBufferFactory ringIndexBufferWithDevice:v16];

        [v11 drawIndexedPrimitives:3 indexCount:self->_indexCount indexType:0 indexBuffer:v17 indexBufferOffset:0];
      }

      ++v13;
    }

    while (v13 < [v18 count]);
  }
}

- (void)_renderRingsFollowingPercent:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5 forState:(id)a6
{
  v37 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[ARUIRingsStaticBufferFactory circleSegments];
  v34 = [v12 centeredAroundPercentSegmentDrawCount];
  indexCount = self->_indexCount;
  if ([v37 count])
  {
    v15 = 0;
    v30 = indexCount / v13 * v34;
    v31 = indexCount / v13;
    v33 = 2 * (indexCount / v13);
    v32 = indexCount / v13 * (v34 - 1);
    v35 = self;
    v36 = v12;
    while (1)
    {
      v16 = [v37 objectAtIndex:v15];
      v17 = [(ARUIRingUniformsCache *)self->_cache uniformsForRing:v16 renderedInContext:v10];
      if ([v12 shouldRunStateForRing:v16])
      {
        break;
      }

LABEL_12:

      if (++v15 >= [v37 count])
      {
        goto LABEL_13;
      }
    }

    v18 = v10;
    [v11 setVertexBytes:objc_msgSend(v17 length:"vertexAttributesBytes") atIndex:{128, 1}];
    [v11 setFragmentBytes:objc_msgSend(v17 length:"uniformsBytes") atIndex:{128, 0}];
    [v16 percentage];
    v20 = v19;
    v21 = vcvtmd_s64_f64(v13 * v19) % v13;
    v22 = [v11 device];
    v23 = [ARUIRingsStaticBufferFactory ringIndexBufferWithDevice:v22];

    if (v20 >= 1.0 || v21)
    {
      v26 = (v13 - 1 + v21) % v13;
      v27 = v33 * v26;
      if (v26 + v34 <= v13)
      {
        v24 = v11;
        v25 = v30;
        v29 = v23;
        goto LABEL_11;
      }

      v28 = v13 - v26;
      [v11 drawIndexedPrimitives:3 indexCount:(v13 - v26) * v31 indexType:0 indexBuffer:v23 indexBufferOffset:v27];
      v25 = (v34 - v28) * v31;
      v24 = v11;
    }

    else
    {
      v24 = v11;
      v25 = v32;
    }

    v29 = v23;
    v27 = 0;
LABEL_11:
    [v24 drawIndexedPrimitives:3 indexCount:v25 indexType:0 indexBuffer:v29 indexBufferOffset:v27];

    v10 = v18;
    self = v35;
    v12 = v36;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)clearCaches
{
  +[ARUIRingsStaticBufferFactory clearCaches];
  cache = self->_cache;

  [(ARUIRingUniformsCache *)cache clearCache];
}

@end