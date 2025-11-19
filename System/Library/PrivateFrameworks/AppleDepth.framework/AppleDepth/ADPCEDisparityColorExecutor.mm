@interface ADPCEDisparityColorExecutor
- (__CVBuffer)prevDisparity;
- (__CVBuffer)prevFeatures;
- (id)getIntermediates;
- (id)initForInputSource:(unint64_t)a3 parameters:(id)a4;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithDisparity:(__CVBuffer *)a3 normalizationMultiplier:(float)a4 normalizationOffset:(float)a5 color:(__CVBuffer *)a6 outDisparity:(__CVBuffer *)a7;
- (int64_t)postProcessDisparity:(__CVBuffer *)a3 output:(__CVBuffer *)a4;
- (int64_t)preProcessDisparity:(__CVBuffer *)a3 normalizationMultiplier:(float)a4 normalizationOffset:(float)a5 output:(__CVBuffer *)a6;
- (int64_t)prepareForEngineType:(unint64_t)a3 inputColorROI:(CGRect)a4;
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

- (int64_t)executeWithDisparity:(__CVBuffer *)a3 normalizationMultiplier:(float)a4 normalizationOffset:(float)a5 color:(__CVBuffer *)a6 outDisparity:(__CVBuffer *)a7
{
  v104[4] = *MEMORY[0x277D85DE8];
  v12 = self;
  objc_sync_enter(v12);
  Width = CVPixelBufferGetWidth(a6);
  Height = CVPixelBufferGetHeight(a6);
  if (!v12->_isPrepared)
  {
    v15 = [(ADPCEDisparityColorExecutor *)v12 prepareForEngineType:v12->super._engineType inputColorROI:0.0, 0.0, Width, Height];
    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", buf, 2u);
      }

      goto LABEL_45;
    }
  }

  if (v12->super._espressoRunner)
  {
    if (a7)
    {
      v16 = [(ADExecutor *)v12 executorParameters];
      v98 = [v16 logger];

      v17 = [MEMORY[0x277CCAC38] processInfo];
      [v17 systemUptime];
      v97 = v18;

      *buf = 335684600;
      v101 = 0u;
      v102 = 0u;
      kdebug_trace();
      [v98 logPixelBuffer:a3 name:"inputDisparity" timestamp:v97];
      [v98 logPixelBuffer:a6 name:"inputColor" timestamp:v97];
      v103[0] = @"DisparityNormalizationMultiplier";
      *&v19 = a4;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      v104[0] = v20;
      v103[1] = @"DisparityNormalizationOffset";
      *&v21 = a5;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      v104[1] = v22;
      v103[2] = @"PCEBias";
      v23 = MEMORY[0x277CCABB0];
      v24 = [(ADPCEDisparityColorPipeline *)v12->_pipeline pipelineParameters];
      [v24 pceBias];
      v25 = [v23 numberWithFloat:?];
      v104[2] = v25;
      v103[3] = @"NetworkTrainingWidth";
      v26 = MEMORY[0x277CCABB0];
      v27 = [(ADPCEDisparityColorPipeline *)v12->_pipeline pipelineParameters];
      v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "trainingWidth")}];
      v104[3] = v28;
      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:4];

      [v98 logDictionary:v96 name:"frameMetadata" timestamp:v97];
      v29 = [MEMORY[0x277CED0C0] adjustLayout:objc_msgSend(MEMORY[0x277CED0C0] sourceOrientation:"layoutForSize:" toRotationPreference:{v12->super._inputRoi.size.width, v12->super._inputRoi.size.height), 1, 2}];
      x = v12->super._inputRoi.origin.x;
      y = v12->super._inputRoi.origin.y;
      v32 = v12->super._inputRoi.size.width;
      v33 = v12->super._inputRoi.size.height;
      v34 = [(ADExecutor *)v12 executorParameters];
      LODWORD(v27) = [v34 disparityPreprocessingActive];

      if (!v27)
      {
        v37 = 0;
        goto LABEL_24;
      }

      v35 = [(ADExecutor *)v12 executorParameters];
      v36 = [v35 disparityRotation] == 3;

      if (v36)
      {
        x = v12->super._inputRoi.origin.y;
        y = CVPixelBufferGetWidth(a6) - v12->super._inputRoi.origin.x;
        v32 = v12->super._inputRoi.size.height;
        v33 = -v12->super._inputRoi.size.width;
      }

      else
      {
        v38 = [(ADExecutor *)v12 executorParameters];
        v39 = [v38 disparityRotation] == 2;

        if (v39)
        {
          v37 = 0;
          x = CVPixelBufferGetWidth(a6) - v12->super._inputRoi.origin.x;
          y = CVPixelBufferGetHeight(a6) - v12->super._inputRoi.origin.y;
          v32 = -v12->super._inputRoi.size.width;
          v33 = -v12->super._inputRoi.size.height;
          goto LABEL_23;
        }

        v40 = [(ADExecutor *)v12 executorParameters];
        v41 = [v40 disparityRotation] == 1;

        if (!v41)
        {
          v37 = 0;
          goto LABEL_23;
        }

        v42 = CVPixelBufferGetHeight(a6);
        y = v12->super._inputRoi.origin.x;
        x = v42 - v12->super._inputRoi.origin.y;
        v33 = v12->super._inputRoi.size.width;
        v32 = -v12->super._inputRoi.size.height;
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
      v43 = CVPixelBufferGetWidth(a3);
      if (v37)
      {
        v44 = CVPixelBufferGetHeight(a6);
      }

      else
      {
        v44 = CVPixelBufferGetWidth(a6);
      }

      v45 = v44;
      v46 = CVPixelBufferGetHeight(a3);
      if (v37)
      {
        v47 = CVPixelBufferGetWidth(a6);
      }

      else
      {
        v47 = CVPixelBufferGetHeight(a6);
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

        v15 = -22957;
        goto LABEL_44;
      }

      v53 = [(ADExecutor *)v12 executorParameters];
      v54 = [v53 stepsToExecute];

      v55 = [(ADExecutor *)v12 executorParameters];
      v95 = [v55 timeProfiler];

      if (v54 >= 1)
      {
        kdebug_trace();
        [v95 startWithUTFString:"preprocess color"];
        [(ADExecutor *)v12 frameExecutionStart];
        v15 = [ADUtils scaleConvertRotateImage:a6 rotateBy:LOBYTE(v12->super._rotationConstant) cropBy:v12->_itmPreProcessedColor scaleInto:&v12->_itmCroppedScaledColor intermediateScalingBuffer:&v12->_itmRotatedColor intermediateRotatingBuffer:1 useVT:v12->super._inputRoi.origin.x, v12->super._inputRoi.origin.y, v12->super._inputRoi.size.width, v12->super._inputRoi.size.height];
        if (v15)
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

        [v98 logPixelBuffer:v12->_itmPreProcessedColor name:"preProcessedColor" timestamp:v97];
        [v95 stopWithUTFString:"preprocess color"];
        kdebug_trace();
        if (v54 != 1)
        {
          kdebug_trace();
          [v95 startWithUTFString:"preprocess disparity"];
          PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
          v60 = [(ADPCEDisparityColorPipeline *)v12->_pipeline inferenceDescriptor];
          v61 = [v60 disparityInput];
          v62 = [v61 imageDescriptor];
          v63 = 1751411059;
          v65 = [v62 pixelFormat] == 1751411059 && PixelFormatType == 1717856627;

          if (!v65)
          {
            v66 = [(ADPCEDisparityColorPipeline *)v12->_pipeline inferenceDescriptor];
            v67 = [v66 disparityInput];
            v68 = [v67 imageDescriptor];
            v70 = [v68 pixelFormat] == 1717856627 && PixelFormatType == 1751411059;

            if (v70)
            {
              v63 = 1717856627;
            }

            else
            {
              v63 = PixelFormatType;
            }
          }

          v71 = CVPixelBufferGetWidth(a3);
          if ([ADUtils updatePixelBufferAllocationWithNewSize:v63 pixelFormat:&v12->_itmProcessedUnfilteredDisparity pixelBuffer:v71, CVPixelBufferGetHeight(a3)])
          {
            CVPixelBufferRelease(v12->_itmCroppedScaledDisparity);
            v12->_itmCroppedScaledDisparity = 0;
            CVPixelBufferRelease(v12->_itmRotatedDisparity);
            v12->_itmRotatedDisparity = 0;
          }

          v15 = [ADUtils scaleConvertRotateImage:a3 rotateBy:LOBYTE(v12->super._rotationConstant) cropBy:v12->_itmProcessedUnfilteredDisparity scaleInto:&v12->_itmCroppedScaledDisparity intermediateScalingBuffer:&v12->_itmRotatedDisparity intermediateRotatingBuffer:1 useVT:floor(x * v48), floor(y * v49), v50, v51];
          if (v15)
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

          [v98 logPixelBuffer:v12->_itmProcessedUnfilteredDisparity name:"preProcessedUnfilteredDisparity" timestamp:v97];
          v72 = [(ADExecutor *)v12 executorParameters];
          v73 = [v72 disparityPreprocessingActive];

          if (v73)
          {
            *&v74 = a4;
            *&v75 = a5;
            v15 = [(ADPCEDisparityColorExecutor *)v12 preProcessDisparity:v12->_itmProcessedUnfilteredDisparity normalizationMultiplier:v12->_itmPreProcessedDisparity normalizationOffset:v74 output:v75];
            if (v15)
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
            PixelBufferUtils::copyPixelBuffer(v12->_itmPreProcessedDisparity, v12->_itmProcessedUnfilteredDisparity, 0);
          }

          [v98 logPixelBuffer:v12->_itmPreProcessedDisparity name:"preProcessedDisparity" timestamp:v97];
          [v98 logPixelBuffer:v12->_itmPrevDisparity name:"prevDisparity" timestamp:v97];
          [v98 logPixelBuffer:v12->_itmPrevFeatures name:"prevFeatures" timestamp:v97];
          [v95 stopWithUTFString:"preprocess disparity"];
          kdebug_trace();
          if (v54 >= 3)
          {
            kdebug_trace();
            [v95 startWithUTFString:"network execution"];
            v15 = [(ADEspressoRunnerProtocol *)v12->super._espressoRunner execute];
            if (v15)
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

            [v98 logPixelBuffer:v12->_itmUnprocessedOutputDisparity name:"outputDisparity" timestamp:v97];
            [v98 logPixelBuffer:v12->_itmFeaturesOutput name:"outputFeatures" timestamp:v97];
            [v95 stopWithUTFString:"network execution"];
            kdebug_trace();
            if (v54 != 3)
            {
              kdebug_trace();
              [v95 startWithUTFString:"postprocess depth"];
              itmUnprocessedOutputDisparity = v12->_itmUnprocessedOutputDisparity;
              v77 = [(ADExecutor *)v12 executorParameters];
              v78 = [v77 disparityPostprocessingActive];

              if (v78)
              {
                v79 = CVPixelBufferGetWidth(v12->_itmUnprocessedOutputDisparity);
                v80 = CVPixelBufferGetHeight(v12->_itmUnprocessedOutputDisparity);
                [ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(v12->_itmUnprocessedOutputDisparity) pixelFormat:&v12->_itmPostProcessedDisparity pixelBuffer:v79, v80];
                v15 = [(ADPCEDisparityColorExecutor *)v12 postProcessDisparity:v12->_itmUnprocessedOutputDisparity output:v12->_itmPostProcessedDisparity];
                if (v15)
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

                itmUnprocessedOutputDisparity = v12->_itmPostProcessedDisparity;
              }

              [v98 logPixelBuffer:itmUnprocessedOutputDisparity name:"postProcessedOutputDisparity" timestamp:v97];
              if (!*a7)
              {
                *a7 = PixelBufferUtils::createPixelBufferWithSameSize(itmUnprocessedOutputDisparity, 0x66646973, 1);
              }

              v15 = [ADUtils postProcessDepth:itmUnprocessedOutputDisparity depthOutput:?];
              if (v15)
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

              [v98 logPixelBuffer:*a7 name:"outputConvertedUnits" timestamp:v97];
              [v95 stopWithUTFString:"postprocess depth"];
              kdebug_trace();
              if (v54 >= 5)
              {
                kdebug_trace();
                [v95 startWithUTFString:"postprocess previous depth"];
                v81 = [(ADExecutor *)v12 executorParameters];
                v82 = [v81 temporalConsistencyActive];

                if (v82)
                {
                  v12->_prevDisparityIsZeros = 0;
                  espressoRunner = v12->super._espressoRunner;
                  v84 = [(ADPCEDisparityColorPipeline *)v12->_pipeline inferenceDescriptor];
                  v85 = [v84 prevDisparityInput];
                  v86 = [(ADPCEDisparityColorPipeline *)v12->_pipeline inferenceDescriptor];
                  v87 = [v86 disparityOutput];
                  v15 = [(ADEspressoRunnerProtocol *)espressoRunner updateFeedbackLoopInputBuffer:&v12->_itmPrevDisparity inputDescriptor:v85 outputBuffer:&v12->_itmUnprocessedOutputDisparity outputDescriptor:v87];

                  if (v15)
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

                  if (v12->_itmPrevFeatures)
                  {
                    v90 = v12->super._espressoRunner;
                    v91 = [(ADPCEDisparityColorPipeline *)v12->_pipeline inferenceDescriptor];
                    v92 = [v91 prevFeaturesInput];
                    v93 = [(ADPCEDisparityColorPipeline *)v12->_pipeline inferenceDescriptor];
                    v94 = [v93 featuresOutput];
                    v15 = [(ADEspressoRunnerProtocol *)v90 updateFeedbackLoopInputBuffer:&v12->_itmPrevFeatures inputDescriptor:v92 outputBuffer:&v12->_itmFeaturesOutput outputDescriptor:v94];

                    if (v15)
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

                else if (!v12->_prevDisparityIsZeros)
                {
                  CVPixelBufferLockBaseAddress(v12->_itmPrevDisparity, 0);
                  BaseAddress = CVPixelBufferGetBaseAddress(v12->_itmPrevDisparity);
                  DataSize = CVPixelBufferGetDataSize(v12->_itmPrevDisparity);
                  bzero(BaseAddress, DataSize);
                  CVPixelBufferUnlockBaseAddress(v12->_itmPrevDisparity, 0);
                  v12->_prevDisparityIsZeros = 1;
                }

                [v95 stopWithUTFString:"postprocess previous depth"];
                kdebug_trace();
                if (v54 != 5)
                {
                  [(ADExecutor *)v12 frameExecutionEnd];
                  v15 = 0;
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }

      v15 = -22977;
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide an output pointer to CVPixelBufferRef", buf, 2u);
    }

    v15 = -22953;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor could not be initialized", buf, 2u);
    }

    v15 = -22960;
  }

LABEL_45:
  objc_sync_exit(v12);

  return v15;
}

- (int64_t)postProcessDisparity:(__CVBuffer *)a3 output:(__CVBuffer *)a4
{
  v5 = a3;
  if (CVPixelBufferGetIOSurface(a3))
  {
    goto LABEL_12;
  }

  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v5);
  if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(v5) pixelFormat:&self->_postprocessorInputMetalHelper pixelBuffer:Width, Height])
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
  PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(postprocessorInputMetalHelper))
  {
    copyPixelBufferVImage(postprocessorInputMetalHelper, *MEMORY[0x277CBF348], v5, *MEMORY[0x277CBF3A0]);
  }

  v5 = self->_postprocessorInputMetalHelper;
LABEL_12:
  postprocessorOutputMetalHelper = a4;
  if (!CVPixelBufferGetIOSurface(a4))
  {
    v15 = CVPixelBufferGetWidth(a4);
    v16 = CVPixelBufferGetHeight(a4);
    if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(a4) pixelFormat:&self->_postprocessorOutputMetalHelper pixelBuffer:v15, v16])
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

  v20 = [ADMetalUtils bindPixelBufferToMTL2DTexture:v5 metalDevice:self->_metalDevice];
  v21 = [ADMetalUtils bindPixelBufferToMTL2DTexture:postprocessorOutputMetalHelper metalDevice:self->_metalDevice];
  cmdQueue = self->_cmdQueue;
  if (cmdQueue || (v23 = [(MTLDevice *)self->_metalDevice newCommandQueue], v24 = self->_cmdQueue, self->_cmdQueue = v23, v24, (cmdQueue = self->_cmdQueue) != 0))
  {
    v25 = [(MTLCommandQueue *)cmdQueue commandBuffer];
    v26 = [(ADPCEDisparityColorPipeline *)self->_pipeline encodeDisparityPostprocessingToCommandBuffer:v25 input:v20 output:v21];
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
      [v25 commit];
      [v25 waitUntilCompleted];
      if (postprocessorOutputMetalHelper == a4 || (v27 = CVPixelBufferGetPixelFormatType(postprocessorOutputMetalHelper), v27 == CVPixelBufferGetPixelFormatType(a4)) && !copyPixelBufferVImage(a4, *MEMORY[0x277CBF348], postprocessorOutputMetalHelper, *MEMORY[0x277CBF3A0]))
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

- (int64_t)preProcessDisparity:(__CVBuffer *)a3 normalizationMultiplier:(float)a4 normalizationOffset:(float)a5 output:(__CVBuffer *)a6
{
  v9 = a3;
  if (CVPixelBufferGetIOSurface(a3))
  {
    goto LABEL_12;
  }

  Width = CVPixelBufferGetWidth(v9);
  Height = CVPixelBufferGetHeight(v9);
  if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(v9) pixelFormat:&self->_preprocessorInputMetalHelper pixelBuffer:Width, Height])
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
  PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(preprocessorInputMetalHelper))
  {
    copyPixelBufferVImage(preprocessorInputMetalHelper, *MEMORY[0x277CBF348], v9, *MEMORY[0x277CBF3A0]);
  }

  v9 = self->_preprocessorInputMetalHelper;
LABEL_12:
  preprocessorOutputMetalHelper = a6;
  if (!CVPixelBufferGetIOSurface(a6))
  {
    v19 = CVPixelBufferGetWidth(a6);
    v20 = CVPixelBufferGetHeight(a6);
    if ([ADUtils updatePixelBufferAllocationWithNewSize:CVPixelBufferGetPixelFormatType(a6) pixelFormat:&self->_preprocessorOutputMetalHelper pixelBuffer:v19, v20])
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

  v24 = [ADMetalUtils bindPixelBufferToMTL2DTexture:v9 metalDevice:self->_metalDevice];
  v25 = [ADMetalUtils bindPixelBufferToMTL2DTexture:preprocessorOutputMetalHelper metalDevice:self->_metalDevice];
  cmdQueue = self->_cmdQueue;
  if (cmdQueue || (v27 = [(MTLDevice *)self->_metalDevice newCommandQueue], v28 = self->_cmdQueue, self->_cmdQueue = v27, v28, (cmdQueue = self->_cmdQueue) != 0))
  {
    v29 = [(MTLCommandQueue *)cmdQueue commandBuffer];
    pipeline = self->_pipeline;
    v31 = [(ADExecutor *)self executorParameters];
    v32 = [v31 disparityInvalidValue];
    v33 = [(ADExecutor *)self executorParameters];
    v34 = [v33 disparityRotation];
    *&v35 = a4;
    *&v36 = a5;
    v37 = [(ADPCEDisparityColorPipeline *)pipeline encodeDisparityPreprocessingToCommandBuffer:v29 input:v24 normalizationMultiplier:v32 normalizationOffset:v34 invalidValue:v25 rotation:v35 output:v36];

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
      [v29 commit];
      [v29 waitUntilCompleted];
      if (preprocessorOutputMetalHelper == a6 || (v38 = CVPixelBufferGetPixelFormatType(preprocessorOutputMetalHelper), v38 == CVPixelBufferGetPixelFormatType(a6)) && !copyPixelBufferVImage(a6, *MEMORY[0x277CBF348], preprocessorOutputMetalHelper, *MEMORY[0x277CBF3A0]))
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
  v3 = [(ADExecutor *)self executorParameters];
  v4 = [v3 temporalConsistencyActive];

  if (v4)
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
  v3 = [(ADExecutor *)self executorParameters];
  v4 = [v3 temporalConsistencyActive];

  if (!v4)
  {
    return 0;
  }

  self->_prevDisparityIsZeros = 0;
  return self->_itmPrevDisparity;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 inputColorROI:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  objc_sync_enter(v9);
  v19 = 335680668;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  v10 = [(ADPCEDisparityColorPipeline *)v9->_pipeline adjustForEngine:a3];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to adjust for engine", v18, 2u);
    }
  }

  else
  {
    v11 = [(ADPCEDisparityColorPipeline *)v9->_pipeline inferenceDescriptor];
    v12 = [v11 colorInput];
    v13 = [v12 imageDescriptor];
    v10 = [(ADExecutor *)v9 prepareForEngineType:a3 roi:v13 descriptorForROI:1 exifOrientation:2 rotationPreference:v11 inferenceDescriptor:x, y, width, height];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to prepare engine", v18, 2u);
      }
    }

    else
    {
      v10 = [(ADPCEDisparityColorExecutor *)v9 allocateIntermediateBuffers];
      CVPixelBufferLockBaseAddress(v9->_itmPrevDisparity, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v9->_itmPrevDisparity);
      DataSize = CVPixelBufferGetDataSize(v9->_itmPrevDisparity);
      bzero(BaseAddress, DataSize);
      CVPixelBufferUnlockBaseAddress(v9->_itmPrevDisparity, 0);
      v9->_prevDisparityIsZeros = 1;
      PixelBufferUtils::blacken(v9->_itmPrevFeatures, v16);
      v9->_isPrepared = v10 == 0;
    }
  }

  kdebug_trace();
  objc_sync_exit(v9);

  return v10;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADPCEDisparityColorExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 disparityInput];
  self->_itmPreProcessedDisparity = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = self->super._espressoRunner;
  v10 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  v11 = [v10 disparityOutput];
  self->_itmUnprocessedOutputDisparity = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:v11];

  v12 = self->super._espressoRunner;
  v13 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  v14 = [v13 prevDisparityInput];
  self->_itmPrevDisparity = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:v14];

  v15 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  v16 = [v15 prevFeaturesInput];

  if (v16)
  {
    v17 = self->super._espressoRunner;
    v18 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
    v19 = [v18 prevFeaturesInput];
    self->_itmPrevFeatures = [(ADEspressoRunnerProtocol *)v17 createAndRegisterPixelBufferForDescriptor:v19];

    v20 = self->super._espressoRunner;
    v21 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
    v22 = [v21 featuresOutput];
    self->_itmFeaturesOutput = [(ADEspressoRunnerProtocol *)v20 createAndRegisterPixelBufferForDescriptor:v22];

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

  v23 = [(ADPCEDisparityColorPipeline *)self->_pipeline inferenceDescriptor];
  v24 = [v23 prevFeaturesInput];
  if (!v24)
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

- (id)initForInputSource:(unint64_t)a3 parameters:(id)a4
{
  v6 = a4;
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
  v9 = [v6 pipelineParameters];
  v10 = [(ADPCEDisparityColorPipeline *)v8 initWithParameters:v9 inputSource:a3 metalDevice:0];
  pipeline = v7->_pipeline;
  v7->_pipeline = v10;

  if (!v7->_pipeline)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    [(ADExecutor *)v7 setExecutorParameters:v6];
  }

  else
  {
    v12 = [ADPCEDisparityColorExecutorParameters alloc];
    v13 = [(ADPCEDisparityColorPipeline *)v7->_pipeline pipelineParameters];
    v14 = [(ADPCEDisparityColorExecutorParameters *)v12 initForPipelineParameters:v13 inputSource:a3];
    [(ADExecutor *)v7 setExecutorParameters:v14];
  }

  v15 = [(ADExecutor *)v7 executorParameters];

  if (v15)
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
      v15 = v7;
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot create default metal device", v19, 2u);
      v15 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v15 = 0;
  }

LABEL_12:
  kdebug_trace();

  return v15;
}

@end