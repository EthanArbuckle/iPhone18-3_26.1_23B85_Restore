@interface VNCoreMLModel
+ (VNCoreMLModel)modelForMLModel:(MLModel *)model error:(NSError *)error;
- (NSArray)supportedComputeDevices;
- (id)_configuredMLPredictionOptionsForOptions:(void *)options error:;
- (id)predictWithCVPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error;
- (id)sequencedRequestPreviousObservationsKey;
- (void)setInputImageFeatureName:(NSString *)inputImageFeatureName;
@end

@implementation VNCoreMLModel

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@:UUID=%@", v5, self->_uuidStringForCacheIdentifier];

  return v6;
}

- (id)predictWithCVPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error
{
  optionsCopy = options;
  v9 = [VNPixelBufferMLFeatureProvider alloc];
  inputImageKey = self->_inputImageKey;
  featureProvider = [(VNCoreMLModel *)self featureProvider];
  v12 = [(VNPixelBufferMLFeatureProvider *)v9 initWithPixelBuffer:buffer forKey:inputImageKey originalFeatureProvider:featureProvider];

  v13 = [(VNCoreMLModel *)self _configuredMLPredictionOptionsForOptions:optionsCopy error:error];
  if (v13)
  {
    model = [(VNCoreMLModel *)self model];
    v15 = [model predictionFromFeatures:v12 options:v13 error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_configuredMLPredictionOptionsForOptions:(void *)options error:
{
  v5 = a2;
  if (self)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695FF08]);
    v7 = @"VNComputeStageMain";
    v8 = [v5 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
    v9 = [v8 objectForKeyedSubscript:@"VNComputeStageMain"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        computeDevice = [v9 computeDevice];

        v9 = computeDevice;
      }

      supportedComputeDevices = [self supportedComputeDevices];
      if (([supportedComputeDevices containsObject:v9] & 1) == 0)
      {
        if (options)
        {
          *options = [VNError errorForUnsupportedComputeDevice:v9];
        }

        v12 = 0;
        goto LABEL_11;
      }

      [v6 setUsesCPUOnly:{+[VNComputeDeviceUtilities isCPUComputeDevice:](VNComputeDeviceUtilities, "isCPUComputeDevice:", v9)}];
    }

    v12 = v6;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)setInputImageFeatureName:(NSString *)inputImageFeatureName
{
  v13 = inputImageFeatureName;
  v4 = [(NSString *)v13 copy];
  inputImageKey = self->_inputImageKey;
  self->_inputImageKey = v4;

  model = [(VNCoreMLModel *)self model];
  modelDescription = [model modelDescription];

  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  v9 = [inputDescriptionsByName objectForKeyedSubscript:v13];
  v10 = v9;
  if (v9 && [v9 type] == 4)
  {
    imageConstraint = [v10 imageConstraint];
    v12 = imageConstraint;
    if (imageConstraint)
    {
      self->_inputImageWidth = [imageConstraint pixelsWide];
      self->_inputImageHeight = [v12 pixelsHigh];
      self->_inputImageFormat = [v12 pixelFormatType];
    }
  }

  else
  {
    self->_inputImageWidth = 0;
    self->_inputImageHeight = 0;
  }
}

- (NSArray)supportedComputeDevices
{
  model = [(VNCoreMLModel *)self model];
  configuration = [model configuration];
  computeUnits = [configuration computeUnits];

  v5 = [VNComputeDeviceUtilities computeDeviceTypesForMLComputeUnits:computeUnits];

  return [VNComputeDeviceUtilities computeDevicesOfTypes:v5];
}

+ (VNCoreMLModel)modelForMLModel:(MLModel *)model error:(NSError *)error
{
  v88 = *MEMORY[0x1E69E9840];
  v73 = model;
  v5 = [VNCoreMLModel alloc];
  v6 = v73;
  if (!v5 || (v82.receiver = v5, v82.super_class = VNCoreMLModel, (v7 = objc_msgSendSuper2(&v82, sel_init)) == 0))
  {
    v28 = 0;
    postVisionFeaturePrintModel = v6;
    goto LABEL_66;
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v8 UUIDString];
  v10 = *(v7 + 1);
  *(v7 + 1) = uUIDString;

  modelDescription = [(MLModel *)v6 modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v13 = inputDescriptionsByName;
  v14 = [v13 countByEnumeratingWithState:&v83 objects:v87 count:16];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = *v84;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v84 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v83 + 1) + 8 * i);
      v18 = [v13 objectForKeyedSubscript:v17];
      if ([v18 type] == 4)
      {
        imageConstraint = [v18 imageConstraint];
        v20 = imageConstraint;
        if (!imageConstraint)
        {

          goto LABEL_20;
        }

        *(v7 + 10) = [imageConstraint pixelsWide];
        *(v7 + 11) = [v20 pixelsHigh];
        *(v7 + 7) = [v20 pixelFormatType];
        v21 = [v17 copy];
        v22 = *(v7 + 6);
        *(v7 + 6) = v21;

        v23 = [VNOperationPoints operationPointsForMLModel:v6 error:error];
        v24 = *(v7 + 2);
        *(v7 + 2) = v23;

        if (!*(v7 + 2))
        {
          goto LABEL_22;
        }

        predictedProbabilitiesName = [modelDescription predictedProbabilitiesName];
        v69 = predictedProbabilitiesName;
        if ([predictedProbabilitiesName length])
        {
          objc_storeStrong(v7 + 8, predictedProbabilitiesName);
        }

        obj = [modelDescription predictedFeatureName];
        objectBoundingBoxOutputDescription = [(MLModel *)v6 objectBoundingBoxOutputDescription];
        v27 = *(v7 + 9);
        *(v7 + 9) = objectBoundingBoxOutputDescription;

        if (*(v7 + 9))
        {
          *(v7 + 6) = 3;
        }

        else if (obj)
        {
          objc_storeStrong(v7 + 7, obj);
          *(v7 + 6) = 0;
        }

        else
        {
          outputDescriptionsByName = [modelDescription outputDescriptionsByName];
          *(v7 + 6) = 1;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v31 = outputDescriptionsByName;
          v32 = [v31 countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v32)
          {
            v33 = *v79;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v79 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                v35 = [v31 objectForKeyedSubscript:*(*(&v78 + 1) + 8 * j)];
                if ([v35 type] == 4)
                {
                  *(v7 + 6) = 2;
                }
              }

              v32 = [v31 countByEnumeratingWithState:&v78 objects:v87 count:16];
            }

            while (v32);
          }
        }

        [(MLModel *)v6 visionFeaturePrintInfo];
        v72 = postVisionFeaturePrintModel = v6;
        if (!v72)
        {
          goto LABEL_63;
        }

        postVisionFeaturePrintModel = [v72 postVisionFeaturePrintModel];

        featureExtractorParameters = [v72 featureExtractorParameters];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = featureExtractorParameters;
          v67 = v36;
          if (objc_opt_respondsToSelector())
          {
            requestClassName = [v36 requestClassName];
          }

          else
          {
            requestClassName = @"VNCreateSceneprintRequest";
          }

          v45 = +[VNRequestSpecifier specifierForRequestClassName:revision:error:](VNRequestSpecifier, "specifierForRequestClassName:revision:error:", requestClassName, [v36 scenePrintVersion], error);
          v46 = *(v7 + 12);
          *(v7 + 12) = v45;

          v47 = *(v7 + 12);
          if (v47 && [v47 representsSupportedRequestAndReturnError:error])
          {
            modelDescription2 = [postVisionFeaturePrintModel modelDescription];
            inputDescriptionsByName2 = [modelDescription2 inputDescriptionsByName];

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v50 = inputDescriptionsByName2;
            v51 = [v50 countByEnumeratingWithState:&v74 objects:&v83 count:16];
            if (v51)
            {
              v52 = *v75;
              while (2)
              {
                for (k = 0; k != v51; ++k)
                {
                  if (*v75 != v52)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v54 = *(*(&v74 + 1) + 8 * k);
                  v55 = [v50 objectForKeyedSubscript:v54];
                  if ([v55 type] == 5)
                  {
                    objc_storeStrong(v7 + 13, v54);
                    multiArrayConstraint = [v55 multiArrayConstraint];
                    *(v7 + 14) = [multiArrayConstraint dataType];

                    goto LABEL_61;
                  }
                }

                v51 = [v50 countByEnumeratingWithState:&v74 objects:&v83 count:16];
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

LABEL_61:

            *(v7 + 6) = 4;
            v37 = v67;
            goto LABEL_62;
          }

LABEL_58:
          v28 = 0;
LABEL_64:

          goto LABEL_65;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = featureExtractorParameters;
          v38 = +[VNRequestSpecifier specifierForRequestClassName:revision:error:](VNRequestSpecifier, "specifierForRequestClassName:revision:error:", @"VNCreateDetectionprintRequest", [v37 objectPrintVersion], error);
          v39 = *(v7 + 15);
          *(v7 + 15) = v38;

          v40 = *(v7 + 15);
          if (!v40 || ![v40 representsSupportedRequestAndReturnError:error])
          {
            goto LABEL_58;
          }

          modelDescription3 = [postVisionFeaturePrintModel modelDescription];
          inputDescriptionsByName3 = [modelDescription3 inputDescriptionsByName];
          v43 = [inputDescriptionsByName3 copy];
          v44 = *(v7 + 16);
          *(v7 + 16) = v43;

          if (!*(v7 + 16))
          {
            if (error)
            {
              *error = [VNError errorForInvalidModelWithLocalizedDescription:@"The FeaturePrint input descriptions ares not available."];
            }

            goto LABEL_58;
          }

          *(v7 + 6) = 5;
        }

        else
        {
          v56 = objc_opt_class();
          v37 = NSStringFromClass(v56);
          v57 = v37;
          uTF8String = [v37 UTF8String];
          VNValidatedLog(2, @"CoreML model has a FeaturePrint with an unsupported feature extractor class %s", v59, v60, v61, v62, v63, v64, uTF8String);
        }

LABEL_62:

LABEL_63:
        objc_storeStrong(v7 + 5, postVisionFeaturePrintModel);
        v28 = v7;
        goto LABEL_64;
      }
    }

    v14 = [v13 countByEnumeratingWithState:&v83 objects:v87 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_20:
  if (error)
  {
    [VNError errorWithCode:15 message:@"The model does not have a valid input feature of type image"];
    *error = v28 = 0;
  }

  else
  {
LABEL_22:
    v28 = 0;
  }

  postVisionFeaturePrintModel = v6;
LABEL_65:

LABEL_66:

  return v28;
}

@end