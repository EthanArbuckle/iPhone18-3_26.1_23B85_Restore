@interface VNFaceprintUpgradeDetector
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNFaceprintUpgradeDetector

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v12 = *&class;
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v37[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v36.receiver = self;
  v36.super_class = VNFaceprintUpgradeDetector;
  height = [(VNEspressoprintUpgradeDetector *)&v36 processRegionOfInterest:buffer croppedPixelBuffer:optionsCopy options:v12 qosClass:recorder warningRecorder:error error:handler progressHandler:x, y, width, height];
  LOBYTE(handler) = height == 0;

  if (handler)
  {
    v33 = 0;
  }

  else
  {
    v21 = +[VNValidationUtilities requiredObjectOfClass:forKey:inOptions:error:](VNValidationUtilities, "requiredObjectOfClass:forKey:inOptions:error:", [objc_opt_class() espressoprintClass], @"VNEspressoprintUpgradeDetectorProcessOption_ToEspressoprint", optionsCopy, error);
    v22 = v21;
    if (v21)
    {
      elementCount = [v21 elementCount];
      v24 = [VNFaceprint alloc];
      [(VNEspressoprintUpgradeDetector *)self highResolutionNewEspressoprint];
      [v22 confidence];
      v26 = v25;
      requestRevision = [v22 requestRevision];
      LODWORD(v28) = v26;
      v29 = [(VNFaceprint *)v24 initWithData:v35 elementCount:elementCount elementType:1 lengthInBytes:4 * elementCount confidence:requestRevision requestRevision:v28];
      if (v29)
      {
        v30 = MEMORY[0x1E696AD98];
        [(VNEspressoprintUpgradeDetector *)self highResolutionNewEspressoprintSigma];
        LODWORD(v31) = *v35;
        v32 = [v30 numberWithFloat:v31];
        v37[0] = v29;
        v37[1] = v32;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      }

      else if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot allocate faceprint"];
        *error = v33 = 0;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

@end