@interface ADJasperColorV2Pipeline
- (ADJasperColorV2Pipeline)initWithInputPrioritization:(int64_t)a3 espressoEngine:(unint64_t)a4 andParameters:(id)a5;
- (int64_t)postProcessDepth:(__CVBuffer *)a3 output:(__CVBuffer *)a4 depthRoi:(CGRect)a5;
- (int64_t)postProcessDepth:(__CVBuffer *)a3 uncertainty:(__CVBuffer *)a4 filteredPointCloud:(id)a5 outputDepth:(__CVBuffer *)a6 outputUncertainty:(__CVBuffer *)a7 depthRoi:(CGRect)a8;
- (int64_t)postProcessUncertainty:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5;
- (int64_t)projectJasperPoints:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6 filteredPoints:(id *)a7;
- (uint64_t)changePointCloudPOV:(double)a3 targetCamera:(double)a4 jasperToCameraTransform:(uint64_t)a5 outputPointCloud:(uint64_t)a6;
@end

@implementation ADJasperColorV2Pipeline

- (int64_t)postProcessUncertainty:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5
{
  kdebug_trace();
  v8 = [ADUtils postProcessConfidence:a3 confidenceOutput:a4 rawConfidenceUnits:3 outConfidenceUnits:a5 confidenceLevelRanges:0];
  kdebug_trace();
  return v8;
}

- (int64_t)postProcessDepth:(__CVBuffer *)a3 output:(__CVBuffer *)a4 depthRoi:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  kdebug_trace();
  v11 = [ADUtils postProcessDepth:a3 depthOutput:a4 inputRoi:x, y, width, height];
  kdebug_trace();
  return v11;
}

- (int64_t)postProcessDepth:(__CVBuffer *)a3 uncertainty:(__CVBuffer *)a4 filteredPointCloud:(id)a5 outputDepth:(__CVBuffer *)a6 outputUncertainty:(__CVBuffer *)a7 depthRoi:(CGRect)a8
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v68 = *MEMORY[0x277D85DE8];
  v47 = a5;
  v50 = 335687404;
  v51 = 0u;
  v52 = 0u;
  kdebug_trace();
  if (!a3 || !a4 || !a6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = a3;
      v58 = 2048;
      v59 = a4;
      v60 = 2048;
      v61 = a6;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Function arguments depth, uncertainty, outputDepth must not be nil (%p,%p,%p)", buf, 0x20u);
    }

    v24 = -22953;
    goto LABEL_28;
  }

  v16 = CVPixelBufferGetWidth(a3);
  v17 = CVPixelBufferGetHeight(a3);
  v18 = CVPixelBufferGetWidth(a4);
  v19 = CVPixelBufferGetHeight(a4);
  v20 = CVPixelBufferGetWidth(a6);
  v21 = CVPixelBufferGetHeight(a6);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v44 = CVPixelBufferGetPixelFormatType(a6);
  if (v17 != v19 || v16 != v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = v16;
      v58 = 2048;
      v59 = v17;
      v60 = 2048;
      v61 = v18;
      v62 = 2048;
      v63 = *&v19;
      v22 = MEMORY[0x277D86220];
      v23 = "Depth dimensions (%lu,%lu) do not match uncertainty dimensions (%lu,%lu)";
      goto LABEL_22;
    }

LABEL_27:
    v24 = -22957;
    goto LABEL_28;
  }

  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  if (CGRectIsEmpty(v69))
  {
    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
    width = CVPixelBufferGetWidth(a3);
    height = CVPixelBufferGetHeight(a3);
  }

  if (width > v20 || height > v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = v20;
      v58 = 2048;
      v59 = v21;
      v60 = 2048;
      v61 = *&width;
      v62 = 2048;
      v63 = height;
      v22 = MEMORY[0x277D86220];
      v23 = "Output depth dimensions (%lu,%lu) are smaller than ROI (%f,%f)";
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (a7 && (width > CVPixelBufferGetWidth(a7) || height > CVPixelBufferGetHeight(a7)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = CVPixelBufferGetWidth(a7);
      v58 = 2048;
      v59 = CVPixelBufferGetHeight(a7);
      v60 = 2048;
      v61 = *&width;
      v62 = 2048;
      v63 = height;
      v22 = MEMORY[0x277D86220];
      v23 = "Output uncertainty dimensions (%lu,%lu) are smaller than ROI (%f,%f)";
LABEL_22:
      _os_log_error_impl(&dword_2402F6000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x2Au);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (x + width > v16 || y + height > v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134219264;
      *&buf[4] = x;
      v58 = 2048;
      v59 = *&y;
      v60 = 2048;
      v61 = *&width;
      v62 = 2048;
      v63 = height;
      v64 = 2048;
      v65 = v16;
      v66 = 2048;
      v67 = v17;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ROI (%f,%f,%f,%f) does not fit into depth image (%lu,%lu)", buf, 0x3Eu);
    }

    goto LABEL_27;
  }

  v26 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v27 = CVPixelBufferGetPixelFormatType(a4);
  if (v26 != PixelBufferUtils::pixelSizeForPixelFormat(v27, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v32 = buf;
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, buf);
    if (v60 < 0)
    {
      v32 = *buf;
    }

    v33 = CVPixelBufferGetPixelFormatType(a4);
    PixelBufferUtils::pixelFormatAsString(v33, __p);
    if (v49 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    *v53 = 136315394;
    v54 = v32;
    v55 = 2080;
    v56 = v34;
    v35 = MEMORY[0x277D86220];
    v36 = "Input depth (%s) and uncertainty (%s) bits per pixel do not match";
LABEL_54:
    _os_log_error_impl(&dword_2402F6000, v35, OS_LOG_TYPE_ERROR, v36, v53, 0x16u);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_27;
  }

  if (a7)
  {
    v28 = PixelBufferUtils::pixelSizeForPixelFormat(v44, 0);
    v29 = CVPixelBufferGetPixelFormatType(a7);
    if (v28 != PixelBufferUtils::pixelSizeForPixelFormat(v29, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v37 = buf;
      PixelBufferUtils::pixelFormatAsString(v44, buf);
      if (v60 < 0)
      {
        v37 = *buf;
      }

      v38 = CVPixelBufferGetPixelFormatType(a7);
      PixelBufferUtils::pixelFormatAsString(v38, __p);
      if (v49 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      *v53 = 136315394;
      v54 = v37;
      v55 = 2080;
      v56 = v39;
      v35 = MEMORY[0x277D86220];
      v36 = "Output depth (%s) and uncertainty (%s) bits per pixel do not match";
      goto LABEL_54;
    }
  }

  v30 = [(ADJasperColorV2PipelineParameters *)self->_pipelineParameters outputHighConfidencePixelsOnly];
  if (a7)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  if ((v31 & 1) == 0)
  {
    v24 = [ADUtils postProcessDepth:a3 depthOutput:a6 inputRoi:x, y, width, height];
    goto LABEL_28;
  }

  if (PixelFormatType == 1717855600 && v44 == 1717855600)
  {
    filterDepthAndUncertainty<float,float,false>(a3, a4, a6, a7, v47, self, x, y, width, height);
LABEL_79:
    v24 = 0;
    goto LABEL_28;
  }

  if (PixelFormatType == 1717855600 && v44 == 1751410032)
  {
    filterDepthAndUncertainty<float,half,false>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1717855600 && v44 == 1717856627)
  {
    filterDepthAndUncertainty<float,float,true>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1717855600 && v44 == 1751411059)
  {
    filterDepthAndUncertainty<float,half,true>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1717855600)
  {
    filterDepthAndUncertainty<half,float,false>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1751410032)
  {
    filterDepthAndUncertainty<half,half,false>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1717856627)
  {
    filterDepthAndUncertainty<half,float,true>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1751411059)
  {
    filterDepthAndUncertainty<half,half,true>(a3, a4, a6, a7, v47, self, x, y, width, height);
    goto LABEL_79;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, buf);
    v40 = SHIBYTE(v60);
    v41 = *buf;
    PixelBufferUtils::pixelFormatAsString(v44, __p);
    v42 = buf;
    if (v40 < 0)
    {
      v42 = v41;
    }

    if (v49 >= 0)
    {
      v43 = __p;
    }

    else
    {
      v43 = __p[0];
    }

    *v53 = 136315394;
    v54 = v42;
    v55 = 2080;
    v56 = v43;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported input (%s) and output (%s) formats combination", v53, 0x16u);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(*buf);
    }
  }

  v24 = -22956;
LABEL_28:
  kdebug_trace();

  return v24;
}

- (uint64_t)changePointCloudPOV:(double)a3 targetCamera:(double)a4 jasperToCameraTransform:(uint64_t)a5 outputPointCloud:(uint64_t)a6
{
  v11 = a7;
  v12 = a8;
  v13 = a9;
  v22 = 335679632;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  if (v11 && v13)
  {
    v14 = [v11 pointCloudByChangingPointOfViewByTransform:v12 to:{a1, a2, a3, a4}];
    if (v14)
    {
      [v13 appendPointsFrom:v14];
      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed changing point cloud POV", buf, 2u);
      }

      v15 = -22950;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Jasper inputs/outputs must not be nil", buf, 2u);
    }

    v15 = -22953;
  }

  kdebug_trace();

  return v15;
}

- (int64_t)projectJasperPoints:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6 filteredPoints:(id *)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v25 = 335679632;
  v26 = 0u;
  v27 = 0u;
  kdebug_trace();
  if (a6)
  {
    if (!v15)
    {
      PixelBufferUtils::blacken(a6, v16);
      v20 = 0;
      goto LABEL_11;
    }

    pcRefiner = self->_pcRefiner;
    if (pcRefiner)
    {
      [(ADAggregatedPointCloudRefiner *)pcRefiner pointCloudByRemovingPeridotShortRangeOccludedPoints:v15];
      v15 = v18 = v15;

      if (!a7)
      {
LABEL_6:
        v20 = [v15 projectJasperPointsCroppedBy:a5 rotatedBy:a6 andScaledInto:{x, y, width, height}];
        goto LABEL_11;
      }
    }

    else
    {
      v22 = [(ADJasperColorV2PipelineParameters *)self->_pipelineParameters pointCloudFilter];
      v23 = [v15 pointCloudByApplyingFilter:v22];

      v15 = v23;
      if (!a7)
      {
        goto LABEL_6;
      }
    }

    v19 = v15;
    *a7 = v15;
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Output buffer must not be nil", v24, 2u);
  }

  v20 = -22953;
LABEL_11:
  kdebug_trace();

  return v20;
}

- (ADJasperColorV2Pipeline)initWithInputPrioritization:(int64_t)a3 espressoEngine:(unint64_t)a4 andParameters:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v30 = 335684564;
  v31 = a3;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  kdebug_trace();
  v29.receiver = self;
  v29.super_class = ADJasperColorV2Pipeline;
  v9 = [(ADJasperColorV2Pipeline *)&v29 init];
  if (v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    pipelineParameters = v9->_pipelineParameters;
    v9->_pipelineParameters = v10;

    v12 = [(ADPipelineParameters *)v9->_pipelineParameters deviceName];
    v13 = [ADDeviceConfiguration getLidarType:v12];

    if (v13 == 2)
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v14 = @"D3PQuality";
          goto LABEL_16;
        }

LABEL_12:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v15 = [ADUtils prioritizationAsString:a3];
          *buf = 138412290;
          v36 = v15;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "did not find network for pipeline ADJasperColorV2Pipeline prioritization %@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v14 = @"D3PBalanced";
    }

    else if (a3 == 2)
    {
      v14 = @"DAPIBalanced";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v14 = @"DAPIQuality";
    }

LABEL_16:
    [(ADJasperColorV2PipelineParameters *)v9->_pipelineParameters uncertaintyThreshold];
    v16 = [ADNetworkProvider providerForNetwork:v14];
    networkProvider = v9->_networkProvider;
    v9->_networkProvider = v16;

    if (v9->_networkProvider)
    {
      v18 = [[ADEspressoJasperColorV2InferenceDescriptor alloc] initWithNetworkProvider:v9->_networkProvider espressoEngine:a4 lidarType:v13];
      inferenceDesc = v9->_inferenceDesc;
      v9->_inferenceDesc = v18;

      v20 = [(ADJasperColorV2Pipeline *)v9 pipelineParameters];
      v21 = [v20 deviceName];
      v22 = [ADDeviceConfiguration hasLidarToColorIncreasedBaseline:v21];

      if (v22)
      {
        v23 = objc_opt_new();
        pcRefiner = v9->_pcRefiner;
        v9->_pcRefiner = v23;

        v25 = [(ADJasperColorV2Pipeline *)v9 pipelineParameters];
        v26 = [v25 pointCloudFilter];
        [(ADAggregatedPointCloudRefiner *)v9->_pcRefiner setFilter:v26];
      }

      goto LABEL_19;
    }

LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

LABEL_19:
  v27 = v9;
LABEL_21:
  kdebug_trace();

  return v27;
}

@end