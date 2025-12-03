@interface VNEspressoHelpers
+ (BOOL)createSingleNetworkPlanFromModelPath:(id)path forComputeDevice:(id)device lowPriorityMode:(BOOL)mode priority:(int)priority inputBlobNames:(id)names outputBlobNames:(id)blobNames networkConfiguration:(id)configuration explicitNetworkLayersStorageType:(int)self0 memoryPoolId:(unint64_t)self1 espressoResources:(id *)self2 error:(id *)self3;
+ (BOOL)createSingleNetworkPlanFromModelPath:(id)path forComputeDevice:(id)device lowPriorityMode:(BOOL)mode priority:(int)priority inputBlobNames:(id)names outputBlobNames:(id)blobNames networkConfiguration:(id)configuration memoryPoolId:(unint64_t)self0 espressoResources:(id *)self1 error:(id *)self2;
+ (BOOL)feedForwardEspressoBufferForNetwork:(id *)network fromBufferWithName:(id)name toBufferWithName:(id)withName firstFrame:(BOOL)frame error:(id *)error;
+ (BOOL)getWidth:(unint64_t *)width height:(unint64_t *)height ofBlobNamed:(id)named forNetworkModelFileWithPath:(id)path error:(id *)error;
+ (BOOL)renderEspressoBufferImage:(id *)image intoCVPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
+ (__CVBuffer)createCVPixelBufferWithPixelFormat:(unsigned int)format fromImageInEspressoBuffer:(id *)buffer error:(id *)error;
+ (id)JSONDataFromNetworkFilePath:(id)path error:(id *)error;
+ (id)_alternatePathForEspressoResource:(id)resource ofType:(id)type error:(id *)error;
+ (id)_locateFrameworkBundleForResourceWithName:(id)name resourceDirectory:(id *)directory error:(id *)error;
+ (id)pathForEspressoNetworkModelFileWithName:(id)name error:(id *)error;
+ (id)pathForEspressoResource:(id)resource ofType:(id)type error:(id *)error;
+ (id)pathForEspressoResourceWithFilename:(id)filename error:(id *)error;
+ (id)weightsFilePathForEspressoNetworkModelFilePath:(id)path error:(id *)error;
+ (int)espressoDeviceIDForComputeDevice:(id)device;
+ (int)espressoEngineForComputeDevice:(id)device;
+ (int)espressoStorageTypeForComputeDevice:(id)device;
+ (unint64_t)pixelValueSizeInBytesForBuffer:(id *)buffer error:(id *)error;
@end

@implementation VNEspressoHelpers

+ (int)espressoStorageTypeForComputeDevice:(id)device
{
  v3 = [VNComputeDeviceUtilities typeOfComputeDevice:device];
  if (v3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1A6038F10[v3 - 1];
  }
}

+ (int)espressoEngineForComputeDevice:(id)device
{
  v3 = [VNComputeDeviceUtilities typeOfComputeDevice:device];
  if (v3 == 2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 4)
  {
    return 10007;
  }

  else
  {
    return v4;
  }
}

+ (int)espressoDeviceIDForComputeDevice:(id)device
{
  v3 = [VNComputeDeviceUtilities metalDeviceForComputeDevice:device];
  if (v3)
  {
    v4 = espresso_device_id_for_metal_device();
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (BOOL)feedForwardEspressoBufferForNetwork:(id *)network fromBufferWithName:(id)name toBufferWithName:(id)withName firstFrame:(BOOL)frame error:(id *)error
{
  frameCopy = frame;
  nameCopy = name;
  withNameCopy = withName;
  if (!network)
  {
    if (error)
    {
      v15 = [VNError errorWithCode:9 message:@"inference network cannot be nil"];
      goto LABEL_19;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  [nameCopy UTF8String];
  v14 = espresso_network_bind_buffer();
  if (v14)
  {
    if (error)
    {
      v15 = [VNError errorForEspressoReturnStatus:v14 localizedDescription:@"Could not bind output buffer to network"];
LABEL_19:
      v19 = 0;
      *error = v15;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [withNameCopy UTF8String];
  v16 = espresso_network_bind_buffer();
  if (v16)
  {
    if (error)
    {
      v15 = [VNError errorForEspressoReturnStatus:v16 localizedDescription:@"Could not bind input buffer to network"];
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v27 != v22 || v28 != v23 || v29 != v24 || v30 != v25)
  {
    if (error)
    {
      v15 = [VNError errorWithCode:9 message:@"Could not feed-forward buffer data because of compatibility of source and destination buffers"];
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v17 = [self pixelValueSizeInBytesForBuffer:&__src error:error];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v27 * v17 * v28 * v29;
  if (frameCopy)
  {
    bzero(__dst, v18 * v30);
  }

  else
  {
    memcpy(__dst, __src, v18 * v30);
  }

  v19 = 1;
LABEL_21:

  return v19;
}

+ (unint64_t)pixelValueSizeInBytesForBuffer:(id *)buffer error:(id *)error
{
  if (!buffer)
  {
    goto LABEL_9;
  }

  var14 = buffer->var14;
  result = 4;
  if (var14 > 131103)
  {
    if (var14 == 131104)
    {
      return result;
    }

    v7 = 262152;
  }

  else
  {
    if (var14 == 65568)
    {
      return result;
    }

    v7 = 131080;
  }

  if (var14 == v7)
  {
    return 1;
  }

LABEL_9:
  if (!error)
  {
    return 0;
  }

  v8 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unknown inference buffer type"];
  v9 = v8;
  result = 0;
  *error = v8;
  return result;
}

+ (BOOL)renderEspressoBufferImage:(id *)image intoCVPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  if (image->var14 == 65568)
  {
    if (error)
    {
      65568 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported espresso storaget type %u", buffer, 65568];
      *error = [VNError errorForUnimplementedFunctionWithLocalizedDescription:65568];
    }

    return 0;
  }

  else
  {
    var4 = image->var4;
    var0 = image->var0;
    var5 = image->var5;

    return [VNCVPixelBufferHelper renderRawDataBufferWithWidth:var4 height:var5 pixelFormatType:1278226534 rowBytes:var0 dataBytes:buffer intoCVPixelBuffer:error error:?];
  }
}

+ (__CVBuffer)createCVPixelBufferWithPixelFormat:(unsigned int)format fromImageInEspressoBuffer:(id *)buffer error:(id *)error
{
  if (format != 1278226534 || buffer->var14 != 65568)
  {
    if (error)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format %lu espresso storaget type %u", format, buffer->var14];;
      *error = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v8];
    }

    return 0;
  }

  v7 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:buffer->var5 height:1278226534 pixelFormatType:error error:?];
  if (v7 && ([VNCVPixelBufferHelper renderRawDataBufferWithWidth:buffer->var4 height:buffer->var5 pixelFormatType:1278226534 rowBytes:buffer->var0 dataBytes:v7 intoCVPixelBuffer:error error:?]& 1) == 0)
  {
    CVPixelBufferRelease(v7);
    return 0;
  }

  return v7;
}

+ (BOOL)createSingleNetworkPlanFromModelPath:(id)path forComputeDevice:(id)device lowPriorityMode:(BOOL)mode priority:(int)priority inputBlobNames:(id)names outputBlobNames:(id)blobNames networkConfiguration:(id)configuration explicitNetworkLayersStorageType:(int)self0 memoryPoolId:(unint64_t)self1 espressoResources:(id *)self2 error:(id *)self3
{
  v64 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  deviceCopy = device;
  namesCopy = names;
  blobNamesCopy = blobNames;
  configurationCopy = configuration;
  if (!pathCopy || !resources)
  {
    if (error)
    {
      v20 = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid inputs specified to inference plan builder"];
LABEL_9:
      v21 = 0;
      *error = v20;
      goto LABEL_19;
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  [self espressoEngineForComputeDevice:deviceCopy];
  [self espressoDeviceIDForComputeDevice:deviceCopy];
  context = espresso_create_context();
  if (!context)
  {
    if (error)
    {
      v20 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not create inference context"];
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  plan = espresso_create_plan();
  v23 = plan;
  if (!plan)
  {
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not create inference plan"];
    }

    espresso_context_destroy();
    goto LABEL_18;
  }

  v60 = 0;
  v61 = 0;
  [pathCopy UTF8String];
  if (espresso_plan_add_network())
  {
    if (error)
    {
      *error = [VNError errorForFailedEspressoPlan:v23 localizedDescription:@"Could not create/add network to inference plan"];
    }

LABEL_14:
    espresso_plan_destroy();
    espresso_context_destroy();
    goto LABEL_18;
  }

  if (configurationCopy)
  {
    v25 = configurationCopy;
    [configurationCopy UTF8String];
    v26 = espresso_network_select_configuration();
    if (v26)
    {
      if (error)
      {
        configurationCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set network configuration: %@", configurationCopy];
        *error = [VNError errorForEspressoReturnStatus:v26 localizedDescription:configurationCopy];
      }

      goto LABEL_14;
    }
  }

  if (id)
  {
    v28 = espresso_network_set_memory_pool_id();
    if (v28)
    {
      if (error)
      {
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not select memory pool %llu", id];
        *error = [VNError errorForEspressoReturnStatus:v28 localizedDescription:v29];
      }

      goto LABEL_18;
    }
  }

  if (!espresso_plan_get_phase())
  {
    v43 = espresso_plan_set_priority();
    if (v43)
    {
      if (!error)
      {
        goto LABEL_18;
      }

      v20 = [VNError errorForEspressoReturnStatus:v43 localizedDescription:@"unable to set client specified plan priority"];
      goto LABEL_9;
    }
  }

  context = [[VNEspressoResources alloc] initWithModelPath:pathCopy networkConfigurationName:configurationCopy network:v60 plan:v61 context:v23, context];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = namesCopy;
  v30 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v30)
  {
    v31 = *v57;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v56 + 1) + 8 * i);
        [(VNEspressoResources *)context network];
        v34 = v33;
        [v33 UTF8String];
        v35 = espresso_network_declare_input();
        if (v35)
        {
          if (error)
          {
            v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not declare network input buffer: %@", v33];
            *error = [VNError errorForEspressoReturnStatus:v35 localizedDescription:v42];
          }

          goto LABEL_57;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = blobNamesCopy;
  v36 = [obja countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v36)
  {
    v37 = *v53;
    while (2)
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v52 + 1) + 8 * j);
        [(VNEspressoResources *)context network];
        v40 = v39;
        [v39 UTF8String];
        v41 = espresso_network_declare_output();
        if (v41)
        {
          if (error)
          {
            v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not declare network output buffer: %@", v39];
            *error = [VNError errorForEspressoReturnStatus:v41 localizedDescription:v44];
          }

          goto LABEL_57;
        }
      }

      v36 = [obja countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  [(VNEspressoResources *)context plan];
  if (espresso_plan_build())
  {
    if (error)
    {
      [VNError errorForFailedEspressoPlan:[(VNEspressoResources *)context plan] localizedDescription:@"Could not build inference plan"];
      *error = v21 = 0;
    }

    else
    {
LABEL_57:
      v21 = 0;
    }
  }

  else
  {
    v45 = context;
    *resources = context;
    v21 = 1;
  }

LABEL_19:
  return v21;
}

+ (BOOL)createSingleNetworkPlanFromModelPath:(id)path forComputeDevice:(id)device lowPriorityMode:(BOOL)mode priority:(int)priority inputBlobNames:(id)names outputBlobNames:(id)blobNames networkConfiguration:(id)configuration memoryPoolId:(unint64_t)self0 espressoResources:(id *)self1 error:(id *)self2
{
  v14 = *&priority;
  modeCopy = mode;
  pathCopy = path;
  deviceCopy = device;
  namesCopy = names;
  blobNamesCopy = blobNames;
  configurationCopy = configuration;
  LODWORD(v24) = [self espressoStorageTypeForComputeDevice:deviceCopy];
  LOBYTE(v14) = [self createSingleNetworkPlanFromModelPath:pathCopy forComputeDevice:deviceCopy lowPriorityMode:modeCopy priority:v14 inputBlobNames:namesCopy outputBlobNames:blobNamesCopy networkConfiguration:configurationCopy explicitNetworkLayersStorageType:v24 memoryPoolId:id espressoResources:resources error:error];

  return v14;
}

+ (BOOL)getWidth:(unint64_t *)width height:(unint64_t *)height ofBlobNamed:(id)named forNetworkModelFileWithPath:(id)path error:(id *)error
{
  v45[19] = *MEMORY[0x1E69E9840];
  namedCopy = named;
  pathCopy = path;
  uTF8String = [namedCopy UTF8String];
  std::string::basic_string[abi:ne200100]<0>(&v42, [pathCopy UTF8String]);
  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  v15 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  v16 = v42.__r_.__value_.__r.__words[0];
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  else
  {
    v16 = &v42;
  }

  v17 = 0uLL;
  if (size)
  {
    v18 = (v16 + size);
    v19 = v16;
    v20 = v18;
    do
    {
      if (v19->__r_.__value_.__s.__data_[0] == 46)
      {
        v21 = 1u;
        while (v21 != 13)
        {
          if ((v19 + v21) == v18)
          {
            goto LABEL_15;
          }

          v22 = v19->__r_.__value_.__s.__data_[v21];
          v23 = aEspressoNet[v21++];
          if (v22 != v23)
          {
            goto LABEL_7;
          }
        }

        v20 = v19;
      }

LABEL_7:
      v19 = (v19 + 1);
    }

    while (v19 != v18);
LABEL_15:
    v24 = 0;
    v25 = 4294967290;
    if (v20 != v18)
    {
      v26 = v20 - v16;
      if (v26 != -1)
      {
        std::string::replace(&v42, v26 + 10, 0xFFFFFFFFFFFFFFFFLL, "shape", 5uLL);
        std::ifstream::basic_ifstream(v43);
        std::string::basic_string[abi:ne200100]<0>(__p, "json");
        Espresso::load_network_shape();
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, uTF8String);
        v27 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(v38, __p);
        if (&v39 == v27 && (v27 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::find<std::string>(&v40, __p), &v41 == v27))
        {
          v30 = 0uLL;
        }

        else
        {
          v28 = *(v27 + 56);
          *&v29 = v28;
          *(&v29 + 1) = SHIDWORD(v28);
          v30 = v29;
        }

        v34 = v30;
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(v41);
        std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(v39);
        v43[0] = *MEMORY[0x1E69E54C8];
        *(v43 + *(v43[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
        MEMORY[0x1AC556860](&v44);
        std::istream::~istream();
        MEMORY[0x1AC556A40](v45);
        v25 = 0;
        v24 = 1;
        v15 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        v17 = v34;
      }
    }

    if ((v15 & 0x80) == 0)
    {
LABEL_26:
      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v24 = 0;
    v25 = 4294967290;
    if ((*(&v42.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_26;
    }
  }

  v35 = v17;
  operator delete(v42.__r_.__value_.__l.__data_);
  v17 = v35;
  if ((v24 & 1) == 0)
  {
LABEL_27:
    if (error)
    {
      pathCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to introspect %@", pathCopy];
      *error = [VNError errorForEspressoReturnStatus:v25 localizedDescription:pathCopy];

LABEL_40:
      LOBYTE(error) = 0;
      goto LABEL_41;
    }

    goto LABEL_41;
  }

LABEL_31:
  if (v17 && *(&v17 + 1))
  {
    if (width)
    {
      *width = v17;
    }

    if (height)
    {
      *height = *(&v17 + 1);
    }

    LOBYTE(error) = 1;
  }

  else if (error)
  {
    pathCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"blob %@ was not found in %@", namedCopy, pathCopy];
    *error = [VNError errorForInvalidArgumentWithLocalizedDescription:pathCopy2];

    goto LABEL_40;
  }

LABEL_41:

  return error;
}

+ (id)weightsFilePathForEspressoNetworkModelFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [self JSONDataFromNetworkFilePath:pathCopy error:error];
  if (v7)
  {
    v8 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"storage" inOptions:v7 error:error];
    v9 = v8;
    if (v8)
    {
      lastPathComponent = [v8 lastPathComponent];
      v11 = [lastPathComponent isEqualToString:v9];

      if (v11)
      {
        stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
        v13 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v9];

        v9 = v13;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)pathForEspressoNetworkModelFileWithName:(id)name error:(id *)error
{
  v4 = [self pathForEspressoResource:name ofType:@"net" error:error];

  return v4;
}

+ (id)pathForEspressoResourceWithFilename:(id)filename error:(id *)error
{
  filenameCopy = filename;
  stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];
  pathExtension = [filenameCopy pathExtension];
  v9 = [self pathForEspressoResource:stringByDeletingPathExtension ofType:pathExtension error:error];

  return v9;
}

+ (id)pathForEspressoResource:(id)resource ofType:(id)type error:(id *)error
{
  resourceCopy = resource;
  typeCopy = type;
  v10 = [VNEspressoHelpers _alternatePathForEspressoResource:resourceCopy ofType:typeCopy error:error];
  v11 = v10;
  if (v10)
  {
    NSLog(&cfstr_UsingAlternate.isa, v10);
    v12 = v11;
  }

  else
  {
    v21 = 0;
    v13 = [self _locateFrameworkBundleForResourceWithName:resourceCopy resourceDirectory:&v21 error:error];
    v14 = v21;
    if (v13)
    {
      v15 = [v13 pathForResource:resourceCopy ofType:typeCopy inDirectory:v14];
      v12 = v15;
      if (v15)
      {
        v16 = v15;
      }

      else if (error)
      {
        v17 = MEMORY[0x1E696AEC0];
        resourcePath = [v13 resourcePath];
        v19 = [v17 stringWithFormat:@"Unable to locate resource %@ of type %@ in %@", resourceCopy, typeCopy, resourcePath];

        *error = [VNError errorForInternalErrorWithLocalizedDescription:v19];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)_locateFrameworkBundleForResourceWithName:(id)name resourceDirectory:(id *)directory error:(id *)error
{
  [VNError VNAssert:directory != 0 log:@"resourceDirectory must point to a valid reference", error];
  v6 = VNFrameworkBundle();
  *directory = &stru_1F1976900;

  return v6;
}

+ (id)_alternatePathForEspressoResource:(id)resource ofType:(id)type error:(id *)error
{
  resourceCopy = resource;
  typeCopy = type;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];

  v10 = [environment objectForKeyedSubscript:@"VN_ALTERNATE_MODEL_RESOURCE_PATH"];
  if ([v10 length])
  {
    v11 = [resourceCopy stringByAppendingPathExtension:typeCopy];
    v12 = [v10 stringByAppendingPathComponent:v11];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager isReadableFileAtPath:v12];

    if ((v14 & 1) == 0)
    {

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)JSONDataFromNetworkFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:3 error:error];
  if (!v6)
  {
    error = 0;
    goto LABEL_27;
  }

  v7 = v6;
  if ([v7 length] < 0x1C)
  {
    goto LABEL_17;
  }

  bytes = [v7 bytes];
  if (*bytes != 112 || *(bytes + 1) != 98 || *(bytes + 2) != 122)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = *(bytes + 3);
  if (v10 > 0x77)
  {
    if (v10 == 122)
    {
      v11 = COMPRESSION_ZLIB;
    }

    else
    {
      if (v10 != 120)
      {
        goto LABEL_18;
      }

      v11 = COMPRESSION_LZMA;
    }
  }

  else
  {
    if (v10 != 52)
    {
      if (v10 == 101)
      {
        v11 = COMPRESSION_LZFSE;
        goto LABEL_16;
      }

LABEL_18:
      v12 = v7;
LABEL_19:

      v13 = v9;
      goto LABEL_20;
    }

    v11 = COMPRESSION_LZ4;
  }

LABEL_16:
  if (bswap64(*(bytes + 12)) > 0x80000000)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E695DF88] dataWithLength:?];
  v12 = v7;
  v18 = compression_decode_buffer([v17 mutableBytes], objc_msgSend(v17, "length"), (objc_msgSend(v7, "bytes") + 28), objc_msgSend(v7, "length") - 28, 0, v11);
  if (v18 == [v17 length])
  {
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v9 = v13;
    v7 = v12;
    v12 = v9;
    goto LABEL_19;
  }

LABEL_20:
  v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:error];
  if (!v14)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_26;
    }

    pathCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not interpret network %@", pathCopy];
    *error = [VNError errorForDataUnavailableWithLocalizedDescription:pathCopy];

LABEL_25:
    error = 0;
    goto LABEL_26;
  }

  error = v14;
LABEL_26:

LABEL_27:

  return error;
}

@end