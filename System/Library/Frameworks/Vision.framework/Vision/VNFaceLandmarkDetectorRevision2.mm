@interface VNFaceLandmarkDetectorRevision2
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNFaceLandmarkDetectorRevision2

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v12 = *&class;
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = VNFaceLandmarkDetectorRevision2;
  height = [(VNFaceLandmarkDetectorDNN *)&v34 processRegionOfInterest:buffer croppedPixelBuffer:optionsCopy options:v12 qosClass:recorderCopy warningRecorder:error error:handlerCopy progressHandler:x, y, width, height];
  v23 = height;
  if (!height)
  {
    v30 = 0;
    goto LABEL_26;
  }

  firstObject = [height firstObject];
  if (firstObject)
  {
    if ([v23 count] != 1)
    {
      if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_25;
    }

    v25 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
    if (!v25)
    {
      v30 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v33 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (!v33)
    {
      v30 = 0;
LABEL_23:

      goto LABEL_24;
    }

    landmarkPoints65 = [(VNFaceLandmarkDetectorDNN *)self landmarkPoints65];
    v27 = [optionsCopy mutableCopy];
    [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNFaceLandmarkDetectorProcessOption_CalculateLandmarkScore"];
    if (![(VNFaceLandmarkDetector *)self postprocessLandmarkResultsForLandmarks:landmarkPoints65 imageBuffer:v25 outputFace:firstObject options:v27 warningRecorder:recorderCopy error:error]|| ([(VNFaceLandmarkDetector *)self calculatePupilLocationAndUpdateLandmarkPoints:landmarkPoints65], ![(VNFaceLandmarkDetectorDNN *)self translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:landmarkPoints65 imageBuffer:v25 outputFace:firstObject error:error]))
    {
      v30 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*landmarkPoints65 length:landmarkPoints65[1] - *landmarkPoints65];
    v29 = v28;
    if (v28)
    {
      v32 = v28;
      [firstObject setLandmarkPoints65Data:v28 originatingRequestSpecifier:v33];
      v30 = v23;
    }

    else
    {
      if (!error)
      {
        v30 = 0;
        goto LABEL_21;
      }

      v32 = 0;
      [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
      *error = v30 = 0;
    }

    v29 = v32;
LABEL_21:

    goto LABEL_22;
  }

  v30 = v23;
LABEL_25:

LABEL_26:
  [(VNFaceLandmarkDetectorDNN *)self releaseResources];

  return v30;
}

@end