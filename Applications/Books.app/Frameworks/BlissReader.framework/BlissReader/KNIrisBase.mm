@interface KNIrisBase
+ (BOOL)isTransition;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version;
- (KNIrisBase)initWithAnimationContext:(id)context;
- (double)p_largestDividedAngleInRect:(CGRect)rect;
- (unint64_t)p_setupMetalFadeDataBufferContentsWithOpaqueAttributes:(id)attributes frameRect:(CGRect)rect openFromCenter:(BOOL)center maxRadius:(double)radius center:(id)a7;
- (unint64_t)p_setupMetalOpaqueDataBufferContentsWithOpaqueAttributes:(id)attributes frameRect:(CGRect)rect openFromCenter:(BOOL)center minRadius:(double)radius maxRadius:(double)maxRadius center:(id)a8;
- (void)animationWillBeginWithContext:(id)context;
- (void)p_setupDataBuffersWithFrameRect:(CGRect)rect openFromCenter:(BOOL)center device:(id)device;
- (void)p_setupMetalShadersWithContext:(id)context;
- (void)renderFrameWithContext:(id)context;
@end

@implementation KNIrisBase

+ (BOOL)isTransition
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[KNIrisBase isTransition]");
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:93 description:@"Should be called on base class!"];

  return 0;
}

- (KNIrisBase)initWithAnimationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = KNIrisBase;
  result = [(KNAnimationEffect *)&v4 initWithAnimationContext:context];
  if (result)
  {
    result->_numDivisionsPerQuadrant = 10;
  }

  return result;
}

- (void)p_setupMetalShadersWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];
  v5 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  pixelFormat = [contextCopy pixelFormat];

  [v5 setPixelFormat:pixelFormat];
  [v5 setBlendingEnabled:1];
  [v5 setDestinationAlphaBlendFactor:5];
  [v5 setDestinationRGBBlendFactor:5];
  v7 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:device colorAttachment:v5];
  quadMetalShader = self->_quadMetalShader;
  self->_quadMetalShader = v7;

  v9 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"transitionIrisVertexShader_Fade" fragmentShader:@"transitionIrisFragmentShader_Fade" device:device library:@"KeynoteMetalLibrary" colorAttachment:v5];
  fadeMetalShader = self->_fadeMetalShader;
  self->_fadeMetalShader = v9;

  v11 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"transitionIrisVertexShader_Opaque" fragmentShader:@"transitionIrisFragmentShader_Opaque" device:device library:@"KeynoteMetalLibrary" colorAttachment:v5];
  opaqueMetalShader = self->_opaqueMetalShader;
  self->_opaqueMetalShader = v11;
}

- (double)p_largestDividedAngleInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(KNIrisBase *)self p_angleFromQuadrant:0 inRect:?];
  [(KNIrisBase *)self p_angleFromQuadrant:1 inRect:x, y, width, height];
  [(KNIrisBase *)self p_angleFromQuadrant:2 inRect:x, y, width, height];
  TSDDistanceBetweenAnglesInRadians();
  v9 = v8;
  TSDDistanceBetweenAnglesInRadians();
  if (v9 >= v10)
  {
    v10 = v9;
  }

  return v10 / self->_numDivisionsPerQuadrant;
}

- (unint64_t)p_setupMetalOpaqueDataBufferContentsWithOpaqueAttributes:(id)attributes frameRect:(CGRect)rect openFromCenter:(BOOL)center minRadius:(double)radius maxRadius:(double)maxRadius center:(id)a8
{
  var1 = a8.var1;
  var0 = a8.var0;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_12F48C;
  v22[3] = &unk_45DD80;
  *&v22[6] = x;
  *&v22[7] = y;
  *&v22[8] = width;
  *&v22[9] = height;
  *&v22[10] = radius;
  *&v22[11] = maxRadius;
  v23 = var0;
  v24 = var1;
  centerCopy = center;
  v22[4] = self;
  v22[5] = &v26;
  v19 = objc_retainBlock(v22);
  [(TSDMTLDataBuffer *)self->_opaqueMetalDataBuffer updateMetalDataBufferAttributes:attributesCopy withBlock:v19];
  v20 = v27[3];

  _Block_object_dispose(&v26, 8);
  return v20;
}

- (unint64_t)p_setupMetalFadeDataBufferContentsWithOpaqueAttributes:(id)attributes frameRect:(CGRect)rect openFromCenter:(BOOL)center maxRadius:(double)radius center:(id)a7
{
  var1 = a7.var1;
  var0 = a7.var0;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_12FA30;
  v19[3] = &unk_45DDA8;
  *&v19[6] = x;
  *&v19[7] = y;
  *&v19[8] = width;
  *&v19[9] = height;
  *&v19[10] = radius;
  v20 = var0;
  v21 = var1;
  v19[4] = self;
  v19[5] = &v22;
  v16 = objc_retainBlock(v19);
  [(TSDMTLDataBuffer *)self->_fadeMetalDataBuffer updateMetalDataBufferAttributes:attributesCopy withBlock:v16];
  v17 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v17;
}

- (void)p_setupDataBuffersWithFrameRect:(CGRect)rect openFromCenter:(BOOL)center device:(id)device
{
  centerCopy = center;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  deviceCopy = device;
  if (self->_initializedBuffers)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [NSString stringWithUTF8String:"[KNIrisBase p_setupDataBuffersWithFrameRect:openFromCenter:device:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:327 description:@"We already initialized our data buffers!"];
  }

  if ([objc_opt_class() isTransition])
  {
    v14 = [TSDGPUDataBuffer newDataBufferWithVertexRect:deviceCopy textureRect:x device:y, width, height, TSDRectUnit[0], TSDRectUnit[1], TSDRectUnit[2], TSDRectUnit[3]];
    quadMetalDataBuffer = self->_quadMetalDataBuffer;
    self->_quadMetalDataBuffer = v14;
  }

  v16 = sqrt(width * width + height * height) * 0.5;
  [(KNIrisBase *)self p_largestDividedAngleInRect:x, y, width, height];
  v18 = v16 * 1.15384615 / cos(v17 * 0.5);
  TSDRectWithSize();
  TSDCenterOfRect();
  v20 = v19;
  v22 = v21;
  v23 = (8 * self->_numDivisionsPerQuadrant) | 2;
  v24 = kTSDGPUShaderAttributePosition;
  [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePosition bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  v26 = v25 = deviceCopy;
  v27 = kTSDGPUShaderAttributeTexCoord;
  v28 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeTexCoord bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  [TSDGPUDataBufferAttribute attributeWithName:@"RadiusType" bufferUsage:35044 dataType:5 normalized:0 componentCount:1];
  v52 = v28;
  v53 = v26;
  v57[0] = v26;
  v51 = v57[1] = v28;
  v57[2] = v51;
  v29 = [NSArray arrayWithObjects:v57 count:3];
  v30 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:v29 vertexCount:v23 indexElementCount:0 device:v25];
  opaqueMetalDataBuffer = self->_opaqueMetalDataBuffer;
  self->_opaqueMetalDataBuffer = v30;

  [(TSDMTLDataBuffer *)self->_opaqueMetalDataBuffer setMetalDrawMode:4];
  v32 = [TSDGPUDataBufferAttribute attributeWithName:v24 bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  v33 = [TSDGPUDataBufferAttribute attributeWithName:v27 bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  v34 = [TSDGPUDataBufferAttribute attributeWithName:@"RadiusType" bufferUsage:35044 dataType:5 normalized:0 componentCount:1];
  v50 = v32;
  v56[0] = v32;
  v56[1] = v33;
  v56[2] = v34;
  v35 = [NSArray arrayWithObjects:v56 count:3];
  v55 = v25;
  v36 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:v35 vertexCount:v23 indexElementCount:0 device:v25];
  fadeMetalDataBuffer = self->_fadeMetalDataBuffer;
  self->_fadeMetalDataBuffer = v36;

  [(TSDMTLDataBuffer *)self->_fadeMetalDataBuffer setMetalDrawMode:4];
  *&v38 = v20;
  *&v39 = v22;
  v40 = [(KNIrisBase *)self p_setupMetalOpaqueDataBufferContentsWithOpaqueAttributes:v29 frameRect:centerCopy openFromCenter:x minRadius:y maxRadius:width center:height, v16, v18, v38, v39];
  *&v41 = v20;
  *&v42 = v22;
  v43 = [(KNIrisBase *)self p_setupMetalFadeDataBufferContentsWithOpaqueAttributes:v35 frameRect:centerCopy openFromCenter:x maxRadius:y center:width, height, v18, v41, v42];
  if (v40 != v23)
  {
    v44 = +[TSUAssertionHandler currentHandler];
    v45 = [NSString stringWithUTF8String:"[KNIrisBase p_setupDataBuffersWithFrameRect:openFromCenter:device:]"];
    v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
    [v44 handleFailureInFunction:v45 file:v46 lineNumber:399 description:{@"Wrong number of opaque vertices! expected %lu, ended up with %lu", v40, v23}];
  }

  if (v43 != v23)
  {
    v47 = +[TSUAssertionHandler currentHandler];
    v48 = [NSString stringWithUTF8String:"[KNIrisBase p_setupDataBuffersWithFrameRect:openFromCenter:device:]"];
    v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
    [v47 handleFailureInFunction:v48 file:v49 lineNumber:400 description:{@"Wrong number of fade vertices! expected %lu, ended up with %lu", v43, v23}];
  }
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  direction = [contextCopy direction];
  firstObject = [textures firstObject];
  metalContext = [contextCopy metalContext];
  [(KNIrisBase *)self p_setupMetalShadersWithContext:metalContext];

  LOBYTE(direction) = (direction == &stru_20.segname[2]) ^ self->_isBuildOut;
  [firstObject frame];
  TSDRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  metalContext2 = [contextCopy metalContext];
  device = [metalContext2 device];
  v19 = direction & 1;
  [(KNIrisBase *)self p_setupDataBuffersWithFrameRect:v19 openFromCenter:device device:v10, v12, v14, v16];

  [(KNAnimationEffect *)self mvpMatrixWithContext:contextCopy];
  v30 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
  [firstObject frame];
  TSDRectWithSize();
  TSDCenterOfRect();
  v21.f64[1] = v20;
  v22 = vcvt_f32_f64(v21);
  v23 = 64;
  v24 = 304;
  v25 = 544;
  v26 = 3;
  do
  {
    v27 = (self + v23);
    *v27 = v30;
    v27[1] = v30;
    v27[2] = v30;
    v27[3] = v30;
    v28 = (self + v24);
    *v28 = v30;
    v28[1] = v30;
    v28[2] = v30;
    v28[3] = v30;
    *v28[4].f32 = v22;
    *v27[4].f32 = v22;
    v29 = (self + v25);
    v25 += 24;
    v29[1] = v22;
    v24 += 80;
    v23 += 80;
    v29[2].i8[0] = v19;
    --v26;
  }

  while (v26);
  *self->_anon_280 = v30;
  *&self->_anon_280[16] = v30;
  *&self->_anon_280[32] = v30;
  *&self->_anon_280[48] = v30;
}

- (void)renderFrameWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  direction = [contextCopy direction];
  [contextCopy percent];
  if ([textures count] < 2)
  {
    v52 = 0;
  }

  else
  {
    v52 = [textures objectAtIndexedSubscript:0];
  }

  lastObject = [textures lastObject];
  TSUSineMap();
  v8 = v7;
  if (direction == &stru_20.segname[1])
  {
    TSUSineMap();
    v8 = v9;
  }

  v47 = direction == &stru_20.segname[2];
  isBuildOut = self->_isBuildOut;
  [lastObject frame];
  v12 = v11;
  v14 = v13;
  metalContext = [contextCopy metalContext];
  device = [metalContext device];
  commandBuffer = [metalContext commandBuffer];
  passDescriptor = [metalContext passDescriptor];
  renderEncoder = [metalContext renderEncoder];
  v50 = device;
  if (!device)
  {
    v19 = +[TSUAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"[KNIrisBase renderFrameWithContext:]"];
    [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
    v22 = v21 = commandBuffer;
    [v19 handleFailureInFunction:v20 file:v22 lineNumber:478 description:{@"invalid nil value for '%s'", "device"}];

    commandBuffer = v21;
  }

  v49 = commandBuffer;
  if (!commandBuffer)
  {
    v23 = +[TSUAssertionHandler currentHandler];
    v24 = [NSString stringWithUTF8String:"[KNIrisBase renderFrameWithContext:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
    [v23 handleFailureInFunction:v24 file:v25 lineNumber:479 description:{@"invalid nil value for '%s'", "commandBuffer"}];
  }

  if (passDescriptor)
  {
    if (renderEncoder)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v39 = +[TSUAssertionHandler currentHandler];
    v40 = [NSString stringWithUTF8String:"[KNIrisBase renderFrameWithContext:]"];
    v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
    [v39 handleFailureInFunction:v40 file:v41 lineNumber:480 description:{@"invalid nil value for '%s'", "passDescriptor"}];

    if (renderEncoder)
    {
      goto LABEL_12;
    }
  }

  v42 = +[TSUAssertionHandler currentHandler];
  v43 = [NSString stringWithUTF8String:"[KNIrisBase renderFrameWithContext:]"];
  v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionIris.m"];
  [v42 handleFailureInFunction:v43 file:v44 lineNumber:481 description:{@"invalid nil value for '%s'", "renderEncoder"}];

LABEL_12:
  v26 = [lastObject metalTextureWithContext:metalContext];
  v27 = [v52 metalTextureWithContext:metalContext];
  v28 = v27;
  if (v26)
  {
    v29 = sqrt(v14 * v14 + v12 * v12) * 0.5;
    v30 = v47 ^ isBuildOut;
    v46 = v8 * (v29 * 1.15384615) + v29 * -0.153846154;
    v48 = v8 * (v29 * 1.15384615);
    if (v27)
    {
      [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_280];
      [renderEncoder setFragmentTexture:v28 atIndex:0];
      [(TSDMTLDataBuffer *)self->_quadMetalDataBuffer drawWithEncoder:renderEncoder atIndex:0];
    }

    [renderEncoder setFragmentTexture:v26 atIndex:0];
    metalContext2 = [contextCopy metalContext];
    currentBuffer = [metalContext2 currentBuffer];

    v33.f64[0] = v46;
    v33.f64[1] = v48;
    v45 = vcvt_f32_f64(v33);
    *&self->_anon_40[80 * currentBuffer + 72] = v45;
    [lastObject singleTextureOpacity];
    *&v34 = v34;
    v35 = &self->_anon_220[24 * currentBuffer];
    *(v35 + 5) = LODWORD(v34);
    *v35 = v45;
    [(TSDMetalShader *)self->_fadeMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:&self->_anon_40[80 * currentBuffer] fragmentBytes:?];
    [(TSDMTLDataBuffer *)self->_fadeMetalDataBuffer drawWithEncoder:renderEncoder atIndex:0];
    v36 = v46;
    if ((v30 & 1) == 0)
    {
      v36 = v48;
    }

    *&v37 = v36;
    *&self->_anon_130[80 * currentBuffer + 72] = __PAIR64__(v45.u32[1], v37);
    [lastObject singleTextureOpacity];
    *&v38 = v38;
    self->_opaqueFragmentInput[currentBuffer].Opacity = *&v38;
    [(TSDMetalShader *)self->_opaqueMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:&self->_anon_130[80 * currentBuffer] fragmentBytes:?];
    [(TSDMTLDataBuffer *)self->_opaqueMetalDataBuffer drawWithEncoder:renderEncoder atIndex:0];
  }
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  if (version <= 0x174876E7FFLL && classic)
  {
    v11 = [*attributes objectForKeyedSubscript:{@"KNTransitionAttributesDirection", name, warning, *&type, classic}];
    if (v11)
    {
    }

    else
    {
      v12 = [*attributes objectForKeyedSubscript:@"KNBuildAttributesDirection"];

      if (!v12)
      {
        return;
      }
    }

    if (type == 3)
    {
      v21 = @"KNTransitionAttributesDirection";
      v13 = [*attributes objectForKeyedSubscript:?];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      if (unsignedIntegerValue == &stru_68.reserved1)
      {
        v15 = 41;
      }

      else
      {
        v15 = 42;
      }
    }

    else
    {
      v21 = @"KNBuildAttributesDirection";
      v16 = [*attributes objectForKeyedSubscript:?];
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];

      if (unsignedIntegerValue2 == &stru_68.reserved1)
      {
        v15 = 41;
      }

      else
      {
        v15 = 42;
      }

      if (type == 2)
      {
        v15 = sub_130B80(v15);
      }
    }

    v18 = [*attributes mutableCopy];
    v19 = [NSNumber numberWithUnsignedInteger:v15];
    [v18 setObject:v19 forKeyedSubscript:v21];

    v20 = v18;
    *attributes = v18;
  }
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if (version <= 0x174876E7FFLL && classic)
  {
    v11 = [*attributes objectForKeyedSubscript:{@"direction", name, warning, *&type, classic}];

    if (v11)
    {
      v12 = [*attributes objectForKeyedSubscript:@"direction"];
      unsignedIntegerValue = [v12 unsignedIntegerValue];

      if (type == 2)
      {
        unsignedIntegerValue = sub_130B80(unsignedIntegerValue);
      }

      v14 = 42;
      if (unsignedIntegerValue == &stru_20.segname[2])
      {
        v14 = 173;
      }

      if (unsignedIntegerValue == &stru_20.segname[1])
      {
        v15 = 172;
      }

      else
      {
        v15 = v14;
      }

      v18 = [*attributes mutableCopy];
      v16 = [NSNumber numberWithUnsignedInteger:v15];
      [v18 setObject:v16 forKeyedSubscript:@"direction"];

      v17 = v18;
      *attributes = v18;
    }
  }
}

@end