@interface ADPCEDisparityColorExecutor
- (__CVBuffer)prevDisparity;
- (__CVBuffer)prevFeatures;
- (id)getIntermediates;
- (id)initForInputSource:(unint64_t)source parameters:(id)parameters;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithDisparity:(__CVBuffer *)disparity normalizationMultiplier:(float)multiplier normalizationOffset:(float)offset color:(__CVBuffer *)color outDisparity:(__CVBuffer *)outDisparity;
- (int64_t)postProcessDisparity:(__CVBuffer *)disparity output:(__CVBuffer *)output;
- (int64_t)preProcessDisparity:(__CVBuffer *)disparity normalizationMultiplier:(float)multiplier normalizationOffset:(float)offset output:(__CVBuffer *)output;
- (int64_t)prepareForEngineType:(unint64_t)type inputColorROI:(CGRect)i;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADPCEDisparityColorExecutor

- (id)getIntermediates
{
  v52[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v51[0] = @"name";
    v51[1] = @"image";
    v52[0] = @"PreProcessed Color";
    v52[1] = itmPreProcessedColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    [v3 addObject:v5];
  }

  itmProcessedUnfilteredDisparity = self->_itmProcessedUnfilteredDisparity;
  if (itmProcessedUnfilteredDisparity)
  {
    v49[0] = @"name";
    v49[1] = @"image";
    v50[0] = @"Processed Unfiltered Disparity";
    v50[1] = itmProcessedUnfilteredDisparity;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    [v3 addObject:v7];
  }

  itmPreProcessedDisparity = self->_itmPreProcessedDisparity;
  if (itmPreProcessedDisparity)
  {
    v47[0] = @"name";
    v47[1] = @"image";
    v48[0] = @"PreProcessed Disparity";
    v48[1] = itmPreProcessedDisparity;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [v3 addObject:v9];
  }

  itmUnprocessedOutputDisparity = self->_itmUnprocessedOutputDisparity;
  if (itmUnprocessedOutputDisparity)
  {
    v45[0] = @"name";
    v45[1] = @"image";
    v46[0] = @"Unprocessed OutputDisparity";
    v46[1] = itmUnprocessedOutputDisparity;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    [v3 addObject:v11];
  }

  itmPostProcessedDisparity = self->_itmPostProcessedDisparity;
  if (itmPostProcessedDisparity)
  {
    v43[0] = @"name";
    v43[1] = @"image";
    v44[0] = @"PostProcessed OutputDisparity";
    v44[1] = itmPostProcessedDisparity;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v3 addObject:v13];
  }

  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    v41[0] = @"name";
    v41[1] = @"image";
    v42[0] = @"Cropped ScaledColor";
    v42[1] = itmCroppedScaledColor;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v15];
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    v39[0] = @"name";
    v39[1] = @"image";
    v40[0] = @"Rotated Color";
    v40[1] = itmRotatedColor;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v3 addObject:v17];
  }

  itmCroppedScaledDisparity = self->_itmCroppedScaledDisparity;
  if (itmCroppedScaledDisparity)
  {
    v37[0] = @"name";
    v37[1] = @"image";
    v38[0] = @"Cropped Scaled Disparity";
    v38[1] = itmCroppedScaledDisparity;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 addObject:v19];
  }

  itmRotatedDisparity = self->_itmRotatedDisparity;
  if (itmRotatedDisparity)
  {
    v35[0] = @"name";
    v35[1] = @"image";
    v36[0] = @"Rotated Disparity";
    v36[1] = itmRotatedDisparity;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v3 addObject:v21];
  }

  itmPrevDisparity = self->_itmPrevDisparity;
  if (itmPrevDisparity)
  {
    v33[0] = @"name";
    v33[1] = @"image";
    v34[0] = @"Previous Disparity";
    v34[1] = itmPrevDisparity;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 addObject:v23];
  }

  itmPrevFeatures = self->_itmPrevFeatures;
  if (itmPrevFeatures)
  {
    v31[0] = @"name";
    v31[1] = @"image";
    v32[0] = @"Previous Features";
    v32[1] = itmPrevFeatures;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v3 addObject:v25];
  }

  itmFeaturesOutput = self->_itmFeaturesOutput;
  if (itmFeaturesOutput)
  {
    v29[0] = @"name";
    v29[1] = @"image";
    v30[0] = @"Output Features";
    v30[1] = itmFeaturesOutput;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v3 addObject:v27];
  }

  return v3;
}

- (void)dealloc
{
  [(ADPCEDisparityColorExecutor *)self deallocateEspressoBuffers];
  CVPixelBufferRelease(self->_itmProcessedUnfilteredDisparity);
  CVPixelBufferRelease(self->_itmCroppedScaledColor);
  CVPixelBufferRelease(self->_itmRotatedColor);
  CVPixelBufferRelease(self->_itmCroppedScaledDisparity);
  CVPixelBufferRelease(self->_itmRotatedDisparity);
  CVPixelBufferRelease(self->_itmPostProcessedDisparity);
  CVPixelBufferRelease(self->_preprocessorInputMetalHelper);
  CVPixelBufferRelease(self->_preprocessorOutputMetalHelper);
  CVPixelBufferRelease(self->_postprocessorInputMetalHelper);
  CVPixelBufferRelease(self->_postprocessorOutputMetalHelper);
  v3.receiver = self;
  v3.super_class = ADPCEDisparityColorExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (int64_t)executeWithDisparity:(__CVBuffer *)disparity normalizationMultiplier:(float)multiplier normalizationOffset:(float)offset color:(__CVBuffer *)color outDisparity:(__CVBuffer *)outDisparity
{
  v104[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Width = CVPixelBufferGetWidth(color);
  Height = CVPixelBufferGetHeight(color);
  if (!selfCopy->_isPrepared)
  {
    height = [(ADPCEDisparityColorExecutor *)selfCopy prepareForEngineType:selfCopy->super._engineType inputColorROI:0.0, 0.0, Width, Height];
    if (height)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_45;
    }
  }

  if (selfCopy->super._espressoRunner)
  {
    if (outDisparity)
    {
      executorParameters = [(ADExecutor *)selfCopy executorParameters];
      logger = [executorParameters logger];

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      v97 = v18;

      *buf = 335684600;
      v101 = 0u;
      v102 = 0u;
      kdebug_trace();
      [logger logPixelBuffer:disparity name:"inputDisparity" timestamp:v97];
      [logger logPixelBuffer:color name:"inputColor" timestamp:v97];
      v103[0] = @"DisparityNormalizationMultiplier";
      *&v19 = multiplier;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      v104[0] = v20;
      v103[1] = @"DisparityNormalizationOffset";
      *&v21 = offset;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      v104[1] = v22;
      v103[2] = @"PCEBias";
      v23 = MEMORY[0x277CCABB0];
      pipelineParameters = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline pipelineParameters];
      [pipelineParameters pceBias];
      v25 = [v23 numberWithFloat:?];
      v104[2] = v25;
      v103[3] = @"NetworkTrainingWidth";
      v26 = MEMORY[0x277CCABB0];
      pipelineParameters2 = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline pipelineParameters];
      v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(pipelineParameters2, "trainingWidth")}];
      v104[3] = v28;
      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:4];

      [logger logDictionary:v96 name:"frameMetadata" timestamp:v97];
      v29 = [MEMORY[0x277CED0C0] adjustLayout:objc_msgSend(MEMORY[0x277CED0C0] sourceOrientation:"layoutForSize:" toRotationPreference:{selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height), 1, 2}];
      x = selfCopy->super._inputRoi.origin.x;
      y = selfCopy->super._inputRoi.origin.y;
      v32 = selfCopy->super._inputRoi.size.width;
      v33 = selfCopy->super._inputRoi.size.height;
      executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
      LODWORD(pipelineParameters2) = [executorParameters2 disparityPreprocessingActive];

      if (!pipelineParameters2)
      {
        v37 = 0;
        goto LABEL_24;
      }

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      v36 = [executorParameters3 disparityRotation] == 3;

      if (v36)
      {
        x = selfCopy->super._inputRoi.origin.y;
        y = CVPixelBufferGetWidth(color) - selfCopy->super._inputRoi.origin.x;
        v32 = selfCopy->super._inputRoi.size.height;
        v33 = -selfCopy->super._inputRoi.size.width;
      }

      else
      {
        executorParameters4 = [(ADExecutor *)selfCopy executorParameters];
        v39 = [executorParameters4 disparityRotation] == 2;

        if (v39)
        {
          v37 = 0;
          x = CVPixelBufferGetWidth(color) - selfCopy->super._inputRoi.origin.x;
          y = CVPixelBufferGetHeight(color) - selfCopy->super._inputRoi.origin.y;
          v32 = -selfCopy->super._inputRoi.size.width;
          v33 = -selfCopy->super._inputRoi.size.height;
          goto LABEL_23;
        }

        executorParameters5 = [(ADExecutor *)selfCopy executorParameters];
        v41 = [executorParameters5 disparityRotation] == 1;

        if (!v41)
        {
          v37 = 0;
          goto LABEL_23;
        }

        v42 = CVPixelBufferGetHeight(color);
        y = selfCopy->super._inputRoi.origin.x;
        x = v42 - selfCopy->super._inputRoi.origin.y;
        v33 = selfCopy->super._inputRoi.size.width;
        v32 = -selfCopy->super._inputRoi.size.height;
      }

      v37 = 1;
LABEL_23:
      v105.origin.x = x;
      v105.origin.y = y;
      v105.size.width = v32;
      v105.size.height = v33;
      v106 = CGRectStandardize(v105);
      x = v106.origin.x;
      y = v106.origin.y;
      v32 = v106.size.width;
      v33 = v106.size.height;
LABEL_24:
      v43 = CVPixelBufferGetWidth(disparity);
      if (v37)
      {
        v44 = CVPixelBufferGetHeight(color);
      }

      else
      {
        v44 = CVPixelBufferGetWidth(color);
      }

      v45 = v44;
      v46 = CVPixelBufferGetHeight(disparity);
      if (v37)
      {
        v47 = CVPixelBufferGetWidth(color);
      }

      else
      {
        v47 = CVPixelBufferGetHeight(color);
      }

      v48 = (v43 / v45);
      v49 = (v46 / v47);
      v50 = floor(v32 * v48);
      v51 = floor(v33 * v49);
      v52 = [MEMORY[0x277CED0C0] adjustLayout:objc_msgSend(MEMORY[0x277CED0C0] sourceOrientation:"layoutForSize:" toRotationPreference:{v50, v51), 1, 2}];
      if (v37)
      {
        v52 = [MEMORY[0x277CED0C0] transposeLayout:v52];
      }

      if (v29 != v52)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v99 = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "color and disparity layouts don't match", v99, 2u);
        }

        height = -22957;
        goto LABEL_44;
      }

      executorParameters6 = [(ADExecutor *)selfCopy executorParameters];
      stepsToExecute = [executorParameters6 stepsToExecute];

      executorParameters7 = [(ADExecutor *)selfCopy executorParameters];
      timeProfiler = [executorParameters7 timeProfiler];

      if (stepsToExecute >= 1)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"preprocess color"];
        [(ADExecutor *)selfCopy frameExecutionStart];
        height = [ADUtils scaleConvertRotateImage:color rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:selfCopy->_itmPreProcessedColor scaleInto:&selfCopy->_itmCroppedScaledColor intermediateScalingBuffer:&selfCopy->_itmRotatedColor intermediateRotatingBuffer:1 useVT:selfCopy->super._inputRoi.origin.x, selfCopy->super._inputRoi.origin.y, selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height];
        if (height)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
LABEL_43:

LABEL_44:
            kdebug_trace();

            goto LABEL_45;
          }

          *v99 = 0;
          v56 = MEMORY[0x277D86220];
          v57 = "failed scaling color image";
LABEL_37:
          _os_log_error_impl(&dword_2402F6000, v56, OS_LOG_TYPE_ERROR, v57, v99, 2u);
          goto LABEL_43;
        }

        [logger logPixelBuffer:selfCopy->_itmPreProcessedColor name:"preProcessedColor" timestamp:v97];
        [timeProfiler stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (stepsToExecute != 1)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"preprocess disparity"];
          PixelFormatType = CVPixelBufferGetPixelFormatType(disparity);
          inferenceDescriptor = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
          disparityInput = [inferenceDescriptor disparityInput];
          imageDescriptor = [disparityInput imageDescriptor];
          v63 = 1751411059;
          v65 = [imageDescriptor pixelFormat] == 1751411059 && PixelFormatType == 1717856627;

          if (!v65)
          {
            inferenceDescriptor2 = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
            disparityInput2 = [inferenceDescriptor2 disparityInput];
            imageDescriptor2 = [disparityInput2 imageDescriptor];
            v70 = [imageDescriptor2 pixelFormat] == 1717856627 && PixelFormatType == 1751411059;

            if (v70)
            {
              v63 = 1717856627;
            }

            else
            {
              v63 = PixelFormatType;
            }
          }

          v71 = CVPixelBufferGetWidth(disparity);
          if ([ADUtils updatePixelBufferAllocationWithNewSize:v63 pixelFormat:&selfCopy->_itmProcessedUnfilteredDisparity pixelBuffer:v71, CVPixelBufferGetHeight(disparity)])
          {
            CVPixelBufferRelease(selfCopy->_itmCroppedScaledDisparity);
            selfCopy->_itmCroppedScaledDisparity = 0;
            CVPixelBufferRelease(selfCopy->_itmRotatedDisparity);
            selfCopy->_itmRotatedDisparity = 0;
          }

          height = [ADUtils scaleConvertRotateImage:disparity rotateBy:LOBYTE(selfCopy->super._rotationConstant) cropBy:selfCopy->_itmProcessedUnfilteredDisparity scaleInto:&selfCopy->_itmCroppedScaledDisparity intermediateScalingBuffer:&selfCopy->_itmRotatedDisparity intermediateRotatingBuffer:1 useVT:floor(x * v48), floor(y * v49), v50, v51];
          if (height)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_43;
            }

            *v99 = 0;
            v56 = MEMORY[0x277D86220];
            v57 = "failed scaling disparity image";
            goto LABEL_37;
          }

          [logger logPixelBuffer:selfCopy->_itmProcessedUnfilteredDisparity name:"preProcessedUnfilteredDisparity" timestamp:v97];
          executorParameters8 = [(ADExecutor *)selfCopy executorParameters];
          disparityPreprocessingActive = [executorParameters8 disparityPreprocessingActive];

          if (disparityPreprocessingActive)
          {
            *&v74 = multiplier;
            *&v75 = offset;
            height = [(ADPCEDisparityColorExecutor *)selfCopy preProcessDisparity:selfCopy->_itmProcessedUnfilteredDisparity normalizationMultiplier:selfCopy->_itmPreProcessedDisparity normalizationOffset:v74 output:v75];
            if (height)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_43;
              }

              *v99 = 0;
              v56 = MEMORY[0x277D86220];
              v57 = "failed to pre-process disparity";
              goto LABEL_37;
            }
          }

          else
          {
            PixelBufferUtils::copyPixelBuffer(selfCopy->_itmPreProcessedDisparity, selfCopy->_itmProcessedUnfilteredDisparity, 0);
          }

          [logger logPixelBuffer:selfCopy->_itmPreProcessedDisparity name:"preProcessedDisparity" timestamp:v97];
          [logger logPixelBuffer:selfCopy->_itmPrevDisparity name:"prevDisparity" timestamp:v97];
          [logger logPixelBuffer:selfCopy->_itmPrevFeatures name:"prevFeatures" timestamp:v97];
          [timeProfiler stopWithUTFString:"preprocess disparity"];
          kdebug_trace();
          if (stepsToExecute >= 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"network execution"];
            height = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
            if (height)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_43;
              }

              *v99 = 0;
              v56 = MEMORY[0x277D86220];
              v57 = "failed executing espresso plan";
              goto LABEL_37;
            }

            [logger logPixelBuffer:selfCopy->_itmUnprocessedOutputDisparity name:"outputDisparity" timestamp:v97];
            [logger logPixelBuffer:selfCopy->_itmFeaturesOutput name:"outputFeatures" timestamp:v97];
            [timeProfiler stopWithUTFString:"network execution"];
            kdebug_trace();
            if (stepsToExecute != 3)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"postprocess depth"];
              itmUnprocessedOutputDisparity = selfCopy->_itmUnprocessedOutputDisparity;
              executorParameters9 = [(ADExecutor *)selfCopy executorParameters];
              disparityPostprocessingActive = [executorParameters9 disparityPostprocessingActive];

              if (disparityPostprocessingActive)
              {
                v79 = CVPixelBufferGetWidth(selfCopy->_itmUnprocessedOutputDisparity);
                v80 = CVPixelBufferGetHeight(selfCopy->_itmUnprocessedOutputDisparity);
                [ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(selfCopy->_itmUnprocessedOutputDisparity) pixelFormat:&selfCopy->_itmPostProcessedDisparity pixelBuffer:v79, v80];
                height = [(ADPCEDisparityColorExecutor *)selfCopy postProcessDisparity:selfCopy->_itmUnprocessedOutputDisparity output:selfCopy->_itmPostProcessedDisparity];
                if (height)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_43;
                  }

                  *v99 = 0;
                  v56 = MEMORY[0x277D86220];
                  v57 = "failed to post-process disparity";
                  goto LABEL_37;
                }

                itmUnprocessedOutputDisparity = selfCopy->_itmPostProcessedDisparity;
              }

              [logger logPixelBuffer:itmUnprocessedOutputDisparity name:"postProcessedOutputDisparity" timestamp:v97];
              if (!*outDisparity)
              {
                *outDisparity = PixelBufferUtils::createPixelBufferWithSameSize(itmUnprocessedOutputDisparity, 0x66646973, 1);
              }

              height = [ADUtils postProcessDepth:itmUnprocessedOutputDisparity depthOutput:?];
              if (height)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_43;
                }

                *v99 = 0;
                v56 = MEMORY[0x277D86220];
                v57 = "failed converting disparity";
                goto LABEL_37;
              }

              [logger logPixelBuffer:*outDisparity name:"outputConvertedUnits" timestamp:v97];
              [timeProfiler stopWithUTFString:"postprocess depth"];
              kdebug_trace();
              if (stepsToExecute >= 5)
              {
                kdebug_trace();
                [timeProfiler startWithUTFString:"postprocess previous depth"];
                executorParameters10 = [(ADExecutor *)selfCopy executorParameters];
                temporalConsistencyActive = [executorParameters10 temporalConsistencyActive];

                if (temporalConsistencyActive)
                {
                  selfCopy->_prevDisparityIsZeros = 0;
                  espressoRunner = selfCopy->super._espressoRunner;
                  inferenceDescriptor3 = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
                  prevDisparityInput = [inferenceDescriptor3 prevDisparityInput];
                  inferenceDescriptor4 = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
                  disparityOutput = [inferenceDescriptor4 disparityOutput];
                  height = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevDisparity inputDescriptor:prevDisparityInput outputBuffer:&selfCopy->_itmUnprocessedOutputDisparity outputDescriptor:disparityOutput];

                  if (height)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_43;
                    }

                    *v99 = 0;
                    v56 = MEMORY[0x277D86220];
                    v57 = "failed updating previous disparity";
                    goto LABEL_37;
                  }

                  if (selfCopy->_itmPrevFeatures)
                  {
                    v90 = selfCopy->super._espressoRunner;
                    inferenceDescriptor5 = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
                    prevFeaturesInput = [inferenceDescriptor5 prevFeaturesInput];
                    inferenceDescriptor6 = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
                    featuresOutput = [inferenceDescriptor6 featuresOutput];
                    height = [(ADEspressoRunnerProtocol *)v90 updateFeedbackLoopInputBuffer:&selfCopy->_itmPrevFeatures inputDescriptor:prevFeaturesInput outputBuffer:&selfCopy->_itmFeaturesOutput outputDescriptor:featuresOutput];

                    if (height)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_43;
                      }

                      *v99 = 0;
                      v56 = MEMORY[0x277D86220];
                      v57 = "failed updating previous features";
                      goto LABEL_37;
                    }
                  }
                }

                else if (!selfCopy->_prevDisparityIsZeros)
                {
                  CVPixelBufferLockBaseAddress(selfCopy->_itmPrevDisparity, 0);
                  BaseAddress = CVPixelBufferGetBaseAddress(selfCopy->_itmPrevDisparity);
                  DataSize = CVPixelBufferGetDataSize(selfCopy->_itmPrevDisparity);
                  bzero(BaseAddress, DataSize);
                  CVPixelBufferUnlockBaseAddress(selfCopy->_itmPrevDisparity, 0);
                  selfCopy->_prevDisparityIsZeros = 1;
                }

                [timeProfiler stopWithUTFString:"postprocess previous depth"];
                kdebug_trace();
                if (stepsToExecute != 5)
                {
                  [(ADExecutor *)selfCopy frameExecutionEnd];
                  height = 0;
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }

      height = -22977;
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", buf, 2u);
    }

    height = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
    }

    height = -22960;
  }

LABEL_45:
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)postProcessDisparity:(__CVBuffer *)disparity output:(__CVBuffer *)output
{
  disparityCopy = disparity;
  if (CVPixelBufferGetIOSurface(disparity))
  {
    goto LABEL_12;
  }

  Width = CVPixelBufferGetWidth(disparityCopy);
  Height = CVPixelBufferGetHeight(disparityCopy);
  if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(disparityCopy) pixelFormat:&self->_postprocessorInputMetalHelper pixelBuffer:Width, Height])
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v35 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = &v35;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_2402F6000, v9, v11, "preprocessor input disparity buffer is not io-surface backed. This will degregate performance", v10, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = MEMORY[0x277D86220];
      v10 = buf;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_8;
    }
  }

  postprocessorInputMetalHelper = self->_postprocessorInputMetalHelper;
  PixelFormatType = CVPixelBufferGetPixelFormatType(disparityCopy);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(postprocessorInputMetalHelper))
  {
    copyPixelBufferVImage(postprocessorInputMetalHelper, *MEMORY[0x277CBF348], disparityCopy, *MEMORY[0x277CBF3A0]);
  }

  disparityCopy = self->_postprocessorInputMetalHelper;
LABEL_12:
  postprocessorOutputMetalHelper = output;
  if (!CVPixelBufferGetIOSurface(output))
  {
    v15 = CVPixelBufferGetWidth(output);
    v16 = CVPixelBufferGetHeight(output);
    if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(output) pixelFormat:&self->_postprocessorOutputMetalHelper pixelBuffer:v15, v16])
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v33 = 0;
          v17 = MEMORY[0x277D86220];
          v18 = &v33;
          v19 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
          _os_log_impl(&dword_2402F6000, v17, v19, "preprocessor output disparity buffer is not io-surface backed. This will degregate performance", v18, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        v17 = MEMORY[0x277D86220];
        v18 = v32;
        v19 = OS_LOG_TYPE_INFO;
        goto LABEL_19;
      }
    }

    postprocessorOutputMetalHelper = self->_postprocessorOutputMetalHelper;
  }

  v20 = [ADMetalUtils bindPixelBufferToMTL2DTexture:disparityCopy metalDevice:self->_metalDevice];
  v21 = [ADMetalUtils bindPixelBufferToMTL2DTexture:postprocessorOutputMetalHelper metalDevice:self->_metalDevice];
  cmdQueue = self->_cmdQueue;
  if (cmdQueue || (v23 = [(MTLDevice *)self->_metalDevice newCommandQueue], v24 = self->_cmdQueue, self->_cmdQueue = v23, v24, (cmdQueue = self->_cmdQueue) != 0))
  {
    commandBuffer = [(MTLCommandQueue *)cmdQueue commandBuffer];
    v26 = [(ADPCEDisparityColorPipeline *)self->_pipeline encodeDisparityPostprocessingToCommandBuffer:commandBuffer input:v20 output:v21];
    if (v26)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed encoding postprocessing to command buffer", v30, 2u);
      }
    }

    else
    {
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (postprocessorOutputMetalHelper == output || (v27 = CVPixelBufferGetPixelFormatType(postprocessorOutputMetalHelper), v27 == CVPixelBufferGetPixelFormatType(output)) && !copyPixelBufferVImage(output, *MEMORY[0x277CBF348], postprocessorOutputMetalHelper, *MEMORY[0x277CBF3A0]))
      {
        v26 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v29 = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed copying result to output buffer", v29, 2u);
        }

        v26 = -22950;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed initializing command queue", v31, 2u);
    }

    v26 = -22950;
  }

  return v26;
}

- (int64_t)preProcessDisparity:(__CVBuffer *)disparity normalizationMultiplier:(float)multiplier normalizationOffset:(float)offset output:(__CVBuffer *)output
{
  disparityCopy = disparity;
  if (CVPixelBufferGetIOSurface(disparity))
  {
    goto LABEL_12;
  }

  Width = CVPixelBufferGetWidth(disparityCopy);
  Height = CVPixelBufferGetHeight(disparityCopy);
  if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(disparityCopy) pixelFormat:&self->_preprocessorInputMetalHelper pixelBuffer:Width, Height])
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v46 = 0;
        v13 = MEMORY[0x277D86220];
        v14 = &v46;
        v15 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
        _os_log_impl(&dword_2402F6000, v13, v15, "Preprocessor input disparity buffer is not io-surface backed. This will degregate performance", v14, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = MEMORY[0x277D86220];
      v14 = buf;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_8;
    }
  }

  preprocessorInputMetalHelper = self->_preprocessorInputMetalHelper;
  PixelFormatType = CVPixelBufferGetPixelFormatType(disparityCopy);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(preprocessorInputMetalHelper))
  {
    copyPixelBufferVImage(preprocessorInputMetalHelper, *MEMORY[0x277CBF348], disparityCopy, *MEMORY[0x277CBF3A0]);
  }

  disparityCopy = self->_preprocessorInputMetalHelper;
LABEL_12:
  preprocessorOutputMetalHelper = output;
  if (!CVPixelBufferGetIOSurface(output))
  {
    v19 = CVPixelBufferGetWidth(output);
    v20 = CVPixelBufferGetHeight(output);
    if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(output) pixelFormat:&self->_preprocessorOutputMetalHelper pixelBuffer:v19, v20])
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v44 = 0;
          v21 = MEMORY[0x277D86220];
          v22 = &v44;
          v23 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
          _os_log_impl(&dword_2402F6000, v21, v23, "Preprocessor output disparity buffer is not io-surface backed. This will degregate performance", v22, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        v21 = MEMORY[0x277D86220];
        v22 = v43;
        v23 = OS_LOG_TYPE_INFO;
        goto LABEL_19;
      }
    }

    preprocessorOutputMetalHelper = self->_preprocessorOutputMetalHelper;
  }

  v24 = [ADMetalUtils bindPixelBufferToMTL2DTexture:disparityCopy metalDevice:self->_metalDevice];
  v25 = [ADMetalUtils bindPixelBufferToMTL2DTexture:preprocessorOutputMetalHelper metalDevice:self->_metalDevice];
  cmdQueue = self->_cmdQueue;
  if (cmdQueue || (v27 = [(MTLDevice *)self->_metalDevice newCommandQueue], v28 = self->_cmdQueue, self->_cmdQueue = v27, v28, (cmdQueue = self->_cmdQueue) != 0))
  {
    commandBuffer = [(MTLCommandQueue *)cmdQueue commandBuffer];
    pipeline = self->_pipeline;
    executorParameters = [(ADExecutor *)self executorParameters];
    disparityInvalidValue = [executorParameters disparityInvalidValue];
    executorParameters2 = [(ADExecutor *)self executorParameters];
    disparityRotation = [executorParameters2 disparityRotation];
    *&v35 = multiplier;
    *&v36 = offset;
    v37 = [(ADPCEDisparityColorPipeline *)pipeline encodeDisparityPreprocessingToCommandBuffer:commandBuffer input:v24 normalizationMultiplier:disparityInvalidValue normalizationOffset:disparityRotation invalidValue:v25 rotation:v35 output:v36];

    if (v37)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v41 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed encoding preprocessing to command buffer", v41, 2u);
      }
    }

    else
    {
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (preprocessorOutputMetalHelper == output || (v38 = CVPixelBufferGetPixelFormatType(preprocessorOutputMetalHelper), v38 == CVPixelBufferGetPixelFormatType(output)) && !copyPixelBufferVImage(output, *MEMORY[0x277CBF348], preprocessorOutputMetalHelper, *MEMORY[0x277CBF3A0]))
      {
        v37 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v40 = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed copying result to output buffer", v40, 2u);
        }

        v37 = -22950;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed initializing command queue", v42, 2u);
    }

    v37 = -22950;
  }

  return v37;
}

- (__CVBuffer)prevFeatures
{
  executorParameters = [(ADExecutor *)self executorParameters];
  temporalConsistencyActive = [executorParameters temporalConsistencyActive];

  if (temporalConsistencyActive)
  {
    return self->_itmPrevFeatures;
  }

  else
  {
    return 0;
  }
}

- (__CVBuffer)prevDisparity
{
  executorParameters = [(ADExecutor *)self executorParameters];
  temporalConsistencyActive = [executorParameters temporalConsistencyActive];

  if (!temporalConsistencyActive)
  {
    return 0;
  }

  self->_prevDisparityIsZeros = 0;
  return self->_itmPrevDisparity;
}

- (int64_t)prepareForEngineType:(unint64_t)type inputColorROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 335680668;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  height = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline adjustForEngine:type];
  if (height)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to adjust for engine", v18, 2u);
    }
  }

  else
  {
    inferenceDescriptor = [(ADPCEDisparityColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
    colorInput = [inferenceDescriptor colorInput];
    imageDescriptor = [colorInput imageDescriptor];
    height = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

    if (height)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v18, 2u);
      }
    }

    else
    {
      height = [(ADPCEDisparityColorExecutor *)selfCopy allocateIntermediateBuffers];
      CVPixelBufferLockBaseAddress(selfCopy->_itmPrevDisparity, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(selfCopy->_itmPrevDisparity);
      DataSize = CVPixelBufferGetDataSize(selfCopy->_itmPrevDisparity);
      bzero(BaseAddress, DataSize);
      CVPixelBufferUnlockBaseAddress(selfCopy->_itmPrevDisparity, 0);
      selfCopy->_prevDisparityIsZeros = 1;
      PixelBufferUtils::blacken(selfCopy->_itmPrevFeatures, v16);
      selfCopy->_isPrepared = height == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADPCEDisparityColorExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  disparityInput = [inferenceDescriptor2 disparityInput];
  self->_itmPreProcessedDisparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:disparityInput];

  v9 = self->super._espressoRunner;
  inferenceDescriptor3 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  disparityOutput = [inferenceDescriptor3 disparityOutput];
  self->_itmUnprocessedOutputDisparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:disparityOutput];

  v12 = self->super._espressoRunner;
  inferenceDescriptor4 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  prevDisparityInput = [inferenceDescriptor4 prevDisparityInput];
  self->_itmPrevDisparity = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:prevDisparityInput];

  inferenceDescriptor5 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  prevFeaturesInput = [inferenceDescriptor5 prevFeaturesInput];

  if (prevFeaturesInput)
  {
    v17 = self->super._espressoRunner;
    inferenceDescriptor6 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
    prevFeaturesInput2 = [inferenceDescriptor6 prevFeaturesInput];
    self->_itmPrevFeatures = [(ADEspressoRunnerProtocol *)v17 createAndRegisterPixelBufferForDescriptor:prevFeaturesInput2];

    v20 = self->super._espressoRunner;
    inferenceDescriptor7 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
    featuresOutput = [inferenceDescriptor7 featuresOutput];
    self->_itmFeaturesOutput = [(ADEspressoRunnerProtocol *)v20 createAndRegisterPixelBufferForDescriptor:featuresOutput];

    if (!self->_itmPreProcessedColor)
    {
      goto LABEL_15;
    }
  }

  else
  {
    self->_itmPrevFeatures = 0;
    self->_itmFeaturesOutput = 0;
    if (!self->_itmPreProcessedColor)
    {
      goto LABEL_15;
    }
  }

  if (!self->_itmPreProcessedDisparity || !self->_itmUnprocessedOutputDisparity || !self->_itmPrevDisparity)
  {
    goto LABEL_15;
  }

  inferenceDescriptor8 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  prevFeaturesInput3 = [inferenceDescriptor8 prevFeaturesInput];
  if (!prevFeaturesInput3)
  {

    return 0;
  }

  if (self->_itmPrevFeatures)
  {
    itmFeaturesOutput = self->_itmFeaturesOutput;

    if (!itmFeaturesOutput)
    {
      goto LABEL_15;
    }

    return 0;
  }

LABEL_15:
  [(ADPCEDisparityColorExecutor *)self deallocateEspressoBuffers];
  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmPreProcessedDisparity);
  self->_itmPreProcessedDisparity = 0;
  CVPixelBufferRelease(self->_itmUnprocessedOutputDisparity);
  self->_itmUnprocessedOutputDisparity = 0;
  CVPixelBufferRelease(self->_itmPrevDisparity);
  self->_itmPrevDisparity = 0;
  CVPixelBufferRelease(self->_itmPrevFeatures);
  self->_itmPrevFeatures = 0;
  CVPixelBufferRelease(self->_itmFeaturesOutput);
  self->_itmFeaturesOutput = 0;
}

- (id)initForInputSource:(unint64_t)source parameters:(id)parameters
{
  parametersCopy = parameters;
  v21 = 335685520;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  v20.receiver = self;
  v20.super_class = ADPCEDisparityColorExecutor;
  v7 = [(ADExecutor *)&v20 init];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [ADPCEDisparityColorPipeline alloc];
  pipelineParameters = [parametersCopy pipelineParameters];
  v10 = [(ADPCEDisparityColorPipeline *)v8 initWithParameters:pipelineParameters inputSource:source metalDevice:0];
  pipeline = v7->_pipeline;
  v7->_pipeline = v10;

  if (!v7->_pipeline)
  {
    goto LABEL_11;
  }

  if (parametersCopy)
  {
    [(ADExecutor *)v7 setExecutorParameters:parametersCopy];
  }

  else
  {
    v12 = [ADPCEDisparityColorExecutorParameters alloc];
    pipelineParameters2 = [(ADPCEDisparityColorPipeline *)v7->_pipeline pipelineParameters];
    v14 = [(ADPCEDisparityColorExecutorParameters *)v12 initForPipelineParameters:pipelineParameters2 inputSource:source];
    [(ADExecutor *)v7 setExecutorParameters:v14];
  }

  executorParameters = [(ADExecutor *)v7 executorParameters];

  if (executorParameters)
  {
    v16 = MTLCreateSystemDefaultDevice();
    metalDevice = v7->_metalDevice;
    v7->_metalDevice = v16;

    if (v7->_metalDevice)
    {
      v7->_itmPreProcessedColor = 0;
      v7->_itmProcessedUnfilteredDisparity = 0;
      v7->_itmPreProcessedDisparity = 0;
      v7->_itmUnprocessedOutputDisparity = 0;
      v7->_itmPostProcessedDisparity = 0;
      v7->_itmCroppedScaledColor = 0;
      v7->_itmRotatedColor = 0;
      v7->_itmCroppedScaledDisparity = 0;
      v7->_itmRotatedDisparity = 0;
      v7->_itmPrevDisparity = 0;
      v7->_itmPrevFeatures = 0;
      v7->_itmFeaturesOutput = 0;
      v7->_preprocessorInputMetalHelper = 0;
      v7->_preprocessorOutputMetalHelper = 0;
      v7->_postprocessorInputMetalHelper = 0;
      v7->_postprocessorOutputMetalHelper = 0;
      v7->_prevDisparityIsZeros = 0;
      v7->_isPrepared = 0;
LABEL_9:
      executorParameters = v7;
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create default metal device", v19, 2u);
      executorParameters = 0;
      goto LABEL_12;
    }

LABEL_11:
    executorParameters = 0;
  }

LABEL_12:
  kdebug_trace();

  return executorParameters;
}

@end