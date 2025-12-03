@interface KNTransitionTwist
- (KNTransitionTwist)initWithAnimationContext:(id)context;
- (double)fx:(double)fx withPercent:(double)percent;
- (void)animationWillBeginWithContext:(id)context;
- (void)createArrays:(id)arrays context:(id)context device:(id)device;
- (void)drawGrid:(id)grid encoder:(id)encoder currentBuffer:(unint64_t)buffer advanceDynamicBuffer:(BOOL)dynamicBuffer;
- (void)p_drawTwistWithPercent:(double)percent currentBuffer:(unint64_t)buffer texture:(id)texture oldTexture:(id)oldTexture encoder:(id)encoder isMotionBlurred:(BOOL)blurred isUpdating:(BOOL)updating;
- (void)p_teardown;
- (void)renderFrameWithContext:(id)context;
- (void)update:(id)update withContext:(id)context isUpdating:(BOOL)updating;
@end

@implementation KNTransitionTwist

- (KNTransitionTwist)initWithAnimationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = KNTransitionTwist;
  result = [(KNAnimationEffect *)&v4 initWithAnimationContext:context];
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

- (void)createArrays:(id)arrays context:(id)context device:(id)device
{
  arraysCopy = arrays;
  contextCopy = context;
  deviceCopy = device;
  if (deviceCopy)
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

  if ([contextCopy isMotionBlurred])
  {
    v16 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePreviousPosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
    [v12 addObject:v16];
    self->_prevPositionAttributeIndex = [v12 indexOfObject:v16];
  }

  v17 = [[NSArray alloc] initWithArray:v12];
  bufferAttributes = self->_bufferAttributes;
  self->_bufferAttributes = v17;

  if (deviceCopy)
  {
    v19 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_bufferAttributes meshSize:deviceCopy device:self->_numPoints, self->_numPoints];
    metalDataBuffer = self->_metalDataBuffer;
    self->_metalDataBuffer = v19;
  }

  [arraysCopy size];
  v22 = v21;
  v23 = arraysCopy;
  [arraysCopy size];
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
  isMotionBlurred = [v35 isMotionBlurred];
  v36[6] = normalAttributeIndex;
  v36[7] = prevPositionAttributeIndex;
  v36[8] = numPoints;
  *&v36[9] = v26;
  *&v36[10] = v28;
  *&v36[11] = v33;
  v34 = objc_retainBlock(v36);
  if (deviceCopy)
  {
    [(TSDMTLDataBuffer *)self->_metalDataBuffer updateMetalDataBufferAttributes:self->_bufferAttributes withBlock:v34];
  }

  arraysCopy = v23;
  contextCopy = v35;
LABEL_12:
}

- (void)drawGrid:(id)grid encoder:(id)encoder currentBuffer:(unint64_t)buffer advanceDynamicBuffer:(BOOL)dynamicBuffer
{
  dynamicBufferCopy = dynamicBuffer;
  encoderCopy = encoder;
  [encoderCopy setFragmentTexture:grid atIndex:0];
  [encoderCopy setVertexBytes:&self[1] + 128 * buffer length:128 atIndex:1];
  [(TSDMTLDataBuffer *)self->_metalDataBuffer drawWithEncoder:encoderCopy atIndex:0 advanceDynamicBuffer:dynamicBufferCopy];
}

- (double)fx:(double)fx withPercent:(double)percent
{
  v4 = (self->_twistyness + -1.0) / 9.0 + 0.25;
  v5 = (v4 + 1.0) * percent - v4 * fx;
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

- (void)update:(id)update withContext:(id)context isUpdating:(BOOL)updating
{
  contextCopy = context;
  updateCopy = update;
  [contextCopy percent];
  v11 = v10;
  direction = [contextCopy direction];
  [updateCopy size];
  v14 = v13;

  numPoints = self->_numPoints;
  positionAttributeIndex = self->_positionAttributeIndex;
  texCoordAttributeIndex = self->_texCoordAttributeIndex;
  normalAttributeIndex = self->_normalAttributeIndex;
  prevPositionAttributeIndex = self->_prevPositionAttributeIndex;
  LOBYTE(updateCopy) = [contextCopy isMotionBlurred];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_267C8;
  v21[3] = &unk_45B620;
  v21[6] = texCoordAttributeIndex;
  v21[7] = normalAttributeIndex;
  v22 = updateCopy;
  v21[8] = prevPositionAttributeIndex;
  v21[9] = numPoints;
  v21[4] = self;
  v21[5] = positionAttributeIndex;
  v23 = direction == &dword_8 + 3;
  v21[10] = v11;
  *&v21[11] = v14 * 0.5;
  updatingCopy = updating;
  v20 = objc_retainBlock(v21);
  [(TSDMTLDataBuffer *)self->_metalDataBuffer updateMetalDataBufferAttributes:self->_bufferAttributes withBlock:v20];
}

- (void)p_drawTwistWithPercent:(double)percent currentBuffer:(unint64_t)buffer texture:(id)texture oldTexture:(id)oldTexture encoder:(id)encoder isMotionBlurred:(BOOL)blurred isUpdating:(BOOL)updating
{
  updatingCopy = updating;
  blurredCopy = blurred;
  textureCopy = texture;
  oldTextureCopy = oldTexture;
  encoderCopy = encoder;
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
  if (blurredCopy)
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
    *(&self[2].super.super.isa + 16 * buffer) = vcvt_f32_f64(v25);
    v23 = v27;
  }

  v32 = vcvt_f32_f64(v23);
  v38 = vcvt_f32_f64(v20);
  v36 = vcvt_f32_f64(v19);
  v34 = vcvt_f32_f64(v18);
  [encoderCopy popDebugGroup];
  [encoderCopy pushDebugGroup:@"KNTransitionTwist Draw Front"];
  [encoderCopy setCullMode:1];
  v26 = (&self[1] + 128 * buffer);
  v26[15].i32[1] = 1065353216;
  *v26[8].f32 = v28;
  v26[10] = v30;
  v26[11] = 0;
  v26[12] = v32;
  v26[13] = 1065353216;
  [(KNTransitionTwist *)self drawGrid:textureCopy encoder:encoderCopy currentBuffer:buffer advanceDynamicBuffer:0];
  [encoderCopy pushDebugGroup:@"KNTransitionTwist Draw Back"];
  [encoderCopy setCullMode:2];
  v26[15].i32[1] = -1082130432;
  *v26[8].f32 = v34;
  v26[10] = v36;
  v26[11] = 0;
  v26[12] = v38;
  v26[13] = 1065353216;
  [(KNTransitionTwist *)self drawGrid:oldTextureCopy encoder:encoderCopy currentBuffer:buffer advanceDynamicBuffer:updatingCopy];
}

- (void)animationWillBeginWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  lastObject = [textures lastObject];
  self->_twistyness = 3.3;
  transitionAttributes = [contextCopy transitionAttributes];
  v6 = [transitionAttributes objectForKeyedSubscript:@"com.apple.iWork.Keynote.BUKTwist.twist"];

  if (v6)
  {
    v7 = [transitionAttributes objectForKeyedSubscript:@"com.apple.iWork.Keynote.BUKTwist.twist"];
    [v7 doubleValue];
    self->_twistyness = v8;
  }

  metalContext = [contextCopy metalContext];
  device = [metalContext device];
  pixelFormat = [metalContext pixelFormat];
  v12 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  [v12 setPixelFormat:pixelFormat];
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

  if ([contextCopy isMotionBlurred])
  {
    v14 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    [v14 setPixelFormat:pixelFormat];
    v15 = [TSDMetalMotionBlurEffect alloc];
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v17 = v16;
    v19 = v18;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v21 = v20;
    v23 = v22;
    randomGenerator = [contextCopy randomGenerator];
    metalContext2 = [contextCopy metalContext];
    v26 = [v15 initWithFramebufferSize:randomGenerator slideSize:metalContext2 randomGenerator:v17 metalContext:{v19, v21, v23}];
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

    v29 = lastObject;
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
    v29 = lastObject;
  }

  isMotionBlurred = [contextCopy isMotionBlurred];
  v31 = @"transitionTwistVertexShader";
  if (isMotionBlurred)
  {
    v31 = @"transitionTwistMBVertexShader";
  }

  v32 = v31;
  isMotionBlurred2 = [contextCopy isMotionBlurred];
  v34 = @"transitionTwistFragmentShader";
  if (isMotionBlurred2)
  {
    v34 = @"transitionTwistMBFragmentShader";
  }

  v35 = v34;
  v36 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:v32 fragmentShader:v35 device:device library:@"KeynoteMetalLibrary" colorAttachment:v12 velocityAttachment:v14];
  metalShader = self->_metalShader;
  self->_metalShader = v36;

  [(KNTransitionTwist *)self createArrays:v29 context:contextCopy device:device];
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

- (void)renderFrameWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  [contextCopy percent];
  v6 = v5;
  metalContext = [contextCopy metalContext];
  renderEncoder = [metalContext renderEncoder];
  if (!renderEncoder)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[KNTransitionTwist renderFrameWithContext:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionTwist.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:501 description:{@"invalid nil value for '%s'", "workingEncoder"}];
  }

  lastObject = [textures lastObject];
  v13 = [lastObject metalTextureWithContext:metalContext];

  if (v13)
  {
    if ([textures count] < 2)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = [textures objectAtIndexedSubscript:0];
      v15 = [v14 metalTextureWithContext:metalContext];
    }

    [contextCopy percent];
    if (v16 == self->_lastUpdatePercent)
    {
      [contextCopy percent];
      v17 = v18 == 0.0;
    }

    else
    {
      v17 = 1;
    }

    [contextCopy percent];
    self->_lastUpdatePercent = v19;
    [(KNTransitionTwist *)self update:v14 withContext:contextCopy isUpdating:v17];
    TSUSineMap();
    v21 = v20 * 0.5;
    metalContext2 = [contextCopy metalContext];
    *(&self[2].super.mAnimationContext + 32 * [metalContext2 currentBuffer]) = v21;

    if ([contextCopy isMotionBlurred])
    {
      motionBlurMetalEffect = self->_motionBlurMetalEffect;
      metalContext3 = [contextCopy metalContext];
      v25 = [(TSDMetalMotionBlurEffect *)motionBlurMetalEffect bindColorAndVelocityWithMetalContext:metalContext3 shouldFillBackground:0];

      renderEncoder = v25;
    }

    [(TSDMetalShader *)self->_metalShader setPipelineStateWithEncoder:renderEncoder];
    metalContext4 = [contextCopy metalContext];
    -[KNTransitionTwist p_drawTwistWithPercent:currentBuffer:texture:oldTexture:encoder:isMotionBlurred:isUpdating:](self, "p_drawTwistWithPercent:currentBuffer:texture:oldTexture:encoder:isMotionBlurred:isUpdating:", [metalContext4 currentBuffer], v13, v15, renderEncoder, objc_msgSend(contextCopy, "isMotionBlurred"), v17, v6);

    if ([contextCopy isMotionBlurred])
    {
      v27 = self->_motionBlurMetalEffect;
      renderEncoder2 = [metalContext renderEncoder];
      [(TSDMetalMotionBlurEffect *)v27 drawResultWithWorkingRenderEncoder:renderEncoder destinationRenderEncoder:renderEncoder2];
    }
  }
}

@end