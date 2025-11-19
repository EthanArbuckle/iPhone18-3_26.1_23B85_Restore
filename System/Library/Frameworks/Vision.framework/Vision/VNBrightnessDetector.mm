@interface VNBrightnessDetector
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (__CVBuffer)_createPixelBufferFromImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 maximumIntermediateSideLength:(unint64_t)a5 options:(id)a6 error:(id *)a7;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNBrightnessDetector

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v18 = 0;
  if ([VNBrightnessMeasure computeBrightnessScore:&v18 onImage:a4 error:a8])
  {
    v12 = [VNValidationUtilities originatingRequestSpecifierInOptions:v11 error:a8];
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

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  if (v17 && (v21 = 0, [VNValidationUtilities getNSUIntegerValue:&v21 forKey:@"VNBrightnessDetectorProcessOption_MaximumIntermediateSideLength" inOptions:v16 withDefaultValue:256 error:a8]))
  {
    v18 = [(VNBrightnessDetector *)self _createPixelBufferFromImageBuffer:v17 regionOfInterest:v21 maximumIntermediateSideLength:v16 options:a8 error:x, y, width, height];
    *a7 = v18;
    v19 = v18 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (__CVBuffer)_createPixelBufferFromImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 maximumIntermediateSideLength:(unint64_t)a5 options:(id)a6 error:(id *)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a6;
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
    v16 = [v14 createBufferWithMaxSideLengthOf:a5 pixelFormat:1111970369 options:v15 error:a7];
  }

  else
  {
    v17 = [v14 width];
    v18 = [v14 height];
    v22.origin.x = x * v17;
    v22.size.width = width * v17;
    v22.origin.y = y * v18;
    v22.size.height = height * v18;
    v23 = CGRectIntegral(v22);
    [v14 makeClippedRectAgainstImageExtentUsingOriginalRect:{v23.origin.x, v23.origin.y, v23.size.width, v23.size.height}];
    v16 = [v14 createCroppedBufferWithMaxSideLengthOf:a5 cropRect:1111970369 pixelFormat:v15 options:a7 error:0 pixelBufferRepsCacheKey:?];
  }

  v19 = v16;

  return v19;
}

@end