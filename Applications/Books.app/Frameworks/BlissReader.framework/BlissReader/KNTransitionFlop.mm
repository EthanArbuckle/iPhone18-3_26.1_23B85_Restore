@interface KNTransitionFlop
+ (id)defaultAttributes;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version;
- (KNTransitionFlop)initWithAnimationContext:(id)context;
- (void)_updateFlop:(id)flop withContext:(id)context dataBuffer:(id)buffer isUpdating:(BOOL)updating;
- (void)_updateShadowWithTexture:(id)texture percent:(double)percent direction:(unint64_t)direction shadowBuffer:(id)buffer currentBuffer:(unint64_t)currentBuffer;
- (void)createArrays:(id)arrays context:(id)context device:(id)device;
- (void)p_drawFlopVertical:(BOOL)vertical encoder:(id)encoder metalTexture:(id)texture oldMetalTexture:(id)metalTexture isUpdating:(BOOL)updating;
- (void)p_metalAnimationWillBeginWithContext:(id)context;
- (void)p_metalRenderFrameWithContext:(id)context;
- (void)p_teardown;
- (void)updateFlopAndShadowMeshesWithTexture:(id)texture context:(id)context flopBuffer:(id)buffer shadowBuffer:(id)shadowBuffer isUpdating:(BOOL)updating;
@end

@implementation KNTransitionFlop

- (KNTransitionFlop)initWithAnimationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = KNTransitionFlop;
  result = [(KNAnimationEffect *)&v4 initWithAnimationContext:context];
  if (result)
  {
    result->_numPoints = 13;
  }

  return result;
}

- (void)p_teardown
{
  colorBufferAttributes = self->_colorBufferAttributes;
  self->_colorBufferAttributes = 0;

  shadowBufferAttributes = self->_shadowBufferAttributes;
  self->_shadowBufferAttributes = 0;

  quadMetalShader = self->_quadMetalShader;
  self->_quadMetalShader = 0;

  metalOutgoingQuadDataBuffer = self->_metalOutgoingQuadDataBuffer;
  self->_metalOutgoingQuadDataBuffer = 0;

  metalIncomingQuadDataBuffer = self->_metalIncomingQuadDataBuffer;
  self->_metalIncomingQuadDataBuffer = 0;

  colorMetalShader = self->_colorMetalShader;
  self->_colorMetalShader = 0;

  metalColorDataBuffer = self->_metalColorDataBuffer;
  self->_metalColorDataBuffer = 0;

  shadowMetalShader = self->_shadowMetalShader;
  self->_shadowMetalShader = 0;

  metalShadowDataBuffer = self->_metalShadowDataBuffer;
  self->_metalShadowDataBuffer = 0;
}

+ (id)defaultAttributes
{
  v4 = @"KNTransitionAttributesDuration";
  v5 = &off_49CF20;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (void)createArrays:(id)arrays context:(id)context device:(id)device
{
  arraysCopy = arrays;
  contextCopy = context;
  deviceCopy = device;
  if (deviceCopy)
  {
    if (self->_metalColorDataBuffer)
    {
      goto LABEL_29;
    }

    v49 = arraysCopy;
    v11 = 35048;
  }

  else
  {
    v49 = arraysCopy;
    v11 = 35044;
  }

  direction = [contextCopy direction];
  v12 = +[NSMutableArray array];
  v13 = kTSDGPUShaderAttributePosition;
  v14 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
  [v12 addObject:v14];
  v15 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeTexCoord bufferUsage:v11 dataType:3 normalized:1 componentCount:2];
  [v12 addObject:v15];
  v16 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributeNormal bufferUsage:35048 dataType:3 normalized:1 componentCount:3];
  [v12 addObject:v16];
  if ([contextCopy isMotionBlurred])
  {
    v17 = [TSDGPUDataBufferAttribute attributeWithName:kTSDGPUShaderAttributePreviousPosition bufferUsage:35048 dataType:5 normalized:0 componentCount:3];
    [v12 addObject:v17];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[NSArray alloc] initWithArray:v12];
  colorBufferAttributes = self->_colorBufferAttributes;
  self->_colorBufferAttributes = v18;

  self->_colorPositionAttributeIndex = [(NSArray *)self->_colorBufferAttributes indexOfObject:v14];
  self->_colorTexCoordAttributeIndex = [(NSArray *)self->_colorBufferAttributes indexOfObject:v15];
  self->_colorNormalAttributeIndex = [(NSArray *)self->_colorBufferAttributes indexOfObject:v16];
  self->_colorPrevPositionAttributeIndex = [(NSArray *)self->_colorBufferAttributes indexOfObject:v17];

  v20 = +[NSMutableArray array];
  v21 = [TSDGPUDataBufferAttribute attributeWithName:v13 bufferUsage:35048 dataType:5 normalized:0 componentCount:2];
  [v20 addObject:v21];
  if (deviceCopy)
  {
    v22 = 5;
  }

  else
  {
    v22 = 2;
  }

  v23 = [TSDGPUDataBufferAttribute attributeWithName:@"Alpha" bufferUsage:35048 dataType:v22 normalized:1 componentCount:1];
  [v20 addObject:v23];
  v24 = [[NSArray alloc] initWithArray:v20];
  shadowBufferAttributes = self->_shadowBufferAttributes;
  self->_shadowBufferAttributes = v24;

  self->_shadowPositionAttributeIndex = [(NSArray *)self->_shadowBufferAttributes indexOfObject:v21];
  self->_shadowAlphaAttributeIndex = [(NSArray *)self->_shadowBufferAttributes indexOfObject:v23];

  if (deviceCopy)
  {
    v26 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_shadowBufferAttributes vertexCount:2 * self->_numPoints indexElementCount:0 device:deviceCopy];
    metalShadowDataBuffer = self->_metalShadowDataBuffer;
    self->_metalShadowDataBuffer = v26;
  }

  arraysCopy = v49;
  [v49 size];
  v29 = v28;
  [v49 size];
  v31 = direction - 13;
  v32 = v29 * 0.5;
  if (direction == (&dword_C + 1))
  {
    v33 = v30 * 0.5;
  }

  else
  {
    v33 = 0.0;
  }

  if (v31 < 2)
  {
    v30 = v30 * 0.5;
  }

  numPoints = self->_numPoints;
  if (v31 >= 2)
  {
    v35 = v29 * 0.5;
  }

  else
  {
    v35 = v29;
  }

  v36 = (numPoints - 1);
  v37 = v35 / v36;
  v38 = v30 / v36;
  if (direction == &dword_C)
  {
    v39 = v32;
  }

  else
  {
    v39 = 0.0;
  }

  if (deviceCopy)
  {
    numPoints = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:self->_colorBufferAttributes meshSize:deviceCopy device:numPoints, numPoints];
    metalColorDataBuffer = self->_metalColorDataBuffer;
    self->_metalColorDataBuffer = numPoints;
  }

  isMotionBlurred = [contextCopy isMotionBlurred];
  colorPositionAttributeIndex = self->_colorPositionAttributeIndex;
  colorTexCoordAttributeIndex = self->_colorTexCoordAttributeIndex;
  colorNormalAttributeIndex = self->_colorNormalAttributeIndex;
  colorPrevPositionAttributeIndex = self->_colorPrevPositionAttributeIndex;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_229FC;
  v50[3] = &unk_45B590;
  v52 = colorPositionAttributeIndex;
  v53 = colorTexCoordAttributeIndex;
  v61 = isMotionBlurred;
  v54 = colorNormalAttributeIndex;
  v55 = colorPrevPositionAttributeIndex;
  v56 = numPoints;
  v57 = v37;
  v58 = v39;
  v59 = v38;
  v60 = v33;
  v51 = v49;
  v47 = objc_retainBlock(v50);
  if (deviceCopy)
  {
    [(TSDMTLDataBuffer *)self->_metalColorDataBuffer updateMetalDataBufferAttributes:self->_colorBufferAttributes withBlock:v47];
  }

LABEL_29:
}

- (void)_updateFlop:(id)flop withContext:(id)context dataBuffer:(id)buffer isUpdating:(BOOL)updating
{
  flopCopy = flop;
  contextCopy = context;
  bufferCopy = buffer;
  [contextCopy percent];
  v33 = v13;
  direction = [contextCopy direction];
  [flopCopy size];
  v32 = v15;
  [flopCopy size];
  v31 = v16;
  [flopCopy size];
  v18 = v17;
  [flopCopy size];
  numPoints = self->_numPoints;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_22E4C;
  v34[3] = &unk_45B5B8;
  v34[4] = self;
  v35 = contextCopy;
  v38 = v18;
  v39 = v20;
  v40 = direction;
  v21.f64[0] = v33;
  v21.f64[1] = v33 * (v33 * v33);
  v22.f64[0] = v32;
  v22.f64[1] = v31;
  __asm { FMOV            V1.2D, #0.5 }

  v41 = vmulq_f64(v22, _Q1);
  v42 = vmulq_f64(v21, vdupq_n_s64(0x400921FB54442D18uLL));
  v43 = v33;
  updatingCopy = updating;
  v36 = flopCopy;
  v37 = numPoints;
  v28 = flopCopy;
  v29 = contextCopy;
  v30 = objc_retainBlock(v34);
  [bufferCopy updateMetalDataBufferAttributes:self->_colorBufferAttributes withBlock:v30];
}

- (void)_updateShadowWithTexture:(id)texture percent:(double)percent direction:(unint64_t)direction shadowBuffer:(id)buffer currentBuffer:(unint64_t)currentBuffer
{
  v12 = direction - 11;
  numPoints = self->_numPoints;
  bufferCopy = buffer;
  textureCopy = texture;
  [textureCopy size];
  v17 = v16;
  [textureCopy size];
  v19 = v18;

  if (v12 >= 2)
  {
    v26 = ceil(v19 * 0.5 * 0.02);
    v27 = v19 * 0.5 - v26;
    v22 = 0.0;
    v28 = v19 * 0.5 + v26;
    if (direction == 13)
    {
      v25 = v28;
    }

    else
    {
      v25 = v27;
    }

    if (direction == 13)
    {
      v23 = -1.0;
    }

    else
    {
      v23 = 1.0;
    }

    if (direction == 13)
    {
      v19 = v28;
    }

    else
    {
      v19 = v27;
    }
  }

  else
  {
    v20 = ceil(v17 * 0.5 * 0.02);
    v21 = v17 * 0.5 - v20;
    v22 = -1.0;
    v23 = 1.0;
    v24 = v17 * 0.5 + v20;
    if (direction == 12)
    {
      v25 = v24;
    }

    else
    {
      v25 = v21;
    }

    if (direction == 12)
    {
      v17 = v24;
    }

    else
    {
      v17 = v21;
    }
  }

  v29 = v25 / 5.0;
  TSUSineMap();
  v30 = self->_shadowUmbra[currentBuffer];
  shadowPositionAttributeIndex = self->_shadowPositionAttributeIndex;
  shadowAlphaAttributeIndex = self->_shadowAlphaAttributeIndex;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_236C8;
  v35[3] = &unk_45B5D8;
  v35[4] = shadowPositionAttributeIndex;
  v35[5] = shadowAlphaAttributeIndex;
  *&v35[6] = percent;
  *&v35[7] = percent * 0.2 * percent + 0.8;
  v36 = v12 < 2;
  *&v35[8] = v17;
  *&v35[9] = v19;
  v37 = direction == 11;
  *&v35[10] = percent * 0.3 + 0.5;
  *&v35[11] = v22;
  *&v35[12] = v30;
  *&v35[13] = v23;
  v35[14] = numPoints;
  *&v35[15] = v29 * v31 * percent;
  v34 = objc_retainBlock(v35);
  [bufferCopy updateMetalDataBufferAttributes:self->_shadowBufferAttributes withBlock:v34];
}

- (void)updateFlopAndShadowMeshesWithTexture:(id)texture context:(id)context flopBuffer:(id)buffer shadowBuffer:(id)shadowBuffer isUpdating:(BOOL)updating
{
  updatingCopy = updating;
  shadowBufferCopy = shadowBuffer;
  contextCopy = context;
  textureCopy = texture;
  [(KNTransitionFlop *)self _updateFlop:textureCopy withContext:contextCopy dataBuffer:buffer isUpdating:updatingCopy];
  [contextCopy percent];
  v16 = v15;
  direction = [contextCopy direction];
  metalContext = [contextCopy metalContext];

  -[KNTransitionFlop _updateShadowWithTexture:percent:direction:shadowBuffer:currentBuffer:](self, "_updateShadowWithTexture:percent:direction:shadowBuffer:currentBuffer:", textureCopy, direction, shadowBufferCopy, [metalContext currentBuffer], v16);
}

- (void)p_metalAnimationWillBeginWithContext:(id)context
{
  contextCopy = context;
  textures = [contextCopy textures];
  lastObject = [textures lastObject];
  metalContext = [contextCopy metalContext];
  device = [metalContext device];

  v8 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  metalContext2 = [contextCopy metalContext];
  [v8 setPixelFormat:objc_msgSend(metalContext2, "pixelFormat")];

  v10 = [[TSDMetalShader alloc] initDefaultTextureShaderWithDevice:device colorAttachment:v8];
  quadMetalShader = self->_quadMetalShader;
  self->_quadMetalShader = v10;

  direction = [contextCopy direction];
  [lastObject frame];
  v17 = v15;
  v18 = v16;
  if (direction <= 12)
  {
    if (direction == (&dword_8 + 3))
    {
      v25 = 0.49;
      v21 = v13;
      v13 = v13 + v15 * 0.49;
      width = 0.51;
      v17 = v15 * 0.51;
      y = 0.0;
      height = 1.0;
      x = 0.0;
      v24 = 0.0;
      goto LABEL_10;
    }

    if (direction == &dword_C)
    {
      width = 0.51;
      x = 0.49;
      v21 = v13 + v15 * 0.49;
      v17 = v15 * 0.51;
      y = 0.0;
      height = 1.0;
      v24 = 0.0;
      v25 = 0.0;
LABEL_10:
      v26 = v14;
      goto LABEL_13;
    }

LABEL_8:
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v27 = +[TSUAssertionHandler currentHandler];
    v28 = [NSString stringWithUTF8String:"[KNTransitionFlop p_metalAnimationWillBeginWithContext:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionFlop.m"];
    [v27 handleFailureInFunction:v28 file:v29 lineNumber:609 description:@"Unknown direction!"];

    v24 = y;
    v25 = CGRectZero.origin.x;
    v17 = width;
    v26 = y;
    v21 = CGRectZero.origin.x;
    v18 = height;
    v14 = y;
    v13 = CGRectZero.origin.x;
    goto LABEL_13;
  }

  if (direction == (&dword_C + 1))
  {
    height = 0.51;
    y = 0.49;
    v26 = v14 + v16 * 0.49;
    v18 = v16 * 0.51;
    x = 0.0;
    width = 1.0;
    v24 = 0.0;
  }

  else
  {
    if (direction != (&dword_C + 2))
    {
      goto LABEL_8;
    }

    v24 = 0.49;
    v26 = v14;
    v14 = v14 + v16 * 0.49;
    height = 0.51;
    v18 = v16 * 0.51;
    y = 0.0;
    width = 1.0;
    x = 0.0;
  }

  v25 = 0.0;
  v21 = v13;
LABEL_13:
  if (!self->_metalOutgoingQuadDataBuffer)
  {
    height = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:v13 device:v14, v17, v18, v25, v24, width, height];
    metalOutgoingQuadDataBuffer = self->_metalOutgoingQuadDataBuffer;
    self->_metalOutgoingQuadDataBuffer = height;

    height2 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:v21 device:v26, v17, v18, x, y, width, height];
    metalIncomingQuadDataBuffer = self->_metalIncomingQuadDataBuffer;
    self->_metalIncomingQuadDataBuffer = height2;
  }

  [v8 setBlendingEnabled:{1, v13, v14}];
  [v8 setSourceAlphaBlendFactor:1];
  [v8 setSourceRGBBlendFactor:1];
  [v8 setDestinationRGBBlendFactor:5];
  [v8 setDestinationAlphaBlendFactor:5];
  v34 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"transitionFlopShadowVertexShader" fragmentShader:@"transitionFlopShadowFragmentShader" device:device library:@"KeynoteMetalLibrary" colorAttachment:v8];
  shadowMetalShader = self->_shadowMetalShader;
  self->_shadowMetalShader = v34;

  if ([contextCopy isMotionBlurred])
  {
    v36 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
    metalContext3 = [contextCopy metalContext];
    [v36 setPixelFormat:objc_msgSend(metalContext3, "pixelFormat")];

    [v8 setBlendingEnabled:0];
    v38 = [TSDMetalMotionBlurEffect alloc];
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v40 = v39;
    v42 = v41;
    [(KNAnimationContext *)self->super.mAnimationContext slideRect];
    v44 = v43;
    v46 = v45;
    randomGenerator = [contextCopy randomGenerator];
    metalContext4 = [contextCopy metalContext];
    v49 = [v38 initWithFramebufferSize:randomGenerator slideSize:metalContext4 randomGenerator:v40 metalContext:{v42, v44, v46}];
    motionBlurMetalEffect = self->_motionBlurMetalEffect;
    self->_motionBlurMetalEffect = v49;

    [(TSDMetalMotionBlurEffect *)self->_motionBlurMetalEffect setIsSingleObject:1];
  }

  else
  {
    v36 = 0;
  }

  isMotionBlurred = [contextCopy isMotionBlurred];
  v52 = @"transitionFlopVertexShader";
  if (isMotionBlurred)
  {
    v52 = @"transitionFlopMBVertexShader";
  }

  v53 = v52;
  isMotionBlurred2 = [contextCopy isMotionBlurred];
  v55 = @"transitionFlopFragmentShader";
  if (isMotionBlurred2)
  {
    v55 = @"transitionFlopMBFragmentShader";
  }

  v56 = v55;
  v57 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:v53 fragmentShader:v56 device:device library:@"KeynoteMetalLibrary" colorAttachment:v8 velocityAttachment:v36];

  colorMetalShader = self->_colorMetalShader;
  self->_colorMetalShader = v57;

  [(KNTransitionFlop *)self createArrays:lastObject context:contextCopy device:device];
  v59 = 0uLL;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  mAnimationContext = self->super.mAnimationContext;
  if (mAnimationContext)
  {
    [(KNAnimationContext *)mAnimationContext slideProjectionMatrix];
    v61 = vcvt_hight_f32_f64(vcvt_f32_f64(v103), v104);
    v62 = vcvt_hight_f32_f64(vcvt_f32_f64(v101), v102);
    v63 = vcvt_hight_f32_f64(vcvt_f32_f64(v99), v100);
    v59 = vcvt_hight_f32_f64(vcvt_f32_f64(v97), v98);
  }

  else
  {
    v63 = 0uLL;
    v62 = 0uLL;
    v61 = 0uLL;
  }

  *self->_anon_a0 = v59;
  *&self->_anon_a0[16] = v63;
  *&self->_anon_a0[32] = v62;
  *&self->_anon_a0[48] = v61;
  *self->_anon_e0 = v59;
  *&self->_anon_e0[16] = v63;
  *&self->_anon_e0[32] = v62;
  *&self->_anon_e0[48] = v61;
  if ([contextCopy isMotionBlurred])
  {
    v64 = self->_motionBlurMetalEffect;
    if (v64)
    {
      v87 = v101;
      v88 = v102;
      v89 = v103;
      v90 = v104;
      *&v85.a = v97;
      *&v85.c = v98;
      *&v85.tx = v99;
      v86 = v100;
      [(TSDMetalMotionBlurEffect *)v64 adjustTransformForMotionBlurBuffer:&v85];
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      memset(&v91, 0, sizeof(v91));
    }

    v97 = *&v91.a;
    v98 = *&v91.c;
    v103 = v95;
    v104 = v96;
    v101 = v93;
    v102 = v94;
    v99 = *&v91.tx;
    v100 = v92;
    v65 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v91.a), *&v91.c);
    v66 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v91.tx), v92);
    v68 = vcvt_hight_f32_f64(vcvt_f32_f64(v93), v94);
    v67 = vcvt_hight_f32_f64(vcvt_f32_f64(v95), v96);
  }

  else
  {
    v66 = v80;
    v65 = v81;
    v67 = v78;
    v68 = v79;
  }

  *self->_anon_120 = v65;
  *&self->_anon_120[16] = v66;
  *&self->_anon_120[32] = v68;
  *&self->_anon_120[48] = v67;
  *self->_anon_1a0 = v65;
  *&self->_anon_1a0[16] = v66;
  *&self->_anon_1a0[32] = v68;
  *&self->_anon_1a0[48] = v67;
  v69 = vcvt_f32_f64(*&CGAffineTransformIdentity.a);
  v70 = vcvt_f32_f64(*&CGAffineTransformIdentity.c);
  v71 = vcvt_f32_f64(*&CGAffineTransformIdentity.tx);
  *&self->_anon_120[72] = 0;
  *&self->_anon_120[64] = v69;
  *&self->_anon_120[88] = 0;
  *&self->_anon_120[80] = v70;
  *&self->_anon_120[104] = 1065353216;
  *&self->_anon_120[96] = v71;
  v72 = &v85;
  if ([contextCopy direction] != &dword_C + 1 && objc_msgSend(contextCopy, "direction") != &dword_C + 2)
  {
    v72 = &v91;
  }

  memset(&v91, 0, sizeof(v91));
  CGAffineTransformMakeScale(&v91, -1.0, 1.0);
  v84 = v91;
  CGAffineTransformTranslate(&v85, &v84, -1.0, 0.0);
  v91 = v85;
  memset(&v85, 0, sizeof(v85));
  CGAffineTransformMakeScale(&v85, 1.0, -1.0);
  v83 = v85;
  CGAffineTransformTranslate(&v84, &v83, 0.0, -1.0);
  v85 = v84;
  v73 = vcvt_f32_f64(*v72);
  v74 = vcvt_f32_f64(v72[1]);
  v75 = vcvt_f32_f64(v72[2]);
  *&self->_anon_1a0[72] = 0;
  *&self->_anon_1a0[64] = v73;
  *&self->_anon_1a0[88] = 0;
  *&self->_anon_1a0[80] = v74;
  *&self->_anon_1a0[104] = 1065353216;
  *&self->_anon_1a0[96] = v75;
  *&self->_anon_120[120] = 1065353216;
  *&self->_anon_1a0[120] = -1082130432;
  if ([contextCopy isMotionBlurred])
  {
    [(TSDMetalMotionBlurEffect *)self->_motionBlurMetalEffect velocityScale];
    v77.f64[1] = v76;
    *&v77.f64[0] = vcvt_f32_f64(v77);
    *&self->_anon_120[112] = v77.f64[0];
    *&self->_anon_1a0[112] = v77.f64[0];
  }
}

- (void)p_drawFlopVertical:(BOOL)vertical encoder:(id)encoder metalTexture:(id)texture oldMetalTexture:(id)metalTexture isUpdating:(BOOL)updating
{
  updatingCopy = updating;
  colorMetalShader = self->_colorMetalShader;
  metalTextureCopy = metalTexture;
  textureCopy = texture;
  encoderCopy = encoder;
  [(TSDMetalShader *)colorMetalShader setPipelineStateWithEncoder:encoderCopy vertexBytes:self->_anon_1a0];
  [encoderCopy setCullMode:1];
  [encoderCopy setFragmentTexture:textureCopy atIndex:0];

  [(TSDMTLDataBuffer *)self->_metalColorDataBuffer drawWithEncoder:encoderCopy atIndex:0 advanceDynamicBuffer:0];
  [(TSDMetalShader *)self->_colorMetalShader setPipelineStateWithEncoder:encoderCopy vertexBytes:self->_anon_120];
  [encoderCopy setCullMode:2];
  [encoderCopy setFragmentTexture:metalTextureCopy atIndex:0];

  [(TSDMTLDataBuffer *)self->_metalColorDataBuffer drawWithEncoder:encoderCopy atIndex:0 advanceDynamicBuffer:updatingCopy];
}

- (void)p_metalRenderFrameWithContext:(id)context
{
  contextCopy = context;
  metalContext = [contextCopy metalContext];
  renderEncoder = [metalContext renderEncoder];
  if (!renderEncoder)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[KNTransitionFlop p_metalRenderFrameWithContext:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Transitions/KNTransitionFlop.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:742 description:{@"invalid nil value for '%s'", "workingEncoder"}];
  }

  textures = [contextCopy textures];
  direction = [contextCopy direction];
  [contextCopy percent];
  v12 = v11;
  lastObject = [textures lastObject];
  metalContext2 = [contextCopy metalContext];
  v15 = [lastObject metalTextureWithContext:metalContext2];

  if ([textures count] < 2)
  {
    v16 = 0;
    v18 = 0;
  }

  else
  {
    v16 = [textures objectAtIndexedSubscript:0];
    metalContext3 = [contextCopy metalContext];
    v18 = [v16 metalTextureWithContext:metalContext3];

    if (v18 && v15)
    {
      [contextCopy percent];
      v30 = metalContext;
      if (v19 == self->_lastUpdatePercent)
      {
        [contextCopy percent];
        v20 = v21 == 0.0;
      }

      else
      {
        v20 = 1;
      }

      [contextCopy percent];
      self->_lastUpdatePercent = v22;
      p_metalShadowDataBuffer = &self->_metalShadowDataBuffer;
      v29 = v20;
      [(KNTransitionFlop *)self updateFlopAndShadowMeshesWithTexture:lastObject context:contextCopy flopBuffer:self->_metalColorDataBuffer shadowBuffer:self->_metalShadowDataBuffer isUpdating:v20];
      [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_e0];
      if (v12 <= 0.7)
      {
        [renderEncoder setFragmentTexture:v15 atIndex:0];
        [(TSDMTLDataBuffer *)self->_metalIncomingQuadDataBuffer drawWithEncoder:renderEncoder atIndex:0];
        [renderEncoder setVertexBytes:self->_anon_e0 length:64 atIndex:1];
        [renderEncoder setFragmentTexture:v18 atIndex:0];
        [(TSDMTLDataBuffer *)self->_metalOutgoingQuadDataBuffer drawWithEncoder:renderEncoder atIndex:0];
        [(TSDMetalShader *)self->_shadowMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_a0];
      }

      else
      {
        [renderEncoder setFragmentTexture:v18 atIndex:0];
        [(TSDMTLDataBuffer *)self->_metalOutgoingQuadDataBuffer drawWithEncoder:renderEncoder atIndex:0];
        [(TSDMetalShader *)self->_shadowMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_a0];
        [(TSDMTLDataBuffer *)*p_metalShadowDataBuffer drawWithEncoder:renderEncoder atIndex:0];
        [(TSDMetalShader *)self->_quadMetalShader setPipelineStateWithEncoder:renderEncoder vertexBytes:self->_anon_e0];
        [renderEncoder setFragmentTexture:v15 atIndex:0];
        p_metalShadowDataBuffer = &self->_metalIncomingQuadDataBuffer;
      }

      [(TSDMTLDataBuffer *)*p_metalShadowDataBuffer drawWithEncoder:renderEncoder atIndex:0];
      if ([contextCopy isMotionBlurred])
      {
        motionBlurMetalEffect = self->_motionBlurMetalEffect;
        metalContext4 = [contextCopy metalContext];
        v26 = [(TSDMetalMotionBlurEffect *)motionBlurMetalEffect bindColorAndVelocityWithMetalContext:metalContext4 shouldFillBackground:0];

        renderEncoder = v26;
      }

      metalContext = v30;
      [(KNTransitionFlop *)self p_drawFlopVertical:(direction - 13) < 2 encoder:renderEncoder metalTexture:v15 oldMetalTexture:v18 isUpdating:v29];
      if ([contextCopy isMotionBlurred])
      {
        v27 = self->_motionBlurMetalEffect;
        renderEncoder2 = [v30 renderEncoder];
        [(TSDMetalMotionBlurEffect *)v27 drawResultWithWorkingRenderEncoder:renderEncoder destinationRenderEncoder:renderEncoder2];

        metalContext = v30;
      }
    }
  }
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name warning:(id *)warning type:(int)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  if (type == 3 && version <= 0x174876E7FFLL && classic)
  {
    v12 = [*attributes mutableCopy];
    v10 = [NSNumber numberWithUnsignedInteger:13];
    [v12 setObject:v10 forKey:@"direction"];

    v11 = v12;
    *attributes = v12;
  }
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if (type == 3 && version <= 0x174876E7FFLL && classic)
  {
    v9 = [*attributes objectForKeyedSubscript:{@"direction", name, warning}];

    if (v9)
    {
      v10 = [*attributes objectForKeyedSubscript:@"direction"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      if (unsignedIntegerValue == &dword_C + 2)
      {
        v14 = [*attributes mutableCopy];
        v12 = [NSNumber numberWithUnsignedInteger:13];
        [v14 setObject:v12 forKeyedSubscript:@"direction"];

        v13 = v14;
        *attributes = v14;
      }
    }
  }
}

@end