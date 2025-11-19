@interface KNTransitionPageFlip
+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8;
+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8;
- (KNTransitionPageFlip)initWithAnimationContext:(id)a3;
- (void)animationWillBeginWithContext:(id)a3;
- (void)createArrays:(id)a3 context:(id)a4 device:(id)a5;
- (void)p_drawFlipWithPercent:(double)a3 currentBuffer:(unint64_t)a4 texture:(id)a5 encoder:(id)a6 isMotionBlurred:(BOOL)a7 isUpdating:(BOOL)a8;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)a3;
- (void)update:(id)a3 withContext:(id)a4 isUpdating:(BOOL)a5;
@end

@implementation KNTransitionPageFlip

- (KNTransitionPageFlip)initWithAnimationContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = KNTransitionPageFlip;
  result = [(KNAnimationEffect *)&v4 initWithAnimationContext:a3];
  if (result)
  {
    result->_numPoints = 30;
  }

  return result;
}

- (void)p_teardown
{
  dataBufferAttributes = self->_dataBufferAttributes;
  self->_dataBufferAttributes = 0;

  motionBlurMetalEffect = self->_motionBlurMetalEffect;
  self->_motionBlurMetalEffect = 0;

  pageFlipMetalShader = self->_pageFlipMetalShader;
  self->_pageFlipMetalShader = 0;

  quadMetalShader = self->_quadMetalShader;
  self->_quadMetalShader = 0;

  pageFlipMetalDataBuffer = self->_pageFlipMetalDataBuffer;
  self->_pageFlipMetalDataBuffer = 0;

  quadMetalDatabuffer = self->_quadMetalDatabuffer;
  self->_quadMetalDatabuffer = 0;
}

- (void)createArrays:(id)a3 context:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (self->_pageFlipMetalDataBuffer)
    {
      goto LABEL_13;
    }

    v11 = 35048;
  }

  else
  {
    v11 = 35044;
  }

  v37 = v8;
  v12 = +[NSMutableArray array];
  v13 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
  [v12 addObject:v13];
  v14 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeTexCoord bufferUsage:v11 dataType:3 normalized:1 componentCount:2];
  [v12 addObject:v14];
  v15 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeNormal bufferUsage:35048 dataType:3 normalized:1 componentCount:3];
  [v12 addObject:v15];
  if ([v9 isMotionBlurred])
  {
    v16 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePreviousPosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
    [v12 addObject:v16];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v12 copy];
  dataBufferAttributes = self->_dataBufferAttributes;
  self->_dataBufferAttributes = v17;

  v41 = v13;
  self->_positionAttributeIndex = [(NSArray *)self->_dataBufferAttributes indexOfObject:v13];
  v39 = v15;
  self->_normalAttributeIndex = [(NSArray *)self->_dataBufferAttributes indexOfObject:v15];
  v40 = v14;
  self->_texCoordAttributeIndex = [(NSArray *)self->_dataBufferAttributes indexOfObject:v14];
  v38 = v16;
  self->_prevPositionAttributeIndex = [(NSArray *)self->_dataBufferAttributes indexOfObject:v16];
  v19 = &OBJC_IVAR___THWReviewInfo__progressKitID;
  v8 = v37;
  if (v10)
  {
    v20 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_dataBufferAttributes meshSize:v10 device:self->_numPoints, self->_numPoints];
    pageFlipMetalDataBuffer = self->_pageFlipMetalDataBuffer;
    self->_pageFlipMetalDataBuffer = v20;

    [v37 size];
    TSDRectWithSize();
    v19 = &OBJC_IVAR___THWReviewInfo__progressKitID;
    v22 = [TSDGPUDataBuffer newDataBufferWithVertexRect:"newDataBufferWithVertexRect:textureRect:device:" textureRect:v10 device:?];
    quadMetalDatabuffer = self->_quadMetalDatabuffer;
    self->_quadMetalDatabuffer = v22;
  }

  [v37 size];
  v25 = v24;
  [v37 size];
  v27 = v26;
  v28 = *(&self->super.super.isa + v19[665]);
  v29 = (v28 - 1);
  v30 = v25 / v29;
  v31 = v26 / v29;
  positionAttributeIndex = self->_positionAttributeIndex;
  texCoordAttributeIndex = self->_texCoordAttributeIndex;
  normalAttributeIndex = self->_normalAttributeIndex;
  prevPositionAttributeIndex = self->_prevPositionAttributeIndex;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1D2500;
  v42[3] = &unk_45F1C8;
  v42[4] = positionAttributeIndex;
  v42[5] = texCoordAttributeIndex;
  v43 = [v9 isMotionBlurred];
  v42[6] = normalAttributeIndex;
  v42[7] = prevPositionAttributeIndex;
  v42[8] = v28;
  *&v42[9] = v30;
  *&v42[10] = v31;
  *&v42[11] = v25;
  *&v42[12] = v27;
  v36 = objc_retainBlock(v42);
  if (v10)
  {
    [(TSDMTLDataBuffer *)self->_pageFlipMetalDataBuffer updateMetalDataBufferAttributes:self->_dataBufferAttributes withBlock:v36];
  }

LABEL_13:
}

- (void)update:(id)a3 withContext:(id)a4 isUpdating:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  [v8 percent];
  v11 = v10;
  v12 = [v8 direction];
  numPoints = self->_numPoints;
  v14 = (v11 + sin((v11 + -1.0) * 3.14159265 * 0.5) + 1.0) * 0.5;
  v15 = 1.0 - v14;
  if (v12 == &dword_C + 1)
  {
    v16 = 1.57079633;
    goto LABEL_5;
  }

  if (v12 == &dword_C + 2)
  {
    v16 = -1.57079633;
LABEL_5:
    v17 = v16 + v15 * 0.785398163;
    goto LABEL_7;
  }

  v17 = v15 * -0.785398163;
LABEL_7:
  v18 = fmax(v14 * -0.200000003 * 2.0 + 0.5, 0.200000003);
  if (v14 * 6.28318531 <= 3.14159265)
  {
    v19 = v14 * 6.28318531;
  }

  else
  {
    v19 = 3.14159265;
  }

  v33 = (v14 * -2.0 + 1.0) * 1.2;
  v20 = __sincos_stret(v17);
  v21 = __sincos_stret(v19);
  v22 = v19 * v18;
  [v9 size];
  v24 = v23;
  [v9 size];
  v26 = v25;

  v27 = v12 == &dword_8 + 3;
  positionAttributeIndex = self->_positionAttributeIndex;
  normalAttributeIndex = self->_normalAttributeIndex;
  texCoordAttributeIndex = self->_texCoordAttributeIndex;
  prevPositionAttributeIndex = self->_prevPositionAttributeIndex;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1D2A3C;
  v34[3] = &unk_45F1E8;
  v34[4] = positionAttributeIndex;
  v34[5] = normalAttributeIndex;
  v35 = [v8 isMotionBlurred];
  v34[6] = prevPositionAttributeIndex;
  v34[7] = numPoints;
  v36 = v27;
  v34[8] = *&v20.__cosval;
  v34[9] = *&v20.__sinval;
  *&v34[10] = v33;
  *&v34[11] = v22;
  *&v34[12] = 1.0 / v18;
  *&v34[13] = v18;
  *&v34[14] = v18 * (1.0 - v21.__cosval);
  v34[15] = *&v21.__sinval;
  *&v34[16] = v18 * v21.__sinval;
  v34[17] = *&v21.__cosval;
  v34[18] = v26;
  v34[19] = v24;
  *&v34[20] = v11;
  v37 = a5;
  v34[21] = texCoordAttributeIndex;
  v32 = objc_retainBlock(v34);
  [(TSDMTLDataBuffer *)self->_pageFlipMetalDataBuffer updateMetalDataBufferAttributes:self->_dataBufferAttributes withBlock:v32];
}

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  v55 = [v4 textures];
  v5 = [v55 lastObject];
  v6 = [v4 metalContext];
  v56 = [v6 device];
  if ([v4 isMotionBlurred])
  {
    v7 = [TSDMetalMotionBlurEffect alloc];
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v9 = v8;
    v11 = v10;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v13 = v12;
    v15 = v14;
    v16 = [v4 randomGenerator];
    v17 = [v4 metalContext];
    v18 = [v7 initWithFramebufferSize:v16 slideSize:v17 randomGenerator:v9 metalContext:{v11, v13, v15}];
    motionBlurMetalEffect = self->_motionBlurMetalEffect;
    self->_motionBlurMetalEffect = v18;

    [(TSDMetalMotionBlurEffect *)self->_motionBlurMetalEffect setIsSingleObject:1];
  }

  v20 = v5;
  v21 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v21 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  v22 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:v56 colorAttachment:v21];
  quadMetalShader = self->_quadMetalShader;
  self->_quadMetalShader = v22;

  [v21 setBlendingEnabled:1];
  [v21 setSourceAlphaBlendFactor:4];
  [v21 setSourceRGBBlendFactor:4];
  [v21 setDestinationRGBBlendFactor:5];
  [v21 setDestinationAlphaBlendFactor:5];
  if ([v4 isMotionBlurred])
  {
    v24 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v24 setPixelFormat:objc_msgSend(v6, "pixelFormat")];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v4 isMotionBlurred];
  v26 = @"transitionPageFlipVertexShader";
  if (v25)
  {
    v26 = @"transitionPageFlipMBVertexShader";
  }

  v27 = v26;
  v28 = [v4 isMotionBlurred];
  v29 = @"transitionPageFlipFragmentShader";
  if (v28)
  {
    v29 = @"transitionPageFlipMBFragmentShader";
  }

  v30 = v29;
  v31 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:v27 fragmentShader:v30 device:v56 library:@"KeynoteMetalLibrary" colorAttachment:v21 velocityAttachment:v24];
  pageFlipMetalShader = self->_pageFlipMetalShader;
  self->_pageFlipMetalShader = v31;

  [(KNTransitionPageFlip *)self createArrays:v20 context:v4 device:v56];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
  }

  if ([v4 isMotionBlurred])
  {
    v34 = self->_motionBlurMetalEffect;
    if (v34)
    {
      v57[4] = v70;
      v57[5] = v71;
      v57[6] = v72;
      v57[7] = v73;
      v57[0] = v66;
      v57[1] = v67;
      v57[2] = v68;
      v57[3] = v69;
      [(TSDMetalMotionBlurEffect *)v34 adjustTransformForMotionBlurBuffer:v57];
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
  }

  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v67);
  v36 = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
  v37 = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
  v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
  v39 = *&CGAffineTransformIdentity.a;
  v46 = *&CGAffineTransformIdentity.c;
  *&v39 = vcvt_f32_f64(*&CGAffineTransformIdentity.a);
  v40 = vcvt_f32_f64(*&CGAffineTransformIdentity.tx);
  __asm { FMOV            V5.4S, #1.0 }

  *&v46.f64[0] = vcvt_f32_f64(v46);
  v47 = &self->_anon_60[64];
  v48 = 3;
  do
  {
    *(v47 - 4) = v35;
    *(v47 - 3) = v36;
    *(v47 - 2) = v37;
    *(v47 - 1) = v38;
    *(v47 + 2) = DWORD2(v39);
    *v47 = v39;
    *(v47 + 3) = 0;
    *(v47 + 6) = LODWORD(v46.f64[1]);
    *(v47 + 2) = *&v46.f64[0];
    *(v47 + 7) = 0;
    v49 = v47 + 40;
    *(v47 + 4) = v40;
    *(v47 + 11) = 0;
    v47 += 128;
    *v49 = DWORD2(_Q5);
    --v48;
  }

  while (v48);
  v50 = self->super.mAnimationContext;
  if (v50)
  {
    [(KNAnimationContext *)v50 slideProjectionMatrix];
    v51 = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v65);
    v52 = vcvt_hight_f32_f64(vcvt_f32_f64(v62), v63);
    v53 = vcvt_hight_f32_f64(vcvt_f32_f64(v60), v61);
    v54 = vcvt_hight_f32_f64(vcvt_f32_f64(v58), v59);
  }

  else
  {
    v54 = 0uLL;
    v53 = 0uLL;
    v52 = 0uLL;
    v51 = 0uLL;
  }

  *&self->_anon_1f0[4] = v54;
  *&self->_anon_1f0[20] = v53;
  *&self->_anon_1f0[36] = v52;
  *&self->_anon_1f0[52] = v51;
}

- (void)p_drawFlipWithPercent:(double)a3 currentBuffer:(unint64_t)a4 texture:(id)a5 encoder:(id)a6 isMotionBlurred:(BOOL)a7 isUpdating:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a6;
  v20 = v14;
  v15 = (a3 + -0.75) * -4.0 + 1.0;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  v16 = v15;
  self->_fragmentInput[a4].Opacity = v16;
  [v14 setFragmentTexture:a5 atIndex:0];
  [v20 setCullMode:2];
  v17 = &self->_anon_60[128 * a4];
  v17[15] = 0xBF80000000000000;
  if (v9)
  {
    [(TSDMetalMotionBlurEffect *)self->_motionBlurMetalEffect velocityScale];
    v19.f64[1] = v18;
    v17[14] = vcvt_f32_f64(v19);
  }

  [(TSDMetalShader *)self->_pageFlipMetalShader setPipelineStateWithEncoder:v20 vertexBytes:&self->_anon_60[128 * a4] fragmentBytes:&self->_fragmentInput[a4]];
  [(TSDMTLDataBuffer *)self->_pageFlipMetalDataBuffer drawWithEncoder:v20 atIndex:0 advanceDynamicBuffer:0];
  [v20 setCullMode:1];
  v17[15] = 0x3F8000003A83126FLL;
  [v20 setVertexBytes:&self->_anon_60[128 * a4] length:128 atIndex:1];
  [(TSDMTLDataBuffer *)self->_pageFlipMetalDataBuffer drawWithEncoder:v20 atIndex:0 advanceDynamicBuffer:v8];
}

- (void)renderFrameWithContext:(id)a3
{
  v27 = a3;
  v4 = [v27 textures];
  v5 = [v27 metalContext];
  v6 = [v5 renderEncoder];
  if (!v6)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[KNTransitionPageFlip renderFrameWithContext:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionPageFlip.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:536 description:{@"invalid nil value for '%s'", "workingEncoder"}];
  }

  v10 = [v4 lastObject];
  v11 = [v10 metalTextureWithContext:v5];

  v12 = [v4 firstObject];
  v13 = [v12 metalTextureWithContext:v5];

  if (v11 && v13)
  {
    [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:v6 vertexBytes:&self->_anon_1f0[4]];
    [v6 setFragmentTexture:v11 atIndex:0];
    [(TSDMTLDataBuffer *)self->_quadMetalDatabuffer drawWithEncoder:v6 atIndex:0];
    if ([v27 isMotionBlurred])
    {
      motionBlurMetalEffect = self->_motionBlurMetalEffect;
      v15 = [v27 metalContext];
      v16 = [(TSDMetalMotionBlurEffect *)motionBlurMetalEffect bindColorAndVelocityWithMetalContext:v15 shouldFillBackground:0];

      v6 = v16;
    }

    [v27 percent];
    if (v17 == self->_lastUpdatePercent)
    {
      [v27 percent];
      v18 = v19 == 0.0;
    }

    else
    {
      v18 = 1;
    }

    [v27 percent];
    self->_lastUpdatePercent = v20;
    v21 = [v4 lastObject];
    [(KNTransitionPageFlip *)self update:v21 withContext:v27 isUpdating:v18];

    [v27 percent];
    v23 = v22;
    v24 = [v27 metalContext];
    -[KNTransitionPageFlip p_drawFlipWithPercent:currentBuffer:texture:encoder:isMotionBlurred:isUpdating:](self, "p_drawFlipWithPercent:currentBuffer:texture:encoder:isMotionBlurred:isUpdating:", [v24 currentBuffer], v13, v6, objc_msgSend(v27, "isMotionBlurred"), v18, v23);

    if ([v27 isMotionBlurred])
    {
      v25 = self->_motionBlurMetalEffect;
      v26 = [v5 renderEncoder];
      [(TSDMetalMotionBlurEffect *)v25 drawResultWithWorkingRenderEncoder:v6 destinationRenderEncoder:v26];
    }
  }
}

+ (void)upgradeAttributes:(id *)a3 animationName:(id)a4 warning:(id *)a5 type:(int)a6 isFromClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a6 == 3 && a8 <= 0x174876E7FFLL && a7)
  {
    v9 = [*a3 objectForKeyedSubscript:{@"KNTransitionAttributesDirection", a4, a5}];

    if (v9)
    {
      v10 = [*a3 objectForKeyedSubscript:@"KNTransitionAttributesDirection"];
      v11 = [v10 unsignedIntegerValue];

      if ((v11 - 1) > 3)
      {
        v12 = 12;
      }

      else
      {
        v12 = qword_34B4C0[(v11 - 1)];
      }

      v15 = [*a3 mutableCopy];
      v13 = [NSNumber numberWithUnsignedInteger:v12];
      [v15 setObject:v13 forKeyedSubscript:@"KNTransitionAttributesDirection"];

      v14 = v15;
      *a3 = v15;
    }
  }
}

+ (void)downgradeAttributes:(id *)a3 animationName:(id *)a4 warning:(id *)a5 type:(int)a6 isToClassic:(BOOL)a7 version:(unint64_t)a8
{
  if (a6 == 3 && a8 <= 0x174876E7FFLL && a7)
  {
    v9 = [*a3 objectForKeyedSubscript:{@"direction", a4, a5}];

    if (v9)
    {
      v10 = [*a3 objectForKeyedSubscript:@"direction"];
      v11 = [v10 unsignedIntegerValue];

      if ((v11 - 11) > 3)
      {
        v12 = 1;
      }

      else
      {
        v12 = qword_34B4E0[(v11 - 11)];
      }

      v15 = [*a3 mutableCopy];
      v13 = [NSNumber numberWithUnsignedInteger:v12];
      [v15 setObject:v13 forKeyedSubscript:@"direction"];

      v14 = v15;
      *a3 = v15;
    }
  }
}

@end