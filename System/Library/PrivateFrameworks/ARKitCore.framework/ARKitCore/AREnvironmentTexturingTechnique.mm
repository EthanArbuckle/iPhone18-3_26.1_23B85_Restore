@interface AREnvironmentTexturingTechnique
- (AREnvironmentTexturingTechnique)initWithOptions:(int64_t)options wantsHDREnvironmentTextures:(BOOL)textures;
- (BOOL)isEqual:(id)equal;
- (BOOL)reconfigurableFrom:(id)from;
- (id)_fullDescription;
- (id)processData:(id)data;
- (void)prepare:(BOOL)prepare;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation AREnvironmentTexturingTechnique

- (AREnvironmentTexturingTechnique)initWithOptions:(int64_t)options wantsHDREnvironmentTextures:(BOOL)textures
{
  v18.receiver = self;
  v18.super_class = AREnvironmentTexturingTechnique;
  v6 = [(ARTechnique *)&v18 init];
  if (v6)
  {
    v7 = [[AREnvironmentProbeManager alloc] initWithMode:options];
    probeManager = v6->_probeManager;
    v6->_probeManager = v7;

    v9 = objc_opt_new();
    planeWorld = v6->_planeWorld;
    v6->_planeWorld = v9;

    v11 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.environmentTexturing.planeUpdate");
    planeUpdateQueue = v6->_planeUpdateQueue;
    v6->_planeUpdateQueue = v11;

    v13 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.environmentTexturing.networkPrewarm");
    networkPrewarmQueue = v6->_networkPrewarmQueue;
    v6->_networkPrewarmQueue = v13;

    v6->_networkIntialized = 0;
    v6->_wantsHDREnvironmentTextures = textures;
    v15 = dispatch_semaphore_create(1);
    ultraWideSemaphore = v6->_ultraWideSemaphore;
    v6->_ultraWideSemaphore = v15;
  }

  return v6;
}

- (BOOL)reconfigurableFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)reconfigureFrom:(id)from
{
  fromCopy = from;
  v4 = [AREnvironmentProbeManager alloc];
  probeManager = [fromCopy probeManager];
  v6 = -[AREnvironmentProbeManager initWithMode:](v4, "initWithMode:", [probeManager mode]);
  [(AREnvironmentTexturingTechnique *)self setProbeManager:v6];
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = dataCopy;
    cameraType = [v6 cameraType];
    v8 = cameraType;
    if (cameraType == *MEMORY[0x1E6986948])
    {
      v9 = dispatch_semaphore_wait(self->_ultraWideSemaphore, 0);

      if (!v9)
      {
        objc_storeStrong(&self->_ultraWide, data);
        dispatch_semaphore_signal(self->_ultraWideSemaphore);
      }
    }

    else
    {
    }
  }

  return dataCopy;
}

- (void)prepare:(BOOL)prepare
{
  if (![(AREnvironmentTexturingTechnique *)self networkIntialized])
  {
    [(AREnvironmentTexturingTechnique *)self setNetworkIntialized:1];
    v4 = +[ARCubemapCompletion sharedInstance];
    wantsHDREnvironmentTextures = self->_wantsHDREnvironmentTextures;
    v6 = +[ARCubemapCompletion sharedInstance];
    [v6 setGenerateHDROutput:wantsHDREnvironmentTextures];
  }
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  imageData = [contextCopy imageData];
  v7 = [contextCopy resultDataOfClass:objc_opt_class()];
  lastObject = [v7 lastObject];

  dispatch_semaphore_wait(self->_ultraWideSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v9 = self->_ultraWide;
  dispatch_semaphore_signal(self->_ultraWideSemaphore);
  v10 = imageData;
  if (v9)
  {
    v10 = v9;
  }

  v34 = v10;
  anchorsToAdd = [contextCopy anchorsToAdd];
  v33 = [ARProbeFilter filter:anchorsToAdd];

  v12 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v33;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v14)
  {
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v13);
        }

        identifier = [*(*(&v44 + 1) + 8 * i) identifier];
        [v12 addObject:identifier];
      }

      v14 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v14);
  }

  probeManager = [(AREnvironmentTexturingTechnique *)self probeManager];
  planeWorld = self->_planeWorld;
  if (planeWorld)
  {
    [(ARPlaneWorld *)planeWorld planes];
  }

  else
  {
    memset(v43, 0, sizeof(v43));
  }

  v20 = [probeManager updateProbesForTimestamp:v43 planes:v34 imageData:lastObject pose:v12 enableDirectTexturingForProbesWithIdentifier:timestamp];
  location = v43;
  std::vector<ARTexturedPlane>::__destroy_vector::operator()[abi:ne200100](&location);

  delegate = [(ARTechnique *)self delegate];
  v49 = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [delegate technique:self didOutputResultData:v22 timestamp:contextCopy context:timestamp];

  if (![(AREnvironmentTexturingTechnique *)self networkIntialized])
  {
    if (lastObject)
    {
      worldTrackingState = [lastObject worldTrackingState];
      v24 = [worldTrackingState vioTrackingState] == 0;

      if (v24)
      {
        [(AREnvironmentTexturingTechnique *)self setNetworkIntialized:1];
        objc_initWeak(&location, self);
        networkPrewarmQueue = self->_networkPrewarmQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __72__AREnvironmentTexturingTechnique_requestResultDataAtTimestamp_context___block_invoke;
        block[3] = &unk_1E817C2D8;
        objc_copyWeak(&v42, &location);
        dispatch_async(networkPrewarmQueue, block);
        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
      }
    }
  }

  v26 = [contextCopy resultDataOfClass:objc_opt_class()];
  lastObject2 = [v26 lastObject];

  if (imageData)
  {
    v28 = lastObject2 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = !v28;
  if ((v29 & (lastObject != 0)) == 1)
  {
    worldTrackingState2 = [lastObject worldTrackingState];
    v31 = [worldTrackingState2 vioTrackingState] == 0;

    if (v31)
    {
      objc_initWeak(&location, self);
      planeUpdateQueue = self->_planeUpdateQueue;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __72__AREnvironmentTexturingTechnique_requestResultDataAtTimestamp_context___block_invoke_2;
      v36[3] = &unk_1E817C300;
      objc_copyWeak(&v40, &location);
      v37 = imageData;
      v38 = lastObject2;
      v39 = lastObject;
      dispatch_async(planeUpdateQueue, v36);

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }
  }
}

void __72__AREnvironmentTexturingTechnique_requestResultDataAtTimestamp_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = WeakRetained[96];
    v3 = +[ARCubemapCompletion sharedInstance];
    [v3 setGenerateHDROutput:v2];

    WeakRetained = v4;
  }
}

void __72__AREnvironmentTexturingTechnique_requestResultDataAtTimestamp_context___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    [a1[4] timestamp];
    kdebug_trace();
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained[7];
    v5 = [a1[5] detectionResult];
    convert([v5 cv3dPlaneDetections], v21);
    v6 = [a1[4] pixelBuffer];
    [a1[4] exposureTargetOffset];
    v8 = v7;
    [a1[6] cameraTransform];
    v19 = v10;
    v20 = v9;
    v17 = v12;
    v18 = v11;
    [a1[4] cameraIntrinsics];
    v14 = v13;
    LODWORD(v13) = v8;
    [v4 updatePlanes:v21 withCameraImage:v6 exposureOffset:0 transform:v13 intrinsics:v20 synchronous:{v19, v18, v17, v14, v15, v16}];
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(v21, v21[1]);

    objc_autoreleasePoolPop(v3);
    [a1[4] timestamp];
    kdebug_trace();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = AREnvironmentTexturingTechnique;
  if ([(ARTechnique *)&v11 isEqual:equalCopy])
  {
    probeManager = [(AREnvironmentTexturingTechnique *)self probeManager];
    mode = [probeManager mode];
    probeManager2 = [equalCopy probeManager];
    if (mode == [probeManager2 mode])
    {
      wantsHDREnvironmentTextures = self->_wantsHDREnvironmentTextures;
      v9 = wantsHDREnvironmentTextures == [equalCopy wantsHDREnvironmentTextures];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = AREnvironmentTexturingTechnique;
  _fullDescription = [(ARTechnique *)&v10 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  _fullDescription2 = [(ARPlaneWorld *)self->_planeWorld _fullDescription];
  [v5 appendFormat:@"PlaneWorld: %@\n", _fullDescription2];

  probeManager = [(AREnvironmentTexturingTechnique *)self probeManager];
  _fullDescription3 = [probeManager _fullDescription];
  [v5 appendFormat:@"ProbManager: %@\n", _fullDescription3];

  return v5;
}

@end