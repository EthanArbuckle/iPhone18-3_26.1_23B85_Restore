@interface ADJasperColorExecutor
+ (id)defaults;
- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)a3;
- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)a3 parameters:(id)a4;
- (id)getIntermediates;
- (int)copyConfidenceAllowPixelFormatChange:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4;
- (int)rotateConfidenceAllowPixelFormatChange:(__CVBuffer *)PixelBufferNoCopy rotation:(int64_t)a4 outputConfidence:(__CVBuffer *)a5;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)numberOfExecutionSteps;
- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 rotationPreference:(unint64_t)a6;
- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 useTemporalConsistency:(BOOL)a6;
- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 useTemporalConsistency:(BOOL)a6 rotationPreference:(unint64_t)a7;
- (uint64_t)executeWithColor:(double)a3 colorCameraCalibration:(double)a4 colorWorldToPlatformTransform:(double)a5 pointCloud:(uint64_t)a6 outDepthMap:(uint64_t)a7 outConfMap:(void *)a8 outNonTemporalyConsistentDepthMap:(void *)a9 outNonTemporalyConsistentConfMap:(uint64_t)a10 outConfidenceLevels:(uint64_t)a11;
- (uint64_t)executeWithColor:(double)a3 pointCloud:(double)a4 outDepthMap:(double)a5 outConfMap:(uint64_t)a6 worldToCameraTransform:(uint64_t)a7 cameraCalibration:(void *)a8;
- (uint64_t)executeWithColor:(float32x4_t)a3 colorCameraCalibration:(float32x4_t)a4 colorWorldToPlatformTransform:(float32x4_t)a5 pointClouds:(uint64_t)a6 lidarCameraCalibration:(__CVBuffer *)a7 pointCloudWorldToPlatformTransforms:(void *)a8 outDepthMap:(void *)a9 outConfMap:(void *)a10 outNonTemporalyConsistentDepthMap:(uint64_t)a11 outNonTemporalyConsistentConfMap:(CVPixelBufferRef *)a12 outConfidenceLevels:(__CVBuffer *)a13;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADJasperColorExecutor

- (int64_t)numberOfExecutionSteps
{
  v3 = [(ADExecutor *)self executorParameters];
  v4 = [v3 temporalConsistencyMethod];

  if (v4 == 2)
  {
    return 7;
  }

  v6 = [(ADExecutor *)self executorParameters];
  v7 = [v6 temporalConsistencyMethod];

  if (v7 == 1)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

- (id)getIntermediates
{
  v58[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  v6 = [(ADExecutor *)self inferencePixelBufferForDescriptor:v5 inputUserBuffer:0];

  if (v6)
  {
    v57[0] = @"name";
    v57[1] = @"image";
    v58[0] = @"PreProcessed Color";
    v58[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    [v3 addObject:v7];
  }

  itmPreProcessedJasper = self->_itmPreProcessedJasper;
  if (itmPreProcessedJasper)
  {
    v55[0] = @"name";
    v55[1] = @"image";
    v56[0] = @"PreProcessed Jasper";
    v56[1] = itmPreProcessedJasper;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    [v3 addObject:v9];
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    v53[0] = @"name";
    v53[1] = @"image";
    v54[0] = @"Unprocessed Depth";
    v54[1] = itmUnprocessedDepth;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    [v3 addObject:v11];
  }

  itmPostProcessedDepth = self->_itmPostProcessedDepth;
  if (itmPostProcessedDepth)
  {
    v51[0] = @"name";
    v51[1] = @"image";
    v52[0] = @"PostProcessed Depth";
    v52[1] = itmPostProcessedDepth;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    [v3 addObject:v13];
  }

  itmUnprocessedConf = self->_itmUnprocessedConf;
  if (itmUnprocessedConf)
  {
    v49[0] = @"name";
    v49[1] = @"image";
    v50[0] = @"Unprocessed Conf";
    v50[1] = itmUnprocessedConf;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    [v3 addObject:v15];
  }

  itmPostProcessedConf = self->_itmPostProcessedConf;
  if (itmPostProcessedConf)
  {
    v47[0] = @"name";
    v47[1] = @"image";
    v48[0] = @"PostProcessed Conf";
    v48[1] = itmPostProcessedConf;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [v3 addObject:v17];
  }

  itmOpticalFlow = self->_itmOpticalFlow;
  if (itmOpticalFlow)
  {
    v45[0] = @"name";
    v45[1] = @"image";
    v46[0] = @"Optical Flow";
    v46[1] = itmOpticalFlow;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    [v3 addObject:v19];
  }

  itmPrevProcessedFusedDepth = self->_itmPrevProcessedFusedDepth;
  if (itmPrevProcessedFusedDepth)
  {
    v43[0] = @"name";
    v43[1] = @"image";
    v44[0] = @"Prev Processed Fused Depth";
    v44[1] = itmPrevProcessedFusedDepth;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v3 addObject:v21];
  }

  itmCurrProcessedFusedDepth = self->_itmCurrProcessedFusedDepth;
  if (itmCurrProcessedFusedDepth)
  {
    v41[0] = @"name";
    v41[1] = @"image";
    v42[0] = @"Curr Processed Fused Depth";
    v42[1] = itmCurrProcessedFusedDepth;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v23];
  }

  itmPrevProcessedFusedConf = self->_itmPrevProcessedFusedConf;
  if (itmPrevProcessedFusedConf)
  {
    v39[0] = @"name";
    v39[1] = @"image";
    v40[0] = @"Prev Processed Fused conf";
    v40[1] = itmPrevProcessedFusedConf;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v3 addObject:v25];
  }

  itmCurrProcessedFusedConf = self->_itmCurrProcessedFusedConf;
  if (itmCurrProcessedFusedConf)
  {
    v37[0] = @"name";
    v37[1] = @"image";
    v38[0] = @"Curr Processed Fused conf";
    v38[1] = itmCurrProcessedFusedConf;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 addObject:v27];
  }

  itmWarpedPrevDepth = self->_itmWarpedPrevDepth;
  if (itmWarpedPrevDepth)
  {
    v35[0] = @"name";
    v35[1] = @"image";
    v36[0] = @"Prev Processed warped Depth";
    v36[1] = itmWarpedPrevDepth;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v3 addObject:v29];
  }

  itmWarpedPrevConf = self->_itmWarpedPrevConf;
  if (itmWarpedPrevConf)
  {
    v33[0] = @"name";
    v33[1] = @"image";
    v34[0] = @"Prev Processed warped conf";
    v34[1] = itmWarpedPrevConf;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 addObject:v31];
  }

  return v3;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  CVPixelBufferRelease(self->_itmPostProcessedDepth);
  CVPixelBufferRelease(self->_itmUnprocessedConf);
  CVPixelBufferRelease(self->_itmPostProcessedConf);
  CVPixelBufferRelease(self->_itmOpticalFlow);
  CVPixelBufferRelease(self->_itmPrevProcessedFusedDepth);
  CVPixelBufferRelease(self->_itmPrevProcessedFusedConf);
  CVPixelBufferRelease(self->_itmCurrProcessedFusedConf);
  CVPixelBufferRelease(self->_itmWarpedPrevDepth);
  CVPixelBufferRelease(self->_itmWarpedPrevConf);
  CVPixelBufferRelease(self->_itmCurrProcessedFusedDepth);
  colorProcessingSession = self->_colorProcessingSession;
  if (colorProcessingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
    MEMORY[0x245CBFCB0]();
  }

  v4.receiver = self;
  v4.super_class = ADJasperColorExecutor;
  [(ADExecutor *)&v4 dealloc];
}

- (int)copyConfidenceAllowPixelFormatChange:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4
{
  PixelBufferNoCopy = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v7 = CVPixelBufferGetPixelFormatType(a4);
  v8 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v9 = 0;
  if (v8 == PixelBufferUtils::pixelSizeForPixelFormat(v7, 0) && PixelFormatType != v7)
  {
    PixelBufferNoCopy = PixelBufferUtils::createPixelBufferNoCopy(PixelBufferNoCopy, v7, *MEMORY[0x277CBF398]);
    v9 = PixelBufferNoCopy;
  }

  v10 = PixelBufferUtils::copyPixelBuffer(a4, PixelBufferNoCopy, 1);
  CVPixelBufferRelease(v9);
  return v10;
}

- (int)rotateConfidenceAllowPixelFormatChange:(__CVBuffer *)PixelBufferNoCopy rotation:(int64_t)a4 outputConfidence:(__CVBuffer *)a5
{
  if (CVPixelBufferGetPixelFormatType(a5) == 1717855600)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
    PixelBufferNoCopy = PixelBufferUtils::createPixelBufferNoCopy(PixelBufferNoCopy, PixelFormatType, *MEMORY[0x277CBF398]);
    v9 = PixelBufferNoCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = PixelBufferUtils::rotatePixelBuffer(PixelBufferNoCopy, a5, a4, 0);
  CVPixelBufferRelease(v9);
  return v10;
}

- (uint64_t)executeWithColor:(float32x4_t)a3 colorCameraCalibration:(float32x4_t)a4 colorWorldToPlatformTransform:(float32x4_t)a5 pointClouds:(uint64_t)a6 lidarCameraCalibration:(__CVBuffer *)a7 pointCloudWorldToPlatformTransforms:(void *)a8 outDepthMap:(void *)a9 outConfMap:(void *)a10 outNonTemporalyConsistentDepthMap:(uint64_t)a11 outNonTemporalyConsistentConfMap:(CVPixelBufferRef *)a12 outConfidenceLevels:(__CVBuffer *)a13
{
  v174[1] = *MEMORY[0x277D85DE8];
  v154 = a8;
  v22 = a9;
  v155 = a10;
  v23 = a1;
  objc_sync_enter(v23);
  v171 = 335684428;
  v172 = 0u;
  v173 = 0u;
  obj = v23;
  v157 = v22;
  kdebug_trace();
  if (!v23[7])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", pixelBufferOut, 2u);
    }

    v40 = -22960;
    goto LABEL_122;
  }

  if (!a12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to CVPixelBufferRef", pixelBufferOut, 2u);
    }

    v40 = -22953;
    goto LABEL_122;
  }

  v24 = v23 + 1;
  if (CGRectIsEmpty(*(v23 + 1)))
  {
    Width = CVPixelBufferGetWidth(a7);
    Height = CVPixelBufferGetHeight(a7);
    *v24 = 0;
    v24[1] = 0;
    *(obj + 3) = Width;
    *(obj + 4) = Height;
  }

  v27 = *(obj + 9);
  if (v27 == 3)
  {
    v27 = 1;
    pixelBuffer = a7;
    if (a13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v27 == 1)
    {
      v27 = 3;
    }

    pixelBuffer = a7;
    if (a13)
    {
LABEL_9:
      v28 = *a13;
      if (!*a13)
      {
        v29 = [*(obj + 44) processedDepthOutputDescriptor];
        [v29 sizeForLayout:{objc_msgSend(obj, "layout")}];
        if ((v27 | 2) == 3)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30;
        }

        if ((v27 | 2) == 3)
        {
          v33 = v30;
        }

        else
        {
          v33 = v31;
        }

        v34 = [*(obj + 44) processedConfidenceOutputDescriptor];
        v35 = [v34 pixelFormat];
        pixelBufferOut[0] = 0;
        BufferAttributes = getBufferAttributes();
        v37 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v32, v33, v35, BufferAttributes, pixelBufferOut);
        v38 = pixelBufferOut[0];
        if (v37)
        {
          v38 = 0;
        }

        *a13 = v38;

        v28 = *a13;
      }

      v39 = *a12;
      if (*a12)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }
  }

  v28 = 0;
  v39 = *a12;
  if (!*a12)
  {
LABEL_29:
    v41 = [*(obj + 44) processedDepthOutputDescriptor];
    [v41 sizeForLayout:{objc_msgSend(obj, "layout")}];
    if ((v27 | 2) == 3)
    {
      v44 = v43;
    }

    else
    {
      v44 = v42;
    }

    if ((v27 | 2) == 3)
    {
      v45 = v42;
    }

    else
    {
      v45 = v43;
    }

    v46 = [*(obj + 44) processedDepthOutputDescriptor];
    v47 = [v46 pixelFormat];
    pixelBufferOut[0] = 0;
    v48 = getBufferAttributes();
    v49 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v44, v45, v47, v48, pixelBufferOut);
    v50 = pixelBufferOut[0];
    if (v49)
    {
      v50 = 0;
    }

    *a12 = v50;

    v39 = *a12;
  }

LABEL_38:
  v51 = [obj executorParameters];
  v166 = [v51 logger];

  v52 = [MEMORY[0x277CCAC38] processInfo];
  [v52 systemUptime];
  v54 = v53;

  [v166 logPixelBuffer:pixelBuffer name:"inputColor" timestamp:v54];
  v146 = v27;
  v147 = v39;
  v145 = a12;
  v148 = v28;
  for (i = 0; [v22 count] > i; ++i)
  {
    v56 = [v22 objectAtIndexedSubscript:i];
    *(&v168.__r_.__value_.__s + 23) = 15;
    strcpy(&v168, "inputPointCloud");
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

    v59 = std::string::append(&v168, p_p, size);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v170 = v59->__r_.__value_.__r.__words[2];
    *pixelBufferOut = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if (v170 >= 0)
    {
      v61 = pixelBufferOut;
    }

    else
    {
      v61 = pixelBufferOut[0];
    }

    [v166 logPointCloud:v56 name:v61 timestamp:v54];
    if (SHIBYTE(v170) < 0)
    {
      operator delete(pixelBufferOut[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_68:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_69;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }

    if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_69:
    operator delete(v168.__r_.__value_.__l.__data_);
LABEL_54:

    if (!a11)
    {
      goto LABEL_40;
    }

    v62 = (a11 + (i << 6));
    v161 = v62[1];
    v163 = *v62;
    v158 = v62[3];
    v159 = v62[2];
    *(&v168.__r_.__value_.__s + 23) = 19;
    strcpy(&v168, "inputPointCloudPose");
    std::to_string(&__p, i);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &__p;
    }

    else
    {
      v63 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = __p.__r_.__value_.__l.__size_;
    }

    v65 = std::string::append(&v168, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    v170 = v65->__r_.__value_.__r.__words[2];
    *pixelBufferOut = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (v170 >= 0)
    {
      v67 = pixelBufferOut;
    }

    else
    {
      v67 = pixelBufferOut[0];
    }

    [v166 logMatrix4x4:v67 name:*&v163 timestamp:{*&v161, *&v159, *&v158, v54}];
    if (SHIBYTE(v170) < 0)
    {
      operator delete(pixelBufferOut[0]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_71:
        if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_72;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_72:
    operator delete(v168.__r_.__value_.__l.__data_);
LABEL_40:
    v22 = v157;
  }

  if (!v22)
  {
    v70 = 0;
    goto LABEL_81;
  }

  if (v155)
  {
    if (v154 && a11)
    {
      [v166 logCalibration:v155 name:"inputPointCloudCalibration" timestamp:v54];
      [v166 logCalibration:v154 name:"inputColorCalibration" timestamp:v54];
      [v166 logMatrix4x4:"inputColorPose" name:*a2.i64 timestamp:{*a3.i64, *a4.i64, *a5.i64, v54}];
      v68 = MEMORY[0x277CED0F8];
      v174[0] = v155;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:1];
      v70 = [v68 aggregatePointClouds:v22 calibrations:v69 worldToPlatformTransforms:a11 projectingToCamera:v154 worldToPlatformAtProjectionTime:{*a2.i64, *a3.i64, *a4.i64, *a5.i64}];

      goto LABEL_81;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      v86 = MEMORY[0x277D86220];
      v87 = "cannot aggregate and project point clouds without color calibration and world transform data";
      goto LABEL_128;
    }

LABEL_106:
    v40 = -22953;
    goto LABEL_121;
  }

  if ([v22 count] == 1)
  {
    v70 = [v22 objectAtIndexedSubscript:0];
LABEL_81:
    [v166 logPointCloud:v70 name:"intermediateAggregatedPointCloud" priority:1 timestamp:v54];
    v71 = *(obj + 43);
    if (v71)
    {
      v72 = [v71 pointCloudByRemovingPeridotShortRangeOccludedPoints:v70];

      [v166 logPointCloud:v72 name:"intermediateAggregatedPointCloudRefined" priority:1 timestamp:v54];
    }

    else
    {
      v72 = v70;
    }

    v160 = *(obj + 9);
    v73 = [obj executorParameters];
    v162 = [v73 temporalConsistencyMethod];

    v74 = [obj executorParameters];
    if ([v74 temporalConsistencyMethod] == 2)
    {
      v75 = obj[257];

      if ((v75 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(pixelBufferOut[0]) = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot re-enable optical flow temporal consistency after executor was prepared without it.", pixelBufferOut, 2u);
        }

        v40 = -22951;
        goto LABEL_121;
      }
    }

    else
    {
    }

    v76 = [*(obj + 44) inferenceDescriptor];
    v77 = [v76 colorInput];
    v78 = [obj inferencePixelBufferForDescriptor:v77 inputUserBuffer:pixelBuffer];

    if (!v78)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(pixelBufferOut[0]) = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating color input", pixelBufferOut, 2u);
      }

      v40 = -22950;
      goto LABEL_121;
    }

    v79 = [obj executorParameters];
    v164 = [v79 stepsToExecute];

    v80 = [obj executorParameters];
    v81 = [v80 timeProfiler];

    if (v164 < 1)
    {
      goto LABEL_112;
    }

    kdebug_trace();
    [v81 startWithUTFString:"preprocess color"];
    [obj frameExecutionStart];
    if (v78 == pixelBuffer)
    {
      goto LABEL_111;
    }

    v82 = *(obj + 19);
    if (v82)
    {
      if (pixelBuffer)
      {
        v83 = *(v82 + 40);
        v85 = *(v82 + 24);
        v84 = *(v82 + 32);
        if (v85 == CVPixelBufferGetWidth(pixelBuffer) && v84 == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == v83 && PixelBufferUtilsSession::verifyOutput(*(obj + 19), v78))
        {
          v89 = PixelBufferUtilsSession::run(*(obj + 19), pixelBuffer, v78);
          if ((v89 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LOWORD(pixelBufferOut[0]) = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed scaling color image", pixelBufferOut, 2u);
            }

            v40 = -22950;
            goto LABEL_120;
          }

LABEL_111:
          [v166 logPixelBuffer:v78 name:"modelInputColor" timestamp:v54];
          [v81 stopWithUTFString:"preprocess color"];
          kdebug_trace();
          if (v164 == 1)
          {
            goto LABEL_112;
          }

          kdebug_trace();
          [v81 startWithUTFString:"preprocess jasper"];
          v40 = [*(obj + 44) projectJasperPoints:v72 cropTo:*(obj + 9) rotateBy:*(obj + 20) projectedPointsBuffer:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
          if (v40)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LOWORD(pixelBufferOut[0]) = 0;
              v90 = MEMORY[0x277D86220];
              v91 = "failed projecting jasper points";
              goto LABEL_116;
            }

LABEL_120:

            goto LABEL_121;
          }

          [v166 logPixelBuffer:*(obj + 20) name:"modelInputProjectedPointCloud" timestamp:v54];
          [v81 stopWithUTFString:"preprocess jasper"];
          kdebug_trace();
          if (v164 >= 3)
          {
            kdebug_trace();
            [v81 startWithUTFString:"network execution"];
            v40 = [*(obj + 7) execute];
            if (v40)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_120;
              }

              LOWORD(pixelBufferOut[0]) = 0;
              v90 = MEMORY[0x277D86220];
              v91 = "failed executing espresso plan";
              goto LABEL_116;
            }

            [v166 logPixelBuffer:*(obj + 21) name:"modelOutputDepth" timestamp:v54];
            [v166 logPixelBuffer:*(obj + 23) name:"modelOutputUncertainty" timestamp:v54];
            if (!v162 || !a14 || (v94 = a15, v93 = a14, v160))
            {
              v93 = v147;
              v94 = v148;
              if (v162 | v160)
              {
                v93 = *(obj + 22);
                v94 = *(obj + 24);
              }
            }

            [v81 stopWithUTFString:"network execution"];
            kdebug_trace();
            if (v164 != 3)
            {
              kdebug_trace();
              [v81 startWithUTFString:"postprocess depth"];
              v40 = [*(obj + 44) postProcessWithDepth:*(obj + 21) confidence:*(obj + 23) depthOutput:v93 confidenceOutput:v94];
              if (v40)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_120;
                }

                LOWORD(pixelBufferOut[0]) = 0;
                v90 = MEMORY[0x277D86220];
                v91 = "failed postprocessing depth";
LABEL_116:
                _os_log_error_impl(&dword_2402F6000, v90, OS_LOG_TYPE_ERROR, v91, pixelBufferOut, 2u);
                goto LABEL_120;
              }

              [v166 logPixelBuffer:v93 name:"intermediateDepthOutProcessed" priority:1 timestamp:v54];
              [v166 logPixelBuffer:v94 name:"intermediateConfidenceOutProcessed" priority:1 timestamp:v54];
              v144 = v93;
              v95 = v164 - 4;
              if (!v162)
              {
                v98 = 0;
                v99 = "postprocess depth";
                goto LABEL_145;
              }

              v96 = [obj executorParameters];
              v97 = [v96 temporalConsistencyMethod] == 2;

              if (v97)
              {
                v40 = [*(obj + 18) executeWithFrame:v78 intoOpticalFlowBuffer:*(obj + 27)];
                if (v40)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(pixelBufferOut[0]) = 0;
                    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed running lktExecutor", pixelBufferOut, 2u);
                  }

                  v98 = 0;
                  goto LABEL_230;
                }

                v98 = 0;
                [v166 logPixelBuffer:*(obj + 27) name:"intermediateOpticalFlow" timestamp:v54];
LABEL_157:
                v105 = "postprocess depth";
LABEL_158:
                [v81 stopWithUTFString:v105];
                kdebug_trace();
                if (!v95)
                {
                  goto LABEL_221;
                }

                kdebug_trace();
                [v81 startWithUTFString:"postprocess warp n fuse"];
                v106 = v147;
                v107 = v148;
                if (v160)
                {
                  v106 = *(obj + 29);
                  v107 = *(obj + 31);
                }

                if (obj[256] == 1)
                {
                  if (PixelBufferUtils::copyPixelBuffer(v106, v144, 1))
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(pixelBufferOut[0]) = 0;
                      v101 = MEMORY[0x277D86220];
                      v102 = "failed copy initial prev depth";
                      goto LABEL_228;
                    }

LABEL_229:
                    v40 = -22950;
LABEL_230:

                    goto LABEL_120;
                  }

                  if ([obj copyConfidenceAllowPixelFormatChange:v94 outputConfidence:v107])
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_229;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v101 = MEMORY[0x277D86220];
                    v102 = "failed copy initial prev conf";
                    goto LABEL_228;
                  }

                  obj[256] = 0;
LABEL_220:
                  [v81 stopWithUTFString:"postprocess warp n fuse"];
                  kdebug_trace();
                  if (v95 == 1)
                  {
LABEL_221:
                    v40 = -22977;
                    goto LABEL_230;
                  }

                  kdebug_trace();
                  [v81 startWithUTFString:"postprocess previous depth"];
                  if (PixelBufferUtils::copyPixelBuffer(*(obj + 28), v106, 0))
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_229;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v101 = MEMORY[0x277D86220];
                    v102 = "failed storing previous depth";
                    goto LABEL_228;
                  }

                  if ([obj copyConfidenceAllowPixelFormatChange:v107 outputConfidence:*(obj + 30)])
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_229;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v101 = MEMORY[0x277D86220];
                    v102 = "failed storing previous confidence";
                    goto LABEL_228;
                  }

                  *(obj + 17) = a2;
                  *(obj + 18) = a3;
                  *(obj + 19) = a4;
                  *(obj + 20) = a5;
                  objc_storeStrong(obj + 42, v98);
                  v95 -= 2;
                  v99 = "postprocess previous depth";
LABEL_145:
                  [v81 stopWithUTFString:v99];
                  kdebug_trace();
                  if (v95)
                  {
                    kdebug_trace();
                    [v81 startWithUTFString:"output rotation"];
                    if (v160)
                    {
                      v100 = v144;
                      if (v162)
                      {
                        v100 = *(obj + 29);
                      }

                      if (PixelBufferUtils::rotatePixelBuffer(v100, v147, v146, 0))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(pixelBufferOut[0]) = 0;
                          v101 = MEMORY[0x277D86220];
                          v102 = "failed rotating depth. please verify output buffer dimensions";
                          goto LABEL_228;
                        }

                        goto LABEL_229;
                      }

                      if (a14 && v162 && PixelBufferUtils::rotatePixelBuffer(v144, a14, v146, 0))
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_229;
                        }

                        LOWORD(pixelBufferOut[0]) = 0;
                        v101 = MEMORY[0x277D86220];
                        v102 = "failed rotating non-temporal depth. please verify output buffer dimensions";
LABEL_228:
                        _os_log_error_impl(&dword_2402F6000, v101, OS_LOG_TYPE_ERROR, v102, pixelBufferOut, 2u);
                        goto LABEL_229;
                      }

                      [obj convertIntrinsicsFrom:pixelBuffer cropBy:v147 to:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
                      [v166 logPixelBuffer:*v145 name:"intermediateDepthOutProcessedRotated" priority:1 timestamp:v54];
                      if (v148)
                      {
                        v132 = v94;
                        if (v162)
                        {
                          v132 = *(obj + 31);
                        }

                        [obj rotateConfidenceAllowPixelFormatChange:v132 rotation:v146 outputConfidence:v148];
                        [v166 logPixelBuffer:*a13 name:"intermediateConfidenceOutProcessedRotated" priority:1 timestamp:v54];
                      }

                      if (a15 && v162)
                      {
                        [obj rotateConfidenceAllowPixelFormatChange:v94 rotation:v146 outputConfidence:a15];
                      }
                    }

                    if (a16 && v148)
                    {
                      v133 = [obj executorParameters];
                      v134 = [v133 pipelineParameters];
                      v135 = [v134 confidenceUnits];

                      v136 = [*(obj + 44) pipelineParameters];
                      v137 = [v136 confidenceLevelRanges];

                      if ([v137 confidenceUnits] != v135)
                      {
                        v138 = [v137 rangesForUnits:v135];

                        v137 = v138;
                      }

                      v40 = [ADUtils postProcessConfidence:v148 confidenceOutput:a16 rawConfidenceUnits:v135 outConfidenceUnits:1 confidenceLevelRanges:v137];
                      if (v40)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(pixelBufferOut[0]) = 0;
                          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed creating confidence levels", pixelBufferOut, 2u);
                        }

                        goto LABEL_230;
                      }

                      [v166 logPixelBuffer:a16 name:"intermediateConfidenceLevelsOut" timestamp:v54];
                    }

                    [v166 logPixelBuffer:v147 name:"outputDepth" timestamp:v54];
                    if (v148)
                    {
                      [v166 logPixelBuffer:v148 name:"outputUncertainty" timestamp:v54];
                    }

                    [v81 stopWithUTFString:"output rotation"];
                    kdebug_trace();
                    if (v95 != 1)
                    {
                      [obj frameExecutionEnd];
                      v40 = 0;
                      goto LABEL_230;
                    }
                  }

                  goto LABEL_221;
                }

                v108 = [obj executorParameters];
                v109 = [v108 temporalConsistencyMethod] == 1;

                if (v109)
                {
                  v110 = *(obj + 9) - 1;
                  v111 = 0.0;
                  if (v110 <= 2)
                  {
                    v111 = flt_240407138[v110];
                  }

                  v112 = __sincosf_stret(v111);
                  cosval_low = LODWORD(v112.__cosval);
                  cosval_low.f32[1] = -v112.__sinval;
                  v143 = cosval_low;
                  sinval_low = LODWORD(v112.__sinval);
                  sinval_low.i32[1] = LODWORD(v112.__cosval);
                  v165 = sinval_low;
                  v175 = __invert_f4(*(obj + 272));
                  v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v175.columns[1].f32[0]), a3, *v175.columns[1].f32, 1), a4, v175.columns[1], 2), a5, v175.columns[1], 3);
                  v142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v175.columns[0].f32[0]), a3, *v175.columns[0].f32, 1), a4, v175.columns[0], 2), a5, v175.columns[0], 3);
                  v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v175.columns[2].f32[0]), a3, *v175.columns[2].f32, 1), a4, v175.columns[2], 2), a5, v175.columns[2], 3);
                  v139 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v175.columns[3].f32[0]), a3, *v175.columns[3].f32, 1), a4, v175.columns[3], 2), a5, v175.columns[3], 3);
                  v175.columns[2] = xmmword_240406E10;
                  v175.columns[3] = xmmword_240406E20;
                  v175.columns[0] = v143;
                  v175.columns[1] = v165;
                  v176 = __invert_f4(v175);
                  v115 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, v112.__cosval), v141, *v143.f32, 1), 0, v140), 0, v139);
                  v116 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, v112.__sinval), v141, *v165.f32, 1), 0, v140), 0, v139);
                  v117 = vmlaq_f32(vmulq_f32(v142, 0), 0, v141);
                  v118 = vmlaq_f32(vaddq_f32(v140, v117), 0, v139);
                  v119 = vaddq_f32(v139, vmlaq_f32(v117, 0, v140));
                  v120 = [*(obj + 44) warpPreviousDepth:*(obj + 28) intoCurrentDepth:*(obj + 25) previousConfidence:*(obj + 30) intoCurrentConfidence:*(obj + 26) usingPoseDelta:*(obj + 42) previousCalibration:v98 currentCalibration:{*vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176.columns[0], v115.f32[0]), v176.columns[1], *v115.f32, 1), v176.columns[2], v115, 2), v176.columns[3], v115, 3).i64, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176.columns[0], v116.f32[0]), v176.columns[1], *v116.f32, 1), v176.columns[2], v116, 2), v176.columns[3], v116, 3).i64, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176.columns[0], v118.f32[0]), v176.columns[1], *v118.f32, 1), v176.columns[2], v118, 2), v176.columns[3], v118, 3).i64, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176.columns[0], v119.f32[0]), v176.columns[1], *v119.f32, 1), v176.columns[2], v119, 2), v176.columns[3], v119, 3).i64}];
LABEL_183:
                  v40 = v120;
                  if (v120)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_230;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v128 = MEMORY[0x277D86220];
                    v129 = "failed warping depth";
                  }

                  else
                  {
                    [v166 logPixelBuffer:*(obj + 25) name:"intermediatePrevWarpedDepth" priority:1 timestamp:v54];
                    [v166 logPixelBuffer:*(obj + 26) name:"intermediatePrevWarpedConf" priority:1 timestamp:v54];
                    v40 = [*(obj + 44) fuseCurrentDepth:v144 previousDepth:*(obj + 25) intoOutputDepth:v106 currentConfidence:v94 previousConfidence:*(obj + 26) intoOutputConfidence:v107];
                    if (!v40)
                    {
                      goto LABEL_220;
                    }

                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_230;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v128 = MEMORY[0x277D86220];
                    v129 = "failed fusing depth";
                  }

                  _os_log_error_impl(&dword_2402F6000, v128, OS_LOG_TYPE_ERROR, v129, pixelBufferOut, 2u);
                  goto LABEL_230;
                }

                v126 = [obj executorParameters];
                v127 = [v126 temporalConsistencyMethod] == 2;

                if (v127)
                {
                  v120 = [*(obj + 44) warpPreviousDepth:*(obj + 28) intoCurrentDepth:*(obj + 25) previousConfidence:*(obj + 30) intoCurrentConfidence:*(obj + 26) usingOpticalFlow:*(obj + 27)];
                  goto LABEL_183;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(pixelBufferOut[0]) = 0;
                  v130 = MEMORY[0x277D86220];
                  v131 = "unknown temporal consistency method";
                  goto LABEL_233;
                }
              }

              else
              {
                v103 = [obj executorParameters];
                v104 = [v103 temporalConsistencyMethod] == 1;

                if (!v104)
                {
                  v98 = 0;
                  goto LABEL_157;
                }

                [v81 stopWithUTFString:"postprocess depth"];
                kdebug_trace();
                v95 = v164 - 5;
                if (v164 < 5)
                {
                  v98 = 0;
                  goto LABEL_221;
                }

                kdebug_trace();
                [v81 startWithUTFString:"preprocess calibration"];
                if (!*(obj + 42))
                {
                  obj[256] = 1;
                }

                v121 = CVPixelBufferGetWidth(*(obj + 25));
                v122 = CVPixelBufferGetHeight(*(obj + 25));
                v98 = [v154 mutableCopy];
                v123 = [obj executorParameters];
                v124 = [v123 ignoreDistortionInDepthReprojection];

                if (v124)
                {
                  v125 = objc_opt_new();
                  [v98 setDistortionModel:v125];
                }

                [v98 crop:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
                if ([v98 adjustForImageRotation:*(obj + 9)])
                {
                  if ([v98 scale:{v121, v122}])
                  {
                    [v166 logCalibration:v98 name:"intermediateScaledCalibration" priority:1 timestamp:v54];
                    v105 = "preprocess calibration";
                    goto LABEL_158;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(pixelBufferOut[0]) = 0;
                    v130 = MEMORY[0x277D86220];
                    v131 = "failed scaling calibration";
                    goto LABEL_233;
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(pixelBufferOut[0]) = 0;
                  v130 = MEMORY[0x277D86220];
                  v131 = "failed rotating calibration";
LABEL_233:
                  _os_log_error_impl(&dword_2402F6000, v130, OS_LOG_TYPE_ERROR, v131, pixelBufferOut, 2u);
                  v40 = -22951;
                  goto LABEL_230;
                }
              }

              v40 = -22951;
              goto LABEL_230;
            }
          }

LABEL_112:
          v40 = -22977;
          goto LABEL_120;
        }
      }

      v88 = *(obj + 19);
      if (v88)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(v88);
        MEMORY[0x245CBFCB0]();
      }
    }

    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
    CVPixelBufferGetPixelFormatType(pixelBuffer);
    CVPixelBufferGetWidth(v78);
    CVPixelBufferGetHeight(v78);
    CVPixelBufferGetPixelFormatType(v78);
    PixelBufferUtilsSession::createCropScaleConvertRotateSession();
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_106;
  }

  LOWORD(pixelBufferOut[0]) = 0;
  v86 = MEMORY[0x277D86220];
  v87 = "cannot execute on multiple point clouds without aggregation information";
LABEL_128:
  _os_log_error_impl(&dword_2402F6000, v86, OS_LOG_TYPE_ERROR, v87, pixelBufferOut, 2u);
  v40 = -22953;
LABEL_121:

LABEL_122:
  kdebug_trace();
  objc_sync_exit(obj);

  return v40;
}

- (uint64_t)executeWithColor:(double)a3 colorCameraCalibration:(double)a4 colorWorldToPlatformTransform:(double)a5 pointCloud:(uint64_t)a6 outDepthMap:(uint64_t)a7 outConfMap:(void *)a8 outNonTemporalyConsistentDepthMap:(void *)a9 outNonTemporalyConsistentConfMap:(uint64_t)a10 outConfidenceLevels:(uint64_t)a11
{
  v34[1] = *MEMORY[0x277D85DE8];
  v20 = a8;
  v21 = a9;
  v22 = v21;
  v33 = a10;
  v32 = a11;
  if (v21)
  {
    v34[0] = v21;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  }

  else
  {
    v23 = 0;
  }

  if (a10)
  {
    v24 = &v33;
  }

  else
  {
    v24 = 0;
  }

  v25 = &v32;
  if (!a11)
  {
    v25 = 0;
  }

  v26 = [a1 executeWithColor:a7 colorCameraCalibration:v20 colorWorldToPlatformTransform:v23 pointClouds:0 lidarCameraCalibration:0 pointCloudWorldToPlatformTransforms:v24 outDepthMap:a2 outConfMap:a3 outNonTemporalyConsistentDepthMap:a4 outNonTemporalyConsistentConfMap:a5 outConfidenceLevels:{v25, a12, a13, a14}];
  if (v22)
  {
  }

  return v26;
}

- (uint64_t)executeWithColor:(double)a3 pointCloud:(double)a4 outDepthMap:(double)a5 outConfMap:(uint64_t)a6 worldToCameraTransform:(uint64_t)a7 cameraCalibration:(void *)a8
{
  v25[1] = *MEMORY[0x277D85DE8];
  v16 = a8;
  v17 = a11;
  if (v16)
  {
    v25[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 executeWithColor:a7 colorCameraCalibration:v17 colorWorldToPlatformTransform:v18 pointClouds:0 lidarCameraCalibration:0 pointCloudWorldToPlatformTransforms:a9 outDepthMap:a2 outConfMap:{a3, a4, a5, a10}];
  if (v16)
  {
  }

  return v19;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 rotationPreference:(unint64_t)a6
{
  v7 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = self;
  objc_sync_enter(v13);
  kdebug_trace();
  v14 = [(ADJasperColorPipeline *)v13->_pipeline inferenceDescriptor];
  v15 = [(ADExecutor *)v13 executorParameters];
  v13->_opticalFlowAllocated = [v15 temporalConsistencyMethod] == 2;

  v16 = [(ADExecutor *)v13 executorParameters];
  v13->_vioTemporalAllocated = [v16 temporalConsistencyMethod] != 0;

  v17 = [v14 colorInput];
  v18 = [v17 imageDescriptor];
  v19 = [(ADExecutor *)v13 prepareForEngineType:a3 roi:v18 descriptorForROI:v7 exifOrientation:a6 rotationPreference:v14 inferenceDescriptor:x, y, width, height];

  if (!v19)
  {
    v13->_firstTimeExecution = 1;
    v19 = [(ADJasperColorExecutor *)v13 allocateIntermediateBuffers];
    if (v13->_opticalFlowAllocated)
    {
      v20 = [(ADJasperColorPipeline *)v13->_pipeline LKTTexturesDescriptor];
      v21 = [[ADLKTExecutor alloc] initWithDescriptor:v20 forLayout:[(ADExecutor *)v13 layout]];
      lktExecutor = v13->_lktExecutor;
      v13->_lktExecutor = v21;
    }

    colorProcessingSession = v13->_colorProcessingSession;
    if (colorProcessingSession)
    {
      PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
      MEMORY[0x245CBFCB0]();
      v13->_colorProcessingSession = 0;
    }

    v24 = [(ADExecutor *)v13 executorParameters];
    v25 = [v24 pipelineParameters];
    v26 = [v25 deviceName];
    if (![ADDeviceConfiguration hasLidarToColorIncreasedBaseline:v26])
    {
      goto LABEL_9;
    }

    v27 = [objc_opt_class() defaults];
    v28 = [v27 BOOLForKey:kADDeviceConfigurationKeyJasperColorRemoveShortRangeOccludedPointsOnLargeBaselineDevices];

    if (v28)
    {
      v29 = objc_opt_new();
      pcRefiner = v13->_pcRefiner;
      v13->_pcRefiner = v29;

      v24 = [(ADExecutor *)v13 executorParameters];
      v25 = [v24 pipelineParameters];
      v26 = [v25 pointCloudFilter];
      [(ADAggregatedPointCloudRefiner *)v13->_pcRefiner setFilter:v26];
LABEL_9:
    }
  }

  kdebug_trace();
  objc_sync_exit(v13);

  return v19;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 useTemporalConsistency:(BOOL)a6 rotationPreference:(unint64_t)a7
{
  v7 = a6;
  v8 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "-[prepareForEngineType:roi:exifOrientation:useTemporalConsistency:rotationPreference:] is deprecated. please use temporalConsistencyMethod property in the executor parameters instead", v18, 2u);
  }

  if (v7)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ADExecutor *)self executorParameters];
  [v16 setTemporalConsistencyMethod:v15];

  return [(ADJasperColorExecutor *)self prepareForEngineType:a3 roi:v8 exifOrientation:0 rotationPreference:x, y, width, height];
}

- (int64_t)prepareForEngineType:(unint64_t)a3 roi:(CGRect)a4 exifOrientation:(unsigned int)a5 useTemporalConsistency:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "-[prepareForEngineType:roi:exifOrientation:useTemporalConsistency:] is deprecated. please use temporalConsistencyMethod property in the executor parameters instead", v15, 2u);
  }

  return [(ADJasperColorExecutor *)self prepareForEngineType:a3 roi:v7 exifOrientation:v6 useTemporalConsistency:0 rotationPreference:x, y, width, height];
}

- (int64_t)allocateIntermediateBuffers
{
  v3 = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
  v4 = [v3 depthOutput];
  v5 = [v4 imageDescriptor];

  [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v5 pixelFormat], &self->_itmPostProcessedDepth, v6, v7);
  v8 = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
  v9 = [v8 confidenceOutput];
  v10 = [v9 imageDescriptor];

  [v10 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v10 pixelFormat], &self->_itmPostProcessedConf, v11, v12);
  if (self->_itmPostProcessedDepth && self->_itmPostProcessedConf)
  {
    if (self->_opticalFlowAllocated || self->_vioTemporalAllocated)
    {
      [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v5 pixelFormat], &self->_itmPrevProcessedFusedDepth, v13, v14);
      [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v5 pixelFormat], &self->_itmWarpedPrevDepth, v15, v16);
      [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v5 pixelFormat], &self->_itmCurrProcessedFusedDepth, v17, v18);
      [v10 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v10 pixelFormat], &self->_itmPrevProcessedFusedConf, v19, v20);
      [v10 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v10 pixelFormat], &self->_itmCurrProcessedFusedConf, v21, v22);
      [v10 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v10 pixelFormat], &self->_itmWarpedPrevConf, v23, v24);
      v25 = [(ADJasperColorPipeline *)self->_pipeline LKTTexturesDescriptor];
      v26 = [v25 shiftmapDescriptor];

      [v26 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v26 pixelFormat], &self->_itmOpticalFlow, v27, v28);
    }

    [(ADJasperColorExecutor *)self deallocateEspressoBuffers];
    v29 = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
    v30 = [v29 colorInput];
    v31 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:v30];

    if (!v31)
    {
      espressoRunner = self->super._espressoRunner;
      v33 = [v29 jasperInput];
      self->_itmPreProcessedJasper = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v33];

      v34 = self->super._espressoRunner;
      v35 = [v29 depthOutput];
      self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v34 createAndRegisterPixelBufferForDescriptor:v35];

      v36 = self->super._espressoRunner;
      v37 = [v29 confidenceOutput];
      self->_itmUnprocessedConf = [(ADEspressoRunnerProtocol *)v36 createAndRegisterPixelBufferForDescriptor:v37];

      if (self->_itmPreProcessedJasper && self->_itmUnprocessedDepth && self->_itmUnprocessedConf)
      {
        if (!self->_opticalFlowAllocated && !self->_vioTemporalAllocated || self->_itmCurrProcessedFusedDepth && self->_itmPrevProcessedFusedDepth && self->_itmOpticalFlow)
        {
          v31 = 0;
        }

        else
        {
          [(ADJasperColorExecutor *)self deallocateEspressoBuffers];
          v31 = -22965;
        }
      }

      else
      {
        [(ADJasperColorExecutor *)self deallocateEspressoBuffers];
        v31 = -22971;
      }
    }
  }

  else
  {
    v31 = -22965;
  }

  return v31;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  self->_itmPreProcessedJasper = 0;
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  self->_itmUnprocessedDepth = 0;
  CVPixelBufferRelease(self->_itmUnprocessedConf);
  self->_itmUnprocessedConf = 0;
}

- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)a3 parameters:(id)a4
{
  v6 = a4;
  v15 = 335686668;
  v16 = 0u;
  v17 = 0u;
  kdebug_trace();
  v14.receiver = self;
  v14.super_class = ADJasperColorExecutor;
  v7 = [(ADExecutor *)&v14 init];
  if (v7)
  {
    if (!v6)
    {
      v6 = objc_opt_new();
    }

    v8 = [ADJasperColorPipeline alloc];
    v9 = [v6 pipelineParameters];
    v10 = [(ADJasperColorPipeline *)v8 initWithInputPrioritization:a3 andParameters:v9];
    pipeline = v7->_pipeline;
    v7->_pipeline = v10;

    if (!v7->_pipeline)
    {
      v12 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v7 setExecutorParameters:v6];
    v7->_colorProcessingSession = 0;
    v7->_itmPreProcessedJasper = 0;
    v7->_itmUnprocessedDepth = 0;
    v7->_itmPostProcessedDepth = 0;
    v7->_itmUnprocessedConf = 0;
    v7->_itmPostProcessedConf = 0;
    v7->_itmPrevProcessedFusedDepth = 0;
    v7->_itmPrevProcessedFusedConf = 0;
    v7->_itmCurrProcessedFusedConf = 0;
    v7->_itmWarpedPrevDepth = 0;
    v7->_itmWarpedPrevConf = 0;
    v7->_itmOpticalFlow = 0;
    v7->_firstTimeExecution = 1;
    v7->_opticalFlowAllocated = 0;
    v7->_vioTemporalAllocated = 0;
  }

  v12 = v7;
LABEL_8:
  kdebug_trace();

  return v12;
}

- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(ADJasperColorExecutor *)self initWithInputPrioritization:a3 parameters:v5];

  return v6;
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyJasperColorRemoveShortRangeOccludedPointsOnLargeBaselineDevices;
    v7[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADJasperColorExecutor defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[145];

  return v3;
}

@end