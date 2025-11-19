@interface VNFaceLandmarkDetectorRevision2
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNFaceLandmarkDetectorRevision2

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = *&a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a5;
  v20 = a7;
  v21 = a9;
  v34.receiver = self;
  v34.super_class = VNFaceLandmarkDetectorRevision2;
  v22 = [(VNFaceLandmarkDetectorDNN *)&v34 processRegionOfInterest:a4 croppedPixelBuffer:v19 options:v12 qosClass:v20 warningRecorder:a8 error:v21 progressHandler:x, y, width, height];
  v23 = v22;
  if (!v22)
  {
    v30 = 0;
    goto LABEL_26;
  }

  v24 = [v22 firstObject];
  if (v24)
  {
    if ([v23 count] != 1)
    {
      if (a8)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
        *a8 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_25;
    }

    v25 = [(VNDetector *)self validatedImageBufferFromOptions:v19 error:a8];
    if (!v25)
    {
      v30 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v33 = [VNValidationUtilities originatingRequestSpecifierInOptions:v19 error:a8];
    if (!v33)
    {
      v30 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v26 = [(VNFaceLandmarkDetectorDNN *)self landmarkPoints65];
    v27 = [v19 mutableCopy];
    [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNFaceLandmarkDetectorProcessOption_CalculateLandmarkScore"];
    if (![(VNFaceLandmarkDetector *)self postprocessLandmarkResultsForLandmarks:v26 imageBuffer:v25 outputFace:v24 options:v27 warningRecorder:v20 error:a8]|| ([(VNFaceLandmarkDetector *)self calculatePupilLocationAndUpdateLandmarkPoints:v26], ![(VNFaceLandmarkDetectorDNN *)self translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:v26 imageBuffer:v25 outputFace:v24 error:a8]))
    {
      v30 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*v26 length:v26[1] - *v26];
    v29 = v28;
    if (v28)
    {
      v32 = v28;
      [v24 setLandmarkPoints65Data:v28 originatingRequestSpecifier:v33];
      v30 = v23;
    }

    else
    {
      if (!a8)
      {
        v30 = 0;
        goto LABEL_21;
      }

      v32 = 0;
      [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
      *a8 = v30 = 0;
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