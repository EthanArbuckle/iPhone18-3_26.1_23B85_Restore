@interface KNTransitionConfetti
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8;
- (CATransform3D)p_calculateQuadShaderMVPMatrixWithPercent:(SEL)a3 slideSize:(double)a4 destRect:(CGSize)a5;
- (KNTransitionConfetti)initWithAnimationContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)dealloc;
- (void)p_setupParticleSystemWithImage:(id)a3 direction:(unint64_t)a4 duration:(double)a5 randomGenerator:(id)a6 metalContext:(id)a7;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)a3;
@end

@implementation KNTransitionConfetti

- (KNTransitionConfetti)initWithAnimationContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = KNTransitionConfetti;
  return [(KNAnimationEffect *)&v4 initWithAnimationContext:a3];
}

- (void)p_teardown
{
  self->mParticleSystem = 0;

  self->_metalShader = 0;
  self->_quadMetalShader = 0;

  self->_quadMTLDataBuffer = 0;
}

- (void)dealloc
{
  [(KNTransitionConfetti *)self p_teardown];
  v3.receiver = self;
  v3.super_class = KNTransitionConfetti;
  [(KNTransitionConfetti *)&v3 dealloc];
}

- (void)p_setupParticleSystemWithImage:(id)a3 direction:(unint64_t)a4 duration:(double)a5 randomGenerator:(id)a6 metalContext:(id)a7
{
  if (!a6)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v13 = v12;
  v15 = v14;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  if (a7)
  {
    v18 = (sqrt(sqrt(v16 * (v17 / v15) / v13)) * 10000.0);
    [a3 size];
    mParticleSystem = [KNBuildConfettiSystem newParticleSystemWithNumberOfParticles:"newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:" objectSize:v18 slideSize:a4 duration:a6 direction:self->_metalShader randomGenerator:a7 shader:? metalContext:?];
    self->mParticleSystem = mParticleSystem;
  }

  else
  {
    mParticleSystem = self->mParticleSystem;
  }

  height = CGSizeZero.height;

  [(KNBuildConfettiSystem *)mParticleSystem setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, height];
}

- (void)animationWillBeginWithContext:(id)a3
{
  v5 = [a3 textures];
  v6 = [a3 direction];
  [a3 duration];
  v8 = v7;
  v9 = [v5 lastObject];
  v10 = [objc_msgSend(a3 "metalContext")];
  v11 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v11 setPixelFormat:objc_msgSend(objc_msgSend(a3, "metalContext"), "pixelFormat")];
  [v11 setBlendingEnabled:1];
  [v11 setDestinationAlphaBlendFactor:5];
  [v11 setDestinationRGBBlendFactor:5];
  self->_metalShader = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"transitionConfettiVertexShader" fragmentShader:@"transitionConfettiFragmentShader" device:v10 library:@"KeynoteMetalLibrary" colorAttachment:v11];
  -[KNTransitionConfetti p_setupParticleSystemWithImage:direction:duration:randomGenerator:metalContext:](self, "p_setupParticleSystemWithImage:direction:duration:randomGenerator:metalContext:", [v5 objectAtIndexedSubscript:0], v6, objc_msgSend(a3, "randomGenerator"), objc_msgSend(a3, "metalContext"), v8);
  self->_quadMetalShader = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:v10 colorAttachment:v11];
  if (!self->_quadMTLDataBuffer)
  {
    [v9 size];
    v13 = v12;
    [v9 size];
    self->_quadMTLDataBuffer = [TSDGPUDataBuffer newDataBufferWithVertexRect:v10 textureRect:0.0 device:0.0, v13, v14, 0.0, 0.0, 1.0, 1.0];
  }

  anon_60 = self->_anon_60;
  v16 = 3;
  do
  {
    mAnimationContext = self->super.mAnimationContext;
    if (mAnimationContext)
    {
      [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v31);
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v29);
      v20 = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v27);
      v21 = vcvt_hight_f32_f64(vcvt_f32_f64(v24), v25);
    }

    else
    {
      v21 = 0uLL;
      v20 = 0uLL;
      v19 = 0uLL;
      v18 = 0uLL;
    }

    *(anon_60 - 3) = v21;
    *(anon_60 - 2) = v20;
    *(anon_60 - 1) = v19;
    *anon_60 = v18;
    [(KNBuildConfettiSystem *)self->mParticleSystem rotationMax];
    *&v22 = v22;
    *(anon_60 + 4) = LODWORD(v22);
    [(KNBuildConfettiSystem *)self->mParticleSystem speedMax];
    *&v23 = v23;
    *(anon_60 + 5) = LODWORD(v23);
    anon_60 += 80;
    --v16;
  }

  while (v16);
}

- (CATransform3D)p_calculateQuadShaderMVPMatrixWithPercent:(SEL)a3 slideSize:(double)a4 destRect:(CGSize)a5
{
  height = a6.size.height;
  width = a6.size.width;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
  }

  v11 = pow(a4, 4.0);
  v12 = *&retstr->m33;
  v13 = (1.0 - v11) * 0.25 + 0.75;
  *&v38.m31 = *&retstr->m31;
  *&v38.m33 = v12;
  v14 = *&retstr->m43;
  *&v38.m41 = *&retstr->m41;
  *&v38.m43 = v14;
  v15 = *&retstr->m13;
  *&v38.m11 = *&retstr->m11;
  *&v38.m13 = v15;
  v16 = *&retstr->m23;
  *&v38.m21 = *&retstr->m21;
  *&v38.m23 = v16;
  CATransform3DTranslate(&v39, &v38, width * 0.5, height * 0.5, 0.0);
  v17 = *&v39.m33;
  *&retstr->m31 = *&v39.m31;
  *&retstr->m33 = v17;
  v18 = *&v39.m43;
  *&retstr->m41 = *&v39.m41;
  *&retstr->m43 = v18;
  v19 = *&v39.m13;
  *&retstr->m11 = *&v39.m11;
  *&retstr->m13 = v19;
  v20 = *&v39.m23;
  *&retstr->m21 = *&v39.m21;
  *&retstr->m23 = v20;
  v21 = *&retstr->m33;
  *&v38.m31 = *&retstr->m31;
  *&v38.m33 = v21;
  v22 = *&retstr->m43;
  *&v38.m41 = *&retstr->m41;
  *&v38.m43 = v22;
  v23 = *&retstr->m13;
  *&v38.m11 = *&retstr->m11;
  *&v38.m13 = v23;
  v24 = *&retstr->m23;
  *&v38.m21 = *&retstr->m21;
  *&v38.m23 = v24;
  CATransform3DScale(&v39, &v38, v13, v13, 1.0);
  v25 = *&v39.m33;
  *&retstr->m31 = *&v39.m31;
  *&retstr->m33 = v25;
  v26 = *&v39.m43;
  *&retstr->m41 = *&v39.m41;
  *&retstr->m43 = v26;
  v27 = *&v39.m13;
  *&retstr->m11 = *&v39.m11;
  *&retstr->m13 = v27;
  v28 = *&v39.m23;
  *&retstr->m21 = *&v39.m21;
  *&retstr->m23 = v28;
  v29 = *&retstr->m33;
  *&v38.m31 = *&retstr->m31;
  *&v38.m33 = v29;
  v30 = *&retstr->m43;
  *&v38.m41 = *&retstr->m41;
  *&v38.m43 = v30;
  v31 = *&retstr->m13;
  *&v38.m11 = *&retstr->m11;
  *&v38.m13 = v31;
  v32 = *&retstr->m23;
  *&v38.m21 = *&retstr->m21;
  *&v38.m23 = v32;
  result = CATransform3DTranslate(&v39, &v38, width * -0.5, height * -0.5, 0.0);
  v34 = *&v39.m33;
  *&retstr->m31 = *&v39.m31;
  *&retstr->m33 = v34;
  v35 = *&v39.m43;
  *&retstr->m41 = *&v39.m41;
  *&retstr->m43 = v35;
  v36 = *&v39.m13;
  *&retstr->m11 = *&v39.m11;
  *&retstr->m13 = v36;
  v37 = *&v39.m23;
  *&retstr->m21 = *&v39.m21;
  *&retstr->m23 = v37;
  return result;
}

- (void)renderFrameWithContext:(id)a3
{
  v5 = [a3 textures];
  v49 = [a3 direction];
  [a3 percent];
  v7 = v6;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v9 = v8;
  v11 = v10;
  v50 = [v5 lastObject];
  v12 = [v5 objectAtIndex:0];
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v48 = v7;
  v21 = 1.0 - v7;
  memset(&v55, 0, sizeof(v55));
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
  }

  v23 = (1.0 - pow(v21, 4.0)) * 0.25 + 0.75;
  v53 = v55;
  CATransform3DTranslate(&v54, &v53, v18 * 0.5, v20 * 0.5, 0.0);
  v55 = v54;
  v53 = v54;
  CATransform3DScale(&v54, &v53, v23, v23, 1.0);
  v55 = v54;
  v53 = v54;
  CATransform3DTranslate(&v54, &v53, v18 * -0.5, v20 * -0.5, 0.0);
  v55 = v54;
  v24 = [a3 metalContext];
  v25 = [v24 device];
  v26 = [v24 commandBuffer];
  v27 = [v24 passDescriptor];
  v47 = [v24 currentBuffer];
  v28 = [v24 renderEncoder];
  memset(&v54, 0, sizeof(v54));
  [(KNTransitionConfetti *)self p_calculateQuadShaderMVPMatrixWithPercent:v21 slideSize:v9 destRect:v11, v14, v16, v18, v20];
  if (v25)
  {
    if (v26)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (v26)
    {
LABEL_5:
      if (v27)
      {
        goto LABEL_6;
      }

LABEL_17:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      if (v28)
      {
        goto LABEL_7;
      }

LABEL_18:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      goto LABEL_7;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!v27)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (!v28)
  {
    goto LABEL_18;
  }

LABEL_7:
  v29 = [v50 metalTextureWithContext:v24];
  v30 = [v12 metalTextureWithContext:v24];
  if (v29)
  {
    v31 = v30;
    if (v30)
    {
      [v28 setFragmentTexture:v29 atIndex:0];
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v54.m21), *&v54.m23);
      v33 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v54.m31), *&v54.m33);
      v34 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v54.m41), *&v54.m43);
      self[1].super = vcvt_hight_f32_f64(vcvt_f32_f64(*&v54.m11), *&v54.m13);
      *&self[1].mParticleSystem = v32;
      *&self[1]._quadMetalShader = v33;
      self[1]._vertexInput[0] = v34;
      [a3 percent];
      if (v35 > 0.0)
      {
        [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:v28 vertexBytes:&self[1]];
        [v28 setFragmentTexture:v29 atIndex:0];
        [(TSDMTLDataBuffer *)self->_quadMTLDataBuffer drawWithEncoder:v28 atIndex:0];
      }

      if (v49 == &stru_68.segname[1])
      {
        v36 = sqrt(sqrt(v18 * (v20 / v11) / v9));
        memset(&v53, 0, sizeof(v53));
        v37 = self->super.mAnimationContext;
        if (v37)
        {
          [(KNAnimationContext *)v37 slideProjectionMatrix];
        }

        v38 = v48;
        v51 = v53;
        CATransform3DTranslate(&v52, &v51, 0.0, v48 * (v48 * (v20 * -2.0)) * (v36 * -0.5 + 1.0), 0.0);
        v53 = v52;
        v39 = v47;
        v40 = &self->_vertexInput[5 * v47];
        v41 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v52.m21), *&v52.m23);
        v42 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v52.m31), *&v52.m33);
        v43 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v52.m41), *&v52.m43);
        *v40 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v52.m11), *&v52.m13);
        v40[1] = v41;
        v40[2] = v42;
        v40[3] = v43;
      }

      else
      {
        v38 = v48;
        v39 = v47;
      }

      v44 = v21;
      v45 = &self->_vertexInput[5 * v39];
      v46 = v38;
      v45[4].percent = v46;
      v45[4].opacity = v44;
      [(TSDMetalShader *)self->_metalShader setPipelineStateWithEncoder:v28 vertexBytes:?];
      [v28 setFragmentTexture:v31 atIndex:0];
      [(KNBuildConfettiSystem *)self->mParticleSystem drawMetalWithEncoder:v28];
    }
  }
}

+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a6 == 3 && a8 <= 0x174876E7FFLL && a7 && [*a3 objectForKey:{@"KNTransitionAttributesDirection", a4, a5}])
  {
    if ([objc_msgSend(*a3 objectForKey:{@"KNTransitionAttributesDirection", "unsignedIntegerValue"}] == &dword_C)
    {
      v9 = 121;
    }

    else
    {
      v9 = 122;
    }

    v10 = [*a3 mutableCopy];
    [v10 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v9), @"KNTransitionAttributesDirection"}];
    *a3 = v10;
  }
}

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a6 == 3 && a8 <= 0x174876E7FFLL && a7 && [*a3 objectForKey:{@"direction", a4, a5}])
  {
    v9 = [objc_msgSend(*a3 objectForKey:{@"direction", "unsignedIntegerValue"}];
    v10 = 122;
    if (v9 == &stru_68.segname[1])
    {
      v10 = 12;
    }

    if (v9 == &stru_68.segname[2])
    {
      v11 = 11;
    }

    else
    {
      v11 = v10;
    }

    v12 = [*a3 mutableCopy];
    [v12 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v11), @"direction"}];
    *a3 = v12;
  }
}

@end