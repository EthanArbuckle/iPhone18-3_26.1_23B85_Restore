@interface VNGenerateOpticalFlowRequest
- (BOOL)_internalPerformRevision:(unint64_t)revision inContext:(id)context previousObservation:(id)observation error:(id *)error;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)keepNetworkOutput;
- (OSType)outputPixelFormat;
- (VNGenerateOpticalFlowRequestComputationAccuracy)computationAccuracy;
- (id)_createGeneratorOptionsForRequestRevision:(unint64_t)revision session:(id)session images:(id)images previousTargetImageIsCurrentRefImage:(BOOL)image previousObservation:(id)observation;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setComputationAccuracy:(VNGenerateOpticalFlowRequestComputationAccuracy)computationAccuracy;
- (void)setKeepNetworkOutput:(BOOL)keepNetworkOutput;
- (void)setOutputPixelFormat:(OSType)outputPixelFormat;
@end

@implementation VNGenerateOpticalFlowRequest

- (void)setKeepNetworkOutput:(BOOL)keepNetworkOutput
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    configuration[144] = keepNetworkOutput;
  }
}

- (BOOL)keepNetworkOutput
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v3 = configuration[144];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setOutputPixelFormat:(OSType)outputPixelFormat
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    configuration[37] = outputPixelFormat;
  }
}

- (OSType)outputPixelFormat
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v3 = configuration[37];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setComputationAccuracy:(VNGenerateOpticalFlowRequestComputationAccuracy)computationAccuracy
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    configuration[19] = computationAccuracy;
  }
}

- (VNGenerateOpticalFlowRequestComputationAccuracy)computationAccuracy
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v3 = configuration[19];
  }

  else
  {
    v3 = VNGenerateOpticalFlowRequestComputationAccuracyLow;
  }

  return v3;
}

- (id)_createGeneratorOptionsForRequestRevision:(unint64_t)revision session:(id)session images:(id)images previousTargetImageIsCurrentRefImage:(BOOL)image previousObservation:(id)observation
{
  imageCopy = image;
  imagesCopy = images;
  observationCopy = observation;
  v14 = [(VNGenerateOpticalFlowRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
  [v14 setObject:imagesCopy forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];
  if (imageCopy)
  {
    [v14 setObject:observationCopy forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_PreviousObservation"];
  }

  return v14;
}

- (BOOL)_internalPerformRevision:(unint64_t)revision inContext:(id)context previousObservation:(id)observation error:(id *)error
{
  v43[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  observationCopy = observation;
  v12 = [(VNGenerateOpticalFlowRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (v12)
  {
    v13 = [contextCopy imageBufferAndReturnError:error];
    if (!v13)
    {
      v35 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v14 = [(VNTargetedImageRequest *)self requiredTargetedImageBufferReturningError:error];
    if (!v14)
    {
      v35 = 0;
LABEL_21:

      goto LABEL_22;
    }

    [(VNImageBasedRequest *)self regionOfInterest];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v39 = [[VNImageSignature alloc] initWithImageBuffer:v13 regionOfInterest:error error:v15, v17, v19, v21];
    targetImageSignature = [observationCopy targetImageSignature];
    v24 = [(VNImageSignature *)v39 isEqual:targetImageSignature];

    if ((v24 & 1) == 0)
    {
      [observationCopy setTargetImageSignature:0];
      [observationCopy setOpticalFlow:0];
    }

    session = [contextCopy session];
    v43[0] = v13;
    v43[1] = v14;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v40 = [(VNGenerateOpticalFlowRequest *)self _createGeneratorOptionsForRequestRevision:revision session:session images:v25 previousTargetImageIsCurrentRefImage:v24 previousObservation:observationCopy];

    v26 = [session detectorOfType:v12 configuredWithOptions:v40 error:error];
    if (!v26)
    {
      v35 = 0;
LABEL_20:

      goto LABEL_21;
    }

    -[VNImageBasedRequest regionOfInterestPixelRectForWidth:height:](self, "regionOfInterestPixelRectForWidth:height:", [v14 width], objc_msgSend(v14, "height"));
    v31 = [v26 processUsingQualityOfServiceClass:objc_msgSend(contextCopy options:"qosClass") regionOfInterest:v40 warningRecorder:self error:error progressHandler:{0, v27, v28, v29, v30}];
    v32 = v31;
    if (!v31)
    {
      goto LABEL_18;
    }

    if ([v31 count] == 1)
    {
      v37 = [v32 objectAtIndexedSubscript:0];
      if (revision == 1)
      {
        v33 = [[VNImageSignature alloc] initWithImageBuffer:v14 regionOfInterest:error error:v16, v18, v20, v22];
        [v37 setTargetImageSignature:v33];
      }

      v42 = v37;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:{1, v37}];
      [(VNRequest *)self setResults:v34];

      v35 = 1;
      goto LABEL_19;
    }

    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot generate optical flow"];
      *error = v35 = 0;
    }

    else
    {
LABEL_18:
      v35 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v35 = 0;
LABEL_23:

  return v35;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = contextCopy;
  if (revision == 1)
  {
    v10 = [contextCopy previousSequencedObservationsAcceptedByRequest:self];
    if ([v10 count])
    {
      v11 = [v10 objectAtIndexedSubscript:0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(VNGenerateOpticalFlowRequest *)self _internalPerformRevision:revision inContext:v9 previousObservation:v11 error:error];
  [v11 setTargetImageSignature:0];
  [v11 setOpticalFlow:0];

  return v12;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v19.receiver = self;
  v19.super_class = VNGenerateOpticalFlowRequest;
  v6 = [(VNRequest *)&v19 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = MEMORY[0x1E696AD98];
  computationAccuracy = [(VNGenerateOpticalFlowRequest *)self computationAccuracy];
  if (computationAccuracy - 1 >= 3)
  {
    v9 = VNGenerateOpticalFlowRequestComputationAccuracyLow;
  }

  else
  {
    v9 = computationAccuracy;
  }

  v10 = [v7 numberWithUnsignedInteger:v9];
  [v6 setObject:v10 forKeyedSubscript:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGenerateOpticalFlowRequest outputPixelFormat](self, "outputPixelFormat")}];
  [v6 setObject:v11 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_OutputPixelFormat"];

  if (revision == 2)
  {
    v18 = 0;
    v12 = [(VNTargetedImageRequest *)self requiredTargetedImageBufferReturningError:&v18];
    v13 = v18;
    localizedDescription = [v13 localizedDescription];
    [VNError VNAssert:v12 != 0 log:localizedDescription];

    [(VNImageBasedRequest *)self regionOfInterest];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "aspectForRegionOfInterest:") == 1}];
    [v6 setObject:v15 forKeyedSubscript:@"VNOpticalFlowGeneratorInitOption_PortraitMode"];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNGenerateOpticalFlowRequest keepNetworkOutput](self, "keepNetworkOutput")}];
    [v6 setObject:v16 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_KeepNetworkOutput"];
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateOpticalFlowRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGenerateOpticalFlowRequest *)self setComputationAccuracy:[(VNGenerateOpticalFlowRequest *)v5 computationAccuracy]];
      [(VNGenerateOpticalFlowRequest *)self setOutputPixelFormat:[(VNGenerateOpticalFlowRequest *)v5 outputPixelFormat]];
      [(VNGenerateOpticalFlowRequest *)self setKeepNetworkOutput:[(VNGenerateOpticalFlowRequest *)v5 keepNetworkOutput]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision - 1 > 1)
  {
    if (error)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *error = v4 = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = @"VNOpticalFlowGeneratorType";
    v5 = @"VNOpticalFlowGeneratorType";
  }

  return v4;
}

@end