@interface KNBuildCrumble
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
- (CGRect)frameOfEffectWithContext:(id)context;
- (KNBuildCrumble)initWithAnimationContext:(id)context;
- (id)p_texturedRectFromImagePath:(id)path metalContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)metalTeardownAnimationsWithContext:(id)context;
- (void)p_setupMVPMatricesWithContext:(id)context device:(id)device;
@end

@implementation KNBuildCrumble

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49CFD0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if (classic)
  {
    v8 = *&type;
    *name = @"apple:dissolve";
    v13 = KNBundle();
    v11 = [v13 localizedStringForKey:@"%@ builds were exported as Dissolve." value:&stru_471858 table:@"Keynote"];
    v12 = [self localizedMenuString:v8];
    *warning = [NSString stringWithFormat:v11, v12];
  }
}

- (KNBuildCrumble)initWithAnimationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = KNBuildCrumble;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:context];
  if (v3)
  {
    v4 = KNBundle();
    v5 = [v4 pathForResource:@"Crumble" ofType:@"parameterGroup"];

    v6 = [KNAnimParameterGroup parameterGroupForFile:v5];
    parameterGroup = v3->_parameterGroup;
    v3->_parameterGroup = v6;
  }

  return v3;
}

- (CGRect)frameOfEffectWithContext:(id)context
{
  textures = [context textures];
  v5 = [textures objectAtIndexedSubscript:0];
  [v5 contentRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  CGRectGetMinX(v26);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  CGRectGetMinY(v27);
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  CGRectGetMaxX(v28);
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxY(v30);
  TSDRectWithPoints();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v34.origin.x = v22;
  v34.origin.y = v23;
  v34.size.width = v24;
  v34.size.height = v25;
  v31.origin.x = v15;
  v31.origin.y = v17;
  v31.size.width = v19;
  v31.size.height = v21;
  v32 = CGRectIntersection(v31, v34);
  result = CGRectIntegral(v32);
  self->_animationRect = result;
  self->_drawableFrame.origin.x = v7;
  self->_drawableFrame.origin.y = v9;
  self->_drawableFrame.size.width = v11;
  self->_drawableFrame.size.height = v13;
  return result;
}

- (void)p_setupMVPMatricesWithContext:(id)context device:(id)device
{
  textures = [context textures];
  firstObject = [textures firstObject];

  [firstObject frameOnCanvas];
  v8 = v7 - CGRectGetMinX(self->_animationRect);
  [firstObject frameOnCanvas];
  v10 = v9 - CGRectGetMaxY(self->_animationRect);
  height = self->_animationRect.size.height;
  [(KNAnimationContext *)self->super.mAnimationContext fieldOfViewInRadians];
  v13 = tan(v12 * 0.5);
  v14 = height / (v13 + v13);
  memset(&v29, 0, sizeof(v29));
  [(KNAnimationContext *)self->super.mAnimationContext fieldOfViewInRadians];
  TSDTransform3DMakeProjection();
  memset(&v28, 0, sizeof(v28));
  CATransform3DMakeTranslation(&v28, self->_animationRect.size.width * -0.5, self->_animationRect.size.height * -0.5, -v14);
  memset(&v27, 0, sizeof(v27));
  CATransform3DMakeTranslation(&v27, v8, -v10, 0.0);
  p_projectionMatrix = &self->_projectionMatrix;
  a = v28;
  v24 = v29;
  CATransform3DConcat(&b, &a, &v24);
  v24 = v27;
  CATransform3DConcat(&a, &v24, &b);
  self = (self + 496);
  v16 = *&a.m33;
  *&p_projectionMatrix->m31 = *&a.m31;
  *&p_projectionMatrix->m33 = v16;
  v17 = *&a.m43;
  *&p_projectionMatrix->m41 = *&a.m41;
  *&p_projectionMatrix->m43 = v17;
  v18 = *&a.m13;
  *&p_projectionMatrix->m11 = *&a.m11;
  *&p_projectionMatrix->m13 = v18;
  v19 = *&a.m23;
  *&p_projectionMatrix->m21 = *&a.m21;
  *&p_projectionMatrix->m23 = v19;
  TSDTransform3DMakeOrtho();
  v20 = *&a.m33;
  *&self->_crumbleUniforms.Percent = *&a.m31;
  *&self->_crumbleUniforms.Gravity = v20;
  v21 = *&a.m43;
  *&self->_crumbleUniforms.CrackStartTime = *&a.m41;
  *&self->_anon_68[8] = v21;
  v22 = *&a.m13;
  self->super = *&a.m11;
  *&self->_parameterGroup = v22;
  v23 = *&a.m23;
  *&self->_shadowShatterSystem = *&a.m21;
  *&self->_metalSmokeTexture = v23;
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildCrumble *)self frameOfEffectWithContext:contextCopy];
  [(KNBuildCrumble *)self metalPrepareAnimationWithContext:contextCopy];
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
  if ([textures count] != &dword_0 + 1)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[KNBuildCrumble metalPrepareAnimationWithContext:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildCrumble.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:368 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(textures, "count")}];
  }

  v129 = textures;
  lastObject = [textures lastObject];
  v10 = KNBundle();
  v11 = [v10 pathForResource:@"KNBuildAnvil-Smoke" ofType:@"png"];

  v127 = v11;
  v12 = [(KNBuildCrumble *)self p_texturedRectFromImagePath:v11 metalContext:metalContext];
  metalSmokeTexture = self->_metalSmokeTexture;
  self->_metalSmokeTexture = v12;

  [(KNBuildCrumble *)self frameOfEffectWithContext:contextCopy];
  [(KNBuildCrumble *)self p_setupMVPMatricesWithContext:contextCopy device:device];
  __asm { FMOV            V1.2D, #0.5 }

  self->_shadowFboSize = vrndaq_f64(vmulq_f64(self->_animationRect.size, _Q1));
  v19 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v19 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  v20 = [[TSDMetalRenderTarget alloc] initWithSize:metalContext metalContext:{self->_shadowFboSize.width, self->_shadowFboSize.height}];
  shadowRenderTarget = self->_shadowRenderTarget;
  self->_shadowRenderTarget = v20;

  v22 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v22 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v22 setBlendingEnabled:1];
  [v22 setSourceRGBBlendFactor:1];
  [v22 setSourceAlphaBlendFactor:1];
  [v22 setDestinationRGBBlendFactor:5];
  [v22 setDestinationAlphaBlendFactor:5];
  v23 = [[TSDMetalRenderTarget alloc] initWithSize:metalContext metalContext:{self->_shadowFboSize.width, self->_shadowFboSize.height}];
  blurRenderTarget = self->_blurRenderTarget;
  self->_blurRenderTarget = v23;

  v25 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  v128 = metalContext;
  [v25 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v25 setBlendingEnabled:1];
  [v25 setSourceRGBBlendFactor:1];
  [v25 setSourceAlphaBlendFactor:1];
  [v25 setDestinationRGBBlendFactor:5];
  [v25 setDestinationAlphaBlendFactor:5];
  v126 = v19;
  v26 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildCrumbleVertexShader" fragmentShader:@"buildCrumbleFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v19];
  metalShadowShatterSystemShader = self->_metalShadowShatterSystemShader;
  self->_metalShadowShatterSystemShader = v26;

  v28 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildCrumbleVertexShader" fragmentShader:@"buildCrumbleFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v25];
  metalShatterSystemShader = self->_metalShatterSystemShader;
  self->_metalShatterSystemShader = v28;

  v30 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildCrumbleSmokeVertexShader" fragmentShader:@"buildCrumbleSmokeFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v25];
  metalSmokeSystemShader = self->_metalSmokeSystemShader;
  self->_metalSmokeSystemShader = v30;

  v32 = [[TSDMetalShader alloc] initDefaultGaussianBlurShaderWithDevice:device colorAttachment:v22 halfSizedRadius:0];
  metalBlurShader = self->_metalBlurShader;
  self->_metalBlurShader = v32;

  TSDRectWithSize();
  v34 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:textureFlipped:device:" textureRect:1 textureFlipped:device device:?];
  metalBlurDataBuffer = self->_metalBlurDataBuffer;
  self->_metalBlurDataBuffer = v34;

  [lastObject frame];
  v37 = v36;
  v39 = v38;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v41 = v40;
  v43 = v42;
  [contextCopy duration];
  v120 = v44;
  direction = [contextCopy direction];
  if ([animatedBuild isBuildIn])
  {
LABEL_4:
    v46 = contextCopy;
  }

  else if (direction > 110)
  {
    v46 = contextCopy;
    v47 = 114;
    v48 = 122;
    v49 = 121;
    if (direction != &stru_68.segname[2])
    {
      v49 = direction;
    }

    if (direction != &stru_68.segname[1])
    {
      v48 = v49;
    }

    if (direction != &stru_68.sectname[11])
    {
      v47 = v48;
    }

    v50 = 112;
    v51 = 111;
    v52 = 115;
    if (direction != &stru_68.sectname[10])
    {
      v52 = direction;
    }

    if (direction != &stru_68.sectname[8])
    {
      v51 = v52;
    }

    if (direction != &stru_68.sectname[7])
    {
      v50 = v51;
    }

    if (direction <= 114)
    {
      direction = v50;
    }

    else
    {
      direction = v47;
    }
  }

  else
  {
    v46 = contextCopy;
    switch(direction)
    {
      case 0xBuLL:
        direction = &dword_C;
        break;
      case 0xCuLL:
        direction = (&dword_8 + 3);
        break;
      case 0xDuLL:
        direction = (&dword_C + 2);
        break;
      case 0xEuLL:
        direction = (&dword_C + 1);
        break;
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x19uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x27uLL:
      case 0x28uLL:
        break;
      case 0x15uLL:
        direction = &dword_18;
        break;
      case 0x16uLL:
        direction = (&dword_14 + 3);
        break;
      case 0x17uLL:
        direction = (&dword_14 + 2);
        break;
      case 0x18uLL:
        direction = (&dword_14 + 1);
        break;
      case 0x1FuLL:
        direction = &stru_20;
        break;
      case 0x20uLL:
        direction = (&dword_1C + 3);
        break;
      case 0x29uLL:
        direction = (&stru_20 + 10);
        break;
      case 0x2AuLL:
        direction = (&stru_20 + 9);
        break;
      case 0x2BuLL:
        direction = (&stru_20 + 12);
        break;
      case 0x2CuLL:
        direction = (&stru_20 + 11);
        break;
      default:
        goto LABEL_4;
    }
  }

  v53 = sqrt(sqrt(v37 * (v39 / v43) / v41));
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Particles Count"];
  v119 = v53 * v54;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crumble Points"];
  v56 = (v53 * v55);
  [(TSDTexturedRectangle *)self->_metalSmokeTexture size];
  if (v41 >= v43)
  {
    v57 = v43;
  }

  else
  {
    v57 = v41;
  }

  v124 = v57;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Scale Begin"];
  TSDMultiplySizeScalar();
  v117 = v59;
  v118 = v58;
  [lastObject size];
  v61 = v60;
  v63 = v62;
  v64 = self->_metalShatterSystemShader;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crumble Cells Split"];
  v66 = v65;
  randomGenerator = [v46 randomGenerator];
  v68 = [KNBuildCrumbleSystem newParticleSystemWithNumberOfParticles:v56 objectSize:direction slideSize:v64 duration:randomGenerator direction:v128 shader:v61 percentOfCellsToSplit:v63 randomGenerator:v41 metalContext:v43, v120, v66];
  shatterSystem = self->_shatterSystem;
  self->_shatterSystem = v68;

  triangleCount = [(KNBuildCrumbleSystem *)self->_shatterSystem triangleCount];
  [lastObject size];
  v72 = v71;
  v74 = v73;
  randomGenerator2 = [v46 randomGenerator];
  height = CGSizeZero.height;
  v77 = [KNBuildShadowSystem newParticleSystemWithParticleSize:direction particleSystemSize:randomGenerator2 objectSize:self->_metalShadowShatterSystemShader slideSize:v128 duration:CGSizeZero.width direction:height randomGenerator:triangleCount shader:1.0 metalContext:v72, v74, v41, v43, *&v120];
  shadowShatterSystem = self->_shadowShatterSystem;
  self->_shadowShatterSystem = v77;

  [lastObject size];
  v80 = v79;
  v82 = v81;
  randomGenerator3 = [v46 randomGenerator];
  v84 = [KNBuildSmokeSystem newParticleSystemWithParticleSize:direction particleSystemSize:randomGenerator3 objectSize:self->_metalSmokeSystemShader slideSize:v128 duration:v118 direction:v117 randomGenerator:v119 shader:1.0 metalContext:v80, v82, v41, v43, *&v120];
  smokeSystem = self->_smokeSystem;
  self->_smokeSystem = v84;

  [(KNBuildShadowSystem *)self->_shadowShatterSystem setCrumbleSystem:self->_shatterSystem];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Rotation Max"];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setRotationMax:v86 * 0.0174532925];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"LifeSpan Randomness"];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setLifeSpanRandomness:?];
  if (direction == &stru_20.maxprot + 3)
  {
    v87 = @"LifeSpan Delay For Random";
  }

  else
  {
    v87 = @"LifeSpan Delay";
  }

  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:v87];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setLifeSpanDelay:?];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crumble Speed Max"];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setSpeedMax:v124 * v88];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crumble Speed Max Limiter"];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setSpeedMaxLimiter:?];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, height];
  [(KNBuildCrumbleSystem *)self->_shatterSystem rotationMax];
  [(KNBuildShadowSystem *)self->_shadowShatterSystem setRotationMax:?];
  [(KNBuildCrumbleSystem *)self->_shatterSystem lifeSpanRandomness];
  [(KNBuildShadowSystem *)self->_shadowShatterSystem setLifeSpanRandomness:?];
  [(KNBuildCrumbleSystem *)self->_shatterSystem lifeSpanDelay];
  [(KNBuildShadowSystem *)self->_shadowShatterSystem setLifeSpanDelay:?];
  [(KNBuildCrumbleSystem *)self->_shatterSystem speedMax];
  [(KNBuildShadowSystem *)self->_shadowShatterSystem setSpeedMax:?];
  [(KNBuildCrumbleSystem *)self->_shatterSystem speedMaxLimiter];
  [(KNBuildShadowSystem *)self->_shadowShatterSystem setSpeedMaxLimiter:?];
  [(KNBuildShadowSystem *)self->_shadowShatterSystem setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, height];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Rotation Max"];
  [(KNBuildSmokeSystem *)self->_smokeSystem setRotationMax:v89 * 0.0174532925];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Scale Max"];
  [(KNBuildSmokeSystem *)self->_smokeSystem setScaleMax:?];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:v87];
  [(KNBuildSmokeSystem *)self->_smokeSystem setLifeSpanDelay:?];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Speed Max"];
  [(KNBuildSmokeSystem *)self->_smokeSystem setSpeedMax:v124 * v90];
  [(KNBuildSmokeSystem *)self->_smokeSystem setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, height];
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:v46];
  v123 = vcvt_hight_f32_f64(vcvt_f32_f64(v135), v136);
  v122 = vcvt_hight_f32_f64(vcvt_f32_f64(v137), v138);
  v121 = vcvt_hight_f32_f64(vcvt_f32_f64(v139), v140);
  v125 = vcvt_hight_f32_f64(vcvt_f32_f64(v141), v142);
  *&self->_anon_68[44] = 0;
  *&self->_crumbleUniforms.Percent = v123;
  *&self->_crumbleUniforms.Gravity = v122;
  *&self->_crumbleUniforms.CrackStartTime = v121;
  *&self->_anon_68[8] = v125;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v92 = v91 * 1.5;
  *&self->_anon_68[40] = v92;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shadow Opacity Ramp Up"];
  *&v93 = v93;
  *&self->_anon_68[48] = LODWORD(v93);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crack Amount"];
  *&v94 = v94 / 1000.0;
  *&self->_anon_68[60] = LODWORD(v94);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crack Start Time"];
  *&v95 = v95;
  *&self->_anon_68[56] = -*&v95;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Shadow Opacity"];
  *&v96 = v96;
  *&self->_anon_68[52] = LODWORD(v96);
  [(KNBuildCrumbleSystem *)self->_shatterSystem rotationMax];
  *&v97 = v97;
  *&self->_anon_68[32] = LODWORD(v97);
  [(KNBuildCrumbleSystem *)self->_shatterSystem speedMax];
  *&v98 = v98;
  *&self->_anon_68[36] = LODWORD(v98);
  *&self->_anon_d8[44] = 1065353216;
  v99 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m21), *&self->_projectionMatrix.m23);
  v100 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m31), *&self->_projectionMatrix.m33);
  v101 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m41), *&self->_projectionMatrix.m43);
  *&self->_crumbleShadowUniforms.Percent = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m11), *&self->_projectionMatrix.m13);
  *&self->_crumbleShadowUniforms.Gravity = v99;
  *&self->_crumbleShadowUniforms.CrackStartTime = v100;
  *&self->_anon_d8[8] = v101;
  *&self->_anon_d8[40] = *&self->_anon_68[40];
  *&self->_anon_d8[48] = *&self->_anon_68[48];
  *&self->_anon_d8[32] = *&self->_anon_68[32];
  self->_smokeUniforms = v123;
  *self->_anon_130 = v122;
  *&self->_anon_130[16] = v121;
  *&self->_anon_130[32] = v125;
  [(KNBuildSmokeSystem *)self->_smokeSystem rotationMax];
  *&v102 = v102;
  *&self->_anon_130[48] = LODWORD(v102);
  [(KNBuildSmokeSystem *)self->_smokeSystem speedMax];
  *&v103 = v103;
  *&self->_anon_130[52] = LODWORD(v103);
  v104 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_shadowFBOProjectionMatrix.m21), *&self->_shadowFBOProjectionMatrix.m23);
  v105 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_shadowFBOProjectionMatrix.m31), *&self->_shadowFBOProjectionMatrix.m33);
  v106 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_shadowFBOProjectionMatrix.m41), *&self->_shadowFBOProjectionMatrix.m43);
  *self->_anon_340 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_shadowFBOProjectionMatrix.m11), *&self->_shadowFBOProjectionMatrix.m13);
  *&self->_anon_340[16] = v104;
  *&self->_anon_340[32] = v105;
  *&self->_anon_340[48] = v106;
  __asm { FMOV            V1.2D, #1.0 }

  self[1].super.super.isa = vcvt_f32_f64(vdivq_f64(_Q1, self->_animationRect.size));
  LOBYTE(self[1].super.mAnimationContext) = 0;
  v108 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:device colorAttachment:v25];
  metalFboShader = self->_metalFboShader;
  self->_metalFboShader = v108;

  TSDRectWithSize();
  v110 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:device device:?];
  metalFboDataBuffer = self->_metalFboDataBuffer;
  self->_metalFboDataBuffer = v110;

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  TSDTransform3DMakeOrtho();
  x = self->_animationRect.origin.x;
  y = self->_animationRect.origin.y;
  *&v133.m31 = v139;
  *&v133.m33 = v140;
  *&v133.m41 = v141;
  *&v133.m43 = v142;
  *&v133.m11 = v135;
  *&v133.m13 = v136;
  *&v133.m21 = v137;
  *&v133.m23 = v138;
  CATransform3DTranslate(&v134, &v133, x, y, 0.0);
  v135 = *&v134.m11;
  v136 = *&v134.m13;
  v141 = *&v134.m41;
  v142 = *&v134.m43;
  v139 = *&v134.m31;
  v140 = *&v134.m33;
  v137 = *&v134.m21;
  v138 = *&v134.m23;
  v114 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v134.m21), *&v134.m23);
  v115 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v134.m31), *&v134.m33);
  v116 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v134.m41), *&v134.m43);
  *self->_anon_300 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v134.m11), *&v134.m13);
  *&self->_anon_300[16] = v114;
  *&self->_anon_300[32] = v115;
  *&self->_anon_300[48] = v116;
}

- (void)metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  [contextCopy percent];
  v6 = v5;
  textures = [contextCopy textures];
  lastObject = [textures lastObject];

  [lastObject singleTextureOpacity];
  v10 = v9;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Opacity"];
  v12 = v11;
  metalContext = [contextCopy metalContext];
  v14 = [lastObject metalTextureWithContext:metalContext];

  if (v14)
  {
    metalContext2 = [contextCopy metalContext];
    commandQueue = [metalContext2 commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    passDescriptor = [(TSDMetalRenderTarget *)self->_shadowRenderTarget passDescriptor];
    v19 = [commandBuffer renderCommandEncoderWithDescriptor:passDescriptor];

    v30 = 0;
    v31 = 0;
    shadowFboSize = self->_shadowFboSize;
    v33 = xmmword_34B040;
    [v19 setViewport:&v30];
    v20 = v6;
    v21 = v10;
    *&self->_anon_d8[24] = v20;
    *&self->_anon_d8[28] = v21;
    [v19 setFragmentTexture:v14 atIndex:0];
    [(TSDMetalShader *)self->_metalShadowShatterSystemShader setPipelineStateWithEncoder:v19 vertexBytes:&self->_crumbleShadowUniforms fragmentBytes:&self->_crumbleShadowUniforms];
    [(KNBuildShadowSystem *)self->_shadowShatterSystem drawMetalWithEncoder:v19];
    [v19 endEncoding];
    passDescriptor2 = [(TSDMetalRenderTarget *)self->_blurRenderTarget passDescriptor];
    v23 = [commandBuffer renderCommandEncoderWithDescriptor:passDescriptor2];

    v30 = 0;
    v31 = 0;
    shadowFboSize = self->_shadowFboSize;
    v33 = xmmword_34B040;
    [v23 setViewport:&v30];
    texture = [(TSDMetalRenderTarget *)self->_shadowRenderTarget texture];
    [v23 setFragmentTexture:texture atIndex:0];

    [(TSDMetalShader *)self->_metalBlurShader setPipelineStateWithEncoder:v23 vertexBytes:self->_anon_340 fragmentBytes:&self[1]];
    [(TSDMTLDataBuffer *)self->_metalBlurDataBuffer drawWithEncoder:v23 atIndex:[(TSDMetalShader *)self->_metalBlurShader bufferIndex]];
    [v23 endEncoding];
    [commandBuffer commit];
    metalContext3 = [contextCopy metalContext];
    renderEncoder = [metalContext3 renderEncoder];

    texture2 = [(TSDMetalRenderTarget *)self->_blurRenderTarget texture];
    [renderEncoder setFragmentTexture:texture2 atIndex:0];

    [(TSDMetalShader *)self->_metalFboShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_300];
    [(TSDMTLDataBuffer *)self->_metalFboDataBuffer drawWithEncoder:renderEncoder atIndex:[(TSDMetalShader *)self->_metalFboShader bufferIndex]];
    *&self->_anon_68[24] = v20;
    *&self->_anon_68[28] = v21;
    [(TSDMetalShader *)self->_metalShatterSystemShader setPipelineStateWithEncoder:renderEncoder vertexBytes:&self->_crumbleUniforms fragmentBytes:&self->_crumbleUniforms];
    [renderEncoder setFragmentTexture:v14 atIndex:0];
    [(KNBuildCrumbleSystem *)self->_shatterSystem drawMetalWithEncoder:renderEncoder];
    v28 = v12;
    *&self->_anon_130[56] = v20;
    *&self->_anon_130[60] = v28;
    [(TSDMetalShader *)self->_metalSmokeSystemShader setPipelineStateWithEncoder:renderEncoder vertexBytes:?];
    metalTexture = [(TSDTexturedRectangle *)self->_metalSmokeTexture metalTexture];
    [renderEncoder setFragmentTexture:metalTexture atIndex:0];

    [(KNBuildSmokeSystem *)self->_smokeSystem drawMetalWithEncoder:renderEncoder];
  }
}

- (void)metalTeardownAnimationsWithContext:(id)context
{
  metalShatterSystemShader = self->_metalShatterSystemShader;
  self->_metalShatterSystemShader = 0;

  metalShadowShatterSystemShader = self->_metalShadowShatterSystemShader;
  self->_metalShadowShatterSystemShader = 0;

  metalSmokeSystemShader = self->_metalSmokeSystemShader;
  self->_metalSmokeSystemShader = 0;

  metalFboShader = self->_metalFboShader;
  self->_metalFboShader = 0;

  metalFboDataBuffer = self->_metalFboDataBuffer;
  self->_metalFboDataBuffer = 0;

  metalBlurShader = self->_metalBlurShader;
  self->_metalBlurShader = 0;

  metalBlurDataBuffer = self->_metalBlurDataBuffer;
  self->_metalBlurDataBuffer = 0;

  shadowRenderTarget = self->_shadowRenderTarget;
  self->_shadowRenderTarget = 0;

  blurRenderTarget = self->_blurRenderTarget;
  self->_blurRenderTarget = 0;

  metalSmokeTexture = self->_metalSmokeTexture;

  [(TSDTexturedRectangle *)metalSmokeTexture teardown];
}

@end