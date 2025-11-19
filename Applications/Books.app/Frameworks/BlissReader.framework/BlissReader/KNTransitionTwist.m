@interface KNTransitionTwist
- (KNTransitionTwist)initWithAnimationContext:(id)a3;
- (double)fx:(double)a3 withPercent:(double)a4;
- (void)animationWillBeginWithContext:(id)a3;
- (void)createArrays:(id)a3 context:(id)a4 device:(id)a5;
- (void)drawGrid:(id)a3 encoder:(id)a4 currentBuffer:(unint64_t)a5 advanceDynamicBuffer:(BOOL)a6;
- (void)p_drawTwistWithPercent:(double)a3 currentBuffer:(unint64_t)a4 texture:(id)a5 oldTexture:(id)a6 encoder:(id)a7 isMotionBlurred:(BOOL)a8 isUpdating:(BOOL)a9;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)a3;
- (void)update:(id)a3 withContext:(id)a4 isUpdating:(BOOL)a5;
@end

@implementation KNTransitionTwist

- (KNTransitionTwist)initWithAnimationContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = KNTransitionTwist;
  result = [(KNAnimationEffect *)&v4 initWithAnimationContext:a3];
  if (result)
  {
    result->_numPoints = 19;
  }

  return result;
}

- (void)p_teardown
{
  metalDataBuffer = self->_metalDataBuffer;
  self->_metalDataBuffer = 0;

  metalShader = self->_metalShader;
  self->_metalShader = 0;
}

- (void)createArrays:(id)a3 context:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (self->_metalDataBuffer)
    {
      goto LABEL_12;
    }

    v11 = 35048;
  }

  else
  {
    v11 = 35044;
  }

  v12 = +[NSMutableArray array];
  v13 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
  [v12 addObject:v13];
  self->_positionAttributeIndex = [v12 indexOfObject:v13];

  v14 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeTexCoord bufferUsage:v11 dataType:3 normalized:1 componentCount:2];
  [v12 addObject:v14];
  self->_texCoordAttributeIndex = [v12 indexOfObject:v14];

  v15 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeNormal bufferUsage:35048 dataType:3 normalized:1 componentCount:3];
  [v12 addObject:v15];
  self->_normalAttributeIndex = [v12 indexOfObject:v15];

  if ([v9 isMotionBlurred])
  {
    v16 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePreviousPosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
    [v12 addObject:v16];
    self->_prevPositionAttributeIndex = [v12 indexOfObject:v16];
  }

  v17 = [[NSArray alloc] initWithArray:v12];
  bufferAttributes = self->_bufferAttributes;
  self->_bufferAttributes = v17;

  if (v10)
  {
    v19 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_bufferAttributes meshSize:v10 device:self->_numPoints, self->_numPoints];
    metalDataBuffer = self->_metalDataBuffer;
    self->_metalDataBuffer = v19;
  }

  [v8 size];
  v22 = v21;
  v23 = v8;
  [v8 size];
  numPoints = self->_numPoints;
  v25 = (numPoints - 1);
  v26 = v22 / v25;
  v28 = v27 / v25;
  positionAttributeIndex = self->_positionAttributeIndex;
  texCoordAttributeIndex = self->_texCoordAttributeIndex;
  normalAttributeIndex = self->_normalAttributeIndex;
  prevPositionAttributeIndex = self->_prevPositionAttributeIndex;
  v33 = 1.0 / v25;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_262EC;
  v36[3] = &unk_45B5F8;
  v36[4] = positionAttributeIndex;
  v36[5] = texCoordAttributeIndex;
  v37 = [v35 isMotionBlurred];
  v36[6] = normalAttributeIndex;
  v36[7] = prevPositionAttributeIndex;
  v36[8] = numPoints;
  *&v36[9] = v26;
  *&v36[10] = v28;
  *&v36[11] = v33;
  v34 = objc_retainBlock(v36);
  if (v10)
  {
    [(TSDMTLDataBuffer *)self->_metalDataBuffer updateMetalDataBufferAttributes:self->_bufferAttributes withBlock:v34];
  }

  v8 = v23;
  v9 = v35;
LABEL_12:
}

- (void)drawGrid:(id)a3 encoder:(id)a4 currentBuffer:(unint64_t)a5 advanceDynamicBuffer:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  [v10 setFragmentTexture:a3 atIndex:0];
  [v10 setVertexBytes:&self[1] + 128 * a5 length:128 atIndex:1];
  [(TSDMTLDataBuffer *)self->_metalDataBuffer drawWithEncoder:v10 atIndex:0 advanceDynamicBuffer:v6];
}

- (double)fx:(double)a3 withPercent:(double)a4
{
  v4 = (self->_twistyness + -1.0) / 9.0 + 0.25;
  v5 = (v4 + 1.0) * a4 - v4 * a3;
  v6 = 0.0;
  if (v5 < 0.0)
  {
    return v6;
  }

  v6 = 1.0;
  if (v5 > 1.0)
  {
    return v6;
  }

  TSUSineMap();
  return result;
}

- (void)update:(id)a3 withContext:(id)a4 isUpdating:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  [v8 percent];
  v11 = v10;
  v12 = [v8 direction];
  [v9 size];
  v14 = v13;

  numPoints = self->_numPoints;
  positionAttributeIndex = self->_positionAttributeIndex;
  texCoordAttributeIndex = self->_texCoordAttributeIndex;
  normalAttributeIndex = self->_normalAttributeIndex;
  prevPositionAttributeIndex = self->_prevPositionAttributeIndex;
  LOBYTE(v9) = [v8 isMotionBlurred];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_267C8;
  v21[3] = &unk_45B620;
  v21[6] = texCoordAttributeIndex;
  v21[7] = normalAttributeIndex;
  v22 = v9;
  v21[8] = prevPositionAttributeIndex;
  v21[9] = numPoints;
  v21[4] = self;
  v21[5] = positionAttributeIndex;
  v23 = v12 == &dword_8 + 3;
  v21[10] = v11;
  *&v21[11] = v14 * 0.5;
  v24 = a5;
  v20 = objc_retainBlock(v21);
  [(TSDMTLDataBuffer *)self->_metalDataBuffer updateMetalDataBufferAttributes:self->_bufferAttributes withBlock:v20];
}

- (void)p_drawTwistWithPercent:(double)a3 currentBuffer:(unint64_t)a4 texture:(id)a5 oldTexture:(id)a6 encoder:(id)a7 isMotionBlurred:(BOOL)a8 isUpdating:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeScale(&v41, 1.0, -1.0);
  v39 = v41;
  CGAffineTransformTranslate(&v40, &v39, 0.0, -1.0);
  v41 = v40;
  v18 = *&v40.a;
  v19 = *&v40.c;
  v20 = *&v40.tx;
  v21 = *&CGAffineTransformIdentity.a;
  v22 = *&CGAffineTransformIdentity.c;
  v23 = *&CGAffineTransformIdentity.tx;
  if (v10)
  {
    v35 = *&v41.c;
    v37 = *&v40.a;
    v31 = *&CGAffineTransformIdentity.a;
    v33 = *&v40.tx;
    v27 = *&CGAffineTransformIdentity.tx;
    v29 = *&CGAffineTransformIdentity.c;
    [(TSDMetalMotionBlurEffect *)self->_motionBlurMetalEffect velocityScale];
    v22 = v29;
    v21 = v31;
    v20 = v33;
    v19 = v35;
    v25.f64[1] = v24;
    v18 = v37;
    *(&self[2].super.super.isa + 16 * a4) = vcvt_f32_f64(v25);
    v23 = v27;
  }

  v32 = vcvt_f32_f64(v23);
  v38 = vcvt_f32_f64(v20);
  v36 = vcvt_f32_f64(v19);
  v34 = vcvt_f32_f64(v18);
  [v17 popDebugGroup];
  [v17 pushDebugGroup:@"KNTransitionTwist Draw Front"];
  [v17 setCullMode:1];
  v26 = (&self[1] + 128 * a4);
  v26[15].i32[1] = 1065353216;
  *v26[8].f32 = v28;
  v26[10] = v30;
  v26[11] = 0;
  v26[12] = v32;
  v26[13] = 1065353216;
  [(KNTransitionTwist *)self drawGrid:v15 encoder:v17 currentBuffer:a4 advanceDynamicBuffer:0];
  [v17 pushDebugGroup:@"KNTransitionTwist Draw Back"];
  [v17 setCullMode:2];
  v26[15].i32[1] = -1082130432;
  *v26[8].f32 = v34;
  v26[10] = v36;
  v26[11] = 0;
  v26[12] = v38;
  v26[13] = 1065353216;
  [(KNTransitionTwist *)self drawGrid:v16 encoder:v17 currentBuffer:a4 advanceDynamicBuffer:v9];
}

- (void)animationWillBeginWithContext:(id)a3
{
  v4 = a3;
  v45 = [v4 textures];
  v44 = [v45 lastObject];
  self->_twistyness = 3.3;
  v5 = [v4 transitionAttributes];
  v6 = [v5 objectForKeyedSubscript:@"com.apple.iWork.Keynote.BUKTwist.twist"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"com.apple.iWork.Keynote.BUKTwist.twist"];
    [v7 doubleValue];
    self->_twistyness = v8;
  }

  v9 = [v4 metalContext];
  v10 = [v9 device];
  v11 = [v9 pixelFormat];
  v12 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v12 setPixelFormat:v11];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
  }

  if ([v4 isMotionBlurred])
  {
    v14 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v14 setPixelFormat:v11];
    v15 = [TSDMetalMotionBlurEffect alloc];
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v17 = v16;
    v19 = v18;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v21 = v20;
    v23 = v22;
    v24 = [v4 randomGenerator];
    v25 = [v4 metalContext];
    v26 = [v15 initWithFramebufferSize:v24 slideSize:v25 randomGenerator:v17 metalContext:{v19, v21, v23}];
    motionBlurMetalEffect = self->_motionBlurMetalEffect;
    self->_motionBlurMetalEffect = v26;

    v28 = self->_motionBlurMetalEffect;
    if (v28)
    {
      v46[4] = v59;
      v46[5] = v60;
      v46[6] = v61;
      v46[7] = v62;
      v46[0] = v55;
      v46[1] = v56;
      v46[2] = v57;
      v46[3] = v58;
      [(TSDMetalMotionBlurEffect *)v28 adjustTransformForMotionBlurBuffer:v46];
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
    }

    v29 = v44;
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    v55 = v47;
    v56 = v48;
    v57 = v49;
    v58 = v50;
  }

  else
  {
    v14 = 0;
    v29 = v44;
  }

  v30 = [v4 isMotionBlurred];
  v31 = @"transitionTwistVertexShader";
  if (v30)
  {
    v31 = @"transitionTwistMBVertexShader";
  }

  v32 = v31;
  v33 = [v4 isMotionBlurred];
  v34 = @"transitionTwistFragmentShader";
  if (v33)
  {
    v34 = @"transitionTwistMBFragmentShader";
  }

  v35 = v34;
  v36 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:v32 fragmentShader:v35 device:v10 library:@"KeynoteMetalLibrary" colorAttachment:v12 velocityAttachment:v14];
  metalShader = self->_metalShader;
  self->_metalShader = v36;

  [(KNTransitionTwist *)self createArrays:v29 context:v4 device:v10];
  v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v55), v56);
  v39 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v58);
  v40 = vcvt_hight_f32_f64(vcvt_f32_f64(v59), v60);
  v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v61), v62);
  p_positionAttributeIndex = &self[1]._positionAttributeIndex;
  v43 = 3;
  do
  {
    p_positionAttributeIndex[-2] = v38;
    p_positionAttributeIndex[-1] = v39;
    *p_positionAttributeIndex = v40;
    p_positionAttributeIndex[1] = v41;
    p_positionAttributeIndex += 8;
    --v43;
  }

  while (v43);
}

- (void)renderFrameWithContext:(id)a3
{
  v29 = a3;
  v4 = [v29 textures];
  [v29 percent];
  v6 = v5;
  v7 = [v29 metalContext];
  v8 = [v7 renderEncoder];
  if (!v8)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[KNTransitionTwist renderFrameWithContext:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionTwist.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:501 description:{@"invalid nil value for '%s'", "workingEncoder"}];
  }

  v12 = [v4 lastObject];
  v13 = [v12 metalTextureWithContext:v7];

  if (v13)
  {
    if ([v4 count] < 2)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = [v4 objectAtIndexedSubscript:0];
      v15 = [v14 metalTextureWithContext:v7];
    }

    [v29 percent];
    if (v16 == self->_lastUpdatePercent)
    {
      [v29 percent];
      v17 = v18 == 0.0;
    }

    else
    {
      v17 = 1;
    }

    [v29 percent];
    self->_lastUpdatePercent = v19;
    [(KNTransitionTwist *)self update:v14 withContext:v29 isUpdating:v17];
    TSUSineMap();
    v21 = v20 * 0.5;
    v22 = [v29 metalContext];
    *(&self[2].super.mAnimationContext + 32 * [v22 currentBuffer]) = v21;

    if ([v29 isMotionBlurred])
    {
      motionBlurMetalEffect = self->_motionBlurMetalEffect;
      v24 = [v29 metalContext];
      v25 = [(TSDMetalMotionBlurEffect *)motionBlurMetalEffect bindColorAndVelocityWithMetalContext:v24 shouldFillBackground:0];

      v8 = v25;
    }

    [(TSDMetalShader *)self->_metalShader setPipelineStateWithEncoder:v8];
    v26 = [v29 metalContext];
    -[KNTransitionTwist p_drawTwistWithPercent:currentBuffer:texture:oldTexture:encoder:isMotionBlurred:isUpdating:](self, "p_drawTwistWithPercent:currentBuffer:texture:oldTexture:encoder:isMotionBlurred:isUpdating:", [v26 currentBuffer], v13, v15, v8, objc_msgSend(v29, "isMotionBlurred"), v17, v6);

    if ([v29 isMotionBlurred])
    {
      v27 = self->_motionBlurMetalEffect;
      v28 = [v7 renderEncoder];
      [(TSDMetalMotionBlurEffect *)v27 drawResultWithWorkingRenderEncoder:v8 destinationRenderEncoder:v28];
    }
  }
}

@end