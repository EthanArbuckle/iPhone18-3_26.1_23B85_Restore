@interface ARFaceLightEstimationTechnique
+ (shared_ptr<arkit::FaceTrackingData>)_transformFaceTrackingData:(id)data;
- (ARFaceLightEstimationTechnique)init;
- (id).cxx_construct;
- (id)processData:(id)data;
- (void)_processFaceDataInBackground:(id)background pixelBuffer:(__CVBuffer *)buffer lightIntensity:(float)intensity timestamp:(double)timestamp;
- (void)dealloc;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARFaceLightEstimationTechnique

- (ARFaceLightEstimationTechnique)init
{
  v11.receiver = self;
  v11.super_class = ARFaceLightEstimationTechnique;
  v2 = [(ARTechnique *)&v11 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    resultSemaphore = v2->_resultSemaphore;
    v2->_resultSemaphore = v3;

    v2->_lightIntensity = 1.0;
    v2->_temperature = 6500.0;
    [ARFaceLightEstimationTechnique _computeShSmoothingAlpha:0.0166666675];
    v2->_shSmoothingAlpha = v5;
    v6 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique.faceLightEstimation");
    lightEstimationQueue = v2->_lightEstimationQueue;
    v2->_lightEstimationQueue = v6;

    v8 = dispatch_semaphore_create(1);
    estimatingSemaphore = v2->_estimatingSemaphore;
    v2->_estimatingSemaphore = v8;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ARFaceLightEstimationTechnique;
  [(ARFaceLightEstimationTechnique *)&v2 dealloc];
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dataCopy;
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    temperature = [v5 temperature];
    self->_temperature = arkit::mapColorTemperature(temperature, v7);
    [v5 exposureTargetOffset];
    v11 = ARMapExposureOffset(v8);
    self->_lightIntensity = arkit::ExponentialSmoother<float>::step(&self->_smoother, &v11, 1.0 / [v5 captureFramesPerSecond], 0.016667, 0.2);
    +[ARFaceLightEstimationTechnique _computeShSmoothingAlpha:](ARFaceLightEstimationTechnique, "_computeShSmoothingAlpha:", (1.0 / [v5 captureFramesPerSecond]));
    self->_shSmoothingAlpha = v9;
    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  return dataCopy;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  imageData = [contextCopy imageData];
  pixelBuffer = [imageData pixelBuffer];

  v9 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject = [v9 firstObject];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  trackedFaces = [firstObject trackedFaces];
  v12 = 0;
  v13 = [trackedFaces countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v13)
  {
    v14 = *v46;
    v15 = INFINITY;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(trackedFaces);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        [v17 transform];
        v19 = vmulq_f32(v18, v18);
        v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
        if (v20 < v15 && [v17 isValid])
        {
          v21 = v17;

          v15 = v20;
          v12 = v21;
        }
      }

      v13 = [trackedFaces countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v13);
  }

  if (([v12 isValid] & 1) == 0)
  {
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    lastLightEstimate = self->_lastLightEstimate;
    if (lastLightEstimate)
    {
      [(ARDirectionalLightEstimate *)lastLightEstimate setConfidenceRating:0.0];
    }

    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  isValid = [v12 isValid];
  if (pixelBuffer)
  {
    v24 = isValid;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1 && !dispatch_semaphore_wait(self->_estimatingSemaphore, 0))
  {
    kdebug_trace();
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v25 = CVPixelBufferRetain(pixelBuffer);
    lightIntensity = self->_lightIntensity;
    v27 = v12;
    dispatch_semaphore_signal(self->_resultSemaphore);
    objc_initWeak(&location, self);
    v28 = self->_estimatingSemaphore;
    lightEstimationQueue = self->_lightEstimationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__ARFaceLightEstimationTechnique_requestResultDataAtTimestamp_context___block_invoke;
    block[3] = &unk_1E817C328;
    objc_copyWeak(v42, &location);
    v42[1] = v25;
    v43 = lightIntensity;
    v42[2] = *&timestamp;
    v40 = v27;
    v41 = v28;
    v30 = v28;
    v31 = v27;
    dispatch_async(lightEstimationQueue, block);

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);
  }

  v32 = objc_opt_new();
  dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v33 = self->_lastLightEstimate;
  if (v33)
  {
    v34 = [(ARDirectionalLightEstimate *)v33 copy];
  }

  else
  {
    v34 = [[ARLightEstimate alloc] initWithAmbientIntensity:self->_lightIntensity * 1000.0 temperature:self->_temperature];
  }

  [v32 setLightEstimate:v34];

  dispatch_semaphore_signal(self->_resultSemaphore);
  delegate = [(ARTechnique *)self delegate];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    delegate2 = [(ARTechnique *)self delegate];
    v49 = v32;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    [delegate2 technique:self didOutputResultData:v38 timestamp:contextCopy context:timestamp];
  }
}

intptr_t __71__ARFaceLightEstimationTechnique_requestResultDataAtTimestamp_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  LODWORD(v3) = *(a1 + 72);
  [WeakRetained _processFaceDataInBackground:*(a1 + 32) pixelBuffer:*(a1 + 56) lightIntensity:v3 timestamp:*(a1 + 64)];

  CVPixelBufferRelease(*(a1 + 56));
  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

- (void)_processFaceDataInBackground:(id)background pixelBuffer:(__CVBuffer *)buffer lightIntensity:(float)intensity timestamp:(double)timestamp
{
  backgroundCopy = background;
  dispatch_assert_queue_V2(self->_lightEstimationQueue);
  v11 = objc_opt_class();
  if (v11)
  {
    [v11 _transformFaceTrackingData:backgroundCopy];
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  arkit::wrap(buffer, v33);
  v31 = 0x3F19999A00000032;
  v32 = 1;
  v29 = [(ARTechnique *)self powerUsage]== 0;
  v30 = 1;
  v28[1] = -1130113270;
  v28[0] = LODWORD(self->_shSmoothingAlpha);
  arkit::FacialLightEstimation::estimateLight(&self->_faceLightEstimator, v28, v34, v33, v26);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  v12 = v26[0] * v26[0];
  for (i = 1; i != 9; i += 4)
  {
    v14 = vmulq_f32(*&v26[i], *&v26[i]);
    v12 = (((v12 + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3];
  }

  v15 = 0;
  v16 = (intensity * 4.0) * (1.0 / sqrtf(v12));
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  do
  {
    *(&v23 + v15 * 4) = v16 * v26[v15];
    ++v15;
  }

  while (v15 != 9);
  kdebug_trace();
  dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v27;
  if (v27 > 0.0)
  {
    v18 = [ARDirectionalLightEstimate alloc];
    v21[0] = v23;
    v21[1] = v24;
    v22 = v25;
    v19 = [(ARDirectionalLightEstimate *)v18 initWithSphericalHarmonics:v21 ambientIntensity:(intensity * 1000.0) temperature:self->_temperature];
    lastLightEstimate = self->_lastLightEstimate;
    self->_lastLightEstimate = v19;

    [(ARDirectionalLightEstimate *)self->_lastLightEstimate setTimestamp:timestamp];
  }

  [(ARDirectionalLightEstimate *)self->_lastLightEstimate setConfidenceRating:v17];
  dispatch_semaphore_signal(self->_resultSemaphore);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }
}

+ (shared_ptr<arkit::FaceTrackingData>)_transformFaceTrackingData:(id)data
{
  dataCopy = data;
  vertexCount = [dataCopy vertexCount];
  imageVertices = [dataCopy imageVertices];
  vertices = [dataCopy vertices];
  normals = [dataCopy normals];
  [dataCopy transform];
  v32 = __invert_f4(v31);
  v19 = v32.columns[0];
  v20 = v32.columns[1];
  v21 = v32.columns[3];
  v22 = v32.columns[2];
  __p = 0;
  v27 = 0;
  v28 = 0;
  std::vector<arkit::Landmark>::reserve(&__p, vertexCount);
  if (vertexCount)
  {
    v8 = 0;
    v23 = vaddq_f32(v21, vmlaq_f32(vmlaq_f32(vmulq_f32(v19, 0), 0, v20), 0, v22));
    do
    {
      v9 = *(normals + 16 * v8);
      v10 = vmulq_f32(v9, v9);
      *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
      *v10.f32 = vrsqrte_f32(v11);
      *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
      v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
      if (v8 == 859 || v8 == 431)
      {
        v12 = vnegq_f32(v12);
      }

      v13 = vsubq_f32(v23, *(vertices + 16 * v8));
      v14 = vmulq_f32(v13, v13);
      *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      *v14.f32 = vrsqrte_f32(v15);
      *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
      v24 = *(imageVertices + 8 * v8);
      v16 = vmulq_f32(vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]), v12);
      v25 = (v16.f32[2] + vaddv_f32(*v16.f32)) > 0.34202;
      v17 = v27;
      if (v27 >= v28)
      {
        v18 = std::vector<arkit::Landmark>::__emplace_back_slow_path<arkit::Landmark const&>(&__p, &v24);
      }

      else
      {
        *v27 = v24;
        *(v17 + 8) = v25;
        v18 = v17 + 12;
      }

      v27 = v18;
      ++v8;
    }

    while (vertexCount != v8);
  }

  *v30.columns[0].i64 = ARMatrix3x3FromMatrix4x4([dataCopy transform]);
  ARCVAMatrixFromMatrix(v30, &v24);
  operator new();
}

- (id).cxx_construct
{
  self->_smoother.state.var0.__null_state_ = 0;
  self->_smoother.state.__engaged_ = 0;
  arkit::FacialLightEstimation::FacialLightEstimation(&self->_faceLightEstimator);
  return self;
}

@end