@interface ARGeoTrackingTechniqueState
+ (id)_findClosestDataToTimestamp:(double)timestamp inBuffer:(id)buffer;
- (ARGeoTrackingTechniqueState)initWithResetCount:(int64_t)count;
- (__n128)lastLoggedVioPosition;
- (id)findClosestDeviceMotionDataToTimestamp:(double)timestamp;
- (id)findClosestVioPoseToTimestamp:(double)timestamp;
- (void)addDeviceMotionData:(id)data;
- (void)addFailureReason:(int64_t)reason;
- (void)addVioPoseData:(id)data;
- (void)enuFromVIO;
- (void)removeFailureReason:(int64_t)reason;
- (void)setEnuFromVIO:(__int128 *)o;
- (void)setEnuFromVIORotation:(uint64_t)rotation;
- (void)setEnuFromVIOTranslation:(ARGeoTrackingTechniqueState *)self;
- (void)setLastLoggedVioPosition:(ARGeoTrackingTechniqueState *)self;
@end

@implementation ARGeoTrackingTechniqueState

- (ARGeoTrackingTechniqueState)initWithResetCount:(int64_t)count
{
  v23.receiver = self;
  v23.super_class = ARGeoTrackingTechniqueState;
  v4 = [(ARGeoTrackingTechniqueState *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_resetCount = count;
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

    array = [MEMORY[0x1E695DF70] array];
    resultDatas = v5->_resultDatas;
    v5->_resultDatas = array;

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
  os_unfair_lock_lock((self + 8));
  v4 = *(self + 336);
  a2[4] = *(self + 320);
  a2[5] = v4;
  v5 = *(self + 368);
  a2[6] = *(self + 352);
  a2[7] = v5;
  v6 = *(self + 272);
  *a2 = *(self + 256);
  a2[1] = v6;
  v7 = *(self + 304);
  a2[2] = *(self + 288);
  a2[3] = v7;

  os_unfair_lock_unlock((self + 8));
}

- (void)setEnuFromVIO:(__int128 *)o
{
  os_unfair_lock_lock((self + 8));
  v5 = *o;
  v6 = o[1];
  v7 = o[3];
  *(self + 288) = o[2];
  *(self + 304) = v7;
  *(self + 256) = v5;
  *(self + 272) = v6;
  v8 = o[4];
  v9 = o[5];
  v10 = o[7];
  *(self + 352) = o[6];
  *(self + 368) = v10;
  *(self + 320) = v8;
  *(self + 336) = v9;

  os_unfair_lock_unlock((self + 8));
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

- (void)setEnuFromVIORotation:(uint64_t)rotation
{
  os_unfair_lock_lock(self + 2);
  for (i = 0; i != 24; i += 8)
  {
    v6 = *(rotation + i * 4 + 16);
    v7 = &self[i + 64];
    *&v7->_os_unfair_lock_opaque = *(rotation + i * 4);
    *&v7[4]._os_unfair_lock_opaque = v6;
  }

  os_unfair_lock_unlock(self + 2);
}

- (void)addFailureReason:(int64_t)reason
{
  v4 = [(ARGeoTrackingTechniqueState *)self failureReasons]| reason;

  [(ARGeoTrackingTechniqueState *)self setFailureReasons:v4];
}

- (void)removeFailureReason:(int64_t)reason
{
  v4 = [(ARGeoTrackingTechniqueState *)self failureReasons]& ~reason;

  [(ARGeoTrackingTechniqueState *)self setFailureReasons:v4];
}

+ (id)_findClosestDataToTimestamp:(double)timestamp inBuffer:(id)buffer
{
  v22 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [bufferCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(bufferCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 timestamp];
        v14 = vabdd_f64(timestamp, v13);
        if (v14 < v10)
        {
          v15 = v12;

          v10 = v14;
          v8 = v15;
        }
      }

      v7 = [bufferCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)findClosestVioPoseToTimestamp:(double)timestamp
{
  os_unfair_lock_lock(&self->_vioPoseBufferLock);
  v5 = [objc_opt_class() _findClosestDataToTimestamp:self->_vioPoseCircularBuffer inBuffer:timestamp];
  os_unfair_lock_unlock(&self->_vioPoseBufferLock);

  return v5;
}

- (void)addVioPoseData:(id)data
{
  dataCopy = data;
  v5 = [ARGeoTrackingTechniqueStatePose alloc];
  [dataCopy timestamp];
  v7 = v6;
  [dataCopy visionCameraTransform];
  ARMatrix4x4FloatToDouble(v14, v8, v9, v10, v11);
  v12 = [(ARGeoTrackingTechniqueStatePose *)v5 initWithTimestamp:v14 transform:0 fused:v7 heading:0.0];
  os_unfair_lock_lock(&self->_vioPoseBufferLock);
  v13 = [(ARCircularArray *)self->_vioPoseCircularBuffer addObject:v12];
  os_unfair_lock_unlock(&self->_vioPoseBufferLock);
}

- (id)findClosestDeviceMotionDataToTimestamp:(double)timestamp
{
  os_unfair_lock_lock(&self->_deviceMotionBufferLock);
  v5 = [objc_opt_class() _findClosestDataToTimestamp:self->_deviceMotionCircularBuffer inBuffer:timestamp];
  os_unfair_lock_unlock(&self->_deviceMotionBufferLock);

  return v5;
}

- (void)addDeviceMotionData:(id)data
{
  dataCopy = data;
  v5 = [ARGeoTrackingTechniqueStatePose alloc];
  [dataCopy timestamp];
  v7 = v6;
  [dataCopy rotationMatrixENU];
  deviceMotion = [dataCopy deviceMotion];
  [deviceMotion heading];
  v14 = [(ARGeoTrackingTechniqueStatePose *)v5 initWithTimestamp:v16 transform:0 fused:v7 heading:v13 * 3.14159265 / 180.0];

  os_unfair_lock_lock(&self->_deviceMotionBufferLock);
  v15 = [(ARCircularArray *)self->_deviceMotionCircularBuffer addObject:v14];
  os_unfair_lock_unlock(&self->_deviceMotionBufferLock);
}

- (__n128)lastLoggedVioPosition
{
  result = self[14];
  a2[1].n128_u64[0] = self[15].n128_u64[0];
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