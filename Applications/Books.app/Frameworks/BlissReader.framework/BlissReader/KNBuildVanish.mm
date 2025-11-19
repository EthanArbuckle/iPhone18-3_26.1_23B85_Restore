@interface KNBuildVanish
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
- (CGRect)frameOfEffectWithContext:(id)a3;
- (KNBuildVanish)initWithAnimationContext:(id)a3;
- (void)animationDidEndWithContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)metalAnimationDidEndWithContext:(id)a3;
- (void)metalAnimationHasBegunWithContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalRenderFrameWithContext:(id)a3;
- (void)metalTeardownAnimationsWithContext:(id)a3;
- (void)p_drawMetalParticleSystemsWithEncoder:(id)a3 texture:(id)a4 percent:(double)a5 sparkles:(BOOL)a6 particleSystemOpacity:(double)a7 metalContext:(id)a8;
- (void)p_setupMVPMatricesWithContext:(id)a3;
- (void)p_setupMetalBlurEffectsWithContext:(id)a3;
- (void)p_setupMetalShaderUniformsWithTexture:(id)a3;
- (void)p_setupMetalShadersWithContext:(id)a3;
- (void)p_setupParticleSystemWithContext:(id)a3 image:(id)a4 build:(id)a5 randomGenerator:(id)a6;
- (void)p_setupParticleTexturedRectWithContext:(id)a3;
@end

@implementation KNBuildVanish

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49D1C8;
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

- (KNBuildVanish)initWithAnimationContext:(id)a3
{
  v9.receiver = self;
  v9.super_class = KNBuildVanish;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:a3];
  if (v3)
  {
    v4 = KNBundle();
    v5 = [v4 pathForResource:@"Vanish" ofType:@"parameterGroup"];

    v6 = [KNAnimParameterGroup parameterGroupForFile:v5];
    parameterGroup = v3->_parameterGroup;
    v3->_parameterGroup = v6;
  }

  return v3;
}

- (CGRect)frameOfEffectWithContext:(id)a3
{
  [a3 drawableFrame];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CGRectGetMinX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMinY(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMaxX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetMaxY(v23);
  TSDRectWithPoints();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v27.origin.x = v16;
  v27.origin.y = v17;
  v27.size.width = v18;
  v27.size.height = v19;
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v25 = CGRectIntersection(v24, v27);
  result = CGRectIntegral(v25);
  self->_animationRect = result;
  self->_drawableFrame.origin.x = x;
  self->_drawableFrame.origin.y = y;
  self->_drawableFrame.size.width = width;
  self->_drawableFrame.size.height = height;
  return result;
}

- (void)p_setupMVPMatricesWithContext:(id)a3
{
  v4 = [a3 textures];
  v5 = [v4 firstObject];

  [v5 frameOnCanvas];
  v7 = v6 - CGRectGetMinX(self->_animationRect);
  [v5 frameOnCanvas];
  v9 = v8 - CGRectGetMaxY(self->_animationRect);
  CGRectGetWidth(self->_animationRect);
  CGRectGetHeight(self->_animationRect);
  TSDTransform3DMakeOrtho();
  v10 = *&v29.m33;
  *&self->_baseMatrix.m31 = *&v29.m31;
  *&self->_baseMatrix.m33 = v10;
  v11 = *&v29.m43;
  *&self->_baseMatrix.m41 = *&v29.m41;
  *&self->_baseMatrix.m43 = v11;
  v12 = *&v29.m13;
  *&self->_baseMatrix.m11 = *&v29.m11;
  *&self->_baseMatrix.m13 = v12;
  v13 = *&v29.m23;
  *&self->_baseMatrix.m21 = *&v29.m21;
  *&self->_baseMatrix.m23 = v13;
  v14 = *&self->_baseMatrix.m33;
  *&v28.m31 = *&self->_baseMatrix.m31;
  *&v28.m33 = v14;
  v15 = *&self->_baseMatrix.m43;
  *&v28.m41 = *&self->_baseMatrix.m41;
  *&v28.m43 = v15;
  v16 = *&self->_baseMatrix.m13;
  *&v28.m11 = *&self->_baseMatrix.m11;
  *&v28.m13 = v16;
  v17 = *&self->_baseMatrix.m23;
  *&v28.m21 = *&self->_baseMatrix.m21;
  *&v28.m23 = v17;
  CATransform3DTranslate(&v29, &v28, v7, -v9, 0.0);
  v18 = *&v29.m33;
  *&self->_baseMatrix.m31 = *&v29.m31;
  *&self->_baseMatrix.m33 = v18;
  v19 = *&v29.m43;
  *&self->_baseMatrix.m41 = *&v29.m41;
  *&self->_baseMatrix.m43 = v19;
  v20 = *&v29.m13;
  *&self->_baseMatrix.m11 = *&v29.m11;
  *&self->_baseMatrix.m13 = v20;
  v21 = *&v29.m23;
  *&self->_baseMatrix.m21 = *&v29.m21;
  *&self->_baseMatrix.m23 = v21;
  v22 = *&self->_baseMatrix.m23;
  v24 = *&self->_baseMatrix.m11;
  v23 = *&self->_baseMatrix.m13;
  *&self->_projectionMatrix.m21 = *&self->_baseMatrix.m21;
  *&self->_projectionMatrix.m23 = v22;
  *&self->_projectionMatrix.m11 = v24;
  *&self->_projectionMatrix.m13 = v23;
  v25 = *&self->_baseMatrix.m43;
  v27 = *&self->_baseMatrix.m31;
  v26 = *&self->_baseMatrix.m33;
  *&self->_projectionMatrix.m41 = *&self->_baseMatrix.m41;
  *&self->_projectionMatrix.m43 = v25;
  *&self->_projectionMatrix.m31 = v27;
  *&self->_projectionMatrix.m33 = v26;
}

- (void)p_setupParticleSystemWithContext:(id)a3 image:(id)a4 build:(id)a5 randomGenerator:(id)a6
{
  v37 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[KNBuildVanish p_setupParticleSystemWithContext:image:build:randomGenerator:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildVanish.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:242 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v17 = v16;
  v19 = v18;
  [v11 duration];
  v21 = v20;
  [v10 frame];
  v24 = (sqrt(sqrt(v23 * (v22 / v19) / v17)) * 10000.0);
  [v10 size];
  v26 = v25;
  v28 = v27;
  vanishMetalShader = self->_vanishMetalShader;
  v30 = [v37 metalContext];
  v31 = [KNBuildVanishParticleSystem newParticleSystemWithNumberOfParticles:v24 objectSize:0 slideSize:v12 duration:vanishMetalShader direction:v30 randomGenerator:v26 shader:v28 metalContext:v17, v19, v21];
  vanishParticleSystem = self->_vanishParticleSystem;
  self->_vanishParticleSystem = v31;

  [(TSDTexturedRectangle *)self->_particleTR size];
  v34 = v33;
  v36 = v35;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Particle Min Scale"];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem setMinScale:?];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Particle Max Scale"];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem setMaxScale:?];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Random Max Speed"];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem setRandomParticleSpeedMax:?];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Max Speed"];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem setMaxSpeed:?];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem setupWithTexture:v10 particleTextureSize:0 reverseDrawOrder:v34, v36];
}

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildVanish *)self metalPrepareAnimationWithContext:v4];
  [(KNBuildVanish *)self metalAnimationHasBegunWithContext:v4];
}

- (void)animationDidEndWithContext:(id)a3
{
  v4 = a3;
  [(KNBuildVanish *)self metalAnimationDidEndWithContext:v4];
  [(KNBuildVanish *)self metalTeardownAnimationsWithContext:v4];
}

- (void)p_setupMetalBlurEffectsWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 metalContext];
  v6 = [v4 textures];
  v7 = [v6 lastObject];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Steps"];
  v9 = fmax(v8, 1.0);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Radius Max"];
  v11 = v10;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Half Size Radius Every"];
  v13 = v12;
  v14 = [v5 commandQueue];
  v15 = [v14 commandBuffer];
  v16 = [[KNGaussianBlurEffect alloc] initWithContext:v4];

  blurEffect = self->_blurEffect;
  self->_blurEffect = v16;

  v18 = *&self->_projectionMatrix.m33;
  v24[4] = *&self->_projectionMatrix.m31;
  v24[5] = v18;
  v19 = *&self->_projectionMatrix.m43;
  v24[6] = *&self->_projectionMatrix.m41;
  v24[7] = v19;
  v20 = *&self->_projectionMatrix.m13;
  v24[0] = *&self->_projectionMatrix.m11;
  v24[1] = v20;
  v21 = *&self->_projectionMatrix.m23;
  v24[2] = *&self->_projectionMatrix.m21;
  v24[3] = v21;
  [(KNGaussianBlurEffect *)self->_blurEffect setMVPMatrix:v24];
  [(KNGaussianBlurEffect *)self->_blurEffect setTexture:v7];
  [(KNGaussianBlurEffect *)self->_blurEffect setSaturateBlurTextures:1];
  [(KNGaussianBlurEffect *)self->_blurEffect setupEffectIfNecessary];
  v22 = self->_blurEffect;
  v23 = [(KNAnimationContext *)self->super.mAnimationContext capabilities];
  [(KNGaussianBlurEffect *)v22 createBlurTexturesWithBlurSteps:v9 + 1 maxBlurRadius:v15 stepsToDecreaseRadius:v23 commandBuffer:v11 capabilities:v13];

  [v15 commit];
}

- (void)p_setupParticleTexturedRectWithContext:(id)a3
{
  v4 = a3;
  v5 = KNBundle();
  v14 = [v5 pathForResource:@"KNBuildVanish" ofType:@"png"];

  v6 = [NSData dataWithContentsOfFile:v14];
  v7 = CGDataProviderCreateWithCFData(v6);

  v8 = CGImageCreateWithPNGDataProvider(v7, 0, 1, kCGRenderingIntentDefault);
  CGDataProviderRelease(v7);
  v9 = [[TSDTexturedRectangle alloc] initWithCGImage:v8];
  particleTR = self->_particleTR;
  self->_particleTR = v9;

  v11 = self->_particleTR;
  v12 = [v4 metalContext];

  v13 = [v12 device];
  [(TSDTexturedRectangle *)v11 setupMetalTextureForDevice:v13];

  CGImageRelease(v8);
}

- (void)p_setupMetalShadersWithContext:(id)a3
{
  v8 = [a3 metalContext];
  v4 = [v8 device];
  v5 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v5 setPixelFormat:objc_msgSend(v8, "pixelFormat")];
  [v5 setBlendingEnabled:1];
  [v5 setDestinationRGBBlendFactor:5];
  [v5 setDestinationAlphaBlendFactor:5];
  v6 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildVanishVertexShader" fragmentShader:@"buildVanishFragmentShader" device:v4 library:@"KeynoteMetalLibrary" colorAttachment:v5];
  vanishMetalShader = self->_vanishMetalShader;
  self->_vanishMetalShader = v6;
}

- (void)p_setupMetalShaderUniformsWithTexture:(id)a3
{
  parameterGroup = self->_parameterGroup;
  v5 = a3;
  [(KNAnimParameterGroup *)parameterGroup valueForConstant:@"Should Sparkle"];
  *&v6 = v6;
  *&self->_anon_5c[44] = LODWORD(v6);
  v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m21), *&self->_projectionMatrix.m23);
  v8 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m31), *&self->_projectionMatrix.m33);
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m41), *&self->_projectionMatrix.m43);
  *&self->_vertexUniforms.Percent = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_projectionMatrix.m11), *&self->_projectionMatrix.m13);
  *&self->_vertexUniforms.ParticleScalePercent = v7;
  *&self->_anon_5c[4] = v8;
  *&self->_anon_5c[20] = v9;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"SparklePeriod"];
  *&v10 = v10;
  *&self->_anon_5c[48] = LODWORD(v10);
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem particleSize];
  [v5 size];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem particleSize];
  [v5 size];

  TSDRectWithSize();
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v16 = MidX - CGRectGetMinX(v25);
  v23 = v16;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  *&v18 = MidY - CGRectGetMinY(v27);
  *&v19 = -v23;
  LODWORD(v20) = 0;
  HIDWORD(v20) = v18;
  *&v21 = v23;
  LODWORD(v22) = 0;
  *(&v19 + 1) = -*&v18;
  *(&v22 + 1) = -*&v18;
  *(&v21 + 1) = -*&v18;
  *&self->_anon_5c[68] = __PAIR64__(v18, -v23);
  *&self->_anon_5c[76] = v20;
  *&self->_anon_5c[84] = __PAIR64__(v18, LODWORD(v23));
  *&self->_anon_5c[92] = COERCE_UNSIGNED_INT(-v23);
  *&self->_anon_5c[100] = 0;
  *&self->_anon_5c[108] = LODWORD(v23);
  *&self->_anon_5c[116] = v19;
  *&self->_anon_5c[124] = v22;
  *&self->_anon_5c[132] = v21;
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v4 = a3;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_drawableFrame.origin.x = v5;
  self->_drawableFrame.origin.y = v6;
  self->_drawableFrame.size.width = v7;
  self->_drawableFrame.size.height = v8;
  size = self->_drawableFrame.size;
  self->_animationRect.origin = self->_drawableFrame.origin;
  self->_animationRect.size = size;
  v10 = [v4 textures];
  v11 = [v10 lastObject];

  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:v4];
  self->_projectionMatrix = v15;
  [(KNBuildVanish *)self p_setupParticleTexturedRectWithContext:v4];
  [(KNBuildVanish *)self p_setupMetalShadersWithContext:v4];
  v12 = [v4 animatedBuild];
  v13 = [v4 randomGenerator];
  [(KNBuildVanish *)self p_setupParticleSystemWithContext:v4 image:v11 build:v12 randomGenerator:v13];

  [(KNBuildVanish *)self p_setupMetalShaderUniformsWithTexture:v11];
  v14 = [v4 animatedBuild];
  LODWORD(v13) = [v14 isBuildIn];

  if (v13)
  {
    [(KNBuildVanish *)self p_setupMetalBlurEffectsWithContext:v4];
  }
}

- (void)metalAnimationHasBegunWithContext:(id)a3
{
  v6 = a3;
  v4 = [v6 animatedBuild];
  v5 = [v4 isBuildOut];

  if (v5)
  {
    [(KNBuildVanish *)self p_setupMetalBlurEffectsWithContext:v6];
  }
}

- (void)p_drawMetalParticleSystemsWithEncoder:(id)a3 texture:(id)a4 percent:(double)a5 sparkles:(BOOL)a6 particleSystemOpacity:(double)a7 metalContext:(id)a8
{
  v10 = a6;
  v23 = a3;
  v14 = a4;
  v15 = a8;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleTransparency" atPercent:a5];
  if (v10)
  {
    [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleTransparency" atPercent:a5];
    v18 = 1.0 - v17;
  }

  else
  {
    v18 = v16 * a7;
  }

  v19 = v18;
  v20 = a5;
  *&self->_anon_5c[36] = v20;
  *&self->_anon_5c[40] = v19;
  v21 = [v14 metalTextureWithContext:v15];
  if (v21)
  {
    [(TSDMetalShader *)self->_vanishMetalShader setPipelineStateWithEncoder:v23 vertexBytes:&self->_vertexUniforms];
    [v23 setVertexTexture:v21 atIndex:0];
    v22 = [(TSDTexturedRectangle *)self->_particleTR metalTexture];
    [v23 setFragmentTexture:v22 atIndex:0];

    [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem drawMetalWithEncoder:v23];
  }
}

- (void)metalRenderFrameWithContext:(id)a3
{
  v32 = a3;
  v4 = [v32 metalContext];
  v5 = [v4 renderEncoder];
  [v32 percent];
  v7 = v6;
  v8 = 1.0 - v6;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"ParticleScale Pow"];
  pow(v8, v9);
  TSUMix();
  *&v10 = v10;
  *&self->_anon_5c[52] = LODWORD(v10);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Velocity Curve" atPercent:v7];
  *&v11 = 2.0 - v11;
  *&self->_anon_5c[56] = LODWORD(v11);
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem speedMax];
  *&v12 = v12;
  *&self->_anon_5c[60] = LODWORD(v12);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Opacity Fade" atPercent:v7];
  v14 = v13;
  [v32 duration];
  v16 = v7 * v15;
  v17 = 0.0;
  if (v16 < 0.1)
  {
    [v32 duration];
    v17 = v7 * v18 / 0.1;
  }

  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Blur Radius Curve" atPercent:v17];
  v20 = v19;
  v21 = [v32 textures];
  v22 = [v21 lastObject];

  [v32 duration];
  if (v7 * v23 <= 0.2)
  {
    [v22 singleTextureOpacity];
    [(KNGaussianBlurEffect *)self->_blurEffect setOpacity:(1.0 - v14) * v24];
    [(KNGaussianBlurEffect *)self->_blurEffect renderEffectAtPercent:v4 withContext:v20];
  }

  [v32 duration];
  if (v7 * v25 >= 0.1)
  {
    v26 = [v32 randomGenerator];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Min Particle Opacity for Random"];
    v28 = v27;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Max Particle Opacity for Random"];
    [v26 doubleBetween:v28 :v29];
    v31 = v30;

    [(KNBuildVanish *)self p_drawMetalParticleSystemsWithEncoder:v5 texture:v22 percent:1 sparkles:v4 particleSystemOpacity:v7 metalContext:v31];
  }
}

- (void)metalAnimationDidEndWithContext:(id)a3
{
  v4 = [a3 animatedBuild];
  v5 = [v4 isBuildOut];

  if (v5)
  {
    blurEffect = self->_blurEffect;

    [(KNGaussianBlurEffect *)blurEffect teardown];
  }
}

- (void)metalTeardownAnimationsWithContext:(id)a3
{
  [(KNGaussianBlurEffect *)self->_blurEffect teardown];
  [(TSDTexturedRectangle *)self->_particleTR teardown];
  vanishParticleSystem = self->_vanishParticleSystem;
  self->_vanishParticleSystem = 0;

  vanishMetalShader = self->_vanishMetalShader;
  self->_vanishMetalShader = 0;
}

@end