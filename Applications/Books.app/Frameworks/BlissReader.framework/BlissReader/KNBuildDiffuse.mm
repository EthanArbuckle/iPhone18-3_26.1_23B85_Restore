@interface KNBuildDiffuse
+ (id)defaultAttributes;
- (CGRect)frameOfEffectWithFrame:(CGRect)frame context:(id)context;
- (void)dealloc;
- (void)metalPrepareAnimationWithContext:(id)context;
- (void)metalRenderFrameWithContext:(id)context;
- (void)p_setupParticleSystemWithImage:(id)image build:(id)build randomGenerator:(id)generator metalContext:(id)context;
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

- (CGRect)frameOfEffectWithFrame:(CGRect)frame context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  self->mDrawableFrame = frame;
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
  selfCopy = (selfCopy + 272);
  TSDRectWithPoints();
  *&selfCopy->super.super.isa = v16;
  result = CGRectIntegral(v16);
  *&selfCopy->super.super.isa = result;
  return result;
}

- (void)p_setupParticleSystemWithImage:(id)image build:(id)build randomGenerator:(id)generator metalContext:(id)context
{
  if (!generator)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [image frame];
  v12 = v11;
  v14 = v13;
  [(KNAnimationContext *)self->super.mAnimationContext slideRect];
  v16 = v15;
  v18 = v17;
  [build duration];
  direction = [build direction];
  if (([build isBuildIn] & 1) == 0)
  {
    if (direction > 110)
    {
      if (direction > 114)
      {
        if (direction == &stru_68.sectname[11])
        {
          direction = (&stru_68 + 10);
        }

        else if (direction == &stru_68.segname[1])
        {
          direction = (&stru_68 + 18);
        }

        else if (direction == &stru_68.segname[2])
        {
          direction = (&stru_68 + 17);
        }
      }

      else if (direction == &stru_68.sectname[7])
      {
        direction = (&stru_68 + 8);
      }

      else if (direction == &stru_68.sectname[8])
      {
        direction = (&stru_68 + 7);
      }

      else if (direction == &stru_68.sectname[10])
      {
        direction = (&stru_68 + 11);
      }
    }

    else
    {
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
          break;
      }
    }
  }

  [image size];
  v20 = [KNBuildDiffuseSystem newParticleSystemWithNumberOfParticles:"newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:" objectSize:(sqrt(sqrt(v12 * (v14 / v18) / v16)) * 4000.0) slideSize:direction duration:generator direction:self->mDiffuseMetalShader randomGenerator:context shader:? metalContext:?];
  self->mDiffuseSystem = v20;
  height = CGSizeZero.height;

  [(KNBuildDiffuseSystem *)v20 setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:CGSizeZero.width, height];
}

- (void)metalPrepareAnimationWithContext:(id)context
{
  metalContext = [context metalContext];
  device = [metalContext device];
  textures = [context textures];
  animatedBuild = [context animatedBuild];
  lastObject = [textures lastObject];
  v10 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v10 setPixelFormat:objc_msgSend(metalContext, "pixelFormat")];
  [v10 setBlendingEnabled:1];
  [v10 setDestinationAlphaBlendFactor:5];
  [v10 setDestinationRGBBlendFactor:5];
  self->mDiffuseMetalShader = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"buildDiffuseVertexShader" fragmentShader:@"buildDiffuseFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v10];
  [(KNAnimationEffect *)self perspectiveMVPMatrixWithContext:context];
  self->mBaseTransform = v17;
  -[KNBuildDiffuse p_setupParticleSystemWithImage:build:randomGenerator:metalContext:](self, "p_setupParticleSystemWithImage:build:randomGenerator:metalContext:", lastObject, animatedBuild, [context randomGenerator], metalContext);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m21), *&self->mBaseTransform.m23);
  v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m31), *&self->mBaseTransform.m33);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m41), *&self->mBaseTransform.m43);
  self->mDiffuseShaderUniforms = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->mBaseTransform.m11), *&self->mBaseTransform.m13);
  *self->_anon_30 = v11;
  *&self->_anon_30[16] = v12;
  *&self->_anon_30[32] = v13;
  [lastObject singleTextureOpacity];
  *&v14 = v14;
  *&self->_anon_30[52] = LODWORD(v14);
  [(KNBuildDiffuseSystem *)self->mDiffuseSystem rotationMax];
  *&v15 = v15;
  *&self->_anon_30[56] = LODWORD(v15);
  [(KNBuildDiffuseSystem *)self->mDiffuseSystem speedMax];
  *&v16 = v16;
  *&self->_anon_30[60] = LODWORD(v16);
}

- (void)metalRenderFrameWithContext:(id)context
{
  v5 = [objc_msgSend(context "metalContext")];
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v6 = [objc_msgSend(context "textures")];
  [context percent];
  *&v7 = v7;
  *&self->_anon_30[48] = LODWORD(v7);
  v8 = [v6 metalTextureWithContext:{objc_msgSend(context, "metalContext")}];
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