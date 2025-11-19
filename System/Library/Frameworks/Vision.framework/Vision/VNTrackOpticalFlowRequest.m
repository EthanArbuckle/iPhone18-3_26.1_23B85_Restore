@interface VNTrackOpticalFlowRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)keepNetworkOutput;
- (OSType)outputPixelFormat;
- (VNTrackOpticalFlowRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy;
- (id)_createGeneratorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4 images:(id)a5 portraitMode:(BOOL)a6 previousTargetImageIsCurrentRefImage:(BOOL)a7 previousObservation:(id)a8;
- (id)_observationForOpticalFlowOfReferenceImageBuffer:(id)a3 targetImageBuffer:(id)a4 portraitMode:(BOOL)a5 previousObservation:(id)a6 previousTargetImageIsCurrentRefImage:(BOOL)a7 requestRevision:(unint64_t)a8 requestPerformingContext:(id)a9 error:(id *)a10;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedOutputPixelFormatsAndReturnError:(id *)a3;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setComputationAccuracy:(VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy;
- (void)setKeepNetworkOutput:(BOOL)keepNetworkOutput;
- (void)setOutputPixelFormat:(OSType)outputPixelFormat;
@end

@implementation VNTrackOpticalFlowRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v9 aspectForRegionOfInterest:?];
    v31 = v18 == 1;
    if (self->_previousRequestRevision != a3 || self->_previousPortraitMode != v31)
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

    v23 = [[VNImageSignature alloc] initWithImageBuffer:v9 regionOfInterest:a5 error:v11, v13, v15, v17];
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

      v28 = [(VNTrackOpticalFlowRequest *)self _observationForOpticalFlowOfReferenceImageBuffer:v9 targetImageBuffer:v25 portraitMode:v18 == 1 previousObservation:self->_previousObservation previousTargetImageIsCurrentRefImage:v26 requestRevision:a3 requestPerformingContext:v8 error:a5];
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

    self->_previousRequestRevision = a3;
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v13.receiver = self;
  v13.super_class = VNTrackOpticalFlowRequest;
  v5 = [(VNRequest *)&v13 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = MEMORY[0x1E696AD98];
  v7 = [(VNTrackOpticalFlowRequest *)self computationAccuracy];
  if (v7 - 1 >= 3)
  {
    v8 = VNTrackOpticalFlowRequestComputationAccuracyLow;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 numberWithUnsignedInteger:v8];
  [v5 setObject:v9 forKeyedSubscript:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNTrackOpticalFlowRequest outputPixelFormat](self, "outputPixelFormat")}];
  [v5 setObject:v10 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_OutputPixelFormat"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNTrackOpticalFlowRequest keepNetworkOutput](self, "keepNetworkOutput")}];
  [v5 setObject:v11 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_KeepNetworkOutput"];

  return v5;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNTrackOpticalFlowRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNTrackOpticalFlowRequest *)self setOutputPixelFormat:[(VNTrackOpticalFlowRequest *)v5 outputPixelFormat]];
      [(VNTrackOpticalFlowRequest *)self setKeepNetworkOutput:[(VNTrackOpticalFlowRequest *)v5 keepNetworkOutput]];
    }
  }
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNOpticalFlowGeneratorType";
    v5 = @"VNOpticalFlowGeneratorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
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
  v4 = [(VNRequest *)self configuration];
  [v4 setKeepNetworkOutput:v3];
}

- (BOOL)keepNetworkOutput
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 keepNetworkOutput];

  return v3;
}

- (void)setOutputPixelFormat:(OSType)outputPixelFormat
{
  v3 = *&outputPixelFormat;
  v4 = [(VNRequest *)self configuration];
  [v4 setOutputPixelFormat:v3];
}

- (OSType)outputPixelFormat
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 outputPixelFormat];

  return v3;
}

- (id)supportedOutputPixelFormatsAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self resolvedRevision];
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v10 forRevision:v5 error:a3];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 supportedOutputPixelFormatsForOptions:v7 error:a3];
    goto LABEL_7;
  }

  if (a3)
  {
    [VNError errorForUnsupportedRevision:v5 ofRequest:self];
    *a3 = v8 = 0;
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
  v4 = [(VNRequest *)self configuration];
  [v4 setComputationAccuracy:computationAccuracy];
}

- (VNTrackOpticalFlowRequestComputationAccuracy)computationAccuracy
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 computationAccuracy];

  return v3;
}

- (VNTrackOpticalFlowRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNStatefulRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

- (id)_observationForOpticalFlowOfReferenceImageBuffer:(id)a3 targetImageBuffer:(id)a4 portraitMode:(BOOL)a5 previousObservation:(id)a6 previousTargetImageIsCurrentRefImage:(BOOL)a7 requestRevision:(unint64_t)a8 requestPerformingContext:(id)a9 error:(id *)a10
{
  v11 = a7;
  v13 = a5;
  v33[2] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v16 = a4;
  v32 = a6;
  v17 = a9;
  v18 = [(VNTrackOpticalFlowRequest *)self applicableDetectorTypeForRevision:a8 error:a10];
  if (!v18)
  {
    v29 = 0;
    goto LABEL_13;
  }

  v19 = [v17 session];
  v33[0] = v31;
  v33[1] = v16;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v21 = [(VNTrackOpticalFlowRequest *)self _createGeneratorOptionsForRequestRevision:a8 session:v19 images:v20 portraitMode:v13 previousTargetImageIsCurrentRefImage:v11 previousObservation:v32];

  v22 = [v19 detectorOfType:v18 configuredWithOptions:v21 error:a10];
  if (v22)
  {
    -[VNImageBasedRequest regionOfInterestPixelRectForWidth:height:](self, "regionOfInterestPixelRectForWidth:height:", [v16 width], objc_msgSend(v16, "height"));
    v27 = [v22 processUsingQualityOfServiceClass:objc_msgSend(v17 options:"qosClass") regionOfInterest:v21 warningRecorder:self error:a10 progressHandler:{0, v23, v24, v25, v26}];
    v28 = v27;
    if (v27)
    {
      if ([v27 count] == 1)
      {
        v29 = [v28 firstObject];
LABEL_11:

        goto LABEL_12;
      }

      if (a10)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot generate optical flow"];
        *a10 = v29 = 0;
        goto LABEL_11;
      }
    }

    v29 = 0;
    goto LABEL_11;
  }

  v29 = 0;
LABEL_12:

LABEL_13:

  return v29;
}

- (id)_createGeneratorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4 images:(id)a5 portraitMode:(BOOL)a6 previousTargetImageIsCurrentRefImage:(BOOL)a7 previousObservation:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a5;
  v15 = a8;
  v16 = [(VNTrackOpticalFlowRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  [v16 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v10];
  [v16 setObject:v17 forKeyedSubscript:@"VNOpticalFlowGeneratorInitOption_PortraitMode"];

  if (v9)
  {
    [v16 setObject:v15 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_PreviousObservation"];
  }

  return v16;
}

@end