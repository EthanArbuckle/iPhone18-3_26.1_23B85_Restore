@interface ADMetricDepthExecutor
+ (id)defaults;
- (ADMetricDepthExecutor)init;
- (id)getIntermediates;
- (id)initForEspressoEngine:(unint64_t)engine;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)prepareForInputRoi:(CGRect)roi;
- (int64_t)prepareForInputRoi:(CGRect)roi engineType:(unint64_t)type;
- (uint64_t)executeWithPrimaryColor:(float32x4_t)color secondaryColor:(float32x4_t)secondaryColor pearl:(float32x4_t)pearl pointClouds:(float32x4_t)clouds primaryColorCalibration:(float32x4_t)calibration secondaryColorCalibration:(float32x4_t)colorCalibration pearlCalibration:(float32x4_t)pearlCalibration lidarCameraCalibration:(uint64_t)self0 primaryColorPose:(__CVBuffer *)self1 secondaryColorPose:(__CVBuffer *)self2 pearlPose:(uint64_t)self3 pointCloudPoses:(void *)self4 timestamp:(void *)self5 outputDepthMap:(void *)self6 outputUncertaintyMap:(id)self7 outputConfidenceMap:(id)self8 outputConfidenceLevels:(float32x4_t)self9 outputNormalsMap:(float32x4_t)normalsMap outputActiveDepthMaskMap:(float32x4_t)maskMap outputDepthCalibration:(float32x4_t)depthCalibration;
- (void)dealloc;
- (void)deallocInferenceBuffers;
- (void)writeMetricDepthToJPEG:(id)g timestamp:(double)timestamp preProcessedJasper:(__CVBuffer *)jasper preProcessedPearl:(__CVBuffer *)pearl preProcessedPrimaryColor:(__CVBuffer *)color rawConfOut:(__CVBuffer *)out rawDepthOut:(__CVBuffer *)depthOut;
@end

@implementation ADMetricDepthExecutor

- (id)getIntermediates
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  inferenceDescriptor = [(ADMetricDepthPipeline *)self->_pipeline inferenceDescriptor];
  primaryColorInput = [inferenceDescriptor primaryColorInput];
  v6 = [(ADExecutor *)self inferencePixelBufferForDescriptor:primaryColorInput inputUserBuffer:0];

  if (v6)
  {
    v36[0] = @"name";
    v36[1] = @"image";
    v37[0] = @"MD PreProcessed Color";
    v37[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [v3 addObject:v7];
  }

  secondaryColorInput = [inferenceDescriptor secondaryColorInput];
  v9 = [(ADExecutor *)self inferencePixelBufferForDescriptor:secondaryColorInput inputUserBuffer:0];

  if (v9)
  {
    v34[0] = @"name";
    v34[1] = @"image";
    v35[0] = @"MD PreProcessed Secondary Color";
    v35[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v3 addObject:v10];
  }

  itmPreProcessedPearl = self->_itmPreProcessedPearl;
  if (itmPreProcessedPearl)
  {
    v32[0] = @"name";
    v32[1] = @"image";
    v33[0] = @"MD PreProcessed pearl";
    v33[1] = itmPreProcessedPearl;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v3 addObject:v12];
  }

  depthOutput = [inferenceDescriptor depthOutput];
  v14 = [(ADExecutor *)self inferencePixelBufferForDescriptor:depthOutput inputUserBuffer:0];

  if (v14)
  {
    v30[0] = @"name";
    v30[1] = @"image";
    v31[0] = @"MD Unprocessed Depth";
    v31[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v3 addObject:v15];
  }

  confidenceOutput = [inferenceDescriptor confidenceOutput];
  v17 = [(ADExecutor *)self inferencePixelBufferForDescriptor:confidenceOutput inputUserBuffer:0];

  if (v17)
  {
    v28[0] = @"name";
    v28[1] = @"image";
    v29[0] = @"MD Unprocessed Conf";
    v29[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v3 addObject:v18];
  }

  aggregatedPrimaryPointCloud = self->_aggregatedPrimaryPointCloud;
  if (aggregatedPrimaryPointCloud)
  {
    v26[0] = @"name";
    v26[1] = @"pointcloud";
    v27[0] = @"MD aggregated point cloud";
    v27[1] = aggregatedPrimaryPointCloud;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v3 addObject:v20];
  }

  aggregatedSecondaryPointCloud = self->_aggregatedSecondaryPointCloud;
  if (aggregatedSecondaryPointCloud)
  {
    v24[0] = @"name";
    v24[1] = @"pointcloud";
    v25[0] = @"MD aggregated secondary point cloud";
    v25[1] = aggregatedSecondaryPointCloud;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v3 addObject:v22];
  }

  return v3;
}

- (void)dealloc
{
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metric depth executor deallocated", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "metric depth executor deallocated", buf, 2u);
  }

  [(ADMetricDepthExecutor *)self deallocInferenceBuffers];
  colorScalingSession = self->_colorScalingSession;
  if (colorScalingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorScalingSession);
    MEMORY[0x245CBFCB0]();
  }

  CVPixelBufferRelease(self->_itmPreProcessedPearlProjectedOnSecondary);
  self->_itmPreProcessedPearlProjectedOnSecondary = 0;
  v4.receiver = self;
  v4.super_class = ADMetricDepthExecutor;
  [(ADExecutor *)&v4 dealloc];
}

- (uint64_t)executeWithPrimaryColor:(float32x4_t)color secondaryColor:(float32x4_t)secondaryColor pearl:(float32x4_t)pearl pointClouds:(float32x4_t)clouds primaryColorCalibration:(float32x4_t)calibration secondaryColorCalibration:(float32x4_t)colorCalibration pearlCalibration:(float32x4_t)pearlCalibration lidarCameraCalibration:(uint64_t)self0 primaryColorPose:(__CVBuffer *)self1 secondaryColorPose:(__CVBuffer *)self2 pearlPose:(uint64_t)self3 pointCloudPoses:(void *)self4 timestamp:(void *)self5 outputDepthMap:(void *)self6 outputUncertaintyMap:(id)self7 outputConfidenceMap:(id)self8 outputConfidenceLevels:(float32x4_t)self9 outputNormalsMap:(float32x4_t)normalsMap outputActiveDepthMaskMap:(float32x4_t)maskMap outputDepthCalibration:(float32x4_t)depthCalibration
{
  v245[4] = *MEMORY[0x277D85DE8];
  posesCopy = poses;
  timestampCopy = timestamp;
  mapCopy = map;
  uncertaintyMapCopy = uncertaintyMap;
  confidenceMapCopy = confidenceMap;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  if ((*(selfCopy + 136) & 1) == 0)
  {
    Width = CVPixelBufferGetWidth(pose);
    execute = [selfCopy prepareForInputRoi:{0.0, 0.0, Width, CVPixelBufferGetHeight(pose)}];
    if (execute)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing executor", buf, 2u);
      }

      goto LABEL_109;
    }
  }

  if (*(selfCopy + 7))
  {
    executorParameters = [selfCopy executorParameters];
    logger = [executorParameters logger];

    v235 = logger;
    *&v205 = depthCalibration.i64[0];
    *&v204 = maskMap.i64[0];
    *&v203 = normalsMap.i64[0];
    *&v202 = levels.i64[0];
    v226 = a23;
    if ([logger enabled])
    {
      [logger logPixelBuffer:pose name:"inputColor" priority:1 timestamp:a24];
      [logger logCalibration:timestampCopy name:"inputColorCalibration" priority:1 timestamp:a24];
      [logger logMatrix4x4:"inputColorPose" name:1 priority:*a2.i64 timestamp:{*color.i64, *secondaryColor.i64, *pearl.i64, a24}];
      [logger logPixelBuffer:colorPose name:"inputSecondaryColor" priority:1 timestamp:a24];
      [logger logCalibration:mapCopy name:"inputSecondaryColorCalibration" priority:1 timestamp:a24];
      [logger logMatrix4x4:"inputSecondaryColorPose" name:1 priority:*clouds.i64 timestamp:{*calibration.i64, *colorCalibration.i64, *pearlCalibration.i64, a24}];
      [logger logPixelBuffer:pearlPose name:"inputPearl" priority:1 timestamp:a24];
      [logger logCalibration:uncertaintyMapCopy name:"inputPearlCalibration" priority:1 timestamp:a24];
      [logger logMatrix4x4:"inputPearlPose" name:1 priority:*levels.i64 timestamp:{*normalsMap.i64, *maskMap.i64, *depthCalibration.i64, a24}];
      [logger logCalibration:confidenceMapCopy name:"inputPointCloudCalibration" priority:1 timestamp:a24];
      for (i = 0; [posesCopy count] > i; ++i)
      {
        v40 = [posesCopy objectAtIndexedSubscript:i];
        *(&v239.__r_.__value_.__s + 23) = 15;
        strcpy(&v239, "inputPointCloud");
        std::to_string(&__p, i);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v43 = std::string::append(&v239, p_p, size);
        v44 = *&v43->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v43->__r_.__value_.__l + 2);
        *buf = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v45 = buf;
        }

        else
        {
          v45 = *buf;
        }

        [v235 logPointCloud:v40 name:v45 timestamp:a24];
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_36:
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v239.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_37;
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_36;
        }

        if ((SHIBYTE(v239.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_37:
        operator delete(v239.__r_.__value_.__l.__data_);
LABEL_23:

        v46 = &a23[4 * i];
        v231 = v46[1];
        v233 = *v46;
        v227 = v46[3];
        v229 = v46[2];
        *(&v239.__r_.__value_.__s + 23) = 19;
        strcpy(&v239, "inputPointCloudPose");
        std::to_string(&__p, i);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &__p;
        }

        else
        {
          v47 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = __p.__r_.__value_.__l.__size_;
        }

        v49 = std::string::append(&v239, v47, v48);
        v50 = *&v49->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v49->__r_.__value_.__l + 2);
        *buf = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v51 = buf;
        }

        else
        {
          v51 = *buf;
        }

        [v235 logMatrix4x4:v51 name:*&v233 timestamp:{*&v231, *&v229, *&v227, a24}];
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_39:
            if ((SHIBYTE(v239.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              continue;
            }

            goto LABEL_40;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v239.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          continue;
        }

LABEL_40:
        operator delete(v239.__r_.__value_.__l.__data_);
      }
    }

    v52 = vminvq_u32(vandq_s8(vandq_s8(vceqzq_f32(a2), vceqzq_f32(color)), vandq_s8(vceqzq_f32(secondaryColor), vceqzq_f32(pearl))));
    if (v52 < 0)
    {
      v53 = MEMORY[0x277D86220];
      v54 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = @"primary color";
        *&buf[12] = 2112;
        *&buf[14] = &stru_285231EA0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Pose for %@%@ is invalid", buf, 0x16u);
      }
    }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqzq_f32(clouds), vceqzq_f32(calibration)), vandq_s8(vceqzq_f32(colorCalibration), vceqzq_f32(pearlCalibration)))) & 0x80000000) != 0)
    {
      v55 = MEMORY[0x277D86220];
      v56 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = @"secondary color";
        *&buf[12] = 2112;
        *&buf[14] = &stru_285231EA0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Pose for %@%@ is invalid", buf, 0x16u);
      }

      v234 = 0;
      if (!pearlPose)
      {
LABEL_58:
        v59 = 0;
        v60 = a23 + 2;
        v61 = MEMORY[0x277D86220];
        while (v59 < [posesCopy count])
        {
          if ((vminvq_u32(vandq_s8(vandq_s8(vceqzq_f32(v60[-1]), vceqzq_f32(v60[-2])), vandq_s8(vceqzq_f32(*v60), vceqzq_f32(v60[1])))) & 0x80000000) != 0)
          {
            v234 = 0;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d)", v59];
              *buf = 138412546;
              *&buf[4] = @"point cloud";
              *&buf[12] = 2112;
              *&buf[14] = v62;
              _os_log_impl(&dword_2402F6000, v61, OS_LOG_TYPE_DEFAULT, "Pose for %@%@ is invalid", buf, 0x16u);

              v234 = 0;
            }
          }

          ++v59;
          v60 += 4;
        }

        if (!v234)
        {
          v63 = 0;
          v64 = MEMORY[0x277D860B8];
          v202 = *MEMORY[0x277D860B8];
          v203 = *(MEMORY[0x277D860B8] + 16);
          v204 = *(MEMORY[0x277D860B8] + 32);
          v205 = *(MEMORY[0x277D860B8] + 48);
          v65 = a23;
          while (v63 < [posesCopy count])
          {
            v66 = *v64;
            v67 = v64[1];
            v68 = v64[3];
            v65[2] = v64[2];
            v65[3] = v68;
            *v65 = v66;
            v65[1] = v67;
            v65 += 4;
            ++v63;
          }

          clouds.i64[0] = v202;
          calibration.i64[0] = v203;
          colorCalibration.i64[0] = v204;
          pearlCalibration.i64[0] = v205;
          a2.i64[0] = v202;
          secondaryColor.i64[0] = v204;
          pearl.i64[0] = v205;
          color.i64[0] = v203;
        }

        [*(obj + 29) setAllPosesValid:v234];
        executorParameters2 = [obj executorParameters];
        stepsToExecute = [executorParameters2 stepsToExecute];

        executorParameters3 = [obj executorParameters];
        timeProfiler = [executorParameters3 timeProfiler];

        if (stepsToExecute < 1)
        {
          execute = -22977;
LABEL_108:

          goto LABEL_109;
        }

        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        [obj frameExecutionStart];
        inferenceDescriptor = [*(obj + 28) inferenceDescriptor];
        primaryColorInput = [inferenceDescriptor primaryColorInput];
        secondaryColorInput = [inferenceDescriptor secondaryColorInput];
        v72 = [obj inferencePixelBufferForDescriptor:primaryColorInput inputUserBuffer:pose];
        v73 = v72;
        if (!v72)
        {
          v83 = 0;
          goto LABEL_97;
        }

        v74 = v72;
        if (v72 != pose)
        {
          v75 = *(obj + 25);
          if (v75)
          {
            if (pose)
            {
              v76 = *(v75 + 40);
              v78 = *(v75 + 24);
              v77 = *(v75 + 32);
              if (v78 == CVPixelBufferGetWidth(pose) && v77 == CVPixelBufferGetHeight(pose) && CVPixelBufferGetPixelFormatType(pose) == v76)
              {
                v79 = *(obj + 25);
                v80 = *(v79 + 64);
                v82 = *(v79 + 48);
                v81 = *(v79 + 56);
                if (v82 == CVPixelBufferGetWidth(v73) && v81 == CVPixelBufferGetHeight(v73) && CVPixelBufferGetPixelFormatType(v73) == v80)
                {
                  v85 = PixelBufferUtilsSession::run(*(obj + 25), pose, v73);
                  v74 = v73;
                  if ((v85 & 1) == 0)
                  {
                    v92 = 0;
                    goto LABEL_116;
                  }

                  goto LABEL_87;
                }
              }
            }

            v84 = *(obj + 25);
            if (v84)
            {
              PixelBufferUtilsSession::~PixelBufferUtilsSession(v84);
              MEMORY[0x245CBFCB0]();
            }
          }

          CVPixelBufferGetWidth(pose);
          CVPixelBufferGetHeight(pose);
          CVPixelBufferGetWidth(v73);
          CVPixelBufferGetHeight(v73);
          CVPixelBufferGetPixelFormatType(pose);
          CVPixelBufferGetPixelFormatType(v73);
          PixelBufferUtilsSession::createCropScaleConvertRotateSession();
        }

LABEL_87:
        [v235 logPixelBuffer:v74 name:"modelInputColor" timestamp:a24];
        v86 = [obj inferencePixelBufferForDescriptor:secondaryColorInput inputUserBuffer:colorPose];
        v87 = v86;
        if (v86)
        {
          if (v86 == colorPose)
          {
            goto LABEL_104;
          }

          v88 = *(obj + 25);
          if (v88)
          {
            if (colorPose)
            {
              v89 = *(v88 + 40);
              v91 = *(v88 + 24);
              v90 = *(v88 + 32);
              if (v91 == CVPixelBufferGetWidth(colorPose) && v90 == CVPixelBufferGetHeight(colorPose) && CVPixelBufferGetPixelFormatType(colorPose) == v89 && PixelBufferUtilsSession::verifyOutput(*(obj + 25), v87))
              {
                if (PixelBufferUtilsSession::run(*(obj + 25), colorPose, v87))
                {
LABEL_104:
                  [v235 logPixelBuffer:v87 name:"modelInputSecondaryColor" timestamp:a24];
                  v95 = fabsf(color.f32[0]);
                  [*(obj + 29) setColorPoseRoll:{COERCE_DOUBLE(__PAIR64__(color.u32[1], LODWORD(v95)))}];
                  [timeProfiler stopWithUTFString:"preprocess color"];
                  kdebug_trace();
                  if (stepsToExecute == 1)
                  {
                    execute = -22977;
LABEL_107:

                    goto LABEL_108;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"preprocess calibration"];
                  v97 = [timestampCopy mutableCopy];
                  [v97 crop:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
                  primaryColorInput2 = [inferenceDescriptor primaryColorInput];
                  imageDescriptor = [primaryColorInput2 imageDescriptor];
                  [imageDescriptor sizeForLayout:{objc_msgSend(obj, "layout")}];
                  v100 = [v97 scale:?];

                  if ((v100 & 1) == 0)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to scale primary color calibration into network dimensions", buf, 2u);
                    }

                    execute = -22972;
                    goto LABEL_148;
                  }

                  [v235 logCalibration:v97 name:"intermediateColorCalibration" timestamp:a24];
                  v101 = [mapCopy mutableCopy];
                  [v101 crop:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
                  secondaryColorInput2 = [inferenceDescriptor secondaryColorInput];
                  imageDescriptor2 = [secondaryColorInput2 imageDescriptor];
                  [imageDescriptor2 sizeForLayout:{objc_msgSend(obj, "layout")}];
                  v104 = [v101 scale:?];

                  if ((v104 & 1) == 0)
                  {
                    v105 = v101;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to scale secondary color calibration into network dimensions", buf, 2u);
                    }

                    execute = -22972;
                    goto LABEL_147;
                  }

                  v105 = v101;
                  [v235 logCalibration:v101 name:"intermediateSecondaryColorCalibration" timestamp:a24];
                  execute = [*(obj + 28) createCameraEmbeddingsForRightCameraCalibration:v97 leftCameraCalibration:v101 rightCameraPose:*(obj + 20) leftCameraPose:*a2.i64 outputBuffer:{*color.i64, *secondaryColor.i64, *pearl.i64, *clouds.i64, *calibration.i64, *colorCalibration.i64, *pearlCalibration.i64}];
                  if (execute)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to create camera embeddings", buf, 2u);
                    }

                    goto LABEL_147;
                  }

                  [v235 logRawBuffer:objc_msgSend(*(obj + 20) size:"data") name:objc_msgSend(*(obj + 20) timestamp:{"size"), "modelInputColorCameraEmbeddings", a24}];
                  defaults = [objc_opt_class() defaults];
                  v107 = [defaults BOOLForKey:kADDeviceConfigurationKeyMetricDepthIgnoreActiveSensors];

                  if (v107)
                  {
                    v108 = MEMORY[0x277D86220];
                    v109 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Warning! Ignoring active sensors", buf, 2u);
                    }
                  }

                  [*(obj + 29) setDepthSensorsIgnored:v107];
                  defaults2 = [objc_opt_class() defaults];
                  v111 = [defaults2 BOOLForKey:kADDeviceConfigurationKeyMetricDepthEmulatePeridot];

                  [timeProfiler stopWithUTFString:"preprocess calibration"];
                  kdebug_trace();
                  if (stepsToExecute < 3)
                  {
                    goto LABEL_145;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"preprocess pearl"];
                  if ((pearlPose == 0) | v107 & 1 | v111 & 1)
                  {
                    [*(obj + 22) clearBuffer];
                  }

                  else
                  {
                    execute = [*(obj + 28) preprocessPearlDepth:*&v202 pearlPose:*&v203 pearlCalibration:*&v204 colorPose:*&v205 colorCalibration:*a2.i64 outputBuffer:{*color.i64, *secondaryColor.i64, *pearl.i64}];
                    [*(obj + 29) setPearlProjectedPixelCount:countNonZeroValues(*(obj + 23))];
                    v112 = CVPixelBufferGetWidth(*(obj + 23));
                    Height = CVPixelBufferGetHeight(*(obj + 23));
                    *&v114 = [*(obj + 29) pearlProjectedPixelCount] / (Height * v112);
                    [*(obj + 29) setPearlProjectedPixelPercentage:v114];
                    if ([v235 enabled])
                    {
                      [v235 logPixelBuffer:*(obj + 23) name:"intermediateProjectedPearlToPrimary" timestamp:a24];
                      PixelBufferWithSameSizeAndFormat = *(obj + 24);
                      if (!PixelBufferWithSameSizeAndFormat)
                      {
                        PixelBufferWithSameSizeAndFormat = PixelBufferUtils::createPixelBufferWithSameSizeAndFormat(*(obj + 23), 1);
                        *(obj + 24) = PixelBufferWithSameSizeAndFormat;
                      }

                      CVPixelBufferLockBaseAddress(PixelBufferWithSameSizeAndFormat, 0);
                      v199 = objc_alloc(MEMORY[0x277CED050]);
                      BaseAddress = CVPixelBufferGetBaseAddress(*(obj + 24));
                      dimensions = [*(obj + 22) dimensions];
                      v245[0] = &unk_28524A6F8;
                      v197 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(*(obj + 22), "rowBytes")}];
                      v245[1] = v197;
                      v196 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(*(obj + 22), "channelBytes")}];
                      v245[2] = v196;
                      v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(*(obj + 22), "batchBytes")}];
                      v245[3] = v116;
                      v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:4];
                      v118 = [v199 initWithName:@"projectedPearlToSecondary" rawData:BaseAddress dimensions:dimensions strides:v117];

                      v119 = [*(obj + 28) preprocessPearlDepth:pearlPose pearlPose:uncertaintyMapCopy pearlCalibration:v101 colorPose:v118 colorCalibration:*&v202 outputBuffer:{*&v203, *&v204, *&v205, *clouds.i64, *calibration.i64, *colorCalibration.i64, *pearlCalibration.i64}];
                      CVPixelBufferUnlockBaseAddress(*(obj + 24), 0);
                      if (v119)
                      {
                        v120 = MEMORY[0x277D86220];
                        v121 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134217984;
                          *&buf[4] = v119;
                          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MD failed projecting pearl to secondary camera for logging with error %ld", buf, 0xCu);
                        }
                      }

                      else
                      {
                        [v235 logPixelBuffer:*(obj + 24) name:"intermediateProjectedPearlToSecondary" timestamp:a24];
                      }
                    }

                    if (execute)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
LABEL_146:
                        v105 = v101;
LABEL_147:

LABEL_148:
                        goto LABEL_107;
                      }

                      *buf = 0;
                      v122 = MEMORY[0x277D86220];
                      v123 = "failed projecting pearl for color POV";
                      v124 = buf;
LABEL_180:
                      _os_log_error_impl(&dword_2402F6000, v122, OS_LOG_TYPE_ERROR, v123, v124, 2u);
                      goto LABEL_146;
                    }
                  }

                  [timeProfiler stopWithUTFString:"preprocess pearl"];
                  kdebug_trace();
                  if (stepsToExecute == 3)
                  {
LABEL_145:
                    execute = -22977;
                    goto LABEL_146;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"preprocess jasper"];
                  *buf = xmmword_240406DF0;
                  *&buf[16] = xmmword_240406E00;
                  v243 = xmmword_240406E10;
                  v244 = xmmword_240406E20;
                  v125 = v111 ^ 1;
                  if (!pearlPose)
                  {
                    v125 = 1;
                  }

                  if ((v125 & 1) == 0)
                  {
                    v126 = *(obj + 28);
                    [confidenceMapCopy cameraToPlatformTransform];
                    v237 = 0;
                    execute = [v126 emulatePeridotFromJasper:posesCopy jasperPoses:a23 jasperTimestamps:0 jasperToPlatformTransform:pearlPose pearlDepth:uncertaintyMapCopy pearlPose:&v237 pearlCalibration:v127 outPointCloud:v128 outPose:v129 outTimestamp:{v130, *&v202, *&v203, *&v204, *&v205, buf, 0}];
                    v131 = v237;
                    v132 = v131;
                    if (execute)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed emulating peridot from jasper", &v239, 2u);
                      }

                      goto LABEL_146;
                    }

                    v241 = v131;
                    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:&v241 count:1];

                    v226 = buf;
                    posesCopy = v133;
                  }

                  v134 = MEMORY[0x277CED0F8];
                  v240 = confidenceMapCopy;
                  v135 = [MEMORY[0x277CBEA60] arrayWithObjects:&v240 count:1];
                  v136 = [v134 aggregatePointClouds:posesCopy calibrations:v135 worldToPlatformTransforms:v226 projectingToCamera:v97 worldToPlatformAtProjectionTime:{*a2.i64, *color.i64, *secondaryColor.i64, *pearl.i64}];
                  v137 = *(obj + 18);
                  *(obj + 18) = v136;

                  v138 = *(obj + 18);
                  pipelineParameters = [*(obj + 28) pipelineParameters];
                  pointCloudFilter = [pipelineParameters pointCloudFilter];
                  v141 = [v138 pointCloudByApplyingFilter:pointCloudFilter];
                  v142 = *(obj + 18);
                  *(obj + 18) = v141;

                  *pixelBuffera = *v226;
                  v216 = v226[2];
                  v218 = v226[1];
                  v214 = v226[3];
                  v143 = [posesCopy count];
                  v246.columns[0] = *pixelBuffera;
                  v246.columns[2] = v216;
                  v246.columns[1] = v218;
                  v246.columns[3] = v214;
                  *&v144 = ADCommonUtils::calculatePoseDistance(v143, v246, *v226[4 * v143 - 4].f32);
                  [*(obj + 29) setJasperPoseDistance:v144];
                  [*(obj + 29) setJasperInputSpotCount:{objc_msgSend(*(obj + 18), "length")}];
                  if (!v234)
                  {
                    v145 = MEMORY[0x277D86220];
                    v146 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "zeroing point clouds due to invalid pose inputs", &v239, 2u);
                    }

                    v147 = *(obj + 18);
                    *(obj + 18) = 0;
                  }

                  if (v107)
                  {
                    v148 = *(obj + 18);
                    *(obj + 18) = 0;
                  }

                  [v235 logPointCloud:*(obj + 18) name:"intermediateAggregatedPointCloudProjectedToPrimary" timestamp:a24];
                  [v97 referenceDimensions];
                  v150 = v149;
                  [v97 referenceDimensions];
                  v152 = v151;
                  if (pearlPose)
                  {
                    v153 = [*(obj + 18) mutableCopy];
                    objc_storeStrong(obj + 18, v153);
                    execute = [*(obj + 28) filterJasperPointCloud:v153 usingPearlInput:*(obj + 23)];
                    if (execute)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed filtering jasper (primary) with pearl", &v239, 2u);
                      }

                      goto LABEL_146;
                    }

                    v154 = *(obj + 18);
                    pipelineParameters2 = [*(obj + 28) pipelineParameters];
                    pointCloudFilter2 = [pipelineParameters2 pointCloudFilter];
                    v157 = [v154 pointCloudByApplyingFilter:pointCloudFilter2];
                    v158 = *(obj + 18);
                    *(obj + 18) = v157;

                    [v235 logPointCloud:*(obj + 18) name:"intermediateAggregatedPointCloudProjectedToPrimaryCoFiltered" timestamp:a24];
                  }

                  [*(obj + 29) setJasperProjectedSpotCount:{objc_msgSend(*(obj + 18), "length")}];
                  v159 = [*(obj + 18) pointCloudByChangingPointOfViewFrom:v97 to:v101];
                  v160 = *(obj + 19);
                  *(obj + 19) = v159;

                  if ([v235 enabled])
                  {
                    v161 = PixelBufferUtils::createPixelBuffer(v150, v152, 0x68646570u, 1);
                    PixelBufferSharedPtr::TakeOwnership(&v239, v161);
                    v163 = *(obj + 18);
                    if (v163)
                    {
                      pipelineParameters3 = [*(obj + 28) pipelineParameters];
                      pointCloudFilter3 = [pipelineParameters3 pointCloudFilter];
                      [v163 projectJasperPointsFilteredBy:pointCloudFilter3 croppedBy:*(obj + 9) rotatedBy:v239.__r_.__value_.__l.__size_ andScaledInto:{0.0, 0.0, v150, v152}];
                    }

                    else
                    {
                      PixelBufferUtils::blacken(v239.__r_.__value_.__l.__size_, v162);
                    }

                    [v235 logPixelBuffer:v239.__r_.__value_.__l.__size_ name:"intermediateProjectedJasperToPrimaryDepthMap" timestamp:a24];
                    v167 = *(obj + 19);
                    if (v167)
                    {
                      pipelineParameters4 = [*(obj + 28) pipelineParameters];
                      pointCloudFilter4 = [pipelineParameters4 pointCloudFilter];
                      [v167 projectJasperPointsFilteredBy:pointCloudFilter4 croppedBy:*(obj + 9) rotatedBy:v239.__r_.__value_.__l.__size_ andScaledInto:{0.0, 0.0, v150, v152}];
                    }

                    else
                    {
                      PixelBufferUtils::blacken(v239.__r_.__value_.__l.__size_, v166);
                    }

                    [v235 logPixelBuffer:v239.__r_.__value_.__l.__size_ name:"intermediateProjectedJasperToSecondaryDepthMap" timestamp:a24];
                    PixelBufferSharedPtr::~PixelBufferSharedPtr(&v239);
                  }

                  execute = [*(obj + 28) createJasperEmbeddingsForRightCameraPointCloud:*(obj + 18) leftCameraPointCloud:*(obj + 19) crop:*(obj + 9) rotation:*(obj + 21) outputBuffer:{0.0, 0.0, v150, v152}];
                  if (execute)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_146;
                    }

                    LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                    v122 = MEMORY[0x277D86220];
                    v123 = "failed to create jasper embeddings";
                    v124 = &v239;
                    goto LABEL_180;
                  }

                  [v235 logRawBuffer:objc_msgSend(*(obj + 21) size:"data") name:objc_msgSend(*(obj + 21) timestamp:{"size"), "modelInputJasperEmbeddings", a24}];
                  [v235 logPixelBuffer:*(obj + 23) name:"modelInputProjectedPearl" timestamp:a24];
                  [v235 logRawBuffer:objc_msgSend(*(obj + 22) size:"data") name:objc_msgSend(*(obj + 22) timestamp:{"size"), "modelInputPearlBuffer", a24}];
                  [timeProfiler stopWithUTFString:"preprocess jasper"];
                  kdebug_trace();
                  if (stepsToExecute < 5)
                  {
LABEL_182:
                    execute = -22977;
                    goto LABEL_146;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"network execution"];
                  depthOutput = [inferenceDescriptor depthOutput];
                  v171 = [obj inferencePixelBufferForDescriptor:depthOutput outputUserBuffer:a25];

                  confidenceOutput = [inferenceDescriptor confidenceOutput];
                  v173 = [obj inferencePixelBufferForDescriptor:confidenceOutput outputUserBuffer:a26];

                  normalsOutput = [inferenceDescriptor normalsOutput];
                  v175 = [obj inferencePixelBufferForDescriptor:normalsOutput outputUserBuffer:a29];

                  execute = [*(obj + 7) execute];
                  if (execute)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_146;
                    }

                    LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                    v181 = MEMORY[0x277D86220];
                    v182 = "failed executing espresso plan";
                    goto LABEL_209;
                  }

                  [v235 logPixelBuffer:v171 name:"modelOutputDepth" timestamp:a24];
                  [v235 logPixelBuffer:v173 name:"modelOutputUncertainty" timestamp:a24];
                  [v235 logPixelBuffer:v175 name:"modelOutputNormals" timestamp:a24];
                  [timeProfiler stopWithUTFString:"network execution"];
                  kdebug_trace();
                  if (stepsToExecute == 5)
                  {
                    goto LABEL_182;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"postprocess confidence"];
                  if (v234)
                  {
                    if (v95 > 0.5)
                    {
                      v176 = MEMORY[0x277D86220];
                      v177 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metricDepth reducing medium confidence due to device roll angle", &v239, 2u);
                      }

                      [*(obj + 28) filterUncertainty:v173 output:v173];
                    }
                  }

                  else
                  {
                    v178 = MEMORY[0x277D86220];
                    v179 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "zeroing confidence due to invalid pose inputs", &v239, 2u);
                    }

                    PixelBufferUtils::blacken(v173, v180);
                  }

                  if (a27)
                  {
                    if (!*a27)
                    {
                      *a27 = PixelBufferUtils::createPixelBufferWithSameSizeAndFormat(v173, 1);
                    }

                    execute = [*(obj + 28) postProcessEspressoConfidence:v173 outputConfidence:? confidenceUnits:?];
                    if (execute)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_146;
                      }

                      LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                      v181 = MEMORY[0x277D86220];
                      v182 = "failed post processing metric depth confidence output";
                      goto LABEL_209;
                    }

                    [v235 logPixelBuffer:*a27 name:"outputConfidence" timestamp:a24];
                  }

                  if (a28)
                  {
                    if (!*a28)
                    {
                      *a28 = PixelBufferUtils::createPixelBufferWithSameSize(v173, 0x4C303038, 1);
                    }

                    execute = [*(obj + 28) postProcessEspressoConfidence:v173 outputConfidence:? confidenceUnits:?];
                    if (execute)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_146;
                      }

                      LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                      v181 = MEMORY[0x277D86220];
                      v182 = "failed post processing metric depth confidence levels output";
                      goto LABEL_209;
                    }

                    [v235 logPixelBuffer:*a28 name:"outputConfideneLevels" timestamp:a24];
                  }

                  v183 = v173;
                  if (a26)
                  {
                    v183 = v173;
                    if (v173 != *a26)
                    {
                      execute = [*(obj + 28) postProcessEspressoConfidence:v173 outputConfidence:? confidenceUnits:?];
                      if (execute)
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_146;
                        }

                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        v181 = MEMORY[0x277D86220];
                        v182 = "failed post processing metric depth confidence levels output";
LABEL_209:
                        _os_log_error_impl(&dword_2402F6000, v181, OS_LOG_TYPE_ERROR, v182, &v239, 2u);
                        goto LABEL_146;
                      }

                      v183 = *a26;
                    }
                  }

                  [v235 logPixelBuffer:v183 name:"outputUncertainty" timestamp:a24];
                  [timeProfiler stopWithUTFString:"postprocess confidence"];
                  kdebug_trace();
                  if (stepsToExecute < 7)
                  {
                    goto LABEL_182;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"postprocess depth"];
                  if (v171 != *a25)
                  {
                    execute = [*(obj + 28) postProcessEspressoDepth:v171 espressoConfidence:0 toOutputDepth:? outputConfidence:?];
                    if (execute)
                    {
                      v184 = MEMORY[0x277D86220];
                      v185 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed post processing metric depth output", &v239, 2u);
                      }

LABEL_240:

                      goto LABEL_146;
                    }

                    [v235 logPixelBuffer:*a25 name:"outputDepth" timestamp:a24];
                  }

                  [timeProfiler stopWithUTFString:"postprocess depth"];
                  kdebug_trace();
                  if (stepsToExecute == 7)
                  {
                    goto LABEL_182;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"postprocess normals"];
                  if (a29 && v175 != *a29)
                  {
                    execute = [*(obj + 28) postProcessEspressoNormals:v175 toOutputNormals:?];
                    if (execute)
                    {
                      v186 = MEMORY[0x277D86220];
                      v187 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed post processing metric normals output", &v239, 2u);
                      }

                      goto LABEL_240;
                    }

                    [v235 logPixelBuffer:*a29 name:"outputNormals" timestamp:a24];
                  }

                  [timeProfiler stopWithUTFString:"postprocess normals"];
                  kdebug_trace();
                  if (stepsToExecute < 9)
                  {
                    goto LABEL_182;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"postprocess mask"];
                  if (a30)
                  {
                    if (!*a30)
                    {
                      *a30 = PixelBufferUtils::createPixelBufferWithSameSizeAndFormat(v173, 1);
                    }

                    if (v234)
                    {
                      execute = [*(obj + 28) fillSensorsMask:?];
                      if (execute)
                      {
                        v188 = MEMORY[0x277D86220];
                        v189 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed post processing metric active depth mask output", &v239, 2u);
                        }

                        goto LABEL_240;
                      }
                    }

                    else
                    {
                      v190 = MEMORY[0x277D86220];
                      v191 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v239.__r_.__value_.__l.__data_) = 0;
                        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "clearing mask due to invalid pose inputs", &v239, 2u);
                      }

                      PixelBufferUtils::blacken(*a30, v192);
                    }

                    [v235 logPixelBuffer:*a30 name:"outputActiveDepthMask" timestamp:a24];
                  }

                  [v235 logCalibration:v97 name:"outputCalibration" timestamp:a24];
                  if (a31)
                  {
                    v193 = v97;
                    *a31 = v97;
                  }

                  [timeProfiler stopWithUTFString:"postprocess mask"];
                  kdebug_trace();
                  if (stepsToExecute != 9)
                  {
                    [obj frameExecutionEnd];
                    defaults3 = [objc_opt_class() defaults];
                    v195 = [defaults3 stringForKey:kADDeviceConfigurationKeyMetricDepthGraphJPEGDumpPath];

                    if (v195)
                    {
                      [obj writeMetricDepthToJPEG:v195 timestamp:0 preProcessedJasper:*(obj + 23) preProcessedPearl:v73 preProcessedPrimaryColor:v173 rawConfOut:v171 rawDepthOut:a24];
                    }

                    execute = 0;
                    goto LABEL_146;
                  }

                  goto LABEL_182;
                }

                v92 = 1;
LABEL_116:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *&buf[4] = v92;
                  _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed converting color input %d with color session", buf, 8u);
                }

                execute = -22950;
                goto LABEL_107;
              }
            }

            v93 = *(obj + 25);
            if (v93)
            {
              PixelBufferUtilsSession::~PixelBufferUtilsSession(v93);
              MEMORY[0x245CBFCB0]();
            }
          }

          CVPixelBufferGetWidth(colorPose);
          CVPixelBufferGetHeight(colorPose);
          CVPixelBufferGetWidth(v87);
          CVPixelBufferGetHeight(v87);
          CVPixelBufferGetPixelFormatType(colorPose);
          CVPixelBufferGetPixelFormatType(v87);
          PixelBufferUtilsSession::createCropScaleConvertRotateSession();
        }

        v83 = 1;
LABEL_97:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v83;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MetricDepth Executor does not have an inference buffer for color %d", buf, 8u);
        }

        execute = -22953;
        goto LABEL_107;
      }
    }

    else
    {
      v234 = v52 >= 0;
      if (!pearlPose)
      {
        goto LABEL_58;
      }
    }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqzq_f32(levels), vceqzq_f32(normalsMap)), vandq_s8(vceqzq_f32(maskMap), vceqzq_f32(depthCalibration)))) & 0x80000000) != 0)
    {
      v57 = MEMORY[0x277D86220];
      v58 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = @"pearl";
        *&buf[12] = 2112;
        *&buf[14] = &stru_285231EA0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Pose for %@%@ is invalid", buf, 0x16u);
      }

      v234 = 0;
    }

    goto LABEL_58;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", buf, 2u);
  }

  execute = -22960;
LABEL_109:
  objc_sync_exit(obj);

  return execute;
}

- (void)writeMetricDepthToJPEG:(id)g timestamp:(double)timestamp preProcessedJasper:(__CVBuffer *)jasper preProcessedPearl:(__CVBuffer *)pearl preProcessedPrimaryColor:(__CVBuffer *)color rawConfOut:(__CVBuffer *)out rawDepthOut:(__CVBuffer *)depthOut
{
  v33 = *MEMORY[0x277D85DE8];
  gCopy = g;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = gCopy;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "writing metricDepth debug images to %@", &buf, 0xCu);
  }

  if (!self->_tiledView)
  {
    BYTE11(buf) = 0;
    *(&buf + 3) = 0;
    operator new();
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(out);
  Width = CVPixelBufferGetWidth(out);
  Height = CVPixelBufferGetHeight(out);
  *&buf = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, PixelFormatType, BufferAttributes, &buf))
  {
    v20 = 0;
  }

  else
  {
    v20 = buf;
  }

  [(ADMetricDepthPipeline *)self->_pipeline postProcessEspressoConfidence:out outputConfidence:v20 confidenceUnits:0];
  *&buf = jasper;
  *(&buf + 1) = pearl;
  depthOutCopy = depthOut;
  v32 = v20;
  tiledView = self->_tiledView;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&timestamp];
  v23 = v22;
  v24 = PixelBufferUtilsTiledView::render(tiledView, &buf, 4, color, "metric depth", [v22 UTF8String]);

  gCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/MD_montage.jpeg", gCopy];
  v26 = gCopy;
  uTF8String = [gCopy UTF8String];
  PixelBufferUtils::pixelBufferToImageFile(uTF8String, v24, 0, v28);

  CVPixelBufferRelease(v20);
  CVPixelBufferRelease(v24);
}

- (int64_t)prepareForInputRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metric depths executor: preparing executor", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  inferenceDescriptor = [(ADMetricDepthPipeline *)selfCopy->_pipeline inferenceDescriptor];
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v37 = CGRectIntegral(v36);
  v10 = v37.origin.x;
  v11 = v37.origin.y;
  v12 = v37.size.width;
  v13 = v37.size.height;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    espressoEngine = selfCopy->_espressoEngine;
    *buf = 134219008;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    v29 = 2048;
    v30 = v12;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = espressoEngine;
    v15 = MEMORY[0x277D86220];
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v17 = selfCopy->_espressoEngine;
    *buf = 134219008;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    v29 = 2048;
    v30 = v12;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v17;
    v15 = MEMORY[0x277D86220];
    v16 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v15, v16, "metric depth executor: preparing metric depth for roi: [%f,%f,%f,%f] - engine: %lu", buf, 0x34u);
LABEL_9:
  v18 = selfCopy->_espressoEngine;
  primaryColorInput = [inferenceDescriptor primaryColorInput];
  imageDescriptor = [primaryColorInput imageDescriptor];
  allocateIntermediateBuffers = [(ADExecutor *)selfCopy prepareForEngineType:v18 roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:v10, v11, v12, v13];

  if (allocateIntermediateBuffers)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = MEMORY[0x277D86220];
      v23 = "failed to prepare engine";
LABEL_15:
      _os_log_error_impl(&dword_2402F6000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    }
  }

  else
  {
    allocateIntermediateBuffers = [(ADMetricDepthExecutor *)selfCopy allocateIntermediateBuffers];
    if (!allocateIntermediateBuffers)
    {
      selfCopy->_isPrepared = 1;
      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = MEMORY[0x277D86220];
      v23 = "failed to allocate buffers";
      goto LABEL_15;
    }
  }

LABEL_17:

  objc_sync_exit(selfCopy);
  kdebug_trace();
  return allocateIntermediateBuffers;
}

- (int64_t)prepareForInputRoi:(CGRect)roi engineType:(unint64_t)type
{
  if (self->_espressoEngine == type)
  {

    return [(ADMetricDepthExecutor *)self prepareForInputRoi:roi.origin.x, roi.origin.y, roi.size.width, roi.size.height];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot prepare metric depth with different espresso engine from what initialized with", v7, 2u);
    }

    return -22953;
  }
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADMetricDepthExecutor *)self deallocInferenceBuffers];
  inferenceDescriptor = [(ADMetricDepthPipeline *)self->_pipeline inferenceDescriptor];
  primaryColorInput = [inferenceDescriptor primaryColorInput];
  v5 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:primaryColorInput];

  if (!v5)
  {
    secondaryColorInput = [inferenceDescriptor secondaryColorInput];
    v5 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:secondaryColorInput];

    if (!v5)
    {
      espressoRunner = self->super._espressoRunner;
      jasperInput = [inferenceDescriptor jasperInput];
      v9 = [(ADEspressoRunnerProtocol *)espressoRunner registerDescriptor:jasperInput];
      itmPreProcessedJasperEmbBuffer = self->_itmPreProcessedJasperEmbBuffer;
      self->_itmPreProcessedJasperEmbBuffer = v9;

      v11 = self->super._espressoRunner;
      pearlInput = [inferenceDescriptor pearlInput];
      v13 = [(ADEspressoRunnerProtocol *)v11 registerDescriptor:pearlInput];
      itmPreProcessedPearlBuffer = self->_itmPreProcessedPearlBuffer;
      self->_itmPreProcessedPearlBuffer = v13;

      v15 = self->super._espressoRunner;
      cameraEmbeddingInput = [inferenceDescriptor cameraEmbeddingInput];
      v17 = [(ADEspressoRunnerProtocol *)v15 registerDescriptor:cameraEmbeddingInput];
      itmPreProcessedCameraEmbBuffer = self->_itmPreProcessedCameraEmbBuffer;
      self->_itmPreProcessedCameraEmbBuffer = v17;

      if (self->_itmPreProcessedJasperEmbBuffer && self->_itmPreProcessedPearlBuffer && self->_itmPreProcessedCameraEmbBuffer)
      {
        confidenceOutput = [inferenceDescriptor confidenceOutput];
        v5 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:confidenceOutput];

        if (!v5)
        {
          depthOutput = [inferenceDescriptor depthOutput];
          v5 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:depthOutput];

          if (!v5)
          {
            normalsOutput = [inferenceDescriptor normalsOutput];
            v5 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:normalsOutput];

            if (!v5)
            {
              width = [(ADEspressoBufferHandle *)self->_itmPreProcessedPearlBuffer width];
              height = [(ADEspressoBufferHandle *)self->_itmPreProcessedPearlBuffer height];
              data = [(ADEspressoBufferHandle *)self->_itmPreProcessedPearlBuffer data];
              rowBytes = [(ADEspressoBufferHandle *)self->_itmPreProcessedPearlBuffer rowBytes];
              p_itmPreProcessedPearl = &self->_itmPreProcessedPearl;
              CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], width, height, 0x68646570u, data, rowBytes, 0, 0, 0, p_itmPreProcessedPearl);
              if (*p_itmPreProcessedPearl)
              {
                v5 = 0;
              }

              else
              {
                v5 = -22965;
              }
            }
          }
        }
      }

      else
      {
        v5 = -22971;
      }
    }
  }

  return v5;
}

- (void)deallocInferenceBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedPearl);
  self->_itmPreProcessedPearl = 0;
  v6.receiver = self;
  v6.super_class = ADMetricDepthExecutor;
  [(ADExecutor *)&v6 deallocInferenceBuffers];
  itmPreProcessedJasperEmbBuffer = self->_itmPreProcessedJasperEmbBuffer;
  self->_itmPreProcessedJasperEmbBuffer = 0;

  itmPreProcessedPearlBuffer = self->_itmPreProcessedPearlBuffer;
  self->_itmPreProcessedPearlBuffer = 0;

  itmPreProcessedCameraEmbBuffer = self->_itmPreProcessedCameraEmbBuffer;
  self->_itmPreProcessedCameraEmbBuffer = 0;
}

- (id)initForEspressoEngine:(unint64_t)engine
{
  v17.receiver = self;
  v17.super_class = ADMetricDepthExecutor;
  v4 = [(ADExecutor *)&v17 init];
  if (!v4)
  {
    goto LABEL_7;
  }

  v14 = 335684464;
  v15 = 0u;
  v16 = 0u;
  kdebug_trace();
  v4->_espressoEngine = engine;
  v5 = [[ADMetricDepthPipeline alloc] initForEspressoEngine:v4->_espressoEngine];
  pipeline = v4->_pipeline;
  v4->_pipeline = v5;

  v7 = v4->_pipeline;
  if (v7)
  {
    v8 = [[ADMetricDepthExecutorParameters alloc] initForPipeline:v4->_pipeline];
    [(ADExecutor *)v4 setExecutorParameters:v8];

    v9 = objc_opt_new();
    lastFrameStatistics = v4->_lastFrameStatistics;
    v4->_lastFrameStatistics = v9;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "metric depth pipeline failed to init ", v13, 2u);
  }

  kdebug_trace();
  if (!v7)
  {
    v11 = 0;
  }

  else
  {
LABEL_7:
    v11 = v4;
  }

  return v11;
}

- (ADMetricDepthExecutor)init
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return [(ADMetricDepthExecutor *)self initForEspressoEngine:v3];
}

+ (id)defaults
{
  v8[3] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v7[0] = kADDeviceConfigurationKeyMetricDepthGraphJPEGDumpPath;
    null = [MEMORY[0x277CBEB68] null];
    v8[0] = null;
    v8[1] = MEMORY[0x277CBEC28];
    v7[1] = kADDeviceConfigurationKeyMetricDepthIgnoreActiveSensors;
    v7[2] = kADDeviceConfigurationKeyMetricDepthEmulatePeridot;
    v8[2] = MEMORY[0x277CBEC28];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
    +[ADMetricDepthExecutor defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v6];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[43];

  return v3;
}

@end