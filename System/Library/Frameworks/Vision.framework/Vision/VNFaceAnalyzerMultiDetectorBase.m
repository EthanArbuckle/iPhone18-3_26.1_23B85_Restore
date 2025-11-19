@interface VNFaceAnalyzerMultiDetectorBase
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (const)modelVersionForOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)keyForDetectorWithConfigurationOptions:(id)a3;
- (BOOL)_isFaceprintJunk:(shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)a3;
- (BOOL)_saveFaceAttributes:(void *)a3 toFaceObservation:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)_saveFaceprint:(shared_ptr<vision:(id)a4 :(id)a5 mod:(id *)a6 :ImageDescriptorBufferAbstract>)a3 toFaceObservation:options:error:;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (void)_addFaceAnalysisResultsFromMap:(void *)a3 toFaceAttributeObject:(id)a4 forOriginatingRequestSpecifier:(id)a5;
@end

@implementation VNFaceAnalyzerMultiDetectorBase

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_22;
  }

  if (![v6 specifiesRequestClass:objc_opt_class()])
  {
    if ([v6 specifiesRequestClass:objc_opt_class()])
    {
      v8 = [v6 requestRevision] - 3737841666;
      if (v8 < 5 && ((0x1Bu >> v8) & 1) != 0)
      {
        goto LABEL_21;
      }
    }

    else if ([v6 specifiesRequestClass:objc_opt_class()])
    {
      v9 = [v6 requestRevision] - 3737841664;
      if (v9 < 7 && ((0x6Du >> v9) & 1) != 0)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_18;
  }

  v7 = [v6 requestRevision];
  if (v7 <= 6)
  {
    if (v7 == 5 || v7 == 6)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v7 != 7 && v7 != 100 && v7 != 101)
  {
LABEL_18:
    if (a4)
    {
      [VNError errorForUnsupportedRequestSpecifier:v6];
      *a4 = v10 = 0;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_21:
  v10 = objc_opt_class();
LABEL_22:

  return v10;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  if (+[VNFaceAnalyzerMultiDetectorBase espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceAnalyzerMultiDetectorBase espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::onceToken, &__block_literal_global_287);
  }

  v4 = +[VNFaceAnalyzerMultiDetectorBase espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::inputImageDimensionsBlobName;

  return v4;
}

uint64_t __100__VNFaceAnalyzerMultiDetectorBase_espressoModelInputImageDimensionsBlobNameForConfigurationOptions___block_invoke()
{
  +[VNFaceAnalyzerMultiDetectorBase espressoModelInputImageDimensionsBlobNameForConfigurationOptions:]::inputImageDimensionsBlobName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"data"];

  return MEMORY[0x1EEE66BB8]();
}

+ (const)modelVersionForOptions:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must override %@", v7, v8];

  v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"Method not implemented" reason:v9 userInfo:0];
  objc_exception_throw(v10);
}

+ (id)keyForDetectorWithConfigurationOptions:(id)a3
{
  v4 = a3;
  v5 = [a1 modelVersionForOptions:v4];
  v6 = *(v5 + 8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = *v5;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v16 = *(v5 + 8);
  if (v6)
  {
    memmove(&__dst, v7, v6);
  }

  *(&__dst + v6) = 0;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___VNFaceAnalyzerMultiDetectorBase;
  v9 = objc_msgSendSuper2(&v14, sel_keyForDetectorWithConfigurationOptions_, v4);
  v10 = v9;
  p_dst = &__dst;
  if (v16 < 0)
  {
    p_dst = __dst;
  }

  v12 = [v8 initWithFormat:@"%@:%s", v9, p_dst];

  if (v16 < 0)
  {
    operator delete(__dst);
  }

  return v12;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VNFaceAnalyzerMultiDetectorBase_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNFaceAnalyzerMultiDetectorBase configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceAnalyzerMultiDetectorBase configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceAnalyzerMultiDetectorBase configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __72__VNFaceAnalyzerMultiDetectorBase_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceAnalyzerMultiDetectorBase;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  [v2 addObject:@"VNDetectorOption_RequestDetectionLevel"];
  v3 = [v2 copy];
  v4 = +[VNFaceAnalyzerMultiDetectorBase configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceAnalyzerMultiDetectorBase configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (BOOL)_saveFaceAttributes:(void *)a3 toFaceObservation:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [VNValidationUtilities originatingRequestSpecifierForKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceAnalyzerOriginatingRequestSpecifier" inOptions:a5 error:a6];
  if (v11)
  {
    v12 = -[VNFaceAttributes initWithRequestRevision:]([VNFaceAttributes alloc], "initWithRequestRevision:", [v11 requestRevision]);
    [(VNFaceAnalyzerMultiDetectorBase *)self _addFaceAnalysisResultsFromMap:a3 toFaceAttributeObject:v12 forOriginatingRequestSpecifier:v11];
    [v10 setFaceAttributes:v12];
  }

  return v11 != 0;
}

- (BOOL)_isFaceprintJunk:(shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"%@ must override %@", v6, v7];

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"Method not implemented" reason:v8 userInfo:0];
  objc_exception_throw(v9);
}

- (BOOL)_saveFaceprint:(shared_ptr<vision:(id)a4 :(id)a5 mod:(id *)a6 :ImageDescriptorBufferAbstract>)a3 toFaceObservation:options:error:
{
  var0 = a3.var0;
  v10 = a3.var1;
  v11 = a4;
  v37 = 0;
  if ([VNValidationUtilities getBOOLValue:&v37 forKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceprintForceFaceprintCreation" inOptions:v11 withDefaultValue:0 error:a5])
  {
    v12 = [VNValidationUtilities originatingRequestSpecifierForKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceprintOriginatingRequestSpecifier" inOptions:v11 specifyingRequestClass:objc_opt_class() error:a5];
    if (!v12)
    {
      v21 = 0;
      goto LABEL_16;
    }

    if ((v37 & 1) == 0)
    {
      v13 = var0[1];
      v35 = *var0;
      v36 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = [(VNFaceAnalyzerMultiDetectorBase *)self _isFaceprintJunk:&v35];
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        if (v20)
        {
LABEL_8:
          VNValidatedLog(2, @"Poor quality face print candidate detected.  Not generating faceprint", v14, v15, v16, v17, v18, v19, v32);
          [(__shared_weak_count *)v10 setFaceprint:0];
          v21 = 1;
LABEL_16:

          goto LABEL_17;
        }
      }

      else if (v20)
      {
        goto LABEL_8;
      }
    }

    v22 = (*(**var0 + 104))();
    std::vector<unsigned char>::vector[abi:ne200100](__p, v22);
    v23 = __p[0];
    DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(*var0, 0);
    memcpy(v23, DataForKthDescriptor, v22);
    v33 = -1082130432;
    v21 = [VNValidationUtilities getFloatValue:&v33 forKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionFaceprintConfidence" inOptions:v11 error:a5];
    if (v21)
    {
      v25 = [VNFaceprint alloc];
      v26 = __p[0];
      v27 = v33;
      v28 = [v12 requestRevision];
      LODWORD(v29) = v27;
      v30 = [(VNFaceprint *)v25 initWithData:v26 elementCount:v22 >> 2 elementType:1 lengthInBytes:v22 confidence:v28 requestRevision:v29];
      [(__shared_weak_count *)v10 setFaceprint:v30];
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (void)_addFaceAnalysisResultsFromMap:(void *)a3 toFaceAttributeObject:(id)a4 forOriginatingRequestSpecifier:(id)a5
{
  v383[5] = *MEMORY[0x1E69E9840];
  v346 = a4;
  v7 = a5;
  v8 = [v7 requestRevision];
  if (v8 == 3737841664)
  {
    v9 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:3737841664];
    [v346 setAgeCategory:v9];

    v10 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:3737841664];
    [(VNFaceAttributes *)v346 setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:v10];

    v11 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:3737841664];
    [(VNFaceAttributes *)v346 setFacemaskCategory:v11];

    v12 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_1_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v13) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v14 = [(VNClassificationObservation *)v12 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown0" confidence:v13];
    v383[0] = v14;
    v15 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_1_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v16) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v17 = [(VNClassificationObservation *)v15 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown1" confidence:v16];
    v383[1] = v17;
    v18 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_1_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v19) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v20 = [(VNClassificationObservation *)v18 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown2" confidence:v19];
    v383[2] = v20;
    v21 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_1_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v22) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v23 = [(VNClassificationObservation *)v21 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown3" confidence:v22];
    v383[3] = v23;
    v24 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_1_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v25) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v26 = [(VNClassificationObservation *)v24 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown4" confidence:v25];
    v383[4] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v383 count:5];
    v28 = [v346 ageCategory];
    [v28 setAllLabelsWithConfidences:v27];

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v29 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_16_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v30) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v342 = [(VNClassificationObservation *)v29 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown0" confidence:v30];
    v382[0] = v342;
    v31 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_16_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v32) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v33 = [(VNClassificationObservation *)v31 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown1" confidence:v32];
    v382[1] = v33;
    v34 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_16_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v35) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v36 = [(VNClassificationObservation *)v34 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown2" confidence:v35];
    v382[2] = v36;
    v37 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_16_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v38) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v39 = [(VNClassificationObservation *)v37 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown3" confidence:v38];
    v382[3] = v39;
    v40 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_16_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v41) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v42 = [(VNClassificationObservation *)v40 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown4" confidence:v41];
    v382[4] = v42;
    v43 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v349, [@"UNKNOWN_16_unknown5" UTF8String]);
    v347[0] = v349;
    LODWORD(v44) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v349) + 56);
    v45 = [(VNClassificationObservation *)v43 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown5" confidence:v44];
    v382[5] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v382 count:6];
    v47 = [v346 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    [v47 setAllLabelsWithConfidences:v46];

    if (v350 < 0)
    {
      operator delete(v349[0]);
    }

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v48 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_17_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v49) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v50 = [(VNClassificationObservation *)v48 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_17_unknown0" confidence:v49];
    v381[0] = v50;
    v51 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_17_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v52) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v53 = [(VNClassificationObservation *)v51 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_17_unknown1" confidence:v52];
    v381[1] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v381 count:2];
    v55 = [v346 facemaskCategory];
    [v55 setAllLabelsWithConfidences:v54];

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

LABEL_187:
    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    goto LABEL_189;
  }

  v56 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [v346 setAgeCategory:v56];

  v57 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setVN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE:v57];

  v58 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setEyesCategory:v58];

  v59 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setSmilingCategory:v59];

  v60 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setFaceHairCategory:v60];

  v61 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setHairColorCategory:v61];

  v62 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setBaldCategory:v62];

  v63 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setGlassesCategory:v63];

  v64 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setMakeupEyesCategory:v64];

  v65 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
  [(VNFaceAttributes *)v346 setMakeupLipsCategory:v65];

  if ((v8 - 3737841666) <= 4 && v8 != 3737841668)
  {
    v66 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB:v66];

    v67 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1:v67];

    v68 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVN7CbCeAogPS2iHE6VQwu6H96xanljtMqk:v68];

    v69 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP:v69];

    v70 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVN2riiZbQrloRhCzYW56f0rk4N3ROe151S:v70];

    v71 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk:v71];

    v72 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setVN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq:v72];

    v73 = [[VNFaceAttributeCategory alloc] initWithRequestRevision:v8];
    [(VNFaceAttributes *)v346 setFacemaskCategory:v73];
  }

  v74 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_1_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v75) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v76 = [(VNClassificationObservation *)v74 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown0" confidence:v75];
  v380[0] = v76;
  v77 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_1_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v78) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v79 = [(VNClassificationObservation *)v77 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown1" confidence:v78];
  v380[1] = v79;
  v80 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_1_unknown2" UTF8String]);
  v353[0] = v355;
  LODWORD(v81) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
  v82 = [(VNClassificationObservation *)v80 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown2" confidence:v81];
  v380[2] = v82;
  v83 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_1_unknown3" UTF8String]);
  __p[0] = v353;
  LODWORD(v84) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
  v85 = [(VNClassificationObservation *)v83 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown3" confidence:v84];
  v380[3] = v85;
  v86 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_1_unknown4" UTF8String]);
  v349[0] = __p;
  LODWORD(v87) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
  v88 = [(VNClassificationObservation *)v86 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_1_unknown4" confidence:v87];
  v380[4] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v380 count:5];
  v90 = [v346 ageCategory];
  [v90 setAllLabelsWithConfidences:v89];

  if (v352 < 0)
  {
    operator delete(__p[0]);
  }

  if (v354 < 0)
  {
    operator delete(v353[0]);
  }

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v91 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_6_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v92) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v93 = [(VNClassificationObservation *)v91 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_6_unknown0" confidence:v92];
  v379[0] = v93;
  v94 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_6_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v95) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v96 = [(VNClassificationObservation *)v94 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_6_unknown1" confidence:v95];
  v379[1] = v96;
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v379 count:2];
  v98 = [v346 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
  [v98 setAllLabelsWithConfidences:v97];

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v99 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_3_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v100) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v101 = [(VNClassificationObservation *)v99 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_3_unknown0" confidence:v100];
  v378[0] = v101;
  v102 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_3_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v103) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v104 = [(VNClassificationObservation *)v102 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_3_unknown1" confidence:v103];
  v378[1] = v104;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v378 count:2];
  v106 = [v346 eyesCategory];
  [v106 setAllLabelsWithConfidences:v105];

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v107 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_7_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v108) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v109 = [(VNClassificationObservation *)v107 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_7_unknown0" confidence:v108];
  v377[0] = v109;
  v110 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_7_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v111) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v112 = [(VNClassificationObservation *)v110 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_7_unknown1" confidence:v111];
  v377[1] = v112;
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v377 count:2];
  v114 = [v346 smilingCategory];
  [v114 setAllLabelsWithConfidences:v113];

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v115 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_4_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v116) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v117 = [(VNClassificationObservation *)v115 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_4_unknown0" confidence:v116];
  v376[0] = v117;
  v118 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_4_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v119) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v120 = [(VNClassificationObservation *)v118 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_4_unknown1" confidence:v119];
  v376[1] = v120;
  v121 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_4_unknown2" UTF8String]);
  v353[0] = v355;
  LODWORD(v122) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
  v123 = [(VNClassificationObservation *)v121 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_4_unknown2" confidence:v122];
  v376[2] = v123;
  v124 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_4_unknown3" UTF8String]);
  __p[0] = v353;
  LODWORD(v125) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
  v126 = [(VNClassificationObservation *)v124 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_4_unknown3" confidence:v125];
  v376[3] = v126;
  v127 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_4_unknown4" UTF8String]);
  v349[0] = __p;
  LODWORD(v128) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
  v129 = [(VNClassificationObservation *)v127 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_4_unknown4" confidence:v128];
  v376[4] = v129;
  v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v376 count:5];
  v131 = [v346 faceHairCategory];
  [v131 setAllLabelsWithConfidences:v130];

  if (v352 < 0)
  {
    operator delete(__p[0]);
  }

  if (v354 < 0)
  {
    operator delete(v353[0]);
  }

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v132 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_5_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v133) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v343 = [(VNClassificationObservation *)v132 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_5_unknown0" confidence:v133];
  v375[0] = v343;
  v134 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_5_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v135) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v136 = [(VNClassificationObservation *)v134 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_5_unknown1" confidence:v135];
  v375[1] = v136;
  v137 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_5_unknown2" UTF8String]);
  v353[0] = v355;
  LODWORD(v138) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
  v139 = [(VNClassificationObservation *)v137 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_5_unknown2" confidence:v138];
  v375[2] = v139;
  v140 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_5_unknown3" UTF8String]);
  __p[0] = v353;
  LODWORD(v141) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
  v142 = [(VNClassificationObservation *)v140 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_5_unknown3" confidence:v141];
  v375[3] = v142;
  v143 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_5_unknown4" UTF8String]);
  v349[0] = __p;
  LODWORD(v144) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
  v145 = [(VNClassificationObservation *)v143 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_5_unknown4" confidence:v144];
  v375[4] = v145;
  v146 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v349, [@"UNKNOWN_5_unknown5" UTF8String]);
  v347[0] = v349;
  LODWORD(v147) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v349) + 56);
  v148 = [(VNClassificationObservation *)v146 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_5_unknown5" confidence:v147];
  v375[5] = v148;
  v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v375 count:6];
  v150 = [v346 hairColorCategory];
  [v150 setAllLabelsWithConfidences:v149];

  if (v350 < 0)
  {
    operator delete(v349[0]);
  }

  if (v352 < 0)
  {
    operator delete(__p[0]);
  }

  if (v354 < 0)
  {
    operator delete(v353[0]);
  }

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v151 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_2_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v152) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v153 = [(VNClassificationObservation *)v151 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_2_unknown0" confidence:v152];
  v374[0] = v153;
  v154 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_2_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v155) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v156 = [(VNClassificationObservation *)v154 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_2_unknown1" confidence:v155];
  v374[1] = v156;
  v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v374 count:2];
  v158 = [v346 baldCategory];
  [v158 setAllLabelsWithConfidences:v157];

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v159 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_0_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v160) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v161 = [(VNClassificationObservation *)v159 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_0_unknown0" confidence:v160];
  v373[0] = v161;
  v162 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_0_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v163) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v164 = [(VNClassificationObservation *)v162 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_0_unknown1" confidence:v163];
  v373[1] = v164;
  v165 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_0_unknown2" UTF8String]);
  v353[0] = v355;
  LODWORD(v166) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
  v167 = [(VNClassificationObservation *)v165 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_0_unknown2" confidence:v166];
  v373[2] = v167;
  v168 = [MEMORY[0x1E695DEC8] arrayWithObjects:v373 count:3];
  v169 = [v346 glassesCategory];
  [v169 setAllLabelsWithConfidences:v168];

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  v170 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_8_unknown0" UTF8String]);
  v357[0] = v359;
  LODWORD(v171) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
  v172 = [(VNClassificationObservation *)v170 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_8_unknown0" confidence:v171];
  v372[0] = v172;
  v173 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_8_unknown1" UTF8String]);
  v355[0] = v357;
  LODWORD(v174) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
  v175 = [(VNClassificationObservation *)v173 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_8_unknown1" confidence:v174];
  v372[1] = v175;
  v176 = [VNClassificationObservation alloc];
  std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_8_unknown2" UTF8String]);
  v353[0] = v355;
  LODWORD(v177) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
  v178 = [(VNClassificationObservation *)v176 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_8_unknown2" confidence:v177];
  v372[2] = v178;
  v179 = [MEMORY[0x1E695DEC8] arrayWithObjects:v372 count:3];
  v180 = [v346 makeupEyesCategory];
  [v180 setAllLabelsWithConfidences:v179];

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  if ((v8 - 3737841669) > 1)
  {
    v189 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_9_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v190) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v183 = [(VNClassificationObservation *)v189 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_9_unknown0" confidence:v190];
    v370[0] = v183;
    v191 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_9_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v192) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v193 = [(VNClassificationObservation *)v191 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_9_unknown1" confidence:v192];
    v370[1] = v193;
    v194 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_9_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v195) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v196 = [(VNClassificationObservation *)v194 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_9_unknown2" confidence:v195];
    v370[2] = v196;
    v197 = [MEMORY[0x1E695DEC8] arrayWithObjects:v370 count:3];
    v198 = [v346 makeupLipsCategory];
    [v198 setAllLabelsWithConfidences:v197];

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }
  }

  else
  {
    v181 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_9_unknown1" UTF8String]);
    v357[0] = v359;
    LODWORD(v182) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v183 = [(VNClassificationObservation *)v181 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_9_unknown1" confidence:v182];
    v371[0] = v183;
    v184 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_9_unknown2" UTF8String]);
    v355[0] = v357;
    LODWORD(v185) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v186 = [(VNClassificationObservation *)v184 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_9_unknown2" confidence:v185];
    v371[1] = v186;
    v187 = [MEMORY[0x1E695DEC8] arrayWithObjects:v371 count:2];
    v188 = [v346 makeupLipsCategory];
    [v188 setAllLabelsWithConfidences:v187];

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }
  }

  if (v360 < 0)
  {
    operator delete(v359[0]);
  }

  if ((v8 - 3737841666) <= 4 && v8 != 3737841668)
  {
    v199 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_10_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v200) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v201 = [(VNClassificationObservation *)v199 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_10_unknown0" confidence:v200];
    v369[0] = v201;
    v202 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_10_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v203) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v204 = [(VNClassificationObservation *)v202 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_10_unknown1" confidence:v203];
    v369[1] = v204;
    v205 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_10_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v206) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v207 = [(VNClassificationObservation *)v205 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_10_unknown2" confidence:v206];
    v369[2] = v207;
    v208 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_10_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v209) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v210 = [(VNClassificationObservation *)v208 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_10_unknown3" confidence:v209];
    v369[3] = v210;
    v211 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_10_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v212) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v213 = [(VNClassificationObservation *)v211 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_10_unknown4" confidence:v212];
    v369[4] = v213;
    v214 = [MEMORY[0x1E695DEC8] arrayWithObjects:v369 count:5];
    v215 = [v346 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    [v215 setAllLabelsWithConfidences:v214];

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v216 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_11_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v217) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v218 = [(VNClassificationObservation *)v216 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_11_unknown0" confidence:v217];
    v368[0] = v218;
    v219 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_11_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v220) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v221 = [(VNClassificationObservation *)v219 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_11_unknown1" confidence:v220];
    v368[1] = v221;
    v222 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_11_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v223) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v224 = [(VNClassificationObservation *)v222 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_11_unknown2" confidence:v223];
    v368[2] = v224;
    v225 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_11_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v226) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v227 = [(VNClassificationObservation *)v225 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_11_unknown3" confidence:v226];
    v368[3] = v227;
    v228 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_11_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v229) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v230 = [(VNClassificationObservation *)v228 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_11_unknown4" confidence:v229];
    v368[4] = v230;
    v231 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v349, [@"UNKNOWN_11_unknown5" UTF8String]);
    v347[0] = v349;
    LODWORD(v232) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v349) + 56);
    v233 = [(VNClassificationObservation *)v231 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_11_unknown5" confidence:v232];
    v368[5] = v233;
    v234 = [MEMORY[0x1E695DEC8] arrayWithObjects:v368 count:6];
    v235 = [v346 VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    [v235 setAllLabelsWithConfidences:v234];

    if (v350 < 0)
    {
      operator delete(v349[0]);
    }

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v236 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_13_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v237) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v344 = [(VNClassificationObservation *)v236 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown0" confidence:v237];
    v367[0] = v344;
    v238 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_13_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v239) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v240 = [(VNClassificationObservation *)v238 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown1" confidence:v239];
    v367[1] = v240;
    v241 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_13_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v242) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v243 = [(VNClassificationObservation *)v241 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown2" confidence:v242];
    v367[2] = v243;
    v244 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_13_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v245) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v246 = [(VNClassificationObservation *)v244 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown3" confidence:v245];
    v367[3] = v246;
    v247 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_13_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v248) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v249 = [(VNClassificationObservation *)v247 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown4" confidence:v248];
    v367[4] = v249;
    v250 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v349, [@"UNKNOWN_13_unknown5" UTF8String]);
    v347[0] = v349;
    LODWORD(v251) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v349) + 56);
    v252 = [(VNClassificationObservation *)v250 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown5" confidence:v251];
    v367[5] = v252;
    v253 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v347, [@"UNKNOWN_13_unknown6" UTF8String]);
    v361 = v347;
    LODWORD(v254) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v347) + 56);
    v255 = [(VNClassificationObservation *)v253 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_13_unknown6" confidence:v254];
    v367[6] = v255;
    v256 = [MEMORY[0x1E695DEC8] arrayWithObjects:v367 count:7];
    v257 = [v346 VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    [v257 setAllLabelsWithConfidences:v256];

    if (v348 < 0)
    {
      operator delete(v347[0]);
    }

    if (v350 < 0)
    {
      operator delete(v349[0]);
    }

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v258 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_14_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v259) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v260 = [(VNClassificationObservation *)v258 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_14_unknown0" confidence:v259];
    v366[0] = v260;
    v261 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_14_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v262) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v263 = [(VNClassificationObservation *)v261 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_14_unknown1" confidence:v262];
    v366[1] = v263;
    v264 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_14_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v265) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v266 = [(VNClassificationObservation *)v264 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_14_unknown2" confidence:v265];
    v366[2] = v266;
    v267 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_14_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v268) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v269 = [(VNClassificationObservation *)v267 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_14_unknown3" confidence:v268];
    v366[3] = v269;
    v270 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_14_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v271) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v272 = [(VNClassificationObservation *)v270 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_14_unknown4" confidence:v271];
    v366[4] = v272;
    v273 = [MEMORY[0x1E695DEC8] arrayWithObjects:v366 count:5];
    v274 = [v346 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    [v274 setAllLabelsWithConfidences:v273];

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v275 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_12_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v276) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v345 = [(VNClassificationObservation *)v275 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown0" confidence:v276];
    v365[0] = v345;
    v277 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_12_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v278) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v279 = [(VNClassificationObservation *)v277 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown1" confidence:v278];
    v365[1] = v279;
    v280 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_12_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v281) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v282 = [(VNClassificationObservation *)v280 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown2" confidence:v281];
    v365[2] = v282;
    v283 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_12_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v284) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v285 = [(VNClassificationObservation *)v283 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown3" confidence:v284];
    v365[3] = v285;
    v286 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_12_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v287) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v288 = [(VNClassificationObservation *)v286 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown4" confidence:v287];
    v365[4] = v288;
    v289 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v349, [@"UNKNOWN_12_unknown5" UTF8String]);
    v347[0] = v349;
    LODWORD(v290) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v349) + 56);
    v291 = [(VNClassificationObservation *)v289 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown5" confidence:v290];
    v365[5] = v291;
    v292 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v347, [@"UNKNOWN_12_unknown6" UTF8String]);
    v361 = v347;
    LODWORD(v293) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v347) + 56);
    v294 = [(VNClassificationObservation *)v292 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_12_unknown6" confidence:v293];
    v365[6] = v294;
    v295 = [MEMORY[0x1E695DEC8] arrayWithObjects:v365 count:7];
    v296 = [v346 VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    [v296 setAllLabelsWithConfidences:v295];

    if (v348 < 0)
    {
      operator delete(v347[0]);
    }

    if (v350 < 0)
    {
      operator delete(v349[0]);
    }

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v297 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_15_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v298) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v299 = [(VNClassificationObservation *)v297 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_15_unknown0" confidence:v298];
    v364[0] = v299;
    v300 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_15_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v301) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v302 = [(VNClassificationObservation *)v300 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_15_unknown1" confidence:v301];
    v364[1] = v302;
    v303 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_15_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v304) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v305 = [(VNClassificationObservation *)v303 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_15_unknown2" confidence:v304];
    v364[2] = v305;
    v306 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_15_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v307) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v308 = [(VNClassificationObservation *)v306 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_15_unknown3" confidence:v307];
    v364[3] = v308;
    v309 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_15_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v310) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v311 = [(VNClassificationObservation *)v309 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_15_unknown4" confidence:v310];
    v364[4] = v311;
    v312 = [MEMORY[0x1E695DEC8] arrayWithObjects:v364 count:5];
    v313 = [v346 VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    [v313 setAllLabelsWithConfidences:v312];

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v314 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_16_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v315) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v316 = [(VNClassificationObservation *)v314 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown0" confidence:v315];
    v363[0] = v316;
    v317 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_16_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v318) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v319 = [(VNClassificationObservation *)v317 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown1" confidence:v318];
    v363[1] = v319;
    v320 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v355, [@"UNKNOWN_16_unknown2" UTF8String]);
    v353[0] = v355;
    LODWORD(v321) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v355) + 56);
    v322 = [(VNClassificationObservation *)v320 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown2" confidence:v321];
    v363[2] = v322;
    v323 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v353, [@"UNKNOWN_16_unknown3" UTF8String]);
    __p[0] = v353;
    LODWORD(v324) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v353) + 56);
    v325 = [(VNClassificationObservation *)v323 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown3" confidence:v324];
    v363[3] = v325;
    v326 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(__p, [@"UNKNOWN_16_unknown4" UTF8String]);
    v349[0] = __p;
    LODWORD(v327) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p) + 56);
    v328 = [(VNClassificationObservation *)v326 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown4" confidence:v327];
    v363[4] = v328;
    v329 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v349, [@"UNKNOWN_16_unknown5" UTF8String]);
    v347[0] = v349;
    LODWORD(v330) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v349) + 56);
    v331 = [(VNClassificationObservation *)v329 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_16_unknown5" confidence:v330];
    v363[5] = v331;
    v332 = [MEMORY[0x1E695DEC8] arrayWithObjects:v363 count:6];
    v333 = [v346 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    [v333 setAllLabelsWithConfidences:v332];

    if (v350 < 0)
    {
      operator delete(v349[0]);
    }

    if (v352 < 0)
    {
      operator delete(__p[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    if (v356 < 0)
    {
      operator delete(v355[0]);
    }

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    v334 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v359, [@"UNKNOWN_17_unknown0" UTF8String]);
    v357[0] = v359;
    LODWORD(v335) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v359) + 56);
    v336 = [(VNClassificationObservation *)v334 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_17_unknown0" confidence:v335];
    v362[0] = v336;
    v337 = [VNClassificationObservation alloc];
    std::string::basic_string[abi:ne200100]<0>(v357, [@"UNKNOWN_17_unknown1" UTF8String]);
    v355[0] = v357;
    LODWORD(v338) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v357) + 56);
    v339 = [(VNClassificationObservation *)v337 initWithOriginatingRequestSpecifier:v7 identifier:@"UNKNOWN_17_unknown1" confidence:v338];
    v362[1] = v339;
    v340 = [MEMORY[0x1E695DEC8] arrayWithObjects:v362 count:2];
    v341 = [v346 facemaskCategory];
    [v341 setAllLabelsWithConfidences:v340];

    if (v358 < 0)
    {
      operator delete(v357[0]);
    }

    goto LABEL_187;
  }

LABEL_189:
}

- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v157 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a7;
  v15 = a9;
  v143 = 0;
  if (![VNValidationUtilities getBOOLValue:&v143 forKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceprint" inOptions:v13 withDefaultValue:0 error:a8]|| (v142 = 0, ![VNValidationUtilities getBOOLValue:&v142 forKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceAnalyzer" inOptions:v13 withDefaultValue:0 error:a8]))
  {
    v18 = 0;
    goto LABEL_186;
  }

  [VNError VNAssert:v143 || v142 log:@"Unexpected options parameter passed to face analyzer multi-detector"];
  v139 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if (v143)
  {
    v16 = VNCloneFaceObservationFromOptions(v13, a8);
    if (!v16)
    {
      v18 = 0;
      goto LABEL_185;
    }

    [v139 addObject:v16];
    v17 = [v16 faceprint];
    v143 = v17 == 0;
  }

  else
  {
    v16 = 0;
  }

  v137 = v16;
  if (v142)
  {
    v19 = VNCloneFaceObservationFromOptions(v13, a8);
    if (!v19)
    {
      v18 = 0;
      goto LABEL_184;
    }

    v138 = v19;
    [v139 addObject:?];
    v20 = [v138 faceAttributes];
    v142 = v20 == 0;
  }

  else
  {
    v138 = 0;
  }

  v141 = 0;
  if (![VNValidationUtilities getBOOLValue:&v141 forKey:@"VNDetectorInternalProcessOption_RecordImageTooSmallWarning" inOptions:v13 withDefaultValue:0 error:a8])
  {
    goto LABEL_182;
  }

  if (v141 == 1)
  {
    matrix.data = 0;
    if (![VNValidationUtilities getNSUIntegerValue:&matrix forKey:@"VNDetectorInternalProcessOption_DesiredMinimumFacePrintingLongDimension" inOptions:v13 withDefaultValue:0 error:a8])
    {
      goto LABEL_182;
    }

    data = matrix.data;
    v22 = v14;
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:data];
    [v22 recordWarning:@"VNRequestWarningImageMinimumLongDimension" value:v23];

    v24 = v22;
    v25 = v137;
    v26 = v25;
    if (v25)
    {
      dest.data = v25;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&dest count:1];
      [v24 recordWarning:@"VNRequestWarningImageTooSmallForFaceObservations" value:v27];
    }
  }

  v28 = [(VNFaceAnalyzerMultiDetectorBase *)self prepare_vImageBufferForCVPixelBuffer:a4 error:a8];
  if (!v28)
  {
    goto LABEL_182;
  }

  v136 = v13;
  ptr = self->_mMultiHeadedFaceClassifier.__ptr_;
  if (*(ptr + 6620) == 1)
  {
    operator new();
  }

  *(ptr + 6620) = 0;
  v30 = vision::mod::ImageDescriptorAugmenterAbstract::augment(*ptr, v28, 4);
  if ((v30 & 0x80) == 0)
  {
    goto LABEL_150;
  }

  vision::mod::ImageDescriptorAugmenterAbstract::getAugmentedImages(&dest, *ptr);
  v129 = v14;
  v131 = v15;
  v31 = dest.data;
  v148[0] = 0;
  v148[1] = 0;
  v147 = v148;
  height = dest.height;
  v127 = (dest.height - dest.data) >> 5;
  v133 = dest.data;
  if (v127 < 1)
  {
LABEL_88:
    v135 = a8;
    if (*(ptr + 66) == 1)
    {
      v82 = *(ptr + 774);
      v83 = *(ptr + 773);
      if (v82 != v83)
      {
        v84 = 0;
        do
        {
          v85 = *(ptr + 828) + 24 * v84;
          v86 = *(v85 + 23);
          if (v86 < 0)
          {
            v85 = *v85;
            v86 = *(*(ptr + 828) + 24 * v84 + 8);
          }

          if (v86 == 9)
          {
            v87 = *v85;
            v88 = *(v85 + 8);
            v90 = v87 == 0x5F4E574F4E4B4E55 && v88 == 57;
          }

          else
          {
            v90 = 0;
          }

          v91 = *(v83 + 168 * v84 + 24) * *(v83 + 168 * v84 + 16) * *(v83 + 168 * v84 + 32) * *(v83 + 168 * v84 + 40);
          if (v91 >= 1)
          {
            v92 = 0;
            v93 = v91 & 0x7FFFFFFF;
            if ((v91 == 2) >= v90)
            {
              v94 = v90;
            }

            else
            {
              v94 = v91 == 2;
            }

            do
            {
              v95 = *(*(*(ptr + 773) + 168 * v84) + v92);
              v96 = *(ptr + 828) + 24 * v84;
              if (*(v96 + 23) >= 0)
              {
                v97 = *(v96 + 23);
              }

              else
              {
                v97 = *(v96 + 8);
              }

              std::string::basic_string[abi:ne200100](&matrix, v97 + 8);
              if ((matrix.width & 0x8000000000000000) == 0)
              {
                p_matrix = &matrix;
              }

              else
              {
                p_matrix = matrix.data;
              }

              if (v97)
              {
                if (*(v96 + 23) >= 0)
                {
                  v99 = v96;
                }

                else
                {
                  v99 = *v96;
                }

                memmove(p_matrix, v99, v97);
              }

              strcpy(p_matrix + v97, "_unknown");
              std::to_string(&src, v94);
              if ((src.width & 0x8000000000000000) == 0)
              {
                p_src = &src;
              }

              else
              {
                p_src = src.data;
              }

              if ((src.width & 0x8000000000000000) == 0)
              {
                width_high = HIBYTE(src.width);
              }

              else
              {
                width_high = src.height;
              }

              v102 = std::string::append(&matrix, p_src, width_high);
              v103 = *&v102->__r_.__value_.__l.__data_;
              dest.width = v102->__r_.__value_.__r.__words[2];
              *&dest.data = v103;
              v102->__r_.__value_.__l.__size_ = 0;
              v102->__r_.__value_.__r.__words[2] = 0;
              v102->__r_.__value_.__r.__words[0] = 0;
              v145.__r_.__value_.__r.__words[0] = &dest;
              *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ptr + 6672, &dest) + 56) = v95;
              if (SHIBYTE(dest.width) < 0)
              {
                operator delete(dest.data);
              }

              if (SHIBYTE(src.width) < 0)
              {
                operator delete(src.data);
              }

              if (SHIBYTE(matrix.width) < 0)
              {
                operator delete(matrix.data);
              }

              ++v94;
              v92 += 4;
              --v93;
            }

            while (v93);
            v82 = *(ptr + 774);
            v83 = *(ptr + 773);
            a8 = v135;
          }

          ++v84;
        }

        while (0xCF3CF3CF3CF3CF3DLL * ((v82 - v83) >> 3) > v84);
      }
    }

    v14 = v129;
    v15 = v131;
    v31 = v133;
    if (*(ptr + 64) != 1 || (*(*(ptr + 838) + 96) = *(ptr + 19), v30 = (*(**ptr + 24))(*ptr, 0), (v30 & 0x80) != 0))
    {
      if (height != v133 && (*(ptr + 65) & 1) != 0)
      {
        *(ptr + 1674) = *(ptr + 1674) / v127;
      }

      if (*(ptr + 67) != 1 || (v104 = *(ptr + 831), v105 = *(ptr + 832), v104 == v105))
      {
LABEL_145:
        *(ptr + 6620) = 1;
        v30 = 9088;
      }

      else
      {
        while (1)
        {
          if (*(v104 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&dest, *v104, *(v104 + 1));
          }

          else
          {
            v106 = *v104;
            dest.width = *(v104 + 2);
            *&dest.data = v106;
          }

          v107 = *(ptr + 21);
          matrix.data = &dest;
          *(std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(ptr + 6720, &dest)[7] + 96) = v107;
          v108 = *ptr;
          matrix.data = &dest;
          v109 = std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v147, &dest)[7];
          matrix.data = &dest;
          v110 = std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(ptr + 6720, &dest);
          v30 = (*(*v108 + 24))(v108, v109, v110[7]);
          if (SHIBYTE(dest.width) < 0)
          {
            operator delete(dest.data);
          }

          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v104 = (v104 + 24);
          if (v104 == v105)
          {
            goto LABEL_145;
          }
        }
      }

      v15 = v131;
      a8 = v135;
      v31 = v133;
    }

    goto LABEL_148;
  }

  v32 = 0;
  v126 = 4221;
  __asm { FMOV            V0.4S, #1.0 }

  v130 = _Q0;
  v134 = ((dest.height - dest.data) >> 5) & 0x7FFFFFFF;
  v37 = v134;
  while (1)
  {
    --v37;
    v38 = &v31[32 * v37];
    v39 = *(v38 + 1);
    *&src.data = *v38;
    *&src.width = v39;
    memset(&v145, 0, 20);
    if (*(ptr + 20) >= 2)
    {
      if (src.height)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = src.data + 2;
        do
        {
          v45 = v44;
          for (i = src.width; i; --i)
          {
            v41 += *(v45 - 2);
            v42 += *(v45 - 1);
            v47 = *v45;
            v45 += 4;
            v43 += v47;
          }

          ++v40;
          v44 += src.rowBytes;
        }

        while (v40 != src.height);
        v48 = v41;
        v49 = v42;
        v50 = v43;
      }

      else
      {
        v50 = 0.0;
        v49 = 0.0;
        v48 = 0.0;
      }

      v56 = (src.width * src.height);
      v57 = v48 / v56;
      v58 = v49 / v56;
      HIDWORD(v145.__r_.__value_.__r.__words[1]) = *(ptr + 17);
      v59 = v50 / v56;
      if (*(ptr + 75))
      {
        *&v145.__r_.__value_.__l.__data_ = -v57;
        *(v145.__r_.__value_.__r.__words + 1) = -v58;
        v60 = -v59;
      }

      else
      {
        if (*(ptr + 74) != 1)
        {
LABEL_49:
          v145.__r_.__value_.__s.__data_[16] = *(ptr + 73);
          dest = src;
          v61 = espresso_network_bind_input_vimagebuffer_bgra8();
          goto LABEL_52;
        }

        v60 = (v57 + (v59 + v58)) / -3.0;
        *&v145.__r_.__value_.__l.__data_ = v60;
        *(v145.__r_.__value_.__r.__words + 1) = v60;
      }

      *&v145.__r_.__value_.__r.__words[1] = v60;
      goto LABEL_49;
    }

    memset(&dest, 0, sizeof(dest));
    MEMORY[0x1AC558890](&dest, src.width, src.height, 8, 0);
    if (!src.data || !src.width || !src.height || src.rowBytes < 2)
    {
      goto LABEL_165;
    }

    matrix.data = 0x4C0096001DLL;
    *pre_bias = 0;
    if (vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, &matrix, 256, pre_bias, 0, 0))
    {
      break;
    }

    if (dest.height)
    {
      v51 = 0;
      v52 = 0;
      v53 = dest.data;
      do
      {
        if (dest.width)
        {
          v54 = 0;
          do
          {
            v52 += v53[v54];
            v54 += 4;
          }

          while (dest.width > v54);
        }

        ++v51;
        v53 += dest.rowBytes;
      }

      while (v51 != dest.height);
      v55 = v52;
    }

    else
    {
      v55 = 0.0;
    }

    v62 = -v55 / (dest.width * dest.height);
    v63 = v130;
    *v63.i32 = v62;
    v64 = vzip1q_s32(v63, v63);
    *&v64.i32[2] = v62;
    *&v145.__r_.__value_.__l.__data_ = v64;
    v145.__r_.__value_.__s.__data_[16] = 0;
    matrix = dest;
    v61 = espresso_network_bind_input_vimagebuffer_planar8();
LABEL_52:
    if (v61 || espresso_plan_execute_sync())
    {
      v30 = 9086;
      goto LABEL_148;
    }

    if (*(ptr + 64) == 1)
    {
      v65 = malloc_type_malloc(4 * *(ptr + 19), 0x100004052888210uLL);
      std::shared_ptr<float>::shared_ptr[abi:ne200100]<float,void (*)(void *),0>(&v145, v65);
    }

    if (*(ptr + 65) == 1)
    {
      *(ptr + 1674) = **(ptr + 806) + *(ptr + 1674);
    }

    if (*(ptr + 67) == 1)
    {
      v132 = v37;
      matrix.height = 0;
      matrix.width = 0;
      matrix.data = &matrix.height;
      v66 = *(ptr + 831);
      if (v66 != *(ptr + 832))
      {
        if (*(v66 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&dest, *v66, *(v66 + 1));
        }

        else
        {
          v67 = *v66;
          dest.width = *(v66 + 2);
          *&dest.data = v67;
        }

        v68 = malloc_type_malloc(4 * *(ptr + 21), 0x100004052888210uLL);
        std::shared_ptr<float>::shared_ptr[abi:ne200100]<float,void (*)(void *),0>(&v145, v68);
      }

      v69 = *(ptr + 832);
      v70 = *(ptr + 831);
      if (v69 != v70)
      {
        v71 = 0;
        LODWORD(v72) = *(ptr + 21);
        do
        {
          if (v72 >= 1)
          {
            v73 = 0;
            do
            {
              v74 = *(*(*(ptr + 776) + 168 * v71) + 4 * v73);
              dest.data = (*(ptr + 831) + 24 * v71);
              *(std::__tree<std::__value_type<std::string,std::shared_ptr<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&matrix, dest.data)[7] + 4 * v73++) = v74;
              v72 = *(ptr + 21);
            }

            while (v73 < v72);
            v69 = *(ptr + 832);
            v70 = *(ptr + 831);
          }

          ++v71;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v69 - v70) >> 3) > v71);
      }

      v75 = *(ptr + 831);
      v76 = *(ptr + 832);
      while (v75 != v76)
      {
        if (*(v75 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v145, *v75, *(v75 + 1));
        }

        else
        {
          v77 = *v75;
          v145.__r_.__value_.__r.__words[2] = *(v75 + 2);
          *&v145.__r_.__value_.__l.__data_ = v77;
        }

        *pre_bias = 0;
        v150 = 0;
        v151 = 0;
        dest.data = v32;
        std::vector<long long>::push_back[abi:ne200100](pre_bias, &dest);
        *&v144 = &v145;
        v78 = std::__tree<std::__value_type<std::string,std::shared_ptr<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&matrix, &v145);
        v79 = *(ptr + 21);
        vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(&dest, pre_bias, v78[7], 4 * v79, 1, 0);
        v154 = 1;
        v155 = 0;
        dest.data = &unk_1F19764A8;
        v153 = v79 & 0x3FFFFFFFFFFFFFFFLL;
        if (!v32)
        {
          DeepCopy = vision::mod::ImageDescriptorBufferAbstract::createDeepCopy(&dest);
          std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>::shared_ptr[abi:ne200100]<vision::mod::ImageDescriptorBufferAbstract,0>(&v144, DeepCopy);
        }

        *&v144 = &v145;
        v80 = std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v147, &v145);
        (*(*v80[7] + 40))(v80[7], &dest);
        dest.data = &unk_1F19764A8;
        free(v155);
        vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(&dest.data);
        if (*pre_bias)
        {
          operator delete(*pre_bias);
        }

        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
        }

        v75 = (v75 + 24);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::destroy(matrix.height);
      v31 = v133;
      v37 = v132;
    }

    if (++v32 == v134)
    {
      goto LABEL_88;
    }
  }

  v126 = 4218;
LABEL_165:
  v30 = v126;
LABEL_148:
  std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::destroy(v148[0]);
  if (v31)
  {
    operator delete(v31);
  }

LABEL_150:
  if (a8 && v30 != 128)
  {
    v111 = MEMORY[0x1E696AEC0];
    v13 = v136;
    espresso_plan_get_error_info();
    std::string::basic_string[abi:ne200100]<0>(&dest, v112);
    if ((dest.width & 0x8000000000000000) == 0)
    {
      p_dest = &dest;
    }

    else
    {
      p_dest = dest.data;
    }

    v114 = [v111 stringWithFormat:@"Could not run network. Error = %s", p_dest];
    if (SHIBYTE(dest.width) < 0)
    {
      operator delete(dest.data);
    }

    v115 = VNErrorForCVMLStatus(v30);
    *a8 = [VNError errorForInternalErrorWithLocalizedDescription:v114 underlyingError:v115];

    free(v28);
    goto LABEL_182;
  }

  free(v28);
  v13 = v136;
  if (v30 != 128)
  {
    goto LABEL_182;
  }

  if (!v143)
  {
    if (v142)
    {
      v117 = self->_mMultiHeadedFaceClassifier.__ptr_;
      if ((*(v117 + 66) & 1) == 0)
      {
        if (!a8)
        {
          goto LABEL_182;
        }

        v116 = [VNError errorForInternalErrorWithLocalizedDescription:@"Error classifying attributes"];
LABEL_173:
        v18 = 0;
        *a8 = v116;
        goto LABEL_183;
      }

      dest.height = 0;
      dest.width = 0;
      dest.data = &dest.height;
      FaceAttributesOutput = vision::mod::FaceprintAndAttributes::getFaceAttributesOutput(v117, &dest);
      if (FaceAttributesOutput != 128)
      {
        if (a8)
        {
          v120 = MEMORY[0x1E696AEC0];
          espresso_plan_get_error_info();
          std::string::basic_string[abi:ne200100]<0>(&matrix, v121);
          if ((matrix.width & 0x8000000000000000) == 0)
          {
            v122 = &matrix;
          }

          else
          {
            v122 = matrix.data;
          }

          v123 = [v120 stringWithFormat:@"Could not get attributes output. Error = %s", v122];
          if (SHIBYTE(matrix.width) < 0)
          {
            operator delete(matrix.data);
          }

          v124 = VNErrorForCVMLStatus(FaceAttributesOutput);
          *a8 = [VNError errorForInternalErrorWithLocalizedDescription:v123 underlyingError:v124];
        }

        std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(dest.height);
        goto LABEL_182;
      }

      v119 = [(VNFaceAnalyzerMultiDetectorBase *)self _saveFaceAttributes:&dest toFaceObservation:v138 options:v136 error:a8];
      std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(dest.height);
      if (!v119)
      {
        goto LABEL_182;
      }
    }

    v18 = v139;
    goto LABEL_183;
  }

  if (*(self->_mMultiHeadedFaceClassifier.__ptr_ + 64))
  {
    vision::mod::FaceprintAndAttributes::createDescriptorBuffer(&matrix);
  }

  if (a8)
  {
    v116 = [VNError errorForInternalErrorWithLocalizedDescription:@"Error calculating print"];
    goto LABEL_173;
  }

LABEL_182:
  v18 = 0;
LABEL_183:

  v16 = v137;
LABEL_184:

LABEL_185:
LABEL_186:

  return v18;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a4;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:v12 error:a8];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredFaceObservationInOptions:v12 error:a8];
    if (v14 && ([v13 orientation], (VNSetFaceOrientationInOptionsDictionary(v14, v12, a8) & 1) != 0) && (objc_msgSend(v12, "setObject:forKeyedSubscript:", MEMORY[0x1E695E118], @"VNImageBufferOption_CreateFromPixelBufferPool"), -[VNFaceAnalyzerMultiDetectorBase calculateCropRectForInputFace:imageBuffer:options:error:](self, "calculateCropRectForInputFace:imageBuffer:options:error:", v14, v13, v12, a8), x = v22.origin.x, y = v22.origin.y, width = v22.size.width, height = v22.size.height, !CGRectIsNull(v22)))
    {
      v21 = [v13 croppedBufferWithWidth:-[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self height:"networkRequiredInputImageWidth") format:-[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self cropRect:"networkRequiredInputImageHeight") options:objc_msgSend(objc_opt_class() error:{"networkRequiredInputImagePixelFormatForConfigurationOptions:", v12), v12, a8, x, y, width, height}];
      *a7 = v21;
      v19 = v21 != 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = *&a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v34 = 0;
  if (![VNValidationUtilities getBOOLValue:&v34 forKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceprint" inOptions:v17 withDefaultValue:0 error:a7]|| (v33 = 0, ![VNValidationUtilities getBOOLValue:&v33 forKey:@"VNFaceAnalyzerMultiDetectorProcessingOptionCreateFaceAnalyzer" inOptions:v17 withDefaultValue:0 error:a7]))
  {
    v24 = 0;
    goto LABEL_26;
  }

  [VNError VNAssert:v34 || v33 log:@"Unexpected options parameter passed to face analyzer multi-detector"];
  v20 = [VNValidationUtilities requiredFaceObservationInOptions:v17 error:a7];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 faceprint];
    if (v22)
    {
      v23 = [v21 faceAttributes];
      if (v23)
      {

        goto LABEL_14;
      }

      v25 = v34;
      v26 = v33;

      if (!v25 && !v26)
      {
LABEL_14:
        v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
        if (v34)
        {
          v28 = VNCloneFaceObservationFromOptions(v17, a7);
          if (!v28)
          {
            v24 = 0;
            goto LABEL_23;
          }

          [v27 addObject:v28];
          v29 = [v28 faceprint];
          v34 = v29 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (v33)
        {
          v24 = VNCloneFaceObservationFromOptions(v17, a7);
          if (!v24)
          {
LABEL_22:

LABEL_23:
            goto LABEL_25;
          }

          [v27 addObject:v24];
          v30 = [v24 faceAttributes];
          v33 = v30 == 0;
        }

        v24 = v27;
        goto LABEL_22;
      }
    }

    else if (!v34 && !v33)
    {
      goto LABEL_14;
    }

    v32.receiver = self;
    v32.super_class = VNFaceAnalyzerMultiDetectorBase;
    v24 = [(VNDetector *)&v32 internalProcessUsingQualityOfServiceClass:v15 options:v17 regionOfInterest:v18 warningRecorder:a7 error:v19 progressHandler:x, y, width, height];
    goto LABEL_25;
  }

  v24 = 0;
LABEL_25:

LABEL_26:

  return v24;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = VNFaceAnalyzerMultiDetectorBase;
  if ([(VNEspressoModelFileBasedDetector *)&v21 completeInitializationForSession:v6 error:a4])
  {
    v18 = [(VNDetector *)self configurationOptions];
    v7 = [v18 objectForKeyedSubscript:@"VNDetectorOption_RequestDetectionLevel"];
    [v7 unsignedIntegerValue];

    v8 = [objc_opt_class() modelVersionForOptions:v18];
    v9 = *(v8 + 8);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = *v8;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v20 = *(v8 + 8);
    if (v9)
    {
      memmove(&__dst, v10, v9);
    }

    *(&__dst + v9) = 0;
    v17 = self;
    v12 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    if ([v12 network])
    {
      operator new();
    }

    syslog(5, "[Error] Cannot initialize FaceprintAndAttributes object with null plan");
    p_mMultiHeadedFaceClassifier = &v17->_mMultiHeadedFaceClassifier;
    cntrl = v17->_mMultiHeadedFaceClassifier.__cntrl_;
    v17->_mMultiHeadedFaceClassifier = 0u;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    if (v20 < 0)
    {
      operator delete(__dst);
    }

    v11 = p_mMultiHeadedFaceClassifier->__ptr_ != 0;
    if (a4 && !p_mMultiHeadedFaceClassifier->__ptr_)
    {
      v15 = VNErrorForCVMLStatus(0xFFFFFFFFFFFFFFFCLL);
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failure to create face multi-headed classifier." underlyingError:v15];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end