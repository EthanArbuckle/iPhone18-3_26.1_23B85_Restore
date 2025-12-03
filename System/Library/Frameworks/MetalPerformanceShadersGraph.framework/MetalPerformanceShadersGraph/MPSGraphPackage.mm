@interface MPSGraphPackage
+ (void)readResources:(id)resources fromURL:(id)l error:(id *)error usingAllocator:(function_ref<char *)(llvm:(unsigned long)long :(unsigned long)long StringRef;
- (MPSGraphPackage)initWithPackageURL:(id)l temporaryPackageURL:(id)rL append:(BOOL)append;
- (MPSGraphPackage)initWithSourcePackageURL:(id)l;
- (MPSGraphPackage)initWithSourcePackageURL:(id)l error:(id *)error;
- (id).cxx_construct;
- (id)addBinaryResourceFile:(id)file withFileType:(unint64_t)type toBinaryResourceFileDict:(id)dict;
- (id)createFileHandle;
- (id)findLatestPackage;
- (id)findLatestPackageKey;
- (id)getMLIRLibrary;
- (id)getPackageKeyForPlatform:(unint64_t)platform andMinimumDeploymentTarget:(optional<MPSGraphOperatingSystemVersion> *)target;
- (id)getPlistData;
- (id)writeResources:(ArrayRef<mlir::mps::MPSResourceBlobEntry *>)resources;
- (void)commonInit;
- (void)copyDataFiles:(ArrayRef<std:(id)files :(Location)a5 string>)a3 currentBasePath:location:;
- (void)createBytecodeFromMlirModule:(ModuleOp)module fileHandle:(id)handle resourceStorageMode:(unint64_t)mode;
- (void)createVersionedBytecodeFromMlirModule:(ModuleOp)module packageKey:(id)key fileHandle:(id)handle resourceStorageMode:(unint64_t)mode downgradedModuleCallback:(function_ref<void)(mlir::mps::serialization::ModuleOp;
- (void)setMLIRLibrary:(id)library withPackageKey:(id)key;
@end

@implementation MPSGraphPackage

- (void)commonInit
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"mpsgraph";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:0];
  v8[1] = @"hwx";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v5 mutableCopy];
  perExtensionFileCounts = self->_perExtensionFileCounts;
  self->_perExtensionFileCounts = v6;
}

- (MPSGraphPackage)initWithSourcePackageURL:(id)l error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v30.receiver = self;
  v30.super_class = MPSGraphPackage;
  v8 = [(MPSGraphPackage *)&v30 init];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = v8->_fileManager;
  v8->_fileManager = defaultManager;

  objc_storeStrong(&v8->_packageURL, l);
  temporaryPackageURL = v8->_temporaryPackageURL;
  v8->_temporaryPackageURL = 0;

  [(MPSGraphPackage *)v8 commonInit];
  ptr = v8->_temporaryPackageFileLock.__ptr_;
  v8->_temporaryPackageFileLock.__ptr_ = 0;
  if (ptr)
  {
    llvm::LockFileManager::~LockFileManager(ptr);
    MEMORY[0x1E12E5B90]();
  }

  v13 = v8->_writingLockGuard.__ptr_;
  v8->_writingLockGuard.__ptr_ = 0;
  if (v13)
  {
    std::default_delete<InProcessPackageWritingGuard::LockGuard>::operator()[abi:ne200100](v13);
  }

  v29 = 0;
  v14 = v8->_fileManager;
  path = [(NSURL *)v8->_packageURL path];
  LODWORD(v14) = [(NSFileManager *)v14 fileExistsAtPath:path isDirectory:&v29];

  if (!v14)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v21 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v22 = MEMORY[0x1E696AEC0];
    absoluteString = [(NSURL *)v8->_packageURL absoluteString];
    v24 = [v22 stringWithFormat:@"Error: did not find file at url: %@", absoluteString];
    v32 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    *error = [v21 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v25];

LABEL_14:
    error = 0;
    goto LABEL_15;
  }

  if ((v29 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v26 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Error: file is unexpectedly not a directory";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *error = [v26 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v27];

    goto LABEL_14;
  }

  v16 = [(NSURL *)v8->_packageURL URLByAppendingPathComponent:@"manifest.plist"];
  v17 = loadPlistAtURL(v16, error);
  v18 = v17;
  if (!v17)
  {

    goto LABEL_14;
  }

  v19 = [v17 mutableCopy];
  plistRoot = v8->_plistRoot;
  v8->_plistRoot = v19;

  error = v8;
LABEL_15:

  return error;
}

- (MPSGraphPackage)initWithSourcePackageURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = MPSGraphPackage;
  v10 = 0;
  v5 = [[(MPSGraphPackage *)&v11 init] initWithSourcePackageURL:lCopy error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      [v6 localizedDescription];

      if (MTLReportFailureTypeEnabled())
      {
        localizedDescription = [v7 localizedDescription];
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return v5;
}

- (MPSGraphPackage)initWithPackageURL:(id)l temporaryPackageURL:(id)rL append:(BOOL)append
{
  v27 = *MEMORY[0x1E69E9840];
  l;
  rLCopy = rL;
  v26.receiver = self;
  v26.super_class = MPSGraphPackage;
  v23 = [(MPSGraphPackage *)&v26 init];
  objc_storeStrong(&v23->_packageURL, l);
  objc_storeStrong(&v23->_temporaryPackageURL, rL);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = v23->_fileManager;
  v23->_fileManager = defaultManager;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  plistRoot = v23->_plistRoot;
  v23->_plistRoot = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v23->_plistRoot setObject:v12 forKeyedSubscript:@"Package Version"];

  [(MPSGraphPackage *)v23 commonInit];
  path = [rLCopy path];
  v21 = [path stringByAppendingString:@".lock"];

  v14 = v21;
  v15 = [v21 cStringUsingEncoding:4];
  v16 = strlen(v15);
  if (v16 < 0x7FFFFFFFFFFFFFF8)
  {
    v17 = v16;
    if (v16 < 0x17)
    {
      v25 = v16;
      if (v16)
      {
        memmove(&__dst, v15, v16);
      }

      *(&__dst + v17) = 0;
      ptr = v23->_temporaryPackageFileLock.__ptr_;
      v23->_temporaryPackageFileLock.__ptr_ = 0;
      if (ptr)
      {
        llvm::LockFileManager::~LockFileManager(ptr);
        MEMORY[0x1E12E5B90]();
      }

      v19 = v23->_writingLockGuard.__ptr_;
      v23->_writingLockGuard.__ptr_ = 0;
      if (v19)
      {
        std::default_delete<InProcessPackageWritingGuard::LockGuard>::operator()[abi:ne200100](v19);
      }

      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (id)getPackageKeyForPlatform:(unint64_t)platform andMinimumDeploymentTarget:(optional<MPSGraphOperatingSystemVersion> *)target
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1ECE75318 != -1)
  {
    dispatch_once(&qword_1ECE75318, &__block_literal_global_1);
  }

  v6 = _MergedGlobals_7;
  v27 = v6;
  if (platform >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      platformCopy = platform;
      MTLReportFailure();
    }
  }

  else
  {
    var1 = qword_1E09A7140[platform];
    var0 = qword_1E09A7160[platform];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v6 allKeys];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v7)
  {
    var2 = 0;
    goto LABEL_41;
  }

  var2 = 0;
  v8 = *v34;
  do
  {
    v9 = 0;
    do
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = [*(*(&v33 + 1) + 8 * v9) componentsSeparatedByString:{@"OS", v26}];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 stringByAppendingString:@"OS"];

      v13 = v12;
      if ([v13 isEqualToString:@"macOS"])
      {
        goto LABEL_13;
      }

      if ([v13 isEqualToString:@"iOS"])
      {
        v14 = 1;
      }

      else if ([v13 isEqualToString:@"tvOS"])
      {
        v14 = 2;
      }

      else
      {
        if (([v13 isEqualToString:@"visionOS"] & 1) == 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            v26 = v13;
            MTLReportFailure();
          }

LABEL_13:
          v14 = 0;
          goto LABEL_20;
        }

        v14 = 3;
      }

LABEL_20:

      if (v14 == platform)
      {
        v15 = [v10 objectAtIndexedSubscript:1];
        MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v32, v15);

        if (v32.var0 > var0 || v32.var0 == var0 && (v32.var1 > var1 || v32.var1 == var1 && v32.var2 > var2))
        {
          if (!target->var1 || v32.var0 < target->var0.var1.var0 || v32.var0 == target->var0.var1.var0 && ((v16 = target->var0.var1.var1, v32.var1 < v16) || v32.var1 == v16 && v32.var2 <= target->var0.var1.var2))
          {
            var2 = v32.var2;
            var1 = v32.var1;
            var0 = v32.var0;
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v7 = v17;
  }

  while (v17);
LABEL_41:

  v32.var0 = var0;
  v32.var1 = var1;
  v32.var2 = var2;
  v18 = objc_alloc_init(MEMORY[0x1E696AEC0]);
  v19 = v18;
  if (platform >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v20 = [v18 stringByAppendingString:off_1E86D4AF8[platform]];

    v19 = v20;
  }

  v21 = MPSGraphOperatingSystemVersion::asString(&v32);
  v22 = [v19 stringByAppendingString:v21];

  v23 = [v27 objectForKey:v22];
  if (!v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v23;
}

- (void)createVersionedBytecodeFromMlirModule:(ModuleOp)module packageKey:(id)key fileHandle:(id)handle resourceStorageMode:(unint64_t)mode downgradedModuleCallback:(function_ref<void)(mlir::mps::serialization::ModuleOp
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  handleCopy = handle;
  if (qword_1ECE75328 != -1)
  {
    dispatch_once(&qword_1ECE75328, &__block_literal_global_173);
  }

  v11 = [qword_1ECE75320 objectForKey:keyCopy];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    __src = keyCopy;
    MTLReportFailure();
  }

  v12 = [v11 objectForKey:{@"kMPSDialect", __src}];
  v13 = [v12 componentsSeparatedByString:@"."];
  [v13 count];
  if ([v13 count] != 3 && MTLReportFailureTypeEnabled())
  {
    __srca = v12;
    MTLReportFailure();
  }

  v14 = [v11 objectForKey:{@"kMPSSPIDialect", __srca}];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"0.0.0";
  }

  v16 = [(__CFString *)v15 componentsSeparatedByString:@"."];
  [v16 count];
  if ([v16 count] != 3 && MTLReportFailureTypeEnabled())
  {
    __srcb = v15;
    MTLReportFailure();
  }

  __srcb = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:handleCopy, __srcb];
  path = [__srcb path];
  v19 = [path cStringUsingEncoding:4];
  v20 = strlen(v19);
  if (v20 < 0x7FFFFFFFFFFFFFF8)
  {
    v21 = v20;
    if (v20 < 0x17)
    {
      v42 = v20;
      if (v20)
      {
        memmove(__dst, v19, v20);
      }

      *(__dst + v21) = 0;

      __p = 0;
      v39 = 0;
      v40 = 0;
      if (v42 >= 0)
      {
        v22 = __dst;
      }

      else
      {
        v22 = __dst[0];
      }

      if (v42 >= 0)
      {
        v23 = v42;
      }

      else
      {
        v23 = __dst[1];
      }

      mlir::openOutputFile(v22, v23, &__p, &v37);
      v24 = HIBYTE(v40);
      if (v40 < 0)
      {
        v24 = v39;
      }

      if (v24 && MTLReportFailureTypeEnabled())
      {
        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        __srcc = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:4];
        MTLReportFailure();
      }

      v25 = [v13 objectAtIndexedSubscript:{0, __srcc}];
      [v25 intValue];

      v26 = [v13 objectAtIndexedSubscript:1];
      [v26 intValue];

      v27 = [v13 objectAtIndexedSubscript:2];
      [v27 intValue];

      v28 = [v16 objectAtIndexedSubscript:0];
      [v28 intValue];

      v29 = [v16 objectAtIndexedSubscript:1];
      [v29 intValue];

      v30 = [v16 objectAtIndexedSubscript:2];
      [v30 intValue];

      mlir::Operation::CloneOptions::all(v31);
      mlir::Operation::clone();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (void)createBytecodeFromMlirModule:(ModuleOp)module fileHandle:(id)handle resourceStorageMode:(unint64_t)mode
{
  v7 = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:handle];
  path = [v7 path];
  v9 = [path cStringUsingEncoding:4];
  v10 = strlen(v9);
  if (v10 < 0x7FFFFFFFFFFFFFF8)
  {
    v11 = v10;
    if (v10 < 0x17)
    {
      v24 = v10;
      if (v10)
      {
        memmove(__dst, v9, v10);
      }

      *(__dst + v11) = 0;

      __p = 0;
      v21 = 0;
      v22 = 0;
      if (v24 >= 0)
      {
        v12 = __dst;
      }

      else
      {
        v12 = __dst[0];
      }

      if (v24 >= 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = __dst[1];
      }

      mlir::openOutputFile(v12, v13, &__p, &v19);
      v14 = HIBYTE(v22);
      if (v22 < 0)
      {
        v14 = v21;
      }

      if (v14 && MTLReportFailureTypeEnabled())
      {
        if (v22 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:4];
        MTLReportFailure();
      }

      v25.var0 = "MLIR20.0.0git";
      v25.var1 = 13;
      mlir::BytecodeWriterConfig::BytecodeWriterConfig(v18, v25);
      if (mode == 1)
      {
        mlir::BytecodeWriterConfig::setElideResourceDataFlag(v18, 1);
      }

      mlir::writeBytecodeToFile(module.state, *(v19 + 17), v18, v15);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (id)createFileHandle
{
  v3 = [(NSMutableDictionary *)self->_perExtensionFileCounts objectForKeyedSubscript:@"mpsgraph"];
  unsignedLongValue = [v3 unsignedLongValue];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"model_%lu.mpsgraph", unsignedLongValue];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:unsignedLongValue + 1];
  [(NSMutableDictionary *)self->_perExtensionFileCounts setObject:v6 forKeyedSubscript:@"mpsgraph"];

  v7 = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:v5];
  fileManager = self->_fileManager;
  path = [v7 path];
  [(NSFileManager *)fileManager fileExistsAtPath:path];

  v10 = self->_fileManager;
  path2 = [v7 path];
  LODWORD(v10) = [(NSFileManager *)v10 fileExistsAtPath:path2];

  if (v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v5;
}

- (id)addBinaryResourceFile:(id)file withFileType:(unint64_t)type toBinaryResourceFileDict:(id)dict
{
  v32[2] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dictCopy = dict;
  if (type)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = 0;
  }

  else
  {
    v9 = @"hwx";
  }

  v10 = [(NSMutableDictionary *)self->_perExtensionFileCounts objectForKeyedSubscript:v9];
  if (!v10 && MTLReportFailureTypeEnabled())
  {
    v25 = v9;
    MTLReportFailure();
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binary_%lu.%@", objc_msgSend(v10, "unsignedLongValue", v25), v9];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v10, "unsignedLongValue") + 1}];
  [(NSMutableDictionary *)self->_perExtensionFileCounts setObject:v12 forKeyedSubscript:v9];

  v13 = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:v11];
  fileManager = self->_fileManager;
  path = [v13 path];
  [(NSFileManager *)fileManager fileExistsAtPath:path];

  v16 = self->_fileManager;
  path2 = [v13 path];
  LODWORD(v16) = [(NSFileManager *)v16 fileExistsAtPath:path2];

  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = self->_fileManager;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:fileCopy];
  v30 = 0;
  LOBYTE(v18) = [(NSFileManager *)v18 copyItemAtURL:v19 toURL:v13 error:&v30];
  v20 = v30;

  if ((v18 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    [v20 debugDescription];
    v28 = v27 = v13;
    v26 = fileCopy;
    MTLReportFailure();
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(dictCopy, "count", v26, v27, v28)];
  v31[0] = @"Type";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:type];
  v31[1] = @"File Name";
  v32[0] = v22;
  v32[1] = v11;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [dictCopy setObject:v23 forKeyedSubscript:v21];

  return v21;
}

- (id)writeResources:(ArrayRef<mlir::mps::MPSResourceBlobEntry *>)resources
{
  var1 = resources.var1;
  var0 = resources.var0;
  v82[60] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:resources.var1];
  v7 = v6;
  if (!var1)
  {
    v17 = v6;
    goto LABEL_100;
  }

  selfCopy = self;
  v67 = v6;
  v80 = v82;
  v81 = 0xA00000000;
  if (var1 >= 0xB)
  {
    __dst[0] = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v80, v82, var1, 48, __dst);
    v9 = v8;
    v10 = v80;
    if (v81)
    {
      v11 = v80 + 48 * v81;
      v12 = v9;
      do
      {
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *v10 = 0;
        v14 = *(v10 + 24);
        *(v12 + 5) = *(v10 + 5);
        *(v12 + 24) = v14;
        v12 += 48;
        v10 += 48;
      }

      while (v10 != v11);
      v10 = v80;
      if (v81)
      {
        v15 = (v80 + 48 * v81 - 48);
        v16 = -48 * v81;
        do
        {
          if (*(v15 + 23) < 0)
          {
            operator delete(*v15);
          }

          v15 -= 6;
          v16 += 48;
        }

        while (v16);
        v10 = v80;
      }
    }

    v18 = __dst[0];
    if (v10 != v82)
    {
      free(v10);
    }

    v80 = v9;
    HIDWORD(v81) = v18;
  }

  v19 = 8 * var1;
  do
  {
    v20 = *var0;
    v21 = *var0 + 16;
    if (!*(*var0 + 80))
    {
      v21 = 0;
    }

    v22 = *(v20 + 1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v23 = *v20;
    v68 = *v21;
    v24 = *(v21 + 16);
    if (v22 >= 0x17)
    {
      operator new();
    }

    v77 = *(v20 + 1);
    if (v22)
    {
      memmove(__dst, v23, v22);
    }

    *(__dst + v22) = 0;
    v78 = v68;
    v79 = v24;
    v25 = v80;
    if (v81 >= HIDWORD(v81))
    {
      if (v80 <= __dst && v80 + 48 * v81 > __dst)
      {
        llvm::SmallVectorTemplateBase<support::ResourceStorage::ResourceWriteInfo,false>::grow(&v80, v81 + 1);
        v30 = (__dst - v25);
        v25 = v80;
        v26 = &v30[v80];
      }

      else
      {
        llvm::SmallVectorTemplateBase<support::ResourceStorage::ResourceWriteInfo,false>::grow(&v80, v81 + 1);
        v26 = __dst;
        v25 = v80;
      }
    }

    else
    {
      v26 = __dst;
    }

    v27 = &v25[48 * v81];
    v28 = *v26;
    *(v27 + 2) = v26[2];
    *v27 = v28;
    v26[1] = 0;
    v26[2] = 0;
    *v26 = 0;
    v29 = *(v26 + 3);
    *(v27 + 5) = v26[5];
    *(v27 + 24) = v29;
    LODWORD(v81) = v81 + 1;
    if (v77 < 0)
    {
      operator delete(__dst[0]);
    }

    ++var0;
    v19 -= 8;
  }

  while (v19);
  temporaryPackageURL = selfCopy->_temporaryPackageURL;
  v32 = +[MPSGraphPackage getResourceFileName];
  v33 = [(NSURL *)temporaryPackageURL URLByAppendingPathComponent:v32];
  path = [v33 path];
  v35 = path;
  v36 = [path cStringUsingEncoding:4];
  v37 = strlen(v36);
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v38 = v37;
  if (v37 >= 0x17)
  {
    operator new();
  }

  v77 = v37;
  if (v37)
  {
    memmove(__dst, v36, v37);
  }

  *(__dst + v38) = 0;

  v74[0] = 0;
  v74[1] = 0;
  v75 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0x1000000000;
  if (v77 >= 0)
  {
    v39 = __dst;
  }

  else
  {
    v39 = __dst[0];
  }

  if (v77 >= 0)
  {
    v40 = v77;
  }

  else
  {
    v40 = __dst[1];
  }

  __p[0] = v80;
  __p[1] = v81;
  if ((support::ResourceStorage::add(v39, v40, __p, &v71, v74) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    if (v75 >= 0)
    {
      v64 = v74;
    }

    else
    {
      v64 = v74[0];
    }

    v65 = [MEMORY[0x1E696AEC0] stringWithCString:v64 encoding:4];
    MTLReportFailure();
  }

  if (v72)
  {
    v41 = v71;
    if (*v71)
    {
      v42 = *v71 == -8;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      do
      {
        v44 = *(v41 + 1);
        v41 += 8;
        v43 = v44;
        if (v44)
        {
          v45 = v43 == -8;
        }

        else
        {
          v45 = 1;
        }
      }

      while (v45);
    }

    v46 = v71 + 8 * v72;
    if (v41 != v46)
    {
      v47 = *v41;
      do
      {
        v48 = *v47;
        if (*v47 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v49 = MEMORY[0x1E696AEC0];
        if (v48 >= 0x17)
        {
          operator new();
        }

        v70 = *v47;
        if (v48)
        {
          memmove(__p, v47 + 2, v48);
        }

        *(__p + v48) = 0;
        if (v70 >= 0)
        {
          v50 = __p;
        }

        else
        {
          v50 = __p[0];
        }

        v51 = [v49 stringWithCString:v50 encoding:{4, v65}];
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v47[1]];
        [v67 setObject:v52 forKeyedSubscript:v51];

        do
        {
          v53 = *(v41 + 1);
          v41 += 8;
          v47 = v53;
          if (v53)
          {
            v54 = v47 + 1 == 0;
          }

          else
          {
            v54 = 1;
          }
        }

        while (v54);
      }

      while (v41 != v46);
    }
  }

  v7 = v67;
  v55 = v67;
  if (HIDWORD(v72) && v72)
  {
    v56 = 0;
    do
    {
      v57 = *(v71 + v56);
      if (v57 != -8 && v57 != 0)
      {
        llvm::deallocate_buffer(v57, (*v57 + 17));
      }

      v56 += 8;
    }

    while (8 * v72 != v56);
  }

  free(v71);
  if ((SHIBYTE(v75) & 0x80000000) == 0)
  {
    if ((v77 & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

LABEL_97:
    operator delete(__dst[0]);
    v59 = v80;
    v60 = v81;
    if (v81)
    {
      goto LABEL_90;
    }

LABEL_98:
    if (v59 == v82)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  operator delete(v74[0]);
  if (v77 < 0)
  {
    goto LABEL_97;
  }

LABEL_89:
  v59 = v80;
  v60 = v81;
  if (!v81)
  {
    goto LABEL_98;
  }

LABEL_90:
  v61 = &v59[6 * v60 - 6];
  v62 = -48 * v60;
  do
  {
    if (*(v61 + 23) < 0)
    {
      operator delete(*v61);
    }

    v61 -= 48;
    v62 += 48;
  }

  while (v62);
  v59 = v80;
  if (v80 != v82)
  {
LABEL_99:
    free(v59);
  }

LABEL_100:

  return v7;
}

+ (void)readResources:(id)resources fromURL:(id)l error:(id *)error usingAllocator:(function_ref<char *)(llvm:(unsigned long)long :(unsigned long)long StringRef
{
  v76 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  lCopy = l;
  v56 = resourcesCopy;
  if ([resourcesCopy count])
  {
    v53 = lCopy;
    path = [lCopy path];
    v10 = [path cStringUsingEncoding:4];
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    v70 = v11;
    if (v11)
    {
      memmove(__dst, v10, v11);
    }

    *(__dst + v12) = 0;

    __p[0] = 0;
    __p[1] = 0;
    v68 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0x1000000000;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v13 = resourcesCopy;
    v14 = [v13 countByEnumeratingWithState:&v60 objects:v75 count:16];
    if (v14)
    {
      v57 = *v61;
      do
      {
        v15 = 0;
        do
        {
          if (*v61 != v57)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v60 + 1) + 8 * v15);
          v59 = [v13 objectForKeyedSubscript:v16];
          unsignedLongLongValue = [v59 unsignedLongLongValue];
          v18 = v16;
          uTF8String = [v16 UTF8String];
          v21 = uTF8String;
          if (uTF8String)
          {
            v22 = strlen(uTF8String);
          }

          else
          {
            v22 = 0;
          }

          v23 = llvm::StringMapImpl::hash(v21, v22, v20);
          v24 = llvm::StringMapImpl::LookupBucketFor(&v64, v21, v22, v23);
          v25 = v64;
          v26 = *(v64 + v24);
          if (v26 == -8)
          {
            LODWORD(v66) = v66 - 1;
          }

          else if (v26)
          {
            goto LABEL_18;
          }

          buffer = llvm::allocate_buffer(v22 + 17, 8uLL);
          v28 = buffer;
          v58 = unsignedLongLongValue;
          v29 = v14;
          v30 = v13;
          v31 = (buffer + 2);
          if (v22)
          {
            memcpy(buffer + 2, v21, v22);
          }

          v31[v22] = 0;
          *v28 = v22;
          v28[1] = 0;
          v25[v24] = v28;
          ++HIDWORD(v65);
          v13 = v30;
          v32 = llvm::StringMapImpl::RehashTable(&v64, v24);
          v14 = v29;
          unsignedLongLongValue = v58;
          v33 = (v64 + 8 * v32);
          v26 = *v33;
          if (*v33)
          {
            v34 = v26 == -8;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            do
            {
              v35 = v33[1];
              ++v33;
              v26 = v35;
              if (v35)
              {
                v36 = v26 == -8;
              }

              else
              {
                v36 = 1;
              }
            }

            while (v36);
          }

LABEL_18:
          *(v26 + 8) = unsignedLongLongValue;

          ++v15;
        }

        while (v15 != v14);
        v37 = [v13 countByEnumeratingWithState:&v60 objects:v75 count:16];
        v14 = v37;
      }

      while (v37);
    }

    if (v70 >= 0)
    {
      v38 = __dst;
    }

    else
    {
      v38 = __dst[0];
    }

    if (v70 >= 0)
    {
      v39 = v70;
    }

    else
    {
      v39 = __dst[1];
    }

    if (support::ResourceStorage::read(v38, v39, &v64, a6.var0, a6.var1, __p))
    {
LABEL_52:
      if (HIDWORD(v65) && v65)
      {
        v48 = 0;
        do
        {
          v49 = *(v64 + v48);
          if (v49 != -8 && v49 != 0)
          {
            llvm::deallocate_buffer(v49, (*v49 + 17));
          }

          v48 += 8;
        }

        while (8 * v65 != v48);
      }

      free(v64);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__p[0]);
        lCopy = v53;
        if ((v70 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        lCopy = v53;
        if ((v70 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      operator delete(__dst[0]);
      goto LABEL_63;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = __p;
      if (v68 < 0)
      {
        v51 = __p[0];
      }

      *buf = 136315138;
      v74 = v51;
      _os_log_error_impl(&dword_1DF9BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      v40 = 0x1E696A000;
      if (!error)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v40 = 0x1E696A000uLL;
      if (!error)
      {
        goto LABEL_47;
      }
    }

    if (v68 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = __p[0];
    }

    v42 = [*(v40 + 3776) stringWithCString:v41 encoding:4];
    v43 = MPSGraphReportFailure(&stru_1F5B5DFD0.isa, v42);

    v44 = MEMORY[0x1E696ABC0];
    v71 = *MEMORY[0x1E696A578];
    v45 = [*(v40 + 3776) stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphComputePackage.mm", 814, v43];
    v72 = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    *error = [v44 errorWithDomain:@"MPSGraph" code:-1 userInfo:v46];

LABEL_47:
    if (MTLReportFailureTypeEnabled())
    {
      if (v68 >= 0)
      {
        v47 = __p;
      }

      else
      {
        v47 = __p[0];
      }

      v52 = [*(v40 + 3776) stringWithCString:v47 encoding:4];
      MTLReportFailure();
    }

    goto LABEL_52;
  }

LABEL_63:
}

- (void)setMLIRLibrary:(id)library withPackageKey:(id)key
{
  libraryCopy = library;
  keyCopy = key;
  getMLIRLibrary = [(MPSGraphPackage *)self getMLIRLibrary];
  [getMLIRLibrary updateWithMLIRLibrary:libraryCopy];
  getDict = [getMLIRLibrary getDict];
  v9 = [(NSMutableDictionary *)self->_plistRoot objectForKeyedSubscript:@"Package Version"];
  [v9 setObject:getDict forKeyedSubscript:keyCopy];
}

- (id)findLatestPackageKey
{
  v2 = [(NSMutableDictionary *)self->_plistRoot objectForKeyedSubscript:@"Package Version"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MPSGraphPackage_findLatestPackageKey__block_invoke;
  v5[3] = &unk_1E86D4AD8;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MPSGraphPackage_findLatestPackageKey__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v16, v4);
  if (v16.var0 < 4 || (v16.var0 == 4 ? (v5 = v16.var1 == 0) : (v5 = 0), v5 ? (v6 = v16.var2 <= 20) : (v6 = 0), v6))
  {
    *&v16.var0 = xmmword_1E09A7130;
    v16.var2 = 21;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"6.1.5"];
  MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v15, v7);
  if (v15.var0 < 4 || *&v15.var0 == 4 && v15.var2 <= 20)
  {
    *&v15.var0 = xmmword_1E09A7130;
    v15.var2 = 21;
  }

  if (v16.var0 < v15.var0 || v16.var0 == v15.var0 && (v16.var1 < v15.var1 || v16.var1 == v15.var1 && v16.var2 <= v15.var2))
  {
    v8 = *(*(a1 + 32) + 8);
    v11 = *(v8 + 40);
    v9 = (v8 + 40);
    v10 = v11;
    if (v11)
    {
      MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v15, v10);
      var0 = v15.var0;
      if (v15.var0 < 4 || (var1 = v15.var1, var2 = v15.var2, *&v15.var0 == 4) && v15.var2 <= 20)
      {
        var1 = 0;
        var0 = 4;
        var2 = 21;
      }

      if (v16.var0 <= var0 && (v16.var0 != var0 || v16.var1 <= var1 && (v16.var1 != var1 || v16.var2 <= var2)))
      {
        goto LABEL_33;
      }

      v9 = (*(*(a1 + 32) + 8) + 40);
    }

    objc_storeStrong(v9, a2);
  }

LABEL_33:
}

- (id)findLatestPackage
{
  v3 = [(NSMutableDictionary *)self->_plistRoot objectForKeyedSubscript:@"Package Version"];
  if (v3)
  {
    findLatestPackageKey = [(MPSGraphPackage *)self findLatestPackageKey];
    v5 = [v3 objectForKeyedSubscript:findLatestPackageKey];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getMLIRLibrary
{
  findLatestPackage = [(MPSGraphPackage *)self findLatestPackage];
  if (findLatestPackage)
  {
    v3 = [[MPSGraphPackageMLIRLibrary alloc] initWithMLIRLibraryDict:findLatestPackage];
  }

  else
  {
    v3 = objc_alloc_init(MPSGraphPackageMLIRLibrary);
  }

  v4 = v3;

  return v4;
}

- (id)getPlistData
{
  plistRoot = self->_plistRoot;
  v6 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:plistRoot format:100 options:0 error:&v6];
  v4 = v6;
  if (!v3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v3;
}

- (void)copyDataFiles:(ArrayRef<std:(id)files :(Location)a5 string>)a3 currentBasePath:location:
{
  var1 = a3.var1;
  var0 = a3.var0;
  filesCopy = files;
  uTF8String = [filesCopy UTF8String];
  v10 = uTF8String;
  if (uTF8String)
  {
    v11 = strlen(uTF8String);
  }

  else
  {
    v11 = 0;
  }

  path = [(NSURL *)self->_temporaryPackageURL path];
  uTF8String2 = [path UTF8String];
  v14 = uTF8String2;
  if (uTF8String2)
  {
    v15 = strlen(uTF8String2);
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::mps::copyFilesToNewBasePath(a5.var0.var0, v10, v11, v14, v15, var0, var1);

  if ((v16 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end