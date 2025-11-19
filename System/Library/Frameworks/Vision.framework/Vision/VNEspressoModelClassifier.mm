@interface VNEspressoModelClassifier
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (shared_ptr<vision::mod::ImageClassifierAbstract>)createClassifierWithDescriptor:(shared_ptr<vision:(const char *)a4 :(int)a5 mod:(int)a6 :(const char *)a7 ImageDescriptorProcessorAbstract>)a3 classifierAbsolutePath:(Options *)a8 computePlatform:computePath:labelsFilename:options:;
+ (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)createHierarchicalModelForOriginatingRequestSpecifier:(id)a3 error:(id *)a4;
+ (shared_ptr<vision::mod::ImageDescriptorProcessorAbstract>)createDescriprorProcessorWithModelPath:(const char *)a3 nBatch:(int)a4 computePlatform:(int)a5 computePath:(int)a6 options:(Options *)a7;
+ (void)convertRelationships:(id)a3 toStdRelationships:(void *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)boundComputeStageDevices;
- (id)calculateImageDescriptors:(id)a3 regionOfInterest:(CGRect)a4 warningRecorder:(id)a5 canceller:(id)a6 error:(id *)a7;
- (id)getLabels;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNEspressoModelClassifier

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities espressoV1ModelComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNEspressoModelClassifier_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNEspressoModelClassifier configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNEspressoModelClassifier configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNEspressoModelClassifier configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __66__VNEspressoModelClassifier_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNEspressoModelClassifier;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_MetalContextPriority"];
  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNEspressoModelClassifier configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNEspressoModelClassifier configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (void)convertRelationships:(id)a3 toStdRelationships:(void *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__VNEspressoModelClassifier_convertRelationships_toStdRelationships___block_invoke;
  v7[3] = &__block_descriptor_48_e34_v32__0__NSString_8__NSArray_16_B24l;
  v7[4] = v6;
  v7[5] = a4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __69__VNEspressoModelClassifier_convertRelationships_toStdRelationships___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v28 = 0u;
        memset(v27, 0, sizeof(v27));
        v10 = v5;
        std::string::basic_string[abi:ne200100]<0>(&v26, [v5 cStringUsingEncoding:*(a1 + 32)]);
        v11 = v9;
        std::string::basic_string[abi:ne200100]<0>(&__str, [v9 cStringUsingEncoding:*(a1 + 32)]);
        std::string::operator=(v27, &__str);
        std::string::operator=(&v27[24], &v26);
        v12 = *(a1 + 40);
        v14 = *(v12 + 8);
        v13 = *(v12 + 16);
        if (v14 >= v13)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v12) >> 4);
          v17 = v16 + 1;
          if (v16 + 1 > 0x555555555555555)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 4);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x2AAAAAAAAAAAAAALL)
          {
            v19 = 0x555555555555555;
          }

          else
          {
            v19 = v17;
          }

          v33.__end_cap_.__value_ = *(a1 + 40);
          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(v19);
          }

          v33.__first_ = 0;
          v33.__begin_ = (48 * v16);
          v33.__end_ = (48 * v16);
          v33.__end_cap_.__value_ = 0;
          std::pair<std::string,std::string>::pair[abi:ne200100]((48 * v16), v27);
          v15 = v33.__end_ + 1;
          v20 = *(v12 + 8) - *v12;
          v21 = v33.__begin_ - v20;
          memcpy(v33.__begin_ - v20, *v12, v20);
          v22 = *v12;
          *v12 = v21;
          v33.__first_ = v22;
          v33.__begin_ = v22;
          *(v12 + 8) = v15;
          v33.__end_ = v22;
          v23 = *(v12 + 16);
          *(v12 + 16) = v33.__end_cap_.__value_;
          v33.__end_cap_.__value_ = v23;
          std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v33);
        }

        else
        {
          std::pair<std::string,std::string>::pair[abi:ne200100](*(v12 + 8), v27);
          v15 = v14 + 1;
          *(v12 + 8) = v14 + 1;
        }

        *(v12 + 8) = v15;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(*&v27[24]);
        }

        if ((v27[23] & 0x80000000) != 0)
        {
          operator delete(*v27);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }
}

+ (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)createHierarchicalModelForOriginatingRequestSpecifier:(id)a3 error:(id *)a4
{
  v7 = v4;
  v8 = a3;
  v9 = [a1 classifierResourceTypesToNamesForOriginatingRequestSpecifier:v8];
  if (v9)
  {
    v10 = VNFrameworkBundle();
    v11 = [v9 objectForKeyedSubscript:@"espresso-classifier-labels"];
    v12 = [v10 pathForResource:v11 ofType:@"csv"];
    if (v12)
    {
      v13 = [v9 objectForKeyedSubscript:@"espresso-classifier-relationships"];

      v14 = [v9 objectForKeyedSubscript:@"espresso-classifier-relationships"];
      v15 = [v10 pathForResource:v14 ofType:@"txt"];

      if (v15)
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x4012000000;
        v36 = __Block_byref_object_copy__12179;
        v37 = __Block_byref_object_dispose__12180;
        v38 = "";
        v39 = 0;
        v40 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __89__VNEspressoModelClassifier_createHierarchicalModelForOriginatingRequestSpecifier_error___block_invoke;
        aBlock[3] = &unk_1E77B5338;
        v30 = v12;
        v32 = &v33;
        v31 = v15;
        v16 = _Block_copy(aBlock);
        if (VNExecuteBlock(v16, a4))
        {
          v17 = v34[7];
          *v7 = v34[6];
          v7[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          *v7 = 0;
          v7[1] = 0;
        }

        _Block_object_dispose(&v33, 8);
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }
      }

      else
      {
        if (a4)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = [v13 stringByAppendingPathExtension:@"txt"];
          v26 = [v24 stringWithFormat:@"could not locate the resource file %@", v25];

          *a4 = [VNError errorForInvalidModelWithLocalizedDescription:v26];
        }

        *v7 = 0;
        v7[1] = 0;
      }

      v11 = v13;
    }

    else
    {
      if (a4)
      {
        v21 = MEMORY[0x1E696AEC0];
        v22 = [v11 stringByAppendingPathExtension:@"csv"];
        v23 = [v21 stringWithFormat:@"could not locate the resource file %@", v22];

        *a4 = [VNError errorForInvalidModelWithLocalizedDescription:v23];
      }

      *v7 = 0;
      v7[1] = 0;
    }
  }

  else
  {
    if (a4)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = NSStringFromClass(a1);
      v20 = [v18 stringWithFormat:@"%@ must implement classifierResourceTypesToNamesForOriginatingRequestSpecifier: for %@", v19, v8];

      *a4 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v20];
    }

    *v7 = 0;
    v7[1] = 0;
  }

  result.__cntrl_ = v28;
  result.__ptr_ = v27;
  return result;
}

void __89__VNEspressoModelClassifier_createHierarchicalModelForOriginatingRequestSpecifier_error___block_invoke(uint64_t a1)
{
  v26[2] = *MEMORY[0x1E69E9840];
  ImageClassifier_loadLabelsAndBooleanFlags(v23, [*(a1 + 32) UTF8String]);
  v18 = a1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v2 = *v23;
  v3 = v24;
  if (*v23 != v24)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 24);
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *v2, *(v2 + 8));
        v4 = v21;
      }

      else
      {
        v19 = *v2;
      }

      v26[0] = v19.__r_.__value_.__l.__size_;
      v6 = v19.__r_.__value_.__r.__words[0];
      *(v26 + 7) = *(&v19.__r_.__value_.__r.__words[1] + 7);
      v7 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      memset(&v19, 0, sizeof(v19));
      v8 = (*v5 >> 1) & 1;
      if (v4 >= v22)
      {
        v10 = (v4 - v20) >> 5;
        if ((v10 + 1) >> 59)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v11 = (v22 - v20) >> 4;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v22 - v20 >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        v25[4] = &v20;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(v12);
        }

        v13 = 32 * v10;
        v14 = v26[0];
        *v13 = v6;
        *(v13 + 8) = v14;
        *(v13 + 15) = *(v26 + 7);
        *(v13 + 23) = v7;
        v26[0] = 0;
        *(v26 + 7) = 0;
        *(v13 + 24) = v8;
        v4 = 32 * v10 + 32;
        v15 = (v13 - (v21 - v20));
        memcpy(v15, v20, v21 - v20);
        v16 = v20;
        v17 = v22;
        v20 = v15;
        v21 = v4;
        v22 = 0;
        v25[2] = v16;
        v25[3] = v17;
        v25[0] = v16;
        v25[1] = v16;
        std::__split_buffer<std::pair<std::string,float>>::~__split_buffer(v25);
      }

      else
      {
        *v4 = v6;
        v9 = *(v26 + 7);
        *(v4 + 8) = v26[0];
        *(v4 + 15) = v9;
        *(v4 + 23) = v7;
        *(v4 + 24) = v8;
        v4 += 32;
      }

      v21 = v4;
      v2 += 48;
    }

    while (v2 != v3);
  }

  v19.__r_.__value_.__r.__words[0] = [*(v18 + 40) UTF8String];
  std::allocate_shared[abi:ne200100]<vision::mod::ImageClassifier_HierarchicalModel,std::allocator<vision::mod::ImageClassifier_HierarchicalModel>,char const*,decltype(nullptr),std::vector<std::pair<std::string,BOOL>> &,0>();
}

+ (shared_ptr<vision::mod::ImageDescriptorProcessorAbstract>)createDescriprorProcessorWithModelPath:(const char *)a3 nBatch:(int)a4 computePlatform:(int)a5 computePath:(int)a6 options:(Options *)a7
{
  *v7 = 0;
  v7[1] = 0;

  var2 = a7->var2;

  result.__cntrl_ = v11;
  result.__ptr_ = v10;
  return result;
}

+ (shared_ptr<vision::mod::ImageClassifierAbstract>)createClassifierWithDescriptor:(shared_ptr<vision:(const char *)a4 :(int)a5 mod:(int)a6 :(const char *)a7 ImageDescriptorProcessorAbstract>)a3 classifierAbsolutePath:(Options *)a8 computePlatform:computePath:labelsFilename:options:
{
  *v8 = 0;
  v8[1] = 0;

  v10 = *(a7 + 2);

  result.__cntrl_ = v12;
  result.__ptr_ = v11;
  return result;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (id)getLabels
{
  ptr = self->mClassifier.__ptr_;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v10, *(ptr + 1), *(ptr + 2), 0xAAAAAAAAAAAAAAABLL * ((*(ptr + 2) - *(ptr + 1)) >> 3));
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithCapacity:0xAAAAAAAAAAAAAAABLL * (v11 - v10)];
  v5 = v10;
  for (i = v11; v5 != i; v5 += 3)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    [v4 addObject:v8];
  }

  v13 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);

  return v4;
}

- (id)calculateImageDescriptors:(id)a3 regionOfInterest:(CGRect)a4 warningRecorder:(id)a5 canceller:(id)a6 error:(id *)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v83[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v70 = a5;
  v16 = a6;
  v81 = 0;
  v82 = 0;
  v66 = objc_opt_class();
  [v66 initDumpDebugIntermediates:&v82 debugInfo:&v81];
  v17 = v82;
  v18 = v81;
  if (v17)
  {
    [v15 setObject:v17 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
  }

  if (v18)
  {
    [v15 setObject:v18 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
  }

  v68 = v17;
  v69 = v18;
  v67 = a7;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:v15 error:a7];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = (*(self->mDescriptorProcessor.__ptr_->var0 + 19))(self->mDescriptorProcessor.__ptr_);
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v19 width];
  v24 = [v19 height];
  v25 = v22;
  if (v23 >= v24)
  {
    v23 = v24;
  }

  if (v23 < v25)
  {
    VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v70, v22);
    if (v23 < v25 >> 2)
    {
      v26 = MEMORY[0x1E695E0F0];
      goto LABEL_67;
    }
  }

  v80 = 0;
  if (![VNImageClassifier computeImageCropWithImage:v19 regionOfInterest:self->mDescriptorProcessor.__ptr_ usingDescriptorProcessor:1 scalingImage:v15 options:&v80 pixelBuffer:a7 error:x, y, width, height])
  {
LABEL_21:
    v26 = 0;
    goto LABEL_67;
  }

  CVPixelBufferLockBaseAddress(v80, 1uLL);
  (*(self->mDescriptorProcessor.__ptr_->var0 + 8))(&v78);
  v27 = [v15 objectForKeyedSubscript:@"VNEspressoModelClassifierProcessOption_CenterTileOnly"];
  v28 = [v27 BOOLValue];

  v77 = v16;
  LOBYTE(v27) = [(VNDetector *)self getOptionalCanceller:&v77 inOptions:v15 error:a7];
  v65 = v77;

  if (v27)
  {
    v75 = 0;
    v76 = 0;
    v29 = v80;
    ptr = self->mDescriptorProcessor.__ptr_;
    v31 = v78;
    v32 = [(VNDetector *)self metalContext];
    LOBYTE(ptr) = [VNImageClassifier computeImageDescriptorsWithImage:v19 pixelBuffer:v29 regionOfInterest:ptr usingDescriptorProcessor:v28 tileCount:0 augmentationMode:v31 resultantDescriptorBuffer:x options:y metalContext:width canceller:height tileColumns:v15 tileRows:v32 error:v65, &v76, &v75, a7];

    CVPixelBufferUnlockBaseAddress(v80, 1uLL);
    CVPixelBufferRelease(v80);
    v26 = 0;
    v80 = 0;
    if (ptr)
    {
      VNRecordImageTilingWarning(v70, v76, v75);
      memset(v74, 0, sizeof(v74));
      v33 = [v66 returnAllResultsOptionKey];
      v56 = v33;
      if (v33 && ([v15 objectForKeyedSubscript:v33], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "BOOLValue"), v34, v35))
      {
        v36 = self->mClassifier.__ptr_;
        v37 = v78;
        v38 = [(VNDetector *)self metalContext];
        v73 = 0;
        LOBYTE(v36) = [VNImageClassifier computeLabelsAndConfidence:v36 usingDescriptorBuffer:v37 populateLabelsAndConfidence:v74 options:v15 metalContext:v38 error:&v73];
        v39 = v73;

        if ((v36 & 1) == 0)
        {
          if (a7)
          {
            *a7 = [VNError errorForInternalErrorWithLocalizedDescription:@"Could not compute raw labels and confidence for image" underlyingError:v39];
          }

          goto LABEL_55;
        }

        v63 = 1;
      }

      else
      {
        v63 = 0;
      }

      if (v78)
      {
      }

      else
      {
        v40 = 0;
      }

      v41 = *(v40 + 9);
      if (v41)
      {
        v64 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v40 + 9)];
        v60 = (*(*v40 + 104))(v40);
        v59 = *(v40 + 12);
        v61 = [v66 espressoModelImageprintClass];
        v42 = [VNValidationUtilities originatingRequestSpecifierInOptions:v15 error:a7];
        if (v42)
        {
          v57 = v41;
          v58 = v40;
          v62 = v42;
          v43 = 0;
          while (1)
          {
            if (v63)
            {
              v44 = v74[0] + 40 * v43;
              v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(v44 + 24)];
              for (i = *(v44 + 16); i; i = *i)
              {
                if (*(i + 39) < 0)
                {
                  std::string::__init_copy_ctor_external(&v71, i[2], i[3]);
                }

                else
                {
                  v71 = *(i + 2);
                }

                v72 = *(i + 10);
                v47 = objc_alloc(MEMORY[0x1E696AEC0]);
                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v48 = &v71;
                }

                else
                {
                  v48 = v71.__r_.__value_.__r.__words[0];
                }

                v49 = [v47 initWithUTF8String:v48];
                LODWORD(v50) = v72;
                v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
                [v45 setObject:v51 forKey:v49];

                if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v71.__r_.__value_.__l.__data_);
                }
              }
            }

            else
            {
              v45 = 0;
            }

            v52 = [[v61 alloc] initWithData:vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v58 elementCount:v43) elementType:v59 lengthInBytes:1 labelsAndConfidence:v60 requestRevision:{v45, objc_msgSend(v62, "requestRevision")}];
            if (!v52)
            {
              break;
            }

            [v64 addObject:v52];

            if (++v43 == v57)
            {
              v53 = [v66 createObservationWithDescriptors:v64 forOriginatingRequestSpecifier:v62];
              v45 = v53;
              if (v53)
              {
                v83[0] = v53;
                v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
                goto LABEL_61;
              }

              if (v67)
              {
                v54 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create observation object"];
                v45 = 0;
                goto LABEL_58;
              }

              v45 = 0;
              goto LABEL_60;
            }
          }

          if (v67)
          {
            v54 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create image print"];
LABEL_58:
            v26 = 0;
            *v67 = v54;
            goto LABEL_61;
          }

LABEL_60:
          v26 = 0;
LABEL_61:

          v42 = v62;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_63;
      }

      if (a7)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot calculate classification image descriptor"];
        *a7 = v26 = 0;
LABEL_63:

        v71.__r_.__value_.__r.__words[0] = v74;
        std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v71);
        goto LABEL_64;
      }

LABEL_55:
      v26 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_64:
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  v16 = v65;
LABEL_67:

  return v26;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v73[1] = *MEMORY[0x1E69E9840];
  v18 = a5;
  v62 = a7;
  v61 = a9;
  v64 = v18;
  (*(self->mDescriptorProcessor.__ptr_->var0 + 8))(&v71);
  v19 = [v18 objectForKeyedSubscript:@"VNEspressoModelClassifierProcessOption_CenterTileOnly"];
  v20 = [v19 BOOLValue];

  v70 = 0;
  LOBYTE(v19) = [(VNDetector *)self getOptionalCanceller:&v70 inOptions:v18 error:a8];
  v63 = v70;
  if ((v19 & 1) == 0)
  {
    v35 = 0;
    goto LABEL_53;
  }

  v21 = [(VNDetector *)self validatedImageBufferFromOptions:v18 error:a8];
  if (v21)
  {
    v57 = v21;
    v68 = 0;
    v69 = 0;
    ptr = self->mDescriptorProcessor.__ptr_;
    v23 = v71;
    v24 = [(VNDetector *)self metalContext];
    v25 = [VNImageClassifier computeImageDescriptorsWithImage:v57 pixelBuffer:a4 regionOfInterest:ptr usingDescriptorProcessor:v20 tileCount:0 augmentationMode:v23 resultantDescriptorBuffer:x options:y metalContext:width canceller:height tileColumns:v64 tileRows:v24 error:v63, &v69, &v68, a8];

    if (!v25)
    {
      v35 = 0;
LABEL_51:
      v21 = v57;
      goto LABEL_52;
    }

    VNRecordImageTilingWarning(v62, v69, v68);
    memset(v67, 0, sizeof(v67));
    v26 = objc_opt_class();
    v27 = [v26 returnAllResultsOptionKey];
    v53 = v27;
    if (v27)
    {
      v28 = [v64 objectForKeyedSubscript:v27];
      v29 = v26;
      v30 = [v28 BOOLValue];

      if (v30)
      {
        v31 = self->mClassifier.__ptr_;
        v32 = v71;
        v33 = [(VNDetector *)self metalContext];
        v34 = [VNImageClassifier computeLabelsAndConfidence:v31 usingDescriptorBuffer:v32 populateLabelsAndConfidence:v67 options:v64 metalContext:v33 error:a8];

        if (!v34)
        {
          goto LABEL_39;
        }

        v59 = 1;
      }

      else
      {
        v59 = 0;
      }

      v26 = v29;
    }

    else
    {
      v59 = 0;
    }

    if (v71)
    {
    }

    else
    {
      v36 = 0;
    }

    v37 = *(v36 + 9);
    if (v37)
    {
      v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v36 + 9)];
      v55 = (*(*v36 + 104))(v36);
      v54 = *(v36 + 12);
      v56 = [v26 espressoModelImageprintClass];
      v38 = [VNValidationUtilities originatingRequestSpecifierInOptions:v64 error:a8];
      if (v38)
      {
        v52 = v26;
        v58 = v38;
        v39 = 0;
        while (1)
        {
          if (v59)
          {
            v40 = v67[0] + 40 * v39;
            v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(v40 + 24)];
            for (i = *(v40 + 16); i; i = *i)
            {
              if (*(i + 39) < 0)
              {
                std::string::__init_copy_ctor_external(&v65, i[2], i[3]);
              }

              else
              {
                v65 = *(i + 2);
              }

              v66 = *(i + 10);
              v43 = objc_alloc(MEMORY[0x1E696AEC0]);
              if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v44 = &v65;
              }

              else
              {
                v44 = v65.__r_.__value_.__r.__words[0];
              }

              v45 = [v43 initWithUTF8String:v44];
              LODWORD(v46) = v66;
              v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
              [v41 setObject:v47 forKey:v45];

              if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v65.__r_.__value_.__l.__data_);
              }
            }
          }

          else
          {
            v41 = 0;
          }

          v48 = [[v56 alloc] initWithData:vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v36 elementCount:v39) elementType:v54 lengthInBytes:1 labelsAndConfidence:v55 requestRevision:{v41, objc_msgSend(v58, "requestRevision")}];
          if (!v48)
          {
            break;
          }

          [v60 addObject:v48];

          if (++v39 == v37)
          {
            v49 = [v52 createObservationWithDescriptors:v60 forOriginatingRequestSpecifier:v58];
            v41 = v49;
            if (v49)
            {
              v73[0] = v49;
              v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
              goto LABEL_48;
            }

            if (a8)
            {
              v50 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create observation object"];
              v41 = 0;
              goto LABEL_45;
            }

            v41 = 0;
            goto LABEL_47;
          }
        }

        if (a8)
        {
          v50 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create image print"];
LABEL_45:
          v35 = 0;
          *a8 = v50;
          goto LABEL_48;
        }

LABEL_47:
        v35 = 0;
LABEL_48:

        v38 = v58;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_50;
    }

    if (a8)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot calculate classification image descriptor"];
      *a8 = v35 = 0;
LABEL_50:

      v65.__r_.__value_.__r.__words[0] = v67;
      std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v65);
      goto LABEL_51;
    }

LABEL_39:
    v35 = 0;
    goto LABEL_50;
  }

  v35 = 0;
LABEL_52:

LABEL_53:
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  return v35;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  if (v17)
  {
    v18 = [VNImageClassifier computeImageCropWithImage:v17 regionOfInterest:self->mDescriptorProcessor.__ptr_ usingDescriptorProcessor:1 scalingImage:v16 options:a7 pixelBuffer:a8 error:x, y, width, height];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v32 = 0;
  v33 = 0;
  [objc_opt_class() initDumpDebugIntermediates:&v33 debugInfo:&v32];
  v19 = v33;
  v20 = v32;
  if (v19)
  {
    [v16 setObject:v19 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
  }

  if (v20)
  {
    [v16 setObject:v20 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
  }

  v21 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a7];
  if (v21)
  {
    v22 = (*(self->mDescriptorProcessor.__ptr_->var0 + 19))(self->mDescriptorProcessor.__ptr_);
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v21 width];
    v26 = [v21 height];
    v27 = v24;
    if (v25 >= v26)
    {
      v25 = v26;
    }

    if (v25 >= v27 || (VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v17, v24), v25 >= v27 >> 2))
    {
      v31.receiver = self;
      v31.super_class = VNEspressoModelClassifier;
      v28 = [(VNDetector *)&v31 internalProcessUsingQualityOfServiceClass:a3 options:v16 regionOfInterest:v17 warningRecorder:a7 error:v18 progressHandler:x, y, width, height];
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v32.receiver = self;
  v32.super_class = VNEspressoModelClassifier;
  if ([(VNDetector *)&v32 completeInitializationForSession:a3 error:?])
  {
    v6 = [(VNDetector *)self configurationOptions];
    v7 = [objc_opt_class() computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v6 error:a4];
    computeDevice = self->_computeDevice;
    self->_computeDevice = v7;

    if (!self->_computeDevice)
    {
      v18 = 0;
LABEL_24:

      return v18;
    }

    v9 = [VNValidationUtilities originatingRequestSpecifierInOptions:v6 error:a4];
    if (!v9)
    {
      v18 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v10 = objc_opt_class();
    v11 = [v10 classifierResourceTypesToNamesForOriginatingRequestSpecifier:v9];
    if (v11)
    {
      v12 = [v6 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
      v13 = [v12 BOOLValue];

      v14 = VNFrameworkBundle();
      v15 = _modelBundlePathForClassifierResource(v14, v11, @"espresso-descriptor", @"bin", a4);
      if (v15)
      {
        v23 = _modelBundlePathForClassifierResource(v14, v11, @"espresso-classifier", @"bin", a4);
        if (v23)
        {
          v16 = _modelBundlePathForClassifierResource(v14, v11, @"espresso-classifier-labels", @"csv", a4);
          if (v16)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __68__VNEspressoModelClassifier_completeInitializationForSession_error___block_invoke;
            aBlock[3] = &unk_1E77B3838;
            v25 = v6;
            v26 = self;
            v31 = v13;
            v30 = v10;
            v27 = v23;
            v28 = v16;
            v29 = v15;
            v17 = _Block_copy(aBlock);
            v18 = VNExecuteBlock(v17, a4);
          }

          else
          {
            v18 = 0;
          }

          v21 = v23;
        }

        else
        {
          v18 = 0;
          v21 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      if (!a4)
      {
        v18 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v19 = MEMORY[0x1E696AEC0];
      v20 = NSStringFromClass(v10);
      v14 = [v19 stringWithFormat:@"%@ must implement +classifierResourceTypesToNamesForOriginatingRequestSpecifier: for %@", v20, v9];

      [VNError errorForUnimplementedFunctionWithLocalizedDescription:v14];
      *a4 = v18 = 0;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t __68__VNEspressoModelClassifier_completeInitializationForSession_error___block_invoke(uint64_t a1, void *a2)
{
  v55 = 1;
  if (![VNValidationUtilities getMTLGPUPriority:&v55 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:*(a1 + 32) withDefaultValue:1 error:a2])
  {
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  if ([VNComputeDeviceUtilities isCPUComputeDevice:*(*(a1 + 40) + 88)])
  {
    v43 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    v7 = 1;
    goto LABEL_8;
  }

  if (![VNComputeDeviceUtilities isGPUComputeDevice:*(*(a1 + 40) + 88)])
  {
    if (a2)
    {
      v27 = [VNError errorForUnsupportedComputeDevice:*(*(a1 + 40) + 88)];
      v18 = 0;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v8 = [*(a1 + 40) metalContext];
  v9 = objc_alloc(MEMORY[0x1E699BC20]);
  if (v8)
  {
    v10 = *(v8 + 8);
    v11 = *(v8 + 40);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v11;
  v13 = [v9 initWithDevice:v10 andWisdomParams:v12];

  v43 = v13;
  v4 = *(a1 + 80);
  v6 = v55;

  v5 = 1;
  v7 = 2;
LABEL_8:
  v14 = *(a1 + 72);
  v53 = 0;
  v54 = 0;
  v15 = [*(a1 + 48) UTF8String];
  v16 = [*(a1 + 56) UTF8String];
  v49[0] = v4;
  v50 = v6;
  v17 = v43;
  v18 = v17;
  v51 = v17;
  v52 = 0;
  if (v14)
  {
    [v14 createClassifierWithDescriptor:&v53 classifierAbsolutePath:v15 computePlatform:v5 computePath:v7 labelsFilename:v16 options:v49];
    v19 = *v44;
  }

  else
  {

    v19 = 0uLL;
  }

  v20 = *(a1 + 40) + 72;
  memset(v44, 0, sizeof(v44));
  v21 = *(v20 + 8);
  *v20 = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*&v44[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (!*(*(a1 + 40) + 72))
  {
    if (a2)
    {
      v27 = +[VNError errorForMemoryAllocationFailure];
LABEL_24:
      v28 = 0;
      *a2 = v27;
      goto LABEL_44;
    }

LABEL_26:
    v28 = 0;
    goto LABEL_44;
  }

  v22 = *(a1 + 72);
  v23 = [*(a1 + 64) UTF8String];
  v45[0] = v4;
  v46 = v6;
  v24 = v18;
  v25 = v24;
  v47 = v24;
  v48 = 0;
  if (v22)
  {
    [v22 createDescriprorProcessorWithModelPath:v23 nBatch:v5 computePlatform:v5 computePath:2 options:v45];
    v26 = *v44;
  }

  else
  {

    v26 = 0uLL;
  }

  v29 = *(a1 + 40) + 56;
  memset(v44, 0, sizeof(v44));
  v30 = *(v29 + 8);
  *v29 = v26;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*&v44[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
  }

  v31 = *(a1 + 40);
  if (*(v31 + 56))
  {
    (*(**(v31 + 72) + 32))(*(v31 + 72), v31 + 56);
    *(*(*(a1 + 40) + 72) + 112) = 2;
    *(*(*(a1 + 40) + 72) + 96) = 1;
    ImageClassifier_loadLabelsAndBooleanFlags(v44, [*(a1 + 56) UTF8String]);
    v32 = objc_autoreleasePoolPush();
    v33 = [MEMORY[0x1E695DFA8] setWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*&v44[8] - *v44) >> 4)];
    v34 = *v44;
    for (i = *&v44[8]; v34 != i; v34 += 6)
    {
      if ((*v34[3] & 1) == 0)
      {
        v36 = objc_alloc(MEMORY[0x1E696AEC0]);
        v37 = v34;
        if (*(v34 + 23) < 0)
        {
          v37 = *v34;
        }

        v38 = [v36 initWithUTF8String:v37];
        [v33 addObject:v38];
      }
    }

    v39 = [v33 copy];
    v40 = *(a1 + 40);
    v41 = *(v40 + 96);
    *(v40 + 96) = v39;

    objc_autoreleasePoolPop(v32);
    v56 = v44;
    std::vector<std::pair<std::string,std::vector<BOOL>>>::__destroy_vector::operator()[abi:ne200100](&v56);
    v28 = 1;
  }

  else if (a2)
  {
    +[VNError errorForMemoryAllocationFailure];
    *a2 = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

  v18 = v25;
LABEL_44:

  return v28;
}

- (id)boundComputeStageDevices
{
  v6[1] = *MEMORY[0x1E69E9840];
  computeDevice = self->_computeDevice;
  v5 = @"VNComputeStageMain";
  v6[0] = computeDevice;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end