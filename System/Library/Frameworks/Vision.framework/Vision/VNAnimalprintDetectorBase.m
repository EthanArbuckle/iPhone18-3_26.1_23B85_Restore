@interface VNAnimalprintDetectorBase
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (float)_animalBoundingBoxScalingFactorForAnimalDetectorRevision:(unint64_t)a3;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNAnimalprintDetectorBase

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v13 = a5;
  v14 = a7;
  v18 = a9;
  v19 = [VNValidationUtilities originatingRequestSpecifierInOptions:v13 error:a8];
  if (v19)
  {
    v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNAnimalprintDetectorProcessOption_InputAnimalObservation" inOptions:v13 error:a8];
    if (v17)
    {
      v15 = CVPixelBufferLockBaseAddress(a4, 1uLL);
      if (!v15)
      {
        operator new();
      }

      if (a8)
      {
        *a8 = [VNError errorForCVReturnCode:v15 localizedDescription:@"could not lock cropped image"];
      }
    }
  }

  return 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNAnimalprintDetectorProcessOption_InputAnimalObservation" inOptions:v12 error:a8];
    if (v14)
    {
      v15 = [v13 width];
      v16 = [v13 height];
      [v14 boundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [objc_opt_class() _animalBoundingBoxScalingFactorForAnimalDetectorRevision:{objc_msgSend(v14, "requestRevision")}];
      v38.size.width = v22 * v15;
      v38.origin.y = v20 * v16;
      v38.size.height = v24 * v16;
      v26 = (v25 + -1.0);
      v27 = -(v38.size.width * v26) * 0.5;
      v28 = -(v38.size.height * v26) * 0.5;
      v38.origin.x = v18 * v15;
      v39 = CGRectInset(v38, v27, v28);
      v40 = CGRectIntegral(v39);
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = v15;
      v42.size.height = v16;
      v41 = CGRectIntersection(v40, v42);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      ptr = self->_petprintGenerator.__ptr_;
      LODWORD(v22) = *(ptr + 12);
      v34 = *(ptr + 13);
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      v35 = [v13 croppedBufferWithWidth:v34 height:*&v22 format:1111970369 cropRect:v12 options:a8 error:{x, y, width, height}];
      *a7 = v35;
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

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = VNAnimalprintDetectorBase;
  if ([(VNEspressoModelFileBasedDetector *)&v21 completeInitializationForSession:v6 error:a4])
  {
    v7 = [(VNDetector *)self configurationOptions];
    v8 = objc_opt_class();
    v16 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    [v8 espressoModelFileNameForConfigurationOptions:v7];
    v9 = [objc_claimAutoreleasedReturnValue() UTF8String];
    v10 = strlen(v9);
    if (v10 <= 0x7FFFFFFFFFFFFFF7)
    {
      v11 = v10;
      if (v10 < 0x17)
      {
        v20 = v10;
        if (v10)
        {
          memmove(&__dst, v9, v10);
        }

        *(&__dst + v11) = 0;
        v12 = [v8 modelVersionForOptions:v7];
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
            [v16 network];
            [v16 plan];
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

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", "input"];

  return v3;
}

+ (float)_animalBoundingBoxScalingFactorForAnimalDetectorRevision:(unint64_t)a3
{
  result = 1.3;
  v4 = 1.0;
  if (a3 - 1 < 2)
  {
    v4 = 1.3;
  }

  if (a3 - 3737841664u >= 3)
  {
    return v4;
  }

  return result;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (objc_opt_class() == a1)
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
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___VNAnimalprintDetectorBase;
    v7 = objc_msgSendSuper2(&v11, sel_supportedComputeStageDevicesForOptions_error_, v6, a4);
  }

  return v7;
}

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  if (![v6 specifiesRequestClass:objc_opt_class()] || (v7 = objc_msgSend(v6, "requestRevision"), v7 != 1) && v7 != 3737841667)
  {
    if (a4)
    {
      [VNError errorForUnsupportedRequestSpecifier:v6];
      *a4 = v8 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = objc_opt_class();
LABEL_9:

  return v8;
}

@end