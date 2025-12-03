@interface KNShimmerParticleSystem
+ (id)newDataBufferAttributeWithName:(id)name;
- ($27999844F9EACD37278AEF498B7115CD)vertexUniforms;
- ($94F468A8D4C62B317260615823C2B210)colorTexCoordAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)p_hullPoint:(id)point inVertexRect:(CGRect)rect;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)point;
- (double)scaleAtIndexPoint:(CGPoint)point;
- (void)drawWithPercent:(double)percent opacity:(double)opacity rotation:(double)rotation clockwise:(BOOL)clockwise texture:(id)texture context:(id)context;
- (void)p_setupVertexData;
- (void)setVertexUniforms:(id *)uniforms;
@end

@implementation KNShimmerParticleSystem

- (CGPoint)startingPointAtIndexPoint:(CGPoint)point
{
  v4 = 4 * [(KNShimmerParticleSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  vertexCount = [dataBuffer vertexCount];

  if (v4 >= vertexCount)
  {
    [(KNShimmerParticleSystem *)self objectSize];
    v16 = v15 * 0.5;
    [(KNShimmerParticleSystem *)self objectSize];
    v18 = v17 * 0.5;
    TSURandomBetween();
    v20 = v19;
    randomGenerator = [(KNShimmerParticleSystem *)self randomGenerator];
    [randomGenerator doubleBetween:0.0 :6.28318531];
    v23 = v22;

    v24 = __sincos_stret(v23);
    v13 = v16 + v16 * v20 * v24.__cosval;
    v14 = v18 + v20 * v18 * v24.__sinval;
  }

  else
  {
    dataBuffer2 = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
    objectDataBufferAttributePosition = [(KNShimmerParticleSystem *)self objectDataBufferAttributePosition];
    [dataBuffer2 metalPoint2DForAttribute:objectDataBufferAttributePosition atIndex:v4];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  result.y = v14;
  result.x = v13;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  v4 = 4 * [(KNShimmerParticleSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  vertexCount = [dataBuffer vertexCount];

  if (v4 >= vertexCount)
  {
    v10 = TSDMetalPoint3DZero[0];
    v12 = TSDMetalPoint3DZero[1];
    v14 = TSDMetalPoint3DZero[2];
  }

  else
  {
    dataBuffer2 = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
    objectDataBufferAttributeSpeed = [(KNShimmerParticleSystem *)self objectDataBufferAttributeSpeed];
    [dataBuffer2 metalPoint3DForAttribute:objectDataBufferAttributeSpeed atIndex:v4];
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  v15 = v10;
  v16 = v12;
  v17 = v14;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (double)scaleAtIndexPoint:(CGPoint)point
{
  TSURandomBetween();

  TSUMix();
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point
{
  v4 = [(KNShimmerParticleSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  vertexCount = [dataBuffer vertexCount];

  if (vertexCount <= 4 * v4)
  {
    [(KNShimmerParticleSystem *)self duration];
    v10 = fmin(2.0 / v9, 0.9);
    TSURandom();
    TSUReverseSquare();
    TSDMixFloats();
    v12 = v11;
    TSUReverseSquare();
    v14 = v10 * v13;
    v15 = 0.99 - v10 * v13;
    if (v12 < v15)
    {
      v15 = v12;
    }

    v8 = v15;
    v7 = v14;
  }

  else
  {
    v7 = 1.0;
    v8 = 0.0;
  }

  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorAtIndexPoint:(CGPoint)point
{
  v4 = [(KNShimmerParticleSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  vertexCount = [dataBuffer vertexCount];

  v7 = 1.0;
  if (vertexCount > 4 * v4)
  {
    v7 = 0.0;
  }

  v8 = v7;
  v9 = v7;
  v10 = v7;
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)colorTexCoordAtIndexPoint:(CGPoint)point
{
  v4 = 4 * [(KNShimmerParticleSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
  vertexCount = [dataBuffer vertexCount];

  if (v4 >= vertexCount)
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    dataBuffer2 = [(KNShimmerObjectSystem *)self->_objectSystem dataBuffer];
    objectDataBufferAttributeColorTexCoord = [(KNShimmerParticleSystem *)self objectDataBufferAttributeColorTexCoord];
    [dataBuffer2 metalPoint2DForAttribute:objectDataBufferAttributeColorTexCoord atIndex:v4];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)drawWithPercent:(double)percent opacity:(double)opacity rotation:(double)rotation clockwise:(BOOL)clockwise texture:(id)texture context:(id)context
{
  clockwiseCopy = clockwise;
  textureCopy = texture;
  contextCopy = context;
  percentCopy = -percent;
  if (clockwiseCopy)
  {
    percentCopy = percent;
  }

  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeRotation(&v31, percentCopy + percentCopy);
  pow(1.0 - percent, 15.0);
  TSUMix();
  if (contextCopy)
  {
    percentCopy2 = percent;
    opacityCopy = opacity;
    *&self[1]._objectDataBufferAttributeColorTexCoord = percentCopy2;
    *(&self[1]._objectDataBufferAttributeColorTexCoord + 1) = opacityCopy;
    v19 = vcvt_f32_f64(*&v31.a);
    v20 = vcvt_f32_f64(*&v31.c);
    v21 = vcvt_f32_f64(*&v31.tx);
    *&self[1]._vertexUniforms.ShouldSample = 0;
    *&self[1]._vertexUniforms.ParticleScalePercent = v19;
    LODWORD(self[2]._objectSystem) = 0;
    self[2].super = v20;
    LODWORD(self[2]._objectDataBufferAttributePosition) = 1065353216;
    self[2]._objectDataBufferAttributeColor = v21;
    v22 = v16;
    self[1]._vertexUniforms.Percent = v22;
    [(KNShimmerSystem *)self speedMax];
    *&v23 = v23;
    LODWORD(self[2]._objectDataBufferAttributeSpeed) = LODWORD(v23);
    v24 = [textureCopy metalTextureWithContext:contextCopy];
    if (v24)
    {
      renderEncoder = [contextCopy renderEncoder];
      [renderEncoder setVertexBytes:&self->_vertexUniforms length:256 atIndex:1];

      vertexColorTexture = [(KNShimmerObjectSystem *)self->_objectSystem vertexColorTexture];

      renderEncoder2 = [contextCopy renderEncoder];
      v28 = renderEncoder2;
      if (vertexColorTexture)
      {
        vertexColorTexture2 = [(KNShimmerObjectSystem *)self->_objectSystem vertexColorTexture];
        [v28 setVertexTexture:vertexColorTexture2 atIndex:0];
      }

      else
      {
        [renderEncoder2 setVertexTexture:v24 atIndex:0];
      }

      renderEncoder3 = [contextCopy renderEncoder];
      [(KNShimmerParticleSystem *)self drawMetalWithEncoder:renderEncoder3];
    }
  }
}

+ (id)newDataBufferAttributeWithName:(id)name
{
  v3 = kTSDGPUShaderAttributeParticleTexCoord;
  if (![name isEqualToString:kTSDGPUShaderAttributeParticleTexCoord])
  {
    return 0;
  }

  v4 = [TSDGPUDataBufferAttribute alloc];

  return [v4 initWithName:v3 bufferUsage:35044 dataType:3 normalized:1 componentCount:2];
}

- ($94F468A8D4C62B317260615823C2B210)p_hullPoint:(id)point inVertexRect:(CGRect)rect
{
  v4 = rect.origin.x + rect.size.width * point.var0;
  v5 = rect.origin.y + rect.size.height * point.var1;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)p_setupVertexData
{
  v109.receiver = self;
  v109.super_class = KNShimmerParticleSystem;
  [(KNShimmerParticleSystem *)&v109 p_setupVertexData];
  if ([objc_opt_class() numberOfVerticesPerParticle] != &dword_4)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[KNShimmerParticleSystem p_setupVertexData]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:765 description:@"Invalid verts per particle!"];
  }

  particleCount = [(KNShimmerParticleSystem *)self particleCount];
  v7 = 5 * [(KNShimmerParticleSystem *)self particleCount];
  v8 = 5 * [(KNShimmerParticleSystem *)self visibleParticleCount];
  dataBuffer = [(KNShimmerParticleSystem *)self dataBuffer];
  positionAttribute = [(KNShimmerParticleSystem *)self positionAttribute];
  centerAttribute = [(KNShimmerParticleSystem *)self centerAttribute];
  colorAttribute = [(KNShimmerParticleSystem *)self colorAttribute];
  speedAttribute = [(KNShimmerParticleSystem *)self speedAttribute];
  scaleAttribute = [(KNShimmerParticleSystem *)self scaleAttribute];
  lifeSpanAttribute = [(KNShimmerParticleSystem *)self lifeSpanAttribute];
  colorTexCoordAttribute = [(KNShimmerParticleSystem *)self colorTexCoordAttribute];
  [(KNShimmerParticleSystem *)self p_setupDataBufferWithParticleCount:v7 visibleParticleCount:v8];
  v89 = particleCount;
  if (particleCount)
  {
    v11 = 0;
    v12 = 0;
    v87 = *(&TSDMetalPoint2DZero + 1);
    v88 = TSDMetalPoint2DZero;
    do
    {
      [dataBuffer metalFloatForAttribute:scaleAttribute atIndex:4 * v12];
      v108 = v13;
      [dataBuffer metalPoint3DForAttribute:speedAttribute atIndex:4 * v12];
      v106 = v15;
      v107 = v14;
      v105 = v16;
      [dataBuffer metalPoint4DForAttribute:colorAttribute atIndex:4 * v12];
      v103 = v18;
      v104 = v17;
      v101 = v20;
      v102 = v19;
      [dataBuffer metalPoint2DForAttribute:positionAttribute atIndex:4 * v12];
      [dataBuffer metalPoint2DForAttribute:positionAttribute atIndex:(4 * v12) | 2];
      TSDRectWithPoints();
      v99 = v22;
      v100 = v21;
      v97 = v24;
      v98 = v23;
      [dataBuffer metalPoint2DForAttribute:centerAttribute atIndex:4 * v12];
      v26 = v25;
      v28 = v27;
      [dataBuffer metalPoint2DForAttribute:lifeSpanAttribute atIndex:4 * v12];
      v30 = v29;
      v32 = v31;
      colorTexCoordAttribute2 = [(KNShimmerParticleSystem *)self colorTexCoordAttribute];

      v95 = v87;
      v96 = v88;
      if (colorTexCoordAttribute2)
      {
        [dataBuffer metalPoint2DForAttribute:colorTexCoordAttribute atIndex:4 * v12];
        v95 = LODWORD(v35);
        v96 = LODWORD(v34);
      }

      v36 = v11;
      v37 = &unk_34AD9C;
      v38 = 20;
      do
      {
        v39 = *(v37 - 1);
        v40 = *v37;
        LODWORD(v34) = v39;
        LODWORD(v35) = *v37;
        [(KNShimmerParticleSystem *)self p_hullPoint:v34 inVertexRect:v35, v100, v99, v98, v97];
        v42 = v41;
        v44 = v43;
        dataBuffer2 = [(KNShimmerParticleSystem *)self dataBuffer];
        positionAttribute2 = [(KNShimmerParticleSystem *)self positionAttribute];
        LODWORD(v47) = v42;
        LODWORD(v48) = v44;
        [dataBuffer2 setMetalPoint2D:positionAttribute2 forAttribute:v36 atIndex:{v47, v48}];

        LODWORD(v49) = v39;
        LODWORD(v50) = v40;
        [(KNShimmerParticleSystem *)self p_hullPoint:v49 inVertexRect:v50, 0.0, 0.0, 1.0, 1.0];
        v52 = v51;
        v54 = v53;
        dataBuffer3 = [(KNShimmerParticleSystem *)self dataBuffer];
        particleTexCoordAttribute = [(KNShimmerParticleSystem *)self particleTexCoordAttribute];
        LODWORD(v57) = v52;
        LODWORD(v58) = v54;
        [dataBuffer3 setMetalPoint2D:particleTexCoordAttribute forAttribute:v36 atIndex:{v57, v58}];

        dataBuffer4 = [(KNShimmerParticleSystem *)self dataBuffer];
        centerAttribute2 = [(KNShimmerParticleSystem *)self centerAttribute];
        LODWORD(v61) = v26;
        LODWORD(v62) = v28;
        [dataBuffer4 setMetalPoint2D:centerAttribute2 forAttribute:v36 atIndex:{v61, v62}];

        dataBuffer5 = [(KNShimmerParticleSystem *)self dataBuffer];
        colorAttribute2 = [(KNShimmerParticleSystem *)self colorAttribute];
        LODWORD(v66) = v103;
        LODWORD(v65) = v104;
        LODWORD(v68) = v101;
        LODWORD(v67) = v102;
        [dataBuffer5 setMetalPoint4D:colorAttribute2 forAttribute:v36 atIndex:{v65, v66, v67, v68}];

        dataBuffer6 = [(KNShimmerParticleSystem *)self dataBuffer];
        speedAttribute2 = [(KNShimmerParticleSystem *)self speedAttribute];
        LODWORD(v72) = v106;
        LODWORD(v71) = v107;
        LODWORD(v73) = v105;
        [dataBuffer6 setMetalPoint3D:speedAttribute2 forAttribute:v36 atIndex:{v71, v72, v73}];

        dataBuffer7 = [(KNShimmerParticleSystem *)self dataBuffer];
        scaleAttribute2 = [(KNShimmerParticleSystem *)self scaleAttribute];
        LODWORD(v76) = v108;
        [dataBuffer7 setMetalFloat:scaleAttribute2 forAttribute:v36 atIndex:v76];

        dataBuffer8 = [(KNShimmerParticleSystem *)self dataBuffer];
        lifeSpanAttribute2 = [(KNShimmerParticleSystem *)self lifeSpanAttribute];
        LODWORD(v79) = v30;
        LODWORD(v80) = v32;
        [dataBuffer8 setMetalPoint2D:lifeSpanAttribute2 forAttribute:v36 atIndex:{v79, v80}];

        colorTexCoordAttribute3 = [(KNShimmerParticleSystem *)self colorTexCoordAttribute];

        if (colorTexCoordAttribute3)
        {
          dataBuffer9 = [(KNShimmerParticleSystem *)self dataBuffer];
          colorTexCoordAttribute4 = [(KNShimmerParticleSystem *)self colorTexCoordAttribute];
          LODWORD(v85) = v95;
          LODWORD(v84) = v96;
          [dataBuffer9 setMetalPoint2D:colorTexCoordAttribute4 forAttribute:v36 atIndex:{v84, v85}];
        }

        v37 += 2;
        ++v36;
        --v38;
      }

      while (v38);
      v12 = v12 + 1;
      v11 += 20;
    }

    while (v12 != v89);
  }
}

- ($27999844F9EACD37278AEF498B7115CD)vertexUniforms
{
  v2 = *&self[12].var6;
  *&retstr[9].var5 = *&self[12].var1;
  *&retstr[10].var3 = v2;
  v3 = *&self[14].var3;
  *&retstr[11].var2 = *&self[13].var5;
  *&retstr[12].var1 = v3;
  v4 = *&self[9].var5;
  *&retstr[6].var3 = *&self[8].var6;
  *&retstr[7].var2 = v4;
  v5 = *&self[11].var2;
  *&retstr[8].var1 = *&self[10].var3;
  *&retstr[8].var6 = v5;
  v6 = *&self[6].var3;
  *&retstr[3].var2 = *&self[5].var5;
  *&retstr[4].var1 = v6;
  v7 = *&self[8].var1;
  *&retstr[4].var6 = *&self[7].var2;
  *&retstr[5].var5 = v7;
  v8 = *&self[3].var2;
  *&retstr->var1 = *&self[2].var3;
  *&retstr->var6 = v8;
  v9 = *&self[4].var6;
  *&retstr[1].var5 = *&self[4].var1;
  *&retstr[2].var3 = v9;
  return self;
}

- (void)setVertexUniforms:(id *)uniforms
{
  v4 = *&uniforms[2].var3;
  v6 = *&uniforms->var1;
  v5 = *&uniforms->var6;
  *&self[1]._objectSystem = *&uniforms[1].var5;
  *&self[1]._objectDataBufferAttributePosition = v4;
  *&self->_vertexUniforms.Percent = v6;
  *&self->_vertexUniforms.ShouldSample = v5;
  v7 = *&uniforms[5].var5;
  v9 = *&uniforms[3].var2;
  v8 = *&uniforms[4].var1;
  *self[2].super.TSDGPUParticleSystem_opaque = *&uniforms[4].var6;
  *&self[2]._objectDataBufferAttributeColor = v7;
  *&self[1]._objectDataBufferAttributeColorTexCoord = v9;
  *&self[1]._vertexUniforms.ParticleScalePercent = v8;
  v10 = *&uniforms[8].var6;
  v12 = *&uniforms[6].var3;
  v11 = *&uniforms[7].var2;
  *&self[2]._vertexUniforms.ShouldSample = *&uniforms[8].var1;
  *&self[3]._objectSystem = v10;
  *&self[2]._objectDataBufferAttributeSpeed = v12;
  *&self[2]._vertexUniforms.Percent = v11;
  v13 = *&uniforms[12].var1;
  v15 = *&uniforms[9].var5;
  v14 = *&uniforms[10].var3;
  *&self[3]._vertexUniforms.ParticleScalePercent = *&uniforms[11].var2;
  *self[4].super.TSDGPUParticleSystem_opaque = v13;
  *&self[3]._objectDataBufferAttributePosition = v15;
  *&self[3]._objectDataBufferAttributeColorTexCoord = v14;
}

@end