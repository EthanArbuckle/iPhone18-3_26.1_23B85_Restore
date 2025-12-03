@interface VNCoreMLRequest
- (BOOL)allowsCachingOfResults;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNCoreMLRequest)initWithModel:(VNCoreMLModel *)model completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNImageCropAndScaleOption)imageCropAndScaleOption;
- (id)description;
- (id)newDuplicateInstance;
- (id)sequencedRequestPreviousObservationsKey;
- (id)supportedComputeStageDevicesAndReturnError:(id *)error;
- (void)_printProducingDependentRequestFromSpecifier:(void *)specifier performedInContext:(void *)context error:;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setImageCropAndScaleOption:(VNImageCropAndScaleOption)imageCropAndScaleOption;
@end

@implementation VNCoreMLRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v10 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:?];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNCoreMLRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
    [v10 setObject:v11 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

    model = [(VNCoreMLRequest *)self model];
    v38 = 0;
    v13 = [[VNCoreMLTransformer alloc] initWithOptions:v10 model:model error:&v38];
    v36 = v38;
    if (!v13)
    {
      if (!error)
      {
        v29 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v34 = 0;
      [VNError errorWithCode:3 message:@"Failed to initialize VNCoreMLTransformer" underlyingError:v36];
      *error = v29 = 0;
LABEL_29:
      v13 = v34;
      goto LABEL_30;
    }

    v34 = v13;
    v39[0] = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [v10 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    scenePrintRequestSpecifier = [model scenePrintRequestSpecifier];
    if (scenePrintRequestSpecifier)
    {
      detectionPrintRequestSpecifier = v10;
      v15 = scenePrintRequestSpecifier;
      v16 = contextCopy;
      v17 = v16;
      if (!self)
      {

        goto LABEL_25;
      }

      v18 = [(VNCoreMLRequest *)self _printProducingDependentRequestFromSpecifier:v15 performedInContext:v16 error:error];
      v19 = v18;
      if (!v18)
      {

        goto LABEL_25;
      }

      v20 = [v18 VNCoreMLTransformerSceneprintsAndReturnError:error];
      if (!v20)
      {

        goto LABEL_25;
      }

      [detectionPrintRequestSpecifier setObject:v20 forKeyedSubscript:@"VNDetectorProcessOption_ScenePrints"];
    }

    detectionPrintRequestSpecifier = [model detectionPrintRequestSpecifier];
    if (!detectionPrintRequestSpecifier)
    {
LABEL_13:
      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v37 = v36;
      v15 = [(VNDetector *)v34 processUsingQualityOfServiceClass:qosClass options:v10 regionOfInterest:self warningRecorder:&v37 error:0 progressHandler:?];
      v28 = v37;

      if (v15)
      {
        [(VNRequest *)self setResults:v15];
        v29 = 1;
      }

      else if (error)
      {
        [VNError errorWithCode:3 message:@"The VNCoreMLTransform request failed" underlyingError:v28];
        *error = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      v36 = v28;
      goto LABEL_28;
    }

    v15 = v10;
    v21 = detectionPrintRequestSpecifier;
    v22 = contextCopy;
    v23 = v22;
    if (self)
    {
      v31 = v21;
      v24 = [(VNCoreMLRequest *)self _printProducingDependentRequestFromSpecifier:v21 performedInContext:v22 error:error];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 VNCoreMLTransformerDetectionprintAndReturnError:error];
        if (v26)
        {
          [v15 setObject:v26 forKeyedSubscript:@"VNCoreMLTransformerProcessOption_Detectionprint"];

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_25:
    v29 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v29 = 0;
LABEL_31:

  return v29;
}

- (void)_printProducingDependentRequestFromSpecifier:(void *)specifier performedInContext:(void *)context error:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  specifierCopy = specifier;
  v9 = [v7 requestClassAndReturnError:context];
  if (!v9)
  {
    context = 0;
    goto LABEL_16;
  }

  v10 = objc_alloc_init(v9);
  v11 = v10;
  if (v10)
  {
    [v10 applyConfigurationOfRequest:self];
    if ([v11 setRevision:objc_msgSend(v7 error:{"requestRevision"), context}])
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "imageCropAndScaleOption")}];
        [v11 setValue:v12 forKey:@"imageCropAndScaleOption"];
      }

      v13 = [specifierCopy requestPerformerAndReturnError:context];
      if (v13 && (v18[0] = v11, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "performDependentRequests:onBehalfOfRequest:inContext:error:", v14, self, specifierCopy, context), v14, (v15 & 1) != 0))
      {
        context = v11;
      }

      else
      {
        context = 0;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (context)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not create a dependent %@ to perform on behalf of %@", v7, self];
    *context = [VNError errorForInternalErrorWithLocalizedDescription:v16];

LABEL_12:
    context = 0;
  }

LABEL_15:

LABEL_16:

  return context;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  model = [(VNCoreMLRequest *)self model];
  v4 = model;
  if (model)
  {
    supportedComputeDevices = [model supportedComputeDevices];
  }

  else
  {
    supportedComputeDevices = MEMORY[0x1E695E0F0];
  }

  v8 = @"VNComputeStageMain";
  v9[0] = supportedComputeDevices;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNCoreMLRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNCoreMLRequest *)self setImageCropAndScaleOption:[(VNCoreMLRequest *)requestCopy imageCropAndScaleOption]];
    }
  }
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = VNCoreMLRequest;
  sequencedRequestPreviousObservationsKey = [(VNRequest *)&v9 sequencedRequestPreviousObservationsKey];
  imageCropAndScaleOption = [(VNCoreMLRequest *)self imageCropAndScaleOption];
  sequencedRequestPreviousObservationsKey2 = [(VNCoreMLModel *)self->_model sequencedRequestPreviousObservationsKey];
  v7 = [v3 initWithFormat:@"%@:imageCropAndScaleOption=%lu:Model=%@", sequencedRequestPreviousObservationsKey, imageCropAndScaleOption, sequencedRequestPreviousObservationsKey2];

  return v7;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCropAndScaleOption = [(VNCoreMLRequest *)self imageCropAndScaleOption];
  if (imageCropAndScaleOption == [configurationCopy imageCropAndScaleOption] && (-[VNCoreMLModel cachingIdentifier](self->_model, "cachingIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "modelCachingIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = VNCoreMLRequest;
    v9 = [(VNImageBasedRequest *)&v11 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)allowsCachingOfResults
{
  model = [(VNCoreMLRequest *)self model];
  featureProvider = [model featureProvider];
  v4 = featureProvider == 0;

  return v4;
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  model = self->_model;
  completionHandler = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithModel:model completionHandler:completionHandler];

  return v6;
}

- (id)description
{
  configuration = [(VNRequest *)self configuration];
  v4 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VNCoreMLRequest;
  v5 = [(VNImageBasedRequest *)&v10 description];
  v6 = VNImageCropAndScaleOptionToString([(VNCoreMLRequest *)self imageCropAndScaleOption]);
  modelCachingIdentifier = [configuration modelCachingIdentifier];
  v8 = [v4 stringWithFormat:@"%@ %@ model=%@", v5, v6, modelCachingIdentifier];

  return v8;
}

- (void)setImageCropAndScaleOption:(VNImageCropAndScaleOption)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageCropAndScaleOption:imageCropAndScaleOption];
}

- (VNImageCropAndScaleOption)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  imageCropAndScaleOption = [configuration imageCropAndScaleOption];

  return imageCropAndScaleOption;
}

- (VNCoreMLRequest)initWithModel:(VNCoreMLModel *)model completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v7 = model;
  v13.receiver = self;
  v13.super_class = VNCoreMLRequest;
  v8 = [(VNRequest *)&v13 initWithCompletionHandler:completionHandler];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, model);
    configuration = [(VNRequest *)v9 configuration];
    [configuration updateWithPropertiesOfModel:v9->_model];
    v11 = v9;
  }

  return v9;
}

@end