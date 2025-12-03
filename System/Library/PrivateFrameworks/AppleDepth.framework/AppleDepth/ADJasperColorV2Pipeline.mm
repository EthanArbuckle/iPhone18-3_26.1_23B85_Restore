@interface ADJasperColorV2Pipeline
- (ADJasperColorV2Pipeline)initWithInputPrioritization:(int64_t)prioritization espressoEngine:(unint64_t)engine andParameters:(id)parameters;
- (int64_t)postProcessDepth:(__CVBuffer *)depth output:(__CVBuffer *)output depthRoi:(CGRect)roi;
- (int64_t)postProcessDepth:(__CVBuffer *)depth uncertainty:(__CVBuffer *)uncertainty filteredPointCloud:(id)cloud outputDepth:(__CVBuffer *)outputDepth outputUncertainty:(__CVBuffer *)outputUncertainty depthRoi:(CGRect)roi;
- (int64_t)postProcessUncertainty:(__CVBuffer *)uncertainty outputConfidence:(__CVBuffer *)confidence confidenceUnits:(unint64_t)units;
- (int64_t)projectJasperPoints:(id)points cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer filteredPoints:(id *)filteredPoints;
- (uint64_t)changePointCloudPOV:(double)v targetCamera:(double)camera jasperToCameraTransform:(uint64_t)transform outputPointCloud:(uint64_t)cloud;
@end

@implementation ADJasperColorV2Pipeline

- (int64_t)postProcessUncertainty:(__CVBuffer *)uncertainty outputConfidence:(__CVBuffer *)confidence confidenceUnits:(unint64_t)units
{
  kdebug_trace();
  v8 = [ADUtils postProcessConfidence:uncertainty confidenceOutput:confidence rawConfidenceUnits:3 outConfidenceUnits:units confidenceLevelRanges:0];
  kdebug_trace();
  return v8;
}

- (int64_t)postProcessDepth:(__CVBuffer *)depth output:(__CVBuffer *)output depthRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  kdebug_trace();
  height = [ADUtils postProcessDepth:depth depthOutput:output inputRoi:x, y, width, height];
  kdebug_trace();
  return height;
}

- (int64_t)postProcessDepth:(__CVBuffer *)depth uncertainty:(__CVBuffer *)uncertainty filteredPointCloud:(id)cloud outputDepth:(__CVBuffer *)outputDepth outputUncertainty:(__CVBuffer *)outputUncertainty depthRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v68 = *MEMORY[0x277D85DE8];
  cloudCopy = cloud;
  v50 = 335687404;
  v51 = 0u;
  v52 = 0u;
  kdebug_trace();
  if (!depth || !uncertainty || !outputDepth)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = depth;
      v58 = 2048;
      uncertaintyCopy = uncertainty;
      v60 = 2048;
      outputDepthCopy = outputDepth;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Function arguments depth, uncertainty, outputDepth must not be nil (%p,%p,%p)", buf, 0x20u);
    }

    height = -22953;
    goto LABEL_28;
  }

  v16 = CVPixelBufferGetWidth(depth);
  v17 = CVPixelBufferGetHeight(depth);
  v18 = CVPixelBufferGetWidth(uncertainty);
  v19 = CVPixelBufferGetHeight(uncertainty);
  v20 = CVPixelBufferGetWidth(outputDepth);
  v21 = CVPixelBufferGetHeight(outputDepth);
  PixelFormatType = CVPixelBufferGetPixelFormatType(depth);
  v44 = CVPixelBufferGetPixelFormatType(outputDepth);
  if (v17 != v19 || v16 != v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = v16;
      v58 = 2048;
      uncertaintyCopy = v17;
      v60 = 2048;
      outputDepthCopy = v18;
      v62 = 2048;
      v63 = *&v19;
      v22 = MEMORY[0x277D86220];
      v23 = "Depth dimensions (%lu,%lu) do not match uncertainty dimensions (%lu,%lu)";
      goto LABEL_22;
    }

LABEL_27:
    height = -22957;
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
    width = CVPixelBufferGetWidth(depth);
    height = CVPixelBufferGetHeight(depth);
  }

  if (width > v20 || height > v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = v20;
      v58 = 2048;
      uncertaintyCopy = v21;
      v60 = 2048;
      outputDepthCopy = *&width;
      v62 = 2048;
      v63 = height;
      v22 = MEMORY[0x277D86220];
      v23 = "Output depth dimensions (%lu,%lu) are smaller than ROI (%f,%f)";
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (outputUncertainty && (width > CVPixelBufferGetWidth(outputUncertainty) || height > CVPixelBufferGetHeight(outputUncertainty)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = CVPixelBufferGetWidth(outputUncertainty);
      v58 = 2048;
      uncertaintyCopy = CVPixelBufferGetHeight(outputUncertainty);
      v60 = 2048;
      outputDepthCopy = *&width;
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
      uncertaintyCopy = *&y;
      v60 = 2048;
      outputDepthCopy = *&width;
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
  v27 = CVPixelBufferGetPixelFormatType(uncertainty);
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

    v33 = CVPixelBufferGetPixelFormatType(uncertainty);
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

  if (outputUncertainty)
  {
    v28 = PixelBufferUtils::pixelSizeForPixelFormat(v44, 0);
    v29 = CVPixelBufferGetPixelFormatType(outputUncertainty);
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

      v38 = CVPixelBufferGetPixelFormatType(outputUncertainty);
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

  outputHighConfidencePixelsOnly = [(ADJasperColorV2PipelineParameters *)self->_pipelineParameters outputHighConfidencePixelsOnly];
  if (outputUncertainty)
  {
    v31 = 1;
  }

  else
  {
    v31 = outputHighConfidencePixelsOnly;
  }

  if ((v31 & 1) == 0)
  {
    height = [ADUtils postProcessDepth:depth depthOutput:outputDepth inputRoi:x, y, width, height];
    goto LABEL_28;
  }

  if (PixelFormatType == 1717855600 && v44 == 1717855600)
  {
    filterDepthAndUncertainty<float,float,false>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
LABEL_79:
    height = 0;
    goto LABEL_28;
  }

  if (PixelFormatType == 1717855600 && v44 == 1751410032)
  {
    filterDepthAndUncertainty<float,half,false>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1717855600 && v44 == 1717856627)
  {
    filterDepthAndUncertainty<float,float,true>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1717855600 && v44 == 1751411059)
  {
    filterDepthAndUncertainty<float,half,true>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1717855600)
  {
    filterDepthAndUncertainty<half,float,false>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1751410032)
  {
    filterDepthAndUncertainty<half,half,false>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1717856627)
  {
    filterDepthAndUncertainty<half,float,true>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
    goto LABEL_79;
  }

  if (PixelFormatType == 1751410032 && v44 == 1751411059)
  {
    filterDepthAndUncertainty<half,half,true>(depth, uncertainty, outputDepth, outputUncertainty, cloudCopy, self, x, y, width, height);
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

  height = -22956;
LABEL_28:
  kdebug_trace();

  return height;
}

- (uint64_t)changePointCloudPOV:(double)v targetCamera:(double)camera jasperToCameraTransform:(uint64_t)transform outputPointCloud:(uint64_t)cloud
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
    v14 = [v11 pointCloudByChangingPointOfViewByTransform:v12 to:{self, a2, v, camera}];
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

- (int64_t)projectJasperPoints:(id)points cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer filteredPoints:(id *)filteredPoints
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  pointsCopy = points;
  v25 = 335679632;
  v26 = 0u;
  v27 = 0u;
  kdebug_trace();
  if (buffer)
  {
    if (!pointsCopy)
    {
      PixelBufferUtils::blacken(buffer, v16);
      v20 = 0;
      goto LABEL_11;
    }

    pcRefiner = self->_pcRefiner;
    if (pcRefiner)
    {
      [(ADAggregatedPointCloudRefiner *)pcRefiner pointCloudByRemovingPeridotShortRangeOccludedPoints:pointsCopy];
      pointsCopy = v18 = pointsCopy;

      if (!filteredPoints)
      {
LABEL_6:
        v20 = [pointsCopy projectJasperPointsCroppedBy:by rotatedBy:buffer andScaledInto:{x, y, width, height}];
        goto LABEL_11;
      }
    }

    else
    {
      pointCloudFilter = [(ADJasperColorV2PipelineParameters *)self->_pipelineParameters pointCloudFilter];
      v23 = [pointsCopy pointCloudByApplyingFilter:pointCloudFilter];

      pointsCopy = v23;
      if (!filteredPoints)
      {
        goto LABEL_6;
      }
    }

    v19 = pointsCopy;
    *filteredPoints = pointsCopy;
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

- (ADJasperColorV2Pipeline)initWithInputPrioritization:(int64_t)prioritization espressoEngine:(unint64_t)engine andParameters:(id)parameters
{
  v37 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v30 = 335684564;
  prioritizationCopy = prioritization;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  kdebug_trace();
  v29.receiver = self;
  v29.super_class = ADJasperColorV2Pipeline;
  v9 = [(ADJasperColorV2Pipeline *)&v29 init];
  if (v9)
  {
    if (parametersCopy)
    {
      v10 = parametersCopy;
    }

    else
    {
      v10 = objc_opt_new();
    }

    pipelineParameters = v9->_pipelineParameters;
    v9->_pipelineParameters = v10;

    deviceName = [(ADPipelineParameters *)v9->_pipelineParameters deviceName];
    v13 = [ADDeviceConfiguration getLidarType:deviceName];

    if (v13 == 2)
    {
      if (prioritization != 2)
      {
        if (prioritization == 3)
        {
          v14 = @"D3PQuality";
          goto LABEL_16;
        }

LABEL_12:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v15 = [ADUtils prioritizationAsString:prioritization];
          *buf = 138412290;
          v36 = v15;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "did not find network for pipeline ADJasperColorV2Pipeline prioritization %@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v14 = @"D3PBalanced";
    }

    else if (prioritization == 2)
    {
      v14 = @"DAPIBalanced";
    }

    else
    {
      if (prioritization != 3)
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
      v18 = [[ADEspressoJasperColorV2InferenceDescriptor alloc] initWithNetworkProvider:v9->_networkProvider espressoEngine:engine lidarType:v13];
      inferenceDesc = v9->_inferenceDesc;
      v9->_inferenceDesc = v18;

      pipelineParameters = [(ADJasperColorV2Pipeline *)v9 pipelineParameters];
      deviceName2 = [pipelineParameters deviceName];
      v22 = [ADDeviceConfiguration hasLidarToColorIncreasedBaseline:deviceName2];

      if (v22)
      {
        v23 = objc_opt_new();
        pcRefiner = v9->_pcRefiner;
        v9->_pcRefiner = v23;

        pipelineParameters2 = [(ADJasperColorV2Pipeline *)v9 pipelineParameters];
        pointCloudFilter = [pipelineParameters2 pointCloudFilter];
        [(ADAggregatedPointCloudRefiner *)v9->_pcRefiner setFilter:pointCloudFilter];
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