@interface VNCoreMLTransformer
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (VNCoreMLTransformer)initWithOptions:(id)options model:(id)model error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNCoreMLTransformer

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v185[16] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  errorCopy = error;
  v170 = [VNValidationUtilities originatingRequestSpecifierInOptions:"originatingRequestSpecifierInOptions:error:" error:?];
  if (!v170)
  {
    v27 = 0;
    goto LABEL_117;
  }

  model = [(VNCoreMLTransformer *)self model];
  v13 = optionsCopy;
  v172 = model;
  if (self)
  {
    scenePrintRequestSpecifier = [model scenePrintRequestSpecifier];

    if (scenePrintRequestSpecifier)
    {
      v185[0] = 0;
      v15 = [VNValidationUtilities getArray:v185 forKey:@"VNDetectorProcessOption_ScenePrints" inOptions:v13 withElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:errorCopy];
      v16 = v185[0];
      v17 = v16;
      if (v15)
      {
        v18 = [v16 objectAtIndexedSubscript:0];
        v19 = v13;
        if (model)
        {
          v20 = [VNSceneprintMLFeatureProvider alloc];
          v22 = v172[13];
          v21 = v172[14];
          featureProvider = [v172 featureProvider];
          v24 = [(VNSceneprintMLFeatureProvider *)v20 initWithSceneprint:v18 dataType:v21 forKey:v22 originalFeatureProvider:featureProvider];

          v25 = [(VNCoreMLModel *)v172 _configuredMLPredictionOptionsForOptions:v19 error:errorCopy];
          if (v25)
          {
            model2 = [v172 model];
            v169 = [model2 predictionFromFeatures:v24 options:v25 error:errorCopy];
          }

          else
          {
            v169 = 0;
          }
        }

        else
        {
          v169 = 0;
        }
      }

      else
      {
        v169 = 0;
      }
    }

    else
    {
      detectionPrintRequestSpecifier = [model detectionPrintRequestSpecifier];

      if (detectionPrintRequestSpecifier)
      {
        v29 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNCoreMLTransformerProcessOption_Detectionprint" inOptions:v13 error:errorCopy];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
          v32 = v13;
          if (model)
          {
            v33 = [VNDetectionprintMLFeatureProvider alloc];
            detectionPrintInputDescriptions = [v172 detectionPrintInputDescriptions];
            featureProvider2 = [v172 featureProvider];
            v36 = [(VNDetectionprintMLFeatureProvider *)v33 initWithDetectionprint:v31 featureDescriptions:detectionPrintInputDescriptions originalFeatureProvider:featureProvider2];

            v37 = [(VNCoreMLModel *)v172 _configuredMLPredictionOptionsForOptions:v32 error:errorCopy];
            if (v37)
            {
              model3 = [v172 model];
              v169 = [model3 predictionFromFeatures:v36 options:v37 error:errorCopy];
            }

            else
            {
              v169 = 0;
            }
          }

          else
          {
            v169 = 0;
          }
        }

        else
        {
          v169 = 0;
        }
      }

      else
      {
        v169 = [model predictWithCVPixelBuffer:buffer options:v13 error:errorCopy];
      }
    }
  }

  else
  {
    v169 = 0;
  }

  if (v169)
  {
    modelType = [v172 modelType];
    if (modelType > 3)
    {
      if (modelType != 4)
      {
        if (modelType != 5)
        {
          goto LABEL_29;
        }

LABEL_48:
        v53 = v172;
        v164 = v169;
        v147 = v13;
        v167 = v170;
        v158 = v53;
        if (self)
        {
          boundingBoxOutputDescription = [v53 boundingBoxOutputDescription];
          coordinatesFeatureName = [boundingBoxOutputDescription coordinatesFeatureName];
          v155 = [v164 featureValueForName:coordinatesFeatureName];

          boundingBoxOutputDescription2 = [v158 boundingBoxOutputDescription];
          confidenceFeatureName = [boundingBoxOutputDescription2 confidenceFeatureName];
          v153 = [v164 featureValueForName:confidenceFeatureName];

          if ([v155 type] == 5 && objc_msgSend(v153, "type") == 5)
          {
            multiArrayValue = [v155 multiArrayValue];
            multiArrayValue2 = [v153 multiArrayValue];
            shape = [multiArrayValue shape];
            shape2 = [multiArrayValue2 shape];
            strides = [multiArrayValue strides];
            v59 = [strides objectAtIndexedSubscript:0];
            unsignedIntegerValue = [v59 unsignedIntegerValue];

            strides2 = [multiArrayValue2 strides];

            v60 = [strides2 objectAtIndexedSubscript:0];
            unsignedIntegerValue2 = [v60 unsignedIntegerValue];

            v61 = [shape objectAtIndexedSubscript:0];
            unsignedIntegerValue3 = [v61 unsignedIntegerValue];

            boundingBoxOutputDescription3 = [v158 boundingBoxOutputDescription];
            labelNames = [boundingBoxOutputDescription3 labelNames];

            v63 = [labelNames count];
            v64 = [shape2 objectAtIndexedSubscript:1];
            LOBYTE(v63) = v63 == [v64 unsignedIntegerValue];

            if (v63)
            {
              v65 = [v147 objectForKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetX"];
              [v65 doubleValue];
              v137 = v66;

              v67 = [v147 objectForKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetY"];
              [v67 doubleValue];
              v69 = v68;

              v70 = [v147 objectForKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
              intValue = [v70 intValue];

              operationPoints = [v158 operationPoints];
              v138 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:unsignedIntegerValue3];
              if (unsignedIntegerValue3)
              {
                v148 = 0;
                v71 = 0;
                v134 = v137 * -2.0 + 1.0;
                v72 = v69 * -2.0 + 1.0;
                do
                {
                  v135 = v71;
                  v73 = v71 * unsignedIntegerValue;
                  v74 = [multiArrayValue objectAtIndexedSubscript:v71 * unsignedIntegerValue + 2];
                  [v74 doubleValue];
                  v76 = v75;

                  v77 = [multiArrayValue objectAtIndexedSubscript:v73 + 3];
                  [v77 doubleValue];
                  v79 = v78;

                  v80 = [multiArrayValue objectAtIndexedSubscript:v73];
                  [v80 doubleValue];
                  v82 = v81;

                  v83 = [multiArrayValue objectAtIndexedSubscript:v73 + 1];
                  [v83 doubleValue];
                  v85 = v84;

                  v86 = v82 + v76 * -0.5;
                  v87 = v85 + v79 * -0.5;
                  if (intValue)
                  {
                    if (intValue == 1)
                    {
                      v86 = (v86 - v137) / v134;
                      v87 = (v87 - v69) / v72;
                      v76 = v76 / v134;
                      v79 = v79 / v72;
                    }
                  }

                  else
                  {
                    v76 = v134 * v76;
                    v79 = v72 * v79;
                    v86 = v137 + v134 * v86;
                    v87 = v69 + v72 * v87;
                  }

                  v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(labelNames, "count")}];
                  v182 = 0u;
                  v183 = 0u;
                  v180 = 0u;
                  v181 = 0u;
                  v88 = labelNames;
                  v89 = [v88 countByEnumeratingWithState:&v180 objects:v185 count:16];
                  if (v89)
                  {
                    v90 = 0;
                    v91 = *v181;
                    v92 = 0.0;
                    while (2)
                    {
                      for (i = 0; i != v89; ++i)
                      {
                        if (*v181 != v91)
                        {
                          objc_enumerationMutation(v88);
                        }

                        v94 = *(*(&v180 + 1) + 8 * i);
                        v95 = [multiArrayValue2 objectAtIndexedSubscript:v148 + v90];
                        [v95 doubleValue];
                        v97 = v96;

                        v179 = 0;
                        v98 = [operationPoints getClassificationMetrics:&v179 forClassificationIdentifier:v94 error:errorCopy];
                        v99 = v179;
                        v100 = v99;
                        if ((v98 & 1) == 0)
                        {

                          v27 = 0;
                          v108 = v138;
                          goto LABEL_102;
                        }

                        v101 = [VNClassificationObservation alloc];
                        *&v102 = v97;
                        v103 = [(VNClassificationObservation *)v101 initWithOriginatingRequestSpecifier:v167 identifier:v94 confidence:v100 classificationMetrics:v102];
                        [v151 addObject:v103];

                        v92 = v92 + v97;
                        ++v90;
                      }

                      v89 = [v88 countByEnumeratingWithState:&v180 objects:v185 count:16];
                      if (v89)
                      {
                        continue;
                      }

                      break;
                    }

                    if (v92 > 0.0)
                    {
                      v178[0] = MEMORY[0x1E69E9820];
                      v178[1] = 3221225472;
                      v178[2] = __119__VNCoreMLTransformer__recognizedObjectObservationsFromModel_outputFeatures_options_originatingRequestSpecifier_error___block_invoke;
                      v178[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
                      v178[4] = *&v92;
                      [v151 enumerateObjectsUsingBlock:v178];
                    }
                  }

                  else
                  {

                    v92 = 0.0;
                  }

                  v104 = &__block_literal_global_125;
                  [v151 sortWithOptions:16 usingComparator:&__block_literal_global_125];

                  v105 = [VNRecognizedObjectObservation alloc];
                  *&v106 = v92;
                  v106 = [(VNRecognizedObjectObservation *)v105 initWithOriginatingRequestSpecifier:v167 boundingBox:v151 confidence:0 labels:0 segmentationMask:v86 groupId:1.0 - v87 - v79, v76, v79, v106];
                  [v138 addObject:v106];

                  v71 = v135 + 1;
                  v148 += unsignedIntegerValue2;
                }

                while (v135 + 1 != unsignedIntegerValue3);
              }

              v108 = v138;
              v27 = v138;
LABEL_102:
            }

            else if (errorCopy)
            {
              [VNError errorForInvalidModelWithLocalizedDescription:@"The confidence scores don't line up with the labels"];
              *errorCopy = v27 = 0;
            }

            else
            {
              v27 = 0;
            }
          }

          else if (errorCopy)
          {
            [VNError errorForInvalidModelWithLocalizedDescription:@"The outputs of the model are of unexpected types"];
            *errorCopy = v27 = 0;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }

LABEL_107:
        if (v27)
        {
          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v27 = v27;
          v130 = [v27 countByEnumeratingWithState:&v174 objects:v184 count:16];
          if (v130)
          {
            v131 = *v175;
            do
            {
              for (j = 0; j != v130; ++j)
              {
                if (*v175 != v131)
                {
                  objc_enumerationMutation(v27);
                }

                [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v13 toObservation:*(*(&v174 + 1) + 8 * j)];
              }

              v130 = [v27 countByEnumeratingWithState:&v174 objects:v184 count:16];
            }

            while (v130);
          }
        }

        goto LABEL_116;
      }
    }

    else if (modelType)
    {
      if (modelType != 3)
      {
LABEL_29:
        v40 = v172;
        v166 = v169;
        v157 = v40;
        v160 = v170;
        if (self)
        {
          v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
          model4 = [v40 model];
          modelDescription = [model4 modelDescription];
          outputDescriptionsByName = [modelDescription outputDescriptionsByName];

          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v44 = outputDescriptionsByName;
          v45 = [v44 countByEnumeratingWithState:&v180 objects:v185 count:16];
          if (v45)
          {
            v46 = *v181;
LABEL_32:
            v47 = 0;
            while (1)
            {
              if (*v181 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v180 + 1) + 8 * v47);
              v49 = [v44 objectForKeyedSubscript:v48];
              v50 = [v166 featureValueForName:v48];
              if (!v50)
              {
                if (errorCopy)
                {
                  v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not obtain a feature value for key %@", v48];
                  *errorCopy = [VNError errorForInvalidModelWithLocalizedDescription:v129];
                }

                v27 = 0;
                goto LABEL_93;
              }

              if ([v49 type] != 4 || objc_msgSend(v50, "type") != 4)
              {
                break;
              }

              imageBufferValue = [v50 imageBufferValue];
              if (imageBufferValue)
              {
                v52 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v160 featureName:v48 CVPixelBuffer:imageBufferValue];
                [v163 addObject:v52];
LABEL_41:
              }

              if (v45 == ++v47)
              {
                v45 = [v44 countByEnumeratingWithState:&v180 objects:v185 count:16];
                if (v45)
                {
                  goto LABEL_32;
                }

                goto LABEL_44;
              }
            }

            v52 = [[VNCoreMLFeatureValueObservation alloc] initWithOriginatingRequestSpecifier:v160 featureName:v48 featureValue:v50];
            [v163 addObject:v52];
            goto LABEL_41;
          }

LABEL_44:

          v27 = v163;
LABEL_93:
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_107;
      }

      goto LABEL_48;
    }

    v109 = v172;
    v159 = v169;
    v165 = v170;
    v154 = v109;
    if (self)
    {
      operationPoints2 = [v109 operationPoints];
      predictedProbabilitiesKey = [v109 predictedProbabilitiesKey];
      v156 = predictedProbabilitiesKey;
      if (predictedProbabilitiesKey)
      {
        v152 = [v159 featureValueForName:predictedProbabilitiesKey];
        dictionaryValue = [v152 dictionaryValue];
        v162 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dictionaryValue, "count")}];
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v111 = dictionaryValue;
        v112 = [v111 countByEnumeratingWithState:&v180 objects:v185 count:16];
        if (v112)
        {
          v113 = *v181;
          while (2)
          {
            for (k = 0; k != v112; ++k)
            {
              if (*v181 != v113)
              {
                objc_enumerationMutation(v111);
              }

              v115 = *(*(&v180 + 1) + 8 * k);
              v116 = [v111 objectForKeyedSubscript:v115];
              [v116 floatValue];
              v118 = v117;

              v119 = objc_opt_class();
              if (([v119 isSubclassOfClass:objc_opt_class()] & 1) == 0)
              {
                v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v115];

                v115 = v115;
              }

              v178[0] = 0;
              v121 = [operationPoints2 getClassificationMetrics:v178 forClassificationIdentifier:v115 error:errorCopy];
              v122 = v178[0];
              v123 = v122;
              if ((v121 & 1) == 0)
              {

                v27 = 0;
                v128 = v162;
                goto LABEL_87;
              }

              v124 = [VNClassificationObservation alloc];
              LODWORD(v125) = v118;
              v126 = [(VNClassificationObservation *)v124 initWithOriginatingRequestSpecifier:v165 identifier:v115 confidence:v123 classificationMetrics:v125];
              [v162 addObject:v126];
            }

            v112 = [v111 countByEnumeratingWithState:&v180 objects:v185 count:16];
            if (v112)
            {
              continue;
            }

            break;
          }
        }

        v127 = &__block_literal_global_125;
        [v162 sortWithOptions:16 usingComparator:&__block_literal_global_125];

        v128 = v162;
        v27 = v162;
LABEL_87:
      }

      else if (errorCopy)
      {
        [VNError errorForInvalidModelWithLocalizedDescription:@"predicted probabilities key is not available"];
        *errorCopy = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_107;
  }

  v27 = 0;
LABEL_116:

LABEL_117:

  return v27;
}

void __119__VNCoreMLTransformer__recognizedObjectObservationsFromModel_outputFeatures_options_originatingRequestSpecifier_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 confidence];
  v4 = v3 / *(a1 + 32);
  *&v4 = v4;
  [v5 setConfidence:v4];
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  model = [(VNCoreMLTransformer *)self model];
  scenePrintRequestSpecifier = [model scenePrintRequestSpecifier];

  if (!scenePrintRequestSpecifier)
  {
    v20 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
    if (!v20)
    {
      v19 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v43 = v20;
    v21 = [optionsCopy objectForKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
    intValue = [v21 intValue];

    v47 = *MEMORY[0x1E695EFF8];
    v45 = 0x3FF0000000000000;
    v46 = 0x3FF0000000000000;
    width = [v20 width];
    height = [v20 height];
    v48.origin.x = x * width;
    v48.size.width = width * width;
    v48.origin.y = y * height;
    v48.size.height = height * height;
    v49 = CGRectIntegral(v48);
    v25 = v49.origin.x;
    v26 = v49.origin.y;
    v27 = v49.size.width;
    v28 = v49.size.height;
    if (model && width && height && *(model + 48))
    {
      [*(model + 40) modelDescription];
      v42 = v40 = intValue;
      inputDescriptionsByName = [v42 inputDescriptionsByName];
      v29 = [inputDescriptionsByName objectForKeyedSubscript:*(model + 48)];
      imageConstraint = [v29 imageConstraint];
      sizeConstraint = [imageConstraint sizeConstraint];

      intValue = v40;
      if (sizeConstraint)
      {
        v32 = [sizeConstraint allowedImageSizeClosestToPixelsWide:width pixelsHigh:height preferDownScaling:1 preferInputAspectRatio:1];
        *(model + 80) = [v32 pixelsWide];
        *(model + 88) = [v32 pixelsHigh];
      }
    }

    inputImageWidth = [model inputImageWidth];
    inputImageHeight = [model inputImageHeight];
    if (inputImageWidth && inputImageHeight)
    {
      v44 = 0;
      v35 = [v43 cropAndScaleBufferWithWidth:inputImageWidth height:inputImageHeight cropRect:objc_msgSend(model format:"inputImageFormat") imageCropAndScaleOption:intValue options:optionsCopy error:error calculatedNormalizedOriginOffset:v25 calculatedScaleX:v26 calculatedScaleY:v27 pixelBufferRepsCacheKey:{v28, &v47, &v46, &v45, &v44}];
      v36 = v44;
      *buffer = v35;
      if (v35)
      {
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:*&v47];
        [optionsCopy setObject:v37 forKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetX"];

        v38 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v47 + 1)];
        [optionsCopy setObject:v38 forKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetY"];

        [(VNDetector *)self recordImageCropQuickLookInfoToOptions:optionsCopy cacheKey:v36 imageBuffer:v43];
        v19 = 1;
LABEL_20:

        v20 = v43;
        goto LABEL_21;
      }
    }

    else
    {
      if (error)
      {
        [VNError errorForInvalidModelWithLocalizedDescription:@"The inputImageFeatureName does not point to a MLFeatureTypeImage input."];
        v36 = 0;
        *error = v19 = 0;
        goto LABEL_20;
      }

      v36 = 0;
    }

    v19 = 0;
    goto LABEL_20;
  }

  v19 = 1;
LABEL_22:

  return v19;
}

- (VNCoreMLTransformer)initWithOptions:(id)options model:(id)model error:(id *)error
{
  optionsCopy = options;
  modelCopy = model;
  if (modelCopy && (v10 = objc_opt_class(), ([v10 isSubclassOfClass:objc_opt_class()] & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = VNCoreMLTransformer;
    v11 = [(VNDetector *)&v16 initWithConfigurationOptions:optionsCopy];
    selfCopy = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_model, model);
      v13 = [VNValidationUtilities requiredSessionInOptions:optionsCopy error:error];
      if (!v13 || ![(VNDetector *)selfCopy completeInitializationForSession:v13 error:error])
      {

        v14 = 0;
        goto LABEL_12;
      }
    }

    selfCopy = selfCopy;
    v14 = selfCopy;
  }

  else
  {
    if (error)
    {
      [VNError errorWithCode:5 message:@"No valid VNCoreMLModel found in passed in options"];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    selfCopy = self;
  }

LABEL_12:

  return v14;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end