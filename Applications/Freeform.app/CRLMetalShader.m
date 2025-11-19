@interface CRLMetalShader
+ (id)blendTextureShaderForMotionBlurWithContext:(id)a3;
+ (id)blendTextureShaderWithContext:(id)a3;
+ (id)defaultColorShaderWithContext:(id)a3;
+ (id)defaultTextureAndOpacityShaderForMotionBlurWithContext:(id)a3;
+ (id)defaultTextureAndOpacityShaderWithContext:(id)a3;
+ (id)linearClampToEdgeSamplerWithDevice:(id)a3;
+ (id)p_blendingColorAttachmentWithContext:(id)a3;
+ (id)p_motionBlurVelocityColorAttachmentWithContext:(id)a3;
- (CRLMetalShader)initWithDefaultVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7 label:(id)a8 setupBindings:(BOOL)a9;
- (id)description;
- (id)initCustomShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 bundle:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8;
- (id)initCustomShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7;
- (id)initDefaultBlendShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6;
- (id)initDefaultColorShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultGaussianBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 halfSizedRadius:(BOOL)a5;
- (id)initDefaultMaskedTextureShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6;
- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTextureAndColorShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6;
- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5;
- (id)initDefaultTextureShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultTileMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultVelocityCollectionShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)a3 colorAttachment:(id)a4;
- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)a3 device:(id)a4 bundle:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7;
- (id)initQuadTextureShaderWithFragmentShader:(id)a3 device:(id)a4 bundle:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7;
- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)a3 device:(id)a4 setupBindings:(BOOL)a5;
- (int64_t)p_indexOfSamplerStateFromMetalBindings:(id)a3;
- (int64_t)p_indexOfUniformsFromMetalBindings:(id)a3 size:(unint64_t *)a4 bufferIndex:(unint64_t *)a5;
- (void)p_setupPipelineStateWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 vertexLibrary:(id)a6 fragmentLibrary:(id)a7 colorAttachment:(id)a8 velocityAttachment:(id)a9 setupBindings:(BOOL)a10;
- (void)setPipelineStateWithEncoder:(id)a3 vertexBytes:(const void *)a4 fragmentBytes:(const void *)a5 samplerState:(id)a6;
@end

@implementation CRLMetalShader

+ (id)p_blendingColorAttachmentWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  v5 = [v3 pixelFormat];

  [v4 setPixelFormat:v5];
  [v4 setBlendingEnabled:1];
  [v4 setRgbBlendOperation:0];
  [v4 setAlphaBlendOperation:0];
  [v4 setSourceRGBBlendFactor:1];
  [v4 setSourceAlphaBlendFactor:1];
  [v4 setDestinationAlphaBlendFactor:5];
  [v4 setDestinationRGBBlendFactor:5];

  return v4;
}

+ (id)p_motionBlurVelocityColorAttachmentWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptor);
  v5 = [v3 pixelFormat];

  [v4 setPixelFormat:v5];

  return v4;
}

+ (id)defaultTextureAndOpacityShaderWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 device];

  if (!v5)
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

  v9 = [v4 environment];
  v10 = [v9 shaderManager];

  v11 = [v4 device];
  v12 = [v10 device];

  if (v11 != v12)
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
  v21 = v4;
  v22 = a1;
  v16 = v4;
  v17 = objc_retainBlock(v20);
  v18 = [v10 shaderWithName:@"Default Texture and Opacity Shader" initBlock:v17];

  return v18;
}

+ (id)defaultTextureAndOpacityShaderForMotionBlurWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 device];

  if (!v4)
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

  v8 = [v3 environment];
  v9 = [v8 shaderManager];

  v10 = [v3 device];
  v11 = [v9 device];

  if (v10 != v11)
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
  v20 = v3;
  v15 = v3;
  v16 = objc_retainBlock(v19);
  v17 = [v9 shaderWithName:@"Default Texture and Opacity Shader with Motion Blur" initBlock:v16];

  return v17;
}

+ (id)blendTextureShaderWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 device];

  if (!v4)
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

  v8 = [v3 environment];
  v9 = [v8 shaderManager];

  v10 = [v3 device];
  v11 = [v9 device];

  if (v10 != v11)
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
  v20 = v3;
  v15 = v3;
  v16 = objc_retainBlock(v19);
  v17 = [v9 shaderWithName:@"Default Texture Blending Shader" initBlock:v16];

  return v17;
}

+ (id)blendTextureShaderForMotionBlurWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 device];

  if (!v4)
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

  v8 = [v3 environment];
  v9 = [v8 shaderManager];

  v10 = [v3 device];
  v11 = [v9 device];

  if (v10 != v11)
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
  v20 = v3;
  v15 = v3;
  v16 = objc_retainBlock(v19);
  v17 = [v9 shaderWithName:@"Default Texture Blending Shader with Motion Blur" initBlock:v16];

  return v17;
}

+ (id)defaultColorShaderWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 device];

  if (!v4)
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

  v8 = [v3 environment];
  v9 = [v8 shaderManager];

  v10 = [v3 device];
  v11 = [v9 device];

  if (v10 != v11)
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
  v20 = v3;
  v15 = v3;
  v16 = objc_retainBlock(v19);
  v17 = [v9 shaderWithName:@"Default Color Shader" initBlock:v16];

  return v17;
}

+ (id)linearClampToEdgeSamplerWithDevice:(id)a3
{
  v3 = a3;
  if (!v3)
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
  v8 = [v3 newSamplerStateWithDescriptor:v7];

  return v8;
}

- (id)p_createPipelineStateWithRenderPipelineDescriptor:(id)a3 device:(id)a4 setupBindings:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a5)
  {
    v36 = 0;
    v11 = [v9 newRenderPipelineStateWithDescriptor:v8 error:&v36];
    v13 = v36;
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v34 = 0;
  v35 = 0;
  v11 = [v9 newRenderPipelineStateWithDescriptor:v8 options:3 reflection:&v35 error:&v34];
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

  v14 = [(MTLRenderPipelineReflection *)v12 vertexBindings];
  self->_vertexUniformsIndex = [(CRLMetalShader *)self p_indexOfUniformsFromMetalBindings:v14 size:&self->_vertexUniformsSize bufferIndex:&self->_bufferIndex];

  v15 = [(MTLRenderPipelineReflection *)v12 fragmentBindings];
  self->_fragmentUniformsIndex = [(CRLMetalShader *)self p_indexOfUniformsFromMetalBindings:v15 size:&self->_fragmentUniformsSize bufferIndex:0];

  v16 = [(MTLRenderPipelineReflection *)v12 fragmentBindings];
  self->_samplerStateIndex = [(CRLMetalShader *)self p_indexOfSamplerStateFromMetalBindings:v16];

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

- (int64_t)p_indexOfUniformsFromMetalBindings:(id)a3 size:(unint64_t *)a4 bufferIndex:(unint64_t *)a5
{
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v13 = v6;
    v14 = 0;
    v15 = *v29;
    v26 = 0;
    v27 = -1;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = sub_1003035DC(*(*(&v28 + 1) + 8 * i), 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___MTLBufferBinding);
        v18 = v17;
        if (v17 && [v17 bufferDataType] == 1)
        {
          v19 = [v18 name];
          v20 = [v19 isEqualToString:@"uniforms"];

          v21 = [v18 index];
          v22 = v21;
          if (v20)
          {
            v14 = [v18 bufferDataSize];
            v27 = v22;
          }

          else
          {
            v26 = v21;
          }
        }
      }

      v13 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v26 = 0;
    v27 = -1;
  }

  if (a5)
  {
    *a5 = v26;
  }

  *a4 = v14;

  return v27;
}

- (int64_t)p_indexOfSamplerStateFromMetalBindings:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 type] == 3)
        {
          v9 = [v8 name];
          v10 = [v9 isEqualToString:@"mainSampler"];

          if (v10)
          {
            v11 = [v8 index];
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = -1;
LABEL_12:

  return v11;
}

- (void)p_setupPipelineStateWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 vertexLibrary:(id)a6 fragmentLibrary:(id)a7 colorAttachment:(id)a8 velocityAttachment:(id)a9 setupBindings:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v49 = v22;
  v50 = v20;
  if (v19 && v20)
  {
    v23 = v22;
    v24 = objc_alloc_init(MTLRenderPipelineDescriptor);
    v25 = v24;
    v48 = v16;
    if (v21)
    {
      v26 = [v24 colorAttachments];
      [v26 setObject:v21 atIndexedSubscript:0];

      if (v23)
      {
        v27 = [v25 colorAttachments];
        [v27 setObject:v23 atIndexedSubscript:1];
      }

      v28 = [(CRLMetalShader *)self name];

      if (v28)
      {
        v29 = [(CRLMetalShader *)self name];
        [v25 setLabel:v29];
      }

      v30 = [v19 newFunctionWithName:v16];
      if (!v30)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        v32 = v17;
        if (qword_101AD5A10 != -1)
        {
          sub_101345B44();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101345B58();
        }

        v35 = v21;
        if (qword_101AD5A10 != -1)
        {
          sub_101345BF4();
        }

        v36 = v18;
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
      v31 = [v20 newFunctionWithName:v17];
      if (v31)
      {
        v32 = v17;
        [v25 setFragmentFunction:v31];
        v33 = [(CRLMetalShader *)self p_createPipelineStateWithRenderPipelineDescriptor:v25 device:v18 setupBindings:a10];
        pipelineState = self->_pipelineState;
        self->_pipelineState = v33;

        v35 = v21;
        if (!a10 || self->_samplerStateIndex < 0)
        {
          v36 = v18;
        }

        else
        {
          v36 = v18;
          v37 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:v18];
          defaultSamplerState = self->_defaultSamplerState;
          self->_defaultSamplerState = v37;
        }

        goto LABEL_51;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v47 = v17;
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

      v35 = v21;
      v44 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v44);
      }

      v36 = v18;
      v45 = [NSString stringWithUTF8String:"[CRLMetalShader p_setupPipelineStateWithVertexShader:fragmentShader:device:vertexLibrary:fragmentLibrary:colorAttachment:velocityAttachment:setupBindings:]"];
      v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMetalShader.m"];
      [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:291 isFatal:0 description:"invalid nil value for '%{public}s'", "fragmentFunction"];
    }

    else
    {
      v47 = v17;
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

      v36 = v18;
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

  v35 = v21;
  v36 = v18;
  v32 = v17;
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  v39 = v16;
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

- (CRLMetalShader)initWithDefaultVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7 label:(id)a8 setupBindings:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = CRLMetalShader;
  v21 = [(CRLMetalShader *)&v25 init];
  if (v21)
  {
    v22 = [CRLMetalShaderLibraryLoader loadDefaultLibraryWithDevice:v17];
    objc_storeStrong(&v21->_name, a8);
    v21->_vertexUniformsIndex = -1;
    v21->_fragmentUniformsIndex = -1;
    v21->_samplerStateIndex = -1;
    LOBYTE(v24) = a9;
    [(CRLMetalShader *)v21 p_setupPipelineStateWithVertexShader:v15 fragmentShader:v16 device:v17 vertexLibrary:v22 fragmentLibrary:v22 colorAttachment:v18 velocityAttachment:v19 setupBindings:v24];
  }

  return v21;
}

- (id)initDefaultShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 componentsSeparatedByString:@"_"];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 copy];

  LOBYTE(v19) = 1;
  v17 = [(CRLMetalShader *)self initWithDefaultVertexShader:v13 fragmentShader:v12 device:v11 colorAttachment:v10 velocityAttachment:0 label:v16 setupBindings:v19];

  return v17;
}

- (id)initDefaultTextureShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultTexture_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Texture Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultTextureAndOpacityShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  v6 = a3;
  LOBYTE(v12) = 0;
  v7 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultOpacityTexture_FragmentShader" device:v6 colorAttachment:a4 velocityAttachment:0 label:@"Default Texture and Opacity Shader" setupBindings:v12];
  v8 = v7;
  if (v7)
  {
    [(CRLMetalShader *)v7 p_setDefaultVertexUniforms];
    *&v8->_fragmentUniformsIndex = xmmword_101464710;
    v8->_samplerStateIndex = 0;
    v9 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:v6];
    defaultSamplerState = v8->_defaultSamplerState;
    v8->_defaultSamplerState = v9;
  }

  return v8;
}

- (id)initDefaultTextureAndColorShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  v6 = a3;
  LOBYTE(v12) = 0;
  v7 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultTextureAndColor_FragmentShader" device:v6 colorAttachment:a4 velocityAttachment:0 label:@"Default Texture and Color Shader" setupBindings:v12];
  v8 = v7;
  if (v7)
  {
    [(CRLMetalShader *)v7 p_setDefaultVertexUniforms];
    *&v8->_fragmentUniformsIndex = xmmword_101464720;
    v8->_samplerStateIndex = 0;
    v9 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:v6];
    defaultSamplerState = v8->_defaultSamplerState;
    v8->_defaultSamplerState = v9;
  }

  return v8;
}

- (id)initDefaultMaskedTextureShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultMaskedTexture_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Masked Texture Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_101464730;
  }

  return v5;
}

- (id)initDefaultGaussianBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 halfSizedRadius:(BOOL)a5
{
  if (a5)
  {
    v6 = @"CRLMetalShaderDefaultHalfSizedRadiusGaussianBlur_FragmentShader";
  }

  else
  {
    v6 = @"CRLMetalShaderDefaultGaussianBlur_FragmentShader";
  }

  if (a5)
  {
    v7 = @"Default Gaussain Blur Shader with Radius 5";
  }

  else
  {
    v7 = @"Default Gaussian Blur Shader with Radius 9";
  }

  LOBYTE(v11) = 0;
  v8 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:v6 device:a3 colorAttachment:a4 velocityAttachment:0 label:v7 setupBindings:v11];
  v9 = v8;
  if (v8)
  {
    [(CRLMetalShader *)v8 p_setDefaultVertexUniforms];
    *&v9->_fragmentUniformsIndex = xmmword_101464740;
  }

  return v9;
}

- (id)initDefaultTextureMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5
{
  LOBYTE(v6) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultMotionBlurTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultMotionBlurTexture_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:a5 label:@"Default Texture Shader with Motion Blur" setupBindings:v6];
  if (result)
  {
    *(result + 8) = xmmword_101464750;
    *(result + 9) = 1;
  }

  return result;
}

- (id)initDefaultTextureAndOpacityMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  if (v6)
  {
    v11 = @"CRLMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v11 = @"CRLMetalShaderDefaultTexture_VertexShader";
  }

  if (v6)
  {
    v12 = @"CRLMetalShaderDefaultMotionBlurOpacityTexture_FragmentShader";
  }

  else
  {
    v12 = @"CRLMetalShaderDefaultOpacityTexture_FragmentShader";
  }

  LOBYTE(v20) = 0;
  v13 = [(CRLMetalShader *)self initWithDefaultVertexShader:v11 fragmentShader:v12 device:v10 colorAttachment:a4 velocityAttachment:a5 label:@"Default Texture and Opacity Shader with Motion Blur" setupBindings:v20];
  v14 = v13;
  if (v13)
  {
    v15 = 64;
    if (v6)
    {
      v15 = 192;
    }

    v16 = !v6;
    v13->_vertexUniformsIndex = v16;
    v13->_vertexUniformsSize = v15;
    v13->_fragmentUniformsIndex = v16;
    v13->_bufferIndex = v6;
    *&v13->_fragmentUniformsSize = xmmword_101464760;
    v17 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:v10];
    defaultSamplerState = v14->_defaultSamplerState;
    v14->_defaultSamplerState = v17;
  }

  return v14;
}

- (id)initDefaultBlendShaderWithDevice:(id)a3 colorAttachment:(id)a4 velocityAttachment:(id)a5 motionBlur:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  if (v6)
  {
    v11 = @"CRLMetalShaderDefaultMotionBlurTexture_VertexShader";
  }

  else
  {
    v11 = @"CRLMetalShaderDefaultTexture_VertexShader";
  }

  if (v6)
  {
    v12 = @"CRLMetalShaderDefaultMotionBlurBlendTexture_FragmentShader";
  }

  else
  {
    v12 = @"CRLMetalShaderDefaultBlendTexture_FragmentShader";
  }

  if (v6)
  {
    v13 = @"Default Texture Blending Shader with Motion Blur";
  }

  else
  {
    v13 = @"Default Texture Blending Shader";
  }

  LOBYTE(v19) = 0;
  v14 = [(CRLMetalShader *)self initWithDefaultVertexShader:v11 fragmentShader:v12 device:v10 colorAttachment:a4 velocityAttachment:a5 label:v13 setupBindings:v19];
  v15 = v14;
  if (v14)
  {
    if (v6)
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
    v16 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:v10];
    defaultSamplerState = v15->_defaultSamplerState;
    v15->_defaultSamplerState = v16;
  }

  return v15;
}

- (id)initDefaultColorShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  v6 = a3;
  LOBYTE(v12) = 0;
  v7 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalShaderDefaultColor_FragmentShader" device:v6 colorAttachment:a4 velocityAttachment:0 label:@"Default Color Shader" setupBindings:v12];
  v8 = v7;
  if (v7)
  {
    [(CRLMetalShader *)v7 p_setDefaultVertexUniforms];
    *&v8->_fragmentUniformsIndex = xmmword_101464720;
    v8->_samplerStateIndex = 0;
    v9 = [CRLMetalShader linearClampToEdgeSamplerWithDevice:v6];
    defaultSamplerState = v8->_defaultSamplerState;
    v8->_defaultSamplerState = v9;
  }

  return v8;
}

- (id)initDefaultVelocityCollectionShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v5) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalMotionBlurEffect_Collection_Vertex" fragmentShader:@"CRLMetalMotionBlurEffect_Collection_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Velocity Collection Shader" setupBindings:v5];
  if (result)
  {
    *(result + 8) = xmmword_101464780;
    *(result + 24) = xmmword_101464790;
    *(result + 9) = 1;
  }

  return result;
}

- (id)initDefaultVelocityVisualizerShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalMotionBlurEffect_Visualizer_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Velocity Visualizer Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
  }

  return v5;
}

- (id)initDefaultNeighborMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v7) = 0;
  v4 = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:@"CRLMetalMotionBlurEffect_Neighbor_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Neighbor Max Shader" setupBindings:v7];
  v5 = v4;
  if (v4)
  {
    [(CRLMetalShader *)v4 p_setDefaultVertexUniforms];
    *&v5->_fragmentUniformsIndex = xmmword_101464780;
  }

  return v5;
}

- (id)initDefaultTileMaxBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v5) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalMotionBlurEffect_Tile_Vertex" fragmentShader:@"CRLMetalMotionBlurEffect_Tile_Fragment" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Tile Max Shader" setupBindings:v5];
  if (result)
  {
    *(result + 8) = xmmword_1014647A0;
    *(result + 24) = xmmword_1014647B0;
    *(result + 9) = 1;
  }

  return result;
}

- (id)initDefaultSingleDirectionMotionBlurShaderWithDevice:(id)a3 colorAttachment:(id)a4
{
  LOBYTE(v5) = 0;
  result = [(CRLMetalShader *)self initWithDefaultVertexShader:@"CRLMetalShaderMotionBlurSingleDirection_VertexShader" fragmentShader:@"CRLMetalShaderMotionBlurSingleDirection_FragmentShader" device:a3 colorAttachment:a4 velocityAttachment:0 label:@"Default Single Direction Motion Blur Shader" setupBindings:v5];
  if (result)
  {
    *(result + 8) = xmmword_1014647C0;
    *(result + 24) = xmmword_101464710;
    *(result + 9) = 0;
  }

  return result;
}

- (id)initCustomShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 bundle:(id)a6 colorAttachment:(id)a7 velocityAttachment:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = CRLMetalShader;
  v20 = [(CRLMetalShader *)&v28 init];
  if (v20)
  {
    v21 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:v16 bundle:v17];
    v22 = [v14 componentsSeparatedByString:@"_"];
    v23 = [v22 objectAtIndexedSubscript:0];
    v24 = [v23 copy];
    name = v20->_name;
    v20->_name = v24;

    v20->_vertexUniformsIndex = -1;
    v20->_fragmentUniformsIndex = -1;
    v20->_samplerStateIndex = -1;
    LOBYTE(v27) = 1;
    [(CRLMetalShader *)v20 p_setupPipelineStateWithVertexShader:v14 fragmentShader:v15 device:v16 vertexLibrary:v21 fragmentLibrary:v21 colorAttachment:v18 velocityAttachment:v19 setupBindings:v27];
  }

  return v20;
}

- (id)initQuadTextureShaderWithFragmentShader:(id)a3 device:(id)a4 bundle:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = CRLMetalShader;
  v17 = [(CRLMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:v13 bundle:v14];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:v13 bundle:v19];

    v21 = [v12 componentsSeparatedByString:@"_"];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [v22 copy];
    name = v17->_name;
    v17->_name = v23;

    v17->_vertexUniformsIndex = -1;
    v17->_fragmentUniformsIndex = -1;
    v17->_samplerStateIndex = -1;
    LOBYTE(v26) = 1;
    [(CRLMetalShader *)v17 p_setupPipelineStateWithVertexShader:@"CRLMetalShaderDefaultTexture_VertexShader" fragmentShader:v12 device:v13 vertexLibrary:v20 fragmentLibrary:v18 colorAttachment:v15 velocityAttachment:v16 setupBindings:v26];
  }

  return v17;
}

- (id)initQuadMotionBlurTextureShaderWithFragmentShader:(id)a3 device:(id)a4 bundle:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = CRLMetalShader;
  v17 = [(CRLMetalShader *)&v27 init];
  if (v17)
  {
    v18 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:v13 bundle:v14];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [CRLMetalShaderLibraryLoader loadLibraryWithDevice:v13 bundle:v19];

    v21 = [v12 componentsSeparatedByString:@"_"];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [v22 copy];
    name = v17->_name;
    v17->_name = v23;

    v17->_vertexUniformsIndex = -1;
    v17->_fragmentUniformsIndex = -1;
    v17->_samplerStateIndex = -1;
    LOBYTE(v26) = 1;
    [(CRLMetalShader *)v17 p_setupPipelineStateWithVertexShader:@"CRLMetalShaderDefaultMotionBlurTexture_VertexShader" fragmentShader:v12 device:v13 vertexLibrary:v20 fragmentLibrary:v18 colorAttachment:v15 velocityAttachment:v16 setupBindings:v26];
  }

  return v17;
}

- (id)initCustomShaderWithVertexShader:(id)a3 fragmentShader:(id)a4 device:(id)a5 colorAttachment:(id)a6 velocityAttachment:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v16 componentsSeparatedByString:@"_"];
  v18 = [v17 objectAtIndexedSubscript:0];
  v19 = [v18 copy];
  LOBYTE(v22) = 1;
  v20 = [(CRLMetalShader *)self initWithDefaultVertexShader:v16 fragmentShader:v15 device:v14 colorAttachment:v13 velocityAttachment:v12 label:v19 setupBindings:v22];

  return v20;
}

- (void)setPipelineStateWithEncoder:(id)a3 vertexBytes:(const void *)a4 fragmentBytes:(const void *)a5 samplerState:(id)a6
{
  v10 = a3;
  v11 = a6;
  [v10 setRenderPipelineState:self->_pipelineState];
  if (a4)
  {
    if ((self->_vertexUniformsIndex & 0x8000000000000000) == 0)
    {
      [v10 setVertexBytes:a4 length:self->_vertexUniformsSize atIndex:?];
    }

    if (a5)
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

    if (a5)
    {
LABEL_5:
      if ((self->_fragmentUniformsIndex & 0x8000000000000000) == 0)
      {
        [v10 setFragmentBytes:a5 length:self->_fragmentUniformsSize atIndex:?];
      }

      if (!v11)
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

  if (v11)
  {
    goto LABEL_27;
  }

LABEL_37:
  if ((self->_samplerStateIndex & 0x8000000000000000) == 0)
  {
    [v10 setFragmentSamplerState:v11 atIndex:?];
  }
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CRLMetalShader;
  v3 = [(CRLMetalShader *)&v9 description];
  v4 = [(CRLMetalShader *)self name];
  v5 = v4;
  v6 = @"Unnamed";
  if (v4)
  {
    v6 = v4;
  }

  v7 = [NSString stringWithFormat:@"%@: %@", v3, v6];

  return v7;
}

@end