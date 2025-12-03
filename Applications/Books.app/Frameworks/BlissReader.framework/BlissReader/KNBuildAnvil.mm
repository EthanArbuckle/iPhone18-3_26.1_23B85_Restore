@interface KNBuildAnvil
+ (id)defaultAttributes;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version;
- (CATransform3D)p_orthoTransformWithScale:(SEL)scale offset:(double)offset;
- (CGPoint)p_cameraShakePointsWithRandomGenerator:(id)generator;
- (CGPoint)p_objectTranslationAtPercent:(double)percent duration:(double)duration objectSmashDuration:(double)smashDuration objectFrame:(CGRect)frame randomGenerator:(id)generator;
- (CGRect)frameOfEffectWithContext:(id)context;
- (CGRect)frameOfEffectWithFrame:(CGRect)frame context:(id)context;
- (id)p_smokeSystemForTR:(id)r build:(id)build randomGenerator:(id)generator metalContext:(id)context;
- (id)p_specksSystemForTR:(id)r build:(id)build randomGenerator:(id)generator metalContext:(id)context;
- (id)p_texturedRectFromImagePath:(id)path metalContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)metalTeardownAnimationsWithContext:(id)context;
- (void)teardown;
@end

@implementation KNBuildAnvil

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49CFC0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (CGRect)frameOfEffectWithFrame:(CGRect)frame context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  self->_drawableFrame = frame;
  CGRectGetMinX(frame);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetMinY(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMaxX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMaxY(v11);
  [(KNAnimationContext *)selfCopy->super.mAnimationContext slideRect];
  CGRectGetMinY(v12);
  [(KNAnimationContext *)selfCopy->super.mAnimationContext slideRect];
  CGRectGetMaxY(v13);
  [(KNAnimationContext *)selfCopy->super.mAnimationContext slideRect];
  CGRectGetMinX(v14);
  [(KNAnimationContext *)selfCopy->super.mAnimationContext slideRect];
  CGRectGetMaxX(v15);
  selfCopy = (selfCopy + 616);
  TSDRectWithPoints();
  *&selfCopy->super.super.isa = v16;
  result = CGRectIntegral(v16);
  *&selfCopy->super.super.isa = result;
  return result;
}

- (void)teardown
{
  cameraShakePoints = self->_cameraShakePoints;
  if (cameraShakePoints)
  {
    free(cameraShakePoints);
    self->_cameraShakePoints = 0;
  }
}

- (CGRect)frameOfEffectWithContext:(id)context
{
  [context drawableFrame];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  self->_drawableFrame = v8;
  CGRectGetMinX(v8);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetMinY(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetMaxX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMaxY(v11);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinY(v12);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxY(v13);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinX(v14);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxX(v15);
  self = (self + 616);
  TSDRectWithPoints();
  *&self->super.super.isa = v16;
  result = CGRectIntegral(v16);
  *&self->super.super.isa = result;
  return result;
}

- (CGPoint)p_cameraShakePointsWithRandomGenerator:(id)generator
{
  generatorCopy = generator;
  cameraShakePoints = self->_cameraShakePoints;
  if (!cameraShakePoints)
  {
    v6 = 0;
    v7 = 0;
    self->_cameraShakePoints = malloc_type_calloc(0x10uLL, 0xBuLL, 0x3B6BD5BCuLL);
    do
    {
      v8 = (v7 / -10.0 + 1.0) * (v7 / -10.0 + 1.0);
      [generatorCopy doubleBetween:-1.0 :1.0];
      v10 = v8 * (v9 * 0.025) * 0.4;
      v11 = pow(-1.0, v7);
      cameraShakePoints = self->_cameraShakePoints;
      p_x = &cameraShakePoints[v6].x;
      *p_x = v10;
      p_x[1] = v11 * 0.025 * v8;
      ++v7;
      ++v6;
    }

    while (v7 != 11);
  }

  return cameraShakePoints;
}

- (id)p_smokeSystemForTR:(id)r build:(id)build randomGenerator:(id)generator metalContext:(id)context
{
  if (context)
  {
    contextCopy = context;
    generatorCopy = generator;
    buildCopy = build;
    [r size];
    v14 = v13;
    v16 = v15;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v18 = v17;
    v20 = v19;
    [buildCopy duration];
    v22 = v21;

    v23 = [KNBuildAnvilSmokeSystem newParticleSystemWithParticleSize:0 particleSystemSize:generatorCopy objectSize:self->_metalSmokeShader slideSize:contextCopy duration:16.0 direction:16.0 randomGenerator:300.0 shader:1.0 metalContext:v14, v16, v18, v20, v22];
    [(TSDTexturedRectangle *)self->_metalSmokeTexture frame];
    v25 = v24;
    [(TSDTexturedRectangle *)self->_metalSmokeTexture frame];
    [v23 setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:{v25, v26}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)p_specksSystemForTR:(id)r build:(id)build randomGenerator:(id)generator metalContext:(id)context
{
  rCopy = r;
  buildCopy = build;
  generatorCopy = generator;
  contextCopy = context;
  if (!generatorCopy)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"[KNBuildAnvil p_specksSystemForTR:build:randomGenerator:metalContext:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildAnvil.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:273 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v18 = v17;
  v20 = v19;
  [rCopy frameOnCanvas];
  [rCopy size];
  [rCopy size];
  TSUClamp();
  if (contextCopy)
  {
    TSDMixFloats();
    v22 = v21;
    [rCopy size];
    v24 = v23;
    v26 = v25;
    [buildCopy duration];
    v28 = [KNBuildAnvilSpecksSystem newParticleSystemWithParticleSize:0 particleSystemSize:generatorCopy objectSize:self->_metalSpecksShader slideSize:contextCopy duration:16.0 direction:16.0 randomGenerator:v22 shader:1.0 metalContext:v24, v26, v18, v20, v27];
    [(TSDTexturedRectangle *)self->_metalSpecksTexture frame];
    v30 = v29;
    [(TSDTexturedRectangle *)self->_metalSpecksTexture frame];
    [v28 setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:{v30, v31}];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (CGPoint)p_objectTranslationAtPercent:(double)percent duration:(double)duration objectSmashDuration:(double)smashDuration objectFrame:(CGRect)frame randomGenerator:(id)generator
{
  height = frame.size.height;
  width = frame.size.width;
  rect = frame.origin.y;
  x = frame.origin.x;
  generatorCopy = generator;
  if (duration * 0.5 <= 0.25)
  {
    v13 = duration * 0.5;
  }

  else
  {
    v13 = 0.25;
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v29 = v14;
  if (!generatorCopy)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[KNBuildAnvil p_objectTranslationAtPercent:duration:objectSmashDuration:objectFrame:randomGenerator:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildAnvil.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:315 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  v19 = CGPointZero.x;
  y = CGPointZero.y;
  [(KNBuildAnvil *)self p_cameraShakePointsWithRandomGenerator:generatorCopy];
  v20 = -(smashDuration - percent * duration) / v13;
  if (v20 > 0.0 && v20 < 1.0)
  {
    TSDMixFloats();
    TSDMixFloats();
    TSDAddPoints();
    v19 = v22;
    y = v23;
  }

  TSUClamp();
  v25 = v24;
  v34.origin.x = x;
  v34.size.width = width;
  v34.origin.y = rect;
  v34.size.height = height;
  v26 = y + (1.0 - v25 * v25) * (v29 + CGRectGetMaxY(v34) + self->_drawableFrame.origin.y + 5.0);

  v27 = v19;
  v28 = v26;
  result.y = v28;
  result.x = v27;
  return result;
}

- (id)p_texturedRectFromImagePath:(id)path metalContext:(id)context
{
  contextCopy = context;
  v6 = [TSUImage imageWithContentsOfFile:path];
  cGImage = [v6 CGImage];

  v8 = [[TSDTexturedRectangle alloc] initWithCGImage:cGImage];
  device = [contextCopy device];

  [v8 setupMetalTextureForDevice:device];

  return v8;
}

- (void)metalPrepareAnimationWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  animatedBuild = [contextCopy animatedBuild];
  metalContext = [contextCopy metalContext];
  device = [metalContext device];
  v8 = [textures objectAtIndexedSubscript:0];
  [v8 frameOnCanvas];
  [(KNBuildAnvil *)self frameOfEffectWithFrame:contextCopy context:?];

  [contextCopy drawableFrame];
  self->_drawableFrame.origin.x = v9;
  self->_drawableFrame.origin.y = v10;
  self->_drawableFrame.size.width = v11;
  self->_drawableFrame.size.height = v12;
  if ([textures count] != &dword_0 + 1)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[KNBuildAnvil metalPrepareAnimationWithContext:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildAnvil.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:385 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(textures, "count")}];
  }

  lastObject = [textures lastObject];
  v17 = KNBundle();
  v18 = [v17 pathForResource:@"KNBuildAnvil-Smoke" ofType:@"png"];

  v65 = v18;
  v19 = [(KNBuildAnvil *)self p_texturedRectFromImagePath:v18 metalContext:metalContext];
  metalSmokeTexture = self->_metalSmokeTexture;
  self->_metalSmokeTexture = v19;

  v21 = KNBundle();
  v22 = [v21 pathForResource:@"KNBuildAnvil-Specks" ofType:@"png"];

  v23 = [(KNBuildAnvil *)self p_texturedRectFromImagePath:v22 metalContext:metalContext];
  metalSpecksTexture = self->_metalSpecksTexture;
  self->_metalSpecksTexture = v23;

  [lastObject frameOnCanvas];
  v26 = v25;
  v28 = v27;
  y = CGPointZero.y;
  v30 = TSDRectUnit[0];
  v31 = TSDRectUnit[1];
  v32 = TSDRectUnit[2];
  v33 = TSDRectUnit[3];
  v34 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:CGPointZero.x device:y];
  metalObjectDataBuffer = self->_metalObjectDataBuffer;
  self->_metalObjectDataBuffer = v34;

  if ([contextCopy isMotionBlurred])
  {
    v36 = [TSDGPUDataBuffer newDataBufferWithVertexRect:1 textureRect:1 meshSize:1 textureFlipped:device includeCenterAttribute:CGPointZero.x addTransparentBorder:y device:v26, v28, v30, v31, v32, v33, TSDGPUDataBufferMeshSizeDefault[0], TSDGPUDataBufferMeshSizeDefault[1]];
    metalBlurDataBuffer = self->_metalBlurDataBuffer;
    self->_metalBlurDataBuffer = v36;
  }

  v38 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v38 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v38 setBlendingEnabled:1];
  [v38 setDestinationRGBBlendFactor:5];
  [v38 setDestinationAlphaBlendFactor:5];
  v39 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildAnvilSmokeVertexShader" fragmentShader:@"buildAnvilSmokeFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v38];
  metalSmokeShader = self->_metalSmokeShader;
  self->_metalSmokeShader = v39;

  v41 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildAnvilSpecksVertexShader" fragmentShader:@"buildAnvilSpecksFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v38];
  metalSpecksShader = self->_metalSpecksShader;
  self->_metalSpecksShader = v41;

  v43 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:device colorAttachment:v38];
  metalObjectShader = self->_metalObjectShader;
  self->_metalObjectShader = v43;

  if ([contextCopy isMotionBlurred])
  {
    v45 = [[TSDMetalShader alloc] initDefaultSingleDirectionMotionBlurShaderWithDevice:device colorAttachment:v38];
    metalObjectBlurShader = self->_metalObjectBlurShader;
    self->_metalObjectBlurShader = v45;

    [lastObject size];
    v64 = v47;
    [lastObject size];
    v63 = v48;
    [lastObject size];
    v62 = 1.0 / v49;
    [lastObject size];
    v50.f64[0] = v62;
    v50.f64[1] = 1.0 / v51;
    v52.f64[0] = v64;
    v52.f64[1] = v63;
    *&self->_anon_1e0[16] = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v50);
  }

  randomGenerator = [contextCopy randomGenerator];
  v54 = [(KNBuildAnvil *)self p_smokeSystemForTR:lastObject build:animatedBuild randomGenerator:randomGenerator metalContext:metalContext];
  smokeSystem = self->_smokeSystem;
  self->_smokeSystem = v54;

  v56 = [(KNBuildAnvil *)self p_specksSystemForTR:lastObject build:animatedBuild randomGenerator:randomGenerator metalContext:metalContext];
  specksSystem = self->_specksSystem;
  self->_specksSystem = v56;

  [(KNAnimationEffect *)self mvpMatrixWithContext:contextCopy];
  *&self->_baseTransform.m31 = v71;
  *&self->_baseTransform.m33 = v72;
  *&self->_baseTransform.m41 = v73;
  *&self->_baseTransform.m43 = v74;
  *&self->_baseTransform.m11 = v67;
  *&self->_baseTransform.m13 = v68;
  *&self->_baseTransform.m21 = v69;
  *&self->_baseTransform.m23 = v70;
  v58 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m11), *&self->_baseTransform.m13);
  v59 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m21), *&self->_baseTransform.m23);
  v60 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m31), *&self->_baseTransform.m33);
  v61 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m41), *&self->_baseTransform.m43);
  *self->_anon_190 = v58;
  *&self->_anon_190[16] = v59;
  *&self->_anon_190[32] = v60;
  *&self->_anon_190[48] = v61;
  *&self->_anon_1e0[32] = v58;
  *&self->_anon_1e0[48] = v59;
  *&self->_anon_1e0[64] = v60;
  *&self->_anon_1e0[80] = v61;
}

- (CATransform3D)p_orthoTransformWithScale:(SEL)scale offset:(double)offset
{
  y = a5.y;
  x = a5.x;
  TSDMultiplySizeScalar();
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  TSDTransform3DMakeOrtho();
  v8 = *&retstr->m33;
  *&v17.m31 = *&retstr->m31;
  *&v17.m33 = v8;
  v9 = *&retstr->m43;
  *&v17.m41 = *&retstr->m41;
  *&v17.m43 = v9;
  v10 = *&retstr->m13;
  *&v17.m11 = *&retstr->m11;
  *&v17.m13 = v10;
  v11 = *&retstr->m23;
  *&v17.m21 = *&retstr->m21;
  *&v17.m23 = v11;
  result = CATransform3DTranslate(&v18, &v17, x, -y, 0.0);
  v13 = *&v18.m33;
  *&retstr->m31 = *&v18.m31;
  *&retstr->m33 = v13;
  v14 = *&v18.m43;
  *&retstr->m41 = *&v18.m41;
  *&retstr->m43 = v14;
  v15 = *&v18.m13;
  *&retstr->m11 = *&v18.m11;
  *&retstr->m13 = v15;
  v16 = *&v18.m23;
  *&retstr->m21 = *&v18.m21;
  *&retstr->m23 = v16;
  return result;
}

- (void)metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  animatedBuild = [contextCopy animatedBuild];
  [contextCopy percent];
  v8 = v7;
  lastObject = [textures lastObject];
  metalContext = [contextCopy metalContext];
  renderEncoder = [metalContext renderEncoder];

  if (!renderEncoder)
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[KNBuildAnvil metalRenderFrameWithContext:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildAnvil.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:474 description:{@"invalid nil value for '%s'", "renderEncoder"}];
  }

  [animatedBuild duration];
  v16 = v15;
  v17 = v15 * 0.4;
  if (v17 <= 0.2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.2;
  }

  [lastObject frameOnCanvas];
  v20 = v19;
  metalContext2 = [contextCopy metalContext];
  v22 = [lastObject metalTextureWithContext:metalContext2];

  if (v22)
  {
    [renderEncoder setFragmentTexture:v22 atIndex:0];
    if (v8 <= 0.999)
    {
      v79 = *&self->_baseTransform.m21;
      v81 = *&self->_baseTransform.m11;
      v70 = *&self->_baseTransform.m23;
      v72 = *&self->_baseTransform.m13;
      v75 = *&self->_baseTransform.m41;
      v77 = *&self->_baseTransform.m31;
      v66 = *&self->_baseTransform.m43;
      v68 = *&self->_baseTransform.m33;
      randomGenerator = [contextCopy randomGenerator];
      [lastObject frameOnCanvas];
      [(KNBuildAnvil *)self p_objectTranslationAtPercent:randomGenerator duration:v8 objectSmashDuration:v16 objectFrame:v18 randomGenerator:v24, v25, v26, v27];
      v29 = v28;
      v31 = v30;
      TSUClamp();
      v33 = v32;
      [lastObject frameOnCanvas];
      v74 = randomGenerator;
      [(KNBuildAnvil *)self p_objectTranslationAtPercent:randomGenerator duration:v33 objectSmashDuration:v16 objectFrame:v18 randomGenerator:v34, v35, v36, v37];
      TSDSubtractPoints();
      v62 = v39;
      v64 = v38;
      v40 = TSDNearlyEqualPoints();
      v41.f64[0] = v64;
      v41.f64[1] = v62;
      *self->_anon_1e0 = vcvt_f32_f64(v41);
      *&v83.m13 = v72;
      *&v83.m11 = v81;
      *&v83.m23 = v70;
      *&v83.m21 = v79;
      *&v83.m33 = v68;
      *&v83.m31 = v77;
      *&v83.m43 = v66;
      *&v83.m41 = v75;
      CATransform3DTranslate(&v84, &v83, v29, v31, 0.0);
      v71 = *&v84.m11;
      v73 = *&v84.m13;
      v82 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m11), *&v84.m13);
      v67 = *&v84.m21;
      v69 = *&v84.m23;
      v80 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m21), *&v84.m23);
      v63 = *&v84.m31;
      v65 = *&v84.m33;
      v78 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m31), *&v84.m33);
      v60 = *&v84.m41;
      v61 = *&v84.m43;
      v76 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m41), *&v84.m43);
      [lastObject singleTextureOpacity];
      *self->_anon_190 = v82;
      *&self->_anon_190[16] = v80;
      *&self->_anon_190[32] = v78;
      *&self->_anon_190[48] = v76;
      *&v42 = v42;
      self->_objectFragmentUniforms.Opacity = *&v42;
      *&self->_anon_1e0[32] = v82;
      *&self->_anon_1e0[48] = v80;
      *&self->_anon_1e0[64] = v78;
      *&self->_anon_1e0[80] = v76;
      self->_blurFragmentUniforms.Opacity = *&v42;
      if ((v40 & 1) != 0 || ![contextCopy isMotionBlurred])
      {
        p_metalObjectShader = &self->_metalObjectShader;
        [(TSDMetalShader *)self->_metalObjectShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_190 fragmentBytes:&self->_objectFragmentUniforms];
        v44 = &OBJC_IVAR___KNBuildAnvil__metalObjectDataBuffer;
      }

      else
      {
        p_metalObjectShader = &self->_metalObjectBlurShader;
        [(TSDMetalShader *)self->_metalObjectBlurShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_1e0 fragmentBytes:&self->_blurFragmentUniforms];
        v44 = &OBJC_IVAR___KNBuildAnvil__metalBlurDataBuffer;
      }

      [*(&self->super.super.isa + *v44) drawWithEncoder:renderEncoder atIndex:{-[TSDMetalShader bufferIndex](*p_metalObjectShader, "bufferIndex")}];
      TSUClamp();
      v46 = v45;
      *&v83.m11 = v71;
      *&v83.m13 = v73;
      *&v83.m21 = v67;
      *&v83.m23 = v69;
      *&v83.m31 = v63;
      *&v83.m33 = v65;
      *&v83.m41 = v60;
      *&v83.m43 = v61;
      CATransform3DTranslate(&v84, &v83, 0.0, v46 * (v20 / -7.0 * 0.5 * v46), 0.0);
      v47 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m11), *&v84.m13);
      v48 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m21), *&v84.m23);
      v49 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m31), *&v84.m33);
      v50 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v84.m41), *&v84.m43);
      v51 = 1.0 - v46 * v46;
      if (v46 == 0.0)
      {
        v51 = 0.0;
      }

      v52 = v46;
      v53 = v51;
      *&self->_anon_30[56] = v52;
      *&self->_anon_30[60] = v53;
      self->_smokeUniforms = v47;
      *self->_anon_30 = v48;
      *&self->_anon_30[16] = v49;
      *&self->_anon_30[32] = v50;
      [(KNBuildAnvilSmokeSystem *)self->_smokeSystem speedMax];
      *&v54 = v54;
      *&self->_anon_30[52] = LODWORD(v54);
      [(KNBuildAnvilSmokeSystem *)self->_smokeSystem rotationMax];
      *&v55 = v55;
      *&self->_anon_30[48] = LODWORD(v55);
      [(TSDMetalShader *)self->_metalSmokeShader setPipelineStateWithEncoder:renderEncoder vertexBytes:&self->_smokeUniforms];
      metalTexture = [(TSDTexturedRectangle *)self->_metalSmokeTexture metalTexture];
      [renderEncoder setFragmentTexture:metalTexture atIndex:0];

      [(KNBuildAnvilSmokeSystem *)self->_smokeSystem drawMetalWithEncoder:renderEncoder];
      if (v46 < 0.5)
      {
        *&self->_specksUniforms.SpeedMax = v82;
        *&self->_anon_9c[4] = v80;
        *&self->_anon_9c[20] = v78;
        *&self->_anon_9c[36] = v76;
        TSUSineMap();
        TSUClamp();
        *&v57 = v57;
        *&self->_anon_9c[56] = v52;
        *&self->_anon_9c[60] = LODWORD(v57);
        [(KNBuildAnvilSpecksSystem *)self->_specksSystem speedMax];
        *&v58 = v58;
        *&self->_anon_9c[52] = LODWORD(v58);
        [(TSDMetalShader *)self->_metalSpecksShader setPipelineStateWithEncoder:renderEncoder vertexBytes:&self->_specksUniforms];
        metalTexture2 = [(TSDTexturedRectangle *)self->_metalSpecksTexture metalTexture];
        [renderEncoder setFragmentTexture:metalTexture2 atIndex:0];

        [(KNBuildAnvilSpecksSystem *)self->_specksSystem drawMetalWithEncoder:renderEncoder];
      }
    }

    else
    {
      [(TSDMetalShader *)self->_metalObjectShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_190 fragmentBytes:&self->_objectFragmentUniforms];
      [(TSDMTLDataBuffer *)self->_metalObjectDataBuffer drawWithEncoder:renderEncoder atIndex:[(TSDMetalShader *)self->_metalObjectShader bufferIndex]];
    }
  }
}

- (void)metalTeardownAnimationsWithContext:(id)context
{
  metalSmokeShader = self->_metalSmokeShader;
  self->_metalSmokeShader = 0;

  metalSpecksShader = self->_metalSpecksShader;
  self->_metalSpecksShader = 0;

  metalObjectShader = self->_metalObjectShader;
  self->_metalObjectShader = 0;

  metalObjectBlurShader = self->_metalObjectBlurShader;
  self->_metalObjectBlurShader = 0;

  metalObjectDataBuffer = self->_metalObjectDataBuffer;
  self->_metalObjectDataBuffer = 0;

  metalBlurDataBuffer = self->_metalBlurDataBuffer;
  self->_metalBlurDataBuffer = 0;

  [(TSDTexturedRectangle *)self->_metalSmokeTexture teardown];
  [(TSDTexturedRectangle *)self->_metalSpecksTexture teardown];
  cameraShakePoints = self->_cameraShakePoints;
  if (cameraShakePoints)
  {
    free(cameraShakePoints);
    self->_cameraShakePoints = 0;
  }
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  if ((type - 1) <= 1 && version <= 0x174876E7FFLL && classic)
  {
    v13 = [*attributes mutableCopy];
    [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"KNBuildCustomAttributesMotionBlur"];
    v12 = v13;
    *attributes = v13;
  }
}

@end