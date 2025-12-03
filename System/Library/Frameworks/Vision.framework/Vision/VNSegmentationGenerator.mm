@interface VNSegmentationGenerator
+ (NSDictionary)requestKeyToRequestInfo;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)requestInfoForRequest:(id)request;
+ (id)supportedOutputPixelFormatsForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)validateMaskForBlobName:(id)name options:(id)options maskConfidence:(float *)confidence maskAcceptable:(BOOL *)acceptable error:(id *)error;
- (BufferSize)outputMaskSize;
- (__CVBuffer)renderCIImage:(id)image width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format computeDevice:(id)device session:(id)session error:(id *)error;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (optional<std::tuple<std::unordered_map<NSString)processLockedImageBuffer:(std:(espresso_buffer_t>>> *__return_ptr)retstr :(VNSegmentationGenerator *)self unordered_map<NSString *) inputMaskObservation:(SEL)observation options:(__CVBuffer *)options qosClass:(id)class error:(id)error;
@end

@implementation VNSegmentationGenerator

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VNSegmentationGenerator_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNSegmentationGenerator configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNSegmentationGenerator configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNSegmentationGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __64__VNSegmentationGenerator_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNSegmentationGenerator;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNEspressoModelFileBasedDetectorOption_NetworkConfiguration"];
  v3 = [v2 copy];
  v4 = +[VNSegmentationGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNSegmentationGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (NSDictionary)requestKeyToRequestInfo
{
  if (+[VNSegmentationGenerator requestKeyToRequestInfo]::onceToken != -1)
  {
    dispatch_once(&+[VNSegmentationGenerator requestKeyToRequestInfo]::onceToken, &__block_literal_global_74);
  }

  v3 = +[VNSegmentationGenerator requestKeyToRequestInfo]::requestKeyToRequestInfo;

  return v3;
}

void __50__VNSegmentationGenerator_requestKeyToRequestInfo__block_invoke()
{
  v15[4] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v14[0] = v1;
  v2 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_PersonSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:0];
  v15[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v14[1] = v4;
  v5 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_SkySegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:1];
  v15[1] = v5;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v14[2] = v7;
  v8 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_HumanAttributesSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:2];
  v15[2] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v14[3] = v10;
  v11 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_GlassesSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:3];
  v15[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v13 = +[VNSegmentationGenerator requestKeyToRequestInfo]::requestKeyToRequestInfo;
  +[VNSegmentationGenerator requestKeyToRequestInfo]::requestKeyToRequestInfo = v12;
}

+ (id)requestInfoForRequest:(id)request
{
  requestCopy = request;
  requestKeyToRequestInfo = [self requestKeyToRequestInfo];
  v6 = [VNMultiDetectorOriginalRequestInfo requestKeyFromRequest:requestCopy];
  v7 = [requestKeyToRequestInfo objectForKeyedSubscript:v6];

  return v7;
}

+ (id)supportedOutputPixelFormatsForOptions:(id)options error:(id *)error
{
  if (+[VNSegmentationGenerator supportedOutputPixelFormatsForOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNSegmentationGenerator supportedOutputPixelFormatsForOptions:error:]::onceToken, &__block_literal_global_10384);
  }

  v5 = +[VNSegmentationGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;

  return v5;
}

void __71__VNSegmentationGenerator_supportedOutputPixelFormatsForOptions_error___block_invoke()
{
  v0 = +[VNSegmentationGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;
  +[VNSegmentationGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats = &unk_1F19C1FA8;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  return self;
}

- (BOOL)validateMaskForBlobName:(id)name options:(id)options maskConfidence:(float *)confidence maskAcceptable:(BOOL *)acceptable error:(id *)error
{
  if (confidence)
  {
    v9 = acceptable == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  [VNError VNAssert:v10 log:@"One or more of output parameters is/are NULL"];
  *confidence = 1.0;
  *acceptable = 1;
  return 1;
}

- (__CVBuffer)renderCIImage:(id)image width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format computeDevice:(id)device session:(id)session error:(id *)error
{
  v11 = *&format;
  imageCopy = image;
  deviceCopy = device;
  sessionCopy = session;
  v17 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:v11 error:error];
  if (v17)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __89__VNSegmentationGenerator_renderCIImage_width_height_format_computeDevice_session_error___block_invoke;
    v25 = &unk_1E77B4AC8;
    v26 = imageCopy;
    v27 = v17;
    v18 = _Block_copy(&v22);
    vnciContextManager = [sessionCopy vnciContextManager];
    v20 = [(VNCIContextManager *)vnciContextManager performBlock:v18 usingAvailableContextForComputeDevice:deviceCopy error:error];

    if ((v20 & 1) == 0)
    {
      CVPixelBufferRelease(v17);
      v17 = 0;
    }
  }

  return v17;
}

uint64_t __89__VNSegmentationGenerator_renderCIImage_width_height_format_computeDevice_session_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 render:*(a1 + 32) toCVPixelBuffer:*(a1 + 40)];

  return 1;
}

- (optional<std::tuple<std::unordered_map<NSString)processLockedImageBuffer:(std:(espresso_buffer_t>>> *__return_ptr)retstr :(VNSegmentationGenerator *)self unordered_map<NSString *) inputMaskObservation:(SEL)observation options:(__CVBuffer *)options qosClass:(id)class error:(id)error
{
  classCopy = class;
  errorCopy = error;
  if (self)
  {
    v15 = [(VNDetector *)self computeDeviceForComputeStage:@"VNComputeStageMain" processingOptions:errorCopy error:a8];
    if (v15)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x5812000000;
      v38 = __Block_byref_object_copy__10432;
      v39 = __Block_byref_object_dispose__10433;
      v40 = "";
      v41 = 0u;
      v42 = 0u;
      v43 = 1065353216;
      v32 = 0u;
      v33 = 0u;
      v34 = 1065353216;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __96__VNSegmentationGenerator__processNonTiledLockedImageBuffer_inputMaskObservation_options_error___block_invoke;
      aBlock[3] = &unk_1E77B66D0;
      aBlock[4] = self;
      optionsCopy = options;
      v27 = classCopy;
      v28 = errorCopy;
      v29 = v15;
      v30 = &v35;
      v16 = _Block_copy(aBlock);
      if (VNExecuteBlock(v16, a8))
      {
        std::unordered_map<NSString * {__strong},__CVBuffer *>::unordered_map(v22, (v36 + 6));
        v24 = 0u;
        *__p = 0u;
        v25 = 1065353216;
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(__p, 0);
        std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(retstr, v22);
        std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(&retstr->var0.var1.var0.var1, __p);
        retstr->var1 = 1;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v24);
        v17 = __p[0];
        __p[0] = 0;
        if (v17)
        {
          operator delete(v17);
        }

        std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v22[2]);
        v18 = v22[0];
        v22[0] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        for (i = v36[8]; i; i = *i)
        {
          CVPixelBufferRelease(i[3]);
          i[3] = 0;
        }

        retstr->var0.var0 = 0;
        retstr->var1 = 0;
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(0);
      _Block_object_dispose(&v35, 8);
      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v42);
      v20 = v41;
      *&v41 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      retstr->var0.var0 = 0;
      retstr->var1 = 0;
    }
  }

  else
  {
    *&retstr->var1 = 0;
    *&retstr->var0.var1.var0.var1.__table_.__bucket_list_.__deleter_.__size_ = 0u;
    *&retstr->var0.var1.var0.var1.__table_.__size_ = 0u;
    *&retstr->var0.var1.var0.var0.var0.var1.var0 = 0u;
    *&retstr->var0.var1.var0.var0.var0.var3 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

uint64_t __96__VNSegmentationGenerator__processNonTiledLockedImageBuffer_inputMaskObservation_options_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v6 = [objc_opt_class() inputImageBlobName];
  LOBYTE(v4) = [v4 bindLockedPixelBuffer:v5 toNetworkInputBlobName:v6 error:a2];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v7 = [*(a1 + 40) pixelBuffer];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(*(a1 + 32) + 88);
  v10 = *(*(a1 + 32) + 96);
  Width = CVPixelBufferGetWidth(v7);
  Height = CVPixelBufferGetHeight(v8);
  v13 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v8];
  v14 = *(*(a1 + 32) + 200);
  v15 = *(*(a1 + 32) + 208);
  [v13 extent];
  v16 = v14 / v15;
  v19 = v17 / v18;
  v20 = v16 >= 1.0 || v19 < 1.0;
  if (!v20 || (v16 >= 1.0 ? (v21 = v19 < 1.0) : (v21 = 0), v21))
  {
    v23 = [v13 imageByApplyingCGOrientation:8];

    v22 = Width;
    v13 = v23;
  }

  else
  {
    v22 = Height;
    Height = Width;
  }

  if (Height != v9 || v22 != v10)
  {
    memset(&v46, 0, sizeof(v46));
    [v13 extent];
    v25 = v24;
    [v13 extent];
    CGAffineTransformMakeScale(&v46, v9 / v25, v10 / v26);
    aBlock = v46;
    v27 = [v13 imageByApplyingTransform:&aBlock];

    v13 = v27;
  }

  v28 = [objc_opt_class() inputMaskBlobName];
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  memset(&v46, 0, sizeof(v46));
  if (([*(a1 + 32) bindBuffer:&v46 toNetworkInputBlobName:v28 error:a2] & 1) == 0)
  {
    goto LABEL_27;
  }

  v29 = [VNValidationUtilities requiredSessionInOptions:*(a1 + 48) error:a2];
  v30 = v29;
  if (!v29)
  {
    goto LABEL_27;
  }

  v31 = *(a1 + 32);
  a = v46.a;
  v32 = *(a1 + 56);
  v33 = [v29 vnciContextManager];
  v44 = v13;
  v45 = v32;
  v34 = v33;
  v35 = v34;
  if (!v31)
  {

LABEL_27:
    return 0;
  }

  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 3221225472;
  *&aBlock.c = __119__VNSegmentationGenerator__renderCIImage_toBuffer_width_height_rowBytes_format_computeDevice_vnciContextManager_error___block_invoke;
  *&aBlock.d = &unk_1E77B3AF8;
  aBlock.ty = a;
  v56 = v10;
  v57 = v9;
  v58 = 4 * v9;
  v36 = v44;
  *&aBlock.tx = v36;
  v59 = 1278226534;
  v37 = _Block_copy(&aBlock);
  v38 = [(VNCIContextManager *)v35 performBlock:v37 usingAvailableContextForComputeDevice:v45 error:a2];

  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  result = [*(a1 + 32) executePlanAndReturnError:a2];
  if (result)
  {
    v40 = *(*(a1 + 32) + 120);
    if (v40)
    {
      while (1)
      {
        v41 = [VNEspressoHelpers createCVPixelBufferWithPixelFormat:1278226534 fromImageInEspressoBuffer:v40 + 3 error:a2];
        result = v41 != 0;
        if (!v41)
        {
          break;
        }

        v42 = *(*(a1 + 64) + 8);
        *&v46.a = v40 + 2;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>((v42 + 48), v40 + 2)[3] = v41;
        v40 = *v40;
        if (!v40)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t __119__VNSegmentationGenerator__renderCIImage_toBuffer_width_height_rowBytes_format_computeDevice_vnciContextManager_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  return [(VNCIContext *)a2 renderCIImage:v4 buffer:&v6 format:*(a1 + 72) error:a3];
}

- (BufferSize)outputMaskSize
{
  next = self->_espressoMaskOutputBufferSizes.__table_.__first_node_.__next_;
  v3 = next[3];
  v4 = next[4];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v74 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v14 = objc_opt_class();
  supportsTiling = [v14 supportsTiling];
  inputMaskBlobName = [v14 inputMaskBlobName];
  outputMaskBlobNames = [v14 outputMaskBlobNames];
  v16 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask" inOptions:optionsCopy error:error];
  if (!v16)
  {
    v22 = 0;
    goto LABEL_44;
  }

  obj = class;
  v41 = v16;
  v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat" inOptions:optionsCopy error:error];
  if (v17)
  {
    v39 = v17;
    v40 = [VNValidationUtilities requiredSessionInOptions:optionsCopy error:error];
    if (!v40)
    {
      v22 = 0;
LABEL_42:

      v17 = v39;
      goto LABEL_43;
    }

    v36 = [(VNDetector *)self computeDeviceForComputeStage:@"VNComputeStageMain" processingOptions:optionsCopy error:error];
    if (!v36)
    {
      v22 = 0;
LABEL_41:

      goto LABEL_42;
    }

    v35 = [optionsCopy objectForKeyedSubscript:@"VNSegmentationGeneratorProcessOption_MaskImageObservations"];
    if (!v35 && inputMaskBlobName)
    {
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      memset(v66, 0, sizeof(v66));
      if (![(VNEspressoModelFileBasedDetector *)self bindBuffer:v66 toNetworkInputBlobName:inputMaskBlobName error:error])
      {
        v22 = 0;
LABEL_40:

        goto LABEL_41;
      }

      bzero(*&v66[0], 4 * v67 * *(&v67 + 1));
    }

    v34 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (!v34)
    {
      v22 = 0;
LABEL_39:

      goto LABEL_40;
    }

    requestKeyToRequestInfo = [v14 requestKeyToRequestInfo];
    v18 = [requestKeyToRequestInfo count];
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    outputMaskBlobNameToRequestKey = [v14 outputMaskBlobNameToRequestKey];
    outputMaskBlobNameToFeatureName = [v14 outputMaskBlobNameToFeatureName];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __125__VNSegmentationGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
    aBlock[3] = &unk_1E77B3678;
    v62 = v18;
    bufferCopy = buffer;
    aBlock[4] = self;
    v52 = optionsCopy;
    v64 = obj;
    v53 = outputMaskBlobNames;
    v54 = v16;
    v55 = v17;
    v65 = supportsTiling;
    v56 = v36;
    v57 = v40;
    v31 = outputMaskBlobNameToFeatureName;
    v58 = v31;
    v28 = v34;
    v59 = v28;
    v30 = outputMaskBlobNameToRequestKey;
    v60 = v30;
    v29 = requestKeyToRequestInfo;
    v61 = v29;
    v20 = _Block_copy(aBlock);
    v21 = v20;
    if (v35)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v22 = v35;
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v73 count:16];
      if (v23)
      {
        obja = v22;
        v24 = *v48;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v48 != v24)
            {
              objc_enumerationMutation(obja);
            }

            v26 = (v21)[2](v21, *(*(&v47 + 1) + 8 * i), error);
            if (!v26)
            {
              v22 = 0;
              goto LABEL_37;
            }

            if ([v42 count])
            {
              v45[0] = MEMORY[0x1E69E9820];
              v45[1] = 3221225472;
              v45[2] = __125__VNSegmentationGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2;
              v45[3] = &unk_1E77B42C8;
              v46 = v26;
              [v42 enumerateObjectsUsingBlock:v45];
            }

            else
            {
              [v42 addObjectsFromArray:v26];
            }
          }

          v23 = [obja countByEnumeratingWithState:&v47 objects:v73 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

        v22 = obja;
      }
    }

    else
    {
      v22 = (*(v20 + 2))(v20, 0, error);
      if (!v22)
      {
LABEL_38:

        goto LABEL_39;
      }

      [v42 addObjectsFromArray:v22];
    }

    if ([v42 count])
    {
      if ([v28 specifiesRequestClass:objc_opt_class()])
      {
        v22 = [v42 copy];
      }

      else
      {
        obja = [v42 firstObject];
        v22 = [obja copy];
LABEL_37:
      }
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_38;
  }

  v22 = 0;
LABEL_43:

  v16 = v41;
LABEL_44:

  return v22;
}

id __125__VNSegmentationGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 120)];
  if (*(a1 + 120))
  {
    v6 = 0;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v5 addObject:v7];

      ++v6;
    }

    while (v6 < *(a1 + 120));
  }

  v8 = *(a1 + 32);
  if (v8 && ([v8 processLockedImageBuffer:*(a1 + 128) inputMaskObservation:v27 options:*(a1 + 40) qosClass:*(a1 + 136) error:a3], (v47 & 1) != 0))
  {
    std::unordered_map<NSString * {__strong},__CVBuffer *>::unordered_map(&v38, v44);
    v43 = 1;
    v9 = v38;
    v10 = v39;
    v38 = 0;
    v39 = 0;
    __p = v9;
    v34 = v10;
    v11 = v41;
    v35 = v40;
    v36 = v41;
    v37 = v42;
    if (v41)
    {
      v12 = v40[1];
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v12 >= v10)
        {
          v12 %= v10;
        }
      }

      else
      {
        v12 &= v10 - 1;
      }

      *(v9 + v12) = &v35;
      v40 = 0;
      v41 = 0;
    }

    if (v11 == [*(a1 + 48) count])
    {
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = *(a1 + 48);
      v15 = [obj countByEnumeratingWithState:&v28 objects:v48 count:16];
      if (v15)
      {
        v26 = *v29;
        while (2)
        {
          v25 = v15;
          for (i = 0; i != v25; ++i)
          {
            if (*v29 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v28 + 1) + 8 * i);
            if (([*(a1 + 32) validateMaskForBlobName:? options:? maskConfidence:? maskAcceptable:? error:?] & 1) == 0)
            {

              v13 = 0;
              goto LABEL_30;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v28 objects:v48 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v13 = v5;
LABEL_30:
      for (j = v35; j; j = *j)
      {
        CVPixelBufferRelease(j[3]);
        j[3] = 0;
      }

      if (v36)
      {
        std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v35);
        v35 = 0;
        v18 = v34;
        if (v34)
        {
          v19 = 0;
          do
          {
            *(__p + v19++) = 0;
          }

          while (v18 != v19);
        }

        v36 = 0;
      }
    }

    else if (a3)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected number for masks returned"];
      *a3 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }

    std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v35);
    v20 = __p;
    __p = 0;
    if (v20)
    {
      operator delete(v20);
    }

    if (v43 == 1)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v40);
      v21 = v38;
      v38 = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    if (v47)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v46);
      v22 = v45;
      v45 = 0;
      if (v22)
      {
        operator delete(v22);
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(v44[2]);
      v23 = v44[0];
      v44[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __125__VNSegmentationGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 addObjectsFromArray:v5];
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = objc_opt_class();
  v18 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_28;
  }

  width = [v18 width];
  height = [v19 height];
  v22 = x * width;
  v23 = width * width;
  v24 = y * height;
  v25 = height * height;
  *v44 = v22;
  *&v44[1] = v24;
  *&v44[2] = v23;
  *&v44[3] = v25;
  v26 = [MEMORY[0x1E696B098] valueWithBytes:v44 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [optionsCopy setObject:v26 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ImageROI"];

  outputMaskSize = [(VNSegmentationGenerator *)self outputMaskSize];
  v29 = outputMaskSize / v28;
  v30 = v23 / v25;
  v31 = v29 >= 1.0 || v30 < 1.0;
  if (!v31 || (v29 >= 1.0 ? (v32 = v30 < 1.0) : (v32 = 0), v32))
  {
    rotateImageToMatchNetworkOrientation = [objc_opt_class() rotateImageToMatchNetworkOrientation];
  }

  else
  {
    rotateImageToMatchNetworkOrientation = 0;
  }

  v34 = [MEMORY[0x1E696AD98] numberWithBool:rotateImageToMatchNetworkOrientation];
  [optionsCopy setObject:v34 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ImageRotated"];

  v35 = optionsCopy;
  if (!self)
  {
LABEL_27:

LABEL_28:
    v40 = 0;
    goto LABEL_29;
  }

  v36 = objc_opt_class();
  inputMaskBlobName = [v36 inputMaskBlobName];

  if (!inputMaskBlobName)
  {
    goto LABEL_20;
  }

  if ([v36 inputMaskRequired])
  {
    v38 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_MaskImageObservations" inOptions:v35 error:error];
    if (!v38)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v45 = 0;
  v39 = [VNValidationUtilities getOptionalObject:&v45 ofClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_MaskImageObservations" inOptions:v35 error:error];
  v38 = v45;
  if (!v39)
  {

    goto LABEL_27;
  }

LABEL_19:

LABEL_20:
  if ([v17 supportsTiling])
  {
    v40 = 1;
  }

  else
  {
    [v35 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    if (rotateImageToMatchNetworkOrientation)
    {
      v41 = 258;
    }

    else
    {
      v41 = 2;
    }

    v42 = [v19 cropAndScaleBufferWithWidth:self->_espressoInputImageSize.width height:self->_espressoInputImageSize.height cropRect:1111970369 format:v41 imageCropAndScaleOption:v35 options:error error:v22 calculatedNormalizedOriginOffset:v24 calculatedScaleX:v23 calculatedScaleY:{v25, 0, 0, 0}];
    *buffer = v42;
    v40 = v42 != 0;
  }

LABEL_29:

  return v40;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = objc_opt_class();
  v57.receiver = self;
  v57.super_class = VNSegmentationGenerator;
  if (![(VNEspressoModelFileBasedDetector *)&v57 completeInitializationForSession:sessionCopy error:error])
  {
    v23 = 0;
    goto LABEL_44;
  }

  inputImageBlobName = [v7 inputImageBlobName];
  inputMaskBlobName = [v7 inputMaskBlobName];
  outputMaskBlobNames = [v7 outputMaskBlobNames];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__VNSegmentationGenerator_completeInitializationForSession_error___block_invoke;
  aBlock[3] = &unk_1E77B3650;
  aBlock[4] = self;
  v31 = _Block_copy(aBlock);
  v8 = v31;
  if (((*(v31 + 2))(v31, inputImageBlobName, &self->_espressoInputImageSize, error) & 1) == 0 || !(*(v31 + 2))(v31, inputMaskBlobName, &self->_espressoInputMaskSize, error) || inputMaskBlobName && ![(VNEspressoModelFileBasedDetector *)self getWidth:&self->_espressoMaskInputBufferSize height:&self->_espressoMaskInputBufferSize.height ofEspressoModelNetworkBlobNamed:inputMaskBlobName error:error])
  {
    goto LABEL_42;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = outputMaskBlobNames;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v9)
  {
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v52 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0;
        v12 = std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * {__strong},espresso_buffer_t>>(&self->_espressoMaskOutputBuffers.__table_.__bucket_list_.__ptr_, &v40);

        if (![(VNEspressoModelFileBasedDetector *)self bindBuffer:v12 + 3 toNetworkOutputBlobName:v12[2] error:error])
        {
LABEL_45:
          v23 = 0;
          goto LABEL_46;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v9);
  }

  v8 = v31;
  if (![(VNSegmentationGenerator *)self bindOutputConfidenceBuffersAndReturnError:error])
  {
LABEL_42:
    v23 = 0;
    goto LABEL_43;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = obj;
  v13 = [v25 countByEnumeratingWithState:&v36 objects:v58 count:16];
  if (!v13)
  {
    v23 = 1;
    goto LABEL_46;
  }

  v27 = *v37;
  v26 = sessionCopy;
  do
  {
    v14 = 0;
    do
    {
      if (*v37 != v27)
      {
        objc_enumerationMutation(v25);
      }

      v15 = *(*(&v36 + 1) + 8 * v14);
      v34 = 0;
      v35 = 0;
      if (![(VNEspressoModelFileBasedDetector *)self getWidth:&v35 height:&v34 ofEspressoModelNetworkBlobNamed:v15 error:error])
      {
        goto LABEL_45;
      }

      v28 = v14;
      v16 = [v15 hash];
      size = self->_espressoMaskOutputBufferSizes.__table_.__bucket_list_.__deleter_.__size_;
      if (!size)
      {
        goto LABEL_37;
      }

      v18 = vcnt_s8(size);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        v19 = v16;
        if (v16 >= size)
        {
          v19 = v16 % size;
        }
      }

      else
      {
        v19 = (size - 1) & v16;
      }

      v20 = self->_espressoMaskOutputBufferSizes.__table_.__bucket_list_.__ptr_[v19];
      if (!v20 || (v21 = *v20) == 0)
      {
LABEL_37:
        operator new();
      }

      while (1)
      {
        v22 = v21[1];
        if (v22 == v16)
        {
          break;
        }

        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= size)
          {
            v22 %= size;
          }
        }

        else
        {
          v22 &= size - 1;
        }

        if (v22 != v19)
        {
          goto LABEL_37;
        }

LABEL_36:
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_37;
        }
      }

      if (v21[2] != v15)
      {
        goto LABEL_36;
      }

      ++v14;
      sessionCopy = v26;
    }

    while (v28 + 1 != v13);
    v13 = [v25 countByEnumeratingWithState:&v36 objects:v58 count:16];
    v23 = 1;
  }

  while (v13);
LABEL_46:

  v8 = v31;
LABEL_43:

LABEL_44:
  return v23;
}

@end