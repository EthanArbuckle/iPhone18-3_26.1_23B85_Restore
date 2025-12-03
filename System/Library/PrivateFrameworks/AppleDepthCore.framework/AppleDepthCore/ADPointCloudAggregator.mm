@interface ADPointCloudAggregator
+ (id)aggregatePointClouds:(__n128)clouds calibrations:(__n128)calibrations worldToPlatformTransforms:(uint64_t)transforms projectingToCamera:(uint64_t)camera worldToPlatformAtProjectionTime:(void *)time;
+ (id)aggregatePointClouds:(__n128)clouds pointCloudToPlatformTransforms:(__n128)transforms worldToPlatformTransforms:(uint64_t)platformTransforms projectingToCamera:(uint64_t)camera worldToPlatformAtProjectionTime:(void *)time;
- (id)aggregateForTime:(__n128)time worldToCameraTransform:(__n128)transform;
- (int64_t)clear;
- (uint64_t)aggregateAndProjectForTime:(double)time worldToCameraTransform:(double)transform cropTo:(double)to rotateBy:(double)by projectedPointsBuffer:(uint64_t)buffer;
- (uint64_t)aggregateAndProjectForTime:(double)time worldToCameraTransform:(double)transform filterParams:(double)params cropTo:(double)to rotateBy:(uint64_t)by projectedPointsBuffer:(void *)buffer;
- (uint64_t)initWithAggregationParameters:(double)parameters jasperToColorTransform:(double)transform colorCamera:(double)camera;
- (uint64_t)pushPointCloud:(__n128)cloud timestamp:(__n128)timestamp worldToCameraTransform:(__n128)transform;
- (uint64_t)pushPointCloud:(__n128)cloud timestamp:(__n128)timestamp worldToLidarTransform:(__n128)transform;
- (void)dealloc;
- (void)setJasperToCameraTransform:(__n128)transform;
@end

@implementation ADPointCloudAggregator

- (void)setJasperToCameraTransform:(__n128)transform
{
  v5[0] = a2;
  v5[1] = transform;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 48), v5, 64, 1, 0);
}

- (int64_t)clear
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = 0;
  for (i = 0; i < [(ADAggregationParameters *)selfCopy->_aggregationParameters aggregationSize]; ++i)
  {
    history = selfCopy->_history;
    var0 = history[v3].var0;
    history[v3].var0 = 0;

    selfCopy->_history[v3 + 5].var0 = 0;
    v3 += 6;
  }

  selfCopy->_historyIndex = 0;
  objc_sync_exit(selfCopy);

  return 0;
}

- (uint64_t)aggregateAndProjectForTime:(double)time worldToCameraTransform:(double)transform filterParams:(double)params cropTo:(double)to rotateBy:(uint64_t)by projectedPointsBuffer:(void *)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = [selfCopy aggregateForTime:a2 worldToCameraTransform:{time, transform, params, to}];
  v24 = [v23 projectJasperPointsFilteredBy:bufferCopy croppedBy:a9 rotatedBy:a10 andScaledInto:{a14, a15, a16, a17}];

  objc_sync_exit(selfCopy);
  return v24;
}

- (uint64_t)aggregateAndProjectForTime:(double)time worldToCameraTransform:(double)transform cropTo:(double)to rotateBy:(double)by projectedPointsBuffer:(uint64_t)buffer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = [selfCopy aggregateForTime:a2 worldToCameraTransform:{time, transform, to, by}];
  v22 = [v21 projectJasperPointsCroppedBy:a8 rotatedBy:a9 andScaledInto:{a13, a14, a15, a16}];

  objc_sync_exit(selfCopy);
  return v22;
}

- (id)aggregateForTime:(__n128)time worldToCameraTransform:(__n128)transform
{
  v41 = a6;
  v40 = a5;
  transformCopy = transform;
  timeCopy = time;
  v61 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy[5])
  {
    v50 = 335679376;
    v51 = 0u;
    v52 = 0u;
    kdebug_trace();
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(selfCopy[3], "aggregationSize")}];
    [selfCopy[3] aggregationSize];
    MEMORY[0x28223BE20]();
    v10 = &timeCopy.n128_u64[-8 * v9];
    for (i = 0; i < [selfCopy[3] aggregationSize]; ++i)
    {
      v12 = selfCopy[2];
      v13 = (v12 + i) % [selfCopy[3] aggregationSize];
      v14 = selfCopy[1] + 96 * v13;
      if (*v14)
      {
        v15 = *(v14 + 80);
        [selfCopy[3] maxPointCloudAge];
        if (a2 - v15 < v16)
        {
          v17 = (selfCopy[1] + 96 * v13);
          v18 = v17[2];
          v45 = v17[1];
          v44 = v18;
          v19 = v17[4];
          v43 = v17[3];
          v42 = v19;
          [selfCopy jasperToCameraTransform];
          v49 = v20;
          v48 = v21;
          v47 = v22;
          v46 = v23;
          v63.columns[0] = v45;
          v63.columns[1] = v44;
          v63.columns[2] = v43;
          v63.columns[3] = v42;
          v64 = __invert_f4(v63);
          v24 = 0;
          v53 = v49;
          v54 = v48;
          v55 = v47;
          v56 = v46;
          do
          {
            *&buf[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64.columns[0], COERCE_FLOAT(*(&v53 + v24))), v64.columns[1], *(&v53 + v24), 1), v64.columns[2], *(&v53 + v24), 2), v64.columns[3], *(&v53 + v24), 3);
            v24 += 16;
          }

          while (v24 != 64);
          v25 = 0;
          v53 = *buf;
          v54 = v58;
          v55 = v59;
          v56 = v60;
          v26 = v41;
          v27 = v40;
          v28 = transformCopy;
          v29 = timeCopy;
          do
          {
            *&buf[v25] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v53 + v25))), v28, *(&v53 + v25), 1), v27, *(&v53 + v25), 2), v26, *(&v53 + v25), 3);
            v25 += 16;
          }

          while (v25 != 64);
          v46 = *buf;
          v47 = v58;
          v48 = v59;
          v49 = v60;
          v30 = &v10[8 * [v8 count]];
          v31 = DWORD2(v46);
          *v30 = v46;
          *(v30 + 2) = v31;
          v32 = DWORD2(v47);
          v30[2] = v47;
          *(v30 + 6) = v32;
          v33 = DWORD2(v48);
          v30[4] = v48;
          *(v30 + 10) = v33;
          v34 = DWORD2(v49);
          v30[6] = v49;
          *(v30 + 14) = v34;
          [v8 addObject:*(selfCopy[1] + 12 * v13)];
        }
      }
    }

    colorCameraCalibration = [selfCopy colorCameraCalibration];
    v36 = [ADJasperPointCloud pointCloudByMergingPointClouds:v8 applyingTransforms:v10 projectingToCamera:colorCameraCalibration];

    InstrumentsTraceGuard::~InstrumentsTraceGuard(&v50);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot aggregate point cloud. color camera calibration not set", buf, 2u);
    }

    v36 = 0;
  }

  objc_sync_exit(selfCopy);

  return v36;
}

- (uint64_t)pushPointCloud:(__n128)cloud timestamp:(__n128)timestamp worldToCameraTransform:(__n128)transform
{
  v11 = a8;
  if (v11)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v25 = 335679212;
    v26 = 0u;
    v27 = 0u;
    kdebug_trace();
    if (selfCopy[4])
    {
      v13 = [v11 pointCloudByApplyingFilter:?];
    }

    else
    {
      objc_storeStrong(selfCopy[1] + 12 * selfCopy[2], a8);
      v13 = [[ADJasperPointCloud alloc] initWithPointCloud:v11];
    }

    v15 = selfCopy[1];
    v16 = 96 * selfCopy[2];
    v17 = *&v15[v16];
    *&v15[v16] = v13;

    v18 = (selfCopy[1] + 96 * selfCopy[2]);
    v18[5].n128_f64[0] = a2;
    v18[1] = cloud;
    v18[2] = timestamp;
    v18[3] = transform;
    v18[4] = a6;
    v19 = selfCopy[2];
    selfCopy[2] = ((v19 + 1) % [selfCopy[3] aggregationSize]);
    InstrumentsTraceGuard::~InstrumentsTraceGuard(&v25);
    objc_sync_exit(selfCopy);

    v14 = 0;
  }

  else
  {
    v14 = -22953;
  }

  return v14;
}

- (uint64_t)pushPointCloud:(__n128)cloud timestamp:(__n128)timestamp worldToLidarTransform:(__n128)transform
{
  v10 = a8;
  [self jasperToCameraTransform];
  v15 = 0;
  v22[0] = cloud;
  v22[1] = timestamp;
  v22[2] = transform;
  v22[3] = a6;
  do
  {
    *(&v23 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v22[v15])), v12, *&v22[v15], 1), v13, v22[v15], 2), v14, v22[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  v16 = [self pushPointCloud:v10 timestamp:a2 worldToCameraTransform:{*&v23, *&v24, *&v25, *&v26}];

  return v16;
}

- (void)dealloc
{
  history = self->_history;
  if (history)
  {
    v4 = history - 1;
    var2 = history[-1].var2;
    if (var2 != 0.0)
    {
      v6 = 6 * *&var2;
      v7 = history - 6;
      do
      {

        v6 -= 6;
      }

      while (v6 * 16);
    }

    MEMORY[0x245CC10C0](v4, 0x1080C80A5AEB770);
  }

  v8.receiver = self;
  v8.super_class = ADPointCloudAggregator;
  [(ADPointCloudAggregator *)&v8 dealloc];
}

- (uint64_t)initWithAggregationParameters:(double)parameters jasperToColorTransform:(double)transform colorCamera:(double)camera
{
  v11 = a7;
  v12 = a8;
  v22 = 335679380;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  self[1] = 0;
  v21.receiver = self;
  v21.super_class = ADPointCloudAggregator;
  v13 = [(ADPointCloudAggregator *)&v21 init];
  v14 = v13;
  v15 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_aggregationParameters, a7);
    [(ADPointCloudAggregator *)v15 setColorCameraCalibration:v12];
    [(ADPointCloudAggregator *)v15 setJasperToCameraTransform:a2, parameters, transform, camera];
    [(ADAggregationParameters *)v14->_aggregationParameters aggregationSize];
    operator new[]();
  }

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v22);

  return 0;
}

+ (id)aggregatePointClouds:(__n128)clouds pointCloudToPlatformTransforms:(__n128)transforms worldToPlatformTransforms:(uint64_t)platformTransforms projectingToCamera:(uint64_t)camera worldToPlatformAtProjectionTime:(void *)time
{
  cloudsCopy = clouds;
  transformsCopy = transforms;
  v40 = a2;
  selfCopy = self;
  v51 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v14 = a10;
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = MEMORY[0x277D86220];
      v36 = "cannot aggregate point cloud. color camera calibration not set";
      goto LABEL_25;
    }

LABEL_19:
    v37 = 0;
    goto LABEL_21;
  }

  if (!timeCopy || ![timeCopy count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = MEMORY[0x277D86220];
      v36 = "cannot aggregate point cloud. no point clouds provided";
LABEL_25:
      _os_log_error_impl(&dword_240463000, v35, OS_LOG_TYPE_ERROR, v36, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  [timeCopy count];
  v15 = &selfCopy.n128_u64[-8 * MEMORY[0x28223BE20]()];
  [v14 cameraToPlatformTransform];
  v53.columns[0].i32[3] = 0;
  v53.columns[1].i32[3] = 0;
  v53.columns[2].i32[3] = 0;
  v53.columns[3].i32[3] = 1.0;
  v54 = __invert_f4(v53);
  v16 = 0;
  v43 = selfCopy;
  v44 = v40;
  v45 = cloudsCopy;
  v46 = transformsCopy;
  do
  {
    *&buf[v16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54.columns[0], COERCE_FLOAT(*(&v43 + v16))), v54.columns[1], v43.n128_u64[v16 / 8], 1), v54.columns[2], *(&v43 + v16), 2), v54.columns[3], *(&v43 + v16), 3);
    v16 += 16;
  }

  while (v16 != 64);
  v17 = 0;
  cloudsCopy = v48;
  transformsCopy = *buf;
  v40 = v49;
  selfCopy = v50;
  v18 = MEMORY[0x277D860B8];
  while ([timeCopy count] > v17)
  {
    if (a9)
    {
      v55 = __invert_f4(*(a9 + (v17 << 6)));
    }

    else
    {
      v55 = *v18;
    }

    v19 = 0;
    v20 = (a8 + (v17 << 6));
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    v21.n128_u32[3] = 0;
    v22.n128_u32[3] = 0;
    v23.n128_u32[3] = 0;
    v24.n128_u32[3] = 1.0;
    v43 = v21;
    v44 = v22;
    v45 = v23;
    v46 = v24;
    do
    {
      *&buf[v19] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55.columns[0], COERCE_FLOAT(*(&v43 + v19))), v55.columns[1], v43.n128_u64[v19 / 8], 1), v55.columns[2], *(&v43 + v19), 2), v55.columns[3], *(&v43 + v19), 3);
      v19 += 16;
    }

    while (v19 != 64);
    v25 = 0;
    v43 = *buf;
    v44 = v48;
    v45 = v49;
    v46 = v50;
    v27 = cloudsCopy;
    v26 = transformsCopy;
    v28 = v40;
    v29 = selfCopy;
    do
    {
      *&buf[v25] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v43 + v25))), v27, v43.n128_u64[v25 / 8], 1), v28, *(&v43 + v25), 2), v29, *(&v43 + v25), 3);
      v25 += 16;
    }

    while (v25 != 64);
    v30 = *buf;
    v31 = v48;
    v32 = v49;
    v33 = v50;
    v34 = &v15[8 * v17];
    *(v34 + 2) = *&buf[8];
    *v34 = v30;
    *(v34 + 6) = v31.n128_u32[2];
    v34[2] = v31.n128_u64[0];
    *(v34 + 10) = v32.n128_u32[2];
    v34[4] = v32.n128_u64[0];
    *(v34 + 14) = v33.n128_u32[2];
    ++v17;
    v34[6] = v33.n128_u64[0];
  }

  v37 = [ADJasperPointCloud pointCloudByMergingPointClouds:timeCopy applyingTransforms:v15 projectingToCamera:v14];
LABEL_21:

  return v37;
}

+ (id)aggregatePointClouds:(__n128)clouds calibrations:(__n128)calibrations worldToPlatformTransforms:(uint64_t)transforms projectingToCamera:(uint64_t)camera worldToPlatformAtProjectionTime:(void *)time
{
  cloudsCopy = clouds;
  calibrationsCopy = calibrations;
  selfCopy = self;
  v35 = a2;
  v40 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v14 = a8;
  v15 = a10;
  if (!v14 || ![v14 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = MEMORY[0x277D86220];
      v32 = "cannot aggregate point cloud. no calibration provided";
      v33 = 2;
      goto LABEL_20;
    }

LABEL_12:
    v29 = 0;
    goto LABEL_14;
  }

  v16 = [v14 count];
  if (v16 != [timeCopy count] && objc_msgSend(v14, "count") != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [v14 count];
      *&buf[12] = 2048;
      *&buf[14] = [timeCopy count];
      v31 = MEMORY[0x277D86220];
      v32 = "cannot aggregate point cloud. expecting either 1 calibration instance, or one per point cloud. got %lu calibration and %lu point clouds";
      v33 = 22;
LABEL_20:
      _os_log_error_impl(&dword_240463000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  *buf = 335679376;
  *&buf[8] = 0u;
  v39 = 0u;
  kdebug_trace();
  [timeCopy count];
  v17 = &selfCopy.n128_u64[-8 * MEMORY[0x28223BE20]()];
  for (i = 0; [timeCopy count] > i; ++i)
  {
    if ([v14 count] <= i)
    {
      [v14 objectAtIndexedSubscript:0];
    }

    else
    {
      [v14 objectAtIndexedSubscript:i];
    }
    v19 = ;
    [v19 cameraToPlatformTransform];
    v20 = &v17[8 * i];
    *v20 = v21;
    *(v20 + 2) = v22;
    *(v20 + 6) = v23;
    *(v20 + 10) = v24;
    v20[2] = v25;
    v20[4] = v26;
    *(v20 + 14) = v27;
    v20[6] = v28;
  }

  v29 = [ADPointCloudAggregator aggregatePointClouds:timeCopy pointCloudToPlatformTransforms:v17 worldToPlatformTransforms:a9 projectingToCamera:v15 worldToPlatformAtProjectionTime:selfCopy.n128_f64[0], v35.n128_f64[0], cloudsCopy.n128_f64[0], calibrationsCopy.n128_f64[0]];
  InstrumentsTraceGuard::~InstrumentsTraceGuard(buf);
LABEL_14:

  return v29;
}

@end