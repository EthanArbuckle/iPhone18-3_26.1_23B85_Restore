@interface VNCoreMLRequest
- (BOOL)allowsCachingOfResults;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNCoreMLRequest)initWithModel:(VNCoreMLModel *)model completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNImageCropAndScaleOption)imageCropAndScaleOption;
- (id)description;
- (id)newDuplicateInstance;
- (id)sequencedRequestPreviousObservationsKey;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
- (void)_printProducingDependentRequestFromSpecifier:(void *)a3 performedInContext:(void *)a4 error:;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setImageCropAndScaleOption:(VNImageCropAndScaleOption)imageCropAndScaleOption;
@end

@implementation VNCoreMLRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v39[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v35 = [v8 session];
    v10 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:?];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNCoreMLRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
    [v10 setObject:v11 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

    v12 = [(VNCoreMLRequest *)self model];
    v38 = 0;
    v13 = [[VNCoreMLTransformer alloc] initWithOptions:v10 model:v12 error:&v38];
    v36 = v38;
    if (!v13)
    {
      if (!a5)
      {
        v29 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v34 = 0;
      [VNError errorWithCode:3 message:@"Failed to initialize VNCoreMLTransformer" underlyingError:v36];
      *a5 = v29 = 0;
LABEL_29:
      v13 = v34;
      goto LABEL_30;
    }

    v34 = v13;
    v39[0] = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [v10 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v32 = [v12 scenePrintRequestSpecifier];
    if (v32)
    {
      v33 = v10;
      v15 = v32;
      v16 = v8;
      v17 = v16;
      if (!self)
      {

        goto LABEL_25;
      }

      v18 = [(VNCoreMLRequest *)self _printProducingDependentRequestFromSpecifier:v15 performedInContext:v16 error:a5];
      v19 = v18;
      if (!v18)
      {

        goto LABEL_25;
      }

      v20 = [v18 VNCoreMLTransformerSceneprintsAndReturnError:a5];
      if (!v20)
      {

        goto LABEL_25;
      }

      [v33 setObject:v20 forKeyedSubscript:@"VNDetectorProcessOption_ScenePrints"];
    }

    v33 = [v12 detectionPrintRequestSpecifier];
    if (!v33)
    {
LABEL_13:
      v27 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v37 = v36;
      v15 = [(VNDetector *)v34 processUsingQualityOfServiceClass:v27 options:v10 regionOfInterest:self warningRecorder:&v37 error:0 progressHandler:?];
      v28 = v37;

      if (v15)
      {
        [(VNRequest *)self setResults:v15];
        v29 = 1;
      }

      else if (a5)
      {
        [VNError errorWithCode:3 message:@"The VNCoreMLTransform request failed" underlyingError:v28];
        *a5 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      v36 = v28;
      goto LABEL_28;
    }

    v15 = v10;
    v21 = v33;
    v22 = v8;
    v23 = v22;
    if (self)
    {
      v31 = v21;
      v24 = [(VNCoreMLRequest *)self _printProducingDependentRequestFromSpecifier:v21 performedInContext:v22 error:a5];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 VNCoreMLTransformerDetectionprintAndReturnError:a5];
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

- (void)_printProducingDependentRequestFromSpecifier:(void *)a3 performedInContext:(void *)a4 error:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v7 requestClassAndReturnError:a4];
  if (!v9)
  {
    a4 = 0;
    goto LABEL_16;
  }

  v10 = objc_alloc_init(v9);
  v11 = v10;
  if (v10)
  {
    [v10 applyConfigurationOfRequest:a1];
    if ([v11 setRevision:objc_msgSend(v7 error:{"requestRevision"), a4}])
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "imageCropAndScaleOption")}];
        [v11 setValue:v12 forKey:@"imageCropAndScaleOption"];
      }

      v13 = [v8 requestPerformerAndReturnError:a4];
      if (v13 && (v18[0] = v11, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "performDependentRequests:onBehalfOfRequest:inContext:error:", v14, a1, v8, a4), v14, (v15 & 1) != 0))
      {
        a4 = v11;
      }

      else
      {
        a4 = 0;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a4)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not create a dependent %@ to perform on behalf of %@", v7, a1];
    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v16];

LABEL_12:
    a4 = 0;
  }

LABEL_15:

LABEL_16:

  return a4;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(VNCoreMLRequest *)self model];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportedComputeDevices];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v8 = @"VNComputeStageMain";
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VNCoreMLRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNCoreMLRequest *)self setImageCropAndScaleOption:[(VNCoreMLRequest *)v4 imageCropAndScaleOption]];
    }
  }
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = VNCoreMLRequest;
  v4 = [(VNRequest *)&v9 sequencedRequestPreviousObservationsKey];
  v5 = [(VNCoreMLRequest *)self imageCropAndScaleOption];
  v6 = [(VNCoreMLModel *)self->_model sequencedRequestPreviousObservationsKey];
  v7 = [v3 initWithFormat:@"%@:imageCropAndScaleOption=%lu:Model=%@", v4, v5, v6];

  return v7;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNCoreMLRequest *)self imageCropAndScaleOption];
  if (v5 == [v4 imageCropAndScaleOption] && (-[VNCoreMLModel cachingIdentifier](self->_model, "cachingIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "modelCachingIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) != 0))
  {
    v11.receiver = self;
    v11.super_class = VNCoreMLRequest;
    v9 = [(VNImageBasedRequest *)&v11 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)allowsCachingOfResults
{
  v2 = [(VNCoreMLRequest *)self model];
  v3 = [v2 featureProvider];
  v4 = v3 == 0;

  return v4;
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  model = self->_model;
  v5 = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithModel:model completionHandler:v5];

  return v6;
}

- (id)description
{
  v3 = [(VNRequest *)self configuration];
  v4 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VNCoreMLRequest;
  v5 = [(VNImageBasedRequest *)&v10 description];
  v6 = VNImageCropAndScaleOptionToString([(VNCoreMLRequest *)self imageCropAndScaleOption]);
  v7 = [v3 modelCachingIdentifier];
  v8 = [v4 stringWithFormat:@"%@ %@ model=%@", v5, v6, v7];

  return v8;
}

- (void)setImageCropAndScaleOption:(VNImageCropAndScaleOption)imageCropAndScaleOption
{
  v4 = [(VNRequest *)self configuration];
  [v4 setImageCropAndScaleOption:imageCropAndScaleOption];
}

- (VNImageCropAndScaleOption)imageCropAndScaleOption
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 imageCropAndScaleOption];

  return v3;
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
    v10 = [(VNRequest *)v9 configuration];
    [v10 updateWithPropertiesOfModel:v9->_model];
    v11 = v9;
  }

  return v9;
}

@end