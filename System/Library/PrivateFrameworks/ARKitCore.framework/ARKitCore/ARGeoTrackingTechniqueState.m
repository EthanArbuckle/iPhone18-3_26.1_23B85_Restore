@interface ARGeoTrackingTechniqueState
+ (id)_findClosestDataToTimestamp:(double)a3 inBuffer:(id)a4;
- (ARGeoTrackingTechniqueState)initWithResetCount:(int64_t)a3;
- (__n128)lastLoggedVioPosition;
- (id)findClosestDeviceMotionDataToTimestamp:(double)a3;
- (id)findClosestVioPoseToTimestamp:(double)a3;
- (void)addDeviceMotionData:(id)a3;
- (void)addFailureReason:(int64_t)a3;
- (void)addVioPoseData:(id)a3;
- (void)enuFromVIO;
- (void)removeFailureReason:(int64_t)a3;
- (void)setEnuFromVIO:(__int128 *)a3;
- (void)setEnuFromVIORotation:(uint64_t)a3;
- (void)setEnuFromVIOTranslation:(ARGeoTrackingTechniqueState *)self;
- (void)setLastLoggedVioPosition:(ARGeoTrackingTechniqueState *)self;
@end

@implementation ARGeoTrackingTechniqueState

- (ARGeoTrackingTechniqueState)initWithResetCount:(int64_t)a3
{
  v23.receiver = self;
  v23.super_class = ARGeoTrackingTechniqueState;
  v4 = [(ARGeoTrackingTechniqueState *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_resetCount = a3;
    if (_ARLogTechnique_onceToken_2 != -1)
    {
      [ARGeoTrackingTechniqueState initWithResetCount:];
    }

    v6 = _ARLogTechnique_logObj_2;
    if (os_log_type_enabled(_ARLogTechnique_logObj_2, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Geo tracking has reset! Count=%ld", buf, 0x20u);
    }

    v10 = [MEMORY[0x1E695DF70] array];
    resultDatas = v5->_resultDatas;
    v5->_resultDatas = v10;

    [(ARGeoTrackingTechniqueState *)v5 setLastCMDeviceMotion:0];
    [(ARGeoTrackingTechniqueState *)v5 setLastCLLocation:0];
    v5->_enuFromVIOLock._os_unfair_lock_opaque = 0;
    *buf = *MEMORY[0x1E69E9B08];
    [(ARGeoTrackingTechniqueState *)v5 setEnuFromVIO:buf];
    [(ARGeoTrackingTechniqueState *)v5 setEnuOrigin:0];
    v5->_poseOkCount = 0;
    v5->_lastVLExecutionTimestamp = -1.0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_firstVLExecutionAttemptTimestamp = _Q0;
    [(ARGeoTrackingTechniqueState *)v5 setVLHandle:0];
    *&v5->_hasStartedAvailabilityCheck = 0;
    [(ARGeoTrackingTechniqueState *)v5 setTrackingState:1];
    [(ARGeoTrackingTechniqueState *)v5 setTrackingAccuracy:0];
    [(ARGeoTrackingTechniqueState *)v5 setConsensusAverageFilter:0];
    [(ARGeoTrackingTechniqueState *)v5 setGradualCorrectionFilter:0];
    v5->_lastGradualCorrectionTime = 0.0;
    [(ARGeoTrackingTechniqueState *)v5 setFailureReasons:1024];
    *&v5->_lastPoseOriginTimestamp = 0u;
    *&v5->_lastLoggedFailureReasons = 0u;
    v17 = [[ARCircularArray alloc] initWithCapacity:30];
    vioPoseCircularBuffer = v5->_vioPoseCircularBuffer;
    v5->_vioPoseCircularBuffer = v17;

    v5->_vioPoseBufferLock._os_unfair_lock_opaque = 0;
    v19 = [[ARCircularArray alloc] initWithCapacity:50];
    deviceMotionCircularBuffer = v5->_deviceMotionCircularBuffer;
    v5->_deviceMotionCircularBuffer = v19;

    v5->_deviceMotionBufferLock._os_unfair_lock_opaque = 0;
    lastLocationProcessedForFusion = v5->_lastLocationProcessedForFusion;
    v5->_lastLocationProcessedForFusion = 0;

    *v5->_lastLoggedVioPosition = 0;
    *&v5->_lastLoggedVioPosition[8] = 0;
    *&v5->_lastLoggedVioPosition[16] = 0u;
    v5->_lastLoggedVioTimestamp = -1.0;
  }

  return v5;
}

- (void)enuFromVIO
{
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 336);
  a2[4] = *(a1 + 320);
  a2[5] = v4;
  v5 = *(a1 + 368);
  a2[6] = *(a1 + 352);
  a2[7] = v5;
  v6 = *(a1 + 272);
  *a2 = *(a1 + 256);
  a2[1] = v6;
  v7 = *(a1 + 304);
  a2[2] = *(a1 + 288);
  a2[3] = v7;

  os_unfair_lock_unlock((a1 + 8));
}

- (void)setEnuFromVIO:(__int128 *)a3
{
  os_unfair_lock_lock((a1 + 8));
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[3];
  *(a1 + 288) = a3[2];
  *(a1 + 304) = v7;
  *(a1 + 256) = v5;
  *(a1 + 272) = v6;
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[7];
  *(a1 + 352) = a3[6];
  *(a1 + 368) = v10;
  *(a1 + 320) = v8;
  *(a1 + 336) = v9;

  os_unfair_lock_unlock((a1 + 8));
}

- (void)setEnuFromVIOTranslation:(ARGeoTrackingTechniqueState *)self
{
  v5 = v2[1];
  v6 = *v2;
  os_unfair_lock_lock(&self->_enuFromVIOLock);
  *&v4 = v5;
  *(&v4 + 1) = 1.0;
  *&self[1]._gradualCorrectionFilter = v6;
  *&self[1]._resetCount = v4;

  os_unfair_lock_unlock(&self->_enuFromVIOLock);
}

- (void)setEnuFromVIORotation:(uint64_t)a3
{
  os_unfair_lock_lock(a1 + 2);
  for (i = 0; i != 24; i += 8)
  {
    v6 = *(a3 + i * 4 + 16);
    v7 = &a1[i + 64];
    *&v7->_os_unfair_lock_opaque = *(a3 + i * 4);
    *&v7[4]._os_unfair_lock_opaque = v6;
  }

  os_unfair_lock_unlock(a1 + 2);
}

- (void)addFailureReason:(int64_t)a3
{
  v4 = [(ARGeoTrackingTechniqueState *)self failureReasons]| a3;

  [(ARGeoTrackingTechniqueState *)self setFailureReasons:v4];
}

- (void)removeFailureReason:(int64_t)a3
{
  v4 = [(ARGeoTrackingTechniqueState *)self failureReasons]& ~a3;

  [(ARGeoTrackingTechniqueState *)self setFailureReasons:v4];
}

+ (id)_findClosestDataToTimestamp:(double)a3 inBuffer:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v10 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 timestamp];
        v14 = vabdd_f64(a3, v13);
        if (v14 < v10)
        {
          v15 = v12;

          v10 = v14;
          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)findClosestVioPoseToTimestamp:(double)a3
{
  os_unfair_lock_lock(&self->_vioPoseBufferLock);
  v5 = [objc_opt_class() _findClosestDataToTimestamp:self->_vioPoseCircularBuffer inBuffer:a3];
  os_unfair_lock_unlock(&self->_vioPoseBufferLock);

  return v5;
}

- (void)addVioPoseData:(id)a3
{
  v4 = a3;
  v5 = [ARGeoTrackingTechniqueStatePose alloc];
  [v4 timestamp];
  v7 = v6;
  [v4 visionCameraTransform];
  ARMatrix4x4FloatToDouble(v14, v8, v9, v10, v11);
  v12 = [(ARGeoTrackingTechniqueStatePose *)v5 initWithTimestamp:v14 transform:0 fused:v7 heading:0.0];
  os_unfair_lock_lock(&self->_vioPoseBufferLock);
  v13 = [(ARCircularArray *)self->_vioPoseCircularBuffer addObject:v12];
  os_unfair_lock_unlock(&self->_vioPoseBufferLock);
}

- (id)findClosestDeviceMotionDataToTimestamp:(double)a3
{
  os_unfair_lock_lock(&self->_deviceMotionBufferLock);
  v5 = [objc_opt_class() _findClosestDataToTimestamp:self->_deviceMotionCircularBuffer inBuffer:a3];
  os_unfair_lock_unlock(&self->_deviceMotionBufferLock);

  return v5;
}

- (void)addDeviceMotionData:(id)a3
{
  v4 = a3;
  v5 = [ARGeoTrackingTechniqueStatePose alloc];
  [v4 timestamp];
  v7 = v6;
  [v4 rotationMatrixENU];
  v12 = [v4 deviceMotion];
  [v12 heading];
  v14 = [(ARGeoTrackingTechniqueStatePose *)v5 initWithTimestamp:v16 transform:0 fused:v7 heading:v13 * 3.14159265 / 180.0];

  os_unfair_lock_lock(&self->_deviceMotionBufferLock);
  v15 = [(ARCircularArray *)self->_deviceMotionCircularBuffer addObject:v14];
  os_unfair_lock_unlock(&self->_deviceMotionBufferLock);
}

- (__n128)lastLoggedVioPosition
{
  result = a1[14];
  a2[1].n128_u64[0] = a1[15].n128_u64[0];
  *a2 = result;
  return result;
}

- (void)setLastLoggedVioPosition:(ARGeoTrackingTechniqueState *)self
{
  v3 = v2[1];
  *self->_lastLoggedVioPosition = *v2;
  *&self->_lastLoggedVioPosition[16] = v3;
}

@end