@interface CRLMetalShader
+ (id)blendTextureShaderForMotionBlurWithContext:(id)context;
+ (id)blendTextureShaderWithContext:(id)context;
+ (id)defaultColorShaderWithContext:(id)context;
+ (id)defaultTextureAndOpacityShaderForMotionBlurWithContext:(id)context;
+ (id)defaultTextureAndOpacityShaderWithContext:(id)context;
+ (id)linearClampToEdgeSamplerWithDevice:(id)device;
+ (id)p_blendingColorAttachmentWithContext:(id)context;
+ (id)p_motionBlurVelocityColorAttachmentWithContext:(id)context;
- (CRLMetalShader)initWithDefaultVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment label:(id)label setupBindings:(BOOL)bindings;
- (id)description;
- (id)initCustomShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device bundle:(id)bundle colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initCustomShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initDefaultBlendShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur;
- (id)initDefaultColorShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultGaussianBlurShaderWithDevice:(id)device colorAttachment:(id)attachment halfSizedRadius:(BOOL)radius;
- (id)initDefaultMaskedTextureShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment;
- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTextureAndColorShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur;
- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initDefaultTextureShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultTileMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultVelocityCollectionShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)device colorAttachment:(id)attachment;
- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)shader device:(id)device bundle:(id)bundle colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)initQuadTextureShaderWithFragmentShader:(id)shader device:(id)device bundle:(id)bundle colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment;
- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)descriptor device:(id)device setupBindings:(BOOL)bindings;
- (int64_t)p_indexOfSamplerStateFromMetalBindings:(id)bindings;
- (int64_t)p_indexOfUniformsFromMetalBindings:(id)bindings size:(unint64_t *)size bufferIndex:(unint64_t *)index;
- (void)p_setupPipelineStateWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device vertexLibrary:(id)library fragmentLibrary:(id)fragmentLibrary colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment setupBindings:(BOOL)self0;
- (void)setPipelineStateWithEncoder:(id)encoder vertexBytes:(const void *)bytes fragmentBytes:(const void *)fragmentBytes samplerState:(id)state;
@end

@implementation CRLMetalShader

+ (id)p_blendingColorAttachmentWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  pixelFormat = [contextCopy pixelFormat];

  [v4 setPixelFormat:pixelFormat];
  [v4 setBlendingEnabled:1];
  [v4 setRgbBlendOperation:0];
  [v4 setAlphaBlendOperation:0];
  [v4 setSourceRGBBlendFactor:1];
  [v4 setSourceAlphaBlendFactor:1];
  [v4 setDestinationAlphaBlendFactor:5];
  [v4 setDestinationRGBBlendFactor:5];

  return v4;
}

+ (id)p_motionBlurVelocityColorAttachmentWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  pixelFormat = [contextCopy pixelFormat];

  [v4 setPixelFormat:pixelFormat];

  return v4;
}

+ (id)defaultTextureAndOpacityShaderWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];

  if (!device)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344E80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344E94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344F30();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader defaultTextureAndOpacityShaderWithContext:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:92 isFatal:0 description:"invalid nil value for '%{public}s'", "context.device"];
  }

  environment = [contextCopy environment];
  shaderManager = [environment shaderManager];

  device2 = [contextCopy device];
  device3 = [shaderManager device];

  if (device2 != device3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344F58();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344F80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345010();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader defaultTextureAndOpacityShaderWithContext:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:94 isFatal:0 description:"MTLDevice mismatch!"];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10029564C;
  v20[3] = &unk_101850320;
  v21 = contextCopy;
  selfCopy = self;
  v16 = contextCopy;
  v17 = objc_retainBlock(v20);
  v18 = [shaderManager shaderWithName:@"Default Texture and Opacity Shader" initBlock:v17];

  return v18;
}

+ (id)defaultTextureAndOpacityShaderForMotionBlurWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];

  if (!device)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345038();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134504C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013450E8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader defaultTextureAndOpacityShaderForMotionBlurWithContext:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:105 isFatal:0 description:"invalid nil value for '%{public}s'", "context.device"];
  }

  environment = [contextCopy environment];
  shaderManager = [environment shaderManager];

  device2 = [contextCopy device];
  device3 = [shaderManager device];

  if (device2 != device3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345110();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345138();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013451C8();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader defaultTextureAndOpacityShaderForMotionBlurWithContext:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:107 isFatal:0 description:"MTLDevice mismatch!"];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100295B04;
  v19[3] = &unk_1018503C8;
  v20 = contextCopy;
  v15 = contextCopy;
  v16 = objc_retainBlock(v19);
  v17 = [shaderManager shaderWithName:@"Default Texture and Opacity Shader with Motion Blur" initBlock:v16];

  return v17;
}

+ (id)blendTextureShaderWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];

  if (!device)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013451F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345204();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013452A0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader blendTextureShaderWithContext:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:119 isFatal:0 description:"invalid nil value for '%{public}s'", "context.device"];
  }

  environment = [contextCopy environment];
  shaderManager = [environment shaderManager];

  device2 = [contextCopy device];
  device3 = [shaderManager device];

  if (device2 != device3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013452C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013452F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345380();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader blendTextureShaderWithContext:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:121 isFatal:0 description:"MTLDevice mismatch!"];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100295FDC;
  v19[3] = &unk_1018503C8;
  v20 = contextCopy;
  v15 = contextCopy;
  v16 = objc_retainBlock(v19);
  v17 = [shaderManager shaderWithName:@"Default Texture Blending Shader" initBlock:v16];

  return v17;
}

+ (id)blendTextureShaderForMotionBlurWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];

  if (!device)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013453A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013453BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345458();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader blendTextureShaderForMotionBlurWithContext:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:132 isFatal:0 description:"invalid nil value for '%{public}s'", "context.device"];
  }

  environment = [contextCopy environment];
  shaderManager = [environment shaderManager];

  device2 = [contextCopy device];
  device3 = [shaderManager device];

  if (device2 != device3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345480();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013454A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345538();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader blendTextureShaderForMotionBlurWithContext:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:134 isFatal:0 description:"MTLDevice mismatch!"];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10029649C;
  v19[3] = &unk_1018503C8;
  v20 = contextCopy;
  v15 = contextCopy;
  v16 = objc_retainBlock(v19);
  v17 = [shaderManager shaderWithName:@"Default Texture Blending Shader with Motion Blur" initBlock:v16];

  return v17;
}

+ (id)defaultColorShaderWithContext:(id)context
{
  contextCopy = context;
  device = [contextCopy device];

  if (!device)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345560();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345574();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345610();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader defaultColorShaderWithContext:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:146 isFatal:0 description:"invalid nil value for '%{public}s'", "context.device"];
  }

  environment = [contextCopy environment];
  shaderManager = [environment shaderManager];

  device2 = [contextCopy device];
  device3 = [shaderManager device];

  if (device2 != device3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345638();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345660();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013456F0();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader defaultColorShaderWithContext:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:148 isFatal:0 description:"MTLDevice mismatch!"];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100296974;
  v19[3] = &unk_1018503C8;
  v20 = contextCopy;
  v15 = contextCopy;
  v16 = objc_retainBlock(v19);
  v17 = [shaderManager shaderWithName:@"Default Color Shader" initBlock:v16];

  return v17;
}

+ (id)linearClampToEdgeSamplerWithDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345718();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134572C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013457C8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLMetalShader linearClampToEdgeSamplerWithDevice:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:159 isFatal:0 description:"invalid nil value for '%{public}s'", "device"];
  }

  v7 = objc_opt_new();
  [v7 setMinFilter:1];
  [v7 setMagFilter:1];
  [v7 setMipFilter:2];
  [v7 setRAddressMode:0];
  [v7 setSAddressMode:0];
  [v7 setTAddressMode:0];
  v8 = [deviceCopy newSamplerStateWithDescriptor:v7];

  return v8;
}

- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)descriptor device:(id)device setupBindings:(BOOL)bindings
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  v10 = deviceCopy;
  if (!bindings)
  {
    v36 = 0;
    v11 = [deviceCopy newRenderPipelineStateWithDescriptor:descriptorCopy error:&v36];
    v13 = v36;
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v34 = 0;
  v35 = 0;
  v11 = [deviceCopy newRenderPipelineStateWithDescriptor:descriptorCopy options:3 reflection:&v35 error:&v34];
  v12 = v35;
  v13 = v34;
  if (!v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013458C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013458F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345978();
    }

    v22 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v22);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Failed to create pipeline reflection object, error %@", v23, v24, v25, v26, v27, v28, v29, "[CRLMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupBindings:]");
    v30 = [NSString stringWithUTF8String:"[CRLMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupBindings:]"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:193 isFatal:1 description:"Failed to create pipeline reflection object, error %@", v13, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m", 193, v13];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, v33);
    abort();
  }

  vertexBindings = [(MTLRenderPipelineReflection *)v12 vertexBindings];
  self->_vertexUniformsIndex = [(CRLMetalShader *)self p_indexOfUniformsFromMetalBindings:vertexBindings size:&self->_vertexUniformsSize bufferIndex:&self->_bufferIndex];

  fragmentBindings = [(MTLRenderPipelineReflection *)v12 fragmentBindings];
  self->_fragmentUniformsIndex = [(CRLMetalShader *)self p_indexOfUniformsFromMetalBindings:fragmentBindings size:&self->_fragmentUniformsSize bufferIndex:0];

  fragmentBindings2 = [(MTLRenderPipelineReflection *)v12 fragmentBindings];
  self->_samplerStateIndex = [(CRLMetalShader *)self p_indexOfSamplerStateFromMetalBindings:fragmentBindings2];

  pipelineReflectionObject = self->_pipelineReflectionObject;
  self->_pipelineReflectionObject = v12;

  if (!v11)
  {
LABEL_6:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013457F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345818();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013458A0();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLMetalShader p_createPipelineStateWithRenderPipelineDescriptor:device:setupBindings:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:203 isFatal:0 description:"Failed to create pipeline state, error %@", v13];
  }

LABEL_15:

  return v11;
}

- (int64_t)p_indexOfUniformsFromMetalBindings:(id)bindings size:(unint64_t *)size bufferIndex:(unint64_t *)index
{
  bindingsCopy = bindings;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [bindingsCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v13 = v6;
    bufferDataSize = 0;
    v15 = *v29;
    v26 = 0;
    v27 = -1;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(bindingsCopy);
        }

        v17 = sub_1003035DC(*(*(&v28 + 1) + 8 * i), 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___MTLBufferBinding);
        v18 = v17;
        if (v17 && [v17 bufferDataType] == 1)
        {
          name = [v18 name];
          v20 = [name isEqualToString:@"uniforms"];

          index = [v18 index];
          v22 = index;
          if (v20)
          {
            bufferDataSize = [v18 bufferDataSize];
            v27 = v22;
          }

          else
          {
            v26 = index;
          }
        }
      }

      v13 = [bindingsCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  else
  {
    bufferDataSize = 0;
    v26 = 0;
    v27 = -1;
  }

  if (index)
  {
    *index = v26;
  }

  *size = bufferDataSize;

  return v27;
}

- (int64_t)p_indexOfSamplerStateFromMetalBindings:(id)bindings
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  bindingsCopy = bindings;
  v4 = [bindingsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(bindingsCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 type] == 3)
        {
          name = [v8 name];
          v10 = [name isEqualToString:@"mainSampler"];

          if (v10)
          {
            index = [v8 index];
            goto LABEL_12;
          }
        }
      }

      v5 = [bindingsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  index = -1;
LABEL_12:

  return index;
}

- (void)p_setupPipelineStateWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device vertexLibrary:(id)library fragmentLibrary:(id)fragmentLibrary colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment setupBindings:(BOOL)self0
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  libraryCopy = library;
  fragmentLibraryCopy = fragmentLibrary;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v49 = velocityAttachmentCopy;
  v50 = fragmentLibraryCopy;
  if (libraryCopy && fragmentLibraryCopy)
  {
    v23 = velocityAttachmentCopy;
    v24 = objc_alloc_init(MTLRenderPipelineDescriptor);
    v25 = v24;
    v48 = shaderCopy;
    if (attachmentCopy)
    {
      colorAttachments = [v24 colorAttachments];
      [colorAttachments setObject:attachmentCopy atIndexedSubscript:0];

      if (v23)
      {
        colorAttachments2 = [v25 colorAttachments];
        [colorAttachments2 setObject:v23 atIndexedSubscript:1];
      }

      name = [(CRLMetalShader *)self name];

      if (name)
      {
        name2 = [(CRLMetalShader *)self name];
        [v25 setLabel:name2];
      }

      v30 = [libraryCopy newFunctionWithName:shaderCopy];
      if (!v30)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        v32 = fragmentShaderCopy;
        if (qword_101AD5A10 != -1)
        {
          sub_101345B44();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101345B58();
        }

        v35 = attachmentCopy;
        if (qword_101AD5A10 != -1)
        {
          sub_101345BF4();
        }

        v36 = deviceCopy;
        v42 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v42);
        }

        v31 = [NSString stringWithUTF8String:"[CRLMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:vertexLibrary:fragmentLibrary:colorAttachment:velocityAttachment:setupBindings:]"];
        v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v43 lineNumber:283 isFatal:0 description:"invalid nil value for '%{public}s'", "vertexFunction"];

        goto LABEL_51;
      }

      [v25 setVertexFunction:v30];
      v31 = [fragmentLibraryCopy newFunctionWithName:fragmentShaderCopy];
      if (v31)
      {
        v32 = fragmentShaderCopy;
        [v25 setFragmentFunction:v31];
        v33 = [(CRLMetalShader *)self p_createPipelineStateWithRenderPipelineDescriptor:v25 device:deviceCopy setupBindings:bindings];
        pipelineState = self->_pipelineState;
        self->_pipelineState = v33;

        v35 = attachmentCopy;
        if (!bindings || self->_samplerStateIndex < 0)
        {
          v36 = deviceCopy;
        }

        else
        {
          v36 = deviceCopy;
          v37 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:deviceCopy];
          defaultSamplerState = self->_defaultSamplerState;
          self->_defaultSamplerState = v37;
        }

        goto LABEL_51;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v47 = fragmentShaderCopy;
      if (qword_101AD5A10 != -1)
      {
        sub_101345A6C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101345A80();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101345B1C();
      }

      v35 = attachmentCopy;
      v44 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v44);
      }

      v36 = deviceCopy;
      v45 = [NSString stringWithUTF8String:"[CRLMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:vertexLibrary:fragmentLibrary:colorAttachment:velocityAttachment:setupBindings:]"];
      v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
      [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:291 isFatal:0 description:"invalid nil value for '%{public}s'", "fragmentFunction"];
    }

    else
    {
      v47 = fragmentShaderCopy;
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101345C1C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101345C30();
      }

      v35 = 0;
      if (qword_101AD5A10 != -1)
      {
        sub_101345CCC();
      }

      v36 = deviceCopy;
      v41 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v41);
      }

      v30 = [NSString stringWithUTF8String:"[CRLMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:vertexLibrary:fragmentLibrary:colorAttachment:velocityAttachment:setupBindings:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:267 isFatal:0 description:"invalid nil value for '%{public}s'", "colorAttachment"];
    }

    v32 = v47;
LABEL_51:

    v39 = v48;
    goto LABEL_52;
  }

  v35 = attachmentCopy;
  v36 = deviceCopy;
  v32 = fragmentShaderCopy;
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  v39 = shaderCopy;
  if (qword_101AD5A10 != -1)
  {
    sub_1013459A0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013459B4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101345A44();
  }

  v40 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v40);
  }

  v25 = [NSString stringWithUTF8String:"[CRLMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:vertexLibrary:fragmentLibrary:colorAttachment:velocityAttachment:setupBindings:]"];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
  [CRLAssertionHandler handleFailureInFunction:v25 file:v30 lineNumber:259 isFatal:0 description:"Can't load shaders from nil library"];
LABEL_52:
}

- (CRLMetalShader)initWithDefaultVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment label:(id)label setupBindings:(BOOL)bindings
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  labelCopy = label;
  v25.receiver = self;
  v25.super_class = CRLMetalShader;
  v21 = [(CRLMetalShader *)&v25 init];
  if (v21)
  {
    v22 = [CRLMetalShaderLibraryLoader loadDefaultLibraryWithDevice:deviceCopy];
    objc_storeStrong(&v21->_name, label);
    v21->_vertexUniformsIndex = -1;
    v21->_fragmentUniformsIndex = -1;
    v21->_samplerStateIndex = -1;
    LOBYTE(v24) = bindings;
    [(CRLMetalShader *)v21 p_setupPipelineStateWithVertexShader:shaderCopy fragmentShader:fragmentShaderCopy device:deviceCopy vertexLibrary:v22 fragmentLibrary:v22 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupBindings:v24];
  }

  return v21;
}

- (id)initDefaultShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment
{
  attachmentCopy = attachment;
  deviceCopy = device;
  fragmentShaderCopy = fragmentShader;
  shaderCopy = shader;
  v14 = [shaderCopy componentsSeparatedByString:@"_"];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 copy];

  LOBYTE(v19) = 1;
  v17 = [(CRLMetalShader *)self initWithDefaultVertexShader:shaderCopy fragmentShader:fragmentShaderCopy device:deviceCopy colorAttachment:attachmentCopy velocityAttachment:0 label:v16 setupBindings:v19];

  return v17;
}

- (id)initDefaultTextureShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultTexture_FragmentShader" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Texture Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  deviceCopy = device;
  LOBYTE(v12) = 0;
  v7 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultOpacityTexture_FragmentShader" device:deviceCopy colorAttachment:attachment velocityAttachment:0 label:@"Default Texture and Opacity Shader" setupBindings:v12];
  v8 = v7;
  if (v7)
  {
    [(CRLMetalShader *)v7 p_setDefaultVertexUniforms];
    *&v8->_fragmentUniformsIndex = xmmword_101464710;
    v8->_samplerStateIndex = 0;
    v9 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:deviceCopy];
    defaultSamplerState = v8->_defaultSamplerState;
    v8->_defaultSamplerState = v9;
  }

  return v8;
}

- (id)initDefaultTextureAndColorShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  deviceCopy = device;
  LOBYTE(v12) = 0;
  v7 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultTextureAndColor_FragmentShader" device:deviceCopy colorAttachment:attachment velocityAttachment:0 label:@"Default Texture and Color Shader" setupBindings:v12];
  v8 = v7;
  if (v7)
  {
    [(CRLMetalShader *)v7 p_setDefaultVertexUniforms];
    *&v8->_fragmentUniformsIndex = xmmword_101464720;
    v8->_samplerStateIndex = 0;
    v9 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:deviceCopy];
    defaultSamplerState = v8->_defaultSamplerState;
    v8->_defaultSamplerState = v9;
  }

  return v8;
}

- (id)initDefaultMaskedTextureShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultMaskedTexture_FragmentShader" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Masked Texture Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_101464730;
  }

  return v5;
}

- (id)initDefaultGaussianBlurShaderWithDevice:(id)device colorAttachment:(id)attachment halfSizedRadius:(BOOL)radius
{
  if (radius)
  {
    v6 = @"CRLMetalShaderDefaultHalfSizedRadiusGaussianBlur_FragmentShader";
  }

  else
  {
    v6 = @"CRLMetalShaderDefaultGaussianBlur_FragmentShader";
  }

  if (radius)
  {
    v7 = @"Default Gaussain Blur Shader with Radius 5";
  }

  else
  {
    v7 = @"Default Gaussian Blur Shader with Radius 9";
  }

  LOBYTE(v11) = 0;
  v8 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:v6 device:device colorAttachment:attachment velocityAttachment:0 label:v7 setupBindings:v11];
  v9 = v8;
  if (v8)
  {
    [(CRLMetalShader *)v8 p_setDefaultVertexUniforms];
    *&v9->_fragmentUniformsIndex = xmmword_101464740;
  }

  return v9;
}

- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  LOBYTE(v6) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultMotionBlurTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultMotionBlurTexture_FragmentShader" device:device colorAttachment:attachment velocityAttachment:velocityAttachment label:@"Default Texture Shader with Motion Blur" setupBindings:v6];
  if (result)
  {
    *(result + 8) = xmmword_101464750;
    *(result + 9) = 1;
  }

  return result;
}

- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur
{
  blurCopy = blur;
  deviceCopy = device;
  if (blurCopy)
  {
    v11 = @"CRLMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v11 = @"CRLMetalShaderDefaultTexture_VertexShader";
  }

  if (blurCopy)
  {
    v12 = @"CRLMetalShaderDefaultMotionBlurOpacityTexture_FragmentShader";
  }

  else
  {
    v12 = @"CRLMetalShaderDefaultOpacityTexture_FragmentShader";
  }

  LOBYTE(v20) = 0;
  v13 = [(CRLMetalShader *)self initWithDefaultVertexShader:v11 fragmentShader:v12 device:deviceCopy colorAttachment:attachment velocityAttachment:velocityAttachment label:@"Default Texture and Opacity Shader with Motion Blur" setupBindings:v20];
  v14 = v13;
  if (v13)
  {
    v15 = 64;
    if (blurCopy)
    {
      v15 = 192;
    }

    v16 = !blurCopy;
    v13->_vertexUniformsIndex = v16;
    v13->_vertexUniformsSize = v15;
    v13->_fragmentUniformsIndex = v16;
    v13->_bufferIndex = blurCopy;
    *&v13->_fragmentUniformsSize = xmmword_101464760;
    v17 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:deviceCopy];
    defaultSamplerState = v14->_defaultSamplerState;
    v14->_defaultSamplerState = v17;
  }

  return v14;
}

- (id)initDefaultBlendShaderWithDevice:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment motionBlur:(BOOL)blur
{
  blurCopy = blur;
  deviceCopy = device;
  if (blurCopy)
  {
    v11 = @"CRLMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v11 = @"CRLMetalShaderDefaultTexture_VertexShader";
  }

  if (blurCopy)
  {
    v12 = @"CRLMetalShaderDefaultMotionBlurBlendTexture_FragmentShader";
  }

  else
  {
    v12 = @"CRLMetalShaderDefaultBlendTexture_FragmentShader";
  }

  if (blurCopy)
  {
    v13 = @"Default Texture Blending Shader with Motion Blur";
  }

  else
  {
    v13 = @"Default Texture Blending Shader";
  }

  LOBYTE(v19) = 0;
  v14 = [(CRLMetalShader *)self initWithDefaultVertexShader:v11 fragmentShader:v12 device:deviceCopy colorAttachment:attachment velocityAttachment:velocityAttachment label:v13 setupBindings:v19];
  v15 = v14;
  if (v14)
  {
    if (blurCopy)
    {
      *&v14->_vertexUniformsIndex = xmmword_101464750;
      v14->_bufferIndex = 1;
    }

    else
    {
      [(CRLMetalShader *)v14 p_setDefaultVertexUniforms];
    }

    *&v15->_fragmentUniformsIndex = xmmword_101464770;
    v15->_samplerStateIndex = 0;
    v16 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:deviceCopy];
    defaultSamplerState = v15->_defaultSamplerState;
    v15->_defaultSamplerState = v16;
  }

  return v15;
}

- (id)initDefaultColorShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  deviceCopy = device;
  LOBYTE(v12) = 0;
  v7 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultColor_FragmentShader" device:deviceCopy colorAttachment:attachment velocityAttachment:0 label:@"Default Color Shader" setupBindings:v12];
  v8 = v7;
  if (v7)
  {
    [(CRLMetalShader *)v7 p_setDefaultVertexUniforms];
    *&v8->_fragmentUniformsIndex = xmmword_101464720;
    v8->_samplerStateIndex = 0;
    v9 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:deviceCopy];
    defaultSamplerState = v8->_defaultSamplerState;
    v8->_defaultSamplerState = v9;
  }

  return v8;
}

- (id)initDefaultVelocityCollectionShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v5) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalMotionBlurEffect_Collection_Vertex" fragmentShader:@"CRLMetalMotionBlurEffect_Collection_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Velocity Collection Shader" setupBindings:v5];
  if (result)
  {
    *(result + 8) = xmmword_101464780;
    *(result + 24) = xmmword_101464790;
    *(result + 9) = 1;
  }

  return result;
}

- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalMotionBlurEffect_Visualizer_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Velocity Visualizer Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalMotionBlurEffect_Neighbor_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Neighbor Max Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_101464780;
  }

  return v5;
}

- (id)initDefaultTileMaxBlurShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v5) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalMotionBlurEffect_Tile_Vertex" fragmentShader:@"CRLMetalMotionBlurEffect_Tile_Fragment" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Tile Max Shader" setupBindings:v5];
  if (result)
  {
    *(result + 8) = xmmword_1014647A0;
    *(result + 24) = xmmword_1014647B0;
    *(result + 9) = 1;
  }

  return result;
}

- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)device colorAttachment:(id)attachment
{
  LOBYTE(v5) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderMotionBlurSingleDirection_VertexShader" fragmentShader:@"CRLMetalShaderMotionBlurSingleDirection_FragmentShader" device:device colorAttachment:attachment velocityAttachment:0 label:@"Default Single Direction Motion Blur Shader" setupBindings:v5];
  if (result)
  {
    *(result + 8) = xmmword_1014647C0;
    *(result + 24) = xmmword_101464710;
    *(result + 9) = 0;
  }

  return result;
}

- (id)initCustomShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device bundle:(id)bundle colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  bundleCopy = bundle;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v28.receiver = self;
  v28.super_class = CRLMetalShader;
  v20 = [(CRLMetalShader *)&v28 init];
  if (v20)
  {
    v21 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy bundle:bundleCopy];
    v22 = [shaderCopy componentsSeparatedByString:@"_"];
    v23 = [v22 objectAtIndexedSubscript:0];
    v24 = [v23 copy];
    name = v20->_name;
    v20->_name = v24;

    v20->_vertexUniformsIndex = -1;
    v20->_fragmentUniformsIndex = -1;
    v20->_samplerStateIndex = -1;
    LOBYTE(v27) = 1;
    [(CRLMetalShader *)v20 p_setupPipelineStateWithVertexShader:shaderCopy fragmentShader:fragmentShaderCopy device:deviceCopy vertexLibrary:v21 fragmentLibrary:v21 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupBindings:v27];
  }

  return v20;
}

- (id)initQuadTextureShaderWithFragmentShader:(id)shader device:(id)device bundle:(id)bundle colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  shaderCopy = shader;
  deviceCopy = device;
  bundleCopy = bundle;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v27.receiver = self;
  v27.super_class = CRLMetalShader;
  v17 = [(CRLMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy bundle:bundleCopy];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy bundle:v19];

    v21 = [shaderCopy componentsSeparatedByString:@"_"];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [v22 copy];
    name = v17->_name;
    v17->_name = v23;

    v17->_vertexUniformsIndex = -1;
    v17->_fragmentUniformsIndex = -1;
    v17->_samplerStateIndex = -1;
    LOBYTE(v26) = 1;
    [(CRLMetalShader *)v17 p_setupPipelineStateWithVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:shaderCopy device:deviceCopy vertexLibrary:v20 fragmentLibrary:v18 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupBindings:v26];
  }

  return v17;
}

- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)shader device:(id)device bundle:(id)bundle colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  shaderCopy = shader;
  deviceCopy = device;
  bundleCopy = bundle;
  attachmentCopy = attachment;
  velocityAttachmentCopy = velocityAttachment;
  v27.receiver = self;
  v27.super_class = CRLMetalShader;
  v17 = [(CRLMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy bundle:bundleCopy];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:deviceCopy bundle:v19];

    v21 = [shaderCopy componentsSeparatedByString:@"_"];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [v22 copy];
    name = v17->_name;
    v17->_name = v23;

    v17->_vertexUniformsIndex = -1;
    v17->_fragmentUniformsIndex = -1;
    v17->_samplerStateIndex = -1;
    LOBYTE(v26) = 1;
    [(CRLMetalShader *)v17 p_setupPipelineStateWithVertexShader:@"CRLMetalShaderDefaultMotionBlurTexture_VertexShader" fragmentShader:shaderCopy device:deviceCopy vertexLibrary:v20 fragmentLibrary:v18 colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy setupBindings:v26];
  }

  return v17;
}

- (id)initCustomShaderWithVertexShader:(id)shader fragmentShader:(id)fragmentShader device:(id)device colorAttachment:(id)attachment velocityAttachment:(id)velocityAttachment
{
  velocityAttachmentCopy = velocityAttachment;
  attachmentCopy = attachment;
  deviceCopy = device;
  fragmentShaderCopy = fragmentShader;
  shaderCopy = shader;
  v17 = [shaderCopy componentsSeparatedByString:@"_"];
  v18 = [v17 objectAtIndexedSubscript:0];
  v19 = [v18 copy];
  LOBYTE(v22) = 1;
  v20 = [(CRLMetalShader *)self initWithDefaultVertexShader:shaderCopy fragmentShader:fragmentShaderCopy device:deviceCopy colorAttachment:attachmentCopy velocityAttachment:velocityAttachmentCopy label:v19 setupBindings:v22];

  return v20;
}

- (void)setPipelineStateWithEncoder:(id)encoder vertexBytes:(const void *)bytes fragmentBytes:(const void *)fragmentBytes samplerState:(id)state
{
  encoderCopy = encoder;
  stateCopy = state;
  [encoderCopy setRenderPipelineState:self->_pipelineState];
  if (bytes)
  {
    if ((self->_vertexUniformsIndex & 0x8000000000000000) == 0)
    {
      [encoderCopy setVertexBytes:bytes length:self->_vertexUniformsSize atIndex:?];
    }

    if (fragmentBytes)
    {
      goto LABEL_5;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345CF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345D08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101345DA4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLMetalShader setPipelineStateWithEncoder:vertexBytes:fragmentBytes:samplerState:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:765 isFatal:0 description:"invalid nil value for '%{public}s'", "vertexBytes"];

    if (fragmentBytes)
    {
LABEL_5:
      if ((self->_fragmentUniformsIndex & 0x8000000000000000) == 0)
      {
        [encoderCopy setFragmentBytes:fragmentBytes length:self->_fragmentUniformsSize atIndex:?];
      }

      if (!stateCopy)
      {
        goto LABEL_37;
      }

LABEL_27:
      if (self->_samplerStateIndex < 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101345EB8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101345EE0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101345F70();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v18);
        }

        v19 = [NSString stringWithUTF8String:"[CRLMetalShader setPipelineStateWithEncoder:vertexBytes:fragmentBytes:samplerState:]"];
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
        [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:775 isFatal:0 description:"Sampler state given but not used."];
      }

      goto LABEL_37;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101345DCC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101345DF4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101345E90();
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v15);
  }

  v16 = [NSString stringWithUTF8String:"[CRLMetalShader setPipelineStateWithEncoder:vertexBytes:fragmentBytes:samplerState:]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
  [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:770 isFatal:0 description:"invalid nil value for '%{public}s'", "fragmentBytes"];

  if (stateCopy)
  {
    goto LABEL_27;
  }

LABEL_37:
  if ((self->_samplerStateIndex & 0x8000000000000000) == 0)
  {
    [encoderCopy setFragmentSamplerState:stateCopy atIndex:?];
  }
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CRLMetalShader;
  v3 = [(CRLMetalShader *)&v9 description];
  name = [(CRLMetalShader *)self name];
  v5 = name;
  v6 = @"Unnamed";
  if (name)
  {
    v6 = name;
  }

  v7 = [NSString stringWithFormat:@"%@: %@", v3, v6];

  return v7;
}

@end