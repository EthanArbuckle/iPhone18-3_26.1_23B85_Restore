@interface KNBuildDiffuse
+ (id)defaultAttributes;
- (CGRect)frameOfEffectWithFrame:(CGRect)a3 context:(id)a4;
- (void)dealloc;
- (void)metalPrepareAnimationWithContext:(id)a3;
- (void)metalRenderFrameWithContext:(id)a3;
- (void)p_setupParticleSystemWithImage:(id)a3 build:(id)a4 randomGenerator:(id)a5 metalContext:(id)a6;
@end

@implementation KNBuildDiffuse

+ (id)defaultAttributes
{
  v2 = [NSNumber numberWithDouble:2.0];

  return [NSDictionary dictionaryWithObject:v2 forKey:@"KNBuildAttributesDuration"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNBuildDiffuse;
  [(KNBuildDiffuse *)&v3 dealloc];
}

- (CGRect)frameOfEffectWithFrame:(CGRect)a3 context:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self;
  self->mDrawableFrame = a3;
  CGRectGetMinX(a3);
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
  [(KNAnimationContext *)v8->super.mAnimationContext slideRect];
  CGRectGetMinY(v12);
  [(KNAnimationContext *)v8->super.mAnimationContext slideRect];
  CGRectGetMaxY(v13);
  [(KNAnimationContext *)v8->super.mAnimationContext slideRect];
  CGRectGetMinX(v14);
  [(KNAnimationContext *)v8->super.mAnimationContext slideRect];
  CGRectGetMaxX(v15);
  v8 = (v8 + 272);
  TSDRectWithPoints();
  *&v8->super.super.isa = v16;
  result = CGRectIntegral(v16);
  *&v8->super.super.isa = result;
  return result;
}

- (void)p_setupParticleSystemWithImage:(id)a3 build:(id)a4 randomGenerator:(id)a5 metalContext:(id)a6
{
  if (!a5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [a3 frame];
  v12 = v11;
  v14 = v13;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v16 = v15;
  v18 = v17;
  [a4 duration];
  v19 = [a4 direction];
  if (([a4 isBuildIn] & 1) == 0)
  {
    if (v19 > 110)
    {
      if (v19 > 114)
      {
        if (v19 == &stru_68.sectname[11])
        {
          v19 = (&stru_68 + 10);
        }

        else if (v19 == &stru_68.segname[1])
        {
          v19 = (&stru_68 + 18);
        }

        else if (v19 == &stru_68.segname[2])
        {
          v19 = (&stru_68 + 17);
        }
      }

      else if (v19 == &stru_68.sectname[7])
      {
        v19 = (&stru_68 + 8);
      }

      else if (v19 == &stru_68.sectname[8])
      {
        v19 = (&stru_68 + 7);
      }

      else if (v19 == &stru_68.sectname[10])
      {
        v19 = (&stru_68 + 11);
      }
    }

    else
    {
      switch(v19)
      {
        case 0xBuLL:
          v19 = &dword_C;
          break;
        case 0xCuLL:
          v19 = (&dword_8 + 3);
          break;
        case 0xDuLL:
          v19 = (&dword_C + 2);
          break;
        case 0xEuLL:
          v19 = (&dword_C + 1);
          break;
        case 0x15uLL:
          v19 = &dword_18;
          break;
        case 0x16uLL:
          v19 = (&dword_14 + 3);
          break;
        case 0x17uLL:
          v19 = (&dword_14 + 2);
          break;
        case 0x18uLL:
          v19 = (&dword_14 + 1);
          break;
        case 0x1FuLL:
          v19 = &stru_20;
          break;
        case 0x20uLL:
          v19 = (&dword_1C + 3);
          break;
        case 0x29uLL:
          v19 = (&stru_20 + 10);
          break;
        case 0x2AuLL:
          v19 = (&stru_20 + 9);
          break;
        case 0x2BuLL:
          v19 = (&stru_20 + 12);
          break;
        case 0x2CuLL:
          v19 = (&stru_20 + 11);
          break;
        default:
          break;
      }
    }
  }

  [a3 size];
  v20 = [KNBuildDiffuseSystem newParticleSystemWithNumberOfParticles:"newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:" objectSize:(sqrt(sqrt(v12 * (v14 / v18) / v16)) * 4000.0) slideSize:v19 duration:a5 direction:self->mDiffuseMetalShader randomGenerator:a6 shader:? metalContext:?];
  self->mDiffuseSystem = v20;
  height = CGSizeZero.height;

  [(KNBuildDiffuseSystem *)v20 setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, height];
}

- (void)metalPrepareAnimationWithContext:(id)a3
{
  v5 = [a3 metalContext];
  v6 = [v5 device];
  v7 = [a3 textures];
  v8 = [a3 animatedBuild];
  v9 = [v7 lastObject];
  v10 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v10 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
  [v10 setBlendingEnabled:1];
  [v10 setDestinationAlphaBlendFactor:5];
  [v10 setDestinationRGBBlendFactor:5];
  self->mDiffuseMetalShader = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildDiffuseVertexShader" fragmentShader:@"buildDiffuseFragmentShader" device:v6 library:@"KeynoteMetalLibrary" colorAttachment:v10];
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:a3];
  self->mBaseTransform = v17;
  -[KNBuildDiffuse p_setupParticleSystemWithImage:build:randomGenerator:metalContext:](self, "p_setupParticleSystemWithImage:build:randomGenerator:metalContext:", v9, v8, [a3 randomGenerator], v5);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m21), *&self->mBaseTransform.m23);
  v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m31), *&self->mBaseTransform.m33);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m41), *&self->mBaseTransform.m43);
  self->mDiffuseShaderUniforms = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m11), *&self->mBaseTransform.m13);
  *self->_anon_30 = v11;
  *&self->_anon_30[16] = v12;
  *&self->_anon_30[32] = v13;
  [v9 singleTextureOpacity];
  *&v14 = v14;
  *&self->_anon_30[52] = LODWORD(v14);
  [(KNBuildDiffuseSystem *)self->mDiffuseSystem rotationMax];
  *&v15 = v15;
  *&self->_anon_30[56] = LODWORD(v15);
  [(KNBuildDiffuseSystem *)self->mDiffuseSystem speedMax];
  *&v16 = v16;
  *&self->_anon_30[60] = LODWORD(v16);
}

- (void)metalRenderFrameWithContext:(id)a3
{
  v5 = [objc_msgSend(a3 "metalContext")];
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v6 = [objc_msgSend(a3 "textures")];
  [a3 percent];
  *&v7 = v7;
  *&self->_anon_30[48] = LODWORD(v7);
  v8 = [v6 metalTextureWithContext:{objc_msgSend(a3, "metalContext")}];
  if (v8)
  {
    v9 = v8;
    [(TSDMetalShader *)self->mDiffuseMetalShader setPipelineStateWithEncoder:v5 vertexBytes:&self->mDiffuseShaderUniforms];
    [v5 setFragmentTexture:v9 atIndex:0];
    mDiffuseSystem = self->mDiffuseSystem;

    [(KNBuildDiffuseSystem *)mDiffuseSystem drawMetalWithEncoder:v5];
  }
}

@end