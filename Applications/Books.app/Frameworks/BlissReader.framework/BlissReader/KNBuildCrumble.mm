@interface KNBuildCrumble
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
- (CGRect)frameOfEffectWithContext:(id)a3;
- (KNBuildCrumble)initWithAnimationContext:(id)a3;
- (id)p_texturedRectFromImagePath:(id)a3 metalContext:(id)a4;
- (void)animationWillBeginWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalRenderFrameWithContext:(id)a3;
- (void)metalTeardownAnimationsWithContext:(id)a3;
- (void)p_setupMVPMatricesWithContext:(id)a3 device:(id)a4;
@end

@implementation KNBuildCrumble

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49CFD0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a7)
  {
    v8 = *&a6;
    *a4 = @"apple:dissolve";
    v13 = KNBundle();
    v11 = [v13 localizedStringForKey:@"%@ builds were exported as Dissolve." value:&stru_471858 table:@"Keynote"];
    v12 = [a1 localizedMenuString:v8];
    *a5 = [NSString stringWithFormat:v11, v12];
  }
}

- (KNBuildCrumble)initWithAnimationContext:(id)a3
{
  v9.receiver = self;
  v9.super_class = KNBuildCrumble;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:a3];
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

- (CGRect)frameOfEffectWithContext:(id)a3
{
  v4 = [a3 textures];
  v5 = [v4 objectAtIndexedSubscript:0];
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

- (void)p_setupMVPMatricesWithContext:(id)a3 device:(id)a4
{
  v5 = [a3 textures];
  v6 = [v5 firstObject];

  [v6 frameOnCanvas];
  v8 = v7 - CGRectGetMinX(self->_animationRect);
  [v6 frameOnCanvas];
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

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildCrumble *)self frameOfEffectWithContext:v4];
  [(KNBuildCrumble *)self metalPrepareAnimationWithContext:v4];
}

- (id)p_texturedRectFromImagePath:(id)a3 metalContext:(id)a4
{
  v5 = a4;
  v6 = [TSUImage imageWithContentsOfFile:a3];
  v7 = [v6 CGImage];

  v8 = [[TSDTexturedRectangle alloc] initWithCGImage:v7];
  v9 = [v5 device];

  [v8 setupMetalTextureForDevice:v9];

  return v8;
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 textures];
  v131 = [v4 animatedBuild];
  v6 = [v4 metalContext];
  v130 = [v6 device];
  if ([v5 count] != &dword_0 + 1)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[KNBuildCrumble metalPrepareAnimationWithContext:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildCrumble.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:368 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(v5, "count")}];
  }

  v129 = v5;
  v132 = [v5 lastObject];
  v10 = KNBundle();
  v11 = [v10 pathForResource:@"KNBuildAnvil-Smoke" ofType:@"png"];

  v127 = v11;
  v12 = [(KNBuildCrumble *)self p_texturedRectFromImagePath:v11 metalContext:v6];
  metalSmokeTexture = self->_metalSmokeTexture;
  self->_metalSmokeTexture = v12;

  [(KNBuildCrumble *)self frameOfEffectWithContext:v4];
  [(KNBuildCrumble *)self p_setupMVPMatricesWithContext:v4 device:v130];
  __asm { FMOV            V1.2D, #0.5 }

  self->_shadowFboSize = vrndaq_f64(vmulq_f64(self->_animationRect.size, _Q1));
  v19 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v19 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  v20 = [[TSDMetalRenderTarget alloc] initWithSize:v6 metalContext:{self->_shadowFboSize.width, self->_shadowFboSize.height}];
  shadowRenderTarget = self->_shadowRenderTarget;
  self->_shadowRenderTarget = v20;

  v22 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v22 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  [v22 setBlendingEnabled:1];
  [v22 setSourceRGBBlendFactor:1];
  [v22 setSourceAlphaBlendFactor:1];
  [v22 setDestinationRGBBlendFactor:5];
  [v22 setDestinationAlphaBlendFactor:5];
  v23 = [[TSDMetalRenderTarget alloc] initWithSize:v6 metalContext:{self->_shadowFboSize.width, self->_shadowFboSize.height}];
  blurRenderTarget = self->_blurRenderTarget;
  self->_blurRenderTarget = v23;

  v25 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  v128 = v6;
  [v25 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  [v25 setBlendingEnabled:1];
  [v25 setSourceRGBBlendFactor:1];
  [v25 setSourceAlphaBlendFactor:1];
  [v25 setDestinationRGBBlendFactor:5];
  [v25 setDestinationAlphaBlendFactor:5];
  v126 = v19;
  v26 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildCrumbleVertexShader" fragmentShader:@"buildCrumbleFragmentShader" device:v130 library:@"KeynoteMetalLibrary" colorAttachment:v19];
  metalShadowShatterSystemShader = self->_metalShadowShatterSystemShader;
  self->_metalShadowShatterSystemShader = v26;

  v28 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildCrumbleVertexShader" fragmentShader:@"buildCrumbleFragmentShader" device:v130 library:@"KeynoteMetalLibrary" colorAttachment:v25];
  metalShatterSystemShader = self->_metalShatterSystemShader;
  self->_metalShatterSystemShader = v28;

  v30 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildCrumbleSmokeVertexShader" fragmentShader:@"buildCrumbleSmokeFragmentShader" device:v130 library:@"KeynoteMetalLibrary" colorAttachment:v25];
  metalSmokeSystemShader = self->_metalSmokeSystemShader;
  self->_metalSmokeSystemShader = v30;

  v32 = [[TSDMetalShader alloc] initDefaultGaussianBlurShaderWithDevice:v130 colorAttachment:v22 halfSizedRadius:0];
  metalBlurShader = self->_metalBlurShader;
  self->_metalBlurShader = v32;

  TSDRectWithSize();
  v34 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:textureFlipped:device:" textureRect:1 textureFlipped:v130 device:?];
  metalBlurDataBuffer = self->_metalBlurDataBuffer;
  self->_metalBlurDataBuffer = v34;

  [v132 frame];
  v37 = v36;
  v39 = v38;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v41 = v40;
  v43 = v42;
  [v4 duration];
  v120 = v44;
  v45 = [v4 direction];
  if ([v131 isBuildIn])
  {
LABEL_4:
    v46 = v4;
  }

  else if (v45 > 110)
  {
    v46 = v4;
    v47 = 114;
    v48 = 122;
    v49 = 121;
    if (v45 != &stru_68.segname[2])
    {
      v49 = v45;
    }

    if (v45 != &stru_68.segname[1])
    {
      v48 = v49;
    }

    if (v45 != &stru_68.sectname[11])
    {
      v47 = v48;
    }

    v50 = 112;
    v51 = 111;
    v52 = 115;
    if (v45 != &stru_68.sectname[10])
    {
      v52 = v45;
    }

    if (v45 != &stru_68.sectname[8])
    {
      v51 = v52;
    }

    if (v45 != &stru_68.sectname[7])
    {
      v50 = v51;
    }

    if (v45 <= 114)
    {
      v45 = v50;
    }

    else
    {
      v45 = v47;
    }
  }

  else
  {
    v46 = v4;
    switch(v45)
    {
      case 0xBuLL:
        v45 = &dword_C;
        break;
      case 0xCuLL:
        v45 = (&dword_8 + 3);
        break;
      case 0xDuLL:
        v45 = (&dword_C + 2);
        break;
      case 0xEuLL:
        v45 = (&dword_C + 1);
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
        v45 = &dword_18;
        break;
      case 0x16uLL:
        v45 = (&dword_14 + 3);
        break;
      case 0x17uLL:
        v45 = (&dword_14 + 2);
        break;
      case 0x18uLL:
        v45 = (&dword_14 + 1);
        break;
      case 0x1FuLL:
        v45 = &stru_20;
        break;
      case 0x20uLL:
        v45 = (&dword_1C + 3);
        break;
      case 0x29uLL:
        v45 = (&stru_20 + 10);
        break;
      case 0x2AuLL:
        v45 = (&stru_20 + 9);
        break;
      case 0x2BuLL:
        v45 = (&stru_20 + 12);
        break;
      case 0x2CuLL:
        v45 = (&stru_20 + 11);
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
  [v132 size];
  v61 = v60;
  v63 = v62;
  v64 = self->_metalShatterSystemShader;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Crumble Cells Split"];
  v66 = v65;
  v67 = [v46 randomGenerator];
  v68 = [KNBuildCrumbleSystem newParticleSystemWithNumberOfParticles:v56 objectSize:v45 slideSize:v64 duration:v67 direction:v128 shader:v61 percentOfCellsToSplit:v63 randomGenerator:v41 metalContext:v43, v120, v66];
  shatterSystem = self->_shatterSystem;
  self->_shatterSystem = v68;

  v70 = [(KNBuildCrumbleSystem *)self->_shatterSystem triangleCount];
  [v132 size];
  v72 = v71;
  v74 = v73;
  v75 = [v46 randomGenerator];
  height = CGSizeZero.height;
  v77 = [KNBuildShadowSystem newParticleSystemWithParticleSize:v45 particleSystemSize:v75 objectSize:self->_metalShadowShatterSystemShader slideSize:v128 duration:CGSizeZero.width direction:height randomGenerator:v70 shader:1.0 metalContext:v72, v74, v41, v43, *&v120];
  shadowShatterSystem = self->_shadowShatterSystem;
  self->_shadowShatterSystem = v77;

  [v132 size];
  v80 = v79;
  v82 = v81;
  v83 = [v46 randomGenerator];
  v84 = [KNBuildSmokeSystem newParticleSystemWithParticleSize:v45 particleSystemSize:v83 objectSize:self->_metalSmokeSystemShader slideSize:v128 duration:v118 direction:v117 randomGenerator:v119 shader:1.0 metalContext:v80, v82, v41, v43, *&v120];
  smokeSystem = self->_smokeSystem;
  self->_smokeSystem = v84;

  [(KNBuildShadowSystem *)self->_shadowShatterSystem setCrumbleSystem:self->_shatterSystem];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Rotation Max"];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setRotationMax:v86 * 0.0174532925];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"LifeSpan Randomness"];
  [(KNBuildCrumbleSystem *)self->_shatterSystem setLifeSpanRandomness:?];
  if (v45 == &stru_20.maxprot + 3)
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
  v108 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:v130 colorAttachment:v25];
  metalFboShader = self->_metalFboShader;
  self->_metalFboShader = v108;

  TSDRectWithSize();
  v110 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v130 device:?];
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

- (void)metalRenderFrameWithContext:(id)a3
{
  v4 = a3;
  [v4 percent];
  v6 = v5;
  v7 = [v4 textures];
  v8 = [v7 lastObject];

  [v8 singleTextureOpacity];
  v10 = v9;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Smoke Opacity"];
  v12 = v11;
  v13 = [v4 metalContext];
  v14 = [v8 metalTextureWithContext:v13];

  if (v14)
  {
    v15 = [v4 metalContext];
    v16 = [v15 commandQueue];
    v17 = [v16 commandBuffer];

    v18 = [(TSDMetalRenderTarget *)self->_shadowRenderTarget passDescriptor];
    v19 = [v17 renderCommandEncoderWithDescriptor:v18];

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
    v22 = [(TSDMetalRenderTarget *)self->_blurRenderTarget passDescriptor];
    v23 = [v17 renderCommandEncoderWithDescriptor:v22];

    v30 = 0;
    v31 = 0;
    shadowFboSize = self->_shadowFboSize;
    v33 = xmmword_34B040;
    [v23 setViewport:&v30];
    v24 = [(TSDMetalRenderTarget *)self->_shadowRenderTarget texture];
    [v23 setFragmentTexture:v24 atIndex:0];

    [(TSDMetalShader *)self->_metalBlurShader setPipelineStateWithEncoder:v23 vertexBytes:self->_anon_340 fragmentBytes:&self[1]];
    [(TSDMTLDataBuffer *)self->_metalBlurDataBuffer drawWithEncoder:v23 atIndex:[(TSDMetalShader *)self->_metalBlurShader bufferIndex]];
    [v23 endEncoding];
    [v17 commit];
    v25 = [v4 metalContext];
    v26 = [v25 renderEncoder];

    v27 = [(TSDMetalRenderTarget *)self->_blurRenderTarget texture];
    [v26 setFragmentTexture:v27 atIndex:0];

    [(TSDMetalShader *)self->_metalFboShader setPipelineStateWithEncoder:v26 vertexBytes:self->_anon_300];
    [(TSDMTLDataBuffer *)self->_metalFboDataBuffer drawWithEncoder:v26 atIndex:[(TSDMetalShader *)self->_metalFboShader bufferIndex]];
    *&self->_anon_68[24] = v20;
    *&self->_anon_68[28] = v21;
    [(TSDMetalShader *)self->_metalShatterSystemShader setPipelineStateWithEncoder:v26 vertexBytes:&self->_crumbleUniforms fragmentBytes:&self->_crumbleUniforms];
    [v26 setFragmentTexture:v14 atIndex:0];
    [(KNBuildCrumbleSystem *)self->_shatterSystem drawMetalWithEncoder:v26];
    v28 = v12;
    *&self->_anon_130[56] = v20;
    *&self->_anon_130[60] = v28;
    [(TSDMetalShader *)self->_metalSmokeSystemShader setPipelineStateWithEncoder:v26 vertexBytes:?];
    v29 = [(TSDTexturedRectangle *)self->_metalSmokeTexture metalTexture];
    [v26 setFragmentTexture:v29 atIndex:0];

    [(KNBuildSmokeSystem *)self->_smokeSystem drawMetalWithEncoder:v26];
  }
}

- (void)metalTeardownAnimationsWithContext:(id)a3
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