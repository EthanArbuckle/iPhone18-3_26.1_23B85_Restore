@interface VNDetectionprintGenerator
+ (id)_inferenceNetworkDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error;
+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)options;
+ (void)fullyPopulateConfigurationOptions:(id)options;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNDetectionprintGenerator

+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)options
{
  v3 = [self _inferenceNetworkDescriptorForConfigurationOptions:options error:0];
  onlyInputImage = [v3 onlyInputImage];
  pixelFormatType = [onlyInputImage pixelFormatType];

  return pixelFormatType;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  v3 = [self _inferenceNetworkDescriptorForConfigurationOptions:options error:0];
  onlyInputImage = [v3 onlyInputImage];
  name = [onlyInputImage name];

  return name;
}

+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [self _inferenceNetworkDescriptorForConfigurationOptions:optionsCopy error:error];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modelPathForComputeDevice:v7 error:error];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)fullyPopulateConfigurationOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___VNDetectionprintGenerator;
  objc_msgSendSuper2(&v8, sel_fullyPopulateConfigurationOptions_, optionsCopy);
  v5 = [self _inferenceNetworkDescriptorForConfigurationOptions:optionsCopy error:0];
  allInputNames = [v5 allInputNames];
  [optionsCopy setObject:allInputNames forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];

  allOutputNames = [v5 allOutputNames];
  [optionsCopy setObject:allOutputNames forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
}

+ (id)_inferenceNetworkDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v6)
  {
    goto LABEL_7;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()] && objc_msgSend(v6, "requestRevision") == 1)
  {
    v7 = [VNDetectionprintInferenceNetworkDescriptor sceneNetV3BasedNetworkAndReturnError:error];
    goto LABEL_8;
  }

  if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *error = v7 = 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v52 = optionsCopy;
  v55 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v55)
  {
    espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    [espressoResources network];
    onlyInputImage = [(VNDetectionprintInferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor onlyInputImage];
    name = [onlyInputImage name];
    [name UTF8String];
    v15 = espresso_network_bind_input_cvpixelbuffer();

    if (v15)
    {
      if (error)
      {
        [VNError errorForEspressoReturnStatus:v15 localizedDescription:@"Could not bind input image buffer"];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      [(VNDetectionprintInferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor tensorKeyToPrintOutputName];
      memset(v76, 0, sizeof(v76));
      v77 = 1065353216;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v49 = v75 = 0u;
      allValues = [v49 allValues];
      v18 = [allValues countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v18)
      {
        v19 = *v73;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v73 != v19)
            {
              objc_enumerationMutation(allValues);
            }

            v21 = *(*(&v72 + 1) + 8 * i);
            v71 = 0;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v22 = v21;
            [v21 UTF8String];
            v23 = espresso_network_bind_buffer();
            if (v23)
            {
              if (error)
              {
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not bind output %@", v21];
                *error = [VNError errorForEspressoReturnStatus:v23 localizedDescription:v34];
              }

              goto LABEL_21;
            }

            v60 = v21;
            v78 = &v60;
            v24 = std::__hash_table<std::__hash_value_type<void *,espresso_buffer_t>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,espresso_buffer_t>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,espresso_buffer_t>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,espresso_buffer_t>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v76, v21);
            v26 = v62;
            v25 = v63;
            *(v24 + 3) = v61;
            v28 = v66;
            v27 = v67;
            v29 = v65;
            *(v24 + 9) = v64;
            *(v24 + 11) = v29;
            v30 = v71;
            v31 = v70;
            v32 = v68;
            *(v24 + 19) = v69;
            *(v24 + 17) = v32;
            *(v24 + 21) = v31;
            v24[23] = v30;
            *(v24 + 13) = v28;
            *(v24 + 15) = v27;
            *(v24 + 5) = v26;
            *(v24 + 7) = v25;
          }

          v18 = [allValues countByEnumeratingWithState:&v72 objects:v81 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [espressoResources plan];
      v33 = espresso_plan_execute_sync();
      if (v33)
      {
        if (error)
        {
          [VNError errorForEspressoReturnStatus:v33 localizedDescription:@"Could not run network"];
          *error = v16 = 0;
        }

        else
        {
LABEL_21:
          v16 = 0;
        }
      }

      else
      {
        v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v37 = v49;
        v38 = [(VNDetectionprint *)v37 countByEnumeratingWithState:&v56 objects:v80 count:16];
        if (v38)
        {
          v39 = *v57;
          while (2)
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v57 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = *(*(&v56 + 1) + 8 * j);
              v42 = [(VNDetectionprint *)v37 objectForKeyedSubscript:v41];
              v78 = v42;
              *&v61 = &v78;
              v43 = std::__hash_table<std::__hash_value_type<void *,espresso_buffer_t>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,espresso_buffer_t>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,espresso_buffer_t>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,espresso_buffer_t>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v76, v42);
              v44 = *(v43 + 19);
              v68 = *(v43 + 17);
              v69 = v44;
              v70 = *(v43 + 21);
              v71 = v43[23];
              v45 = *(v43 + 11);
              v64 = *(v43 + 9);
              v65 = v45;
              v46 = *(v43 + 15);
              v66 = *(v43 + 13);
              v67 = v46;
              v47 = *(v43 + 5);
              v61 = *(v43 + 3);
              v62 = v47;
              v63 = *(v43 + 7);
              v48 = [VNDetectionprintTensor tensorFromEspressoBuffer:&v61 originatingRequestSpecifier:v55 error:error];
              if (!v48)
              {
                v16 = 0;
                goto LABEL_37;
              }

              [v36 setObject:v48 forKeyedSubscript:v41];
            }

            v38 = [(VNDetectionprint *)v37 countByEnumeratingWithState:&v56 objects:v80 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

        v37 = [[VNDetectionprint alloc] initWithTensorsDictionary:v36 originatingRequestSpecifier:v55];
        v42 = [[VNDetectionprintObservation alloc] initWithOriginatingRequestSpecifier:v55 detectionprint:v37];
        v79 = v42;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
LABEL_37:
      }

      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v76);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v20 = v19;
  if (v19)
  {
    width = [v19 width];
    height = [v20 height];
    onlyInputImage = [(VNDetectionprintInferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor onlyInputImage];
    pixelWidth = [onlyInputImage pixelWidth];
    pixelHeight = [onlyInputImage pixelHeight];
    v26 = pixelHeight;
    v27 = width * width;
    v28 = height * height;
    if (v27 >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (pixelWidth >= pixelHeight)
    {
      v30 = pixelHeight;
    }

    else
    {
      v30 = pixelWidth;
    }

    if (v29 < v30)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v30);
    }

    [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v31 = [v20 croppedBufferWithWidth:pixelWidth height:v26 format:objc_msgSend(onlyInputImage cropRect:"pixelFormatType") options:optionsCopy error:{error, x * width, y * height, v27, v28}];
    *buffer = v31;
    v32 = v31 != 0;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v11.receiver = self;
  v11.super_class = VNDetectionprintGenerator;
  if (![(VNEspressoModelFileBasedDetector *)&v11 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v7 = [objc_opt_class() _inferenceNetworkDescriptorForConfigurationOptions:configurationOptions error:error];
  inferenceNetworkDescriptor = self->_inferenceNetworkDescriptor;
  self->_inferenceNetworkDescriptor = v7;

  v9 = self->_inferenceNetworkDescriptor != 0;
  return v9;
}

@end