@interface ARUIRingsRenderer
- (ARUIRingsRenderer)initWithDevice:(id)device;
- (void)_renderEntireRings:(id)rings intoContext:(id)context withCommandEncoder:(id)encoder forState:(id)state;
- (void)_renderRingsFollowingPercent:(id)percent intoContext:(id)context withCommandEncoder:(id)encoder forState:(id)state;
- (void)beginRenderingWithCommandEncoder:(id)encoder;
- (void)clearCaches;
- (void)renderRings:(id)rings intoContext:(id)context withCommandEncoder:(id)encoder forState:(id)state;
@end

@implementation ARUIRingsRenderer

- (ARUIRingsRenderer)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = ARUIRingsRenderer;
  v5 = [(ARUIRingsRenderer *)&v11 init];
  if (v5)
  {
    v6 = [ARUIRingsStaticBufferFactory ringVertexPositionsBufferWithDevice:deviceCopy];
    v7 = [ARUIRingsStaticBufferFactory ringIndexBufferWithDevice:deviceCopy];
    v5->_indexCount = [v7 length] >> 1;
    v8 = +[ARUIRingUniformsCache defaultCache];
    cache = v5->_cache;
    v5->_cache = v8;
  }

  return v5;
}

- (void)beginRenderingWithCommandEncoder:(id)encoder
{
  encoderCopy = encoder;
  device = [encoderCopy device];
  v5 = [ARUIRingsStaticBufferFactory ringVertexPositionsBufferWithDevice:device];

  [encoderCopy setVertexBuffer:v5 offset:0 atIndex:0];
}

- (void)renderRings:(id)rings intoContext:(id)context withCommandEncoder:(id)encoder forState:(id)state
{
  ringsCopy = rings;
  contextCopy = context;
  encoderCopy = encoder;
  stateCopy = state;
  renderPipelineState = [stateCopy renderPipelineState];
  [encoderCopy setRenderPipelineState:renderPipelineState];

  renderArea = [stateCopy renderArea];
  if (renderArea == 1)
  {
    [(ARUIRingsRenderer *)self _renderRingsFollowingPercent:ringsCopy intoContext:contextCopy withCommandEncoder:encoderCopy forState:stateCopy];
  }

  else if (!renderArea)
  {
    [(ARUIRingsRenderer *)self _renderEntireRings:ringsCopy intoContext:contextCopy withCommandEncoder:encoderCopy forState:stateCopy];
  }
}

- (void)_renderEntireRings:(id)rings intoContext:(id)context withCommandEncoder:(id)encoder forState:(id)state
{
  ringsCopy = rings;
  contextCopy = context;
  encoderCopy = encoder;
  stateCopy = state;
  if ([ringsCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [ringsCopy objectAtIndex:v13];
      v15 = [(ARUIRingUniformsCache *)self->_cache uniformsForRing:v14 renderedInContext:contextCopy];
      if ([stateCopy shouldRunStateForRing:v14])
      {
        [encoderCopy setVertexBytes:objc_msgSend(v15 length:"vertexAttributesBytes") atIndex:{128, 1}];
        [encoderCopy setFragmentBytes:objc_msgSend(v15 length:"uniformsBytes") atIndex:{128, 0}];
        device = [encoderCopy device];
        v17 = [ARUIRingsStaticBufferFactory ringIndexBufferWithDevice:device];

        [encoderCopy drawIndexedPrimitives:3 indexCount:self->_indexCount indexType:0 indexBuffer:v17 indexBufferOffset:0];
      }

      ++v13;
    }

    while (v13 < [ringsCopy count]);
  }
}

- (void)_renderRingsFollowingPercent:(id)percent intoContext:(id)context withCommandEncoder:(id)encoder forState:(id)state
{
  percentCopy = percent;
  contextCopy = context;
  encoderCopy = encoder;
  stateCopy = state;
  v13 = +[ARUIRingsStaticBufferFactory circleSegments];
  centeredAroundPercentSegmentDrawCount = [stateCopy centeredAroundPercentSegmentDrawCount];
  indexCount = self->_indexCount;
  if ([percentCopy count])
  {
    v15 = 0;
    v30 = indexCount / v13 * centeredAroundPercentSegmentDrawCount;
    v31 = indexCount / v13;
    v33 = 2 * (indexCount / v13);
    v32 = indexCount / v13 * (centeredAroundPercentSegmentDrawCount - 1);
    selfCopy = self;
    v36 = stateCopy;
    while (1)
    {
      v16 = [percentCopy objectAtIndex:v15];
      v17 = [(ARUIRingUniformsCache *)self->_cache uniformsForRing:v16 renderedInContext:contextCopy];
      if ([stateCopy shouldRunStateForRing:v16])
      {
        break;
      }

LABEL_12:

      if (++v15 >= [percentCopy count])
      {
        goto LABEL_13;
      }
    }

    v18 = contextCopy;
    [encoderCopy setVertexBytes:objc_msgSend(v17 length:"vertexAttributesBytes") atIndex:{128, 1}];
    [encoderCopy setFragmentBytes:objc_msgSend(v17 length:"uniformsBytes") atIndex:{128, 0}];
    [v16 percentage];
    v20 = v19;
    v21 = vcvtmd_s64_f64(v13 * v19) % v13;
    device = [encoderCopy device];
    v23 = [ARUIRingsStaticBufferFactory ringIndexBufferWithDevice:device];

    if (v20 >= 1.0 || v21)
    {
      v26 = (v13 - 1 + v21) % v13;
      v27 = v33 * v26;
      if (v26 + centeredAroundPercentSegmentDrawCount <= v13)
      {
        v24 = encoderCopy;
        v25 = v30;
        v29 = v23;
        goto LABEL_11;
      }

      v28 = v13 - v26;
      [encoderCopy drawIndexedPrimitives:3 indexCount:(v13 - v26) * v31 indexType:0 indexBuffer:v23 indexBufferOffset:v27];
      v25 = (centeredAroundPercentSegmentDrawCount - v28) * v31;
      v24 = encoderCopy;
    }

    else
    {
      v24 = encoderCopy;
      v25 = v32;
    }

    v29 = v23;
    v27 = 0;
LABEL_11:
    [v24 drawIndexedPrimitives:3 indexCount:v25 indexType:0 indexBuffer:v29 indexBufferOffset:v27];

    contextCopy = v18;
    self = selfCopy;
    stateCopy = v36;
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