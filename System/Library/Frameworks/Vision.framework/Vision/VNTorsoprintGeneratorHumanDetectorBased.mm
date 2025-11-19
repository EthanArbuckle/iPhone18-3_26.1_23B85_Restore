@interface VNTorsoprintGeneratorHumanDetectorBased
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)torsoprintForImageBuffer:(__CVBuffer *)a3 requestRevision:(unint64_t)a4 error:(id *)a5;
@end

@implementation VNTorsoprintGeneratorHumanDetectorBased

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v21[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a8];
  if (!v13)
  {
    v19 = 0;
    goto LABEL_15;
  }

  v14 = [VNValidationUtilities requiredDetectedObjectObservationInOptions:v12 withOptionName:@"VNTorsoprintGeneratorProcessOption_InputDetectedObjectObservation" forObservationClass:objc_opt_class() error:a8];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 vn_cloneObject];
    if (v16)
    {
      v17 = v16;

      v18 = -[VNTorsoprintGeneratorHumanDetectorBased torsoprintForImageBuffer:requestRevision:error:](self, "torsoprintForImageBuffer:requestRevision:error:", a4, [v13 requestRevision], a8);
      if (v18)
      {
        [v17 setTorsoprint:v18];
        v21[0] = v17;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_14;
    }

    if (a8)
    {
      *a8 = +[VNError errorForMemoryAllocationFailure];
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_14:

LABEL_15:

  return v19;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredDetectedObjectObservationInOptions:v12 withOptionName:@"VNTorsoprintGeneratorProcessOption_InputDetectedObjectObservation" forObservationClass:objc_opt_class() error:a8];
    v15 = v14;
    if (v14)
    {
      [v14 boundingBox];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [v13 width];
      v25 = [v13 height];
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      v26 = [v13 croppedBufferWithWidth:-[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self height:"networkRequiredInputImageWidth") format:-[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self cropRect:"networkRequiredInputImageHeight") options:1111970369 error:{v12, a8, v17 * v24, v19 * v25, v21 * v24, v23 * v25}];
      *a7 = v26;
      v27 = v26 != 0;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

- (id)torsoprintForImageBuffer:(__CVBuffer *)a3 requestRevision:(unint64_t)a4 error:(id *)a5
{
  v7 = CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (!v7)
  {
    CVPixelBufferGetBaseAddress(a3);
    CVPixelBufferGetHeight(a3);
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetBytesPerRow(a3);
    operator new();
  }

  if (a5)
  {
    *a5 = [VNError errorForCVReturnCode:v7 localizedDescription:@"unable to lock base address of pixel buffer"];
  }

  return 0;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = VNTorsoprintGeneratorHumanDetectorBased;
  if ([(VNEspressoModelFileBasedDetector *)&v15 completeInitializationForSession:v6 error:a4])
  {
    v7 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    v8 = [(VNDetector *)self configurationOptions];
    v9 = [objc_opt_class() modelVersionForOptions:v8];
    v10 = *(v9 + 8);
    if (v10 < 0x7FFFFFFFFFFFFFF8)
    {
      v11 = *v9;
      if (v10 < 0x17)
      {
        v14 = *(v9 + 8);
        if (v10)
        {
          memmove(&__dst, v11, v10);
        }

        *(&__dst + v10) = 0;
        [v7 network];
        [v7 plan];
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", "torso__0"];

  return v3;
}

@end