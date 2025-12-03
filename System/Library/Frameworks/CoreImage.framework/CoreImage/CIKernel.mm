@interface CIKernel
+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data error:(NSError *)error;
+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data outputPixelFormat:(CIFormat)format error:(NSError *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data constants:(id)constants error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data options:(id)options error:(id *)error;
+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data outputGroupSize:(CGSize)size error:(id *)error;
+ (CIKernel)kernelWithInternalRepresentation:(const void *)representation;
+ (CIKernel)kernelWithString:(NSString *)string;
+ (CIKernel)kernelWithString:(id)string fromMetalLibraryData:(id)data;
+ (NSArray)kernelNamesFromMetalLibraryData:(NSData *)data;
+ (NSArray)kernelsWithMetalString:(NSString *)source error:(NSError *)error;
+ (NSArray)kernelsWithString:(NSString *)string;
+ (id)SDOFV2MetalKernelNamed:(id)named;
+ (id)SDOFV3MetalKernelNamed:(id)named;
+ (id)cache;
+ (id)cacheKeyForFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options;
+ (id)cachedKernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error;
+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error;
+ (id)cachedKernelWithString:(id)string;
+ (id)colorMatrixBiasKernel;
+ (id)internalCachedKernelWithString:(id)string;
+ (id)kernelNamesFromMetalLibrary:(id)library;
+ (id)kernelsWithString:(id)string andCIKernelLibrary:(id)library messageLog:(id)log;
+ (id)kernelsWithString:(id)string fromMetalLibraryData:(id)data;
+ (id)kernelsWithString:(id)string messageLog:(id)log;
+ (void)clearCache;
- (BOOL)_isValidOutputPixelFormat:(int)format;
- (BOOL)canReduceOutputChannels;
- (BOOL)perservesAlpha;
- (BOOL)preservesOpacity;
- (BOOL)preservesRange;
- (CGSize)outputGroupSize;
- (CIKernel)init;
- (CIKernel)initWithString:(id)string;
- (NSString)name;
- (SEL)ROISelector;
- (id)_initInternalWithString:(id)string;
- (id)_initWithInternalRepresentation:(void *)representation;
- (id)_initWithReflection:(CIKernelReflection *)reflection;
- (id)_initWithString:(id)string andCIKernelLibrary:(id)library usingCruftCompatibility:(BOOL)compatibility isInternal:(BOOL)internal;
- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options;
- (id)debugDescription;
- (id)parameters;
- (int)_outputFormatUsingDictionary:(id)dictionary andKernel:(void *)kernel;
- (void)dealloc;
- (void)setCanReduceOutputChannels:(BOOL)channels;
- (void)setPerservesAlpha:(BOOL)alpha;
- (void)setPreservesRange:(BOOL)range;
- (void)setROISelector:(SEL)method;
@end

@implementation CIKernel

- (id)_initWithInternalRepresentation:(void *)representation
{
  if (representation)
  {
    representationCopy = representation;
    v6.receiver = self;
    v6.super_class = CIKernel;
    v4 = [(CIKernel *)&v6 init];
    if (v4)
    {
      if (*(representationCopy + 12) == 1)
      {
        representationCopy = CI::Object::ref(representationCopy);
      }

      v4->_priv = representationCopy;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

+ (CIKernel)kernelWithInternalRepresentation:(const void *)representation
{
  if ((*(*representation + 16))(representation, a2) == 72)
  {
    v4 = 1;
  }

  else if ((*(*representation + 16))(representation) == 70)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = [KernelKindAlloc(v4) _initWithInternalRepresentation:representation];

  return v5;
}

+ (id)cache
{
  if (+[CIKernel cache]::onceToken != -1)
  {
    +[CIKernel cache];
  }

  return +[CIKernel cache]::cache;
}

id __17__CIKernel_cache__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  +[CIKernel cache]::cache = result;
  return result;
}

+ (void)clearCache
{
  cache = [self cache];
  objc_sync_enter(cache);
  [cache removeAllObjects];
  objc_sync_exit(cache);

  +[CIKernelLibrary clearCache];
}

+ (id)cachedKernelWithString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v18 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithString", "%{public}@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __35__CIKernel_cachedKernelWithString___block_invoke;
  v15 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  objc_sync_enter(cache);
  v7 = [cache objectForKey:string];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = [[self alloc] initWithString:string];
    null = v8;
    if (!v8)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cache setObject:null forKey:string];
  }

  objc_sync_exit(cache);
  if (v8 == [MEMORY[0x1E695DFB0] null])
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v14(v13);
  return v11;
}

void __35__CIKernel_cachedKernelWithString___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithString", "%{public}@", &v4, 0xCu);
  }
}

+ (id)internalCachedKernelWithString:(id)string
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v16 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "internalCachedKernelWithString", "%{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __43__CIKernel_internalCachedKernelWithString___block_invoke;
  v13 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  objc_sync_enter(cache);
  v7 = [cache objectForKey:string];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = [[self alloc] _initInternalWithString:string];
    [cache setObject:v8 forKey:string];
  }

  objc_sync_exit(cache);
  v12(v11);
  return v8;
}

void __43__CIKernel_internalCachedKernelWithString___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "internalCachedKernelWithString", "%{public}@", &v4, 0xCu);
  }
}

+ (id)cacheKeyForFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  XXH64_reset(v21, 0);
  CI::XXHashHelper::addstr(v21, [name UTF8String]);
  __src = [library digest];
  XXH64_update(v21, &__src, 8uLL);
  v8 = [options objectForKeyedSubscript:@"kCIKernelFunctionConstants"];
  v9 = [objc_msgSend(v8 "allKeys")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        CI::XXHashHelper::add(v21, v13);
        v14 = [v8 valueForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CI::XXHashHelper::add(v21, v14);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CI::XXHashHelper::add(v21, v14);
          }
        }

        v15 = [v8 valueForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CI::XXHashHelper::add(v21, v15);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  __src = [objc_msgSend(options objectForKeyedSubscript:{@"kCIKernelOutputFormat", "longLongValue"}];
  XXH64_update(v21, &__src, 8uLL);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%016llX", XXH64_digest(v21)];
}

+ (id)cachedKernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v11))
  {
    *buf = 138543362;
    *&buf[4] = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithFunctionName", "%{public}@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __75__CIKernel_cachedKernelWithFunctionName_fromCIKernelLibrary_options_error___block_invoke;
  v21 = &unk_1E75C2AA0;
  selfCopy = self;
  cache = [self cache];
  v13 = [self cacheKeyForFunctionName:name fromCIKernelLibrary:library options:options];
  objc_sync_enter(cache);
  v14 = [cache objectForKey:v13];
  null = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    *buf = 0;
    v17 = [self kernelWithFunctionName:name fromCIKernelLibrary:library options:options error:buf];
    if (v17)
    {
      null = v17;
    }

    else
    {
      null = *buf;
    }

    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cache setObject:null forKey:v13];
  }

  objc_sync_exit(cache);
  if (null == [MEMORY[0x1E695DFB0] null])
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (!((error == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      *error = null;
    }

LABEL_15:
    null = 0;
  }

  v20(v19);
  return null;
}

void __75__CIKernel_cachedKernelWithFunctionName_fromCIKernelLibrary_options_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cachedKernelWithFunctionName", "%{public}@", &v4, 0xCu);
  }
}

- (CIKernel)init
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIKernel *)v3 init:v4];
  }

  return [(CIKernel *)self _initWithInternalRepresentation:0];
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (*(priv + 12) == 1)
    {
      CI::Object::unref(priv);
    }

    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIKernel;
  [(CIKernel *)&v4 dealloc];
}

- (id)_initWithString:(id)string andCIKernelLibrary:(id)library usingCruftCompatibility:(BOOL)compatibility isInternal:(BOOL)internal
{
  internalCopy = internal;
  compatibilityCopy = compatibility;
  v65 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  memset(v59, 0, sizeof(v59));
  v58 = 0u;
  memset(&v57[8], 0, 32);
  v60 = vdupq_n_s64(1uLL);
  v61 = 0;
  memset(&v56.var2, 0, 88);
  *&v56.var10 = v60;
  *&v56.var12 = 0;
  memset(&v55.var2, 0, 88);
  *&v55.var10 = v60;
  *&v55.var12 = 0;
  v11 = CI_USE_MTL_DAG_FOR_CIKL_SRC();
  v12 = 0;
  if (!library && v11 && !internalCopy)
  {
    v12 = can_use_metal();
  }

  v13 = newlocale(63, 0, 0);
  v14 = uselocale(v13);
  Pool = fosl_filter_kernelpool_createPool();
  fosl_filter_kernelpool_addLibrary(Pool, aCopyright2022A);
  if ((dyld_program_sdk_at_least() & 1) == 0 && (dyld_program_sdk_at_least() & 1) == 0 && !CI_DISABLE_CRUFT_COMPATABILITY() && compatibilityCopy)
  {
    string = [string stringByReplacingOccurrencesOfString:@"__sampler" withString:@"sampler"];
  }

  fosl_filter_kernelpool_addString(Pool, [string UTF8String]);
  if (check_and_emit_compile_errors(string, Pool, 0))
  {
    v16 = ci_logger_compile();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_opt_class() description];
      [CIKernel _initWithString:v17 andCIKernelLibrary:buf usingCruftCompatibility:? isInternal:?];
    }

    goto LABEL_22;
  }

  if (!fosl_filter_kernelpool_getNumKernels(Pool))
  {
    v20 = ci_logger_compile();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_opt_class() description];
      [CIKernel _initWithString:v21 andCIKernelLibrary:buf usingCruftCompatibility:? isInternal:?];
    }

LABEL_22:
    v22 = 0;
    if (!Pool)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!CIKernelReflection::reflect(&v56, Pool, 0, 0))
  {
    goto LABEL_22;
  }

  if ((dyld_program_sdk_at_least() & 1) != 0 || dyld_program_sdk_at_least())
  {
    var0 = v56.var0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (var0 != 3)) == 1)
    {
      v19 = ci_logger_compile();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (var0 != 2)) == 1)
    {
      v25 = ci_logger_compile();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }
  }

  if (!v12)
  {
    if (!library)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  CIKLLibraryMaker::CIKLLibraryMaker(buf, Pool);
  library = buf[0];
  if (!buf[0])
  {
    v35 = ci_logger_compile();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [objc_opt_class() description];
      [CIKernel _initWithString:v36 andCIKernelLibrary:v64 usingCruftCompatibility:? isInternal:?];
    }

    CIKLLibraryMaker::~CIKLLibraryMaker(buf);
    goto LABEL_22;
  }

  CIKLLibraryMaker::~CIKLLibraryMaker(v26);
LABEL_40:
  if (CIKernelReflection::reflect(&v55, library, v56.var2, 0))
  {
    v27 = v55.var0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (v27 != 2)) == 1)
    {
      v28 = ci_logger_api();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (v27 != 3)) == 1)
    {
      v37 = ci_logger_api();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }

      goto LABEL_22;
    }

    CIKernelReflection::consolidate(&v56, &v55, buf);
    CIKernelReflection::operator=(v57, buf);
    CIKernelReflection::~CIKernelReflection(buf);
    goto LABEL_45;
  }

LABEL_44:
  *v57 = *&v56.var0;
  *&v57[16] = *&v56.var3;
  std::vector<CI::KernelArgumentType>::__assign_with_size[abi:nn200100]<CI::KernelArgumentType*,CI::KernelArgumentType*>(&v57[32], v56.var5.var0, v56.var5.var1, v56.var5.var1 - v56.var5.var0);
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(v59, v56.var6.var0, v56.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v56.var6.var1 - v56.var6.var0) >> 3));
  *&v59[24] = *&v56.var7;
  v60 = *&v56.var10;
  v61 = *&v56.var12;
LABEL_45:
  v29 = *v56.var2;
  if (internalCopy)
  {
    if (v29 != 95)
    {
      v30 = ci_logger_api();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CIKernel _initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:];
      }
    }
  }

  else if (v29 == 95)
  {
    v31 = ci_logger_api();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = v56.var2;
      _os_log_impl(&dword_19CC36000, v31, OS_LOG_TYPE_INFO, "WARNING: Client CIKL function name %{public}s must not start with '_'\n", buf, 0xCu);
    }
  }

  v32 = *v57;
  if (*v57 == 1)
  {
    goto LABEL_58;
  }

  if (*v57 == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_58;
    }

    v32 = *v57;
  }

  if (v32 == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_58:
      v47[0] = *v57;
      v47[1] = *&v57[16];
      __dst = 0;
      v50 = 0;
      v48 = 0;
      if (v58 != *&v57[32])
      {
        std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v48, (v58 - *&v57[32]) >> 2);
      }

      memset(v51, 0, sizeof(v51));
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v51, *v59, *&v59[8], 0xAAAAAAAAAAAAAAABLL * ((*&v59[8] - *v59) >> 3));
      v52 = *&v59[24];
      v53 = v60;
      v54 = v61;
      self = [(CIKernel *)self _initWithReflection:v47];
      buf[0] = v51;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
      v33 = v48;
      if (v48)
      {
        __dst = v48;
LABEL_66:
        operator delete(v33);
        goto LABEL_67;
      }

      goto LABEL_67;
    }
  }

  v34 = KernelKindAlloc(*v57);
  v39[0] = *v57;
  v39[1] = *&v57[16];
  v41 = 0;
  v42 = 0;
  v40 = 0;
  if (v58 != *&v57[32])
  {
    std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v40, (v58 - *&v57[32]) >> 2);
  }

  memset(v43, 0, sizeof(v43));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v43, *v59, *&v59[8], 0xAAAAAAAAAAAAAAABLL * ((*&v59[8] - *v59) >> 3));
  v44 = *&v59[24];
  v45 = v60;
  v46 = v61;
  self = [v34 _initWithReflection:v39];
  buf[0] = v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
  v33 = v40;
  if (v40)
  {
    v41 = v40;
    goto LABEL_66;
  }

LABEL_67:
  v22 = 1;
  if (Pool)
  {
LABEL_23:
    fosl_filter_kernelpool_destroyPool(Pool);
  }

LABEL_24:
  v23 = uselocale(v14);
  freelocale(v23);
  if ((v22 & 1) == 0)
  {

    self = 0;
  }

  p_var6 = &v55.var6;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
  if (v55.var5.var0)
  {
    v55.var5.var1 = v55.var5.var0;
    operator delete(v55.var5.var0);
  }

  *&v55.var0 = &v56.var6;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v55);
  if (v56.var5.var0)
  {
    v56.var5.var1 = v56.var5.var0;
    operator delete(v56.var5.var0);
  }

  *&v56.var0 = v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v56);
  if (*&v57[32])
  {
    *&v58 = *&v57[32];
    operator delete(*&v57[32]);
  }

  objc_autoreleasePoolPop(context);
  return self;
}

- (id)_initInternalWithString:(id)string
{
  if (check_cikl_string(string, "[CIKernel _initInternalWithString:]"))
  {

    return [(CIKernel *)self _initWithString:string andCIKernelLibrary:0 usingCruftCompatibility:0 isInternal:1];
  }

  else
  {

    return 0;
  }
}

- (id)_initWithReflection:(CIKernelReflection *)reflection
{
  v5 = *&reflection->var3;
  v9[0] = *&reflection->var0;
  v9[1] = v5;
  std::vector<CI::KernelArgumentType>::vector[abi:nn200100](__p, &reflection->var5.var0);
  memset(v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v11, reflection->var6.var0, reflection->var6.var1, 0xAAAAAAAAAAAAAAABLL * ((reflection->var6.var1 - reflection->var6.var0) >> 3));
  v6 = *&reflection->var10;
  v12 = *&reflection->var7;
  v13 = v6;
  v14 = *&reflection->var12;
  v7 = [(CIKernel *)self _initWithReflection:v9 constants:0 constantTypes:0];
  v15 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

+ (id)kernelsWithString:(id)string andCIKernelLibrary:(id)library messageLog:(id)log
{
  v8 = objc_autoreleasePoolPush();
  if (!check_cikl_string(string, "+[CIKernel kernelsWithString:andCIKernelLibrary:messageLog:]"))
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }

  v9 = CI_USE_MTL_DAG_FOR_CIKL_SRC();
  libraryCopy = library;
  v11 = 0;
  v28 = libraryCopy;
  if (!libraryCopy && v9)
  {
    v11 = can_use_metal();
  }

  v12 = newlocale(63, 0, 0);
  v13 = uselocale(v12);
  Pool = fosl_filter_kernelpool_createPool();
  fosl_filter_kernelpool_addLibrary(Pool, aCopyright2022A);
  fosl_filter_kernelpool_addString(Pool, [string UTF8String]);
  check_and_emit_compile_errors(string, Pool, log);
  NumKernels = fosl_filter_kernelpool_getNumKernels(Pool);
  v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:NumKernels];
  if (!v11)
  {
    goto LABEL_8;
  }

  CIKLLibraryMaker::CIKLLibraryMaker(&v69, Pool);
  if (*&v69.var0)
  {
    v28 = *&v69.var0;
    CIKLLibraryMaker::~CIKLLibraryMaker(v16);
LABEL_8:
    v27 = v13;
    if (NumKernels)
    {
      v17 = 0;
      v30 = vdupq_n_s64(1uLL);
      while (1)
      {
        memset(&v69.var2, 0, 88);
        *&v69.var10 = v30;
        *&v69.var12 = 0;
        if (CIKernelReflection::reflect(&v69, Pool, v17, 0))
        {
          break;
        }

LABEL_41:
        *&v68.var0 = &v69.var6;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v68);
        if (v69.var5.var0)
        {
          v69.var5.var1 = v69.var5.var0;
          operator delete(v69.var5.var0);
        }

        v17 = (v17 + 1);
        if (NumKernels == v17)
        {
          goto LABEL_44;
        }
      }

      memset(&v68.var2, 0, 88);
      *&v68.var10 = vdupq_n_s64(1uLL);
      *&v68.var12 = 0;
      if (v28 && CIKernelReflection::reflect(&v68, v28, v69.var2, 0))
      {
        CIKernelReflection::consolidate(&v69, &v68, v63);
        *&v69.var0 = *v63;
        *&v69.var3 = *&v63[2];
        if (v69.var5.var0)
        {
          v69.var5.var1 = v69.var5.var0;
          operator delete(v69.var5.var0);
        }

        v69.var5 = *&v63[4];
        memset(&v63[4], 0, 24);
        std::vector<std::string>::__vdeallocate(&v69.var6);
        v69.var6 = v64;
        memset(&v64, 0, sizeof(v64));
        *&v69.var7 = v65;
        *&v69.var10 = v66;
        *&v69.var12 = v67;
        v70 = &v64;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v70);
        if (v63[4])
        {
          v63[5] = v63[4];
          operator delete(v63[4]);
        }
      }

      if (v69.var0 > 2)
      {
        if (v69.var0 == 3)
        {
          v22 = [CIWarpKernel alloc];
          v39[0] = *&v69.var0;
          v39[1] = *&v69.var3;
          v41 = 0;
          v42 = 0;
          v40 = 0;
          if (v69.var5.var1 != v69.var5.var0)
          {
            std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v40, v69.var5.var1 - v69.var5.var0);
          }

          memset(v43, 0, sizeof(v43));
          std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v43, v69.var6.var0, v69.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v69.var6.var1 - v69.var6.var0) >> 3));
          v44 = *&v69.var7;
          v45 = *&v69.var10;
          v46 = *&v69.var12;
          [v29 addObject:{-[CIKernel _initWithReflection:](v22, "_initWithReflection:", v39, v27)}];
          v63[0] = v43;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v63);
          v19 = v40;
          if (!v40)
          {
            goto LABEL_39;
          }

          v41 = v40;
        }

        else
        {
          if (v69.var0 != 4)
          {
            goto LABEL_39;
          }

          v20 = [CIBlendKernel alloc];
          v31[0] = *&v69.var0;
          v31[1] = *&v69.var3;
          v33 = 0;
          v34 = 0;
          v32 = 0;
          if (v69.var5.var1 != v69.var5.var0)
          {
            std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v32, v69.var5.var1 - v69.var5.var0);
          }

          memset(v35, 0, sizeof(v35));
          std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v35, v69.var6.var0, v69.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v69.var6.var1 - v69.var6.var0) >> 3));
          v36 = *&v69.var7;
          v37 = *&v69.var10;
          v38 = *&v69.var12;
          [v29 addObject:{-[CIKernel _initWithReflection:](v20, "_initWithReflection:", v31)}];
          v63[0] = v35;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v63);
          v19 = v32;
          if (!v32)
          {
            goto LABEL_39;
          }

          v33 = v32;
        }
      }

      else if (v69.var0 == 1)
      {
        v21 = [CIKernel alloc];
        v55[0] = *&v69.var0;
        v55[1] = *&v69.var3;
        v57 = 0;
        v58 = 0;
        v56 = 0;
        if (v69.var5.var1 != v69.var5.var0)
        {
          std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v56, v69.var5.var1 - v69.var5.var0);
        }

        memset(v59, 0, sizeof(v59));
        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v59, v69.var6.var0, v69.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v69.var6.var1 - v69.var6.var0) >> 3));
        v60 = *&v69.var7;
        v61 = *&v69.var10;
        v62 = *&v69.var12;
        [v29 addObject:{-[CIKernel _initWithReflection:](v21, "_initWithReflection:", v55)}];
        v63[0] = v59;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v63);
        v19 = v56;
        if (!v56)
        {
          goto LABEL_39;
        }

        v57 = v56;
      }

      else
      {
        if (v69.var0 != 2)
        {
          goto LABEL_39;
        }

        v18 = [CIColorKernel alloc];
        v47[0] = *&v69.var0;
        v47[1] = *&v69.var3;
        __dst = 0;
        v50 = 0;
        v48 = 0;
        if (v69.var5.var1 != v69.var5.var0)
        {
          std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v48, v69.var5.var1 - v69.var5.var0);
        }

        memset(v51, 0, sizeof(v51));
        std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v51, v69.var6.var0, v69.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v69.var6.var1 - v69.var6.var0) >> 3));
        v52 = *&v69.var7;
        v53 = *&v69.var10;
        v54 = *&v69.var12;
        [v29 addObject:{-[CIKernel _initWithReflection:](v18, "_initWithReflection:", v47)}];
        v63[0] = v51;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v63);
        v19 = v48;
        if (!v48)
        {
          goto LABEL_39;
        }

        __dst = v48;
      }

      operator delete(v19);
LABEL_39:
      v63[0] = &v68.var6;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v63);
      if (v68.var5.var0)
      {
        v68.var5.var1 = v68.var5.var0;
        operator delete(v68.var5.var0);
      }

      goto LABEL_41;
    }

LABEL_44:
    fosl_filter_kernelpool_destroyPool(Pool);
    v23 = uselocale(v27);
    freelocale(v23);
    if (v28)
    {
      v24 = @"kernelsWithString_andMetalLibrary";
    }

    else
    {
      v24 = @"kernelsWithString";
    }

    CoreAnalytics(&cfstr_Cikernel.isa, &v24->isa, NumKernels);
    goto LABEL_49;
  }

  v26 = ci_logger_compile();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    +[CIKernel kernelsWithString:andCIKernelLibrary:messageLog:];
  }

  CIKLLibraryMaker::~CIKLLibraryMaker(&v69);
LABEL_49:
  objc_autoreleasePoolPop(v8);
  return v29;
}

+ (id)kernelsWithString:(id)string fromMetalLibraryData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v15 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString:fromMetalLibraryData", "%{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __51__CIKernel_kernelsWithString_fromMetalLibraryData___block_invoke;
  v12 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelsWithString:fromMetalLibraryData:]"))
  {
    v8 = [objc_opt_class() kernelsWithString:string andCIKernelLibrary:+[CIKernelLibrary libraryWithData:error:](CIKernelLibrary messageLog:{"libraryWithData:error:", data, 0), 0}];
  }

  else
  {
    v8 = 0;
  }

  v11(v10);
  return v8;
}

void __51__CIKernel_kernelsWithString_fromMetalLibraryData___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString:fromMetalLibraryData", "%{public}@", &v4, 0xCu);
  }
}

+ (id)kernelsWithString:(id)string messageLog:(id)log
{
  if (!check_cikl_string(string, "+[CIKernel kernelsWithString:messageLog:]"))
  {
    return 0;
  }

  v6 = objc_opt_class();

  return [v6 kernelsWithString:string andCIKernelLibrary:0 messageLog:log];
}

+ (NSArray)kernelsWithString:(NSString *)string
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v13 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString", "%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __30__CIKernel_kernelsWithString___block_invoke;
  v10 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelsWithString:]"))
  {
    v6 = [objc_opt_class() kernelsWithString:string andCIKernelLibrary:0 messageLog:0];
  }

  else
  {
    v6 = 0;
  }

  v9(v8);
  return v6;
}

void __30__CIKernel_kernelsWithString___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelsWithString", "%{public}@", &v4, 0xCu);
  }
}

+ (NSArray)kernelsWithMetalString:(NSString *)source error:(NSError *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v7))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelsWithMetalString", "%{public}@", &buf, 0xCu);
  }

  v27 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __41__CIKernel_kernelsWithMetalString_error___block_invoke;
  v30 = &unk_1E75C2AA0;
  selfCopy = self;
  v8 = [CIKernelLibrary libraryWithSource:source error:&v27];
  v9 = v8;
  if (!v8)
  {
    v17 = @"Cannot initialize a library with the provided Metal source";
    v18 = 13;
    if (!error)
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v27)
    {
      v19 = *MEMORY[0x1E696AA08];
      v33[0] = @"CINonLocalizedDescriptionKey";
      v33[1] = v19;
      *&buf = v17;
      *(&buf + 1) = v27;
      v20 = 2;
    }

    else
    {
      v33[0] = @"CINonLocalizedDescriptionKey";
      *&buf = v17;
      v20 = 1;
    }

    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v33 count:v20];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:v18 userInfo:v21];
    goto LABEL_25;
  }

  functionNames = [(CIKernelLibrary *)v8 functionNames];
  v11 = [functionNames count];
  if (!v11)
  {
    v17 = @"Cannot find a valid stitchable Metal function in the source";
    v18 = 12;
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [functionNames countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v13)
  {
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(functionNames);
        }

        v16 = [CIKernel kernelWithFunctionName:*(*(&v23 + 1) + 8 * i) fromCIKernelLibrary:v9 options:0 error:&v27];
        if (v16)
        {
          [(NSArray *)v12 addObject:v16];
        }
      }

      v13 = [functionNames countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v13);
  }

  if (![(NSArray *)v12 count])
  {
    v17 = @"Cannot find a valid Metal function in the source";
    v18 = 14;
    if (error)
    {
      goto LABEL_21;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  CoreAnalytics(&cfstr_Cikernel.isa, &cfstr_Kernelswithmet.isa, v11);
LABEL_26:
  v29(v28);
  return v12;
}

void __41__CIKernel_kernelsWithMetalString_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelsWithMetalString", "%{public}@", &v4, 0xCu);
  }
}

- (CIKernel)initWithString:(id)string
{
  if (check_cikl_string(string, "[CIKernel initWithString:]"))
  {

    return [(CIKernel *)self _initWithString:string andCIKernelLibrary:0 usingCruftCompatibility:1 isInternal:0];
  }

  else
  {

    return 0;
  }
}

+ (CIKernel)kernelWithString:(NSString *)string
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v14 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithString", "%{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __29__CIKernel_kernelWithString___block_invoke;
  v11 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelWithString:]"))
  {
    v6 = [[self alloc] initWithString:string];
    if (v6)
    {
      v7 = [objc_opt_class() description];
      CoreAnalytics(v7, &cfstr_Kernelwithstri.isa, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  v10(v9);
  return v6;
}

void __29__CIKernel_kernelWithString___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithString", "%{public}@", &v4, 0xCu);
  }
}

+ (CIKernel)kernelWithString:(id)string fromMetalLibraryData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v16 = [self description];
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithString:fromMetalLibraryData", "%{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __50__CIKernel_kernelWithString_fromMetalLibraryData___block_invoke;
  v13 = &unk_1E75C2AA0;
  selfCopy = self;
  if (check_cikl_string(string, "+[CIKernel kernelWithString:fromMetalLibraryData:]"))
  {
    if (data)
    {
      v8 = [[self alloc] _initWithString:string andCIKernelLibrary:+[CIKernelLibrary libraryWithData:error:](CIKernelLibrary usingCruftCompatibility:"libraryWithData:error:" isInternal:{data, 0), 0, 0}];
    }

    else
    {
      v8 = [self kernelWithString:string];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12(v11);
  return v9;
}

void __50__CIKernel_kernelWithString_fromMetalLibraryData___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithString:fromMetalLibraryData", "%{public}@", &v4, 0xCu);
  }
}

+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data error:(NSError *)error
{
  v8 = objc_opt_class();

  return [v8 kernelWithFunctionName:name fromMetalLibraryData:data options:0 error:error];
}

+ (CIKernel)kernelWithFunctionName:(NSString *)name fromMetalLibraryData:(NSData *)data outputPixelFormat:(CIFormat)format error:(NSError *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CI::format_modernize(*&format, "+[CIKernel kernelWithFunctionName:fromMetalLibraryData:outputPixelFormat:error:]", name);
  v10 = objc_opt_class();
  v12 = @"kCIKernelOutputFormat";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  return [v10 kernelWithFunctionName:name fromMetalLibraryData:data options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data outputGroupSize:(CGSize)size error:(id *)error
{
  v6 = ci_logger_api();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CIKernel *)v6 kernelWithFunctionName:v7 fromMetalLibraryData:v8 outputGroupSize:v9 error:v10, v11, v12, v13];
  }

  return 0;
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data constants:(id)constants error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIKernelFunctionConstants";
  v8[0] = constants;
  return [objc_opt_class() kernelWithFunctionName:name fromMetalLibraryData:data options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibraryData:(id)data options:(id)options error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v11))
  {
    *buf = 138543618;
    *&buf[4] = [self description];
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibraryData", "%{public}@ %{public}@", buf, 0x16u);
  }

  v28 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __70__CIKernel_kernelWithFunctionName_fromMetalLibraryData_options_error___block_invoke;
  v31 = &unk_1E75C20F8;
  selfCopy = self;
  nameCopy = name;
  v12 = [CIKernelLibrary libraryWithData:data error:&v28];
  if (v12)
  {
    v13 = [objc_opt_class() kernelWithFunctionName:name fromCIKernelLibrary:v12 options:options error:error];
    if (v13)
    {
      v14 = dyld_program_sdk_at_least();
      if (error)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        *error = 0;
      }
    }
  }

  else
  {
    if (error)
    {
      if (v28)
      {
        v16 = *MEMORY[0x1E696AA08];
        v35[0] = @"CINonLocalizedDescriptionKey";
        v35[1] = v16;
        *buf = @"Cannot initialize kernel with given library data.";
        *&buf[8] = v28;
        v17 = 2;
      }

      else
      {
        v35[0] = @"CINonLocalizedDescriptionKey";
        *buf = @"Cannot initialize kernel with given library data.";
        v17 = 1;
      }

      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v35 count:v17];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:6 userInfo:v18];
    }

    v19 = ci_logger_api();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v19 kernelWithFunctionName:v20 fromMetalLibraryData:v21 options:v22 error:v23, v24, v25, v26];
    }

    v13 = 0;
  }

  v30(v29);
  return v13;
}

void __70__CIKernel_kernelWithFunctionName_fromMetalLibraryData_options_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibraryData", "%{public}@ %{public}@", &v5, 0x16u);
  }
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error
{
  v8 = objc_opt_class();

  return [v8 kernelWithFunctionName:name fromMetalLibrary:library options:0 error:error];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CI::format_modernize(*&format, "+[CIKernel kernelWithFunctionName:fromMetalLibrary:outputPixelFormat:error:]", name);
  v10 = objc_opt_class();
  v12 = @"kCIKernelOutputFormat";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  return [v10 kernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIKernelFunctionConstants";
  v8[0] = constants;
  return [objc_opt_class() kernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), error}];
}

+ (CIKernel)kernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error
{
  v33[2] = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v11))
  {
    *buf = 138543618;
    *&buf[4] = [self description];
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", buf, 0x16u);
  }

  v26 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = __66__CIKernel_kernelWithFunctionName_fromMetalLibrary_options_error___block_invoke;
  v29 = &unk_1E75C20F8;
  selfCopy = self;
  nameCopy = name;
  v12 = [CIKernelLibrary libraryWithURL:library error:&v26];
  if (v12)
  {
    v13 = [objc_opt_class() kernelWithFunctionName:name fromCIKernelLibrary:v12 options:options error:error];
  }

  else
  {
    if (error)
    {
      if (v26)
      {
        v14 = *MEMORY[0x1E696AA08];
        v33[0] = @"CINonLocalizedDescriptionKey";
        v33[1] = v14;
        *buf = @"Cannot initialize kernel with given library URL.";
        *&buf[8] = v26;
        v15 = 2;
      }

      else
      {
        v33[0] = @"CINonLocalizedDescriptionKey";
        *buf = @"Cannot initialize kernel with given library URL.";
        v15 = 1;
      }

      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v33 count:v15];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:6 userInfo:v16];
    }

    v17 = ci_logger_api();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v17 kernelWithFunctionName:v18 fromMetalLibrary:v19 options:v20 error:v21, v22, v23, v24];
    }

    v13 = 0;
  }

  v28(v27);
  return v13;
}

void __66__CIKernel_kernelWithFunctionName_fromMetalLibrary_options_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", &v5, 0x16u);
  }
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library error:(id *)error
{
  v8 = objc_opt_class();

  return [v8 cachedKernelWithFunctionName:name fromMetalLibrary:library options:0 error:error];
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library outputPixelFormat:(int)format error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = CI::format_modernize(*&format, "+[CIKernel cachedKernelWithFunctionName:fromMetalLibrary:outputPixelFormat:error:]", name);
  v10 = objc_opt_class();
  v12 = @"kCIKernelOutputFormat";
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  return [v10 cachedKernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v13, &v12, 1), error}];
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library constants:(id)constants error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIKernelFunctionConstants";
  v8[0] = constants;
  return [objc_opt_class() cachedKernelWithFunctionName:name fromMetalLibrary:library options:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v8, &v7, 1), error}];
}

+ (id)cachedKernelWithFunctionName:(id)name fromMetalLibrary:(id)library options:(id)options error:(id *)error
{
  v33[2] = *MEMORY[0x1E69E9840];
  v11 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v11))
  {
    *buf = 138543618;
    *&buf[4] = [self description];
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", buf, 0x16u);
  }

  v26 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = __72__CIKernel_cachedKernelWithFunctionName_fromMetalLibrary_options_error___block_invoke;
  v29 = &unk_1E75C20F8;
  selfCopy = self;
  nameCopy = name;
  v12 = [CIKernelLibrary cachedLibraryWithURL:library error:&v26];
  if (v12)
  {
    v13 = [objc_opt_class() cachedKernelWithFunctionName:name fromCIKernelLibrary:v12 options:options error:error];
  }

  else
  {
    if (error)
    {
      if (v26)
      {
        v14 = *MEMORY[0x1E696AA08];
        v33[0] = @"CINonLocalizedDescriptionKey";
        v33[1] = v14;
        *buf = @"Cannot initialize kernel with given library URL.";
        *&buf[8] = v26;
        v15 = 2;
      }

      else
      {
        v33[0] = @"CINonLocalizedDescriptionKey";
        *buf = @"Cannot initialize kernel with given library URL.";
        v15 = 1;
      }

      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v33 count:v15];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:6 userInfo:v16];
    }

    v17 = ci_logger_api();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v17 cachedKernelWithFunctionName:v18 fromMetalLibrary:v19 options:v20 error:v21, v22, v23, v24];
    }

    v13 = 0;
  }

  v28(v27);
  return v13;
}

void __72__CIKernel_cachedKernelWithFunctionName_fromMetalLibrary_options_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) description];
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelWithFunctionName:fromMetalLibrary", "%{public}@ %{public}@", &v5, 0x16u);
  }
}

+ (CIKernel)kernelWithFunctionName:(id)name fromCIKernelLibrary:(id)library options:(id)options error:(id *)error
{
  v133 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v112 = [options objectForKeyedSubscript:@"kCIKernelFunctionConstants"];
  memset(&v129.var2, 0, 88);
  *&v129.var10 = vdupq_n_s64(1uLL);
  *&v129.var12 = 0;
  v11 = [options objectForKeyedSubscript:@"kCIKernelOutputFormat"];
  if (!CI_ENABLE_METAL_DAG())
  {
    CIKernelError(error, 7u, &cfstr_CannotInitiali_2.isa);
    v12 = ci_logger_api();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v12 kernelWithFunctionName:v13 fromCIKernelLibrary:v14 options:v15 error:v16, v17, v18, v19];
    }

    goto LABEL_7;
  }

  if (!CIKernelReflection::reflect(&v129, library, [name UTF8String], error))
  {
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  if (v112)
  {
    obj = CIKernelReflection::reflectConstants(&v129);
  }

  else
  {
    obj = 0;
  }

  intValue = [v11 intValue];
  v26 = CI::format_modernize(intValue, "+[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:]", v25);
  if (v26)
  {
    v129.var9 = v26;
  }

  if (dyld_program_sdk_at_least())
  {
    v27 = objc_opt_class();
    if (v27 == objc_opt_class() && v129.var0 == 2 && (v129.var5.var1 - v129.var5.var0) == 8)
    {
      if ((v28 = v129.var5.var0[1], *v129.var5.var0 == 8) && v28 == 8 || *v129.var5.var0 == 15 && v28 == 15)
      {
        v129.var0 = 4;
      }
    }

    v29 = objc_opt_class();
    if (v29 == objc_opt_class() && v129.var0 == 2)
    {
      CIKernelError(error, 0xCu, &cfstr_CannotInitiali_3.isa);
      v30 = ci_logger_api();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v30 kernelWithFunctionName:v31 fromCIKernelLibrary:v32 options:v33 error:v34, v35, v36, v37];
      }

      goto LABEL_7;
    }

    v38 = objc_opt_class();
    if (v38 == objc_opt_class() && v129.var0 == 3)
    {
      CIKernelError(error, 0xDu, &cfstr_CannotInitiali_4.isa);
      v39 = ci_logger_api();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v39 kernelWithFunctionName:v40 fromCIKernelLibrary:v41 options:v42 error:v43, v44, v45, v46];
      }

      goto LABEL_7;
    }

    v47 = objc_opt_class();
    if (v47 == objc_opt_class() && v129.var0 == 1)
    {
      CIKernelError(error, 0xEu, &cfstr_CannotInitiali_5.isa);
      v48 = ci_logger_api();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v48 kernelWithFunctionName:v49 fromCIKernelLibrary:v50 options:v51 error:v52, v53, v54, v55];
      }

      goto LABEL_7;
    }

    v56 = objc_opt_class();
    if (v56 == objc_opt_class() && v129.var0 == 1)
    {
      CIKernelError(error, 0xFu, &cfstr_CannotInitiali_6.isa);
      v57 = ci_logger_api();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v57 kernelWithFunctionName:v58 fromCIKernelLibrary:v59 options:v60 error:v61, v62, v63, v64];
      }

      goto LABEL_7;
    }

    v65 = objc_opt_class();
    if (v65 == objc_opt_class() && v129.var0 == 1)
    {
      CIKernelError(error, 0x10u, &cfstr_CannotInitiali_7.isa);
      v66 = ci_logger_api();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v66 kernelWithFunctionName:v67 fromCIKernelLibrary:v68 options:v69 error:v70, v71, v72, v73];
      }

      goto LABEL_7;
    }

    v74 = objc_opt_class();
    if (v74 == objc_opt_class() && v129.var0 == 2)
    {
      CIKernelError(error, 0x11u, &cfstr_CannotInitiali_8.isa);
      v75 = ci_logger_api();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v75 kernelWithFunctionName:v76 fromCIKernelLibrary:v77 options:v78 error:v79, v80, v81, v82];
      }

      goto LABEL_7;
    }

    v83 = objc_opt_class();
    if (v83 == objc_opt_class() && v129.var0 == 3)
    {
      CIKernelError(error, 0x12u, &cfstr_CannotInitiali_9.isa);
      v84 = ci_logger_api();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        [(CIKernel *)v84 kernelWithFunctionName:v85 fromCIKernelLibrary:v86 options:v87 error:v88, v89, v90, v91];
      }

      goto LABEL_7;
    }
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v92 = [obj countByEnumeratingWithState:&v125 objects:v132 count:16];
  if (v92)
  {
    v93 = *v126;
    while (2)
    {
      v94 = 0;
      do
      {
        if (*v126 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v125 + 1) + 8 * v94);
        v96 = [v112 objectForKey:v95];
        v97 = [objc_msgSend(obj objectForKeyedSubscript:{v95), "intValue"}];
        if (v97 > 0x35 || ((1 << v97) & 0x22222220010008) == 0)
        {
          if (v97 - 57 <= 0xFFFFFFC9)
          {
            CIKernelError(error, 8u, &cfstr_CannotInitiali_10.isa, v97);
            v108 = ci_logger_api();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
            }

            goto LABEL_7;
          }

          if (!v96)
          {
LABEL_86:
            CIKernelError(error, 9u, &cfstr_CannotInitiali_11.isa, v95);
            v105 = ci_logger_api();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
            }

            goto LABEL_7;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_90;
          }

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v99 = [v96 countByEnumeratingWithState:&v121 objects:v131 count:16];
          if (v99)
          {
            v109 = v93;
            errorCopy = error;
            v100 = *v122;
            v101 = 1;
            do
            {
              for (i = 0; i != v99; ++i)
              {
                if (*v122 != v100)
                {
                  objc_enumerationMutation(v96);
                }

                objc_opt_class();
                v101 &= objc_opt_isKindOfClass();
              }

              v99 = [v96 countByEnumeratingWithState:&v121 objects:v131 count:16];
            }

            while (v99);
            error = errorCopy;
            v93 = v109;
            if ((v101 & 1) == 0)
            {
LABEL_90:
              CIKernelError(error, 0xBu, &cfstr_CannotInitiali_13.isa, v95);
              v107 = ci_logger_api();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
              }

              goto LABEL_7;
            }
          }
        }

        else
        {
          if (!v96)
          {
            goto LABEL_86;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            CIKernelError(error, 0xAu, &cfstr_CannotInitiali_12.isa, v95);
            v106 = ci_logger_api();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              +[CIKernel kernelWithFunctionName:fromCIKernelLibrary:options:error:];
            }

            goto LABEL_7;
          }
        }

        ++v94;
      }

      while (v94 != v92);
      v103 = [obj countByEnumeratingWithState:&v125 objects:v132 count:16];
      v92 = v103;
      if (v103)
      {
        continue;
      }

      break;
    }
  }

  v104 = KernelKindAlloc(v129.var0);
  v113[0] = *&v129.var0;
  v113[1] = *&v129.var3;
  __dst = 0;
  v116 = 0;
  v114 = 0;
  if (v129.var5.var1 != v129.var5.var0)
  {
    std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](&v114, v129.var5.var1 - v129.var5.var0);
  }

  memset(v117, 0, sizeof(v117));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v117, v129.var6.var0, v129.var6.var1, 0xAAAAAAAAAAAAAAABLL * ((v129.var6.var1 - v129.var6.var0) >> 3));
  v118 = *&v129.var7;
  v119 = *&v129.var10;
  v120 = *&v129.var12;
  v20 = [v104 _initWithReflection:v113 constants:v112 constantTypes:obj];
  p_var6 = v117;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
  if (v114)
  {
    __dst = v114;
    operator delete(v114);
  }

LABEL_8:
  if (error)
  {
    v21 = *error;
    p_var6 = &v129.var6;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
    if (v129.var5.var0)
    {
      v129.var5.var1 = v129.var5.var0;
      operator delete(v129.var5.var0);
    }

    objc_autoreleasePoolPop(v10);
    v22 = *error;
  }

  else
  {
    p_var6 = &v129.var6;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
    if (v129.var5.var0)
    {
      v129.var5.var1 = v129.var5.var0;
      operator delete(v129.var5.var0);
    }

    objc_autoreleasePoolPop(v10);
  }

  return v20;
}

+ (NSArray)kernelNamesFromMetalLibraryData:(NSData *)data
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibraryData", &unk_19CFBCBAE, buf, 2u);
  }

  if (!data || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(NSData *)data length])
  {
    v7 = ci_logger_api();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v7 kernelNamesFromMetalLibraryData:v8, v9, v10, v11, v12, v13, v14];
    }

    goto LABEL_10;
  }

  v18 = 0;
  v5 = [CIKernelLibrary libraryWithData:data error:&v18];
  if (!v5)
  {
    v16 = ci_logger_api();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (v18)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@" = %@", v18];
      }

      else
      {
        v17 = &stru_1F1040378;
      }

      [(CIKernel *)v17 kernelNamesFromMetalLibraryData:buf];
    }

LABEL_10:
    functionNames = MEMORY[0x1E695E0F0];
    goto LABEL_11;
  }

  functionNames = [(CIKernelLibrary *)v5 functionNames];
LABEL_11:
  __44__CIKernel_kernelNamesFromMetalLibraryData___block_invoke();
  return functionNames;
}

void __44__CIKernel_kernelNamesFromMetalLibraryData___block_invoke()
{
  v0 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibraryData", &unk_19CFBCBAE, v1, 2u);
  }
}

+ (id)kernelNamesFromMetalLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibrary", &unk_19CFBCBAE, buf, 2u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = ci_logger_api();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CIKernel *)v7 kernelNamesFromMetalLibrary:v8, v9, v10, v11, v12, v13, v14];
    }

    goto LABEL_13;
  }

  v18 = 0;
  v5 = [CIKernelLibrary libraryWithURL:library error:&v18];
  if (!v5)
  {
    v15 = ci_logger_api();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (v18)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@" = %@", v18];
      }

      else
      {
        v16 = &stru_1F1040378;
      }

      [(CIKernel *)v16 kernelNamesFromMetalLibrary:buf];
    }

LABEL_13:
    functionNames = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  functionNames = [(CIKernelLibrary *)v5 functionNames];
LABEL_14:
  __40__CIKernel_kernelNamesFromMetalLibrary___block_invoke();
  return functionNames;
}

void __40__CIKernel_kernelNamesFromMetalLibrary___block_invoke()
{
  v0 = ci_signpost_log_kernel();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "kernelNamesFromMetalLibrary", &unk_19CFBCBAE, v1, 2u);
  }
}

- (BOOL)preservesOpacity
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 154);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)perservesAlpha
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 154);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setPerservesAlpha:(BOOL)alpha
{
  v11 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v5 = *(priv + 4);
  v6 = ci_logger_api();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v9 = 136446210;
      v10 = "[CIKernel setPerservesAlpha:]";
      v8 = "%{public}s is deprecated. Add __attribute__((preserves_opacity)) to the CIKL source instead.";
LABEL_6:
      _os_log_impl(&dword_19CC36000, v6, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 136446210;
    v10 = "[CIKernel setPerservesAlpha:]";
    v8 = "%{public}s is deprecated. Add [[stitchable,user_annotation(kCIPreservesOpacity)]] to the Metal source instead.";
    goto LABEL_6;
  }

  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    CI::Kernel::set_preserves_alpha(priv, alpha);
  }
}

- (BOOL)preservesRange
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 156);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setPreservesRange:(BOOL)range
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {

    CI::Kernel::set_preserves_range(priv, range);
  }
}

- (BOOL)canReduceOutputChannels
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {
    v3 = *(priv + 152);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setCanReduceOutputChannels:(BOOL)channels
{
  priv = self->_priv;
  if (CI::Kernel::num_image_arguments(priv) > 0 || (*(*priv + 72))(priv))
  {

    CI::Kernel::set_can_reduce_output_channels(priv, channels);
  }
}

- (CGSize)outputGroupSize
{
  priv = self->_priv;
  v3 = priv[15];
  v4 = priv[16];
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSString)name
{
  priv = self->_priv;
  if (priv)
  {
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:priv[3]];
  }

  else
  {
    return 0;
  }
}

- (void)setROISelector:(SEL)method
{
  priv = self->_priv;
  v4 = NSStringFromSelector(method);
  if ((atomic_load_explicit(&qword_1ED7C44C0, memory_order_acquire) & 1) == 0)
  {
    v5 = v4;
    [CIKernel setROISelector:];
    v4 = v5;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CIKernel_setROISelector___block_invoke;
  block[3] = &unk_1E75C2B18;
  block[4] = v4;
  block[5] = priv;
  dispatch_sync(_MergedGlobals_2, block);
}

- (SEL)ROISelector
{
  result = *(self->_priv + 13);
  if (result)
  {
    return NSSelectorFromString(result);
  }

  return result;
}

- (BOOL)_isValidOutputPixelFormat:(int)format
{
  v15 = *MEMORY[0x1E69E9840];
  if (format)
  {
    v4 = 0;
    while (dword_19CF278D8[v4] != format)
    {
      if (++v4 == 6)
      {
        v5 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F1040378];
        for (i = 0; i != 6; ++i)
        {
          if (i * 4)
          {
            v7 = @", kCIFormat";
          }

          else
          {
            v7 = @"kCIFormat";
          }

          [v5 appendString:v7];
          [v5 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", CI::name_for_format(dword_19CF278D8[i]))}];
        }

        v8 = ci_logger_api();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
        if (v9)
        {
          v11 = 136446466;
          v12 = CI::name_for_format(format);
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&dword_19CC36000, v8, OS_LOG_TYPE_INFO, "kCIKernelOutputFormat value (%{public}s) is not supported.Use one of these formats instead: %@", &v11, 0x16u);
          LOBYTE(v9) = 0;
        }

        return v9;
      }
    }
  }

  LOBYTE(v9) = 1;
  return v9;
}

- (int)_outputFormatUsingDictionary:(id)dictionary andKernel:(void *)kernel
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(dictionary objectForKey:{@"kCIKernelOutputFormat", "longValue"}];
  v7 = [(CIKernel *)self _isValidOutputPixelFormat:v6];
  v8 = *(kernel + 28);
  if (!v7 || v6 == 0)
  {
    if (!v8 || ![(CIKernel *)self _isValidOutputPixelFormat:*(kernel + 28)])
    {
      return 0;
    }
  }

  else
  {
    if (v8)
    {
      if (v8 != v6)
      {
        v11 = ci_logger_api();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = CI::name_for_format(v6);
          v13 = CI::name_for_format(*(kernel + 28));
          v14 = 136446466;
          v15 = v12;
          v16 = 2080;
          v17 = v13;
          _os_log_impl(&dword_19CC36000, v11, OS_LOG_TYPE_INFO, "Warning: specified a kernel attribute output format of %{public}s and apply option kCIKernelOutputFormat of %s. The former will be used.", &v14, 0x16u);
        }
      }
    }

    v8 = v6;
  }

  if (v8 == 264)
  {
    return 266;
  }

  else
  {
    return v8;
  }
}

- (id)applyWithExtent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments options:(id)options
{
  v29 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(extent))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    priv = self->_priv;
    v11 = [arguments count];
    if (CI::Kernel::num_apply_arguments(priv) == v11)
    {
      callbackCopy = callback;
      if (v11 < 1)
      {
LABEL_24:
        operator new();
      }

      v12 = 0;
      while (1)
      {
        if (*(priv + 12) == 1)
        {
          type = CI::KernelArguments::get_type((priv + 17), v12);
        }

        else if (v12 >= *(priv + 5))
        {
          type = 0;
        }

        else
        {
          type = *(priv[8] + 4 * v12);
        }

        if (*(*priv + 72))(priv) && !priv[4] && (type == 15 || type == 8) && ([arguments objectAtIndexedSubscript:{v12, callbackCopy}], objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          CI::Kernel::set_argument_type(priv, v12, 1);
          CI::Kernel::set_half_color_inputs(priv, type == 15);
        }

        else if ((verify_argument_type([arguments objectAtIndexedSubscript:{v12, callbackCopy}], type, 0) & 1) == 0)
        {
          v15 = ci_logger_api();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = priv[3];
            v17 = expected_argument_type(type);
            [arguments objectAtIndexedSubscript:v12];
            __src = 136447234;
            __src_4 = "[CIKernel applyWithExtent:roiCallback:arguments:options:]";
            v21 = 2082;
            v22 = v16;
            v23 = 1024;
            v24 = v12;
            v25 = 2082;
            v26 = v17;
            v27 = 2114;
            v28 = [objc_opt_class() description];
            _os_log_error_impl(&dword_19CC36000, v15, OS_LOG_TYPE_ERROR, "%{public}s type mismatch for kernel '%{public}s' parameter %d. %{public}sGot %{public}@.", &__src, 0x30u);
          }

          return 0;
        }

        if ((v11 & 0x7FFFFFFF) == ++v12)
        {
          goto LABEL_24;
        }
      }
    }

    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CIKernel applyWithExtent:? roiCallback:? arguments:? options:?];
    }

    return 0;
  }
}

+ (id)colorMatrixBiasKernel
{
  v2 = [(CIKernel *)[CIColorKernel alloc] _initWithInternalRepresentation:&CI::_ci_colormatrix_canonical];

  return v2;
}

- (id)parameters
{
  v42[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v3 = CI::Kernel::num_apply_arguments(priv);
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3 >= 1)
  {
    for (i = 0; v3 != i; ++i)
    {
      if (priv[12] == 1)
      {
        type = CI::KernelArguments::get_type((priv + 136), i);
        if (priv[12])
        {
          if (!CI::KernelArguments::get_name((priv + 136), i))
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      else if (i >= *(priv + 5))
      {
        type = 0;
      }

      else
      {
        type = *(*(priv + 8) + 4 * i);
      }

      if (i >= *(priv + 5) || !*(*(priv + 9) + 8 * i))
      {
LABEL_13:
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_arg%d", i];
        goto LABEL_14;
      }

LABEL_12:
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
LABEL_14:
      switch(type)
      {
        case 1:
        case 2:
        case 3:
          v41[0] = @"CIAttributeClass";
          v41[1] = @"CIAttributeName";
          v42[0] = @"CISampler";
          v42[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v42;
          v10 = v41;
          goto LABEL_31;
        case 4:
          v39[0] = @"CIAttributeClass";
          v39[1] = @"CIAttributeName";
          v40[0] = @"Sampler2D";
          v40[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v40;
          v10 = v39;
          goto LABEL_31;
        case 5:
        case 12:
        case 19:
        case 23:
          v37[0] = @"CIAttributeClass";
          v37[1] = @"CIAttributeName";
          v38[0] = @"NSNumber";
          v38[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v38;
          v10 = v37;
          goto LABEL_31;
        case 6:
        case 13:
          v35[0] = @"CIAttributeClass";
          v35[1] = @"CIVectorSize";
          v36[0] = @"CIVector";
          v36[1] = &unk_1F1081E30;
          v35[2] = @"CIAttributeName";
          v36[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v36;
          v10 = v35;
          goto LABEL_29;
        case 7:
        case 14:
          v31[0] = @"CIAttributeClass";
          v31[1] = @"CIVectorSize";
          v32[0] = @"CIVector";
          v32[1] = &unk_1F1081E48;
          v31[2] = @"CIAttributeName";
          v32[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v32;
          v10 = v31;
          goto LABEL_29;
        case 8:
        case 15:
          v27[0] = @"CIAttributeClass";
          v27[1] = @"CIVectorSize";
          v28[0] = @"CIVector";
          v28[1] = &unk_1F1081E60;
          v27[2] = @"CIAttributeName";
          v28[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v28;
          v10 = v27;
          goto LABEL_29;
        case 9:
        case 16:
          v23[0] = @"CIAttributeClass";
          v23[1] = @"CIVectorSize";
          v24[0] = @"CIVector";
          v24[1] = &unk_1F1081E60;
          v23[2] = @"CIAttributeName";
          v24[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v24;
          v10 = v23;
          goto LABEL_29;
        case 10:
        case 17:
          v21[0] = @"CIAttributeClass";
          v21[1] = @"CIVectorSize";
          v22[0] = @"CIVector";
          v22[1] = &unk_1F1081E78;
          v21[2] = @"CIAttributeName";
          v22[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v22;
          v10 = v21;
          goto LABEL_29;
        case 11:
        case 18:
          v19[0] = @"CIAttributeClass";
          v19[1] = @"CIVectorSize";
          v20[0] = @"CIVector";
          v20[1] = &unk_1F1081E90;
          v19[2] = @"CIAttributeName";
          v20[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v20;
          v10 = v19;
          goto LABEL_29;
        case 20:
        case 24:
          v33[0] = @"CIAttributeClass";
          v33[1] = @"NSArrayCount";
          v34[0] = @"NSArray";
          v34[1] = &unk_1F1081E30;
          v33[2] = @"CIAttributeName";
          v34[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v34;
          v10 = v33;
          goto LABEL_29;
        case 21:
        case 25:
          v29[0] = @"CIAttributeClass";
          v29[1] = @"NSArrayCount";
          v30[0] = @"NSArray";
          v30[1] = &unk_1F1081E48;
          v29[2] = @"CIAttributeName";
          v30[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v30;
          v10 = v29;
          goto LABEL_29;
        case 22:
        case 26:
          v25[0] = @"CIAttributeClass";
          v25[1] = @"NSArrayCount";
          v26[0] = @"NSArray";
          v26[1] = &unk_1F1081E60;
          v25[2] = @"CIAttributeName";
          v26[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v26;
          v10 = v25;
          goto LABEL_29;
        case 27:
          v17[0] = @"CIAttributeClass";
          v17[1] = @"CIVectorSize";
          v18[0] = @"CIColor";
          v18[1] = &unk_1F1081E60;
          v17[2] = @"CIAttributeName";
          v18[2] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v18;
          v10 = v17;
LABEL_29:
          v11 = 3;
          break;
        case 28:
        case 29:
          v15[0] = @"CIAttributeClass";
          v15[1] = @"CIAttributeName";
          v16[0] = @"NSData";
          v16[1] = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = v16;
          v10 = v15;
LABEL_31:
          v11 = 2;
          break;
        default:
          v13 = @"CIAttributeName";
          v14 = v7;
          v8 = MEMORY[0x1E695DF20];
          v9 = &v14;
          v10 = &v13;
          v11 = 1;
          break;
      }

      [v4 addObject:{objc_msgSend(v8, "dictionaryWithObjects:forKeys:count:", v9, v10, v11)}];
    }
  }

  return v4;
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__CIKernel_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __28__CIKernel_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = (*(*v4 + 72))(v4);
  v6 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p>", v6, *(a1 + 32));
  if ([*(a1 + 32) name])
  {
    fprintf(a2, "\n    name: %s", [objc_msgSend(*(a1 + 32) "name")]);
  }

  if (v5)
  {
    fwrite("\n    metal", 0xAuLL, 1uLL, a2);
    if (*(v5 + 48) == 1)
    {
      fwrite(" stitchable", 0xBuLL, 1uLL, a2);
    }
  }

  if (*(v4 + 158) == 1)
  {
    fwrite("\n    positionInvariant", 0x16uLL, 1uLL, a2);
  }

  if ([*(a1 + 32) preservesRange])
  {
    fwrite("\n    preservesRange", 0x13uLL, 1uLL, a2);
  }

  if ([*(a1 + 32) preservesOpacity])
  {
    fwrite("\n    preservesOpacity", 0x15uLL, 1uLL, a2);
  }

  if ([*(a1 + 32) canReduceOutputChannels])
  {
    fwrite("\n    canReduceOutputChannels", 0x1CuLL, 1uLL, a2);
  }

  v7 = [objc_msgSend(*(a1 + 32) "parameters")];
  v25 = v4;
  if (v7)
  {
    fwrite("\n    arguments: (", 0x11uLL, 1uLL, a2);
    if (v7 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [objc_msgSend(*(a1 + 32) "parameters")];
        v10 = [v9 objectForKeyedSubscript:@"CIAttributeName"];
        v11 = [v9 objectForKeyedSubscript:@"CIAttributeClass"];
        v12 = [v9 objectForKeyedSubscript:@"CIVectorSize"];
        [v11 UTF8String];
        if (v12)
        {
          [v12 intValue];
          [v10 UTF8String];
          fprintf(a2, "%s%s len%d %s");
        }

        else
        {
          [v10 UTF8String];
          fprintf(a2, "%s%s %s");
        }

        ++v8;
      }

      while ((v7 & 0x7FFFFFFF) != v8);
    }

    fputc(41, a2);
    v4 = v25;
  }

  v13 = (*(*v4 + 40))(v4);
  if ([v13 count])
  {
    fwrite("\n    constants: (", 0x11uLL, 1uLL, a2);
    v14 = [v13 keysSortedByValueUsingSelector:sel_compare_];
    if ([v13 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        v17 = [v13 objectForKeyedSubscript:v16];
        v18 = a2;
        if (v15)
        {
          v19 = ", ";
        }

        else
        {
          v19 = "";
        }

        v20 = [v16 UTF8String];
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = "unknown";
        }

        v24 = v19;
        a2 = v18;
        fprintf(v18, "%s%s = %s", v24, v21, [objc_msgSend(v17 "description")]);
        ++v15;
      }

      while (v15 < [v13 count]);
    }

    fputc(41, a2);
    v4 = v25;
  }

  result = v4[28];
  if (result)
  {
    v23 = CI::name_for_format(result);
    return fprintf(a2, "\n    output: %s", v23);
  }

  return result;
}

+ (id)SDOFV2MetalKernelNamed:(id)named
{
  if (SDOFV2MetalLibURL::onceToken != -1)
  {
    SDOFV2MetalLibURL_cold_1();
  }

  if (!SDOFV2MetalLibURL::url)
  {
    return 0;
  }

  return [CIKernel cachedKernelWithFunctionName:"cachedKernelWithFunctionName:fromMetalLibrary:error:" fromMetalLibrary:named error:?];
}

+ (id)SDOFV3MetalKernelNamed:(id)named
{
  if (SDOFV3MetalLibURL::onceToken != -1)
  {
    +[CIKernel(SDOF) SDOFV3MetalKernelNamed:];
  }

  if (!SDOFV3MetalLibURL::url)
  {
    return 0;
  }

  return [CIKernel cachedKernelWithFunctionName:"cachedKernelWithFunctionName:fromMetalLibrary:error:" fromMetalLibrary:named error:?];
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  _os_log_debug_impl(&dword_19CC36000, v0, OS_LOG_TYPE_DEBUG, "WARNING: CoreImage internal function name %{public}s must start with '_'\n", v1, 0xCu);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIWarpKernel kernelWithString:fromMetalLibraryData:] Function '%{public}s' does not conform to the calling conventions of a CIWarpKernel.", v2, v3, v4, v5, v6);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIColorKernel kernelWithString:fromMetalLibraryData:] Function '%{public}s' does not conform to the calling conventions of a CIColorKernel.", v2, v3, v4, v5, v6);
}

- (void)_initWithString:(uint64_t)a1 andCIKernelLibrary:(uint64_t)a2 usingCruftCompatibility:isInternal:.cold.4(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.5()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIColorKernel kernelWithString:] failed because '%{public}s', the first kernel in the string, does not conform to the calling convensions of a CIColorKernel.", v2, v3, v4, v5, v6);
}

- (void)_initWithString:andCIKernelLibrary:usingCruftCompatibility:isInternal:.cold.6()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "[CIWarpKernel kernelWithString:] failed because '%{public}s', the first kernel in the string, does not conform to the calling convensions of a CIWarpKernel.", v2, v3, v4, v5, v6);
}

- (void)_initWithString:(uint64_t)a1 andCIKernelLibrary:(uint64_t)a2 usingCruftCompatibility:isInternal:.cold.7(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initWithString:(uint64_t)a1 andCIKernelLibrary:(uint64_t)a2 usingCruftCompatibility:isInternal:.cold.8(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)kernelsWithString:andCIKernelLibrary:messageLog:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)kernelWithFunctionName:fromCIKernelLibrary:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)kernelWithFunctionName:fromCIKernelLibrary:options:error:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)kernelWithFunctionName:fromCIKernelLibrary:options:error:.cold.3()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)kernelNamesFromMetalLibraryData:(uint64_t)a1 .cold.1(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_14(a1, a2, "+[CIKernel kernelNamesFromMetalLibraryData:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)kernelNamesFromMetalLibrary:(uint64_t)a1 .cold.2(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_14(a1, a2, "+[CIKernel kernelNamesFromMetalLibrary:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setROISelector:.cold.1()
{
  if (__cxa_guard_acquire(&qword_1ED7C44C0))
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    _MergedGlobals_2 = dispatch_queue_create("CI::SetROISelectorQueue", v0);

    __cxa_guard_release(&qword_1ED7C44C0);
  }
}

- (void)applyWithExtent:(CI::Kernel *)a1 roiCallback:arguments:options:.cold.1(CI::Kernel *a1)
{
  CI::Kernel::num_apply_arguments(a1);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_0(&dword_19CC36000, v1, v2, "%{public}s argument count mismatch for kernel '%{public}s', expected %d but saw %d.", v3, v4, v5, v6, 2u);
}

@end