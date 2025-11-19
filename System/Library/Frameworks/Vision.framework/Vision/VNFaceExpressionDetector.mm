@interface VNFaceExpressionDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)createExpressionAndConfidencesDictionaryFromScores:(id)a3;
+ (id)createExpressionDetectionDictionaryFromScores:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (int)expressionTypeFromString:(id)a3;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (void)dealloc;
@end

@implementation VNFaceExpressionDetector

+ (id)createExpressionDetectionDictionaryFromScores:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v6 objectForKey:v10];
        [v11 floatValue];
        v13 = v12;
        LODWORD(v32) = [a1 expressionTypeFromString:v10];
        v23 = &v32;
        *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v29, v32) + 8) = v13;
      }

      v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }

  v14 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  do
  {
    v31 = v14;
    v32 = &v31;
    if (*(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v29, v14) + 8) <= vision::mod::expressionThresholds[v14])
    {
      v31 = v14;
      v32 = &v31;
      *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v23, v14) + 8) = 0;
    }

    else
    {
      v31 = v14;
      v32 = &v31;
      *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v23, v14) + 8) = 1065353216;
    }

    ++v14;
  }

  while (v14 != 6);
  v15 = v23;
  if (v23 != v24)
  {
    do
    {
      v16 = v15[8];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:vision::mod::expressionAttributeTypeDescription[*(v15 + 7)]];
      v18 = [MEMORY[0x1E696AD98] numberWithBool:v16 > 0.75];
      [v5 setObject:v18 forKeyedSubscript:v17];

      v19 = *(v15 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v15 + 2);
          v21 = *v20 == v15;
          v15 = v20;
        }

        while (!v21);
      }

      v15 = v20;
    }

    while (v20 != v24);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v24[0]);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v30[0]);

  return v5;
}

+ (id)createExpressionAndConfidencesDictionaryFromScores:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v6 objectForKey:v10];
        [v11 floatValue];
        v13 = v12;
        LODWORD(v39) = [a1 expressionTypeFromString:v10];
        v29 = &v39;
        *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v35, v39) + 8) = v13;
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v7);
  }

  v14 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v15 = 0.0;
  v16 = 3.4028e38;
  do
  {
    v38 = v14;
    v39 = &v38;
    if (v16 > *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v35, v14) + 8))
    {
      v38 = v14;
      v39 = &v38;
      v16 = *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v35, v14) + 8);
    }

    v38 = v14;
    v39 = &v38;
    v15 = v15 + *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v35, v14++) + 8);
  }

  while (v14 != 6);
  v17 = 0;
  v18 = v15 + (v16 * -6.0);
  do
  {
    v38 = v17;
    v39 = &v38;
    v19 = *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v35, v17) + 8);
    v37 = v17;
    v39 = &v37;
    *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v29, v17++) + 8) = (v19 - v16) / v18;
  }

  while (v17 != 6);
  v20 = v29;
  if (v29 != v30)
  {
    do
    {
      v21 = *(v20 + 8);
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:vision::mod::expressionAttributeTypeDescription[*(v20 + 7)]];
      LODWORD(v23) = v21;
      v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      [v5 setObject:v24 forKeyedSubscript:v22];

      v25 = v20[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v20[2];
          v27 = *v26 == v20;
          v20 = v26;
        }

        while (!v27);
      }

      v20 = v26;
    }

    while (v26 != v30);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v30[0]);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v36[0]);

  return v5;
}

+ (int)expressionTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Smile"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Disgust"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Neutral"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Surprise"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Scream"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Suspicious"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNFaceExpressionDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNFaceExpressionDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceExpressionDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceExpressionDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __65__VNFaceExpressionDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceExpressionDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorInitOption_ModelBackingStore"];
  v3 = [v2 copy];
  v4 = +[VNFaceExpressionDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceExpressionDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v62[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = [(VNDetector *)self validatedImageBufferFromOptions:v11 error:a8];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v13 = [VNValidationUtilities requiredFaceObservationInOptions:v11 error:a8];
  v14 = v13;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v15 = [v13 expressionsAndScores];

  if (!v15)
  {
    v17 = [v14 vn_cloneObject];
    v18 = v17;
    if (!v17)
    {
      if (a8)
      {
        +[VNError errorForMemoryAllocationFailure];
        *a8 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_28;
    }

    v19 = [v17 landmarkPoints65];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 bytes];
      if ([v20 length] > 0x1F7)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        std::vector<_Geometry2D_point2D_>::__init_with_size[abi:ne200100]<_Geometry2D_point2D_*,_Geometry2D_point2D_*>(&v58, v21, v21 + 504, 0x3FuLL);
        [v18 alignedBoundingBox];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [v12 width];
        v32 = [v12 height];
        v33 = [v12 width];
        v34 = [v12 height];
        v35 = 0;
        v36 = v24 * v31;
        v37 = v58;
        do
        {
          v38.f32[1] = v28 * v34;
          v38.f32[0] = v30 * v33;
          *&v37[v35] = vmul_f32(v38, *&v37[v35]);
          v35 += 8;
        }

        while (v35 != 504);
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x4812000000;
        v56[3] = __Block_byref_object_copy__8547;
        v56[4] = __Block_byref_object_dispose__8548;
        v56[5] = "";
        v57[0] = 0;
        v57[1] = 0;
        v56[6] = v57;
        v42 = MEMORY[0x1E69E9820];
        v43 = 3321888768;
        v44 = __126__VNFaceExpressionDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
        v45 = &unk_1F19724F0;
        v48 = v56;
        __p = 0;
        v46 = self;
        v52 = v36;
        v53 = v26 * v32;
        v54 = v28 * v34;
        v55 = v30 * v33;
        v50 = 0;
        v51 = 0;
        std::vector<_Geometry2D_point2D_>::__init_with_size[abi:ne200100]<_Geometry2D_point2D_*,_Geometry2D_point2D_*>(&__p, v37, v59, (v59 - v37) >> 3);
        v39 = v18;
        v47 = v39;
        v40 = _Block_copy(&v42);
        if (VNExecuteBlock(v40, a8))
        {
          v61 = v39;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:{1, v42, v43, v44, v45, v46}];
        }

        else
        {
          v16 = 0;
        }

        if (__p)
        {
          v50 = __p;
          operator delete(__p);
        }

        _Block_object_dispose(v56, 8);
        std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v57[0]);
        operator delete(v37);
        goto LABEL_27;
      }

      if (a8)
      {
        v22 = [VNError errorForInternalErrorWithLocalizedDescription:@"Corrupt face mark data"];
LABEL_16:
        v16 = 0;
        *a8 = v22;
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }
    }

    else if (a8)
    {
      v22 = [VNError errorForInternalErrorWithLocalizedDescription:@"VNFaceExpressionDetector face does not have landmark points"];
      goto LABEL_16;
    }

    v16 = 0;
    goto LABEL_27;
  }

  v62[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
LABEL_29:

LABEL_30:

  return v16;
}

uint64_t __126__VNFaceExpressionDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  v26 = 0;
  v27 = 0;
  v25 = &v26;
  vision::mod::LandmarkAttributes::computePixelDistanceFeature(&__p, a1 + 80, (a1 + 56));
  v3 = (v30 - __p) >> 2;
  if (v3 != *(v2 + 104) >> 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 2940;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v4 = *(v2 + 112);
  MEMORY[0x1AC5587F0](v4 + 24 * v3, 1, __p, 1, __p, 1, (v30 - __p) >> 2);
  vDSP_vdiv((v4 + 28 * v3), 1, __p, 1, __p, 1, (v30 - __p) >> 2);
  LODWORD(v24) = 1;
  cblas_sgemv_NEWLAPACK();
  for (i = 0; i != 6; ++i)
  {
    v6 = v32[i];
    v28 = i;
    v31 = &v28;
    *(std::__tree<std::__value_type<vision::mod::_blinkType,float>,std::__map_value_compare<vision::mod::_blinkType,std::__value_type<vision::mod::_blinkType,float>,std::less<vision::mod::_blinkType>,true>,std::allocator<std::__value_type<vision::mod::_blinkType,float>>>::__emplace_unique_key_args<vision::mod::_blinkType,std::piecewise_construct_t const&,std::tuple<vision::mod::_blinkType&&>,std::tuple<>>(&v25, i) + 8) = v6;
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = v7 + 56;
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v7 + 56));
  v9 = v26;
  *(v7 + 48) = v25;
  *(v7 + 56) = v9;
  v10 = v27;
  *(v7 + 64) = v27;
  if (v10)
  {
    v9[2] = v8;
    v25 = &v26;
    v26 = 0;
    v27 = 0;
    v9 = 0;
  }

  else
  {
    *(v7 + 48) = v8;
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v9);
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{6, v32, v24}];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 48);
  v14 = (v12 + 56);
  if (v13 != (v12 + 56))
  {
    do
    {
      v15 = *(v13 + 8);
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:vision::mod::expressionAttributeTypeDescription[*(v13 + 7)]];
      LODWORD(v17) = v15;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      [v11 setObject:v18 forKeyedSubscript:v16];

      v19 = v13[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v13[2];
          v21 = *v20 == v13;
          v13 = v20;
        }

        while (!v21);
      }

      v13 = v20;
    }

    while (v20 != v14);
  }

  [*(a1 + 40) setExpressionsAndScores:v11];

  return 1;
}

- (void)dealloc
{
  if (self->_modelFilesWereMemmapped)
  {
    v3 = VNBinModelFilePathFromModelNameAndThrow(@"landmarkRefinerAndPupil_v2");
    v4 = +[VNModelFilesCache sharedInstance];
    [v4 unload:v3];
  }

  v5.receiver = self;
  v5.super_class = VNFaceExpressionDetector;
  [(VNDetector *)&v5 dealloc];
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v13.receiver = self;
  v13.super_class = VNFaceExpressionDetector;
  if (![(VNDetector *)&v13 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  self->_modelFilesWereMemmapped = [(VNDetector *)self backingStore]< 2;
  v6 = VNBinModelFilePathFromModelNameAndThrow(@"landmarkRefinerAndPupil_v2");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__VNFaceExpressionDetector_completeInitializationForSession_error___block_invoke;
  v11[3] = &unk_1E77B6430;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(v11);
  v9 = VNExecuteBlock(v8, a4);

  return v9;
}

uint64_t __67__VNFaceExpressionDetector_completeInitializationForSession_error___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 72) != 1)
  {
    operator new();
  }

  v4 = +[VNModelFilesCache sharedInstance];
  v5 = [v4 load:*(a1 + 40)];
  if (v5)
  {
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    cvml::util::binserialized_table_of_contents::init(v9, [v5 baseAddress], objc_msgSend(v5, "length"));
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    cvml::util::binserialized_contents::init_model_values(v7, v9, 0, vision::mod::LandmarkAttributes::sModelFileInfo);
    operator new();
  }

  if (a2)
  {
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not read expressions model data"];
  }

  return 0;
}

@end