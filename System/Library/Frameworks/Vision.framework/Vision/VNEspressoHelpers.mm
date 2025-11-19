@interface VNEspressoHelpers
+ (BOOL)createSingleNetworkPlanFromModelPath:(id)a3 forComputeDevice:(id)a4 lowPriorityMode:(BOOL)a5 priority:(int)a6 inputBlobNames:(id)a7 outputBlobNames:(id)a8 networkConfiguration:(id)a9 explicitNetworkLayersStorageType:(int)a10 memoryPoolId:(unint64_t)a11 espressoResources:(id *)a12 error:(id *)a13;
+ (BOOL)createSingleNetworkPlanFromModelPath:(id)a3 forComputeDevice:(id)a4 lowPriorityMode:(BOOL)a5 priority:(int)a6 inputBlobNames:(id)a7 outputBlobNames:(id)a8 networkConfiguration:(id)a9 memoryPoolId:(unint64_t)a10 espressoResources:(id *)a11 error:(id *)a12;
+ (BOOL)feedForwardEspressoBufferForNetwork:(id *)a3 fromBufferWithName:(id)a4 toBufferWithName:(id)a5 firstFrame:(BOOL)a6 error:(id *)a7;
+ (BOOL)getWidth:(unint64_t *)a3 height:(unint64_t *)a4 ofBlobNamed:(id)a5 forNetworkModelFileWithPath:(id)a6 error:(id *)a7;
+ (BOOL)renderEspressoBufferImage:(id *)a3 intoCVPixelBuffer:(__CVBuffer *)a4 error:(id *)a5;
+ (__CVBuffer)createCVPixelBufferWithPixelFormat:(unsigned int)a3 fromImageInEspressoBuffer:(id *)a4 error:(id *)a5;
+ (id)JSONDataFromNetworkFilePath:(id)a3 error:(id *)a4;
+ (id)_alternatePathForEspressoResource:(id)a3 ofType:(id)a4 error:(id *)a5;
+ (id)_locateFrameworkBundleForResourceWithName:(id)a3 resourceDirectory:(id *)a4 error:(id *)a5;
+ (id)pathForEspressoNetworkModelFileWithName:(id)a3 error:(id *)a4;
+ (id)pathForEspressoResource:(id)a3 ofType:(id)a4 error:(id *)a5;
+ (id)pathForEspressoResourceWithFilename:(id)a3 error:(id *)a4;
+ (id)weightsFilePathForEspressoNetworkModelFilePath:(id)a3 error:(id *)a4;
+ (int)espressoDeviceIDForComputeDevice:(id)a3;
+ (int)espressoEngineForComputeDevice:(id)a3;
+ (int)espressoStorageTypeForComputeDevice:(id)a3;
+ (unint64_t)pixelValueSizeInBytesForBuffer:(id *)a3 error:(id *)a4;
@end

@implementation VNEspressoHelpers

+ (int)espressoStorageTypeForComputeDevice:(id)a3
{
  v3 = [VNComputeDeviceUtilities typeOfComputeDevice:a3];
  if (v3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1A6038F10[v3 - 1];
  }
}

+ (int)espressoEngineForComputeDevice:(id)a3
{
  v3 = [VNComputeDeviceUtilities typeOfComputeDevice:a3];
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

+ (int)espressoDeviceIDForComputeDevice:(id)a3
{
  v3 = [VNComputeDeviceUtilities metalDeviceForComputeDevice:a3];
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

+ (BOOL)feedForwardEspressoBufferForNetwork:(id *)a3 fromBufferWithName:(id)a4 toBufferWithName:(id)a5 firstFrame:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  if (!a3)
  {
    if (a7)
    {
      v15 = [VNError errorWithCode:9 message:@"inference network cannot be nil"];
      goto LABEL_19;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  [v12 UTF8String];
  v14 = espresso_network_bind_buffer();
  if (v14)
  {
    if (a7)
    {
      v15 = [VNError errorForEspressoReturnStatus:v14 localizedDescription:@"Could not bind output buffer to network"];
LABEL_19:
      v19 = 0;
      *a7 = v15;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [v13 UTF8String];
  v16 = espresso_network_bind_buffer();
  if (v16)
  {
    if (a7)
    {
      v15 = [VNError errorForEspressoReturnStatus:v16 localizedDescription:@"Could not bind input buffer to network"];
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v27 != v22 || v28 != v23 || v29 != v24 || v30 != v25)
  {
    if (a7)
    {
      v15 = [VNError errorWithCode:9 message:@"Could not feed-forward buffer data because of compatibility of source and destination buffers"];
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v17 = [a1 pixelValueSizeInBytesForBuffer:&__src error:a7];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v27 * v17 * v28 * v29;
  if (v8)
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

+ (unint64_t)pixelValueSizeInBytesForBuffer:(id *)a3 error:(id *)a4
{
  if (!a3)
  {
    goto LABEL_9;
  }

  var14 = a3->var14;
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
  if (!a4)
  {
    return 0;
  }

  v8 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unknown inference buffer type"];
  v9 = v8;
  result = 0;
  *a4 = v8;
  return result;
}

+ (BOOL)renderEspressoBufferImage:(id *)a3 intoCVPixelBuffer:(__CVBuffer *)a4 error:(id *)a5
{
  if (a3->var14 == 65568)
  {
    if (a5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported espresso storaget type %u", a4, 65568];
      *a5 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v6];
    }

    return 0;
  }

  else
  {
    var4 = a3->var4;
    var0 = a3->var0;
    var5 = a3->var5;

    return [VNCVPixelBufferHelper renderRawDataBufferWithWidth:var4 height:var5 pixelFormatType:1278226534 rowBytes:var0 dataBytes:a4 intoCVPixelBuffer:a5 error:?];
  }
}

+ (__CVBuffer)createCVPixelBufferWithPixelFormat:(unsigned int)a3 fromImageInEspressoBuffer:(id *)a4 error:(id *)a5
{
  if (a3 != 1278226534 || a4->var14 != 65568)
  {
    if (a5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format %lu espresso storaget type %u", a3, a4->var14];;
      *a5 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v8];
    }

    return 0;
  }

  v7 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a4->var5 height:1278226534 pixelFormatType:a5 error:?];
  if (v7 && ([VNCVPixelBufferHelper renderRawDataBufferWithWidth:a4->var4 height:a4->var5 pixelFormatType:1278226534 rowBytes:a4->var0 dataBytes:v7 intoCVPixelBuffer:a5 error:?]& 1) == 0)
  {
    CVPixelBufferRelease(v7);
    return 0;
  }

  return v7;
}

+ (BOOL)createSingleNetworkPlanFromModelPath:(id)a3 forComputeDevice:(id)a4 lowPriorityMode:(BOOL)a5 priority:(int)a6 inputBlobNames:(id)a7 outputBlobNames:(id)a8 networkConfiguration:(id)a9 explicitNetworkLayersStorageType:(int)a10 memoryPoolId:(unint64_t)a11 espressoResources:(id *)a12 error:(id *)a13
{
  v64 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v50 = a7;
  v49 = a8;
  v51 = a9;
  if (!v17 || !a12)
  {
    if (a13)
    {
      v20 = [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid inputs specified to inference plan builder"];
LABEL_9:
      v21 = 0;
      *a13 = v20;
      goto LABEL_19;
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  [a1 espressoEngineForComputeDevice:v18];
  [a1 espressoDeviceIDForComputeDevice:v18];
  context = espresso_create_context();
  if (!context)
  {
    if (a13)
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
    if (a13)
    {
      *a13 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not create inference plan"];
    }

    espresso_context_destroy();
    goto LABEL_18;
  }

  v60 = 0;
  v61 = 0;
  [v17 UTF8String];
  if (espresso_plan_add_network())
  {
    if (a13)
    {
      *a13 = [VNError errorForFailedEspressoPlan:v23 localizedDescription:@"Could not create/add network to inference plan"];
    }

LABEL_14:
    espresso_plan_destroy();
    espresso_context_destroy();
    goto LABEL_18;
  }

  if (v51)
  {
    v25 = v51;
    [v51 UTF8String];
    v26 = espresso_network_select_configuration();
    if (v26)
    {
      if (a13)
      {
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set network configuration: %@", v51];
        *a13 = [VNError errorForEspressoReturnStatus:v26 localizedDescription:v27];
      }

      goto LABEL_14;
    }
  }

  if (a11)
  {
    v28 = espresso_network_set_memory_pool_id();
    if (v28)
    {
      if (a13)
      {
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not select memory pool %llu", a11];
        *a13 = [VNError errorForEspressoReturnStatus:v28 localizedDescription:v29];
      }

      goto LABEL_18;
    }
  }

  if (!espresso_plan_get_phase())
  {
    v43 = espresso_plan_set_priority();
    if (v43)
    {
      if (!a13)
      {
        goto LABEL_18;
      }

      v20 = [VNError errorForEspressoReturnStatus:v43 localizedDescription:@"unable to set client specified plan priority"];
      goto LABEL_9;
    }
  }

  v48 = [[VNEspressoResources alloc] initWithModelPath:v17 networkConfigurationName:v51 network:v60 plan:v61 context:v23, context];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v50;
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
        [(VNEspressoResources *)v48 network];
        v34 = v33;
        [v33 UTF8String];
        v35 = espresso_network_declare_input();
        if (v35)
        {
          if (a13)
          {
            v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not declare network input buffer: %@", v33];
            *a13 = [VNError errorForEspressoReturnStatus:v35 localizedDescription:v42];
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
  obja = v49;
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
        [(VNEspressoResources *)v48 network];
        v40 = v39;
        [v39 UTF8String];
        v41 = espresso_network_declare_output();
        if (v41)
        {
          if (a13)
          {
            v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not declare network output buffer: %@", v39];
            *a13 = [VNError errorForEspressoReturnStatus:v41 localizedDescription:v44];
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

  [(VNEspressoResources *)v48 plan];
  if (espresso_plan_build())
  {
    if (a13)
    {
      [VNError errorForFailedEspressoPlan:[(VNEspressoResources *)v48 plan] localizedDescription:@"Could not build inference plan"];
      *a13 = v21 = 0;
    }

    else
    {
LABEL_57:
      v21 = 0;
    }
  }

  else
  {
    v45 = v48;
    *a12 = v48;
    v21 = 1;
  }

LABEL_19:
  return v21;
}

+ (BOOL)createSingleNetworkPlanFromModelPath:(id)a3 forComputeDevice:(id)a4 lowPriorityMode:(BOOL)a5 priority:(int)a6 inputBlobNames:(id)a7 outputBlobNames:(id)a8 networkConfiguration:(id)a9 memoryPoolId:(unint64_t)a10 espressoResources:(id *)a11 error:(id *)a12
{
  v14 = *&a6;
  v15 = a5;
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  LODWORD(v24) = [a1 espressoStorageTypeForComputeDevice:v19];
  LOBYTE(v14) = [a1 createSingleNetworkPlanFromModelPath:v18 forComputeDevice:v19 lowPriorityMode:v15 priority:v14 inputBlobNames:v20 outputBlobNames:v21 networkConfiguration:v22 explicitNetworkLayersStorageType:v24 memoryPoolId:a10 espressoResources:a11 error:a12];

  return v14;
}

+ (BOOL)getWidth:(unint64_t *)a3 height:(unint64_t *)a4 ofBlobNamed:(id)a5 forNetworkModelFileWithPath:(id)a6 error:(id *)a7
{
  v45[19] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = [v11 UTF8String];
  std::string::basic_string[abi:ne200100]<0>(&v42, [v12 UTF8String]);
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

        std::string::basic_string[abi:ne200100]<0>(__p, v13);
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
    if (a7)
    {
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to introspect %@", v12];
      *a7 = [VNError errorForEspressoReturnStatus:v25 localizedDescription:v31];

LABEL_40:
      LOBYTE(a7) = 0;
      goto LABEL_41;
    }

    goto LABEL_41;
  }

LABEL_31:
  if (v17 && *(&v17 + 1))
  {
    if (a3)
    {
      *a3 = v17;
    }

    if (a4)
    {
      *a4 = *(&v17 + 1);
    }

    LOBYTE(a7) = 1;
  }

  else if (a7)
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"blob %@ was not found in %@", v11, v12];
    *a7 = [VNError errorForInvalidArgumentWithLocalizedDescription:v32];

    goto LABEL_40;
  }

LABEL_41:

  return a7;
}

+ (id)weightsFilePathForEspressoNetworkModelFilePath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 JSONDataFromNetworkFilePath:v6 error:a4];
  if (v7)
  {
    v8 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"storage" inOptions:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 lastPathComponent];
      v11 = [v10 isEqualToString:v9];

      if (v11)
      {
        v12 = [v6 stringByDeletingLastPathComponent];
        v13 = [v12 stringByAppendingPathComponent:v9];

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

+ (id)pathForEspressoNetworkModelFileWithName:(id)a3 error:(id *)a4
{
  v4 = [a1 pathForEspressoResource:a3 ofType:@"net" error:a4];

  return v4;
}

+ (id)pathForEspressoResourceWithFilename:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 stringByDeletingPathExtension];
  v8 = [v6 pathExtension];
  v9 = [a1 pathForEspressoResource:v7 ofType:v8 error:a4];

  return v9;
}

+ (id)pathForEspressoResource:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [VNEspressoHelpers _alternatePathForEspressoResource:v8 ofType:v9 error:a5];
  v11 = v10;
  if (v10)
  {
    NSLog(&cfstr_UsingAlternate.isa, v10);
    v12 = v11;
  }

  else
  {
    v21 = 0;
    v13 = [a1 _locateFrameworkBundleForResourceWithName:v8 resourceDirectory:&v21 error:a5];
    v14 = v21;
    if (v13)
    {
      v15 = [v13 pathForResource:v8 ofType:v9 inDirectory:v14];
      v12 = v15;
      if (v15)
      {
        v16 = v15;
      }

      else if (a5)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v13 resourcePath];
        v19 = [v17 stringWithFormat:@"Unable to locate resource %@ of type %@ in %@", v8, v9, v18];

        *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v19];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)_locateFrameworkBundleForResourceWithName:(id)a3 resourceDirectory:(id *)a4 error:(id *)a5
{
  [VNError VNAssert:a4 != 0 log:@"resourceDirectory must point to a valid reference", a5];
  v6 = VNFrameworkBundle();
  *a4 = &stru_1F1976900;

  return v6;
}

+ (id)_alternatePathForEspressoResource:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AE30] processInfo];
  v9 = [v8 environment];

  v10 = [v9 objectForKeyedSubscript:@"VN_ALTERNATE_MODEL_RESOURCE_PATH"];
  if ([v10 length])
  {
    v11 = [v6 stringByAppendingPathExtension:v7];
    v12 = [v10 stringByAppendingPathComponent:v11];
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v13 isReadableFileAtPath:v12];

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

+ (id)JSONDataFromNetworkFilePath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:3 error:a4];
  if (!v6)
  {
    a4 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  if ([v7 length] < 0x1C)
  {
    goto LABEL_17;
  }

  v8 = [v7 bytes];
  if (*v8 != 112 || *(v8 + 1) != 98 || *(v8 + 2) != 122)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = *(v8 + 3);
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
  if (bswap64(*(v8 + 12)) > 0x80000000)
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
  v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:a4];
  if (!v14)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_26;
    }

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not interpret network %@", v5];
    *a4 = [VNError errorForDataUnavailableWithLocalizedDescription:v15];

LABEL_25:
    a4 = 0;
    goto LABEL_26;
  }

  a4 = v14;
LABEL_26:

LABEL_27:

  return a4;
}

@end