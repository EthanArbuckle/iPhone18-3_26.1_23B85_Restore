@interface ABPK2DDetectionPostprocessHeatmap
- (id)get2DDetectionResultforRotation:(int64_t)a3 croppedRect:(CGRect)a4;
- (id)getRaw2DDetectionResultforRotation:(int64_t)a3 croppedRect:(CGRect)a4;
- (int)extract2DSkeletonfromBuffers:(id)a3 withImagePreProcessingParams:(id)a4 atTimestamp:(double)a5 previousSkeleton3D:(id)a6;
- (void)getRawTrackedHumanForLiftingSkeleton:(id)a3;
- (void)getRawTrackedHumanSkeleton:(id)a3;
- (void)getRawTrackedHumanSkeletonVector:(id)a3;
- (void)getTrackedHumanForLiftingSkeleton:(id)a3;
- (void)getTrackedHumanSkeleton:(id)a3;
@end

@implementation ABPK2DDetectionPostprocessHeatmap

- (int)extract2DSkeletonfromBuffers:(id)a3 withImagePreProcessingParams:(id)a4 atTimestamp:(double)a5 previousSkeleton3D:(id)a6
{
  v92 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v78 = a6;
  [(ABPK2DDetectionPostprocessHeatmap *)self _startExtract2DSkeletonSignpostWithTimestamp:a5];
  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " ABPK2DDetectionPostprocessHeatmap: Extracting 2D skeleton from buffers ", buf, 2u);
  }

  objc_storeStrong(&self->_imagePreProcessingParams, a4);
  v13 = [v10 rotationNeeded];
  v14 = [v10 heatMapBuffer];
  CVPixelBufferLockBaseAddress(v14, 1uLL);
  [v10 heatMapShape];
  v79 = v15;
  [v10 heatMapShape];
  v76 = v16;
  BytesPerRow = CVPixelBufferGetBytesPerRow(v14);
  [(ABPK2DDetectionPostprocessHeatmap *)self _startMaxFilterSignpostWithTimestamp:a5];
  [(ABPK2DDetectionPostprocessHeatmap *)self _endMaxFilterSignpostWithTimestamp:a5];
  [(ABPK2DDetectionPostprocessHeatmap *)self _startExtractHumanSignpostWithTimestamp:a5];
  BaseAddress = CVPixelBufferGetBaseAddress(v14);
  v19 = v76;
  v20 = v76.n128_i32[1];
  v19.n128_u16[0] = 11878;
  abpk::parsePersonsfromHeatmapBuffer(BaseAddress, v76.n128_i32[1], BytesPerRow >> 1, buf, v19);
  v77 = v13;
  v21 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v90 = 134217984;
    *&v90[4] = 0x6DB6DB6DB6DB6DB7 * ((v86 - *buf) >> 3);
    _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " \t Persons detected: %lu ", v90, 0xCu);
  }

  v22 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *v90 = 0;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " \t Converting person to human type ", v90, 2u);
  }

  abpk::filterValidPersons(buf, v79, v20, 0.099976);
  v23 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v90 = 134217984;
    *&v90[4] = 0x6DB6DB6DB6DB6DB7 * ((v86 - *buf) >> 3);
    _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " \t Valid Persons detected: %lu ", v90, 0xCu);
  }

  abpk::convertPersonsToHuman(buf, self->_numberOfOutputJoints, v90);
  v24 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *v87 = 134217984;
    *&v87[4] = 0xEEEEEEEEEEEEEEEFLL * ((*&v90[8] - *v90) >> 3);
    _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " \t Humans detected: %lu ", v87, 0xCu);
  }

  CVPixelBufferUnlockBaseAddress(v14, 1uLL);
  CVPixelBufferRelease(v14);
  [(ABPK2DDetectionPostprocessHeatmap *)self _endExtractHumanSignpostWithTimestamp:a5];
  v26 = *buf;
  v25 = v86;
  if (v86 != *buf)
  {
    if (!self->_humansDetected)
    {
      v27 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *v87 = 0;
        _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_DEBUG, " Humans detected in the image ", v87, 2u);
      }

      self->_humansDetected = 1;
      v26 = *buf;
      v25 = v86;
    }

    if (0x6DB6DB6DB6DB6DB7 * ((v25 - v26) >> 3) != 0xEEEEEEEEEEEEEEEFLL * ((*&v90[8] - *v90) >> 3))
    {
      v57 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *v87 = 0;
        _os_log_impl(&dword_23EDDC000, v57, OS_LOG_TYPE_ERROR, " convertPersonsToHuman failed. Count difference. ", v87, 2u);
      }

      v58 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *v87 = 134217984;
        *&v87[4] = 0x6DB6DB6DB6DB6DB7 * ((v86 - *buf) >> 3);
        _os_log_impl(&dword_23EDDC000, v58, OS_LOG_TYPE_ERROR, " Persons count: %zu ", v87, 0xCu);
      }

      v59 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *v87 = 134217984;
        *&v87[4] = 0xEEEEEEEEEEEEEEEFLL * ((*&v90[8] - *v90) >> 3);
        _os_log_impl(&dword_23EDDC000, v59, OS_LOG_TYPE_ERROR, " Humans count %zu ", v87, 0xCu);
      }

      goto LABEL_69;
    }

    if (self->_numberOfOutputJoints != (*(*v90 + 8) - **v90) >> 3)
    {
      v60 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *v87 = 0;
        _os_log_impl(&dword_23EDDC000, v60, OS_LOG_TYPE_ERROR, " convertPersonsToHuman failed. Invalid number of joints in the converted human type. ", v87, 2u);
      }

      v61 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = (*(*v90 + 8) - **v90) >> 3;
        numberOfOutputJoints = self->_numberOfOutputJoints;
        *v87 = 134218240;
        *&v87[4] = v62;
        v88 = 2048;
        v89 = numberOfOutputJoints;
        _os_log_impl(&dword_23EDDC000, v61, OS_LOG_TYPE_ERROR, " Actual joints: %zu. Expected: %zu ", v87, 0x16u);
      }

      goto LABEL_69;
    }

    v28 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *v87 = 0;
      _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, " \t Converting 2d points from ML space to image space ", v87, 2u);
    }

    [v11 inputResolution];
    v74 = v29;
    v75 = v30;
    [v11 outputResolution];
    v33 = *v90;
    v34 = *&v90[8];
    if (*v90 != *&v90[8])
    {
      v35 = v31;
      v36 = v32;
      v37.f64[0] = v74;
      v37.f64[1] = v75;
      v80 = v37;
      do
      {
        v38 = *v33;
        v39 = v33[1];
        while (v38 != v39)
        {
          LODWORD(v40) = HIDWORD(*v38);
          if (COERCE_FLOAT(*v38) != -1.0 && v40 != -1.0)
          {
            *&v42 = v35 * COERCE_FLOAT(*v38);
            v43 = v36 * v40;
            *(&v42 + 1) = v43;
            [ABPKImagePreProcessingParams convert2DPoint:v11 toInputSpaceWithParams:v42];
            *v38 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v44), v80));
          }

          ++v38;
        }

        v33 += 15;
      }

      while (v33 != v34);
    }

    [(NSMutableArray *)self->_trackedBodies removeAllObjects];
    if (self->_abpkPersonIDTrackerSupportedOnDevice)
    {
      v45 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = [v10 inputImageData];
        Width = CVPixelBufferGetWidth([v46 pixelBuffer]);
        v48 = [v10 inputImageData];
        Height = CVPixelBufferGetHeight([v48 pixelBuffer]);
        *v87 = 134218240;
        *&v87[4] = Width;
        v88 = 2048;
        v89 = Height;
        _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_DEBUG, " \t Running ANSTTracker on image with resolution: (w,h)=(%lu,%lu) ", v87, 0x16u);
      }

      abpkPersonIDTracker = self->_abpkPersonIDTracker;
      v51 = [v10 imageDataForNeuralNetwork];
      v52 = -[ABPKPersonIDTracker runWithInput:atTimeStamp:andOutput:](abpkPersonIDTracker, "runWithInput:atTimeStamp:andOutput:", [v51 pixelBuffer], self->_trackedBodies, a5) == 0;

      if (v52)
      {
        v53 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *v87 = 0;
          _os_log_impl(&dword_23EDDC000, v53, OS_LOG_TYPE_DEBUG, " \t _abpkPersonIDTracker ran successfully ", v87, 2u);
        }
      }

      v54 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v55 = [(NSMutableArray *)self->_trackedBodies count];
        *v87 = 134217984;
        *&v87[4] = v55;
        _os_log_impl(&dword_23EDDC000, v54, OS_LOG_TYPE_DEBUG, " \t _trackedBodies count: %lu ", v87, 0xCu);
      }
    }

    else
    {
      v52 = 0;
    }

    [(ABPK2DDetectionPostprocessHeatmap *)self _startExtrapolationSignpostWithTimestamp:a5];
    v64 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *v87 = 0;
      _os_log_impl(&dword_23EDDC000, v64, OS_LOG_TYPE_DEBUG, " \t Performing extrapolation ", v87, 2u);
    }

    if (v52 && [(NSMutableArray *)self->_trackedBodies count])
    {
      extrapolationFiltering = self->_extrapolationFiltering;
      v83 = *v90;
      v84 = v91;
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      v66 = &v83;
      v67 = [(ABPK2DExtrapolationFiltering *)extrapolationFiltering performExtrapolationOnHumans:&v83 withImageResolution:v77 atTimestamp:v78 rotationNeeded:self->_trackedBodies previousSkeleton3D:v74 personTracker:v75, a5];
    }

    else
    {
      v68 = self->_extrapolationFiltering;
      v81 = *v90;
      v82 = v91;
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      v66 = &v81;
      v67 = [(ABPK2DExtrapolationFiltering *)v68 performExtrapolationOnHumans:&v81 withImageResolution:v77 atTimestamp:v78 rotationNeeded:v74 previousSkeleton3D:v75, a5];
    }

    v69 = v67;
    *v87 = v66;
    std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v87);
    [(ABPK2DDetectionPostprocessHeatmap *)self _endExtrapolationSignpostWithTimestamp:a5];
    [(ABPK2DDetectionPostprocessHeatmap *)self _endExtract2DSkeletonSignpostWithTimestamp:a5];
    if (!v69)
    {
      v71 = 0;
      goto LABEL_70;
    }

    v70 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *v87 = 0;
      _os_log_impl(&dword_23EDDC000, v70, OS_LOG_TYPE_ERROR, " 2D Extrapolation failed ", v87, 2u);
    }

    goto LABEL_68;
  }

  if (self->_humansDetected)
  {
    v56 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *v87 = 0;
      _os_log_impl(&dword_23EDDC000, v56, OS_LOG_TYPE_DEBUG, " No humans detected in the image ", v87, 2u);
    }

LABEL_68:
    self->_humansDetected = 0;
  }

LABEL_69:
  v71 = -6661;
LABEL_70:
  *v87 = v90;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v87);
  *v90 = buf;
  std::vector<abpk::HeatmapPersonData>::__destroy_vector::operator()[abi:ne200100](v90);

  v72 = *MEMORY[0x277D85DE8];
  return v71;
}

- (void)getRawTrackedHumanSkeleton:(id)a3
{
  v6 = a3;
  v4 = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHuman];
  v5 = *v4;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [v6 setNormalizedKeypoints2d:v5 withImageRes:?];
  [v6 setJointVisibility:v4[3]];
  [v6 setJointConfidences:v4[6]];
  [v6 setHasMissingJoints:v4[13] < ((v4[1] - *v4) >> 3)];
}

- (void)getRawTrackedHumanSkeletonVector:(id)a3
{
  v9 = a3;
  v4 = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHumanVector];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
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
      [v9 addObject:v7];

      v5 += 15;
    }

    while (v5 != v6);
  }
}

- (void)getTrackedHumanSkeleton:(id)a3
{
  v6 = a3;
  v4 = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHuman];
  v5 = *v4;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [v6 setNormalizedKeypoints2d:v5 withImageRes:?];
  [v6 setJointVisibility:v4[3]];
  [v6 setJointConfidences:v4[6]];
  [v6 setHasMissingJoints:v4[13] < ((v4[1] - *v4) >> 3)];
}

- (void)getTrackedHumanForLiftingSkeleton:(id)a3
{
  v6 = a3;
  v4 = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHumanForLifting];
  v5 = *v4;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [v6 setNormalizedKeypoints2d:v5 withImageRes:?];
  [v6 setJointVisibility:v4[3]];
  [v6 setJointConfidences:v4[6]];
  [v6 setHasMissingJoints:v4[13] < ((v4[1] - *v4) >> 3)];
}

- (void)getRawTrackedHumanForLiftingSkeleton:(id)a3
{
  v6 = a3;
  v4 = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHuman];
  v5 = *v4;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [v6 setNormalizedKeypoints2d:v5 withImageRes:?];
  [v6 setJointVisibility:v4[3]];
  [v6 setJointConfidences:v4[6]];
}

- (id)get2DDetectionResultforRotation:(int64_t)a3 croppedRect:(CGRect)a4
{
  v6 = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHuman];
  v7 = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHumanForLifting];
  if (v7[13] >= ((v7[1] - *v7) >> 3))
  {
    v8 = [[ABPK2D3DLiftingData alloc] initWithHumanForLifting:v7 imageSize:a3 rotation:1000.0 croppedRect:1000.0, 0.0, 0.0, 1.0, 1.0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [ABPK2DDetectionResult alloc];
  v10 = *abpk::Human::jointVector(v6);
  v11 = v6[3];
  v14 = v6;
  v12 = *v6;
  v13 = v14[1];
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  v15 = [ABPK2DDetectionResult initWithJoints:v9 trackingStates:"initWithJoints:trackingStates:numberOfJoints:imageResolution:rotation:croppedRect:liftingData:" numberOfJoints:v10 imageResolution:v11 rotation:(v13 - v12) >> 3 croppedRect:a3 liftingData:v8];

  return v15;
}

- (id)getRaw2DDetectionResultforRotation:(int64_t)a3 croppedRect:(CGRect)a4
{
  v6 = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHuman];
  v7 = [[ABPK2D3DLiftingData alloc] initWithHumanForLifting:v6 imageSize:a3 rotation:1000.0 croppedRect:1000.0, 0.0, 0.0, 1.0, 1.0];
  v8 = [ABPK2DDetectionResult alloc];
  v9 = *abpk::Human::jointVector(v6);
  v10 = v6[3];
  v13 = v6;
  v11 = *v6;
  v12 = v13[1];
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  v14 = [ABPK2DDetectionResult initWithJoints:v8 trackingStates:"initWithJoints:trackingStates:numberOfJoints:imageResolution:rotation:croppedRect:liftingData:" numberOfJoints:v9 imageResolution:v10 rotation:(v12 - v11) >> 3 croppedRect:a3 liftingData:v7];

  return v14;
}

@end