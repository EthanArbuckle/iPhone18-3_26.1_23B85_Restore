@interface ABPK2DDetectionPostprocessHeatmapAffinitymap
- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d;
- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeletonVector:(id)vector;
- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getTrackedHumanSkeleton:(id)skeleton;
@end

@implementation ABPK2DDetectionPostprocessHeatmapAffinitymap

- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d
{
  buffersCopy = buffers;
  paramsCopy = params;
  dCopy = d;
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startExtract2DSkeletonSignpostWithTimestamp:timestamp];
  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " ABPK2DDetectionPostprocessHeatmapAffinitymap: Extracting 2D skeleton from buffers ", buf, 2u);
  }

  objc_storeStrong(&self->_imagePreProcessingParams, params);
  rotationNeeded = [buffersCopy rotationNeeded];
  CVPixelBufferLockBaseAddress([buffersCopy heatMapBuffer], 0);
  CVPixelBufferLockBaseAddress([buffersCopy affinityMapBuffer], 0);
  BaseAddress = CVPixelBufferGetBaseAddress([buffersCopy affinityMapBuffer]);
  [buffersCopy affinityMapShape];
  v51 = v16;
  [buffersCopy affinityMapShape];
  v18 = v17;
  *buf = self->_numberOfInputJoints + 1;
  v62 = v51;
  v63 = v17;
  v60[0] = 36;
  v60[1] = v51;
  v60[2] = v17;
  [buffersCopy affinityMapStrides];
  v59[0] = v19;
  [buffersCopy affinityMapStrides];
  v59[1] = v20;
  [buffersCopy affinityMapStrides];
  v59[2] = v21;
  v58 = 0;
  IOSurface = CVPixelBufferGetIOSurface([buffersCopy heatMapBuffer]);
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startMaxFilterSignpostWithTimestamp:timestamp];
  v23 = [(ABPK2DDetectionPostprocessGPU *)self->_postprocessorGPU process:IOSurface counter:&v58 shape:v18, v51];
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endMaxFilterSignpostWithTimestamp:timestamp];
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startExtractHumanSignpostWithTimestamp:timestamp];
  v56 = 0uLL;
  v57 = 0;
  if (self->_numberOfInputJoints == 17)
  {
    abpk::extractHumansLegacy(v23, v23, BaseAddress, buf, v60, v59, 0, v58, v54);
  }

  else
  {
    abpk::extractHumans(v23, v23, BaseAddress, buf, v60, v59, 0, v58, v54);
  }

  std::vector<abpk::Human>::__vdeallocate(&v56);
  v56 = *v54;
  v57 = v55;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v64 = v54;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&v64);
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endExtractHumanSignpostWithTimestamp:timestamp];
  CVPixelBufferUnlockBaseAddress([buffersCopy heatMapBuffer], 0);
  CVPixelBufferUnlockBaseAddress([buffersCopy affinityMapBuffer], 0);
  CVPixelBufferRelease([buffersCopy heatMapBuffer]);
  CVPixelBufferRelease([buffersCopy affinityMapBuffer]);
  if (*(&v56 + 1) == v56)
  {
    if (self->_humansDetected)
    {
      v46 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *v54 = 0;
        _os_log_impl(&dword_23EDDC000, v46, OS_LOG_TYPE_DEBUG, " No humans detected in the image ", v54, 2u);
      }

      self->_humansDetected = 0;
    }

    timestamp = -6661;
  }

  else
  {
    if (!self->_humansDetected)
    {
      v24 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *v54 = 0;
        _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " Humans detected in the image ", v54, 2u);
      }

      self->_humansDetected = 1;
    }

    v25 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *v54 = 0;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t Converting 2d points from ML space to image space ", v54, 2u);
    }

    [paramsCopy inputResolution];
    v48 = v26;
    v49 = v27;
    [paramsCopy outputResolution];
    v31 = *(&v56 + 1);
    v30 = v56;
    if (v56 != *(&v56 + 1))
    {
      v32 = v28;
      v33 = v29;
      v34.f64[0] = v48;
      v34.f64[1] = v49;
      v50 = v34;
      do
      {
        v35 = *v30;
        v36 = v30[1];
        while (v35 != v36)
        {
          LODWORD(v37) = HIDWORD(*v35);
          if (COERCE_FLOAT(*v35) != -1.0 && v37 != -1.0)
          {
            *&v39 = v32 * COERCE_FLOAT(*v35);
            v40 = v33 * v37;
            *(&v39 + 1) = v40;
            [ABPKImagePreProcessingParams convert2DPoint:paramsCopy toInputSpaceWithParams:v39];
            *v35 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v41), v50));
          }

          ++v35;
        }

        v30 += 15;
      }

      while (v30 != v31);
    }

    [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startExtrapolationSignpostWithTimestamp:timestamp];
    v42 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *v54 = 0;
      _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " \t Performing extrapolation ", v54, 2u);
    }

    extrapolationFiltering = self->_extrapolationFiltering;
    v52 = v56;
    v53 = v57;
    v57 = 0;
    v56 = 0uLL;
    timestamp = [(ABPK2DExtrapolationFiltering *)extrapolationFiltering performExtrapolationOnHumans:&v52 withImageResolution:rotationNeeded atTimestamp:dCopy rotationNeeded:v48 previousSkeleton3D:v49, timestamp];
    *v54 = &v52;
    std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v54);
    [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endExtrapolationSignpostWithTimestamp:timestamp];
    [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endExtract2DSkeletonSignpostWithTimestamp:timestamp];
    if (timestamp)
    {
      v45 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v54 = 0;
        _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_ERROR, " 2D Extrapolation failed ", v54, 2u);
      }
    }
  }

  *v54 = &v56;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v54);

  return timestamp;
}

- (void)getRawTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHuman];
  v5 = *rawTrackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:rawTrackedHuman[3]];
  [skeletonCopy setJointConfidences:rawTrackedHuman[6]];
  [skeletonCopy setHasMissingJoints:rawTrackedHuman[13] < ((rawTrackedHuman[1] - *rawTrackedHuman) >> 3)];
}

- (void)getRawTrackedHumanSkeletonVector:(id)vector
{
  vectorCopy = vector;
  rawTrackedHumanVector = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHumanVector];
  v5 = *rawTrackedHumanVector;
  v6 = rawTrackedHumanVector[1];
  if (*rawTrackedHumanVector != v6)
  {
    do
    {
      v7 = objc_alloc_init(ABPK2dSkeleton);
      v8 = *v5;
      [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
      [(ABPK2dSkeleton *)v7 setNormalizedKeypoints2d:v8 withImageRes:?];
      [(ABPK2dSkeleton *)v7 setJointVisibility:v5[3]];
      [(ABPK2dSkeleton *)v7 setJointConfidences:v5[6]];
      [(ABPK2dSkeleton *)v7 setHasMissingJoints:v5[13] < ((v5[1] - *v5) >> 3)];
      [vectorCopy addObject:v7];

      v5 += 15;
    }

    while (v5 != v6);
  }
}

- (void)getTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  trackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHuman];
  v5 = *trackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:trackedHuman[3]];
  [skeletonCopy setJointConfidences:trackedHuman[6]];
  [skeletonCopy setHasMissingJoints:trackedHuman[13] < ((trackedHuman[1] - *trackedHuman) >> 3)];
}

- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  trackedHumanForLifting = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHumanForLifting];
  v5 = *trackedHumanForLifting;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:trackedHumanForLifting[3]];
  [skeletonCopy setJointConfidences:trackedHumanForLifting[6]];
  [skeletonCopy setHasMissingJoints:trackedHumanForLifting[13] < ((trackedHumanForLifting[1] - *trackedHumanForLifting) >> 3)];
}

- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHuman];
  v5 = *rawTrackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:rawTrackedHuman[3]];
  [skeletonCopy setJointConfidences:rawTrackedHuman[6]];
}

- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  trackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHuman];
  trackedHumanForLifting = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHumanForLifting];
  if (trackedHumanForLifting[13] >= ((trackedHumanForLifting[1] - *trackedHumanForLifting) >> 3))
  {
    v8 = [[ABPK2D3DLiftingData alloc] initWithHumanForLifting:trackedHumanForLifting imageSize:rotation rotation:1000.0 croppedRect:1000.0, 0.0, 0.0, 1.0, 1.0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [ABPK2DDetectionResult alloc];
  v10 = *abpk::Human::jointVector(trackedHuman);
  v11 = trackedHuman[3];
  v14 = trackedHuman;
  v12 = *trackedHuman;
  v13 = v14[1];
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  v15 = [ABPK2DDetectionResult initWithJoints:v9 trackingStates:"initWithJoints:trackingStates:numberOfJoints:imageResolution:rotation:croppedRect:liftingData:" numberOfJoints:v10 imageResolution:v11 rotation:(v13 - v12) >> 3 croppedRect:rotation liftingData:v8];

  return v15;
}

- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHuman];
  v7 = [[ABPK2D3DLiftingData alloc] initWithHumanForLifting:rawTrackedHuman imageSize:rotation rotation:1000.0 croppedRect:1000.0, 0.0, 0.0, 1.0, 1.0];
  v8 = [ABPK2DDetectionResult alloc];
  v9 = *abpk::Human::jointVector(rawTrackedHuman);
  v10 = rawTrackedHuman[3];
  v13 = rawTrackedHuman;
  v11 = *rawTrackedHuman;
  v12 = v13[1];
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  v14 = [ABPK2DDetectionResult initWithJoints:v8 trackingStates:"initWithJoints:trackingStates:numberOfJoints:imageResolution:rotation:croppedRect:liftingData:" numberOfJoints:v9 imageResolution:v10 rotation:(v12 - v11) >> 3 croppedRect:rotation liftingData:v7];

  return v14;
}

@end