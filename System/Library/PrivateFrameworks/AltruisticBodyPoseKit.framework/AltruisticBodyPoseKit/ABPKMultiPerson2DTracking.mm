@interface ABPKMultiPerson2DTracking
- (ABPKMultiPerson2DTracking)init;
- (BOOL)overlayResult:(id)a3 OnImage:(__CVBuffer *)a4 andGenerateOverlayImage:(__CVBuffer *)a5;
- (BOOL)overlayTrackedBodiesOnImage:(__CVBuffer *)a3 andGenerateOverlayImage:(__CVBuffer *)a4;
- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)a3 withImageRes:(CGSize)a4;
- (int)runPoseEstimationWithInput:(__CVBuffer *)a3 abpkDeviceOrientation:(int64_t)a4 atTimeStamp:(double)a5 andOutput:(id)a6;
- (int)runWithInput:(__CVBuffer *)a3 abpkDeviceOrientation:(int64_t)a4 atTimeStamp:(double)a5 andOutput:(id)a6;
@end

@implementation ABPKMultiPerson2DTracking

- (ABPKMultiPerson2DTracking)init
{
  [(ABPKMultiPerson2DTracking *)self _startInitABPKSignpost];
  v19.receiver = self;
  v19.super_class = ABPKMultiPerson2DTracking;
  v3 = [(ABPKMultiPerson2DTracking *)&v19 init];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(ABPKPersonIDTracker);
  abpkPersonIDTracker = v3->_abpkPersonIDTracker;
  v3->_abpkPersonIDTracker = v4;

  if (!v3->_abpkPersonIDTracker)
  {
    v15 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *v18 = 0;
    v16 = " Failed to initialize ABPK Person ID Tracker ";
LABEL_13:
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, v16, v18, 2u);
    goto LABEL_14;
  }

  v6 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:10];
  config2D = v3->_config2D;
  v3->_config2D = v6;

  if (!v3->_config2D)
  {
    v15 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *v18 = 0;
    v16 = " Failed to initialize config for 2D Detection module ";
    goto LABEL_13;
  }

  v8 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:v3->_config2D use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
  poseEstimation2D = v3->_poseEstimation2D;
  v3->_poseEstimation2D = v8;

  if (!v3->_poseEstimation2D)
  {
    v15 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      v16 = " Failed to initialize 2D Pose Estimation Algorithm. ";
      goto LABEL_13;
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  previousMultiPerson2DResult = v3->_previousMultiPerson2DResult;
  v3->_previousMultiPerson2DResult = v10;

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  trackedBodies = v3->_trackedBodies;
  v3->_trackedBodies = v12;

  v3->_lastTrackingId = -1;
LABEL_6:
  [(ABPKMultiPerson2DTracking *)v3 _endInitABPKSignpost];
  v14 = v3;
LABEL_15:

  return v14;
}

- (int)runWithInput:(__CVBuffer *)a3 abpkDeviceOrientation:(int64_t)a4 atTimeStamp:(double)a5 andOutput:(id)a6
{
  v147 = *MEMORY[0x277D85DE8];
  v127 = a6;
  [(ABPKMultiPerson2DTracking *)self _startMultiPerson2DTrackingRunWithInputSignpostWithTimestamp:a5];
  [(NSMutableArray *)self->_trackedBodies removeAllObjects];
  [(ABPKPersonIDTracker *)self->_abpkPersonIDTracker runWithInput:a3 atTimeStamp:self->_trackedBodies andOutput:a5];
  v130 = self;
  if ([(NSMutableArray *)self->_trackedBodies count])
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " Found full bodies in the image ", buf, 2u);
    }

    for (i = 0; [(NSMutableArray *)v130->_trackedBodies count]> i; ++i)
    {
      v12 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:i];
        v14 = [v13 objectID];
        *buf = 134217984;
        *&buf[4] = v14;
        _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Person Tracking Id: %lu ", buf, 0xCu);
      }

      v15 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:i];
      [v15 boundingBox];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        v143 = 2048;
        v144 = v23;
        v145 = 2048;
        v146 = v21;
        _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " Bounding Box: (%f,%f,%f,%f ", buf, 0x2Au);
      }
    }
  }

  v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v126 = [(ABPKMultiPerson2DTracking *)v130 runPoseEstimationWithInput:a3 abpkDeviceOrientation:a4 atTimeStamp:a5 andOutput:?];
  v25 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v129 count];
    *buf = 134217984;
    *&buf[4] = v26;
    _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " Humans detected: %lu ", buf, 0xCu);
  }

  v27 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_DEBUG, " ANST Bounding boxes ", buf, 2u);
  }

  for (j = 0; [(NSMutableArray *)v130->_trackedBodies count]> j; ++j)
  {
    v29 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = j;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " Person: %d ", buf, 8u);
    }

    v30 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:j];
    [v30 boundingBox];
    printCGRect(v31, v32, v33, v34);
  }

  v35 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " 2d Skeleton Bounding boxes ", buf, 2u);
  }

  for (k = 0; [v129 count] > k; ++k)
  {
    v37 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = k;
      _os_log_impl(&dword_23EDDC000, v37, OS_LOG_TYPE_DEBUG, " Person: %d ", buf, 8u);
    }

    v38 = [v129 objectAtIndexedSubscript:k];
    [v38 boundingBox];
    printCGRect(v39, v40, v41, v42);
  }

  [(ABPKMultiPerson2DTracking *)v130 _startMultiPerson2DTrackingPersonTrackingSignpostWithTimestamp:a5];
  v43 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_DEBUG, " Computing tracking ids ", buf, 2u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](buf, [v129 count]);
  *&v44 = 0.0;
  __src = 0;
  v135 = 0;
  v136 = 0;
  while (v44 < [v129 count])
  {
    v45 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *v138 = 134217984;
      v139 = *&v44;
      _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_DEBUG, " Finding tracking id for skeleton: %lu ", v138, 0xCu);
    }

    *&v46 = 0.0;
    *&v47 = NAN;
    v48 = -10000.0;
    while (v46 < [(NSMutableArray *)v130->_trackedBodies count])
    {
      v49 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:v46];
        v51 = [v50 objectID];
        *v138 = 134218240;
        v139 = *&v46;
        v140 = 2048;
        v141 = v51;
        _os_log_impl(&dword_23EDDC000, v49, OS_LOG_TYPE_DEBUG, " \t Comparing with ANST tracked body %lu with objec-id: %lu ", v138, 0x16u);
      }

      __p = 0;
      v132 = 0;
      v133 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v135, (v135 - __src) >> 3);
      v52 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:v46];
      v53 = [v52 objectID];
      if (v132 == __p)
      {
        v56 = 0;
      }

      else
      {
        v54 = (v132 - __p) >> 3;
        if (v54 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = (v132 - __p) >> 3;
        }

        if (*__p == v53)
        {
          v56 = 1;
        }

        else
        {
          v57 = 1;
          do
          {
            v58 = v57;
            if (v55 == v57)
            {
              break;
            }

            v59 = *(__p + v57++);
          }

          while (v59 != v53);
          v56 = v58 < v54;
        }
      }

      if (__p)
      {
        v132 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v60 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *v138 = 0;
          _os_log_impl(&dword_23EDDC000, v60, OS_LOG_TYPE_DEBUG, " \t Skipping. Tracking id already assigned ", v138, 2u);
        }

        goto LABEL_57;
      }

      v61 = [v129 objectAtIndexedSubscript:v44];
      [v61 boundingBox];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v70 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:v46];
      [v70 boundingBox];
      v75 = computeIOUbetweenRects(v63, v65, v67, v69, v71, v72, v73, v74);

      v76 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        *v138 = 134217984;
        v139 = v75;
        _os_log_impl(&dword_23EDDC000, v76, OS_LOG_TYPE_DEBUG, " \t\t iou: %f ", v138, 0xCu);
      }

      if (v75 > v48)
      {
        v60 = [(NSMutableArray *)v130->_trackedBodies objectAtIndexedSubscript:v46];
        *&v47 = COERCE_DOUBLE([v60 objectID]);
        v48 = v75;
LABEL_57:
      }

      ++v46;
    }

    v77 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *v138 = 134217984;
      v139 = v48;
      _os_log_impl(&dword_23EDDC000, v77, OS_LOG_TYPE_DEBUG, " \t Maximum IOU: %f ", v138, 0xCu);
    }

    if (v48 >= 0.0)
    {
      v79 = v130;
      if (*&v47 == NAN)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v78 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        *v138 = 0;
        _os_log_impl(&dword_23EDDC000, v78, OS_LOG_TYPE_DEBUG, " IOU is lower than threshold. No closest human found from the previous frame. Assigning new tracking id ", v138, 2u);
      }

      v79 = v130;
LABEL_66:
      v47 = v79->_lastTrackingId + 1;
      v79->_lastTrackingId = v47;
    }

    *(*buf + 8 * v44) = *&v47;
    v80 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      *v138 = 134217984;
      v139 = *&v47;
      _os_log_impl(&dword_23EDDC000, v80, OS_LOG_TYPE_DEBUG, " \t Tracking id: %lu ", v138, 0xCu);
    }

    v81 = v135;
    if (v135 >= v136)
    {
      v83 = __src;
      v84 = v135 - __src;
      v85 = (v135 - __src) >> 3;
      v86 = v85 + 1;
      if ((v85 + 1) >> 61)
      {
        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
      }

      v87 = v136 - __src;
      if ((v136 - __src) >> 2 > v86)
      {
        v86 = v87 >> 2;
      }

      v88 = v87 >= 0x7FFFFFFFFFFFFFF8;
      v89 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v88)
      {
        v89 = v86;
      }

      if (v89)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v89);
      }

      *(8 * v85) = *&v47;
      v82 = (8 * v85 + 8);
      memcpy(0, v83, v84);
      v90 = __src;
      __src = 0;
      v135 = v82;
      v136 = 0;
      if (v90)
      {
        operator delete(v90);
      }
    }

    else
    {
      *v135 = *&v47;
      v82 = v81 + 8;
    }

    v135 = v82;
    v91 = [v129 objectAtIndexedSubscript:v44];
    v92 = [v91 skeletonDefinition];
    v93 = [v92 jointCount];

    v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v93)
    {
      for (m = 0; m != v93; ++m)
      {
        v98 = [v129 objectAtIndexedSubscript:v44];
        v128 = *([v98 keypoints2d] + 8 * m);

        v99 = [v129 objectAtIndexedSubscript:v44];
        v100 = *([v99 confidences] + 4 * m);

        v101 = [v129 objectAtIndexedSubscript:v44];
        v102 = *([v101 visibility] + 4 * m);

        v103 = [MEMORY[0x277CCABB0] numberWithFloat:v128];
        v137[0] = v103;
        HIDWORD(v104) = HIDWORD(v128);
        LODWORD(v104) = HIDWORD(v128);
        v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
        v137[1] = v105;
        v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
        [v94 addObject:v106];

        LODWORD(v107) = v100;
        v108 = [MEMORY[0x277CCABB0] numberWithFloat:v107];
        [v95 addObject:v108];

        v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v102];
        [v96 addObject:v109];
      }
    }

    ++v44;
  }

  [(ABPKMultiPerson2DTracking *)v130 _endMultiPerson2DTrackingPersonTrackingSignpostWithTimestamp:a5];
  v110 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
  {
    *v138 = 0;
    _os_log_impl(&dword_23EDDC000, v110, OS_LOG_TYPE_DEBUG, " Creating result ", v138, 2u);
  }

  if (v126)
  {
    v111 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *v138 = 0;
      _os_log_impl(&dword_23EDDC000, v111, OS_LOG_TYPE_ERROR, " Pose not valid. Skipping ", v138, 2u);
    }

    previousMultiPerson2DResult = v130->_previousMultiPerson2DResult;
    v130->_previousMultiPerson2DResult = 0;

    v113 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      *&v114 = COERCE_DOUBLE([(NSMutableArray *)v130->_previousMultiPerson2DResult count]);
      *v138 = 134217984;
      v139 = *&v114;
      _os_log_impl(&dword_23EDDC000, v113, OS_LOG_TYPE_DEBUG, " _previousMultiPerson2DResult count: %lu ", v138, 0xCu);
    }

    v115 = -6661;
  }

  else
  {
    for (n = 0; n < [v129 count]; ++n)
    {
      v117 = [v129 objectAtIndexedSubscript:n];
      v118 = *(*buf + 8 * n);
      v119 = objc_alloc_init(ABPKSinglePerson2DResult);
      [(ABPKSinglePerson2DResult *)v119 set2dSkeleton:v117 isPoseValid:1 trackingId:v118];
      [v127 addObject:v119];
    }

    v120 = [v127 mutableCopy];
    v121 = v130->_previousMultiPerson2DResult;
    v130->_previousMultiPerson2DResult = v120;

    v122 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      *&v123 = COERCE_DOUBLE([(NSMutableArray *)v130->_previousMultiPerson2DResult count]);
      *v138 = 134217984;
      v139 = *&v123;
      _os_log_impl(&dword_23EDDC000, v122, OS_LOG_TYPE_DEBUG, " _previousMultiPerson2DResult count: %lu ", v138, 0xCu);
    }

    [(ABPKMultiPerson2DTracking *)v130 _endMultiPerson2DTrackingRunWithInputSignpostWithTimestamp:a5];
    v115 = 0;
  }

  if (__src)
  {
    v135 = __src;
    operator delete(__src);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v124 = *MEMORY[0x277D85DE8];
  return v115;
}

- (int)runPoseEstimationWithInput:(__CVBuffer *)a3 abpkDeviceOrientation:(int64_t)a4 atTimeStamp:(double)a5 andOutput:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a6;
  [(ABPKMultiPerson2DTracking *)self _startMultiPerson2DTrackingImagePreProcessingSignpostWithTimestamp:a5];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
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

  if ([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]!= a4)
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = convertABPKDeviceOrientationEnumToString([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]);
      convertABPKDeviceOrientationEnumToString(a4);
      v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      *&buf[4] = v17;
      v43 = 2112;
      v44 = v18;
      _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Device orientation changed from %@ to %@ ", buf, 0x16u);
    }

    [(ABPK2DDetectionConfiguration *)self->_config2D setAbpkDeviceOrientation:a4];
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
      v32 = [(ABPKImagePreProcessing *)v25 preprocessData:a3 outputBuffer:*buf];
      [(ABPKImagePreProcessing *)v25 logProfilingDetails];
      if (!v32)
      {
        [(ABPKMultiPerson2DTracking *)self _endMultiPerson2DTrackingImagePreProcessingSignpostWithTimestamp:a5];
        [(ABPKMultiPerson2DTracking *)self _startMultiPerson2DTracking2DDetectionMLSignpostWithTimestamp:a5];
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
        v28 = [(ABPKMLImageData *)v37 initWithPixelBuffer:*buf timestamp:a4 abpkDeviceOrientation:v24 preprocessingParameters:a5];
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
          [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeletonVector:v10];
          CVPixelBufferRelease(*buf);
          [(ABPKMultiPerson2DTracking *)self _endMultiPerson2DTracking2DDetectionPostProcessingSignpostWithTimestamp:a5];
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

- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)a3 withImageRes:(CGSize)a4
{
  width = a3.size.width;
  v5 = a4.width * 0.5 - (a3.origin.y - a4.width * 0.5);
  v6 = a4.height * 0.5 + a3.origin.x - a4.height * 0.5;
  v7 = v5 - a3.size.height;
  height = a3.size.height;
  v9 = width;
  result.size.height = v9;
  result.size.width = height;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (BOOL)overlayTrackedBodiesOnImage:(__CVBuffer *)a3 andGenerateOverlayImage:(__CVBuffer *)a4
{
  v47[1] = *MEMORY[0x277D85DE8];
  *buf = xmmword_23EE281B0;
  *&buf[16] = xmmword_23EE281C0;
  *&v7 = 255;
  *(&v7 + 1) = 255;
  v37 = xmmword_23EE281D0;
  v38 = v7;
  v39 = xmmword_23EE281E0;
  v40 = xmmword_23EE281F0;
  *&v8 = 0xFF000000FFLL;
  *(&v8 + 1) = 0xFF000000FFLL;
  v41 = v8;
  v42 = 0u;
  v43 = xmmword_23EE28200;
  v44 = xmmword_23EE28210;
  v45 = xmmword_23EE28220;
  v46 = xmmword_23EE28230;
  v34 = 0;
  v35 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, v47, 0xCuLL);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v11 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = Height;
    *&buf[12] = 2048;
    *&buf[14] = Width;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " \x10overlayTrackedBodiesOnImage inputimage res: (h,w) = (%lu,%lu) ", buf, 0x16u);
  }

  v12 = 0;
  *&v13 = 134217984;
  v31 = v13;
  while (v12 < [(NSMutableArray *)self->_trackedBodies count])
  {
    v14 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(NSMutableArray *)self->_trackedBodies objectAtIndexedSubscript:v12];
      v16 = [v15 objectID];
      *buf = v31;
      *&buf[4] = v16;
      _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Tracked Body with iD: %lu ", buf, 0xCu);
    }

    v17 = [(NSMutableArray *)self->_trackedBodies objectAtIndexedSubscript:v12];
    v18 = [v17 objectID];
    v32 = *(__p + v18 % ((v34 - __p) >> 4));

    v19 = [(NSMutableArray *)self->_trackedBodies objectAtIndexedSubscript:v12];
    [v19 boundingBox];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (v12)
    {
      v28 = a4;
    }

    else
    {
      v28 = a3;
    }

    overlay2dBoundingBox(v28, a4, v21, v23, v25, v27, *&v32);
    ++v12;
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)overlayResult:(id)a3 OnImage:(__CVBuffer *)a4 andGenerateOverlayImage:(__CVBuffer *)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  *buf = xmmword_23EE281B0;
  v23 = xmmword_23EE281C0;
  *&v8 = 255;
  *(&v8 + 1) = 255;
  v24 = xmmword_23EE281D0;
  v25 = v8;
  v26 = xmmword_23EE281E0;
  v27 = xmmword_23EE281F0;
  *&v9 = 0xFF000000FFLL;
  *(&v9 + 1) = 0xFF000000FFLL;
  v28 = v9;
  v29 = 0u;
  v30 = xmmword_23EE28200;
  v31 = xmmword_23EE28210;
  v32 = xmmword_23EE28220;
  v33 = xmmword_23EE28230;
  v20 = 0;
  v21 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, v34, 0xCuLL);
  v10 = 0;
  *&v11 = 134217984;
  v18 = v11;
  while (v10 < [v7 count])
  {
    v12 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = v18;
      *&buf[4] = v10;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Person: %lu ", buf, 0xCu);
    }

    v13 = [v7 objectAtIndexedSubscript:v10];
    v14 = [v13 trackingId];
    if (v10)
    {
      v15 = a5;
    }

    else
    {
      v15 = a4;
    }

    [v13 overlayResultOnImage:v15 withResult:a5 withColor:*(__p + 2 * (v14 % ((v20 - __p) >> 4)))];

    ++v10;
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

@end