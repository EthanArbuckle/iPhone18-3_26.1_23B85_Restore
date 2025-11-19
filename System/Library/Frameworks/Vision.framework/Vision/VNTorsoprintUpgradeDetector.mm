@interface VNTorsoprintUpgradeDetector
+ (BOOL)isSupportedUpgradeFromPreviousEspressoprint:(id)a3 toNewLowResolutionEspressoprint:(id)a4;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNTorsoprintUpgradeDetector

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
  v36.super_class = VNTorsoprintUpgradeDetector;
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
      v24 = [VNTorsoprint alloc];
      [(VNEspressoprintUpgradeDetector *)self highResolutionNewEspressoprint];
      [v22 confidence];
      v26 = v25;
      v27 = [v22 requestRevision];
      LODWORD(v28) = v26;
      v29 = [(VNTorsoprint *)v24 initWithData:v35 elementCount:v23 elementType:1 lengthInBytes:4 * v23 confidence:v27 requestRevision:v28];
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
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot allocate torsoprint"];
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

+ (BOOL)isSupportedUpgradeFromPreviousEspressoprint:(id)a3 toNewLowResolutionEspressoprint:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (+[VNTorsoprintUpgradeDetector isSupportedUpgradeFromPreviousEspressoprint:toNewLowResolutionEspressoprint:]::onceToken != -1)
  {
    dispatch_once(&+[VNTorsoprintUpgradeDetector isSupportedUpgradeFromPreviousEspressoprint:toNewLowResolutionEspressoprint:]::onceToken, &__block_literal_global_25608);
  }

  v7 = +[VNTorsoprintUpgradeDetector isSupportedUpgradeFromPreviousEspressoprint:toNewLowResolutionEspressoprint:]::versionsUpgradeTable;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "requestRevision")}];
  v9 = [v7 objectForKey:v8];
  v10 = [v9 unsignedIntegerValue];

  LOBYTE(v8) = [v6 requestRevision] == v10;
  return v8;
}

void __107__VNTorsoprintUpgradeDetector_isSupportedUpgradeFromPreviousEspressoprint_toNewLowResolutionEspressoprint___block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = &unk_1F19C1930;
  v3[0] = &unk_1F19C1948;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = +[VNTorsoprintUpgradeDetector isSupportedUpgradeFromPreviousEspressoprint:toNewLowResolutionEspressoprint:]::versionsUpgradeTable;
  +[VNTorsoprintUpgradeDetector isSupportedUpgradeFromPreviousEspressoprint:toNewLowResolutionEspressoprint:]::versionsUpgradeTable = v0;
}

@end