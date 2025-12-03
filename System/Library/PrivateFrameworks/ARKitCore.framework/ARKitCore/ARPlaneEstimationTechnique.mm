@interface ARPlaneEstimationTechnique
+ (id)_detectPlanesWithDetector:(simd_float4)detector types:(simd_float4)types camera:(uint64_t)camera referenceFeaturePoints:(uint64_t)points referenceOriginTransform:(uint64_t)transform;
+ (id)detectPlanes:(unint64_t)planes withFrame:(id)frame;
- (ARPlaneEstimationTechnique)initWithTrackingTechnique:(id)technique;
- (BOOL)isBusy;
- (BOOL)isEqual:(id)equal;
- (BOOL)reconfigurableFrom:(id)from;
- (id)_fullDescription;
- (id)resultDataClasses;
- (void)dealloc;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)siblingTechniquesDidChange:(id)change;
- (void)technique:(id)technique didDetectPlane:(id)plane timestamp:(double)timestamp;
- (void)technique:(id)technique didOutputSceneUnderstandingData:(id)data timestamp:(double)timestamp;
@end

@implementation ARPlaneEstimationTechnique

- (ARPlaneEstimationTechnique)initWithTrackingTechnique:(id)technique
{
  v21 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  v14.receiver = self;
  v14.super_class = ARPlaneEstimationTechnique;
  v6 = [(ARTechnique *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_worldTrackingTechnique, technique);
    [(ARWorldTrackingTechnique *)v7->_worldTrackingTechnique addObserver:v7];
    v8 = dispatch_semaphore_create(1);
    semaphoreResult = v7->_semaphoreResult;
    v7->_semaphoreResult = v8;

    v10 = _ARLogTechnique();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543874;
      v16 = v12;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: initialized with world tracking technique (%p)", buf, 0x20u);
    }
  }

  return v7;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ARPlaneEstimationTechnique;
  [(ARPlaneEstimationTechnique *)&v6 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)reconfigurableFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = fromCopy;
    worldTrackingTechnique = [(ARPlaneEstimationTechnique *)self worldTrackingTechnique];
    worldTrackingTechnique2 = [v5 worldTrackingTechnique];
    v8 = [worldTrackingTechnique reconfigurableFrom:worldTrackingTechnique2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reconfigureFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = fromCopy;
    worldTrackingTechnique = [(ARPlaneEstimationTechnique *)self worldTrackingTechnique];
    [worldTrackingTechnique removeObserver:self];

    worldTrackingTechnique2 = [v4 worldTrackingTechnique];
    [worldTrackingTechnique2 addObserver:self];

    worldTrackingTechnique3 = [v4 worldTrackingTechnique];
    [(ARPlaneEstimationTechnique *)self setWorldTrackingTechnique:worldTrackingTechnique3];
  }
}

- (void)siblingTechniquesDidChange:(id)change
{
  changeCopy = change;
  v4 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:changeCopy];
  if (v4)
  {
    worldTrackingTechnique = [(ARPlaneEstimationTechnique *)self worldTrackingTechnique];
    [worldTrackingTechnique removeObserver:self];

    [v4 addObserver:self];
    [(ARPlaneEstimationTechnique *)self setWorldTrackingTechnique:v4];
  }
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  v6 = objc_opt_new();
  anchorsToRemove = [contextCopy anchorsToRemove];
  v8 = [anchorsToRemove count];

  if (v8)
  {
    worldTrackingTechnique = self->_worldTrackingTechnique;
    anchorsToRemove2 = [contextCopy anchorsToRemove];
    [(ARWorldTrackingTechnique *)worldTrackingTechnique removePlanesByUUIDs:anchorsToRemove2];
  }

  dispatch_semaphore_wait(self->_semaphoreResult, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_planeResultData)
  {
    [v6 addObject:?];
    planeResultData = self->_planeResultData;
    self->_planeResultData = 0;
  }

  if (self->_rawSceneUnderstandingData)
  {
    [v6 addObject:?];
    rawSceneUnderstandingData = self->_rawSceneUnderstandingData;
    self->_rawSceneUnderstandingData = 0;
  }

  dispatch_semaphore_signal(self->_semaphoreResult);
  delegate = [(ARTechnique *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didOutputResultData:v6 timestamp:contextCopy context:timestamp];
  }
}

- (void)technique:(id)technique didDetectPlane:(id)plane timestamp:(double)timestamp
{
  planeCopy = plane;
  dispatch_semaphore_wait(self->_semaphoreResult, 0xFFFFFFFFFFFFFFFFLL);
  planeResultData = self->_planeResultData;
  self->_planeResultData = planeCopy;
  v8 = planeCopy;

  dispatch_semaphore_signal(self->_semaphoreResult);
}

- (void)technique:(id)technique didOutputSceneUnderstandingData:(id)data timestamp:(double)timestamp
{
  dataCopy = data;
  dispatch_semaphore_wait(self->_semaphoreResult, 0xFFFFFFFFFFFFFFFFLL);
  rawSceneUnderstandingData = self->_rawSceneUnderstandingData;
  self->_rawSceneUnderstandingData = dataCopy;
  v8 = dataCopy;

  dispatch_semaphore_signal(self->_semaphoreResult);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = ARPlaneEstimationTechnique;
  if ([(ARTechnique *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    worldTrackingTechnique = [(ARPlaneEstimationTechnique *)self worldTrackingTechnique];
    worldTrackingTechnique2 = [v5 worldTrackingTechnique];
    v8 = worldTrackingTechnique == worldTrackingTechnique2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = ARPlaneEstimationTechnique;
  _fullDescription = [(ARTechnique *)&v7 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  [v5 appendFormat:@"Plane Result Data: %@\n", self->_planeResultData];
  [v5 appendFormat:@"Scene Understanding Data: %@\n", self->_rawSceneUnderstandingData];

  return v5;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_semaphoreResult, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_semaphoreResult);
  }

  return v3 != 0;
}

+ (id)detectPlanes:(unint64_t)planes withFrame:(id)frame
{
  frameCopy = frame;
  CV3DSurfaceDetectionDefaultParameters();
  CV3DSurfaceDetectionCreateWithArgs();
  camera = [frameCopy camera];
  referenceFeaturePoints = [frameCopy referenceFeaturePoints];
  [frameCopy referenceOriginTransform];
  v9 = [self _detectPlanesWithDetector:0 types:planes camera:camera referenceFeaturePoints:referenceFeaturePoints referenceOriginTransform:?];

  CV3DSurfaceDetectionRelease();

  return v9;
}

+ (id)_detectPlanesWithDetector:(simd_float4)detector types:(simd_float4)types camera:(uint64_t)camera referenceFeaturePoints:(uint64_t)points referenceOriginTransform:(uint64_t)transform
{
  v81.columns[2] = detector;
  v81.columns[3] = types;
  v81.columns[0] = self;
  v81.columns[1] = a2;
  v12 = a9;
  v13 = a10;
  [v12 transform];
  v76 = v15;
  v77 = v14;
  v78 = v17;
  v80 = v16;
  *v18.i64 = ARRenderingToVisionCoordinateTransform();
  v74 = v19;
  v75 = v18;
  v72 = v21;
  v73 = v20;
  *v22.i64 = ARVisionCameraToRenderingCoordinateTransform();
  v68 = v23;
  v69 = v22;
  v70 = v25;
  v71 = v24;
  v107 = __invert_f4(v81);
  v26 = 0;
  v90.columns[0] = v77;
  v90.columns[1] = v76;
  v90.columns[2] = v80;
  v90.columns[3] = v78;
  do
  {
    v101.columns[v26] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107.columns[0], COERCE_FLOAT(*&v90.columns[v26])), v107.columns[1], *v90.columns[v26].f32, 1), v107.columns[2], v90.columns[v26], 2), v107.columns[3], v90.columns[v26], 3);
    ++v26;
  }

  while (v26 != 4);
  v27 = 0;
  v90 = v101;
  do
  {
    v101.columns[v27] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, COERCE_FLOAT(*&v90.columns[v27])), v74, *v90.columns[v27].f32, 1), v73, v90.columns[v27], 2), v72, v90.columns[v27], 3);
    ++v27;
  }

  while (v27 != 4);
  v28 = 0;
  v29 = v101.columns[0];
  v30 = v101.columns[1];
  v31 = v101.columns[2];
  v32 = v101.columns[3];
  v90.columns[0] = v69;
  v90.columns[1] = v68;
  v90.columns[2] = v71;
  v90.columns[3] = v70;
  do
  {
    v101.columns[v28] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*&v90.columns[v28])), v30, *v90.columns[v28].f32, 1), v31, v90.columns[v28], 2), v32, v90.columns[v28], 3);
    ++v28;
  }

  while (v28 != 4);
  v108 = __invert_f4(v101);
  v84 = v108.columns[1];
  v85 = v108.columns[0];
  v82 = v108.columns[3];
  v83 = v108.columns[2];
  std::vector<CV3DSurfaceDetectionPoint3D>::vector[abi:ne200100](v105, [v13 count]);
  v33 = 0;
  v34 = 0;
  for (i = 0; i < [v13 count]; ++i)
  {
    v36 = ([v13 points] + v33);
    v37 = (v105[0] + v34);
    *v37 = -v36[2];
    v37[1] = -*v36;
    v37[2] = v36[1];
    v34 += 24;
    v33 += 16;
  }

  v101.columns[0].i64[0] = v105[0];
  v38 = [v13 count];
  v101.columns[0].i64[1] = 0;
  v101.columns[1].i64[0] = v38;
  __src = 0;
  v99 = 0;
  v100 = 0;
  if ([v13 vergenceAngleCosines])
  {
    v39 = [v13 count];
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__src, v39);
    v79 = a8;
    vergenceAngleCosines = [v13 vergenceAngleCosines];
    if (v39)
    {
      v41 = vergenceAngleCosines;
      v42 = v99;
      v43 = 4 * v39;
      do
      {
        v44 = *v41;
        if (v42 >= v100)
        {
          v45 = __src;
          v46 = v42 - __src;
          v47 = (v42 - __src) >> 3;
          v48 = v47 + 1;
          if ((v47 + 1) >> 61)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v49 = v100 - __src;
          if ((v100 - __src) >> 2 > v48)
          {
            v48 = v49 >> 2;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF8)
          {
            v50 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(&__src, v50);
          }

          v51 = v47;
          v52 = (8 * v47);
          v53 = &v52[-v51];
          *v52 = v44;
          v42 = v52 + 1;
          memcpy(v53, v45, v46);
          v54 = __src;
          __src = v53;
          v99 = v42;
          v100 = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v42++ = v44;
        }

        v99 = v42;
        ++v41;
        v43 -= 4;
      }

      while (v43);
    }

    v101.columns[0].i64[1] = __src;
    a8 = v79;
  }

  [v13 count];
  kdebug_trace();
  [v12 principalPoint];
  v56 = v55;
  [v12 principalPoint];
  v58 = v57;
  [v12 focalLength];
  v60 = v59;
  [v12 focalLength];
  v62 = v61;
  [v12 imageResolution];
  v64 = v63;
  [v12 imageResolution];
  v101.columns[1].i64[1] = v60;
  v101.columns[2].i64[0] = v62;
  v101.columns[2].i64[1] = v56;
  v101.columns[3].i64[0] = v58;
  v101.columns[3].i32[2] = v64;
  v101.columns[3].i32[3] = v65;
  ARMatrix4x4ColumnMajorRotationAndTranslation((v102 + 8), &v103, v85, v84, v83, v82);
  LODWORD(v102[0]) = ARSurfaceOrientationForPlaneDetectionType(a8);
  v95 = v102[4];
  v96 = v103;
  v97 = v104;
  v91 = v102[0];
  v92 = v102[1];
  v93 = v102[2];
  v94 = v102[3];
  v90 = v101;
  v66 = CV3DSurfaceDetectionSingleShotSurfaces();
  kdebug_trace();
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v87 = __117__ARPlaneEstimationTechnique__detectPlanesWithDetector_types_camera_referenceFeaturePoints_referenceOriginTransform___block_invoke;
  v88 = &__block_descriptor_40_e5_v8__0l;
  v89 = v66;
  if (v66)
  {
    v66 = [ARPlaneData anchorForDetectionResult:v66];
  }

  v87(v86);
  if (__src)
  {
    v99 = __src;
    operator delete(__src);
  }

  if (v105[0])
  {
    v105[1] = v105[0];
    operator delete(v105[0]);
  }

  return v66;
}

@end