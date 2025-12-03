@interface VNTorsoprintGeneratorHumanDetectorBased
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)torsoprintForImageBuffer:(__CVBuffer *)buffer requestRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNTorsoprintGeneratorHumanDetectorBased

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v13)
  {
    v19 = 0;
    goto LABEL_15;
  }

  v14 = [VNValidationUtilities requiredDetectedObjectObservationInOptions:optionsCopy withOptionName:@"VNTorsoprintGeneratorProcessOption_InputDetectedObjectObservation" forObservationClass:objc_opt_class() error:error];
  v15 = v14;
  if (v14)
  {
    vn_cloneObject = [v14 vn_cloneObject];
    if (vn_cloneObject)
    {
      v17 = vn_cloneObject;

      v18 = -[VNTorsoprintGeneratorHumanDetectorBased torsoprintForImageBuffer:requestRevision:error:](self, "torsoprintForImageBuffer:requestRevision:error:", buffer, [v13 requestRevision], error);
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

    if (error)
    {
      *error = +[VNError errorForMemoryAllocationFailure];
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_14:

LABEL_15:

  return v19;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredDetectedObjectObservationInOptions:optionsCopy withOptionName:@"VNTorsoprintGeneratorProcessOption_InputDetectedObjectObservation" forObservationClass:objc_opt_class() error:error];
    v15 = v14;
    if (v14)
    {
      [v14 boundingBox];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      width = [v13 width];
      height = [v13 height];
      [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      v26 = [v13 croppedBufferWithWidth:-[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self height:"networkRequiredInputImageWidth") format:-[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self cropRect:"networkRequiredInputImageHeight") options:1111970369 error:{optionsCopy, error, v17 * width, v19 * height, v21 * width, v23 * height}];
      *buffer = v26;
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

- (id)torsoprintForImageBuffer:(__CVBuffer *)buffer requestRevision:(unint64_t)revision error:(id *)error
{
  v7 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
  if (!v7)
  {
    CVPixelBufferGetBaseAddress(buffer);
    CVPixelBufferGetHeight(buffer);
    CVPixelBufferGetWidth(buffer);
    CVPixelBufferGetBytesPerRow(buffer);
    operator new();
  }

  if (error)
  {
    *error = [VNError errorForCVReturnCode:v7 localizedDescription:@"unable to lock base address of pixel buffer"];
  }

  return 0;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = VNTorsoprintGeneratorHumanDetectorBased;
  if ([(VNEspressoModelFileBasedDetector *)&v15 completeInitializationForSession:sessionCopy error:error])
  {
    espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    configurationOptions = [(VNDetector *)self configurationOptions];
    v9 = [objc_opt_class() modelVersionForOptions:configurationOptions];
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
        [espressoResources network];
        [espressoResources plan];
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", "torso__0"];

  return v3;
}

@end