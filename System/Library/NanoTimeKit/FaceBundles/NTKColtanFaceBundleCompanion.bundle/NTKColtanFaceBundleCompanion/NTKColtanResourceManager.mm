@interface NTKColtanResourceManager
+ (id)sharedInstanceWithPixelFormat:(unint64_t)format;
+ (void)_deallocInstance:(id)instance;
- (CLKUITexture)handLightTexture;
- (MTLComputePipelineState)blurDownsamplePipelineState;
- (MTLComputePipelineState)blurUpsamplePipelineState;
- (MTLComputePipelineState)scenePreparationComputePipelineState;
- (NTKColtanResourceManager)initWithPixelFormat:(unint64_t)format;
- (id)_generatePipeline:(unint64_t)pipeline;
- (id)_makeComputePipelineWithFunctionName:(id)name config:(unint64_t)config;
- (id)provideAtlasBacking:(id)backing;
- (id)renderPipelineForConfig:(unint64_t)config;
- (id)shadowComputePipelineForConfig:(unint64_t)config;
- (void)_asyncDeallocInstance;
- (void)addClient;
- (void)dealloc;
- (void)removeClient;
@end

@implementation NTKColtanResourceManager

+ (id)sharedInstanceWithPixelFormat:(unint64_t)format
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_16B18)
  {
    v5 = [[NTKColtanResourceManager alloc] initWithPixelFormat:format];
    v6 = qword_16B18;
    qword_16B18 = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = qword_16B18;
  if (*(qword_16B18 + 32) != format)
  {
    sub_6AA4();
  }

  return v7;
}

+ (void)_deallocInstance:(id)instance
{
  obj = self;
  objc_sync_enter(obj);
  v3 = qword_16B18;
  qword_16B18 = 0;

  objc_sync_exit(obj);
}

- (NTKColtanResourceManager)initWithPixelFormat:(unint64_t)format
{
  v32.receiver = self;
  v32.super_class = NTKColtanResourceManager;
  v4 = [(NTKColtanResourceManager *)&v32 init];
  if (v4)
  {
    v5 = objc_opt_new();
    resourceProviderKey = v4->_resourceProviderKey;
    v4->_resourceProviderKey = v5;

    v7 = +[CLKUIMetalResourceManager sharedDevice];
    device = v4->_device;
    v4->_device = v7;

    v9 = v4->_device;
    v10 = sub_1200();
    v11 = [(MTLDevice *)v9 newDefaultLibraryWithBundle:v10 error:0];
    library = v4->_library;
    v4->_library = v11;

    v4->_pixelFormat = format;
    v13 = +[CLKDevice currentDevice];
    CLKScaledValueWithCompactLuxoDeviceMetrics();
    *&v14 = v14;
    v31 = LODWORD(v14);
    CLKScaledValueWithCompactLuxoDeviceMetrics();
    *&v15 = v15;
    v30 = LODWORD(v15);
    CLKScaledValueWithCompactLuxoDeviceMetrics();
    *&v16 = v16;
    v29 = LODWORD(v16);
    CLKScaledValueWithCompactLuxoDeviceMetrics();
    *&v17 = v17;
    v28 = LODWORD(v17);
    CLKScaledValueWithCompactLuxoDeviceMetrics();
    *&v18 = v18;
    v27 = LODWORD(v18);
    CLKScaledValueWithCompactLuxoDeviceMetrics();
    *&v19 = v19;
    v26 = LODWORD(v19);
    [v13 screenBounds];
    v21 = v20 / 162.0;
    v25 = v21;
    v22 = objc_opt_new();
    layoutConstants = v4->_layoutConstants;
    v4->_layoutConstants = v22;

    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v31 type:3 atIndex:3];
    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v30 type:3 atIndex:4];
    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v29 type:3 atIndex:5];
    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v27 type:3 atIndex:6];
    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v28 type:3 atIndex:7];
    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v26 type:3 atIndex:8];
    [(MTLFunctionConstantValues *)v4->_layoutConstants setConstantValue:&v25 type:3 atIndex:9];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKColtanResourceManager;
  [(NTKColtanResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  v2 = +[NSThread isMainThread];
  v3 = objc_opt_class();
  if (v2)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:"_deallocInstance:" withObject:? waitUntilDone:?];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clients - 1;
  selfCopy->_clients = v3;
  objc_sync_exit(selfCopy);

  if (!v3)
  {

    [(NTKColtanResourceManager *)selfCopy _asyncDeallocInstance];
  }
}

- (CLKUITexture)handLightTexture
{
  handLightTexture = self->_handLightTexture;
  if (!handLightTexture)
  {
    v4 = [CLKUITexture textureWithProviderDelegate:self uuid:@"Coltan-Hand"];
    v5 = self->_handLightTexture;
    self->_handLightTexture = v4;

    handLightTexture = self->_handLightTexture;
  }

  return handLightTexture;
}

- (id)_makeComputePipelineWithFunctionName:(id)name config:(unint64_t)config
{
  configCopy = config;
  nameCopy = name;
  v22 = (configCopy & 4) != 0;
  v21 = configCopy & 1;
  v20 = (configCopy & 2) != 0;
  v7 = [(MTLFunctionConstantValues *)self->_layoutConstants copy];
  [v7 setConstantValue:&v21 type:53 atIndex:0];
  [v7 setConstantValue:&v20 type:53 atIndex:1];
  [v7 setConstantValue:&v22 type:53 atIndex:2];
  library = self->_library;
  v19 = 0;
  v9 = [(MTLLibrary *)library newFunctionWithName:nameCopy constantValues:v7 error:&v19];
  v10 = v19;
  if (v9)
  {
    device = self->_device;
    v18 = v10;
    v12 = [(MTLDevice *)device newComputePipelineStateWithFunction:v9 error:&v18];
    v13 = v18;

    if (v12)
    {
      goto LABEL_10;
    }

    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = self->_device;
      *buf = 138412802;
      v24 = nameCopy;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v13;
      _os_log_fault_impl(&dword_0, v14, OS_LOG_TYPE_FAULT, "Coltan Metal compilation failure (nil computePiplineState): Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }

    v10 = v13;
  }

  else
  {
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = self->_device;
      *buf = 138412802;
      v24 = nameCopy;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v10;
      _os_log_fault_impl(&dword_0, v14, OS_LOG_TYPE_FAULT, "Coltan Metal compilation failure (nil function): Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }

    v12 = 0;
  }

  v13 = v10;
LABEL_10:

  return v12;
}

- (id)renderPipelineForConfig:(unint64_t)config
{
  pipelineStates = self->_pipelineStates;
  v6 = self->_pipelineStates[config];
  if (!v6)
  {
    v7 = [(NTKColtanResourceManager *)self _generatePipeline:config];
    v8 = pipelineStates[config];
    pipelineStates[config] = v7;

    v6 = v7;
  }

  return v6;
}

- (id)_generatePipeline:(unint64_t)pipeline
{
  v21 = (pipeline & 4) != 0;
  v20 = pipeline & 1;
  v19 = (pipeline & 2) != 0;
  v4 = [(MTLFunctionConstantValues *)self->_layoutConstants copy];
  [v4 setConstantValue:&v20 type:53 atIndex:0];
  [v4 setConstantValue:&v19 type:53 atIndex:1];
  [v4 setConstantValue:&v21 type:53 atIndex:2];
  v5 = objc_opt_new();
  [v5 setLabel:@"Coltan render"];
  v6 = [(MTLLibrary *)self->_library newFunctionWithName:@"compositeVertex"];
  [v5 setVertexFunction:v6];

  v7 = [(MTLLibrary *)self->_library newFunctionWithName:@"compositeFragment" constantValues:v4 error:0];
  [v5 setFragmentFunction:v7];

  colorAttachments = [v5 colorAttachments];
  v9 = [colorAttachments objectAtIndexedSubscript:0];

  [v9 setPixelFormat:self->_pixelFormat];
  [v9 setBlendingEnabled:0];
  if (v21 || v20 == 1)
  {
    [v9 setBlendingEnabled:1];
    [v9 setRgbBlendOperation:0];
    [v9 setAlphaBlendOperation:0];
    [v9 setSourceRGBBlendFactor:4];
    [v9 setSourceAlphaBlendFactor:4];
    [v9 setDestinationRGBBlendFactor:5];
    [v9 setDestinationAlphaBlendFactor:5];
  }

  device = self->_device;
  v18 = 0;
  v11 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v5 error:&v18];
  v12 = v18;
  if (!v11)
  {
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      fragmentFunction = [v5 fragmentFunction];
      name = [fragmentFunction name];
      v17 = self->_device;
      *buf = 138412802;
      v23 = name;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v12;
      _os_log_fault_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, "Coltan Metal compilation failure: Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  return v11;
}

- (MTLComputePipelineState)blurUpsamplePipelineState
{
  v3 = self->_blurUpsamplePipelineState;
  if (!v3)
  {
    v4 = [(NTKColtanResourceManager *)self _makeComputePipelineWithFunctionName:@"Blur::upsample" config:0];
    blurUpsamplePipelineState = self->_blurUpsamplePipelineState;
    self->_blurUpsamplePipelineState = v4;

    v3 = v4;
  }

  return v3;
}

- (MTLComputePipelineState)blurDownsamplePipelineState
{
  v3 = self->_blurDownsamplePipelineState;
  if (!v3)
  {
    v4 = [(NTKColtanResourceManager *)self _makeComputePipelineWithFunctionName:@"Blur::downsample" config:0];
    blurDownsamplePipelineState = self->_blurDownsamplePipelineState;
    self->_blurDownsamplePipelineState = v4;

    v3 = v4;
  }

  return v3;
}

- (MTLComputePipelineState)scenePreparationComputePipelineState
{
  v3 = self->_scenePreparationComputePipelineState;
  if (!v3)
  {
    v4 = [(NTKColtanResourceManager *)self _makeComputePipelineWithFunctionName:@"placeLights" config:0];
    scenePreparationComputePipelineState = self->_scenePreparationComputePipelineState;
    self->_scenePreparationComputePipelineState = v4;

    v3 = v4;
  }

  return v3;
}

- (id)shadowComputePipelineForConfig:(unint64_t)config
{
  shadowComputePipelineStates = self->_shadowComputePipelineStates;
  v6 = self->_shadowComputePipelineStates[config];
  if (!v6)
  {
    v7 = [(NTKColtanResourceManager *)self _makeComputePipelineWithFunctionName:@"shadow" config:config];
    v8 = shadowComputePipelineStates[config];
    shadowComputePipelineStates[config] = v7;

    v6 = v7;
  }

  return v6;
}

- (id)provideAtlasBacking:(id)backing
{
  backingCopy = backing;
  if ([backingCopy isEqualToString:@"Coltan-Hand"])
  {
    v4 = sub_1200();
    v5 = [v4 pathForResource:backingCopy ofType:@"art"];
    if (v5)
    {
      v6 = v5;
      v7 = [CLKUIAtlasBacking atlasBackingWithArt:v5 uuid:backingCopy];

      goto LABEL_8;
    }

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_6AE4(backingCopy, v8);
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end