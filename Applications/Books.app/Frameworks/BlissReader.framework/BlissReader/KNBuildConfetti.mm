@interface KNBuildConfetti
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8;
- (CGRect)frameOfEffectWithContext:(id)a3;
- (KNBuildConfetti)initWithAnimationContext:(id)a3;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalTeardownAnimationsWithContext:(id)a3;
- (void)p_drawWithContext:(id)a3;
- (void)p_setupParticleSystemWithImage:(id)a3 build:(id)a4 randomGenerator:(id)a5 metalContext:(id)a6;
@end

@implementation KNBuildConfetti

- (KNBuildConfetti)initWithAnimationContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = KNBuildConfetti;
  return [(KNAnimationEffect *)&v4 initWithAnimationContext:a3];
}

+ (id)defaultAttributes
{
  v4 = @"KNBuildAttributesDuration";
  v5 = &off_49CF90;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (CGRect)frameOfEffectWithContext:(id)a3
{
  v4 = a3;
  [v4 drawableFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 direction];

  self->_drawableFrame.origin.x = v6;
  self->_drawableFrame.origin.y = v8;
  self->_drawableFrame.size.width = v10;
  self->_drawableFrame.size.height = v12;
  v13.origin.x = v6;
  v13.origin.y = v8;
  v13.size.width = v10;
  v13.size.height = v12;
  CGRectGetMinX(v13);
  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  CGRectGetMinY(v14);
  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  CGRectGetMaxX(v15);
  v16.origin.x = v6;
  v16.origin.y = v8;
  v16.size.width = v10;
  v16.size.height = v12;
  CGRectGetMaxY(v16);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinY(v17);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxY(v18);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMinX(v19);
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  CGRectGetMaxX(v20);
  self = (self + 240);
  TSDRectWithPoints();
  *&self->super.super.isa = v21;
  result = CGRectIntegral(v21);
  *&self->super.super.isa = result;
  return result;
}

- (void)p_setupParticleSystemWithImage:(id)a3 build:(id)a4 randomGenerator:(id)a5 metalContext:(id)a6
{
  v28 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"[KNBuildConfetti p_setupParticleSystemWithImage:build:randomGenerator:metalContext:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildConfetti.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:182 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v17 = v16;
  v19 = v18;
  [v28 frame];
  v21 = v20;
  v23 = v22;
  [v10 duration];
  v24 = [v10 direction];
  if (v12)
  {
    v25 = v24;
    [v28 size];
    v26 = [KNBuildConfettiSystem newParticleSystemWithNumberOfParticles:"newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:" objectSize:(sqrt(sqrt(v21 * (v23 / v19) / v17)) * 10000.0) slideSize:v25 duration:v11 direction:self->_metalShader randomGenerator:v12 shader:? metalContext:?];
    particleSystem = self->_particleSystem;
    self->_particleSystem = v26;
  }

  [(KNBuildConfettiSystem *)self->_particleSystem setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, CGSizeZero.height];
}

- (void)p_drawWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 textures];
  v6 = [v4 animatedBuild];
  [v4 percent];
  v8 = v7;
  v9 = [v6 direction];
  v10 = [v6 isBuildIn];
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v12 = v11;
  v14 = v13;
  v15 = [v5 lastObject];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v35 = *&self->_baseTransform.m11;
  v36 = *&self->_baseTransform.m21;
  v40 = *&self->_baseTransform.m23;
  v41 = *&self->_baseTransform.m33;
  v37 = *&self->_baseTransform.m31;
  v38 = *&self->_baseTransform.m13;
  v42 = *&self->_baseTransform.m43;
  v39 = *&self->_baseTransform.m41;
  [v15 singleTextureOpacity];
  v21 = v20;
  if (v10)
  {
    v22 = 1.0 - v8;
  }

  else
  {
    v22 = v8;
  }

  v23 = 1.0 - v22;
  v24 = v22 * v22 * (1.0 - v23 * v23);
  if (v10)
  {
    v25 = (v22 + v24 + (-(v23 * v23) * v23 + 1.0) * (1.0 - v22 * v22)) * 0.5;
    v26 = v25 * v25;
  }

  else
  {
    v26 = (v22 + v24 + (-(v23 * v23) * v23 + 1.0) * (1.0 - v22 * v22)) * 0.5;
  }

  if (v9 == &stru_68.segname[1])
  {
    *&v43.m11 = v35;
    *&v43.m13 = v38;
    *&v43.m21 = v36;
    *&v43.m23 = v40;
    *&v43.m31 = v37;
    *&v43.m33 = v41;
    *&v43.m41 = v39;
    *&v43.m43 = v42;
    CATransform3DTranslate(&v44, &v43, 0.0, v22 * (v22 * (v19 * -2.0)) * (sqrt(sqrt(v17 * (v19 / v14) / v12)) * -0.5 + 1.0), 0.0);
    v35 = *&v44.m11;
    v36 = *&v44.m21;
    v40 = *&v44.m23;
    v41 = *&v44.m33;
    v37 = *&v44.m31;
    v38 = *&v44.m13;
    v42 = *&v44.m43;
    v39 = *&v44.m41;
  }

  v27 = [v4 metalContext];
  v28 = [v27 renderEncoder];
  if (!v28)
  {
    v29 = +[TSUAssertionHandler currentHandler];
    v30 = [NSString stringWithUTF8String:"[KNBuildConfetti p_drawWithContext:]"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildConfetti.m"];
    [v29 handleFailureInFunction:v30 file:v31 lineNumber:250 description:{@"invalid nil value for '%s'", "renderEncoder"}];
  }

  v32 = [v15 metalTextureWithContext:v27];
  if (v32)
  {
    self->_vertexInput = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v38);
    *self->_anon_b0 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v40);
    *&self->_anon_b0[16] = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v41);
    *&self->_anon_b0[32] = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v42);
    v33 = v26;
    v34 = v23 * v21;
    *&self->_anon_b0[56] = v33;
    *&self->_anon_b0[60] = v34;
    [(TSDMetalShader *)self->_metalShader setPipelineStateWithEncoder:v28 vertexBytes:?];
    [v28 setFragmentTexture:v32 atIndex:0];
    [(KNBuildConfettiSystem *)self->_particleSystem drawMetalWithEncoder:v28];
  }
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 animatedBuild];
  v6 = [v4 textures];
  if ([v6 count] != &dword_0 + 1)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[KNBuildConfetti metalPrepareAnimationWithContext:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildConfetti.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:288 description:{@"Effect expects one texture. Passed (%lu) textures.", objc_msgSend(v6, "count")}];
  }

  v10 = [v4 metalContext];
  v11 = [v10 device];

  if (!v11)
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[KNBuildConfetti metalPrepareAnimationWithContext:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildConfetti.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:291 description:{@"invalid nil value for '%s'", "device"}];
  }

  v15 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  v16 = [v4 metalContext];
  [v15 setPixelFormat:objc_msgSend(v16, "pixelFormat")];

  [v15 setBlendingEnabled:1];
  [v15 setDestinationAlphaBlendFactor:5];
  [v15 setDestinationRGBBlendFactor:5];
  v17 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"transitionConfettiVertexShader" fragmentShader:@"transitionConfettiFragmentShader" device:v11 library:@"KeynoteMetalLibrary" colorAttachment:v15];
  metalShader = self->_metalShader;
  self->_metalShader = v17;

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  self->_frameRect.origin.x = v19;
  self->_frameRect.origin.y = v20;
  self->_frameRect.size.width = v21;
  self->_frameRect.size.height = v22;
  v23 = [v6 objectAtIndexedSubscript:0];
  v24 = [v4 randomGenerator];
  v25 = [v4 metalContext];
  [(KNBuildConfetti *)self p_setupParticleSystemWithImage:v23 build:v5 randomGenerator:v24 metalContext:v25];

  [(KNBuildConfettiSystem *)self->_particleSystem rotationMax];
  *&v26 = v26;
  *&self->_anon_b0[48] = LODWORD(v26);
  [(KNBuildConfettiSystem *)self->_particleSystem speedMax];
  *&v27 = v27;
  *&self->_anon_b0[52] = LODWORD(v27);
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:v4];
  v28 = v37;
  *&self->_baseTransform.m31 = v36;
  *&self->_baseTransform.m33 = v28;
  v29 = v39;
  *&self->_baseTransform.m41 = v38;
  *&self->_baseTransform.m43 = v29;
  v30 = v33;
  *&self->_baseTransform.m11 = v32;
  *&self->_baseTransform.m13 = v30;
  v31 = v35;
  *&self->_baseTransform.m21 = v34;
  *&self->_baseTransform.m23 = v31;
}

- (void)metalTeardownAnimationsWithContext:(id)a3
{
  metalShader = self->_metalShader;
  self->_metalShader = 0;

  particleSystem = self->_particleSystem;
  self->_particleSystem = 0;
}

+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8
{
  if ((a6 - 1) <= 1 && a8 <= 0x174876E7FFLL && a7)
  {
    v11 = [*a3 objectForKeyedSubscript:{@"KNBuildAttributesDirection", a4, a5}];

    if (v11)
    {
      v12 = [*a3 objectForKeyedSubscript:@"KNBuildAttributesDirection"];
      v13 = [v12 unsignedIntegerValue];

      if (v13 == &dword_C)
      {
        v14 = 121;
      }

      else
      {
        v14 = 122;
      }

      v17 = [*a3 mutableCopy];
      v15 = [NSNumber numberWithUnsignedInteger:v14];
      [v17 setObject:v15 forKeyedSubscript:@"KNBuildAttributesDirection"];

      v16 = v17;
      *a3 = v17;
    }
  }
}

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  if ((a6 - 1) <= 1 && a8 <= 0x174876E7FFLL && a7)
  {
    v11 = [*a3 objectForKeyedSubscript:{@"direction", a4, a5}];

    if (v11)
    {
      v12 = [*a3 objectForKeyedSubscript:@"direction"];
      v13 = [v12 unsignedIntegerValue];

      v14 = 122;
      if (v13 == &stru_68.segname[1])
      {
        v14 = 12;
      }

      if (v13 == &stru_68.segname[2])
      {
        v15 = 11;
      }

      else
      {
        v15 = v14;
      }

      v18 = [*a3 mutableCopy];
      v16 = [NSNumber numberWithUnsignedInteger:v15];
      [v18 setObject:v16 forKeyedSubscript:@"direction"];

      v17 = v18;
      *a3 = v18;
    }
  }
}

@end