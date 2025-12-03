@interface VNTrackOpticalFlowRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)keepNetworkOutput;
- (OSType)outputPixelFormat;
- (VNTrackOpticalFlowRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy;
- (id)_createGeneratorOptionsForRequestRevision:(unint64_t)revision session:(id)session images:(id)images portraitMode:(BOOL)mode previousTargetImageIsCurrentRefImage:(BOOL)image previousObservation:(id)observation;
- (id)_observationForOpticalFlowOfReferenceImageBuffer:(id)buffer targetImageBuffer:(id)imageBuffer portraitMode:(BOOL)mode previousObservation:(id)observation previousTargetImageIsCurrentRefImage:(BOOL)image requestRevision:(unint64_t)revision requestPerformingContext:(id)context error:(id *)self0;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedOutputPixelFormatsAndReturnError:(id *)error;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setComputationAccuracy:(VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy;
- (void)setKeepNetworkOutput:(BOOL)keepNetworkOutput;
- (void)setOutputPixelFormat:(OSType)outputPixelFormat;
@end

@implementation VNTrackOpticalFlowRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v9 aspectForRegionOfInterest:?];
    v31 = v18 == 1;
    if (self->_previousRequestRevision != revision || self->_previousPortraitMode != v31)
    {
      self->_previousRequestRevision = 0;
      v19 = *(MEMORY[0x1E695F058] + 16);
      self->_previousRegionOfInterest.origin = *MEMORY[0x1E695F058];
      self->_previousRegionOfInterest.size = v19;
      previousImageBuffer = self->_previousImageBuffer;
      self->_previousImageBuffer = 0;

      previousImageSignature = self->_previousImageSignature;
      self->_previousImageSignature = 0;

      previousObservation = self->_previousObservation;
      self->_previousObservation = 0;

      self->_previousPortraitMode = 0;
    }

    v23 = [[VNImageSignature alloc] initWithImageBuffer:v9 regionOfInterest:error error:v11, v13, v15, v17];
    v24 = v23;
    v25 = self->_previousImageBuffer;
    if (v25)
    {
      if (self->_previousImageSignature)
      {
        v26 = [(VNImageSignature *)v23 isEqual:?];
        v25 = self->_previousImageBuffer;
      }

      else
      {
        v26 = 0;
      }

      v28 = [(VNTrackOpticalFlowRequest *)self _observationForOpticalFlowOfReferenceImageBuffer:v9 targetImageBuffer:v25 portraitMode:v18 == 1 previousObservation:self->_previousObservation previousTargetImageIsCurrentRefImage:v26 requestRevision:revision requestPerformingContext:contextCopy error:error];
      if (!v28)
      {
        v27 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v28 = 0;
    }

    self->_previousRequestRevision = revision;
    self->_previousRegionOfInterest.origin.x = v11;
    self->_previousRegionOfInterest.origin.y = v13;
    self->_previousRegionOfInterest.size.width = v15;
    self->_previousRegionOfInterest.size.height = v17;
    objc_storeStrong(&self->_previousImageBuffer, v9);
    objc_storeStrong(&self->_previousImageSignature, v24);
    objc_storeStrong(&self->_previousObservation, v28);
    self->_previousPortraitMode = v31;
    v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v28, 0}];
    [(VNRequest *)self setResults:v29];

    v27 = 1;
LABEL_14:

    goto LABEL_15;
  }

  v27 = 0;
LABEL_15:

  return v27;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v13.receiver = self;
  v13.super_class = VNTrackOpticalFlowRequest;
  v5 = [(VNRequest *)&v13 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = MEMORY[0x1E696AD98];
  computationAccuracy = [(VNTrackOpticalFlowRequest *)self computationAccuracy];
  if (computationAccuracy - 1 >= 3)
  {
    v8 = VNTrackOpticalFlowRequestComputationAccuracyLow;
  }

  else
  {
    v8 = computationAccuracy;
  }

  v9 = [v6 numberWithUnsignedInteger:v8];
  [v5 setObject:v9 forKeyedSubscript:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNTrackOpticalFlowRequest outputPixelFormat](self, "outputPixelFormat")}];
  [v5 setObject:v10 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_OutputPixelFormat"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackOpticalFlowRequest keepNetworkOutput](self, "keepNetworkOutput")}];
  [v5 setObject:v11 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_KeepNetworkOutput"];

  return v5;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNTrackOpticalFlowRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNTrackOpticalFlowRequest *)self setOutputPixelFormat:[(VNTrackOpticalFlowRequest *)v5 outputPixelFormat]];
      [(VNTrackOpticalFlowRequest *)self setKeepNetworkOutput:[(VNTrackOpticalFlowRequest *)v5 keepNetworkOutput]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNOpticalFlowGeneratorType";
    v5 = @"VNOpticalFlowGeneratorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setKeepNetworkOutput:(BOOL)keepNetworkOutput
{
  v3 = keepNetworkOutput;
  configuration = [(VNRequest *)self configuration];
  [configuration setKeepNetworkOutput:v3];
}

- (BOOL)keepNetworkOutput
{
  configuration = [(VNRequest *)self configuration];
  keepNetworkOutput = [configuration keepNetworkOutput];

  return keepNetworkOutput;
}

- (void)setOutputPixelFormat:(OSType)outputPixelFormat
{
  v3 = *&outputPixelFormat;
  configuration = [(VNRequest *)self configuration];
  [configuration setOutputPixelFormat:v3];
}

- (OSType)outputPixelFormat
{
  configuration = [(VNRequest *)self configuration];
  outputPixelFormat = [configuration outputPixelFormat];

  return outputPixelFormat;
}

- (id)supportedOutputPixelFormatsAndReturnError:(id *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v10 forRevision:resolvedRevision error:error];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 supportedOutputPixelFormatsForOptions:v7 error:error];
    goto LABEL_7;
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
    *error = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (void)setComputationAccuracy:(VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy
{
  configuration = [(VNRequest *)self configuration];
  [configuration setComputationAccuracy:computationAccuracy];
}

- (VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy
{
  configuration = [(VNRequest *)self configuration];
  computationAccuracy = [configuration computationAccuracy];

  return computationAccuracy;
}

- (VNTrackOpticalFlowRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNStatefulRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

- (id)_observationForOpticalFlowOfReferenceImageBuffer:(id)buffer targetImageBuffer:(id)imageBuffer portraitMode:(BOOL)mode previousObservation:(id)observation previousTargetImageIsCurrentRefImage:(BOOL)image requestRevision:(unint64_t)revision requestPerformingContext:(id)context error:(id *)self0
{
  imageCopy = image;
  modeCopy = mode;
  v33[2] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  imageBufferCopy = imageBuffer;
  observationCopy = observation;
  contextCopy = context;
  v18 = [(VNTrackOpticalFlowRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (!v18)
  {
    firstObject = 0;
    goto LABEL_13;
  }

  session = [contextCopy session];
  v33[0] = bufferCopy;
  v33[1] = imageBufferCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v21 = [(VNTrackOpticalFlowRequest *)self _createGeneratorOptionsForRequestRevision:revision session:session images:v20 portraitMode:modeCopy previousTargetImageIsCurrentRefImage:imageCopy previousObservation:observationCopy];

  v22 = [session detectorOfType:v18 configuredWithOptions:v21 error:error];
  if (v22)
  {
    -[VNImageBasedRequest regionOfInterestPixelRectForWidth:height:](self, "regionOfInterestPixelRectForWidth:height:", [imageBufferCopy width], objc_msgSend(imageBufferCopy, "height"));
    v27 = [v22 processUsingQualityOfServiceClass:objc_msgSend(contextCopy options:"qosClass") regionOfInterest:v21 warningRecorder:self error:error progressHandler:{0, v23, v24, v25, v26}];
    v28 = v27;
    if (v27)
    {
      if ([v27 count] == 1)
      {
        firstObject = [v28 firstObject];
LABEL_11:

        goto LABEL_12;
      }

      if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot generate optical flow"];
        *error = firstObject = 0;
        goto LABEL_11;
      }
    }

    firstObject = 0;
    goto LABEL_11;
  }

  firstObject = 0;
LABEL_12:

LABEL_13:

  return firstObject;
}

- (id)_createGeneratorOptionsForRequestRevision:(unint64_t)revision session:(id)session images:(id)images portraitMode:(BOOL)mode previousTargetImageIsCurrentRefImage:(BOOL)image previousObservation:(id)observation
{
  imageCopy = image;
  modeCopy = mode;
  imagesCopy = images;
  observationCopy = observation;
  v16 = [(VNTrackOpticalFlowRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
  [v16 setObject:imagesCopy forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  [v16 setObject:v17 forKeyedSubscript:@"VNOpticalFlowGeneratorInitOption_PortraitMode"];

  if (imageCopy)
  {
    [v16 setObject:observationCopy forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_PreviousObservation"];
  }

  return v16;
}

@end