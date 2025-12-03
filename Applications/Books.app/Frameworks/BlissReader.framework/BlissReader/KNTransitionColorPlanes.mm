@interface KNTransitionColorPlanes
+ (id)defaultAttributes;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version;
- (CATransform3D)p_mvpMatrixWithTexture:(SEL)texture direction:(id)direction percent:(unint64_t)percent colorIndex:(double)index;
- (KNTransitionColorPlanes)initWithAnimationContext:(id)context;
- (void)animationWillBeginWithContext:(id)context;
- (void)p_drawWithMetalContext:(id)context renderEncoder:(id)encoder;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)context;
@end

@implementation KNTransitionColorPlanes

- (KNTransitionColorPlanes)initWithAnimationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = KNTransitionColorPlanes;
  result = [(KNAnimationEffect *)&v4 initWithAnimationContext:context];
  if (result)
  {
    result->_colorCount = 3.0;
  }

  return result;
}

- (void)p_teardown
{
  motionBlurMetalEffect = self->_motionBlurMetalEffect;
  self->_motionBlurMetalEffect = 0;

  metalShader = self->_metalShader;
  self->_metalShader = 0;
}

+ (id)defaultAttributes
{
  v4 = @"KNTransitionAttributesDuration";
  v5 = &off_49CF40;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (CATransform3D)p_mvpMatrixWithTexture:(SEL)texture direction:(id)direction percent:(unint64_t)percent colorIndex:(double)index
{
  v7 = a7;
  directionCopy = direction;
  TSUReverseSquare();
  v13 = v12;
  [directionCopy size];
  v15 = v14;
  v17 = v16;
  TSUSineMap();
  v19 = v18;
  TSUSineMap();
  v21 = v20;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
  }

  else
  {
    memset(&v83, 0, sizeof(v83));
  }

  v23 = percent - 11;
  v24 = sin(v13 * -2.0 * 3.14159265);
  [directionCopy offset];
  v26 = v25;
  [directionCopy offset];
  CATransform3DTranslate(retstr, &v83, v26, v27, 0.0);
  v28 = 1.0;
  if ((percent & 0xFFFFFFFFFFFFFFFDLL) == 0xC)
  {
    v28 = -1.0;
  }

  if (v23 >= 2)
  {
    v29 = v17;
  }

  else
  {
    v29 = v15;
  }

  v30 = v21 * 180.0 * 0.0174532925;
  v31 = v13 * v24 * v29;
  v32 = *&retstr->m33;
  *&v82.m31 = *&retstr->m31;
  *&v82.m33 = v32;
  v33 = v29 * v19 * 0.25;
  v34 = *&retstr->m43;
  *&v82.m41 = *&retstr->m41;
  *&v82.m43 = v34;
  v35 = *&retstr->m13;
  *&v82.m11 = *&retstr->m11;
  *&v82.m13 = v35;
  v36 = *&retstr->m23;
  *&v82.m21 = *&retstr->m21;
  *&v82.m23 = v36;
  if (v23 >= 2)
  {
    v37 = v28;
  }

  else
  {
    v37 = 0.0;
  }

  if (v23 >= 2)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v28;
  }

  CATransform3DTranslate(&v83, &v82, 0.0, 0.0, v31);
  v39 = *&v83.m33;
  *&retstr->m31 = *&v83.m31;
  *&retstr->m33 = v39;
  v40 = *&v83.m43;
  *&retstr->m41 = *&v83.m41;
  *&retstr->m43 = v40;
  v41 = *&v83.m13;
  *&retstr->m11 = *&v83.m11;
  *&retstr->m13 = v41;
  v42 = *&v83.m23;
  *&retstr->m21 = *&v83.m21;
  *&retstr->m23 = v42;
  [directionCopy size];
  v44 = v43 * 0.5;
  [directionCopy size];
  v46 = *&retstr->m33;
  *&v82.m31 = *&retstr->m31;
  *&v82.m33 = v46;
  v47 = *&retstr->m43;
  *&v82.m41 = *&retstr->m41;
  *&v82.m43 = v47;
  v48 = *&retstr->m13;
  *&v82.m11 = *&retstr->m11;
  *&v82.m13 = v48;
  v49 = *&retstr->m23;
  *&v82.m21 = *&retstr->m21;
  *&v82.m23 = v49;
  CATransform3DTranslate(&v83, &v82, v44, v45 * 0.5, 0.0);
  v50 = *&v83.m33;
  *&retstr->m31 = *&v83.m31;
  *&retstr->m33 = v50;
  v51 = *&v83.m43;
  *&retstr->m41 = *&v83.m41;
  *&retstr->m43 = v51;
  v52 = *&v83.m13;
  *&retstr->m11 = *&v83.m11;
  *&retstr->m13 = v52;
  v53 = *&v83.m23;
  *&retstr->m21 = *&v83.m21;
  *&retstr->m23 = v53;
  v54 = *&retstr->m33;
  *&v82.m31 = *&retstr->m31;
  *&v82.m33 = v54;
  v55 = *&retstr->m43;
  *&v82.m41 = *&retstr->m41;
  *&v82.m43 = v55;
  v56 = *&retstr->m13;
  *&v82.m11 = *&retstr->m11;
  *&v82.m13 = v56;
  v57 = *&retstr->m23;
  *&v82.m21 = *&retstr->m21;
  *&v82.m23 = v57;
  CATransform3DRotate(&v83, &v82, v30, v37, v38, 0.0);
  v58 = *&v83.m33;
  *&retstr->m31 = *&v83.m31;
  *&retstr->m33 = v58;
  v59 = *&v83.m43;
  *&retstr->m41 = *&v83.m41;
  *&retstr->m43 = v59;
  v60 = *&v83.m13;
  *&retstr->m11 = *&v83.m11;
  *&retstr->m13 = v60;
  v61 = *&v83.m23;
  *&retstr->m21 = *&v83.m21;
  *&retstr->m23 = v61;
  v62 = *&retstr->m33;
  *&v82.m31 = *&retstr->m31;
  *&v82.m33 = v62;
  v63 = *&retstr->m43;
  *&v82.m41 = *&retstr->m41;
  *&v82.m43 = v63;
  v64 = *&retstr->m13;
  *&v82.m11 = *&retstr->m11;
  *&v82.m13 = v64;
  v65 = *&retstr->m23;
  *&v82.m21 = *&retstr->m21;
  *&v82.m23 = v65;
  CATransform3DTranslate(&v83, &v82, 0.0, 0.0, v33 * (v7 - 1));
  v66 = *&v83.m33;
  *&retstr->m31 = *&v83.m31;
  *&retstr->m33 = v66;
  v67 = *&v83.m43;
  *&retstr->m41 = *&v83.m41;
  *&retstr->m43 = v67;
  v68 = *&v83.m13;
  *&retstr->m11 = *&v83.m11;
  *&retstr->m13 = v68;
  v69 = *&v83.m23;
  *&retstr->m21 = *&v83.m21;
  *&retstr->m23 = v69;
  [directionCopy size];
  v71 = v70 * -0.5;
  [directionCopy size];
  v73 = *&retstr->m33;
  *&v82.m31 = *&retstr->m31;
  *&v82.m33 = v73;
  v74 = *&retstr->m43;
  *&v82.m41 = *&retstr->m41;
  *&v82.m43 = v74;
  v75 = *&retstr->m13;
  *&v82.m11 = *&retstr->m11;
  *&v82.m13 = v75;
  v76 = *&retstr->m23;
  *&v82.m21 = *&retstr->m21;
  *&v82.m23 = v76;
  CATransform3DTranslate(&v83, &v82, v71, v72 * -0.5, 0.0);
  v77 = *&v83.m33;
  *&retstr->m31 = *&v83.m31;
  *&retstr->m33 = v77;
  v78 = *&v83.m43;
  *&retstr->m41 = *&v83.m41;
  *&retstr->m43 = v78;
  v79 = *&v83.m13;
  *&retstr->m11 = *&v83.m11;
  *&retstr->m13 = v79;
  v80 = *&v83.m23;
  *&retstr->m21 = *&v83.m21;
  *&retstr->m23 = v80;

  return result;
}

- (void)p_drawWithMetalContext:(id)context renderEncoder:(id)encoder
{
  contextCopy = context;
  encoderCopy = encoder;
  metalContext = [contextCopy metalContext];
  currentBuffer = [metalContext currentBuffer];

  textures = [contextCopy textures];
  direction = [contextCopy direction];
  [contextCopy percent];
  v12 = v11;
  v13 = [textures objectAtIndexedSubscript:1];
  v42 = textures;
  v14 = [textures objectAtIndexedSubscript:0];
  metalContext2 = [contextCopy metalContext];
  v16 = [v13 metalTextureWithContext:metalContext2];

  metalContext3 = [contextCopy metalContext];
  v44 = [v14 metalTextureWithContext:metalContext3];

  v43 = v16;
  if (v16 && v44)
  {
    v18 = vbic_s8(vbsl_s8(vcgtd_u64(2uLL, direction - 13), 0x3F80000000000000, 1065353216), vcgtd_f64(0.5, v12));
    v19 = v12 >= 0.5 ? v16 : v44;
    [encoderCopy setFragmentTexture:v19 atIndex:0];
    *(&self[3].super.mAnimationContext + 20 * currentBuffer) = v18;
    colorCount = self->_colorCount;
    if (colorCount > 0.0)
    {
      v21 = 0;
      v22 = &self[1] + 10 * currentBuffer;
      v23 = 0.0;
      v24 = &selRef_navigationBar_didPopItem_;
      do
      {
        colorCount = [TSUColor colorWithHue:v23 / colorCount saturation:1.0 brightness:1.0 alpha:1.0 / colorCount];
        [colorCount redComponent];
        v48 = v26;
        [colorCount greenComponent];
        v47 = v27;
        [colorCount blueComponent];
        v46 = v28;
        [colorCount alphaComponent];
        v29.f64[0] = v46;
        v29.f64[1] = v30;
        v31.f64[0] = v48;
        v31.f64[1] = v47;
        v22[9] = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v29);
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        [(KNTransitionColorPlanes *)self p_mvpMatrixWithTexture:v13 direction:direction percent:v21 colorIndex:v12];
        if ([contextCopy isMotionBlurred])
        {
          [(TSDMetalMotionBlurEffect *)self->_motionBlurMetalEffect velocityScale];
          v33.f64[1] = v32;
          *v22[8].f32 = vcvt_f32_f64(v33);
          motionBlurMetalEffect = self->_motionBlurMetalEffect;
          if (motionBlurMetalEffect)
          {
            v54 = v70;
            v55 = v71;
            v56 = v72;
            v57 = v73;
            v50 = v66;
            v51 = v67;
            v52 = v68;
            v53 = v69;
            [(TSDMetalMotionBlurEffect *)motionBlurMetalEffect adjustTransformForMotionBlurBuffer:&v50];
          }

          else
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
          }

          v70 = v62;
          v71 = v63;
          v72 = v64;
          v73 = v65;
          v66 = v58;
          v67 = v59;
          v68 = v60;
          v69 = v61;
          [contextCopy duration];
          TSUClamp();
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          [(KNTransitionColorPlanes *)self p_mvpMatrixWithTexture:v13 direction:direction percent:v21 colorIndex:?];
          v35 = self->_motionBlurMetalEffect;
          if (v35)
          {
            v49[4] = v62;
            v49[5] = v63;
            v49[6] = v64;
            v49[7] = v65;
            v49[0] = v58;
            v49[1] = v59;
            v49[2] = v60;
            v49[3] = v61;
            [(TSDMetalMotionBlurEffect *)v35 adjustTransformForMotionBlurBuffer:v49];
          }

          else
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
          }

          v58 = v50;
          v59 = v51;
          v64 = v56;
          v65 = v57;
          v62 = v54;
          v63 = v55;
          v60 = v52;
          v61 = v53;
          v36 = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v53);
          v37 = vcvt_hight_f32_f64(vcvt_f32_f64(v54), v55);
          v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v56), v57);
          v22[4] = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v51);
          v22[5] = v36;
          v22[6] = v37;
          v22[7] = v38;
          v24 = &selRef_navigationBar_didPopItem_;
        }

        v39 = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
        v40 = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
        v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
        *v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v67);
        v22[1] = v39;
        v22[2] = v40;
        v22[3] = v41;
        [encoderCopy setVertexBytes:v22 length:160 atIndex:1];
        [(TSDMetalShader *)self->_metalShader setPipelineStateWithEncoder:encoderCopy vertexBytes:v22];
        [*(&self->super.super.isa + *(v24 + 954)) drawWithEncoder:encoderCopy atIndex:0];

        v23 = ++v21;
        colorCount = self->_colorCount;
      }

      while (colorCount > v21);
    }
  }
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  v5 = [textures objectAtIndexedSubscript:0];
  metalContext = [contextCopy metalContext];
  device = [metalContext device];

  metalContext2 = [contextCopy metalContext];
  pixelFormat = [metalContext2 pixelFormat];

  v10 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v10 setPixelFormat:pixelFormat];
  [v10 setBlendingEnabled:1];
  [v10 setDestinationRGBBlendFactor:1];
  [v10 setDestinationAlphaBlendFactor:1];
  v11 = 0;
  if ([contextCopy isMotionBlurred])
  {
    v11 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v11 setPixelFormat:pixelFormat];
    [v11 setDestinationRGBBlendFactor:1];
    [v11 setDestinationAlphaBlendFactor:5];
    v12 = [TSDMetalMotionBlurEffect alloc];
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v14 = v13;
    v16 = v15;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v18 = v17;
    v20 = v19;
    randomGenerator = [contextCopy randomGenerator];
    metalContext3 = [contextCopy metalContext];
    v23 = [v12 initWithFramebufferSize:randomGenerator slideSize:metalContext3 randomGenerator:v14 metalContext:{v16, v18, v20}];
    motionBlurMetalEffect = self->_motionBlurMetalEffect;
    self->_motionBlurMetalEffect = v23;
  }

  isMotionBlurred = [contextCopy isMotionBlurred];
  v26 = @"transitionColorPlanesVertexShader";
  if (isMotionBlurred)
  {
    v26 = @"transitionColorPlanesMBVertexShader";
  }

  v27 = v26;
  isMotionBlurred2 = [contextCopy isMotionBlurred];
  v29 = @"transitionColorPlanesFragmentShader";
  if (isMotionBlurred2)
  {
    v29 = @"transitionColorPlanesMBFragmentShader";
  }

  v30 = v29;
  v31 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:v27 fragmentShader:v30 device:device library:@"KeynoteMetalLibrary" colorAttachment:v10 velocityAttachment:v11];

  metalShader = self->_metalShader;
  self->_metalShader = v31;

  [v5 size];
  TSDRectWithSize();
  v33 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:device device:?];
  metalColorDataBuffer = self->_metalColorDataBuffer;
  self->_metalColorDataBuffer = v33;
}

- (void)renderFrameWithContext:(id)context
{
  contextCopy = context;
  metalContext = [contextCopy metalContext];
  renderEncoder = [metalContext renderEncoder];
  if (!renderEncoder)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[KNTransitionColorPlanes renderFrameWithContext:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionColorPlanes.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:294 description:{@"invalid nil value for '%s'", "workingEncoder"}];
  }

  if ([contextCopy isMotionBlurred])
  {
    motionBlurMetalEffect = self->_motionBlurMetalEffect;
    metalContext2 = [contextCopy metalContext];
    v11 = [(TSDMetalMotionBlurEffect *)motionBlurMetalEffect bindColorAndVelocityWithMetalContext:metalContext2 shouldFillBackground:0];

    renderEncoder = v11;
  }

  [(KNTransitionColorPlanes *)self p_drawWithMetalContext:contextCopy renderEncoder:renderEncoder];
  if ([contextCopy isMotionBlurred])
  {
    v12 = self->_motionBlurMetalEffect;
    renderEncoder2 = [metalContext renderEncoder];
    [(TSDMetalMotionBlurEffect *)v12 drawResultWithWorkingRenderEncoder:renderEncoder destinationRenderEncoder:renderEncoder2];
  }
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  if (type == 3 && version <= 0x174876E7FFLL && classic)
  {
    v10 = [*attributes mutableCopy];
    *attributes = v10;
  }
}

@end