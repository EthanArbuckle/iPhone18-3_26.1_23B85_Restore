@interface ABPKGestureDetectionPipeline
- (ABPKGestureDetectionPipeline)initWithFrequency:(unsigned int)frequency;
- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage;
- (int)runPoseEstimationWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output;
- (int)runWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output;
- (void)extractDataForJointIdx:(void *)idx@<X3> fromPoseTimeArray:(void *)array@<X8>;
@end

@implementation ABPKGestureDetectionPipeline

- (ABPKGestureDetectionPipeline)initWithFrequency:(unsigned int)frequency
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  [(ABPKGestureDetectionPipeline *)self _startInitABPKSignpost];
  if (frequency > 0x1E || ((1 << frequency) & 0x40000420) == 0)
  {
    v25 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      frequencyCopy = frequency;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_ERROR, " Failed to initialize Gesture Detection Pipeline. Unsupported Frequency: %d ", buf, 8u);
    }

    goto LABEL_29;
  }

  selfCopy->_fps = frequency;
  selfCopy->_maxPreviousPoses = 2 * frequency;
  selfCopy->_raisingMaxPreviousPoses = frequency / 3u + 1;
  selfCopy->_wavingMinPeriodicFrames = frequency / 3u + 1;
  selfCopy->_wavingAngleChangeLastFrames = ((139812 * ((5 * frequency) & 0x3FFFu)) >> 20) + 1;
  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " Gesture Detection Config parameters: ", buf, 2u);
  }

  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    fps = selfCopy->_fps;
    *buf = 67109120;
    frequencyCopy = fps;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " \t _fps: %d ", buf, 8u);
  }

  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    maxPreviousPoses = selfCopy->_maxPreviousPoses;
    *buf = 67109120;
    frequencyCopy = maxPreviousPoses;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " \t maxPreviousPoses: %d ", buf, 8u);
  }

  v10 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    raisingMaxPreviousPoses = selfCopy->_raisingMaxPreviousPoses;
    *buf = 67109120;
    frequencyCopy = raisingMaxPreviousPoses;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " \t raisingMaxPreviousPoses: %d, ", buf, 8u);
  }

  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    wavingMinPeriodicFrames = selfCopy->_wavingMinPeriodicFrames;
    *buf = 67109120;
    frequencyCopy = wavingMinPeriodicFrames;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " \t wavingMinPeriodicFrames: %d ", buf, 8u);
  }

  v14 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    wavingAngleChangeLastFrames = selfCopy->_wavingAngleChangeLastFrames;
    *buf = 67109120;
    frequencyCopy = wavingAngleChangeLastFrames;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " \t wavingAngleChangeLastFrames: %d ", buf, 8u);
  }

  v29.receiver = selfCopy;
  v29.super_class = ABPKGestureDetectionPipeline;
  selfCopy = [(ABPKGestureDetectionPipeline *)&v29 init];
  if (!selfCopy)
  {
    goto LABEL_19;
  }

  v16 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:0];
  config2D = selfCopy->_config2D;
  selfCopy->_config2D = v16;

  if (!selfCopy->_config2D)
  {
    v26 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " Failed to initialize config for 2D Detection module ", buf, 2u);
    }

    goto LABEL_28;
  }

  v18 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:selfCopy->_config2D use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
  poseEstimation2D = selfCopy->_poseEstimation2D;
  selfCopy->_poseEstimation2D = v18;

  if (!selfCopy->_poseEstimation2D)
  {
    v26 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " Failed to initialize 2D Pose Estimation Algorithm. ", buf, 2u);
    }

LABEL_28:

LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  joints2DBufferDict = selfCopy->_joints2DBufferDict;
  selfCopy->_joints2DBufferDict = v20;

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  previousGestureDetectionResult = selfCopy->_previousGestureDetectionResult;
  selfCopy->_previousGestureDetectionResult = v22;

  selfCopy->_lastTrackingId = -1;
LABEL_19:
  [(ABPKGestureDetectionPipeline *)selfCopy _endInitABPKSignpost];
  selfCopy = selfCopy;
  v24 = selfCopy;
LABEL_30:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

- (int)runWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output
{
  v126 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  [(ABPKGestureDetectionPipeline *)self _startGestureDetectionRunWithInputSignpostWithTimestamp:stamp];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v107 = [(ABPKGestureDetectionPipeline *)self runPoseEstimationWithInput:input abpkDeviceOrientation:orientation atTimeStamp:v10 andOutput:stamp];
  v11 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = [v10 count];
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " Humans detected: %lu ", buf, 0xCu);
  }

  v113 = v10;

  [(ABPKGestureDetectionPipeline *)self _startGestureDetectionPersonTrackingSignpostWithTimestamp:stamp];
  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Computing tracking ids ", buf, 2u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](buf, [v10 count]);
  __src = 0;
  v118 = 0;
  v119 = 0;
  if ([(NSMutableArray *)self->_previousGestureDetectionResult count])
  {
    *&v13 = 0.0;
    while (1)
    {
      if (v13 >= [v10 count])
      {
        goto LABEL_71;
      }

      v14 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v121 = 134217984;
        v122 = *&v13;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " Finding tracking for current skeleton: %lu ", v121, 0xCu);
      }

      *&v15 = 0.0;
      trackingId3 = -1000;
      v16 = 10000.0;
      while (v15 < [(NSMutableArray *)self->_previousGestureDetectionResult count])
      {
        v17 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:v15];
          trackingId = [v18 trackingId];
          *v121 = 134218240;
          v122 = *&v15;
          v123 = 1024;
          v124 = trackingId;
          _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " \t Comparing with previous skeleton %lu with tracking_id: %u ", v121, 0x12u);
        }

        __p = 0;
        v115 = 0;
        v116 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v118, (v118 - __src) >> 3);
        v20 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:v15];
        trackingId2 = [v20 trackingId];
        if (v115 == __p)
        {
          v24 = 0;
        }

        else
        {
          v22 = (v115 - __p) >> 3;
          if (v22 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = (v115 - __p) >> 3;
          }

          if (*__p == trackingId2)
          {
            v24 = 1;
          }

          else
          {
            v25 = 1;
            do
            {
              v26 = v25;
              if (v23 == v25)
              {
                break;
              }

              v27 = *(__p + v25++);
            }

            while (v27 != trackingId2);
            v24 = v26 < v22;
          }
        }

        if (__p)
        {
          v115 = __p;
          operator delete(__p);
        }

        if (v24)
        {
          v28 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *v121 = 0;
            _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, " \t Skipping. Tracking id already assigned ", v121, 2u);
          }

          goto LABEL_38;
        }

        v29 = [v113 objectAtIndexedSubscript:v13];
        keypoints2d = [v29 keypoints2d];
        v31 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:v15];
        skeleton2D = [v31 skeleton2D];
        keypoints2d2 = [skeleton2D keypoints2d];
        v34 = [v113 objectAtIndexedSubscript:v13];
        skeletonDefinition = [v34 skeletonDefinition];
        jointCount = [skeletonDefinition jointCount];
        for (i = 0.0; jointCount; --jointCount)
        {
          *v38.f32 = *keypoints2d;
          *&v38.u32[2] = *keypoints2d2;
          if ((vmaxv_u16(vmovn_s32(vcltzq_f32(v38))) & 1) == 0)
          {
            v39 = vsub_f32(*keypoints2d, *keypoints2d2);
            i = i + sqrtf(vaddv_f32(vmul_f32(v39, v39)));
          }

          ++keypoints2d2;
          ++keypoints2d;
        }

        v40 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *v121 = 134217984;
          v122 = i;
          _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_DEBUG, " \t\t distance: %f ", v121, 0xCu);
        }

        if (i < v16)
        {
          v28 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:v15];
          trackingId3 = [v28 trackingId];
          v16 = i;
LABEL_38:
        }

        ++v15;
      }

      v41 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *v121 = 134217984;
        v122 = v16;
        _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_DEBUG, " \t Minimum Distance: %f ", v121, 0xCu);
      }

      if (v16 <= 1500.0)
      {
        v43 = trackingId3;
        if (trackingId3 == -1000)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v42 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *v121 = 0;
          _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " Distance is higher than threshold. No closest human found from the previous frame. Assigning new tracking id ", v121, 2u);
        }

LABEL_47:
        v43 = self->_lastTrackingId + 1;
        self->_lastTrackingId = v43;
      }

      v110 = *&v43;
      *(*&buf[0] + 8 * v13) = v43;
      v44 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *v121 = 134217984;
        v122 = v110;
        _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_DEBUG, " \t Tracking id: %lu ", v121, 0xCu);
      }

      v45 = v118;
      if (v118 >= v119)
      {
        v47 = __src;
        v48 = v118 - __src;
        v49 = (v118 - __src) >> 3;
        v50 = v49 + 1;
        if ((v49 + 1) >> 61)
        {
          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
        }

        v51 = v119 - __src;
        if ((v119 - __src) >> 2 > v50)
        {
          v50 = v51 >> 2;
        }

        v52 = v51 >= 0x7FFFFFFFFFFFFFF8;
        v53 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v52)
        {
          v53 = v50;
        }

        if (v53)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v53);
        }

        *(8 * v49) = v110;
        v46 = (8 * v49 + 8);
        memcpy(0, v47, v48);
        v54 = __src;
        __src = 0;
        v118 = v46;
        v119 = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v118 = v110;
        v46 = v45 + 8;
      }

      v118 = v46;
      v55 = [v113 objectAtIndexedSubscript:v13];
      skeletonDefinition2 = [v55 skeletonDefinition];
      jointCount2 = [skeletonDefinition2 jointCount];

      v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (jointCount2)
      {
        for (j = 0; j != jointCount2; ++j)
        {
          v61 = [v113 objectAtIndexedSubscript:v13];
          v112 = *([v61 keypoints2d] + 8 * j);

          v62 = [v113 objectAtIndexedSubscript:v13];
          v63 = *([v62 confidences] + 4 * j);

          v64 = [v113 objectAtIndexedSubscript:v13];
          v65 = *([v64 visibility] + 4 * j);

          v66 = [MEMORY[0x277CCABB0] numberWithFloat:v112];
          v120[0] = v66;
          HIDWORD(v67) = HIDWORD(v112);
          LODWORD(v67) = HIDWORD(v112);
          v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
          v120[1] = v68;
          v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
          [v111 addObject:v69];

          LODWORD(v70) = v63;
          v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
          [v58 addObject:v71];

          v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v65];
          [v59 addObject:v72];
        }
      }

      v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *&v110];
      v74 = [(NSMutableDictionary *)self->_joints2DBufferDict objectForKeyedSubscript:v73];
      v75 = v74 == 0;

      if (v75)
      {
        joints2DBufferDict = self->_joints2DBufferDict;
        v77 = [[ABPKCircularArray alloc] initWithCapacity:self->_maxPreviousPoses];
        [(NSMutableDictionary *)joints2DBufferDict setValue:v77 forKey:v73];
      }

      v78 = [(NSMutableDictionary *)self->_joints2DBufferDict objectForKeyedSubscript:v73];
      [v78 add:v111];

      ++v13;
      v10 = v113;
    }
  }

  for (k = 0; k < [v10 count]; ++k)
  {
    *(*&buf[0] + 8 * k) = self->_lastTrackingId + 1;
    v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", k];
    v81 = self->_joints2DBufferDict;
    v82 = [[ABPKCircularArray alloc] initWithCapacity:self->_maxPreviousPoses];
    [(NSMutableDictionary *)v81 setValue:v82 forKey:v80];

    v10 = v113;
  }

  self->_lastTrackingId += [v10 count];
LABEL_71:
  [(ABPKGestureDetectionPipeline *)self _endGestureDetectionPersonTrackingSignpostWithTimestamp:stamp];
  [(ABPKGestureDetectionPipeline *)self _startGestureDetectionAlgorithmSignpostWithTimestamp:stamp];
  if (v107)
  {
    v83 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *v121 = 0;
      _os_log_impl(&dword_23EDDC000, v83, OS_LOG_TYPE_ERROR, " Pose not valid. Skipping ", v121, 2u);
    }

    previousGestureDetectionResult = self->_previousGestureDetectionResult;
    self->_previousGestureDetectionResult = 0;

    v85 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      *&v86 = COERCE_DOUBLE([(NSMutableArray *)self->_previousGestureDetectionResult count]);
      *v121 = 134217984;
      v122 = *&v86;
      _os_log_impl(&dword_23EDDC000, v85, OS_LOG_TYPE_DEBUG, " _previousGestureDetectionResult count: %lu ", v121, 0xCu);
    }

    allKeys = [(NSMutableDictionary *)self->_joints2DBufferDict allKeys];
    for (m = 0; [allKeys count] > m; ++m)
    {
      v89 = self->_joints2DBufferDict;
      v90 = [allKeys objectAtIndexedSubscript:m];
      [(NSMutableDictionary *)v89 removeObjectForKey:v90];
    }

    v91 = -6661;
    v92 = v113;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v94 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *v121 = 0;
      _os_log_impl(&dword_23EDDC000, v94, OS_LOG_TYPE_ERROR, " Pose valid. Running the gesture detection pipeline ", v121, 2u);
    }

    for (n = 0; n < [v113 count]; ++n)
    {
      v96 = objc_alloc_init(ABPKGestureDetectionResult);
      v97 = *(*&buf[0] + 8 * n);
      v98 = [v113 objectAtIndexedSubscript:n];
      [(ABPKGestureDetectionPipeline *)self runGestureDetection:v98 withTrackingId:v97 andResult:v96];

      [outputCopy addObject:v96];
    }

    v99 = [outputCopy mutableCopy];
    v100 = self->_previousGestureDetectionResult;
    self->_previousGestureDetectionResult = v99;

    v101 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      *&v102 = COERCE_DOUBLE([(NSMutableArray *)self->_previousGestureDetectionResult count]);
      *v121 = 134217984;
      v122 = *&v102;
      _os_log_impl(&dword_23EDDC000, v101, OS_LOG_TYPE_DEBUG, " _previousGestureDetectionResult count: %lu ", v121, 0xCu);
    }

    v103 = CFAbsoluteTimeGetCurrent();
    v104 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      *v121 = 134217984;
      v122 = v103 - Current;
      _os_log_impl(&dword_23EDDC000, v104, OS_LOG_TYPE_DEBUG, " timeGestureDetection: %f ", v121, 0xCu);
    }

    v92 = v113;
    [(ABPKGestureDetectionPipeline *)self _endGestureDetectionAlgorithmSignpostWithTimestamp:stamp];
    [(ABPKGestureDetectionPipeline *)self _endGestureDetectionRunWithInputSignpostWithTimestamp:stamp];
    v91 = 0;
  }

  if (__src)
  {
    v118 = __src;
    operator delete(__src);
  }

  if (*&buf[0])
  {
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
  }

  v105 = *MEMORY[0x277D85DE8];
  return v91;
}

- (int)runPoseEstimationWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output
{
  v45 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  [(ABPKGestureDetectionPipeline *)self _startGestureDetectionImagePreProcessingSignpostWithTimestamp:stamp];
  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  v13 = __ABPKLogSharedInstance();
  v14 = Width;
  v15 = Height;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = Height;
    v43 = 2048;
    v44 = Width;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Sensor image resolution: (height,width):(%f,%f) ", buf, 0x16u);
  }

  if ([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]!= orientation)
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = convertABPKDeviceOrientationEnumToString([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]);
      convertABPKDeviceOrientationEnumToString(orientation);
      v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      *&buf[4] = v17;
      v43 = 2112;
      v44 = v18;
      _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Device orientation changed from %@ to %@ ", buf, 0x16u);
    }

    [(ABPK2DDetectionConfiguration *)self->_config2D setAbpkDeviceOrientation:orientation];
  }

  [ABPK2DMLModelConfigSelector inputDimensionsForModelWithABPKNetworkConfig:self->_config2D];
  v20 = v19;
  v22 = v21;
  v23 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = v22;
    v43 = 2048;
    v44 = v20;
    _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " ML image resolution: (height,width):(%f,%f) ", buf, 0x16u);
  }

  v24 = [[ABPKImagePreProcessingParams alloc] initWithType:2 inputResolution:v14 outputResolution:v15, v20, v22];
  v25 = [[ABPKImagePreProcessing alloc] initWithPreProcessingParams:v24];
  if (v25)
  {
    *buf = 0;
    v26 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *v39 = 0;
      _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_DEBUG, " Image Preprocessing ", v39, 2u);
    }

    v40 = *MEMORY[0x277CC4DE8];
    v41 = MEMORY[0x277CBEC10];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v20, v22, 0x42475241u, v27, buf))
    {
      v28 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        v29 = " Could not create mlImage buffer of type kCVPixelFormatType_32BGRA ";
LABEL_21:
        _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_ERROR, v29, v39, 2u);
      }
    }

    else
    {
      v32 = [(ABPKImagePreProcessing *)v25 preprocessData:input outputBuffer:*buf];
      [(ABPKImagePreProcessing *)v25 logProfilingDetails];
      if (!v32)
      {
        [(ABPKGestureDetectionPipeline *)self _endGestureDetectionImagePreProcessingSignpostWithTimestamp:stamp];
        [(ABPKGestureDetectionPipeline *)self _startGestureDetection2DDetectionMLSignpostWithTimestamp:stamp];
        v35 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *v39 = 0;
          _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " Running 2d pose estimation ", v39, 2u);
        }

        v36 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *v39 = 0;
          _os_log_impl(&dword_23EDDC000, v36, OS_LOG_TYPE_DEBUG, " \t Running the ML model ", v39, 2u);
        }

        v37 = [ABPKMLImageData alloc];
        v28 = [(ABPKMLImageData *)v37 initWithPixelBuffer:*buf timestamp:orientation abpkDeviceOrientation:v24 preprocessingParameters:stamp];
        if ([(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v28 rotationOfResultTensor:0]== -6661)
        {
          v38 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *v39 = 0;
            _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_ERROR, " 2D Pose estimation failed. ", v39, 2u);
          }

          v31 = -6661;
        }

        else
        {
          [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeletonVector:outputCopy];
          CVPixelBufferRelease(*buf);
          [(ABPKGestureDetectionPipeline *)self _endGestureDetection2DDetectionPostProcessingSignpostWithTimestamp:stamp];
          v31 = 0;
        }

        goto LABEL_23;
      }

      v28 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        v29 = " Could not pre-process image ";
        goto LABEL_21;
      }
    }

    v31 = -6660;
LABEL_23:

    goto LABEL_24;
  }

  v30 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_ERROR, " Could not initialize imagePreprocessor ", buf, 2u);
  }

  v31 = -6660;
LABEL_24:

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)extractDataForJointIdx:(void *)idx@<X3> fromPoseTimeArray:(void *)array@<X8>
{
  idxCopy = idx;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(array, *(self + 56));
  if (*(self + 56))
  {
    v7 = 0;
    do
    {
      v8 = [idxCopy objectAtIndexedSubscript:v7];
      v9 = [v8 objectAtIndexedSubscript:a2];
      v10 = [v9 objectAtIndexedSubscript:0];
      [v10 floatValue];
      v17 = v11;
      v12 = [idxCopy objectAtIndexedSubscript:v7];
      v13 = [v12 objectAtIndexedSubscript:a2];
      v14 = [v13 objectAtIndexedSubscript:1];
      [v14 floatValue];
      v18 = __PAIR64__(v15, v17);

      *(*array + 8 * v7++) = v18;
    }

    while (v7 < *(self + 56));
  }
}

- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage
{
  v38[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  *buf = xmmword_23EE281B0;
  v27 = xmmword_23EE281C0;
  *&v8 = 255;
  *(&v8 + 1) = 255;
  v28 = xmmword_23EE281D0;
  v29 = v8;
  v30 = xmmword_23EE281E0;
  v31 = xmmword_23EE281F0;
  *&v9 = 0xFF000000FFLL;
  *(&v9 + 1) = 0xFF000000FFLL;
  v32 = v9;
  v33 = 0u;
  v34 = xmmword_23EE28200;
  v35 = xmmword_23EE28210;
  v36 = xmmword_23EE28220;
  v37 = xmmword_23EE28230;
  v24 = 0;
  v25 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, v38, 0xCuLL);
  v10 = 0;
  *&v11 = 134217984;
  v22 = v11;
  while (v10 < [resultCopy count])
  {
    v12 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = v22;
      *&buf[4] = v10;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Person: %lu ", buf, 0xCu);
    }

    v13 = [resultCopy objectAtIndexedSubscript:v10];
    gestureTypes = [v13 gestureTypes];
    v15 = [gestureTypes count];

    trackingId = [v13 trackingId];
    if (v15)
    {
      v17 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " Gesture detected ", buf, 2u);
      }

      *&v18 = 0xFF00000000;
    }

    else
    {
      v18 = *(__p + trackingId % ((v24 - __p) >> 4));
    }

    if (v10)
    {
      imageCopy = overlayImage;
    }

    else
    {
      imageCopy = image;
    }

    [v13 overlayResultOnImage:imageCopy withResult:overlayImage withColor:*&v18];

    ++v10;
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

@end