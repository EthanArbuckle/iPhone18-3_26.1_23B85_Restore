@interface CIKernelLibrary
+ (id)cache;
+ (id)cachedLibraryWithURL:(id)a3 error:(id *)a4;
+ (id)coreImageDylibWithDevice:(id)a3;
+ (id)internalBinaryArchiveWithName:(id)a3 device:(id)a4;
+ (id)internalLibraryWithName:(id)a3 device:(id)a4;
+ (id)libraryWithData:(id)a3 error:(id *)a4;
+ (id)libraryWithSource:(id)a3 error:(id *)a4;
+ (id)libraryWithURL:(id)a3 error:(id *)a4;
+ (void)clearCache;
- (CIKernelLibrary)initWithData:(id)a3 error:(id *)a4;
- (CIKernelLibrary)initWithSource:(id)a3 error:(id *)a4;
- (CIKernelLibrary)initWithURL:(id)a3 error:(id *)a4;
- (id)functionNames;
- (id)functionWithName:(id)a3;
- (id)newFunctionWithName:(id)a3;
- (id)newSpecializedFunctionWithDescriptor:(id)a3;
- (id)newSpecializedFunctionWithName:(id)a3 constants:(void *)a4;
- (id)refelectionWithFunctionName:(id)a3;
- (unint64_t)functionCount;
- (void)dealloc;
@end

@implementation CIKernelLibrary

+ (id)libraryWithData:(id)a3 error:(id *)a4
{
  v4 = [[a1 alloc] initWithData:a3 error:a4];

  return v4;
}

+ (id)libraryWithURL:(id)a3 error:(id *)a4
{
  v4 = [[a1 alloc] initWithURL:a3 error:a4];

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
  v2 = [a1 cache];
  objc_sync_enter(v2);
  [v2 removeAllObjects];

  objc_sync_exit(v2);
}

+ (id)cachedLibraryWithURL:(id)a3 error:(id *)a4
{
  v7 = [a1 cache];
  v8 = [a3 absoluteString];
  objc_sync_enter(v7);
  v9 = [v7 objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v15 = 0;
    v12 = [[a1 alloc] initWithURL:a3 error:&v15];
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (!v10)
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    [v7 setObject:v10 forKey:v8];
  }

  objc_sync_exit(v7);
  if (v10 == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0;
  if (a4)
  {
    if (isKindOfClass)
    {
      result = 0;
      *a4 = v10;
    }
  }

  return result;
}

+ (id)libraryWithSource:(id)a3 error:(id *)a4
{
  v4 = [[a1 alloc] initWithSource:a3 error:a4];

  return v4;
}

- (CIKernelLibrary)initWithSource:(id)a3 error:(id *)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CIKernelLibrary;
  v6 = [(CIKernelLibrary *)&v22 init];
  v6->_harvest_for_this_library = 1;
  v6->_mtl_source = a3;
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

    v10 = [objc_msgSend(MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\\\\\n" options:0 error:{0), "stringByReplacingMatchesInString:options:range:withTemplate:", a3, 0, 0, objc_msgSend(a3, "length"), &stru_1F1040378}];
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
    if (a4 && v18)
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
      if (!a4)
      {
        goto LABEL_19;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F10827F8];
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082820];
  }

  *a4 = v13;
LABEL_19:

  if (v6->_library)
  {
    XXH64_reset(v24, 0);
    CI::XXHashHelper::addstr(v24, [a3 UTF8String]);
    v6->_digest = XXH64_digest(v24);
  }

  else
  {

    return 0;
  }

  return v6;
}

- (CIKernelLibrary)initWithData:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CIKernelLibrary;
  v6 = [(CIKernelLibrary *)&v20 init];
  v6->_harvest_for_this_library = 1;
  v7 = a3;
  v8 = [a3 bytes];
  v9 = [a3 length];
  destructor[0] = MEMORY[0x1E69E9820];
  destructor[1] = 3221225472;
  destructor[2] = __38__CIKernelLibrary_initWithData_error___block_invoke;
  destructor[3] = &unk_1E75C2AA0;
  destructor[4] = a3;
  v6->_data = dispatch_data_create(v8, v9, 0, destructor);
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

    if (a4 && v18[0].i64[0])
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
      if (!a4)
      {
        goto LABEL_12;
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082848];
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082870];
  }

  *a4 = v13;
LABEL_12:

  if (v6->_library)
  {
    XXH64_reset(v18, 0);
    v15 = [a3 bytes];
    v16 = [a3 length];
    if (v15 && v16)
    {
      XXH64_update(v18, v15, v16);
    }

    v6->_digest = XXH64_digest(v18);
  }

  else
  {

    return 0;
  }

  return v6;
}

- (CIKernelLibrary)initWithURL:(id)a3 error:(id *)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CIKernelLibrary;
  v6 = [(CIKernelLibrary *)&v15 init];
  v6->_harvest_for_this_library = 1;
  v6->_url = a3;
  v7 = CIMetalCopyDefaultDevice();
  if (CIMetalDeviceIsSupported(v7, v8))
  {
    v14[0].i64[0] = 0;
    v9 = [v7 newLibraryWithURL:a3 error:v14];
    v6->_library = v9;
    if (v9)
    {
      [(CIKernelLibrary *)v6 initFunctionNames];
      goto LABEL_12;
    }

    if (a4 && v14[0].i64[0])
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
      if (!a4)
      {
        goto LABEL_12;
      }

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F1082898];
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernelLibrary" code:1 userInfo:&unk_1F10828C0];
  }

  *a4 = v10;
LABEL_12:

  if (v6->_library)
  {
    XXH64_reset(v14, 0);
    CI::XXHashHelper::add(v14, [a3 absoluteString]);
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
  v3 = [(MTLLibrary *)self->_library externFunctionNames];
  if ([v3 count])
  {
    return v3;
  }

  library = self->_library;

  return [(MTLLibrary *)library functionNames];
}

- (id)refelectionWithFunctionName:(id)a3
{
  v5 = NSSelectorFromString(&cfstr_Reflectionforf.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  library = self->_library;

  return [(MTLLibrary *)library performSelector:v5 withObject:a3];
}

- (id)functionWithName:(id)a3
{
  v5 = [(NSSet *)self->_extern_function_names containsObject:?];
  library = self->_library;
  if (v5)
  {
    v7 = [(MTLLibrary *)library newExternFunctionWithName:a3];
  }

  else
  {
    v7 = [(MTLLibrary *)library newFunctionWithName:a3];
  }

  return v7;
}

- (id)newFunctionWithName:(id)a3
{
  v5 = [(NSSet *)self->_extern_function_names containsObject:?];
  library = self->_library;
  if (v5)
  {

    return [(MTLLibrary *)library newExternFunctionWithName:a3];
  }

  else
  {

    return [(MTLLibrary *)library newFunctionWithName:a3];
  }
}

- (id)newSpecializedFunctionWithDescriptor:(id)a3
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
    v22 = v5;
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
      v22 = a3;
      v23 = v10;
      v24 = library;
      dispatch_sync(v11, block);
    }
  }

  if ((CI_LOG_BIN_ARCHIVE_MISS() & 8) != 0)
  {
    [a3 setOptions:{4, 0}];
    v12 = [(MTLLibrary *)self->_library newFunctionWithDescriptor:a3 error:&v18];
    [a3 setOptions:0];
    if (v12)
    {
      return v12;
    }

    v13 = ci_logger_compile();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [a3 name];
      *block = 138543362;
      *&block[4] = v14;
      _os_log_impl(&dword_19CC36000, v13, OS_LOG_TYPE_INFO, "Failed finding %{public}@ stitchable function in the archive", block, 0xCu);
    }

    if (CI_LOG_BIN_ARCHIVE_MISS())
    {
      abort();
    }
  }

  v12 = [(MTLLibrary *)self->_library newFunctionWithDescriptor:a3 error:&v19];
  if (v19)
  {
    v15 = ci_logger_compile();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [a3 name];
      *block = 138543618;
      *&block[4] = v16;
      *&block[12] = 2114;
      *&block[14] = v19;
      _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_INFO, "Failed creating %{public}@ function from library %{public}@", block, 0x16u);
    }
  }

  return v12;
}

- (id)newSpecializedFunctionWithName:(id)a3 constants:(void *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v4 = [(MTLLibrary *)self->_library newFunctionWithName:a3 constantValues:a4 error:&v7];
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

+ (id)internalLibraryWithName:(id)a3 device:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", a3, @"metallib"}];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a4 newLibraryWithURL:v6 error:&v12];
  if (v12)
  {
    v9 = ci_logger_compile();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 path];
      *buf = 138543874;
      v14 = a3;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_INFO, "Failed loading internal library: %{public}@ from %{public}@: %{public}@\n", buf, 0x20u);
    }
  }

  return v8;
}

+ (id)coreImageDylibWithDevice:(id)a3
{
  if (![a3 supportsDynamicLibraries])
  {
    return 0;
  }

  v5 = objc_opt_new();
  v6 = [v5 temporaryDirectory];
  v7 = [v6 URLByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"coreimage_%@", objc_msgSend(a3, "name"))}];
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
  block[7] = a1;
  block[8] = &v11;
  block[6] = a3;
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

+ (id)internalBinaryArchiveWithName:(id)a3 device:(id)a4
{
  v11 = 0;
  v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", a3, @"metallib"}];
  v6 = objc_opt_new();
  [v6 setUrl:v5];
  if (v5 && [MEMORY[0x1E69741F0] archiveTypeAtURL:v5 device:a4 error:&v11] == 2)
  {
    v7 = [a4 newBinaryArchiveWithDescriptor:v6 error:&v11];
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