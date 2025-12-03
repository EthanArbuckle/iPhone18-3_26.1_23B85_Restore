@interface VNBlurDetector
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (__CVBuffer)_createPixelBufferFromImageBuffer:(id)buffer regionOfInterest:(CGRect)interest maximumIntermediateSideLength:(unint64_t)length options:(id)options error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNBlurDetector

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  v14 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v14)
  {
    goto LABEL_15;
  }

  v23 = 0;
  if (CVPixelBufferGetWidth(buffer) < 0x20 || CVPixelBufferGetHeight(buffer) <= 0x1F)
  {
    VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, 32);
    v15 = [(VNObservation *)[VNImageBlurObservation alloc] initWithOriginatingRequestSpecifier:v14];
    [(VNImageScoreObservation *)v15 setBlurScore:&unk_1F19C1E10];
    v25[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

    goto LABEL_16;
  }

  v22 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v22 forKey:@"VNBlurDetectorProcessOption_ImageBlurDeterminationMethod" inOptions:optionsCopy error:error])
  {
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v17 = [VNBlurMeasure computeEdgeWidthBlurScore:&v23 onGrayscaleImage:buffer error:error];
LABEL_10:
    if (v17)
    {
      v18 = [(VNObservation *)[VNImageScoreObservation alloc] initWithOriginatingRequestSpecifier:v14];
      LODWORD(v19) = v23;
      v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [(VNImageScoreObservation *)v18 setBlurScore:v20];

      v24 = v18;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
LABEL_14:

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!v22)
  {
    v17 = [VNBlurMeasure computeBlurScore:&v23 onGrayscaleImage:buffer insetFactor:error error:0.0];
    goto LABEL_10;
  }

  if (error)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [VNError errorForInvalidArgument:v18 named:@"blurDeterminationMethod"];
    *error = v16 = 0;
    goto LABEL_14;
  }

LABEL_15:
  v16 = 0;
LABEL_16:

  return v16;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v17 && (v21 = 0, [VNValidationUtilities getNSUIntegerValue:&v21 forKey:@"VNBlurDetectorProcessOption_MaximumIntermediateSideLength" inOptions:optionsCopy error:error]))
  {
    height = [(VNBlurDetector *)self _createPixelBufferFromImageBuffer:v17 regionOfInterest:v21 maximumIntermediateSideLength:optionsCopy options:error error:x, y, width, height];
    *buffer = height;
    v19 = height != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (__CVBuffer)_createPixelBufferFromImageBuffer:(id)buffer regionOfInterest:(CGRect)interest maximumIntermediateSideLength:(unint64_t)length options:(id)options error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  bufferCopy = buffer;
  optionsCopy = options;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectEqualToRect(v21, v24))
  {
    v16 = [bufferCopy createBufferWithMaxSideLengthOf:length pixelFormat:1278226488 options:optionsCopy error:error];
  }

  else
  {
    width = [bufferCopy width];
    height = [bufferCopy height];
    v22.origin.x = x * width;
    v22.size.width = width * width;
    v22.origin.y = y * height;
    v22.size.height = height * height;
    v23 = CGRectIntegral(v22);
    [bufferCopy makeClippedRectAgainstImageExtentUsingOriginalRect:{v23.origin.x, v23.origin.y, v23.size.width, v23.size.height}];
    v16 = [bufferCopy createCroppedBufferWithMaxSideLengthOf:length cropRect:1278226488 pixelFormat:optionsCopy options:error error:0 pixelBufferRepsCacheKey:?];
  }

  v19 = v16;

  return v19;
}

@end