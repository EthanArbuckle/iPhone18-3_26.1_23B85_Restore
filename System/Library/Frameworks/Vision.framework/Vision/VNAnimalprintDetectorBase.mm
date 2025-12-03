@interface VNAnimalprintDetectorBase
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (float)_animalBoundingBoxScalingFactorForAnimalDetectorRevision:(unint64_t)revision;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNAnimalprintDetectorBase

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v19 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v19)
  {
    v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNAnimalprintDetectorProcessOption_InputAnimalObservation" inOptions:optionsCopy error:error];
    if (v17)
    {
      v15 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
      if (!v15)
      {
        operator new();
      }

      if (error)
      {
        *error = [VNError errorForCVReturnCode:v15 localizedDescription:@"could not lock cropped image"];
      }
    }
  }

  return 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNAnimalprintDetectorProcessOption_InputAnimalObservation" inOptions:optionsCopy error:error];
    if (v14)
    {
      width = [v13 width];
      height = [v13 height];
      [v14 boundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [objc_opt_class() _animalBoundingBoxScalingFactorForAnimalDetectorRevision:{objc_msgSend(v14, "requestRevision")}];
      v38.size.width = v22 * width;
      v38.origin.y = v20 * height;
      v38.size.height = v24 * height;
      v26 = (v25 + -1.0);
      v27 = -(v38.size.width * v26) * 0.5;
      v28 = -(v38.size.height * v26) * 0.5;
      v38.origin.x = v18 * width;
      v39 = CGRectInset(v38, v27, v28);
      v40 = CGRectIntegral(v39);
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = width;
      v42.size.height = height;
      v41 = CGRectIntersection(v40, v42);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      ptr = self->_petprintGenerator.__ptr_;
      LODWORD(v22) = *(ptr + 12);
      v34 = *(ptr + 13);
      [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      v35 = [v13 croppedBufferWithWidth:v34 height:*&v22 format:1111970369 cropRect:optionsCopy options:error error:{x, y, width, height}];
      *buffer = v35;
      v36 = v35 != 0;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = VNAnimalprintDetectorBase;
  if ([(VNEspressoModelFileBasedDetector *)&v21 completeInitializationForSession:sessionCopy error:error])
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    v8 = objc_opt_class();
    espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    [v8 espressoModelFileNameForConfigurationOptions:configurationOptions];
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    v10 = strlen(uTF8String);
    if (v10 <= 0x7FFFFFFFFFFFFFF7)
    {
      v11 = v10;
      if (v10 < 0x17)
      {
        v20 = v10;
        if (v10)
        {
          memmove(&__dst, uTF8String, v10);
        }

        *(&__dst + v11) = 0;
        v12 = [v8 modelVersionForOptions:configurationOptions];
        v13 = *(v12 + 8);
        if (v13 <= 0x7FFFFFFFFFFFFFF7)
        {
          v14 = *v12;
          if (v13 < 0x17)
          {
            v18 = *(v12 + 8);
            if (v13)
            {
              memmove(&v17, v14, v13);
            }

            *(&v17 + v13) = 0;
            [espressoResources network];
            [espressoResources plan];
            operator new();
          }

          operator new();
        }

        std::string::__throw_length_error[abi:ne200100]();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", "input"];

  return v3;
}

+ (float)_animalBoundingBoxScalingFactorForAnimalDetectorRevision:(unint64_t)revision
{
  result = 1.3;
  v4 = 1.0;
  if (revision - 1 < 2)
  {
    v4 = 1.3;
  }

  if (revision - 3737841664u >= 3)
  {
    return v4;
  }

  return result;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (objc_opt_class() == self)
  {
    v13 = @"VNComputeStageMain";
    v8 = +[VNComputeDeviceUtilities mostPerformantComputeDevice];
    v12 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v14[0] = v9;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___VNAnimalprintDetectorBase;
    v7 = objc_msgSendSuper2(&v11, sel_supportedComputeStageDevicesForOptions_error_, optionsCopy, error);
  }

  return v7;
}

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  if (![v6 specifiesRequestClass:objc_opt_class()] || (v7 = objc_msgSend(v6, "requestRevision"), v7 != 1) && v7 != 3737841667)
  {
    if (error)
    {
      [VNError errorForUnsupportedRequestSpecifier:v6];
      *error = v8 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = objc_opt_class();
LABEL_9:

  return v8;
}

@end