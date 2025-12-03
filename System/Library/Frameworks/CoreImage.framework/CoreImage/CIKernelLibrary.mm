@interface CIKernelLibrary
+ (id)cache;
+ (id)cachedLibraryWithURL:(id)l error:(id *)error;
+ (id)coreImageDylibWithDevice:(id)device;
+ (id)internalBinaryArchiveWithName:(id)name device:(id)device;
+ (id)internalLibraryWithName:(id)name device:(id)device;
+ (id)libraryWithData:(id)data error:(id *)error;
+ (id)libraryWithSource:(id)source error:(id *)error;
+ (id)libraryWithURL:(id)l error:(id *)error;
+ (void)clearCache;
- (CIKernelLibrary)initWithData:(id)data error:(id *)error;
- (CIKernelLibrary)initWithSource:(id)source error:(id *)error;
- (CIKernelLibrary)initWithURL:(id)l error:(id *)error;
- (id)functionNames;
- (id)functionWithName:(id)name;
- (id)newFunctionWithName:(id)name;
- (id)newSpecializedFunctionWithDescriptor:(id)descriptor;
- (id)newSpecializedFunctionWithName:(id)name constants:(void *)constants;
- (id)refelectionWithFunctionName:(id)name;
- (unint64_t)functionCount;
- (void)dealloc;
@end

@implementation CIKernelLibrary

+ (id)libraryWithData:(id)data error:(id *)error
{
  v4 = [[self alloc] initWithData:data error:error];

  return v4;
}

+ (id)libraryWithURL:(id)l error:(id *)error
{
  v4 = [[self alloc] initWithURL:l error:error];

  return v4;
}

+ (id)cache
{
  if (+[CIKernelLibrary cache]::onceToken != -1)
  {
    +[CIKernelLibrary cache];
  }

  return +[CIKernelLibrary cache]::cache;
}

id __24__CIKernelLibrary_cache__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  +[CIKernelLibrary cache]::cache = result;
  return result;
}

+ (void)clearCache
{
  cache = [self cache];
  objc_sync_enter(cache);
  [cache removeAllObjects];

  objc_sync_exit(cache);
}

+ (id)cachedLibraryWithURL:(id)l error:(id *)error
{
  cache = [self cache];
  absoluteString = [l absoluteString];
  objc_sync_enter(cache);
  v9 = [cache objectForKey:absoluteString];
  null = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v15 = 0;
    v12 = [[self alloc] initWithURL:l error:&v15];
    if (v12)
    {
      null = v12;
    }

    else
    {
      null = v15;
    }

    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cache setObject:null forKey:absoluteString];
  }

  objc_sync_exit(cache);
  if (null == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return null;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0;
  if (error)
  {
    if (isKindOfClass)
    {
      result = 0;
      *error = null;
    }
  }

  return result;
}

+ (id)libraryWithSource:(id)source error:(id *)error
{
  v4 = [[self alloc] initWithSource:source error:error];

  return v4;
}

- (CIKernelLibrary)initWithSource:(id)source error:(id *)error
{
  v31[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CIKernelLibrary;
  v6 = [(CIKernelLibrary *)&v22 init];
  v6->_harvest_for_this_library = 1;
  v6->_mtl_source = source;
  v7 = CIMetalCopyDefaultDevice();
  if (CIMetalDeviceIsSupported(v7, v8))
  {
    v23 = 0;
    v9 = objc_opt_new();
    [v9 setLibraryType:0];
    [v9 setCompileTimeStatisticsEnabled:1];
    [v9 setLanguageVersion:0x40000];
    [v9 setAdditionalCompilerArguments:@"-w -D_BUILDING_CORE_IMAGE_LIB_ -D__BUILDING_RUNTIME_COMPILE_HEADER__"];
    if (newMTLLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,NSError **)::onceToken != -1)
    {
      [CIKernelLibrary initWithSource:error:];
    }

    v10 = [objc_msgSend(MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\\\\\n" options:0 error:{0), "stringByReplacingMatchesInString:options:range:withTemplate:", source, 0, 0, objc_msgSend(source, "length"), &stru_1F1040378}];
    v11 = [objc_msgSend(MEMORY[0x1E696AE70] regularExpressionWithPattern:@"#[ \\t]*(include|import)[ \\t]+(<|\" options:0 error:{0), "stringByReplacingMatchesInString:options:range:withTemplate:", v10, 0, 0, objc_msgSend(v10, "length""), &stru_1F1040378}];
    v12 = [v7 newLibraryWithSource:objc_msgSend(newMTLLibraryWithSource(objc_object  {objcproto9MTLDevice}* options:NSString * error:{NSError **)::_runtime_header, "stringByAppendingString:", v11), v9, &v23}];

    if (v12)
    {
      v6->_library = v12;
      [(CIKernelLibrary *)v6 initFunctionNames];
      goto LABEL_19;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = MEMORY[0x1E696AA08];
    if (v23)
    {
      v16 = *MEMORY[0x1E696AA08];
      v31[0] = @"CINonLocalizedDescriptionKey";
      v31[1] = v16;
      v24[0].i64[0] = @"Failed compiling provided Metal source, could not initialize kernel library";
      v24[0].i64[1] = v23;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v31 count:2];
    }

    else
    {
      v29 = @"CINonLocalizedDescriptionKey";
      v30 = @"Failed compiling provided Metal source, could not initialize kernel library";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    }

    v18 = [v14 errorWithDomain:@"CIKernelLibrary" code:3 userInfo:v17];
    v19 = ci_logger_compile();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_19CC36000, v19, OS_LOG_TYPE_INFO, "Could not initialize kernel library with Metal source: %{public}@", buf, 0xCu);
    }

    v6->_library = 0;
    if (error && v18)
    {
      v20 = *v15;
      v25[0] = @"CINonLocalizedDescriptionKey";
      v25[1] = v20;
      v26[0] = @"Could not initialize kernel library.";
      v26[1] = v18;
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v26, v25, 2)}];
    }

    else
    {
      if (!error)
      {
        goto LABEL_19;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F10827F8];
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082820];
  }

  *error = v13;
LABEL_19:

  if (v6->_library)
  {
    XXH64_reset(v24, 0);
    CI::XXHashHelper::addstr(v24, [source UTF8String]);
    v6->_digest = XXH64_digest(v24);
  }

  else
  {

    return 0;
  }

  return v6;
}

- (CIKernelLibrary)initWithData:(id)data error:(id *)error
{
  v22[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CIKernelLibrary;
  v6 = [(CIKernelLibrary *)&v20 init];
  v6->_harvest_for_this_library = 1;
  dataCopy = data;
  bytes = [data bytes];
  v9 = [data length];
  destructor[0] = MEMORY[0x1E69E9820];
  destructor[1] = 3221225472;
  destructor[2] = __38__CIKernelLibrary_initWithData_error___block_invoke;
  destructor[3] = &unk_1E75C2AA0;
  destructor[4] = data;
  v6->_data = dispatch_data_create(bytes, v9, 0, destructor);
  v10 = CIMetalCopyDefaultDevice();
  if (CIMetalDeviceIsSupported(v10, v11))
  {
    v18[0].i64[0] = 0;
    v12 = [v10 newLibraryWithData:v6->_data error:v18];
    v6->_library = v12;
    if (v12)
    {
      [(CIKernelLibrary *)v6 initFunctionNames];
      goto LABEL_12;
    }

    if (error && v18[0].i64[0])
    {
      v14 = *MEMORY[0x1E696AA08];
      v21[0] = @"CINonLocalizedDescriptionKey";
      v21[1] = v14;
      v22[0] = @"Could not initialize kernel library.";
      v22[1] = v18[0].i64[0];
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, 2)}];
    }

    else
    {
      if (!error)
      {
        goto LABEL_12;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082848];
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082870];
  }

  *error = v13;
LABEL_12:

  if (v6->_library)
  {
    XXH64_reset(v18, 0);
    bytes2 = [data bytes];
    v16 = [data length];
    if (bytes2 && v16)
    {
      XXH64_update(v18, bytes2, v16);
    }

    v6->_digest = XXH64_digest(v18);
  }

  else
  {

    return 0;
  }

  return v6;
}

- (CIKernelLibrary)initWithURL:(id)l error:(id *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CIKernelLibrary;
  v6 = [(CIKernelLibrary *)&v15 init];
  v6->_harvest_for_this_library = 1;
  v6->_url = l;
  v7 = CIMetalCopyDefaultDevice();
  if (CIMetalDeviceIsSupported(v7, v8))
  {
    v14[0].i64[0] = 0;
    v9 = [v7 newLibraryWithURL:l error:v14];
    v6->_library = v9;
    if (v9)
    {
      [(CIKernelLibrary *)v6 initFunctionNames];
      goto LABEL_12;
    }

    if (error && v14[0].i64[0])
    {
      v11 = *MEMORY[0x1E696AA08];
      v16[0] = @"CINonLocalizedDescriptionKey";
      v16[1] = v11;
      v17[0] = @"Could not initialize kernel library.";
      v17[1] = v14[0].i64[0];
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, v16, 2)}];
    }

    else
    {
      if (!error)
      {
        goto LABEL_12;
      }

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082898];
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F10828C0];
  }

  *error = v10;
LABEL_12:

  if (v6->_library)
  {
    XXH64_reset(v14, 0);
    CI::XXHashHelper::add(v14, [l absoluteString]);
    v6->_digest = XXH64_digest(v14);
    if (CI_HARVESTING_SPECIFIC_LIBRARY_LIST())
    {
      v12 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:CI_HARVESTING_SPECIFIC_LIBRARY_LIST() encoding:{1), "containsString:", -[NSURL lastPathComponent](v6->_url, "lastPathComponent")}];
      if (!((CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE() != 3) | v12 & 1) || ((CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE() == 4) & v12) == 1)
      {
        v6->_harvest_for_this_library = 0;
      }
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    dispatch_release(data);
  }

  extern_function_names = self->_extern_function_names;
  if (extern_function_names)
  {
  }

  stitchable_function_names = self->_stitchable_function_names;
  if (stitchable_function_names)
  {
  }

  v6.receiver = self;
  v6.super_class = CIKernelLibrary;
  [(CIKernelLibrary *)&v6 dealloc];
}

- (unint64_t)functionCount
{
  result = [-[MTLLibrary externFunctionNames](self->_library "externFunctionNames")];
  if (!result)
  {
    stitchable_function_names = self->_stitchable_function_names;

    return [(NSSet *)stitchable_function_names count];
  }

  return result;
}

- (id)functionNames
{
  externFunctionNames = [(MTLLibrary *)self->_library externFunctionNames];
  if ([externFunctionNames count])
  {
    return externFunctionNames;
  }

  library = self->_library;

  return [(MTLLibrary *)library functionNames];
}

- (id)refelectionWithFunctionName:(id)name
{
  v5 = NSSelectorFromString(&cfstr_Reflectionforf.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  library = self->_library;

  return [(MTLLibrary *)library performSelector:v5 withObject:name];
}

- (id)functionWithName:(id)name
{
  v5 = [(NSSet *)self->_extern_function_names containsObject:?];
  library = self->_library;
  if (v5)
  {
    v7 = [(MTLLibrary *)library newExternFunctionWithName:name];
  }

  else
  {
    v7 = [(MTLLibrary *)library newFunctionWithName:name];
  }

  return v7;
}

- (id)newFunctionWithName:(id)name
{
  v5 = [(NSSet *)self->_extern_function_names containsObject:?];
  library = self->_library;
  if (v5)
  {

    return [(MTLLibrary *)library newExternFunctionWithName:name];
  }

  else
  {

    return [(MTLLibrary *)library newFunctionWithName:name];
  }
}

- (id)newSpecializedFunctionWithDescriptor:(id)descriptor
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (self->_harvest_for_this_library && CI_HARVEST_BIN_ARCHIVE() == 1 && CI_HARVEST_SPECIALIZED_MTL_FUNCTIONS())
  {
    v5 = CI_HARVEST_PROCESS_NAME_LIST();
    if (!v5)
    {
      goto LABEL_8;
    }

    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___ZL26isHarvestingForThisProcessv_block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0l;
    descriptorCopy = v5;
    if (isHarvestingForThisProcess(void)::onceToken != -1)
    {
      dispatch_once(&isHarvestingForThisProcess(void)::onceToken, block);
    }

    if (isHarvestingForThisProcess(void)::isListed == 1)
    {
LABEL_8:
      library = self->_library;
      v7 = CIMetalCopyDefaultDevice();
      if ((CIMetalDeviceIsSupported(v7, v8) & 1) == 0)
      {
        [CIKernelLibrary newSpecializedFunctionWithDescriptor:];
      }

      v9 = CIGetHarvestingBinaryArchiveDict(v7);
      v10 = [v9 objectForKeyedSubscript:@"bin"];
      v11 = [v9 objectForKeyedSubscript:@"queue"];
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = ___ZL37addSpecializedFunctionToBinaryArchiveP21MTLFunctionDescriptorPU21objcproto10MTLLibrary11objc_object_block_invoke;
      v21 = &unk_1E75C3640;
      descriptorCopy = descriptor;
      v23 = v10;
      v24 = library;
      dispatch_sync(v11, block);
    }
  }

  if ((CI_LOG_BIN_ARCHIVE_MISS() & 8) != 0)
  {
    [descriptor setOptions:{4, 0}];
    v12 = [(MTLLibrary *)self->_library newFunctionWithDescriptor:descriptor error:&v18];
    [descriptor setOptions:0];
    if (v12)
    {
      return v12;
    }

    v13 = ci_logger_compile();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      name = [descriptor name];
      *block = 138543362;
      *&block[4] = name;
      _os_log_impl(&dword_19CC36000, v13, OS_LOG_TYPE_INFO, "Failed finding %{public}@ stitchable function in the archive", block, 0xCu);
    }

    if (CI_LOG_BIN_ARCHIVE_MISS())
    {
      abort();
    }
  }

  v12 = [(MTLLibrary *)self->_library newFunctionWithDescriptor:descriptor error:&v19];
  if (v19)
  {
    v15 = ci_logger_compile();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      name2 = [descriptor name];
      *block = 138543618;
      *&block[4] = name2;
      *&block[12] = 2114;
      *&block[14] = v19;
      _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_INFO, "Failed creating %{public}@ function from library %{public}@", block, 0x16u);
    }
  }

  return v12;
}

- (id)newSpecializedFunctionWithName:(id)name constants:(void *)constants
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v4 = [(MTLLibrary *)self->_library newFunctionWithName:name constantValues:constants error:&v7];
  if (v7)
  {
    v5 = ci_logger_compile();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v9 = v7;
      _os_log_impl(&dword_19CC36000, v5, OS_LOG_TYPE_INFO, "Failed creating function from library %{public}@", buf, 0xCu);
    }
  }

  return v4;
}

+ (id)internalLibraryWithName:(id)name device:(id)device
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", name, @"metallib"}];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [device newLibraryWithURL:v6 error:&v12];
  if (v12)
  {
    v9 = ci_logger_compile();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      path = [v7 path];
      *buf = 138543874;
      nameCopy = name;
      v15 = 2114;
      v16 = path;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_INFO, "Failed loading internal library: %{public}@ from %{public}@: %{public}@\n", buf, 0x20u);
    }
  }

  return v8;
}

+ (id)coreImageDylibWithDevice:(id)device
{
  if (![device supportsDynamicLibraries])
  {
    return 0;
  }

  v5 = objc_opt_new();
  temporaryDirectory = [v5 temporaryDirectory];
  v7 = [temporaryDirectory URLByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"coreimage_%@", objc_msgSend(device, "name"))}];
  if (+[CIKernelLibrary(Internal) coreImageDylibWithDevice:]::once_token != -1)
  {
    +[CIKernelLibrary(Internal) coreImageDylibWithDevice:];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CIKernelLibrary_Internal__coreImageDylibWithDevice___block_invoke_102;
  block[3] = &unk_1E75C6168;
  block[4] = v5;
  block[5] = v7;
  block[7] = self;
  block[8] = &v11;
  block[6] = device;
  dispatch_sync(+[CIKernelLibrary(Internal) coreImageDylibWithDevice:]::q, block);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

dispatch_queue_t __54__CIKernelLibrary_Internal__coreImageDylibWithDevice___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("CILoadCIDylibQ", v0);
  +[CIKernelLibrary(Internal) coreImageDylibWithDevice:]::q = result;
  return result;
}

void __54__CIKernelLibrary_Internal__coreImageDylibWithDevice___block_invoke_102(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if ([*(a1 + 32) fileExistsAtPath:{objc_msgSend(*(a1 + 40), "path")}])
  {
    *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 48) newDynamicLibraryWithURL:*(a1 + 40) error:&v9];
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v2 = ci_logger_compile();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = [*(a1 + 40) path];
        *buf = 138543618;
        v11 = v3;
        v12 = 2114;
        v13 = v9;
        _os_log_impl(&dword_19CC36000, v2, OS_LOG_TYPE_INFO, "Failed loading serialized CoreImage.metallib from %{public}@: %{public}@\n", buf, 0x16u);
      }
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", @"CoreImage", @"metallib"}];
    v5 = v4;
    if (v4)
    {
      v4 = [*(a1 + 48) newDynamicLibraryWithURL:v4 error:&v9];
    }

    *(*(*(a1 + 64) + 8) + 40) = v4;
    v6 = *(*(*(a1 + 64) + 8) + 40);
    if (v6)
    {
      [v6 serializeToURL:*(a1 + 40) error:&v9];
    }

    else
    {
      v7 = ci_logger_compile();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 path];
        *buf = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v9;
        _os_log_impl(&dword_19CC36000, v7, OS_LOG_TYPE_INFO, "Failed loading CoreImage.metallib from %{public}@: %{public}@\n", buf, 0x16u);
      }
    }
  }
}

+ (id)internalBinaryArchiveWithName:(id)name device:(id)device
{
  v11 = 0;
  v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", name, @"metallib"}];
  v6 = objc_opt_new();
  [v6 setUrl:v5];
  if (v5 && [MEMORY[0x1E69741F0] archiveTypeAtURL:v5 device:device error:&v11] == 2)
  {
    v7 = [device newBinaryArchiveWithDescriptor:v6 error:&v11];
    if (v11)
    {
      v8 = ci_logger_compile();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CIKernelLibrary(Internal) internalBinaryArchiveWithName:v5 device:?];
      }
    }
  }

  else
  {
    v9 = ci_logger_compile();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CIKernelLibrary(Internal) internalBinaryArchiveWithName:v5 device:?];
    }

    v7 = 0;
  }

  return v7;
}

@end