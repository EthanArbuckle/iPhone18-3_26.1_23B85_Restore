@interface KNBuildVanish
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
- (CGRect)frameOfEffectWithContext:(id)context;
- (KNBuildVanish)initWithAnimationContext:(id)context;
- (void)animationDidEndWithContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)metalAnimationDidEndWithContext:(id)context;
- (void)metalAnimationHasBegunWithContext:(id)context;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)metalTeardownAnimationsWithContext:(id)context;
- (void)p_drawMetalParticleSystemsWithEncoder:(id)encoder texture:(id)texture percent:(double)percent sparkles:(BOOL)sparkles particleSystemOpacity:(double)opacity metalContext:(id)context;
- (void)p_setupMVPMatricesWithContext:(id)context;
- (void)p_setupMetalBlurEffectsWithContext:(id)context;
- (void)p_setupMetalShaderUniformsWithTexture:(id)texture;
- (void)p_setupMetalShadersWithContext:(id)context;
- (void)p_setupParticleSystemWithContext:(id)context image:(id)image build:(id)build randomGenerator:(id)generator;
- (void)p_setupParticleTexturedRectWithContext:(id)context;
@end

@implementation KNBuildVanish

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49D1C8;
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

- (KNBuildVanish)initWithAnimationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = KNBuildVanish;
  v3 = [(KNAnimationEffect *)&v9 initWithAnimationContext:context];
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

- (CGRect)frameOfEffectWithContext:(id)context
{
  [context drawableFrame];
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

- (void)p_setupMVPMatricesWithContext:(id)context
{
  textures = [context textures];
  firstObject = [textures firstObject];

  [firstObject frameOnCanvas];
  v7 = v6 - CGRectGetMinX(self->_animationRect);
  [firstObject frameOnCanvas];
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

- (void)p_setupParticleSystemWithContext:(id)context image:(id)image build:(id)build randomGenerator:(id)generator
{
  contextCopy = context;
  imageCopy = image;
  buildCopy = build;
  generatorCopy = generator;
  if (!generatorCopy)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[KNBuildVanish p_setupParticleSystemWithContext:image:build:randomGenerator:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildVanish.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:242 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v17 = v16;
  v19 = v18;
  [buildCopy duration];
  v21 = v20;
  [imageCopy frame];
  v24 = (sqrt(sqrt(v23 * (v22 / v19) / v17)) * 10000.0);
  [imageCopy size];
  v26 = v25;
  v28 = v27;
  vanishMetalShader = self->_vanishMetalShader;
  metalContext = [contextCopy metalContext];
  v31 = [KNBuildVanishParticleSystem newParticleSystemWithNumberOfParticles:v24 objectSize:0 slideSize:generatorCopy duration:vanishMetalShader direction:metalContext randomGenerator:v26 shader:v28 metalContext:v17, v19, v21];
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
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem setupWithTexture:imageCopy particleTextureSize:0 reverseDrawOrder:v34, v36];
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildVanish *)self metalPrepareAnimationWithContext:contextCopy];
  [(KNBuildVanish *)self metalAnimationHasBegunWithContext:contextCopy];
}

- (void)animationDidEndWithContext:(id)context
{
  contextCopy = context;
  [(KNBuildVanish *)self metalAnimationDidEndWithContext:contextCopy];
  [(KNBuildVanish *)self metalTeardownAnimationsWithContext:contextCopy];
}

- (void)p_setupMetalBlurEffectsWithContext:(id)context
{
  contextCopy = context;
  metalContext = [contextCopy metalContext];
  textures = [contextCopy textures];
  lastObject = [textures lastObject];
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Steps"];
  v9 = fmax(v8, 1.0);
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Blur Radius Max"];
  v11 = v10;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Half Size Radius Every"];
  v13 = v12;
  commandQueue = [metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];
  v16 = [[KNGaussianBlurEffect alloc] initWithContext:contextCopy];

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
  [(KNGaussianBlurEffect *)self->_blurEffect setTexture:lastObject];
  [(KNGaussianBlurEffect *)self->_blurEffect setSaturateBlurTextures:1];
  [(KNGaussianBlurEffect *)self->_blurEffect setupEffectIfNecessary];
  v22 = self->_blurEffect;
  capabilities = [(KNAnimationContext *)self->super.mAnimationContext capabilities];
  [(KNGaussianBlurEffect *)v22 createBlurTexturesWithBlurSteps:v9 + 1 maxBlurRadius:commandBuffer stepsToDecreaseRadius:capabilities commandBuffer:v11 capabilities:v13];

  [commandBuffer commit];
}

- (void)p_setupParticleTexturedRectWithContext:(id)context
{
  contextCopy = context;
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
  metalContext = [contextCopy metalContext];

  device = [metalContext device];
  [(TSDTexturedRectangle *)v11 setupMetalTextureForDevice:device];

  CGImageRelease(v8);
}

- (void)p_setupMetalShadersWithContext:(id)context
{
  metalContext = [context metalContext];
  device = [metalContext device];
  v5 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v5 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v5 setBlendingEnabled:1];
  [v5 setDestinationRGBBlendFactor:5];
  [v5 setDestinationAlphaBlendFactor:5];
  v6 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildVanishVertexShader" fragmentShader:@"buildVanishFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v5];
  vanishMetalShader = self->_vanishMetalShader;
  self->_vanishMetalShader = v6;
}

- (void)p_setupMetalShaderUniformsWithTexture:(id)texture
{
  parameterGroup = self->_parameterGroup;
  textureCopy = texture;
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
  [textureCopy size];
  [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem particleSize];
  [textureCopy size];

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

- (void)metalPrepareAnimationWithContext:(id)context
{
  contextCopy = context;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_drawableFrame.origin.x = v5;
  self->_drawableFrame.origin.y = v6;
  self->_drawableFrame.size.width = v7;
  self->_drawableFrame.size.height = v8;
  size = self->_drawableFrame.size;
  self->_animationRect.origin = self->_drawableFrame.origin;
  self->_animationRect.size = size;
  textures = [contextCopy textures];
  lastObject = [textures lastObject];

  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:contextCopy];
  self->_projectionMatrix = v15;
  [(KNBuildVanish *)self p_setupParticleTexturedRectWithContext:contextCopy];
  [(KNBuildVanish *)self p_setupMetalShadersWithContext:contextCopy];
  animatedBuild = [contextCopy animatedBuild];
  randomGenerator = [contextCopy randomGenerator];
  [(KNBuildVanish *)self p_setupParticleSystemWithContext:contextCopy image:lastObject build:animatedBuild randomGenerator:randomGenerator];

  [(KNBuildVanish *)self p_setupMetalShaderUniformsWithTexture:lastObject];
  animatedBuild2 = [contextCopy animatedBuild];
  LODWORD(randomGenerator) = [animatedBuild2 isBuildIn];

  if (randomGenerator)
  {
    [(KNBuildVanish *)self p_setupMetalBlurEffectsWithContext:contextCopy];
  }
}

- (void)metalAnimationHasBegunWithContext:(id)context
{
  contextCopy = context;
  animatedBuild = [contextCopy animatedBuild];
  isBuildOut = [animatedBuild isBuildOut];

  if (isBuildOut)
  {
    [(KNBuildVanish *)self p_setupMetalBlurEffectsWithContext:contextCopy];
  }
}

- (void)p_drawMetalParticleSystemsWithEncoder:(id)encoder texture:(id)texture percent:(double)percent sparkles:(BOOL)sparkles particleSystemOpacity:(double)opacity metalContext:(id)context
{
  sparklesCopy = sparkles;
  encoderCopy = encoder;
  textureCopy = texture;
  contextCopy = context;
  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleTransparency" atPercent:percent];
  if (sparklesCopy)
  {
    [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"ParticleTransparency" atPercent:percent];
    v18 = 1.0 - v17;
  }

  else
  {
    v18 = v16 * opacity;
  }

  v19 = v18;
  percentCopy = percent;
  *&self->_anon_5c[36] = percentCopy;
  *&self->_anon_5c[40] = v19;
  v21 = [textureCopy metalTextureWithContext:contextCopy];
  if (v21)
  {
    [(TSDMetalShader *)self->_vanishMetalShader setPipelineStateWithEncoder:encoderCopy vertexBytes:&self->_vertexUniforms];
    [encoderCopy setVertexTexture:v21 atIndex:0];
    metalTexture = [(TSDTexturedRectangle *)self->_particleTR metalTexture];
    [encoderCopy setFragmentTexture:metalTexture atIndex:0];

    [(KNBuildVanishParticleSystem *)self->_vanishParticleSystem drawMetalWithEncoder:encoderCopy];
  }
}

- (void)metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  metalContext = [contextCopy metalContext];
  renderEncoder = [metalContext renderEncoder];
  [contextCopy percent];
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
  [contextCopy duration];
  v16 = v7 * v15;
  v17 = 0.0;
  if (v16 < 0.1)
  {
    [contextCopy duration];
    v17 = v7 * v18 / 0.1;
  }

  [(KNAnimParameterGroup *)self->_parameterGroup valueForAnimationCurve:@"Blur Radius Curve" atPercent:v17];
  v20 = v19;
  textures = [contextCopy textures];
  lastObject = [textures lastObject];

  [contextCopy duration];
  if (v7 * v23 <= 0.2)
  {
    [lastObject singleTextureOpacity];
    [(KNGaussianBlurEffect *)self->_blurEffect setOpacity:(1.0 - v14) * v24];
    [(KNGaussianBlurEffect *)self->_blurEffect renderEffectAtPercent:metalContext withContext:v20];
  }

  [contextCopy duration];
  if (v7 * v25 >= 0.1)
  {
    randomGenerator = [contextCopy randomGenerator];
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Min Particle Opacity for Random"];
    v28 = v27;
    [(KNAnimParameterGroup *)self->_parameterGroup valueForConstant:@"Max Particle Opacity for Random"];
    [randomGenerator doubleBetween:v28 :v29];
    v31 = v30;

    [(KNBuildVanish *)self p_drawMetalParticleSystemsWithEncoder:renderEncoder texture:lastObject percent:1 sparkles:metalContext particleSystemOpacity:v7 metalContext:v31];
  }
}

- (void)metalAnimationDidEndWithContext:(id)context
{
  animatedBuild = [context animatedBuild];
  isBuildOut = [animatedBuild isBuildOut];

  if (isBuildOut)
  {
    blurEffect = self->_blurEffect;

    [(KNGaussianBlurEffect *)blurEffect teardown];
  }
}

- (void)metalTeardownAnimationsWithContext:(id)context
{
  [(KNGaussianBlurEffect *)self->_blurEffect teardown];
  [(TSDTexturedRectangle *)self->_particleTR teardown];
  vanishParticleSystem = self->_vanishParticleSystem;
  self->_vanishParticleSystem = 0;

  vanishMetalShader = self->_vanishMetalShader;
  self->_vanishMetalShader = 0;
}

@end