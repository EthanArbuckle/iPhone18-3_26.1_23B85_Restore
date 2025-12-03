@interface VNBrightnessDetector
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (__CVBuffer)_createPixelBufferFromImageBuffer:(id)buffer regionOfInterest:(CGRect)interest maximumIntermediateSideLength:(unint64_t)length options:(id)options error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNBrightnessDetector

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
  v19[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v18 = 0;
  if ([VNBrightnessMeasure computeBrightnessScore:&v18 onImage:buffer error:error])
  {
    v12 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (v12)
    {
      v13 = [(VNObservation *)[VNImageScoreObservation alloc] initWithOriginatingRequestSpecifier:v12];
      LODWORD(v14) = v18;
      v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
      [(VNImageScoreObservation *)v13 setExposureScore:v15];

      v19[0] = v13;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

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
  if (v17 && (v21 = 0, [VNValidationUtilities getNSUIntegerValue:&v21 forKey:@"VNBrightnessDetectorProcessOption_MaximumIntermediateSideLength" inOptions:optionsCopy withDefaultValue:256 error:error]))
  {
    height = [(VNBrightnessDetector *)self _createPixelBufferFromImageBuffer:v17 regionOfInterest:v21 maximumIntermediateSideLength:optionsCopy options:error error:x, y, width, height];
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
    v16 = [bufferCopy createBufferWithMaxSideLengthOf:length pixelFormat:1111970369 options:optionsCopy error:error];
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
    v16 = [bufferCopy createCroppedBufferWithMaxSideLengthOf:length cropRect:1111970369 pixelFormat:optionsCopy options:error error:0 pixelBufferRepsCacheKey:?];
  }

  v19 = v16;

  return v19;
}

@end