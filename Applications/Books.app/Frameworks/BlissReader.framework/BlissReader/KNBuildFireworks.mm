@interface KNBuildFireworks
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
- (CGRect)frameOfEffectWithContext:(id)context;
- (KNBuildFireworks)initWithAnimationContext:(id)context;
- (id)p_fireworksSystemsForTR:(id)r build:(id)build context:(id)context;
- (id)p_particleTexturedRectWithPath:(id)path;
- (void)animationDidEndWithContext:(id)context;
- (void)metalAnimationDidEndWithContext:(id)context;
- (void)metalAnimationWillBeginWithContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)metalTeardownAnimationsWithContext:(id)context;
- (void)p_drawObject:(id)object percent:(double)percent encoder:(id)encoder;
- (void)p_drawParticleSystemsWithPercent:(double)percent sparkles:(BOOL)sparkles particleSystemOpacity:(double)opacity context:(id)context renderEncoder:(id)encoder;
- (void)p_setupParticleTexturedRectsWithMetalContext:(id)context;
- (void)p_setupShadersWithMetalContext:(id)context;
@end

@implementation KNBuildFireworks

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49D1F8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if (classic)
  {
    *name = @"apple:dissolve";
  }
}

- (KNBuildFireworks)initWithAnimationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = KNBuildFireworks;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:context];
  if (v3)
  {
    v4 = KNBundle();
    v5 = [v4 pathForResource:@"Fireworks" ofType:@"parameterGroup"];

    v6 = [KNAnimParameterGroup parameterGroupForFile:v5];
    parameterGroup = v3->_parameterGroup;
    v3->_parameterGroup = v6;
  }

  return v3;
}

- (CGRect)frameOfEffectWithContext:(id)context
{
  [context drawableFrame];
  self->_drawableFrame.origin.x = v4;
  self->_drawableFrame.origin.y = v5;
  self->_drawableFrame.size.width = v6;
  self->_drawableFrame.size.height = v7;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_frameRect.origin.x = v8;
  self->_frameRect.origin.y = v9;
  self->_frameRect.size.width = v10;
  self->_frameRect.size.height = v11;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)p_fireworksSystemsForTR:(id)r build:(id)build context:(id)context
{
  rCopy = r;
  buildCopy = build;
  contextCopy = context;
  randomGenerator = [contextCopy randomGenerator];
  [buildCopy duration];
  v12 = v11;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworksCount"];
  v14 = v12 * v13;
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14;
  }

  v61 = [NSMutableArray arrayWithCapacity:v15];
  v60 = v15;
  [randomGenerator doubleBetween:0.0 :(v15 - 1)];
  v16 = 0;
  v59 = v17;
  while (1)
  {
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v19 = v18;
    v21 = v20;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleCount"];
    v23 = v22;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkSizeMin"];
    v25 = v24;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkSizeMax"];
    [randomGenerator doubleBetween:v25 :v26];
    v28 = v27;
    [contextCopy duration];
    v30 = v29;
    direction = [contextCopy direction];
    metalFireworksShader = self->_metalFireworksShader;
    metalContext = [contextCopy metalContext];
    v34 = [KNBuildFireworksSystem newParticleSystemWithParticleSize:direction particleSystemSize:randomGenerator objectSize:metalFireworksShader slideSize:metalContext duration:1.0 direction:1.0 randomGenerator:v23 shader:1.0 metalContext:self->_drawableFrame.size.width, self->_drawableFrame.size.height, v19, v21, v30];

    [(TSDTexturedRectangle *)self->_particleTR size];
    if (!v34)
    {
      break;
    }

    v37 = v35;
    v38 = v36;
    if (v19 >= v21)
    {
      v39 = v21;
    }

    else
    {
      v39 = v19;
    }

    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleSizeMin"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleSizeMax"];
    TSDMultiplySizeScalar();
    [v34 setRandomParticleSizeMinMax:?];
    [v34 setMaxDistance:v39 * v28];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleColorRandomness"];
    [v34 setColorRandomness:?];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleLifeSpanMinDuration"];
    [v34 setLifeSpanMinDuration:?];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkSpeedMin"];
    v41 = v40;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkSpeedMax"];
    [v34 setRandomParticleSpeedMinMax:{v41, v42}];
    if (v16)
    {
      v43 = 0.5;
      v44 = 1.0;
    }

    else
    {
      v43 = 0.0;
      v44 = 0.5;
    }

    [randomGenerator doubleBetween:v43 :v44];
    [v34 setFireworkStartingPositionX:?];
    if (!v16)
    {
      v45 = 0.0;
      goto LABEL_16;
    }

    if (v16 == 1)
    {
      v45 = 1.0;
LABEL_16:
      [v34 setFireworkStartingPositionX:v45];
    }

    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkDurationMin"];
    v47 = v46;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkDurationMax"];
    [randomGenerator doubleBetween:v47 :v48];
    v50 = v49;
    [contextCopy duration];
    v52 = v50 / v51;
    [randomGenerator doubleBetween:0.0 :1.0 - v52];
    HIDWORD(v54) = 0;
    if (v59 == v16)
    {
      v53 = 0.0;
    }

    if (v53 < 0.001)
    {
      v53 = 0.001;
    }

    *&v53 = v53;
    *&v54 = v52;
    [v34 setLifeSpan:{v53, v54}];
    [v34 setupWithTexture:rCopy particleTextureSize:0 reverseDrawOrder:{v37, v38}];
    [v61 addObject:v34];

    if (v60 == ++v16)
    {
      goto LABEL_24;
    }
  }

  v55 = +[TSUAssertionHandler currentHandler];
  v56 = [NSString stringWithUTF8String:"[KNBuildFireworks p_fireworksSystemsForTR:build:context:]"];
  v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFireworks.m"];
  [v55 handleFailureInFunction:v56 file:v57 lineNumber:298 description:{@"invalid nil value for '%s'", "particleSystem"}];

LABEL_24:

  return v61;
}

- (void)animationDidEndWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildFireworks *)self metalAnimationDidEndWithContext:contextCopy];
  [(KNBuildFireworks *)self metalTeardownAnimationsWithContext:contextCopy];
}

- (id)p_particleTexturedRectWithPath:(id)path
{
  v3 = [NSData dataWithContentsOfFile:path];
  v4 = CGDataProviderCreateWithCFData(v3);

  v5 = CGImageCreateWithPNGDataProvider(v4, 0, 1, kCGRenderingIntentDefault);
  CGDataProviderRelease(v4);
  v6 = [[TSDTexturedRectangle alloc] initWithCGImage:v5];
  CGImageRelease(v5);

  return v6;
}

- (void)p_setupParticleTexturedRectsWithMetalContext:(id)context
{
  if (!self->_particleTR)
  {
    contextCopy = context;
    v5 = KNBundle();
    v16 = [v5 pathForResource:@"KNBuildFireworks" ofType:@"png"];

    v6 = [(KNBuildFireworks *)self p_particleTexturedRectWithPath:v16];
    particleTR = self->_particleTR;
    self->_particleTR = v6;

    v8 = self->_particleTR;
    device = [contextCopy device];
    [(TSDTexturedRectangle *)v8 setupMetalTextureForDevice:device];

    v10 = KNBundle();
    v11 = [v10 pathForResource:@"KNBuildFireworks_CenterBurst" ofType:@"png"];

    v12 = [(KNBuildFireworks *)self p_particleTexturedRectWithPath:v11];
    centerBurstTR = self->_centerBurstTR;
    self->_centerBurstTR = v12;

    v14 = self->_centerBurstTR;
    device2 = [contextCopy device];

    [(TSDTexturedRectangle *)v14 setupMetalTextureForDevice:device2];
  }
}

- (void)p_setupShadersWithMetalContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];
  v5 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  pixelFormat = [contextCopy pixelFormat];

  [v5 setPixelFormat:pixelFormat];
  [v5 setBlendingEnabled:1];
  [v5 setDestinationRGBBlendFactor:5];
  [v5 setDestinationAlphaBlendFactor:5];
  v7 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:device colorAttachment:v5];
  metalObjectShader = self->_metalObjectShader;
  self->_metalObjectShader = v7;

  v9 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildFireworksParticlesVertexShader" fragmentShader:@"buildFireworksParticlesFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v5];
  metalFireworksShader = self->_metalFireworksShader;
  self->_metalFireworksShader = v9;

  [v5 setDestinationRGBBlendFactor:0];
  [v5 setDestinationAlphaBlendFactor:0];
  v11 = [[TSDMetalShader alloc] initQuadTextureShaderWithFragmentShader:@"buildFireworksTrailsFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v5];
  metalTrailsShader = self->_metalTrailsShader;
  self->_metalTrailsShader = v11;

  [v5 setSourceRGBBlendFactor:4];
  [v5 setSourceAlphaBlendFactor:4];
  v13 = [[TSDMetalShader alloc] initQuadTextureShaderWithFragmentShader:@"buildFireworksTrailsFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v5];
  metalFBOShader = self->_metalFBOShader;
  self->_metalFBOShader = v13;

  [v5 setDestinationRGBBlendFactor:5];
  [v5 setDestinationAlphaBlendFactor:5];
  v15 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:device colorAttachment:v5];
  metalCenterBurstShader = self->_metalCenterBurstShader;
  self->_metalCenterBurstShader = v15;
}

- (void)metalPrepareAnimationWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  animatedBuild = [contextCopy animatedBuild];
  metalContext = [contextCopy metalContext];
  if ([textures count] != &dword_0 + 1)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[KNBuildFireworks metalPrepareAnimationWithContext:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildFireworks.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:443 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(textures, "count")}];
  }

  lastObject = [textures lastObject];
  device = [metalContext device];
  [contextCopy drawableFrame];
  self->_drawableFrame.origin.x = v13;
  self->_drawableFrame.origin.y = v14;
  self->_drawableFrame.size.width = v15;
  self->_drawableFrame.size.height = v16;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_frameRect.origin.x = v17;
  self->_frameRect.origin.y = v18;
  self->_frameRect.size.width = v19;
  self->_frameRect.size.height = v20;
  [(KNAnimationEffect *)self mvpMatrixWithContext:contextCopy];
  v21 = *&v62.m33;
  *&self->_baseTransform.m31 = *&v62.m31;
  *&self->_baseTransform.m33 = v21;
  v22 = *&v62.m43;
  *&self->_baseTransform.m41 = *&v62.m41;
  *&self->_baseTransform.m43 = v22;
  v23 = *&v62.m13;
  *&self->_baseTransform.m11 = *&v62.m11;
  *&self->_baseTransform.m13 = v23;
  v24 = *&v62.m23;
  *&self->_baseTransform.m21 = *&v62.m21;
  *&self->_baseTransform.m23 = v24;
  TSDTransform3DMakeOrtho();
  v25 = *&v62.m33;
  *&self->_baseOrthoTransform.m31 = *&v62.m31;
  *&self->_baseOrthoTransform.m33 = v25;
  v26 = *&v62.m43;
  *&self->_baseOrthoTransform.m41 = *&v62.m41;
  *&self->_baseOrthoTransform.m43 = v26;
  v27 = *&v62.m13;
  *&self->_baseOrthoTransform.m11 = *&v62.m11;
  *&self->_baseOrthoTransform.m13 = v27;
  v28 = *&v62.m23;
  *&self->_baseOrthoTransform.m21 = *&v62.m21;
  *&self->_baseOrthoTransform.m23 = v28;
  [(KNBuildFireworks *)self p_setupParticleTexturedRectsWithMetalContext:metalContext];
  [(KNBuildFireworks *)self p_setupShadersWithMetalContext:metalContext];
  v29 = [(KNBuildFireworks *)self p_fireworksSystemsForTR:lastObject build:animatedBuild context:contextCopy];
  fireworksSystems = self->_fireworksSystems;
  self->_fireworksSystems = v29;

  [lastObject frame];
  TSDRectWithSize();
  v31 = TSDRectUnit[0];
  v32 = TSDRectUnit[1];
  v33 = TSDRectUnit[2];
  v34 = TSDRectUnit[3];
  v35 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:device device:?];
  metalObjectDataBuffer = self->_metalObjectDataBuffer;
  self->_metalObjectDataBuffer = v35;

  TSDRectWithSize();
  v37 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:device device:?];
  metalFBODataBuffer = self->_metalFBODataBuffer;
  self->_metalFBODataBuffer = v37;

  [(TSDTexturedRectangle *)self->_centerBurstTR size];
  v40 = v39;
  [(TSDTexturedRectangle *)self->_centerBurstTR size];
  v42 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:0.0 device:0.0, v40, v41, v31, v32, v33, v34];
  metalCenterBurstDataBuffer = self->_metalCenterBurstDataBuffer;
  self->_metalCenterBurstDataBuffer = v42;

  v44 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m21), *&self->_baseTransform.m23);
  v45 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m31), *&self->_baseTransform.m33);
  v46 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m41), *&self->_baseTransform.m43);
  *self->_anon_230 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseTransform.m11), *&self->_baseTransform.m13);
  *&self->_anon_230[16] = v44;
  *&self->_anon_230[32] = v45;
  *&self->_anon_230[48] = v46;
  v47 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseOrthoTransform.m21), *&self->_baseOrthoTransform.m23);
  v48 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseOrthoTransform.m31), *&self->_baseOrthoTransform.m33);
  v49 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseOrthoTransform.m41), *&self->_baseOrthoTransform.m43);
  *self->_anon_1f0 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_baseOrthoTransform.m11), *&self->_baseOrthoTransform.m13);
  *&self->_anon_1f0[16] = v47;
  *&self->_anon_1f0[32] = v48;
  *&self->_anon_1f0[48] = v49;
  [lastObject frameOnCanvas];
  v51 = v50;
  MinX = CGRectGetMinX(self->_frameRect);
  [lastObject frameOnCanvas];
  v54 = v53;
  MaxY = CGRectGetMaxY(self->_frameRect);
  memset(&v62, 0, sizeof(v62));
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
  }

  v60 = v62;
  CATransform3DTranslate(&v61, &v60, v51 - MinX, -(v54 - MaxY), 0.0);
  v62 = v61;
  v57 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v61.m21), *&v61.m23);
  v58 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v61.m31), *&v61.m33);
  v59 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v61.m41), *&v61.m43);
  *&self->_particlesVertexUniforms.Percent = vcvt_hight_f32_f64(vcvt_f32_f64(*&v61.m11), *&v61.m13);
  *&self->_particlesVertexUniforms.ShouldSparkle = v57;
  *&self->_particlesVertexUniforms.SpeedMax = v58;
  *&self->_anon_194[12] = v59;
}

- (void)metalAnimationWillBeginWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildFireworks *)self frameOfEffectWithContext:contextCopy];
  [(KNBuildFireworks *)self metalPrepareAnimationWithContext:contextCopy];
  metalContext = [contextCopy metalContext];

  v5 = [[TSDMetalRenderTarget alloc] initWithSize:metalContext metalContext:{self->_frameRect.size.width, self->_frameRect.size.height}];
  frameRenderTarget = self->_frameRenderTarget;
  self->_frameRenderTarget = v5;

  v7 = [[TSDMetalRenderTarget alloc] initWithSize:metalContext metalContext:{self->_frameRect.size.width, self->_frameRect.size.height}];
  bloomRenderTarget = self->_bloomRenderTarget;
  self->_bloomRenderTarget = v7;

  v9 = [TSDMetalBloomEffect alloc];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"BloomBlurScale"];
  v11 = [v9 initWithEffectSize:metalContext blurScale:self->_frameRect.size.width metalContext:{self->_frameRect.size.height, v10}];
  metalBloomEffect = self->_metalBloomEffect;
  self->_metalBloomEffect = v11;

  self->_previousPercent = 0.0;
}

- (void)p_drawObject:(id)object percent:(double)percent encoder:(id)encoder
{
  parameterGroup = self->_parameterGroup;
  encoderCopy = encoder;
  objectCopy = object;
  [(KNAnimParameterGroup *)parameterGroup valueForConstant:@"TextOpacityBeginTime"];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"TextOpacityEndTime"];
  TSUClamp();
  v11 = v10;
  [objectCopy singleTextureOpacity];
  v13 = v12;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"TextOpacityTiming" atPercent:v11];
  *&v14 = v13 * v14;
  v16 = LODWORD(v14);
  [(TSDMetalShader *)self->_metalObjectShader setPipelineStateWithEncoder:encoderCopy vertexBytes:self->_anon_230 fragmentBytes:&v16];
  metalTexture = [objectCopy metalTexture];

  [encoderCopy setFragmentTexture:metalTexture atIndex:0];
  [(TSDMTLDataBuffer *)self->_metalObjectDataBuffer drawWithEncoder:encoderCopy atIndex:[(TSDMetalShader *)self->_metalObjectShader bufferIndex]];
}

- (void)p_drawParticleSystemsWithPercent:(double)percent sparkles:(BOOL)sparkles particleSystemOpacity:(double)opacity context:(id)context renderEncoder:(id)encoder
{
  sparklesCopy = sparkles;
  contextCopy = context;
  encoderCopy = encoder;
  randomGenerator = [contextCopy randomGenerator];
  *&self->_anon_194[44] = sparklesCopy;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = self->_fireworksSystems;
  v14 = [(NSArray *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v50 = contextCopy;
    v53 = *v58;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v58 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        [v17 lifeSpan];
        v20 = (percent - v18) / v19;
        if (([contextCopy isWarmingUp] & 1) == 0 && (v20 <= 0.0 || v20 > 1.0))
        {
          continue;
        }

        TSUClamp();
        v23 = v22;
        TSUClamp();
        v25 = v24;
        opacityCopy = opacity;
        if (sparklesCopy)
        {
          [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleTransparency" atPercent:v23];
          opacityCopy = 1.0 - v27;
        }

        [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleBurstTiming" atPercent:v23];
        *&v28 = v28;
        *&self->_anon_194[52] = LODWORD(v28);
        [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleBurstTiming" atPercent:v25];
        *&v29 = v29;
        *&self->_anon_194[56] = LODWORD(v29);
        *&v29 = v25;
        *&self->_anon_194[32] = LODWORD(v29);
        [v17 speedMax];
        *&v30 = v30;
        *&self->_anon_194[60] = LODWORD(v30);
        *&v30 = v23;
        *&self->_anon_194[28] = LODWORD(v30);
        *&v30 = opacityCopy;
        v56 = LODWORD(v30);
        if (([contextCopy isWarmingUp] | !sparklesCopy) == 1 && (objc_msgSend(v17, "didDrawCenterBurst") & 1) == 0)
        {
          [(TSDTexturedRectangle *)self->_centerBurstTR size];
          v32 = v31;
          v34 = v33;
          v35 = self->_frameRect.size.height / v33;
          [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"CenterBurstScaleMin"];
          v37 = v36;
          [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"CenterBurstScaleMax"];
          [randomGenerator doubleBetween:v37 :v38];
          v40 = v35 * v39;
          [v17 startingPoint];
          v41 = *&self->_baseTransform.m13;
          *&v54.m11 = *&self->_baseTransform.m11;
          *&v54.m13 = v41;
          v42 = *&self->_baseTransform.m23;
          *&v54.m21 = *&self->_baseTransform.m21;
          *&v54.m23 = v42;
          v43 = *&self->_baseTransform.m33;
          *&v54.m31 = *&self->_baseTransform.m31;
          *&v54.m33 = v43;
          v44 = *&self->_baseTransform.m43;
          *&v54.m41 = *&self->_baseTransform.m41;
          *&v54.m43 = v44;
          CATransform3DTranslate(&v55, &v54, v45, v46, 0.0);
          v54 = v55;
          CATransform3DTranslate(&v55, &v54, v32 * -0.5 * v40, v34 * -0.5 * v40, 0.0);
          v54 = v55;
          CATransform3DScale(&v55, &v54, v40, v40, 1.0);
          *&v55.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v55.m11), *&v55.m13);
          *&v55.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v55.m21), *&v55.m23);
          *&v55.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v55.m31), *&v55.m33);
          *&v55.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v55.m41), *&v55.m43);
          LODWORD(v54.m11) = 0;
          [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"CenterBurstOpacity"];
          *&v47 = v47;
          LODWORD(v54.m11) = LODWORD(v47);
          [(TSDMetalShader *)self->_metalCenterBurstShader setPipelineStateWithEncoder:encoderCopy vertexBytes:&v55 fragmentBytes:&v54];
          metalTexture = [(TSDTexturedRectangle *)self->_centerBurstTR metalTexture];
          [encoderCopy setFragmentTexture:metalTexture atIndex:0];

          contextCopy = v50;
          [(TSDMTLDataBuffer *)self->_metalCenterBurstDataBuffer drawWithEncoder:encoderCopy atIndex:[(TSDMetalShader *)self->_metalCenterBurstShader bufferIndex]];
          [v17 setDidDrawCenterBurst:1];
        }

        [(TSDMetalShader *)self->_metalFireworksShader setPipelineStateWithEncoder:encoderCopy vertexBytes:&self->_particlesVertexUniforms fragmentBytes:&v56];
        metalTexture2 = [(TSDTexturedRectangle *)self->_particleTR metalTexture];
        [encoderCopy setFragmentTexture:metalTexture2 atIndex:0];

        [v17 drawMetalWithEncoder:encoderCopy];
      }

      v15 = [(NSArray *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v15);
  }
}

- (void)metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  metalContext = [contextCopy metalContext];
  commandQueue = [metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  metalContext2 = [contextCopy metalContext];
  renderEncoder = [metalContext2 renderEncoder];

  if ([contextCopy isWarmingUp])
  {
    v9 = 2;
  }

  else if (self->_previousPercent == 0.0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [(TSDMetalRenderTarget *)self->_frameRenderTarget setTextureLoadAction:v9];
  passDescriptor = [(TSDMetalRenderTarget *)self->_frameRenderTarget passDescriptor];
  v11 = [commandBuffer renderCommandEncoderWithDescriptor:passDescriptor];

  textures = [contextCopy textures];
  [contextCopy percent];
  v13 = v12;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v15 = v14;
  v17 = v16;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleTrailsDitherAmount"];
  v19 = v18;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleTrailsDitherMax"];
  v21 = v20;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"BloomPower"];
  v23 = v22;
  randomGenerator = [contextCopy randomGenerator];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Gravity"];
  if (v15 >= v17)
  {
    v15 = v17;
  }

  v25 = v15 * 0.001 * v24;
  [contextCopy duration];
  v27 = v25 * v26;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleSizeStart"];
  v29 = v27;
  *&v28 = v15 * v28 / 100.0;
  *&self->_anon_194[36] = v29;
  *&self->_anon_194[40] = LODWORD(v28);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"SparklePeriod"];
  *&v30 = v30;
  *&self->_anon_194[48] = LODWORD(v30);
  if (self->_previousPercent > 0.0)
  {
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkDurationMin"];
    [contextCopy duration];
    TSUClamp();
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"TrailsFadeOutMin"];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"TrailsFadeOutMax"];
    TSDMixFloats();
    v32 = 1.0 - v31;
    [randomGenerator randomDouble];
    v52 = v33;
    [randomGenerator randomDouble];
    v34.f64[0] = v52;
    v34.f64[1] = v35;
    v36 = vcvt_f32_f64(v34);
    *v34.f64 = v32;
    v37 = v19;
    self->_fboFragmentUniforms.Opacity = *v34.f64;
    self->_fboFragmentUniforms.NoiseAmount = v37;
    *v34.f64 = v21;
    *&self->_anon_2b8[8] = LODWORD(v34.f64[0]);
    *self->_anon_2b8 = v36;
    [(TSDMetalShader *)self->_metalTrailsShader setPipelineStateWithEncoder:v11 vertexBytes:self->_anon_1f0 fragmentBytes:?];
    texture = [(TSDMetalRenderTarget *)self->_frameRenderTarget texture];
    [v11 setFragmentTexture:texture atIndex:0];

    [(TSDMTLDataBuffer *)self->_metalFBODataBuffer drawWithEncoder:v11 atIndex:[(TSDMetalShader *)self->_metalTrailsShader bufferIndex]];
  }

  [(KNBuildFireworks *)self p_drawParticleSystemsWithPercent:0 sparkles:contextCopy particleSystemOpacity:v11 context:v13 renderEncoder:1.0];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"FireworkDurationMax"];
  [contextCopy duration];
  TSUClamp();
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleTransparency" atPercent:?];
  v40 = 1.0 - v39;
  *&v39 = 1.0 - v39;
  self->_fboFragmentUniforms.Opacity = *&v39;
  self->_fboFragmentUniforms.NoiseAmount = 0.0;
  [v11 endEncoding];
  passDescriptor2 = [(TSDMetalRenderTarget *)self->_bloomRenderTarget passDescriptor];
  v42 = [commandBuffer renderCommandEncoderWithDescriptor:passDescriptor2];

  [(TSDMetalShader *)self->_metalFBOShader setPipelineStateWithEncoder:v42 vertexBytes:self->_anon_1f0 fragmentBytes:&self->_fboFragmentUniforms];
  texture2 = [(TSDMetalRenderTarget *)self->_frameRenderTarget texture];
  [v42 setFragmentTexture:texture2 atIndex:0];

  [(TSDMTLDataBuffer *)self->_metalFBODataBuffer drawWithEncoder:v42 atIndex:[(TSDMetalShader *)self->_metalFBOShader bufferIndex]];
  [(KNBuildFireworks *)self p_drawParticleSystemsWithPercent:1 sparkles:contextCopy particleSystemOpacity:v42 context:v13 renderEncoder:v40];
  [v42 endEncoding];
  [commandBuffer commit];
  v44 = [textures objectAtIndexedSubscript:0];
  [(KNBuildFireworks *)self p_drawObject:v44 percent:renderEncoder encoder:v13];

  metalBloomEffect = self->_metalBloomEffect;
  texture3 = [(TSDMetalRenderTarget *)self->_bloomRenderTarget texture];
  metalContext3 = [contextCopy metalContext];
  v48 = *&self->_baseOrthoTransform.m33;
  v56[4] = *&self->_baseOrthoTransform.m31;
  v56[5] = v48;
  v49 = *&self->_baseOrthoTransform.m43;
  v56[6] = *&self->_baseOrthoTransform.m41;
  v56[7] = v49;
  v50 = *&self->_baseOrthoTransform.m13;
  v56[0] = *&self->_baseOrthoTransform.m11;
  v56[1] = v50;
  v51 = *&self->_baseOrthoTransform.m23;
  v56[2] = *&self->_baseOrthoTransform.m21;
  v56[3] = v51;
  [(TSDMetalBloomEffect *)metalBloomEffect drawBloomEffectWithTexture:texture3 metalContext:metalContext3 encoder:renderEncoder MVPMatrix:v56 bloomAmount:v23];

  self->_previousPercent = v13;
}

- (void)metalAnimationDidEndWithContext:(id)context
{
  frameRenderTarget = self->_frameRenderTarget;
  self->_frameRenderTarget = 0;

  bloomRenderTarget = self->_bloomRenderTarget;
  self->_bloomRenderTarget = 0;

  [(TSDMetalBloomEffect *)self->_metalBloomEffect teardown];
  metalBloomEffect = self->_metalBloomEffect;
  self->_metalBloomEffect = 0;
}

- (void)metalTeardownAnimationsWithContext:(id)context
{
  metalFireworksShader = self->_metalFireworksShader;
  self->_metalFireworksShader = 0;

  metalObjectShader = self->_metalObjectShader;
  self->_metalObjectShader = 0;

  metalCenterBurstShader = self->_metalCenterBurstShader;
  self->_metalCenterBurstShader = 0;

  metalCenterBurstDataBuffer = self->_metalCenterBurstDataBuffer;
  self->_metalCenterBurstDataBuffer = 0;

  [(TSDTexturedRectangle *)self->_centerBurstTR teardown];
  [(TSDTexturedRectangle *)self->_particleTR teardown];
  metalFBOShader = self->_metalFBOShader;
  self->_metalFBOShader = 0;

  metalFBODataBuffer = self->_metalFBODataBuffer;
  self->_metalFBODataBuffer = 0;
}

@end