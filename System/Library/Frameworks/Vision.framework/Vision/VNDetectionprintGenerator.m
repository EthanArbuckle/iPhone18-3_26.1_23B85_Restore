@interface VNDetectionprintGenerator
+ (id)_inferenceNetworkDescriptorForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4;
+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)a3;
+ (void)fullyPopulateConfigurationOptions:(id)a3;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNDetectionprintGenerator

+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)a3
{
  v3 = [a1 _inferenceNetworkDescriptorForConfigurationOptions:a3 error:0];
  v4 = [v3 onlyInputImage];
  v5 = [v4 pixelFormatType];

  return v5;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [a1 _inferenceNetworkDescriptorForConfigurationOptions:a3 error:0];
  v4 = [v3 onlyInputImage];
  v5 = [v4 name];

  return v5;
}

+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:v6 error:a4];
  if (v7)
  {
    v8 = [a1 _inferenceNetworkDescriptorForConfigurationOptions:v6 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modelPathForComputeDevice:v7 error:a4];
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

+ (void)fullyPopulateConfigurationOptions:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___VNDetectionprintGenerator;
  objc_msgSendSuper2(&v8, sel_fullyPopulateConfigurationOptions_, v4);
  v5 = [a1 _inferenceNetworkDescriptorForConfigurationOptions:v4 error:0];
  v6 = [v5 allInputNames];
  [v4 setObject:v6 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];

  v7 = [v5 allOutputNames];
  [v4 setObject:v7 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
}

+ (id)_inferenceNetworkDescriptorForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
    goto LABEL_7;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()] && objc_msgSend(v6, "requestRevision") == 1)
  {
    v7 = [VNDetectionprintInferenceNetworkDescriptor sceneNetV3BasedNetworkAndReturnError:a4];
    goto LABEL_8;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *a4 = v7 = 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v82 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v53 = a7;
  v54 = a9;
  v52 = v13;
  v55 = [VNValidationUtilities originatingRequestSpecifierInOptions:v13 error:a8];
  if (v55)
  {
    v51 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    [v51 network];
    v50 = [(VNDetectionprintInferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor onlyInputImage];
    v14 = [v50 name];
    [v14 UTF8String];
    v15 = espresso_network_bind_input_cvpixelbuffer();

    if (v15)
    {
      if (a8)
      {
        [VNError errorForEspressoReturnStatus:v15 localizedDescription:@"Could not bind input image buffer"];
        *a8 = v16 = 0;
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
      v17 = [v49 allValues];
      v18 = [v17 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v18)
      {
        v19 = *v73;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v73 != v19)
            {
              objc_enumerationMutation(v17);
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
              if (a8)
              {
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not bind output %@", v21];
                *a8 = [VNError errorForEspressoReturnStatus:v23 localizedDescription:v34];
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

          v18 = [v17 countByEnumeratingWithState:&v72 objects:v81 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [v51 plan];
      v33 = espresso_plan_execute_sync();
      if (v33)
      {
        if (a8)
        {
          [VNError errorForEspressoReturnStatus:v33 localizedDescription:@"Could not run network"];
          *a8 = v16 = 0;
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
              v48 = [VNDetectionprintTensor tensorFromEspressoBuffer:&v61 originatingRequestSpecifier:v55 error:a8];
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

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a8];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 width];
    v22 = [v20 height];
    v23 = [(VNDetectionprintInferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor onlyInputImage];
    v24 = [v23 pixelWidth];
    v25 = [v23 pixelHeight];
    v26 = v25;
    v27 = width * v21;
    v28 = height * v22;
    if (v27 >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (v24 >= v25)
    {
      v30 = v25;
    }

    else
    {
      v30 = v24;
    }

    if (v29 < v30)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, v30);
    }

    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v31 = [v20 croppedBufferWithWidth:v24 height:v26 format:objc_msgSend(v23 cropRect:"pixelFormatType") options:v17 error:{a8, x * v21, y * v22, v27, v28}];
    *a7 = v31;
    v32 = v31 != 0;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v11.receiver = self;
  v11.super_class = VNDetectionprintGenerator;
  if (![(VNEspressoModelFileBasedDetector *)&v11 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self configurationOptions];
  v7 = [objc_opt_class() _inferenceNetworkDescriptorForConfigurationOptions:v6 error:a4];
  inferenceNetworkDescriptor = self->_inferenceNetworkDescriptor;
  self->_inferenceNetworkDescriptor = v7;

  v9 = self->_inferenceNetworkDescriptor != 0;
  return v9;
}

@end