@interface VNFaceprintUpgradeDetector
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNFaceprintUpgradeDetector

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = *&a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37[2] = *MEMORY[0x1E69E9840];
  v19 = a5;
  v36.receiver = self;
  v36.super_class = VNFaceprintUpgradeDetector;
  v20 = [(VNEspressoprintUpgradeDetector *)&v36 processRegionOfInterest:a4 croppedPixelBuffer:v19 options:v12 qosClass:a7 warningRecorder:a8 error:a9 progressHandler:x, y, width, height];
  LOBYTE(a9) = v20 == 0;

  if (a9)
  {
    v33 = 0;
  }

  else
  {
    v21 = +[VNValidationUtilities requiredObjectOfClass:forKey:inOptions:error:](VNValidationUtilities, "requiredObjectOfClass:forKey:inOptions:error:", [objc_opt_class() espressoprintClass], @"VNEspressoprintUpgradeDetectorProcessOption_ToEspressoprint", v19, a8);
    v22 = v21;
    if (v21)
    {
      v23 = [v21 elementCount];
      v24 = [VNFaceprint alloc];
      [(VNEspressoprintUpgradeDetector *)self highResolutionNewEspressoprint];
      [v22 confidence];
      v26 = v25;
      v27 = [v22 requestRevision];
      LODWORD(v28) = v26;
      v29 = [(VNFaceprint *)v24 initWithData:v35 elementCount:v23 elementType:1 lengthInBytes:4 * v23 confidence:v27 requestRevision:v28];
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

      else if (a8)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot allocate faceprint"];
        *a8 = v33 = 0;
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