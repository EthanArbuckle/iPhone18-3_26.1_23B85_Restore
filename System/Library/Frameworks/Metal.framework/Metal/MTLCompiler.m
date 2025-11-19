@interface MTLCompiler
- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForLibraryRequest:(SEL)a3;
- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForStatelessCompilationRequest:(SEL)a3;
- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats;
- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats;
- (BOOL)addComputePipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)addMeshRenderPipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)addRenderPipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)addTileRenderPipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)copyShaderCacheToPath:(id)a3;
- (BOOL)downgradeRequest:(void *)a3 frameworkData:(void *)a4 compilerTask:(id)a5 error:(id *)a6;
- (BOOL)initializeVendorPluginFunctionId:(id)a3 airScript:(const void *)a4 driverCompilerOptions:(id)a5 compiledNextStageVariant:(id)a6 vendorPlugin:(id *)a7;
- (BOOL)validateLanguageAndAIRVersionForFunction:(id)a3 completionHandler:(id)a4;
- (MTLCompiler)initWithTargetData:(id)a3 cacheUUID:(id *)a4 pluginPath:(id)a5 device:(id)a6 compilerFlags:(unint64_t)a7;
- (MTLHashKey)getBuiltInFunctionId:(SEL)a3;
- (MTLHashKey)getFunctionId:(SEL)a3;
- (MTLHashKey)getFunctionId:(SEL)a3 airScript:(id)a4 vendorPluginFunctionId:(const void *)a5;
- (MTLHashKey)getFunctionId:(SEL)a3 airScript:(id)a4 vendorPluginFunctionId:(const void *)a5 bitcodeHashList:(id *)a6;
- (VariantEntry)computeVariantEntryWithDescriptor:(id)a3 airDescriptor:(id)a4 options:(unint64_t)a5 serializedComputeDataDescriptor:(id)a6 asyncCompile:(BOOL)a7 pipelineCache:(id)a8 destinationBinaryArchive:(id)a9 computeProgram:(MTLProgramObject *)a10 kernelDriverCompileTimeData:(id *)a11 compileTimeStatistics:(id)a12 compilerTask:(id)a13;
- (VariantEntry)tileVariantEntryWithDescriptor:(id)a3 airDescriptor:(id)a4 options:(unint64_t)a5 serializedTileDataDescriptor:(id)a6 asyncCompile:(BOOL)a7 destinationBinaryArchive:(id)a8 tileProgram:(MTLProgramObject *)a9 kernelDriverCompileTimeData:(id *)a10 compileTimeStatistics:(id)a11 compilerTask:(id)a12;
- (id).cxx_construct;
- (id)compileDynamicLibraryWithDescriptor:(id)a3 computePipelineDescriptor:(id)a4 compilerTask:(id)a5 error:(id *)a6;
- (id)createErrorMessageWithRequest:(id)a3 key:(id)a4 cacheType:(const char *)a5 itemLookedFor:(const char *)a6;
- (id)createMeshStageAndLinkPipelineWithFragment:(void *)a3 fragmentVariant:(id)a4 objectFunction:(id)a5 serializedObjectDescriptor:(id)a6 meshFunction:(id)a7 serializedMeshDescriptor:(id)a8 descriptor:(id)a9 airDescriptor:(id)a10 destinationArchive:(id)a11 options:(unint64_t)a12 reflection:(id *)a13 compileStatistics:(id)a14 fragmentCompileTimeData:(id)a15 pipelineArchiverId:(id)a16 error:(id *)a17 compilerTask:(id)a18 completionHandler:(id)a19;
- (id)createVertexStageAndLinkPipelineWithFragment:(void *)a3 fragmentVariant:(id)a4 vertexFunction:(id)a5 serializedVertexDescriptor:(id)a6 descriptor:(id)a7 airDescriptor:(id)a8 destinationArchive:(id)a9 options:(unint64_t)a10 reflection:(id *)a11 compileStatistics:(id)a12 fragmentCompileTimeData:(id)a13 pipelineArchiverId:(id)a14 error:(id *)a15 compilerTask:(id)a16 completionHandler:(id)a17;
- (id)downgradeFunctionRequest:(const void *)a3 targetLLVMVersion:(unsigned int)a4 frameworkData:(void *)a5 compilerTask:(id)a6 error:(id *)a7;
- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6 completionHandler:(id)a7;
- (id)newComputePipelineStateWithDescriptorInternal:(id)a3 options:(unint64_t)a4 pipelineCache:(id)a5 destinationBinaryArchive:(id)a6 reflection:(id *)a7 error:(id *)a8 compilerTask:(id)a9 completionHandler:(id)a10;
- (id)newLinkedFunctionsBitcodeFromRequest:(id)a3 hashKey:(void *)a4;
- (id)newRenderPipelineStateWithDescriptorInternal:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 destinationBinaryArchive:(id)a6 error:(id *)a7 compilerTask:(id)a8 completionHandler:(id)a9;
- (id)newRenderPipelineStateWithTileDescriptorInternal:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 destinationBinaryArchive:(id)a6 error:(id *)a7 compilerTask:(id)a8 completionHandler:(id)a9;
- (id)pipelineStateWithVariant:(VariantEntry *)a3 descriptor:(id)a4 options:(unint64_t)a5 computeProgram:(void *)a6 kernelDriverCompileTimeData:(id)a7 serializedComputeDataDescriptor:(id)a8 compileTimeStatistics:(id)a9 reflection:(id *)a10 error:(id *)a11 completionHandler:(id)a12;
- (id)renderPipelineStateWithTileVariant:(VariantEntry *)a3 descriptor:(id)a4 options:(unint64_t)a5 tileProgram:(void *)a6 kernelDriverCompileTimeData:(id)a7 serializedTileDataDescriptor:(id)a8 compileTimeStatistics:(id)a9 reflection:(id *)a10 error:(id *)a11 compilerTask:(id)a12 completionHandler:(id)a13;
- (void)addFunctionKeys:(RequiredFunctionKeys *)a3 function:(id)a4 driverData:(id)a5 frameworkData:(id)a6 compilerOptions:(int)a7;
- (void)addLegacyCompiledOutput:(id)a3 cachedCompiledOutput:(id)a4 importedSymbols:(id)a5 importedLibraries:(id)a6 hashKey:(id)a7 type:(char)a8 functionCache:(shared_ptr<MultiLevelBinaryCache>)a9;
- (void)cacheLegacyCompilerData:(void *)a3 cachedData:(void *)a4 hashMap:(void *)a5 libraryData:(void *)a6 functionCache:(shared_ptr<MultiLevelBinaryCache>)a7;
- (void)compileDynamicLibraryWithDescriptor:(id)a3 computePipelineDescriptor:(id)a4 compilerTask:(id)a5 completionHandler:(id)a6;
- (void)compileFunction:(id)a3 serializedData:(id)a4 stateData:(id)a5 options:(unint64_t)a6 compilerTask:(id)a7 completionHandler:(id)a8;
- (void)compileFunction:(id)a3 serializedData:(id)a4 stateData:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (void)compileFunction:(id)a3 serializedPipelineData:(id)a4 stateData:(id)a5 linkDataSize:(unint64_t)a6 frameworkLinking:(BOOL)a7 options:(unsigned int)a8 pipelineCache:(id)a9 sync:(BOOL)a10 compilerTask:(id)a11 completionHandler:(id)a12;
- (void)compileFunction:(id)a3 visibleFunctions:(id)a4 privateVisibleFunctions:(id)a5 visibleFunctionGroups:(id)a6 frameworkData:(id)a7 driverKeyData:(id)a8 options:(unint64_t)a9 pipelineCache:(id)a10 sync:(BOOL)a11 completionHandler:(id)a12;
- (void)compileFunction:(id)a3 visibleFunctions:(id)a4 visibleFunctionGroups:(id)a5 frameworkData:(id)a6 driverKeyData:(id)a7 options:(unint64_t)a8 pipelineCache:(id)a9 sync:(BOOL)a10 completionHandler:(id)a11;
- (void)compileFunctionRequest:(id)a3 compilerTask:(id)a4 completionHandler:(id)a5;
- (void)compileFunctionRequestInternal:(id)a3 frameworkLinking:(BOOL)a4 linkDataSize:(unint64_t)a5 reflectionOnly:(BOOL)a6 compilerTask:(id)a7 completionHandler:(id)a8;
- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)a3 compilerTask:(id)a4 completionHandler:(id)a5;
- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)a3 completionHandler:(id)a4;
- (void)compileRequest:(id)a3 compilerTask:(id)a4 completionHandler:(id)a5;
- (void)compileRequestInternal:(id)a3 binaryArchives:(id)a4 failOnBinaryArchiveMiss:(BOOL)a5 pipelineCache:(id)a6 sync:(BOOL)a7 compilerTask:(id)a8 completionHandler:(id)a9;
- (void)compileStatelessFunctionRequest:(id)a3 reflectionOnly:(BOOL)a4 compilerTask:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)generateMachOWithID:(const char *)a3 binaryEntries:(shared_ptr<std:(const void *)a5 :(int)a6 vector<machOEntry>>)a4 machOSpecializedData:(id)a7 machOType:(unint64_t)a8 Path:()shared_ptr<std:(NSObject<OS_dispatch_data> *) :()UnorderedContainerHash unordered_map<MTLUINT256_t platform:(UnorderedContainerHash>>)a9 bitcodeList:(id)a10 compilerTask:(id)a11 completionHandler:;
- (void)generateMachOWithID:binaryEntries:machOSpecializedData:machOType:Path:platform:bitcodeList:compilerTask:completionHandler:;
- (void)getDataForScript:(const void *)a3 device:(id)a4 function:(id)a5 functionType:(unint64_t)a6 compilerOptions:(char *)a7 compilerOptionsSize:(unint64_t)a8 compiledNextStageVariant:(id)a9 dataSize:(unint64_t *)a10;
- (void)getFunctionKeyWithRenderPipelineDescriptor:(id)a3 options:(unint64_t)a4 unfilteredOptions:(unint64_t)a5 airScript:(const void *)a6 function:(id)a7 functionType:(unint64_t)a8 compiledNextStageVariant:(id)a9 keySize:(unint64_t *)a10 functionDriverData:(void *)a11 functionDriverSize:(unint64_t *)a12;
- (void)getHashForScript:(const void *)a3 device:(id)a4 function:(id)a5 functionType:(unint64_t)a6 compilerOptions:(char *)a7 compilerOptionsSize:(unint64_t)a8 compiledNextStageVariant:(id)a9;
- (void)getProgramObjectForFunction:(id)a3 variantKey:(const VariantKey *)a4 requiredKeys:(const RequiredFunctionKeys *)a5 sourceBinaryArchives:(id)a6;
- (void)initializeFunctionRequestScriptAndFunctionId:(id)a3 script:(const void *)a4 driverCompilerOptions:(id)a5 compiledNextStageVariant:(id)a6;
- (void)releaseCompilerOutputBlocks:(void *)a3;
- (void)releaseCompilerOutputBlocks:(void *)a3 hashMap:(void *)a4;
- (void)releaseHashMaps:(void *)a3;
- (void)unloadShaderCaches;
@end

@implementation MTLCompiler

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (MTLCompiler)initWithTargetData:(id)a3 cacheUUID:(id *)a4 pluginPath:(id)a5 device:(id)a6 compilerFlags:(unint64_t)a7
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLCompiler *)isKindOfClass initWithTargetData:v15 cacheUUID:v16 pluginPath:v17 device:v18 compilerFlags:v19, v20, v21, v27];
    }
  }

  else
  {
    [(MTLCompiler *)self initWithTargetData:a2 cacheUUID:a3 pluginPath:a4 device:0 compilerFlags:a6, a7, v7, v27];
  }

  CC_SHA256_Init(&c);
  if ((reuseCacheOnReboot() & 1) == 0)
  {
    CC_SHA256_Update(&c, "Oct 10 2025", 0xBu);
    CC_SHA256_Update(&c, "21:39:00", 8u);
  }

  CC_SHA256_Update(&c, a4, 0x20u);
  CC_SHA256_Final(md, &c);
  v22 = [a5 copy];
  self->_device = a6;
  self->_pluginPath = v22;
  self->_compilerFlags = a7;
  self->_compilerQueue = dispatch_queue_create("compiler queue", 0);
  v23 = _MTLGetMTLCompilerLLVMVersionForDevice(a6);
  self->_compilerConnectionManager = getCompilerConnectionManager(self->_device, v23);
  self->_compilerId = (*(*self->_compilerConnectionManager + 16))(self->_compilerConnectionManager, [a5 cStringUsingEncoding:4], a3);
  v31 = *md;
  v32 = v30;
  addOrRemoveShaderFunctionCache(0, &v27);
  cntrl = self->_shaderCache.__cntrl_;
  self->_shaderCache = v27;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v25 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)unloadShaderCaches
{
  v3 = _MTLGetLibrariesCache(self->_device);
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock(v3);
    std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::erase(&v4[2], *&v4[2]._os_unfair_lock_opaque, &v4[4]);
    os_unfair_lock_unlock(v4);
    (*(**&v4[8]._os_unfair_lock_opaque + 24))(*&v4[8]._os_unfair_lock_opaque);
  }

  v5 = *(self->_shaderCache.__ptr_->var0 + 3);

  v5();
}

- (BOOL)copyShaderCacheToPath:(id)a3
{
  v5 = _MTLGetLibrariesCache(self->_device);
  if (!v5 || (v6 = *(v5 + 32)) == 0 || (v7 = (*(*v6 + 64))(v6, a3)) != 0)
  {
    ptr = self->_shaderCache.__ptr_;
    if (ptr)
    {
      v9 = *(ptr->var0 + 8);

      LOBYTE(v7) = v9();
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats
{
  v2 = *(_MTLGetLibrariesCache(self->_device) + 32);
  if (v2)
  {
    return *(v2 + 12);
  }

  else
  {
    return 0;
  }
}

- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats
{
  ptr = self->_shaderCache.__ptr_;
  if (ptr)
  {
    return *&ptr->var2;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  self->_compilerConnectionManager = 0;
  dispatch_release(self->_compilerQueue);
  self->_compilerQueue = 0;
  [(MTLCompiler *)self unloadShaderCaches];
  cntrl = self->_shaderCache.__cntrl_;
  self->_shaderCache.__ptr_ = 0;
  self->_shaderCache.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  removeShaderFunctionCache();

  v4.receiver = self;
  v4.super_class = MTLCompiler;
  [(MTLCompiler *)&v4 dealloc];
}

- (MTLHashKey)getBuiltInFunctionId:(SEL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ([MTLCompiler getBuiltInFunctionId:]::onceToken != -1)
  {
    [MTLCompiler getBuiltInFunctionId:];
  }

  v10[0] = [MTLCompiler getBuiltInFunctionId:]::NullHash;
  v10[1] = unk_1ED5B0AA1;
  v6 = *&a4->var0[16];
  v10[2] = *a4->var0;
  v10[3] = v6;
  v9 = 0x40300000000;
  result = MTLHashKey::MTLHashKey(retstr, v10, &v9, 2);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

double __36__MTLCompiler_getBuiltInFunctionId___block_invoke()
{
  result = *&AIR_NULL_HASH;
  [MTLCompiler getBuiltInFunctionId:]::NullHash = AIR_NULL_HASH;
  unk_1ED5B0AA1 = unk_185DE2408;
  return result;
}

- (void)compileRequestInternal:(id)a3 binaryArchives:(id)a4 failOnBinaryArchiveMiss:(BOOL)a5 pipelineCache:(id)a6 sync:(BOOL)a7 compilerTask:(id)a8 completionHandler:(id)a9
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_retain(a3);
  operator new();
}

void __127__MTLCompiler_compileRequestInternal_binaryArchives_failOnBinaryArchiveMiss_pipelineCache_sync_compilerTask_completionHandler___block_invoke(uint64_t a1, void *a2, NSObject *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 72);
  v16[0] = *(a1 + 56);
  v16[1] = v8;
  *&v9 = MTLHashKey::MTLHashKey(&v15, a1 + 56).n128_u64[0];
  if (!a2 && a3)
  {
    buffer_ptr[0] = 0;
    size_ptr = 0;
    v10 = dispatch_data_create_map(a3, buffer_ptr, &size_ptr);
    (*(**(a1 + 40) + 48))(*(a1 + 40), &v15, buffer_ptr[0], size_ptr);
    dispatch_release(v10);
  }

  if (a4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{a4, v9}];
  }

  else
  {
    v11 = 0;
  }

  buffer_ptr[0] = a2;
  buffer_ptr[1] = v11;
  buffer_ptr[2] = v16;
  buffer_ptr[3] = a3;
  (*(*(a1 + 32) + 16))();
  MTLHashKey::~MTLHashKey(&v15);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)compileRequest:(id)a3 compilerTask:(id)a4 completionHandler:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MTLCompiler_compileRequest_compilerTask_completionHandler___block_invoke;
  v5[3] = &unk_1E6EEC140;
  v5[4] = a5;
  [(MTLCompiler *)self compileRequest:a3 pipelineCache:0 compilerTask:a4 completionHandler:v5];
}

uint64_t __61__MTLCompiler_compileRequest_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = a2[3];
  v4 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

- (void)generateMachOWithID:(const char *)a3 binaryEntries:(shared_ptr<std:(const void *)a5 :(int)a6 vector<machOEntry>>)a4 machOSpecializedData:(id)a7 machOType:(unint64_t)a8 Path:()shared_ptr<std:(NSObject<OS_dispatch_data> *) :()UnorderedContainerHash unordered_map<MTLUINT256_t platform:(UnorderedContainerHash>>)a9 bitcodeList:(id)a10 compilerTask:(id)a11 completionHandler:
{
  v12 = a5;
  var1 = a4.var1;
  v61 = *MEMORY[0x1E69E9840];
  var0 = a4.var0;
  v16 = **a4.var0;
  v15 = *(*a4.var0 + 8);
  memset(v59, 0, sizeof(v59));
  *c.count = v59;
  LOBYTE(c.hash[0]) = 0;
  v52 = v16;
  v53 = v15;
  v17 = 0x8E38E38E38E38E39 * ((v15 - v16) >> 3);
  if (v15 != v16)
  {
    if (v17 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  v18 = malloc_type_malloc(0xC71C71C71C71C728 * ((v15 - v16) >> 3) + 136, 0x1000040C2CE426DuLL);
  bzero(v18, 104 * v17 + 136);
  *v18 = a7;
  *(v18 + 31) = dyld_get_active_platform();
  v18[1] = v17;
  *(v18 + 128) = v12;
  *(v18 + 30) = [(MTLTargetDeviceArchitecture *)[(_MTLDevice *)self->_device targetDeviceArchitecture] versionCombined];
  v18[5] = 104 * v17 + 136;
  v19 = [MTLGetGPUArchiverCachePath() UTF8String];
  v20 = strlen(v19) + 1;
  *(v18 + 23) = v20;
  v21 = 104 * v17 + v20 + 143;
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (a3)
  {
    v23 = strlen(a3) + 1;
    *(v18 + 22) = v23;
    v18[4] = v22;
    v22 = ((v21 | 7) + v23) & 0xFFFFFFFFFFFFFFF8;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  if (v12)
  {
    if (v12 == 1)
    {
      v18[8] = v22;
      v24 = strlen(*var1) + 1;
      *(v18 + 28) = v24;
      v22 = (v24 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v25 = *(var1 + 1);
    if (v25)
    {
      v18[7] = v22;
      v26 = (v25 << 6);
      *(v18 + 25) = v26;
      v22 += v26;
    }

    v27 = *(var1 + 2);
    if (v27 && dispatch_data_create_map(v27, &buffer_ptr, &size_ptr))
    {
      v55 = 0;
      v18[9] = v22;
      v28 = size_ptr;
      *(v18 + 29) = size_ptr;
      v22 = (v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_15;
    }
  }

  v55 = 0;
LABEL_15:
  v29 = *a8;
  if (*a8)
  {
    v18[10] = v22;
    v30 = *(v29 + 24);
    *(v18 + 26) = 0;
    *(v18 + 27) = v30;
    operator new();
  }

  if (v53 != v52)
  {
    v31 = 0;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v32 = v18 + 29;
    v33 = 56;
    do
    {
      v34 = v59[0];
      *(v32 - 10) = v22;
      v35 = **var0;
      v36 = *(v35 + v33 - 40);
      if (v36)
      {
        *(v34 + v31) = dispatch_data_create_map(v36, (v34 + v31 + 56), v32 - 9);
        v22 = (v22 + *(v32 - 9) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      *(v32 - 8) = v22;
      v37 = *(v35 + v33 - 32);
      if (v37)
      {
        v38 = v32 - 7;
        *(v34 + v31 + 8) = dispatch_data_create_map(v37, (v34 + v31 + 64), v32 - 7);
        v39 = *(v34 + v31 + 64);
        if (*v39 == 248563483)
        {
          v40 = v39[2];
          *v38 = v40;
        }

        else
        {
          v40 = *v38;
        }

        v22 = (v22 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      *(v32 - 6) = v22;
      v41 = v35 + v33;
      v42 = *(v35 + v33 - 24);
      if (v42)
      {
        *(v34 + v31 + 16) = dispatch_data_create_map(v42, (v34 + v31 + 72), v32 - 5);
        v22 = (v22 + *(v32 - 5) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v43 = *(v41 - 48);
      if (v43)
      {
        v43 = (*(v43 + 64) - *(v43 + 56)) >> 5;
        v44 = v22 + 4 * v43 + 7;
        v45 = v44 & 0xFFFFFFFFFFFFFFF8;
        v46 = (v44 + 32 * v43) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v45 = v22;
        v46 = v22;
      }

      *(v32 - 24) = v43;
      *(v32 - 4) = v22;
      *(v32 - 3) = v45;
      *(v32 - 2) = v46;
      v47 = v55;
      if (!*(v41 - 48))
      {
        v47 = 1;
      }

      if ((v47 & 1) == 0)
      {
        *(v34 + v31 + 24) = dispatch_data_create_map(*(v35 + v33 - 16), (v34 + v31 + 80), v32 - 1);
        v46 = (v46 + *(v32 - 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v48 = *(v35 + v33 - 8);
      v49 = *(v35 + v33);
      v50 = v49 - v48;
      if (v49 != v48)
      {
        v51 = (v34 + v31 + 32);
        if ((v35 + v33 - 8) != v51)
        {
          std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(v51, v48, v49, v50 >> 5);
          v50 = *(v35 + v33) - *(v35 + v33 - 8);
        }

        *(v32 - 22) = v50 >> 5;
        *v32 = v46;
        v46 = (v46 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v32 += 13;
      v33 += 72;
      v31 += 88;
      v22 = v46;
      --v17;
    }

    while (v17);
  }

  operator new();
}

uint64_t __137__MTLCompiler_generateMachOWithID_binaryEntries_machOSpecializedData_machOType_Path_platform_bitcodeList_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = a2;
  v9[1] = v7;
  v9[2] = a1 + 40;
  v9[3] = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v9, a3, a4);
}

uint64_t __83__MTLCompiler_createBinaryArchiveAsRecompileTarget_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = a2;
  v9[1] = v7;
  v9[2] = a1 + 40;
  v9[3] = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v9, a3, a4);
}

- (BOOL)validateLanguageAndAIRVersionForFunction:(id)a3 completionHandler:(id)a4
{
  v7 = [a3 functionData];
  v8 = _MTLGetMTLCompilerLLVMVersionForDevice(self->_device);
  if ((v8 - 32023) >= 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = 131080;
  }

  if (validateLanguageVersion(v7[27] | (v7[26] << 16), ((v8 - 32023) < 2) << 18))
  {
    if (validateAIRVersion(v7[25] | (v7[24] << 16), v9))
    {
      return 1;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ has a deployment target (0x%08X) which is incompatible with this OS (0x%08X).", objc_msgSend(a3, "name"), v7[25] | (v7[24] << 16), v9];
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ is using language version %u.%u which is incompatible with this OS.", objc_msgSend(a3, "name"), v7[26], v7[27]];
  }

  v12[0] = 2;
  v12[1] = v11;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  (*(a4 + 2))(a4, v12);
  return 0;
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForLibraryRequest:(SEL)a3
{
  CC_SHA256_Init(&c);
  var3 = a4->var3;
  if (var3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v7 = dispatch_data_create_map(var3, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v7);
  }

  var4 = a4->var4;
  if (var4)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(var4, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v9);
  }

  buffer_ptr = (a4->var2 & 0xE);
  CC_SHA256_Update(&c, &buffer_ptr, 8u);
  return CC_SHA256_Final(retstr->var0, &c);
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)hashKeyForStatelessCompilationRequest:(SEL)a3
{
  CC_SHA256_Init(&c);
  v6 = [a4 frameworkData];
  if (v6)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v7 = dispatch_data_create_map(v6, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v7);
  }

  v8 = [a4 driverKeyData];
  if (v8)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(v8, &buffer_ptr, &size_ptr);
    CC_SHA256_Update(&c, buffer_ptr, size_ptr);
    dispatch_release(v9);
  }

  return CC_SHA256_Final(retstr->var0, &c);
}

- (void)addLegacyCompiledOutput:(id)a3 cachedCompiledOutput:(id)a4 importedSymbols:(id)a5 importedLibraries:(id)a6 hashKey:(id)a7 type:(char)a8 functionCache:(shared_ptr<MultiLevelBinaryCache>)a9
{
  if (a3 && a3 != a4)
  {
    v10 = [[MTLBinaryEntry alloc] initWithData:a3 importedSymbols:a5 importedLibraries:a6];
    (*(**a9.var0 + 144))(*a9.var0, a7, v10);
  }
}

- (void)releaseCompilerOutputBlocks:(void *)a3
{
  for (i = *(a3 + 2); i; i = *i)
  {
    v5 = i[3];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(a3);
}

- (void)releaseHashMaps:(void *)a3
{
  for (i = *(a3 + 2); i; i = *i)
  {
    v5 = i[3];
    if (v5)
    {
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(a3);
}

- (void)releaseCompilerOutputBlocks:(void *)a3 hashMap:(void *)a4
{
  [(MTLCompiler *)self releaseHashMaps:a4];

  [(MTLCompiler *)self releaseCompilerOutputBlocks:a3];
}

- (void)cacheLegacyCompilerData:(void *)a3 cachedData:(void *)a4 hashMap:(void *)a5 libraryData:(void *)a6 functionCache:(shared_ptr<MultiLevelBinaryCache>)a7
{
  v7 = *(a3 + 2);
  if (v7)
  {
    var0 = a7.var0;
    while (1)
    {
      v23 = *(v7 + 16);
      if (v23 > 7u || ((1 << v23) & 0xB0) == 0)
      {
        break;
      }

LABEL_7:
      v7 = *v7;
      if (!v7)
      {
        return;
      }
    }

    v12 = v7[3];
    if (a4)
    {
      v24 = &v23;
      v13 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(a4, &v23)[3];
      if (v23)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      if (v23)
      {
        goto LABEL_11;
      }
    }

    v14 = (*(*a6 + 64))(a6);
    if (!v23)
    {
      v15 = (*(*a6 + 72))(a6);
      goto LABEL_15;
    }

LABEL_14:
    v15 = 0;
LABEL_15:
    v24 = &v23;
    v16 = std::__hash_table<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(a5, &v23)[3];
    v17 = v23;
    v18 = *(var0 + 1);
    v21 = *var0;
    v22 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(MTLCompiler *)self addLegacyCompiledOutput:v12 cachedCompiledOutput:v13 importedSymbols:v14 importedLibraries:v15 hashKey:v16 type:v17 functionCache:&v21];
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    goto LABEL_7;
  }
}

- (MTLHashKey)getFunctionId:(SEL)a3 airScript:(id)a4 vendorPluginFunctionId:(const void *)a5 bitcodeHashList:(id *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = [a4 functionType];
  v14 = [(_MTLDevice *)self->_device featureProfile]< 8;
  if (!strncmp(a5 + 4, "AIRP", 4uLL))
  {
    PipelineFrameworkHash = _getPipelineFrameworkHash((a5 + *a5), v13, v14);
  }

  else
  {
    if (strncmp(a5 + 4, "AIRF", 4uLL))
    {
      v15 = 0;
      goto LABEL_7;
    }

    PipelineFrameworkHash = _getFunctionHash((a5 + *a5), v14);
  }

  v15 = PipelineFrameworkHash;
LABEL_7:
  if (MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(0, 0))
  {
    CC_SHA256(v15, 0x20u, md);
    v17 = *&md[16];
    *v15 = *md;
    *(v15 + 1) = v17;
  }

  v18 = *(v15 + 1);
  v37 = *v15;
  v38 = v18;
  v22 = [a4 bitCodeHash];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<MTLUINT256_t const*>::__init_with_size[abi:ne200100]<MTLUINT256_t const**,MTLUINT256_t const**>(&v23, *a7, *(a7 + 1), (*(a7 + 1) - *a7) >> 3);
  getGPUCompilerHashForScript(a5, v13, v29);
  *&md[4] = v29[0];
  *&md[20] = v29[1];
  v19 = *&a6->var0[16];
  v32 = *a6->var0;
  *md = 1026;
  v33 = v19;
  v31 = 1027;
  v34 = 1032;
  v35 = v37;
  v36 = v38;
  __p = 0;
  v27 = 0;
  v28 = 0;
  std::vector<std::pair<unsigned int,MTLUINT256_t const>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,MTLUINT256_t const> const*,std::pair<unsigned int,MTLUINT256_t const> const*>(&__p, md, &v37, 3uLL);
  free(v15);
  MTLHashKey::MTLHashKey(retstr, &v22);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  result = v23;
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (MTLHashKey)getFunctionId:(SEL)a3 airScript:(id)a4 vendorPluginFunctionId:(const void *)a5
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (self)
  {
    [(MTLHashKey *)self getFunctionId:a4 airScript:a5 vendorPluginFunctionId:a6 bitcodeHashList:&__p];
    self = __p;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *&retstr->var1.var0[24] = 0u;
    *&retstr->var2.var1 = 0u;
    *&retstr->var0.var2 = 0u;
    *&retstr->var1.var0[8] = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return self;
}

- (MTLHashKey)getFunctionId:(SEL)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if ([a4 airScript])
  {
    v34 = 0uLL;
    v35 = 0uLL;
    if (a4)
    {
      [a4 vendorPluginFunctionId];
    }

    buffer_ptr = 0;
    if ([a4 airScript])
    {
      size_ptr = 0;
      v7 = dispatch_data_create_map([a4 airScript], &buffer_ptr, &size_ptr);
    }

    else
    {
      v7 = 0;
    }

    size_ptr = 0;
    v29 = 0;
    v30 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [a4 visibleFunctions];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v23 = [*(*(&v24 + 1) + 8 * i) bitCodeHash];
          std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](&size_ptr, &v23);
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v10);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [a4 privateVisibleFunctions];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v32 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v23 = [*(*(&v19 + 1) + 8 * j) bitCodeHash];
          std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](&size_ptr, &v23);
        }

        v14 = [v13 countByEnumeratingWithState:&v19 objects:v32 count:16];
      }

      while (v14);
    }

    v17 = [a4 function];
    if (self)
    {
      [(MTLCompiler *)self getFunctionId:v17 airScript:buffer_ptr vendorPluginFunctionId:&v34 bitcodeHashList:&size_ptr];
    }

    else
    {
      *&retstr->var1.var0[24] = 0u;
      *&retstr->var2.var1 = 0u;
      *&retstr->var0.var2 = 0u;
      *&retstr->var1.var0[8] = 0u;
      *&retstr->var0.var0 = 0u;
    }

    dispatch_release(v7);
    result = size_ptr;
    if (size_ptr)
    {
      v29 = size_ptr;
      operator delete(size_ptr);
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    MTLHashKey::MTLHashKey(retstr, &v34);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)initializeVendorPluginFunctionId:(id)a3 airScript:(const void *)a4 driverCompilerOptions:(id)a5 compiledNextStageVariant:(id)a6 vendorPlugin:(id *)a7
{
  if (a4)
  {
    v18 = 0;
    v12 = [(_MTLDevice *)self->_device newTranslatedDriverCompilerOptions:a5 compilerOptionsSize:&v18];
    device = self->_device;
    v14 = [a3 functionType];
    v15 = [(MTLCompiler *)self getHashForScript:a4 device:device function:a3 functionType:v14 compilerOptions:v12 compilerOptionsSize:v18 compiledNextStageVariant:a6];
    if (v15)
    {
      v16 = v15[1];
      *a7->var0 = *v15;
      *&a7->var0[16] = v16;
      free(v15);
    }

    [(_MTLDevice *)self->_device freeTranslatedDriverCompilerOptions:v12 compilerOptionsSize:v18];
  }

  return a4 != 0;
}

- (void)initializeFunctionRequestScriptAndFunctionId:(id)a3 script:(const void *)a4 driverCompilerOptions:(id)a5 compiledNextStageVariant:(id)a6
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  -[MTLCompiler initializeVendorPluginFunctionId:airScript:driverCompilerOptions:compiledNextStageVariant:vendorPlugin:](self, "initializeVendorPluginFunctionId:airScript:driverCompilerOptions:compiledNextStageVariant:vendorPlugin:", [a3 function], a4, a5, a6, &v9);
  v8[0] = v9;
  v8[1] = v10;
  [a3 setVendorPluginFunctionId:v8];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getHashForScript:(const void *)a3 device:(id)a4 function:(id)a5 functionType:(unint64_t)a6 compilerOptions:(char *)a7 compilerOptionsSize:(unint64_t)a8 compiledNextStageVariant:(id)a9
{
  if (!a3)
  {
    return 0;
  }

  if (!strncmp(a3 + 4, "AIRP", 4uLL) || !strncmp(a3 + 4, "AIRF", 4uLL))
  {
    v15 = a3 + *a3;
  }

  else
  {
    v15 = 0;
  }

  if (a6 <= 4)
  {
    switch(a6)
    {
      case 1uLL:

        return [a4 getVertexFunctionId:v15 function:a5 compilerOptions:a7 compilerOptionsSize:a8 compiledFragmentVariant:a9];
      case 2uLL:

        return [a4 getFragmentFunctionId:v15 compilerOptions:a7 compilerOptionsSize:a8];
      case 3uLL:

        return [a4 getComputeFunctionId:v15 function:a5 compilerOptions:a7 compilerOptionsSize:a8];
      default:
        return 0;
    }
  }

  else
  {
    if (a6 <= 6)
    {
      if (a6 == 5)
      {

        return [a4 getVisibleFunctionId:v15 compilerOptions:a7 compilerOptionsSize:a8];
      }

      else
      {

        return [a4 getIntersectionFunctionId:v15 compilerOptions:a7 compilerOptionsSize:a8];
      }
    }

    if (a6 != 7)
    {
      if (a6 == 8)
      {

        return [a4 getObjectFunctionId:v15 compilerOptions:a7 compilerOptionsSize:a8];
      }

      return 0;
    }

    return [a4 getMeshFunctionId:v15 compilerOptions:a7 compilerOptionsSize:a8];
  }
}

- (void)getDataForScript:(const void *)a3 device:(id)a4 function:(id)a5 functionType:(unint64_t)a6 compilerOptions:(char *)a7 compilerOptionsSize:(unint64_t)a8 compiledNextStageVariant:(id)a9 dataSize:(unint64_t *)a10
{
  if (!a3)
  {
    return 0;
  }

  if (!strncmp(a3 + 4, "AIRP", 4uLL))
  {
    v15 = a3 + *a3;
  }

  else
  {
    v15 = 0;
  }

  switch(a6)
  {
    case 8uLL:

      return [a4 getObjectFunctionDriverData:v15 function:a5 compilerOptions:a7 nextStageVariant:a9 driverDataSize:a10];
    case 7uLL:

      return [a4 getMeshFunctionDriverData:v15 function:a5 compilerOptions:a7 nextStageVariant:a9 driverDataSize:a10];
    case 1uLL:

      return [a4 getVertexFunctionDriverData:v15 function:a5 compilerOptions:a7 nextStageVariant:a9 driverDataSize:a10];
    default:
      if (a10)
      {
        *a10 = 0;
      }

      return 0;
  }
}

- (void)getFunctionKeyWithRenderPipelineDescriptor:(id)a3 options:(unint64_t)a4 unfilteredOptions:(unint64_t)a5 airScript:(const void *)a6 function:(id)a7 functionType:(unint64_t)a8 compiledNextStageVariant:(id)a9 keySize:(unint64_t *)a10 functionDriverData:(void *)a11 functionDriverSize:(unint64_t *)a12
{
  if (a8 > 6)
  {
    if (a8 != 7)
    {
      if (a8 == 8)
      {
        return [(_MTLDevice *)self->_device objectFunctionKeyWithRenderPipelineDescriptor:a3 options:a4 nextStageVariant:a9 objectKeySize:a10, a7];
      }

      return 0;
    }

    return [(_MTLDevice *)self->_device meshFunctionKeyWithRenderPipelineDescriptor:a3 options:a4 nextStageVariant:a9 meshKeySize:a10, a7];
  }

  else
  {
    if (a8 != 1)
    {
      if (a8 == 2)
      {
        return [(_MTLDevice *)self->_device fragmentFunctionKeyWithRenderPipelineDescriptor:a3 options:a4 previousStateVariant:0 fragmentKeySize:a10, a7];
      }

      return 0;
    }

    return [(_MTLDevice *)self->_device vertexFunctionKeyWithRenderPipelineDescriptor:a3 options:a4 nextStageVariant:a9 vertexKeySize:a10, a7];
  }
}

- (id)newLinkedFunctionsBitcodeFromRequest:(id)a3 hashKey:(void *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a3 "visibleFunctions")] || objc_msgSend(objc_msgSend(a3, "privateVisibleFunctions"), "count"))
  {
    [objc_msgSend(a3 "visibleFunctions")];
    [objc_msgSend(a3 "privateVisibleFunctions")];
    memset(v27, 0, sizeof(v27));
    v28 = 1065353216;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [a3 visibleFunctions];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [v9 bitcodeDataInternal];
          v29 = [v9 bitCodeHash];
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(v27, v29)[6] = v10;
        }

        v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v6);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [a3 privateVisibleFunctions];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * j);
          v16 = [v15 bitcodeDataInternal];
          v29 = [v15 bitCodeHash];
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(v27, v29)[6] = v16;
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v30 count:16];
      }

      while (v12);
    }

    operator new[]();
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)createErrorMessageWithRequest:(id)a3 key:(id)a4 cacheType:(const char *)a5 itemLookedFor:(const char *)a6
{
  v10 = [a3 function];
  v11 = [a3 airScript];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v10 name];
  if (a6)
  {
    v14 = [v12 stringWithFormat:@"Unable to find %s for function %@", a6, v13];
  }

  else
  {
    v14 = [v12 stringWithFormat:@"Unable to find function %@", v13, v26];
  }

  v15 = v14;
  if (v11)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v16 = dispatch_data_create_map(v11, &buffer_ptr, &size_ptr);
    v17 = buffer_ptr;
    if (!strncmp(buffer_ptr + 4, "AIRP", 4uLL))
    {
      v18 = (v17 + *v17);
      v19 = objc_msgSend(v15, "stringByAppendingFormat:", @" (");
      v20 = (v18 - *v18);
      if (*v20 >= 9u && (v21 = v20[4]) != 0 && (v22 = *(v18 + v21) - 1, v22 <= 3u))
      {
        v23 = off_1E6EEC668[v22];
      }

      else
      {
        v23 = @"unknown pipeline type");
      }

      v15 = [v19 stringByAppendingFormat:v23];
    }

    dispatch_release(v16);
  }

  if (a6)
  {
    v24 = @" in (legacy) %s.\n Expected ";
  }

  else
  {
    v24 = @" in %s. \n Expected ";
  }

  return [objc_msgSend(v15 stringByAppendingFormat:v24, a5), "stringByAppendingFormat:", @"%@", objc_msgSend(a4, "description")];
}

- (void)compileFunctionRequestInternal:(id)a3 frameworkLinking:(BOOL)a4 linkDataSize:(unint64_t)a5 reflectionOnly:(BOOL)a6 compilerTask:(id)a7 completionHandler:(id)a8
{
  v9 = a6;
  v10 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v13 = [a3 function];
  if (v13)
  {
    v14 = v13;
    if ([(MTLCompiler *)self validateLanguageAndAIRVersionForFunction:v13 completionHandler:a8])
    {
      v15 = [a3 pipelineOptions];
      v16 = [a3 function];
      v34 = v10;
      v18 = v16 && (v17 = v16, [v16 functionData]) && *(objc_msgSend(v17, "functionData") + 88) != 0;
      v19 = [a3 airScript];
      v21 = (v15 & 0xC1280000) != 0 || v19 == 0;
      v22 = [(_MTLFunction *)v14 device];
      v23 = [a3 pipelineOptions];
      compilerFlags = self->_compilerFlags;
      v25 = MTLCompileTypeForFunction(v14);
      [(_MTLFunction *)v14 functionData];
      v26 = MTLGetCompilerOptions(v22, v23, compilerFlags, v25, v9);
      v27 = v26;
      if ((v26 & 0x4000) != 0)
      {
        _MTLDebugIgnoreFailOnMissFlag();
      }

      [objc_msgSend(a3 "gpuCompilerSPIOptions")];
      [a3 binaryArchives];
      [a3 pipelineOptions];
      if ((v27 & 2) == 0 && v34 && (self->_compilerFlags & 0x20) == 0)
      {
        [(_MTLFunction *)v14 functionType];
      }

      if ([a3 destinationBinaryArchive])
      {
        [objc_msgSend(a3 "destinationBinaryArchive")];
      }

      v28 = v21 || v18;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      if ((v27 & 2) != 0 || ![a3 destinationBinaryArchive])
      {
        LOBYTE(v29) = 0;
      }

      else
      {
        v29 = [objc_msgSend(a3 "destinationBinaryArchive")] & (v28 ^ 1);
      }

      v38 = v29;
      if ([a3 pipelineOptions])
      {
        [a3 pipelineOptions];
      }

      [(_MTLDevice *)self->_device featureProfile];
      *(v36 + 24);
      [a3 pipelineCache];
      v30 = [a3 binaryArchives];
      v31 = [a3 destinationBinaryArchive];
      ptr = self->_shaderCache.__ptr_;
      MultiLevelCacheFactory::createBinaryCache(v30, v31);
    }
  }

  else
  {
    v39[0] = 2;
    v39[1] = @"function is nil";
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    (*(a8 + 2))(a8, v39);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __122__MTLCompiler_compileFunctionRequestInternal_frameworkLinking_linkDataSize_reflectionOnly_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v47 = a3;
  if ([*(a1 + 32) destinationBinaryArchive])
  {
    [objc_msgSend(*(a1 + 32) "destinationBinaryArchive")];
  }

  if (!a2)
  {
    for (i = *(*(a1 + 88) + 16); i; i = *i)
    {
      v9 = *(i + 3);
      if (v9)
      {
        v10 = *(a1 + 104);
        v41[0] = (i + 16);
        std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(v10, i + 16)[3] = v9;
        dispatch_retain(*(i + 3));
      }
    }

    v11 = *(a1 + 152);
    if ((v11 & 2) != 0)
    {
      v14 = *(a1 + 104);
      LOBYTE(v41[0]) = 2;
    }

    else
    {
      if (v11)
      {
        v41[0] = 0;
        size_ptr = 0;
        buffer_ptr = 0;
        v12 = dispatch_data_create_map(v47, &buffer_ptr, &size_ptr);
        v13 = *(a1 + 152);
        deserializeCompilerOutputData(buffer_ptr, size_ptr, v41, *(a1 + 88), *(a1 + 104));
        dispatch_release(v12);
LABEL_16:
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v15 = *(a1 + 104);
          LOBYTE(size_ptr) = 0;
          v41[0] = &size_ptr;
          v16 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v15, &size_ptr)[3];
          if (v16)
          {
            v17 = *(a1 + 104);
            v44 = 2;
            v41[0] = &v44;
            LOBYTE(v16) = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v17, &v44)[3] != 0;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }

        *(*(*(a1 + 72) + 8) + 24) = v16;
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v18 = [MTLBinaryEntry alloc];
          v19 = *(a1 + 104);
          LOBYTE(size_ptr) = 0;
          v41[0] = &size_ptr;
          v20 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v19, &size_ptr)[3];
          v21 = *(a1 + 104);
          v44 = 2;
          v41[0] = &v44;
          v22 = [(MTLBinaryEntry *)v18 initWithData:v20 reflectionBlock:std::__hash_table<std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>, std::__unordered_map_hasher<CompilerOutputType, std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>, std::hash<CompilerOutputType>, std::equal_to<CompilerOutputType>, true>, std::__unordered_map_equal<CompilerOutputType, std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>, std::equal_to<CompilerOutputType>, std::hash<CompilerOutputType>, true>, std::allocator<std::__hash_value_type<CompilerOutputType, NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType, std::piecewise_construct_t const&, std::tuple<CompilerOutputType&&>, std::tuple<>>(v21, &v44)[3]];
          if ((*(a1 + 152) & 2) != 0)
          {
            v23 = [*(a1 + 32) function];
            -[MTLBinaryEntry setAirScript:](v22, "setAirScript:", [*(a1 + 32) airScript]);
            v24 = [v23 bitcodeDataInternal];
            [(MTLBinaryEntry *)v22 setBitcode:v24];
            -[MTLBinaryEntry setLinkedBitcodes:](v22, "setLinkedBitcodes:", [*(a1 + 40) newLinkedFunctionsBitcodeFromRequest:*(a1 + 32) hashKey:*(*(a1 + 80) + 8) + 48]);
            dispatch_release(v24);
          }

          if (*(a1 + 156) != 1 || (*(a1 + 152) & 2) != 0)
          {
            v31 = (*(**(a1 + 120) + 128))(*(a1 + 120), *(a1 + 48), v22, [*(a1 + 32) archiverId], objc_msgSend(*(a1 + 56), "functionType"));
            v32 = *(a1 + 104);
            LOBYTE(size_ptr) = 7;
            v41[0] = &size_ptr;
            std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v32, &size_ptr)[3] = v31;
          }

          else
          {
            (*(**(a1 + 120) + 144))(*(a1 + 120), *(a1 + 48), v22);
          }

          v33 = *(a1 + 120);
          v34 = *(a1 + 104);
          LOBYTE(size_ptr) = 7;
          v41[0] = &size_ptr;
          v35 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v34, &size_ptr)[3];
          (*(*v33 + 136))(v33, v35, *(a1 + 48), [*(a1 + 56) functionType]);
        }

        else
        {
          v25 = *(a1 + 40);
          v26 = *(a1 + 104);
          v27 = *(a1 + 88);
          v28 = *(a1 + 136);
          v29 = [*(a1 + 56) libraryData];
          v30 = *(a1 + 128);
          v42 = *(a1 + 120);
          v43 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [v25 cacheLegacyCompilerData:v26 cachedData:v27 hashMap:v28 libraryData:v29 functionCache:&v42];
          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }
        }

        if (*(a1 + 157) == 1)
        {
          v36 = *(a1 + 104);
          LOBYTE(size_ptr) = 3;
          v41[0] = &size_ptr;
          if (!std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v36, &size_ptr)[3])
          {
            v37 = *(a1 + 88);
            v44 = 3;
            v41[0] = &v44;
            if (!std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v37, &v44)[3])
            {
              LOBYTE(size_ptr) = 0;
              v38 = *(a1 + 120);
              v39 = *(a1 + 136);
              v44 = 3;
              v41[0] = &v44;
              v40 = std::__hash_table<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v39, &v44);
              (*(*v38 + 56))(v38, v40[3], &size_ptr, 1);
            }
          }
        }

        goto LABEL_36;
      }

      v14 = *(a1 + 104);
      LOBYTE(v41[0]) = 0;
    }

    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*&>(v14, v41);
    dispatch_retain(v47);
    goto LABEL_16;
  }

  if (!a4)
  {
LABEL_36:
    v7 = 0;
    goto LABEL_37;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
LABEL_37:
  FunctionReplyParameters::FunctionReplyParameters(v41, a2, v7, *(a1 + 104), *(a1 + 136));
  (*(*(a1 + 64) + 16))();

  [*(a1 + 40) releaseCompilerOutputBlocks:*(a1 + 88) hashMap:*(a1 + 136)];
  [*(a1 + 40) releaseCompilerOutputBlocks:*(a1 + 104)];
}

- (void)compileFunctionRequest:(id)a3 compilerTask:(id)a4 completionHandler:(id)a5
{
  v9 = [a3 function];
  if ([v9 functionType] == 5 || objc_msgSend(v9, "functionType") == 6)
  {

    [(MTLCompiler *)self compileStatelessFunctionRequest:a3 reflectionOnly:0 compilerTask:a4 completionHandler:a5];
  }

  else
  {

    [(MTLCompiler *)self compileFunctionRequestInternal:a3 frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:a4 completionHandler:a5];
  }
}

- (void)compileStatelessFunctionRequest:(id)a3 reflectionOnly:(BOOL)a4 compilerTask:(id)a5 completionHandler:(id)a6
{
  v11 = *MEMORY[0x1E69E9840];
  if (([a3 pipelineOptions] & 4) != 0)
  {
    [a3 pipelineOptions];
  }

  [a3 pipelineOptions];
  v7 = [a3 binaryArchives];
  v8 = [a3 destinationBinaryArchive];
  [a3 pipelineCache];
  ptr = self->_shaderCache.__ptr_;
  MultiLevelCacheFactory::createBinaryCache(v7, v8);
}

uint64_t __93__MTLCompiler_compileStatelessFunctionRequest_reflectionOnly_compilerTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) "destinationBinaryArchive")];
  if (!*a2)
  {
    memset(v22, 0, sizeof(v22));
    v23 = 1065353216;
    v4 = a2[5];
    if (!v4)
    {
      v5 = *(a1 + 80);
      v21 = 2;
      v24 = &v21;
      v4 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v5, &v21)[3];
    }

    v20 = 2;
    v24 = &v20;
    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v22, &v20)[3] = v4;
    v6 = a2[3];
    if (!v6)
    {
      v7 = *(a1 + 80);
      v21 = 0;
      v24 = &v21;
      v6 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v7, &v21)[3];
    }

    v20 = 0;
    v24 = &v20;
    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v22, &v20)[3] = v6;
    if (*(a1 + 128) != 1)
    {
      goto LABEL_11;
    }

    v8 = [[MTLBinaryEntry alloc] initWithData:a2[3] reflectionBlock:a2[5]];
    v9 = v8;
    if (*(a1 + 129))
    {
      (*(**(a1 + 96) + 144))(*(a1 + 96), *(a1 + 56), v8);
    }

    else
    {
      [(MTLBinaryEntry *)v8 setAirScript:*(a1 + 40)];
      v10 = _MTLNSDataToDispatchData([*(a1 + 48) bitcodeData], 0);
      [(MTLBinaryEntry *)v9 setBitcode:v10];
      dispatch_release(v10);
      (*(**(a1 + 96) + 128))(*(a1 + 96), *(a1 + 56), v9, 0, [*(a1 + 48) functionType]);
    }

    if ((*(a1 + 128) & 1) == 0)
    {
LABEL_11:
      v11 = *(a1 + 64);
      v12 = *(a1 + 80);
      v13 = *(a1 + 112);
      v14 = [*(a1 + 48) libraryData];
      v15 = *(a1 + 104);
      v18 = *(a1 + 96);
      v19 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v11 cacheLegacyCompilerData:v22 cachedData:v12 hashMap:v13 libraryData:v14 functionCache:&v18];
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v22);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    dispatch_release(v16);
  }

  (*(*(a1 + 72) + 16))();
  return [*(a1 + 64) releaseHashMaps:*(a1 + 112)];
}

- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)a3 compilerTask:(id)a4 completionHandler:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  var1 = a3->var1;
  v8 = [objc_msgSend(var1 "device")];
  if (v8)
  {
    v9 = MTLSerializePluginDataDictionary([objc_msgSend(var1 "device")], 0) + 44;
    v10 = 44;
  }

  else
  {
    v10 = 0;
    v9 = 44;
  }

  v11 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  v12 = [var1 cacheEntry];
  v13 = *(v12 + 28);
  *(v11 + 8) = *(v12 + 12);
  *(v11 + 24) = v13;
  *v11 = v10;
  if (v8)
  {
    MTLSerializePluginDataDictionary([objc_msgSend(var1 "device")], &v11[v10]);
  }

  if ([var1 shaderValidationEnabled])
  {
    v11[40] = 1;
  }

  a3->var3 = dispatch_data_create(v11, v9, 0, *MEMORY[0x1E69E9648]);
  Options = MTLPipelineOptionsFromDynamicLibraryLoadOptions(a3->var2);
  if ([var1 shaderValidationEnabled])
  {
    Options |= 0x1000000uLL;
  }

  MTLGetCompilerOptions([var1 device], Options, self->_compilerFlags, 2uLL, 0);
  operator new();
}

- (void)compileLibraryRequest:(MTLCompileLibraryRequestData *)a3 completionHandler:(id)a4
{
  v4 = *&a3->var2;
  v5[0] = *&a3->var0;
  v5[1] = v4;
  v5[2] = *&a3->var4;
  [(MTLCompiler *)self compileLibraryRequest:v5 compilerTask:0 completionHandler:a4];
}

- (id)downgradeFunctionRequest:(const void *)a3 targetLLVMVersion:(unsigned int)a4 frameworkData:(void *)a5 compilerTask:(id)a6 error:(id *)a7
{
  v14 = *MEMORY[0x1E69E9840];
  MTLCompilerFunctionRequest::function(a3);
  if ((MTLCompilerFunctionRequest::shouldRunFrameworkPasses(a3) & 1) == 0)
  {
    MTLCompilerFunctionRequest::getOptions(a3);
  }

  object = 0;
  downgradeRequestHashAndData(&v13, &object, a3, a4);
  v10 = *(_MTLGetLibrariesCache(self->_device) + 32);
  MultiLevelCacheFactory::createAirCache();
}

void __91__MTLCompiler_downgradeFunctionRequest_targetLLVMVersion_frameworkData_compilerTask_error___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a1 + 64))
    {
      if (a4)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
        if (!v6)
        {
          v6 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:1];
        }
      }

      else
      {
        v6 = @"empty error message";
      }

      v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:*MEMORY[0x1E696A578]];
      **(a1 + 64) = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v13];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v17[0] = *(a1 + 48);
    v17[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MTLHashKey::MTLHashKey(&v18, a1 + 84);
    v12 = processCompiledLibrary(a3, v10, 7, v17, &v18, 1, 0, v8, v9, 0, *(a1 + 64), *(a1 + 72), *(a1 + 80));
    MTLHashKey::~MTLHashKey(&v18);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12)
    {
      if ((*(a1 + 80) & 2) != 0)
      {
        v14 = *(a1 + 72);
        if (v14)
        {
          v16 = 2;
          v18.var0.var0 = &v16;
          std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(v14, &v16);
        }
      }

      else if ([v8 count] == 1)
      {
        *(*(*(a1 + 40) + 8) + 40) = [v8 objectForKey:{objc_msgSend(objc_msgSend(v8, "allKeys"), "objectAtIndexedSubscript:", 0)}];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)downgradeRequest:(void *)a3 frameworkData:(void *)a4 compilerTask:(id)a5 error:(id *)a6
{
  LLVMVersion = MTLCompilerConnectionManager::getLLVMVersion(self->_compilerConnectionManager);
  if (LLVMVersion >= 32023)
  {
    if (a6)
    {
      *a6 = 0;
    }

    return 1;
  }

  else
  {
    v12 = LLVMVersion;
    if (MTLCompilerFunctionRequest::function(a3))
    {
      v13 = [(MTLCompiler *)self downgradeFunctionRequest:a3 targetLLVMVersion:v12 frameworkData:a4 compilerTask:a5 error:a6];
      Options = MTLCompilerFunctionRequest::getOptions(a3);
      if (a4 && (Options & 2) != 0)
      {
        v18 = 2;
        v19 = &v18;
        v15 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v18)[3];
      }

      else
      {
        MTLCompilerFunctionRequest::setFunction(a3, v13);
        v15 = v13;
      }
    }

    else
    {
      v17 = [MTLCompilerFunctionRequest::library(a3) device];
      v15 = MTLLibraryBuilder::newDowngradedLibrary(*(v17 + 440), a3, v12, a5, a6);
      MTLCompilerFunctionRequest::setLibrary(a3, v15);
    }

    return v15 != 0;
  }
}

uint64_t __118__MTLCompiler_statelessBackendCompileRequestInternal_sync_compilerHash_reflectionOnly_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v36 = a3;
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }

  else
  {
    v7 = 0;
  }

  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v27 = a2;
  v28 = v7;
  v29 = *(*(a1 + 48) + 8) + 48;
  v24 = 0u;
  v25 = 0u;
  v26 = 1065353216;
  if (a2)
  {
    v8 = 0;
    v9 = 0;
  }

  else if (*(a1 + 64) == 1)
  {
    LOBYTE(v19[0]) = 2;
    std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*&>(&v24, v19);
    dispatch_retain(v36);
    v8 = 0;
    v9 = 0;
    *&v31 = v36;
  }

  else
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v10 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
    v21 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    deserializeCompilerOutputData(buffer_ptr, size_ptr, &v21, v19, &v24);
    v18 = 0;
    v37 = &v18;
    *&v30 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18)[3];
    v18 = 3;
    v37 = &v18;
    *&v33 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18)[3];
    v18 = 6;
    v37 = &v18;
    *&v35 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18)[3];
    v18 = 4;
    v37 = &v18;
    v8 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18)[3];
    *(&v33 + 1) = v8;
    v18 = 4;
    v37 = &v18;
    v9 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18)[3];
    *&v34 = v9;
    v18 = 2;
    v37 = &v18;
    *&v31 = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(&v24, &v18)[3];
    dispatch_release(v10);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v19);
  }

  if ((MTLCompilerFunctionRequest::getOptions(*(a1 + 56)) & 0x200) != 0)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = v11;
    if (v9)
    {
      _MTLAddCompilerServiceCompileTimeStats(v11, v9);
    }

    if (v8)
    {
      [*(*(a1 + 32) + 8) deserializeCompileTimeStats:v8 addToDictionary:v12];
    }

    v13 = MTLCompilerFunctionRequest::function(*(a1 + 56));
    v14 = *(a1 + 56);
    if (v13)
    {
      -[NSDictionary setObject:forKey:](v12, "setObject:forKey:", [MTLCompilerFunctionRequest::function(v14) name], MTLBinaryFunctionPerformanceKeyFunctionName);
      _MTLAddCompileBinaryFunctionPerformanceStatistics(v12);
    }

    else if (MTLCompilerFunctionRequest::library(v14))
    {
      -[NSDictionary setObject:forKey:](v12, "setObject:forKey:", [MTLCompilerFunctionRequest::library(*(a1 + 56)) installName], MTLDynamicLibraryPerformanceKeyInstallName);
      _MTLAddCompileDynamicLibraryPerformanceStatistics(v12);
    }
  }

  (*(*(a1 + 40) + 16))();
  for (i = v25; i; i = *i)
  {
    v16 = i[3];
    if (v16)
    {
      dispatch_release(v16);
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v24);
}

- (void)compileFunction:(id)a3 serializedPipelineData:(id)a4 stateData:(id)a5 linkDataSize:(unint64_t)a6 frameworkLinking:(BOOL)a7 options:(unsigned int)a8 pipelineCache:(id)a9 sync:(BOOL)a10 compilerTask:(id)a11 completionHandler:(id)a12
{
  v18 = a7;
  v17 = objc_opt_new();
  [v17 setSync:a10];
  [v17 setFunction:a3];
  [v17 setPipelineOptions:a8];
  [v17 setFrameworkData:a4];
  [v17 setDriverKeyData:a5];
  [v17 setPipelineCache:a9];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __152__MTLCompiler_compileFunction_serializedPipelineData_stateData_linkDataSize_frameworkLinking_options_pipelineCache_sync_compilerTask_completionHandler___block_invoke;
  v20[3] = &unk_1E6EEC1B8;
  v20[4] = a12;
  [(MTLCompiler *)self compileFunctionRequestInternal:v17 frameworkLinking:v18 linkDataSize:a6 reflectionOnly:0 compilerTask:a11 completionHandler:v20];
}

uint64_t __152__MTLCompiler_compileFunction_serializedPipelineData_stateData_linkDataSize_frameworkLinking_options_pipelineCache_sync_compilerTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[5];
  v4 = a2[9];
  v5 = a2[10];
  v6 = a2[11];
  v7 = a2[13];
  v9 = a2[1];
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

- (void)compileFunction:(id)a3 visibleFunctions:(id)a4 privateVisibleFunctions:(id)a5 visibleFunctionGroups:(id)a6 frameworkData:(id)a7 driverKeyData:(id)a8 options:(unint64_t)a9 pipelineCache:(id)a10 sync:(BOOL)a11 completionHandler:(id)a12
{
  v19 = objc_opt_new();
  [v19 setSync:a11];
  [v19 setFunction:a3];
  [v19 setPipelineOptions:a9];
  [v19 setFrameworkData:a7];
  [v19 setDriverKeyData:a8];
  [v19 setPipelineCache:a10];
  [v19 setVisibleFunctions:a4];
  [v19 setVisibleFunctionGroups:a6];
  [v19 setPrivateVisibleFunctions:a5];
  [(MTLCompiler *)self compileFunctionRequestInternal:v19 frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:0 completionHandler:a12];
}

- (void)compileFunction:(id)a3 visibleFunctions:(id)a4 visibleFunctionGroups:(id)a5 frameworkData:(id)a6 driverKeyData:(id)a7 options:(unint64_t)a8 pipelineCache:(id)a9 sync:(BOOL)a10 completionHandler:(id)a11
{
  v18 = objc_opt_new();
  [v18 setSync:a10];
  [v18 setFunction:a3];
  [v18 setPipelineOptions:a8];
  [v18 setFrameworkData:a6];
  [v18 setDriverKeyData:a7];
  [v18 setPipelineCache:a9];
  [v18 setVisibleFunctions:a4];
  [v18 setVisibleFunctionGroups:a5];
  [(MTLCompiler *)self compileFunctionRequestInternal:v18 frameworkLinking:0 linkDataSize:0 reflectionOnly:0 compilerTask:0 completionHandler:a11];
}

- (void)compileDynamicLibraryWithDescriptor:(id)a3 computePipelineDescriptor:(id)a4 compilerTask:(id)a5 completionHandler:(id)a6
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compiling dynamic libraries is not supported!" forKey:{*MEMORY[0x1E696A578], a5}];
  v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLDynamicLibraryDomain" code:2 userInfo:v7];
  (*(a6 + 2))(a6, 0, v8);
}

- (id)compileDynamicLibraryWithDescriptor:(id)a3 computePipelineDescriptor:(id)a4 compilerTask:(id)a5 error:(id *)a6
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__MTLCompiler_compileDynamicLibraryWithDescriptor_computePipelineDescriptor_compilerTask_error___block_invoke;
  v9[3] = &unk_1E6EEC1E0;
  v9[4] = &v16;
  v9[5] = &v10;
  [(MTLCompiler *)self compileDynamicLibraryWithDescriptor:a3 computePipelineDescriptor:a4 completionHandler:v9];
  if (a6)
  {
    *a6 = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

id __96__MTLCompiler_compileDynamicLibraryWithDescriptor_computePipelineDescriptor_compilerTask_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    dispatch_retain(*(a2 + 24));
    *(*(*(a1 + 32) + 8) + 40) = *(a2 + 24);
  }

  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)addComputePipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = 0;
  [(MTLCompiler *)self newComputePipelineStateWithDescriptorInternal:a3 options:a5 | 3 pipelineCache:0 destinationBinaryArchive:a4 reflection:0 error:&v9 compilerTask:0 completionHandler:0];
  v7 = v9;
  if (a6)
  {
    *a6 = v9;
  }

  return v7 == 0;
}

- (BOOL)addRenderPipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = 0;
  [(MTLCompiler *)self newRenderPipelineStateWithDescriptorInternal:a3 options:a5 | 3 reflection:0 destinationBinaryArchive:a4 error:&v9 completionHandler:0];
  v7 = v9;
  if (a6)
  {
    *a6 = v9;
  }

  return v7 == 0;
}

- (BOOL)addTileRenderPipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = 0;
  [(MTLCompiler *)self newRenderPipelineStateWithTileDescriptorInternal:a3 options:a5 | 3 reflection:0 destinationBinaryArchive:a4 error:&v9 compilerTask:0 completionHandler:0];
  v7 = v9;
  if (a6)
  {
    *a6 = v9;
  }

  return v7 == 0;
}

- (BOOL)addMeshRenderPipelineStateWithDescriptor:(id)a3 destinationBinaryArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compiling mesh pipelines for binary archives is not supported!" forKey:{*MEMORY[0x1E696A578], a5}];
  if (a6)
  {
    *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLBinaryArchiveDomain" code:3 userInfo:v7];
  }

  return 0;
}

- (void)compileFunction:(id)a3 serializedData:(id)a4 stateData:(id)a5 options:(unint64_t)a6 compilerTask:(id)a7 completionHandler:(id)a8
{
  v15 = [a3 device];
  compilerFlags = self->_compilerFlags;
  v17 = MTLCompileTypeForFunction(a3);
  LOBYTE(v18) = 0;
  [(MTLCompiler *)self compileFunction:a3 serializedPipelineData:a4 stateData:a5 linkDataSize:0 frameworkLinking:0 options:MTLGetCompilerOptions(v15 pipelineCache:a6 sync:compilerFlags compilerTask:v17 completionHandler:0), 0, v18, a7, a8];
}

- (void)compileFunction:(id)a3 serializedData:(id)a4 stateData:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v13 = [a3 device];
  compilerFlags = self->_compilerFlags;
  v15 = MTLCompileTypeForFunction(a3);
  v16 = MTLGetCompilerOptions(v13, a6, compilerFlags, v15, 0);

  [(MTLCompiler *)self compileFunction:a3 serializedData:a4 stateData:a5 options:v16 compilerTask:0 completionHandler:a7];
}

uint64_t __113__MTLCompiler_reflectionWithFunction_options_sync_pipelineLibrary_binaryArchives_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = a2[5];
  v4 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

uint64_t __113__MTLCompiler_reflectionWithFunction_options_sync_pipelineLibrary_binaryArchives_compilerTask_completionHandler___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v2 = a2[5];
  v4 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

- (void)getProgramObjectForFunction:(id)a3 variantKey:(const VariantKey *)a4 requiredKeys:(const RequiredFunctionKeys *)a5 sourceBinaryArchives:(id)a6
{
  v6 = a6;
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [a6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v10)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v11 = v10;
  v12 = *v28;
  v25 = *v28;
  v26 = v6;
  do
  {
    v13 = 0;
    while (2)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      v15 = a3;
      v16 = [v14 findProgramObjectForFunction:{objc_msgSend(a3, "bitCodeHash", v25)}];
      v17 = 0;
      if ([v14 supportsAIRNT])
      {
        v18 = 64;
      }

      else
      {
        v18 = 0;
      }

      v19 = a5;
      v20 = a5 + v18;
      while (1)
      {
        v21 = *&v20[8 * v17];
        if (!v21)
        {
          goto LABEL_22;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

        if (v17)
        {
          break;
        }

        if (!VariantList<4u>::find<VariantKey>(v16, a4))
        {
          goto LABEL_21;
        }

LABEL_22:
        if (++v17 == 8)
        {
          if (!v16)
          {
            v16 = [v14 programObjectForFunction:{objc_msgSend(v15, "bitCodeHash")}];
          }

          goto LABEL_30;
        }
      }

      if (v17 == 6)
      {
        v22 = VariantList<4u>::find<VariantKey>(v16, a4);
        if (v22 && v22[9])
        {
          goto LABEL_22;
        }
      }

      else if (v17 == 2 && [v16[54] objectForKey:&stru_1EF478240])
      {
        goto LABEL_22;
      }

LABEL_21:
      if ([v14 getBinaryDataForKey:v21 reflectionType:1])
      {
        goto LABEL_22;
      }

      ++v13;
      a5 = v19;
      a3 = v15;
      v12 = v25;
      v6 = v26;
      if (v13 != v11)
      {
        continue;
      }

      break;
    }

    v11 = [v26 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v16 = 0;
  }

  while (v11);
LABEL_30:
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)createMeshStageAndLinkPipelineWithFragment:(void *)a3 fragmentVariant:(id)a4 objectFunction:(id)a5 serializedObjectDescriptor:(id)a6 meshFunction:(id)a7 serializedMeshDescriptor:(id)a8 descriptor:(id)a9 airDescriptor:(id)a10 destinationArchive:(id)a11 options:(unint64_t)a12 reflection:(id *)a13 compileStatistics:(id)a14 fragmentCompileTimeData:(id)a15 pipelineArchiverId:(id)a16 error:(id *)a17 compilerTask:(id)a18 completionHandler:(id)a19
{
  v26 = a12;
  v27 = a10;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3052000000;
  v55 = __Block_byref_object_copy__10;
  v56 = __Block_byref_object_dispose__10;
  v57 = 0;
  v50 = 0;
  size_ptr = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3052000000;
  v48[3] = __Block_byref_object_copy__10;
  v48[4] = __Block_byref_object_dispose__10;
  if (a10)
  {
    v27 = dispatch_data_create_map(a10, &v50, &size_ptr);
  }

  v48[5] = v27;
  v28 = MTLGetCompilerOptions(self->_device, a12, self->_compilerFlags, 0, 0);
  if (a6)
  {
    dispatch_retain(a6);
  }

  v36 = a7;
  v37 = a5;
  v29 = a15;
  if (a8)
  {
    dispatch_retain(a8);
  }

  v30 = a18;
  v31 = a19;
  v32 = a11;
  v33 = a9;
  if (a15)
  {
    dispatch_retain(a15);
    v32 = a11;
    v26 = a12;
    v31 = a19;
    v30 = a18;
    v29 = a15;
    v33 = a9;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke;
  v47[3] = &unk_1E6EEC208;
  v47[4] = a6;
  v47[5] = a8;
  v47[6] = v29;
  v47[7] = v48;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2;
  v46[3] = &unk_1E6EEC230;
  v46[4] = v32;
  v46[5] = a4;
  v46[6] = self;
  v46[7] = v33;
  v46[12] = a3;
  v46[13] = v26;
  v46[8] = a14;
  v46[9] = v29;
  v46[10] = v31;
  v46[11] = &v52;
  v46[14] = a13;
  v46[15] = a17;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3;
  v42[3] = &unk_1E6EEC320;
  v42[4] = self;
  v42[5] = v33;
  v42[14] = v49;
  v42[15] = v26;
  v42[6] = a6;
  v42[7] = v37;
  v43 = a12 & 0x11240000;
  v44 = v28;
  v45 = (a12 & 4) != 0;
  v42[16] = a17;
  v42[8] = v32;
  v42[9] = a14;
  v42[10] = v30;
  v42[11] = v47;
  v42[12] = v31;
  v42[13] = v46;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_9;
  v38[3] = &unk_1E6EEC370;
  v38[4] = self;
  v38[5] = v33;
  v38[6] = a4;
  v38[7] = a8;
  v39 = a12 & 0x11240000;
  v40 = v28;
  v38[8] = v36;
  v38[9] = v32;
  v41 = v45;
  v38[18] = v26;
  v38[19] = a17;
  v38[10] = a14;
  v38[11] = v30;
  v38[12] = v37;
  v38[13] = v47;
  v38[14] = v31;
  v38[15] = v42;
  v38[16] = v46;
  v38[17] = v49;
  __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_9(v38);
  v34 = v53[5];
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v52, 8);
  return v34;
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(*(a1[7] + 8) + 40);
  if (v5)
  {

    dispatch_release(v5);
  }
}

void *__315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (!*(result + 4))
  {
    v10 = result;
    result = newRenderPipeline(*(result + 12), *(result + 5), a2, a3, a8, a9, a10, a5, a6, a7, *(*(result + 6) + 8), 0, *(v10 + 7), *(v10 + 13), *(*(result + 6) + 48), *(v10 + 14), *(v10 + 8), *(v10 + 9), a4, *(v10 + 10), *(v10 + 15));
    *(*(*(v10 + 11) + 8) + 40) = result;
  }

  return result;
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3052000000;
  v63[3] = __Block_byref_object_copy__10;
  v63[4] = __Block_byref_object_dispose__10;
  v63[5] = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v8 = [*(a1 + 32) getFunctionKeyWithRenderPipelineDescriptor:*(a1 + 40) options:*(a1 + 136) unfilteredOptions:*(a1 + 120) airScript:*(*(*(a1 + 112) + 8) + 24) function:objc_msgSend(*(a1 + 40) functionType:"objectFunction") compiledNextStageVariant:8 keySize:a3 functionDriverData:&v54 functionDriverSize:{&v53, &v52}];
  v51 = 0;
  v9 = [a3 inputInfoAndSize:&v51];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v10 = v48;
  v11 = *(a1 + 140);
  v72.val[1] = *(a1 + 32);
  v72.val[0] = *(a1 + 48);
  v12 = *(*(a1 + 32) + 24);
  block[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4;
  block[3] = &unk_1E6EEC258;
  v48[8] = v54;
  v48[9] = v9;
  v49 = v11;
  v48[10] = v51;
  v48[11] = 0;
  v48[7] = v8;
  v13 = *(a1 + 64);
  v48[4] = a3;
  v48[5] = v13;
  v48[6] = &v64;
  v50 = *(a1 + 144);
  vst2q_f64(v10, v72);
  dispatch_sync(v12, block);
  v14 = v65[3];
  if (v14)
  {
    v15 = *(v14 + 440);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5;
    v45[3] = &unk_1E6EEC280;
    v45[12] = v54;
    v45[13] = v9;
    v45[8] = &v64;
    v45[9] = &v59;
    v16 = *(a1 + 120);
    v45[14] = v51;
    v45[15] = v16;
    v17 = *(a1 + 72);
    v18 = *(a1 + 40);
    v45[4] = *(a1 + 48);
    v45[5] = v17;
    v45[6] = v18;
    v45[7] = &v68;
    v45[10] = &v55;
    v45[11] = v8;
    v46 = *(a1 + 140);
    dispatch_sync(v15, v45);
    if (*(v60 + 24) == 1)
    {
      v19 = VariantEntry::newSerializedKeyWithAdditionalData(v69[3], v53, v54);
      v20 = v51;
      if ((*(a1 + 141) & 2) != 0)
      {
        v21 = mach_absolute_time();
      }

      else
      {
        v21 = 0;
      }

      v26 = objc_opt_new();
      [(MTLCompileFunctionRequestData *)v26 setSync:*(a1 + 96) == 0];
      [(MTLCompileFunctionRequestData *)v26 setFunction:*(a1 + 56)];
      [(MTLCompileFunctionRequestData *)v26 setPipelineOptions:*(a1 + 120)];
      [(MTLCompileFunctionRequestData *)v26 setFrameworkData:*(a1 + 48)];
      [(MTLCompileFunctionRequestData *)v26 setDriverKeyData:v19];
      [(MTLCompileFunctionRequestData *)v26 setDestinationBinaryArchive:*(a1 + 64)];
      -[MTLCompileFunctionRequestData setBinaryArchives:](v26, "setBinaryArchives:", [*(a1 + 40) binaryArchives]);
      -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v26, "setGpuCompilerSPIOptions:", [*(a1 + 40) gpuCompilerSPIOptions]);
      -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v26, "setMaxAccelerationStructureTraversalDepth:", [*(a1 + 40) maxAccelerationStructureTraversalDepth]);
      [(MTLCompileFunctionRequestData *)v26 setAirScript:0];
      setLinkedFunctionsForRequest(v26, [*(a1 + 40) objectLinkedFunctions]);
      [*(a1 + 32) initializeFunctionRequestScriptAndFunctionId:v26 script:0 driverCompilerOptions:objc_msgSend(*(a1 + 40) compiledNextStageVariant:{"driverCompilerOptions"), a3}];
      v27 = *(a1 + 32);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_6;
      v43[3] = &unk_1E6EEC2A8;
      v44 = *(a1 + 140);
      v29 = *(a1 + 72);
      v28 = *(a1 + 80);
      v43[4] = v27;
      v43[5] = v29;
      v43[6] = *(a1 + 40);
      v43[7] = &v64;
      v43[8] = v63;
      v43[9] = &v68;
      v43[10] = v21;
      [v27 compileFunctionRequestInternal:v26 frameworkLinking:1 linkDataSize:v20 reflectionOnly:0 compilerTask:v28 completionHandler:v43];

      dispatch_release(v19);
    }

    else if (*(v56 + 24) == 1)
    {
      dispatch_group_enter(*(v69[3] + 40));
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = *(a1 + 56);
      v25 = *(a1 + 120);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_7;
      v42[3] = &unk_1E6EEC2D0;
      v42[4] = v23;
      v42[5] = &v64;
      v42[6] = &v68;
      [v22 reflectionWithFunction:v24 options:v25 completionHandler:v42];
    }

    [*(*(a1 + 32) + 8) freeObjectFunctionDriverData:v53 objectFunctionDriverDataSize:v52];
    [*(*(a1 + 32) + 8) freeObjectFunctionKey:v8 objectKeySize:v54];
    if (a4)
    {
      dispatch_retain(a4);
    }

    v30 = v69[3];
    v31 = *(a1 + 96);
    v32 = [*(*(a1 + 32) + 8) serialQueue];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_8;
    v34[3] = &unk_1E6EEC2F8;
    v35 = *(a1 + 88);
    v33 = *(a1 + 128);
    v36 = *(a1 + 104);
    v37 = &v68;
    v38 = &v64;
    v39 = v63;
    v40 = v33;
    v41 = a2;
    v34[4] = a3;
    v34[5] = a4;
    VariantEntry::waitOrNotify(v30, v31 != 0, v32, v34);
  }

  else
  {
    [*(*(a1 + 32) + 8) freeObjectFunctionDriverData:v53 objectFunctionDriverDataSize:v52];
    [*(*(a1 + 32) + 8) freeObjectFunctionKey:v8 objectKeySize:v54];
    (*(*(a1 + 88) + 16))();
    reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", *(a1 + 96), *(a1 + 128));
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v3;
  v15[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v17, &v18);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v17 = 0;
    v18 = 0;
  }

  v16 = v6;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 128);
  v11 = [*(a1 + 56) driverCompilerOptions];
  v12 = *(a1 + 120);
  v13 = [*(a1 + 56) binaryArchives];
  if (v9)
  {
    [v9 requiredKeysForFunction:v8 variantKey:v15 frameworkData:v7 compilerOptions:v10 driverCompilerOptions:v11 airScript:v12 archives:v13 compiledNextStageVariant:*(a1 + 64)];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) getProgramObject:*(a1 + 48) destinationArchive:*(a1 + 72) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:v15 failOnMiss:{&v14, *(a1 + 132)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v14);
  if (v16)
  {
    dispatch_release(v16);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v19[0] = v2;
  v19[1] = v4;
  v19[2] = v3;
  v19[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v21, &v22);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  object = v6;
  *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v19);
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v19);
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if ((*(a1 + 122) & 0x40) != 0)
  {
    v7 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(a1 + 40);
    v9 = [objc_msgSend(*(a1 + 48) "objectFunction")];
    v10 = MTLPipelinePerformanceKeyObjectShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyObjectShader[0]];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:(v7 ^ 1) & 1];
    [v11 setObject:v12 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v9)
    {
      [v11 setObject:v9 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(a1 + 128))
  {
    v14 = *(*(*(a1 + 64) + 8) + 24);
    v15 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    v16 = *(v14 + 432);
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1EF478240;
    }

    v13 = [*(v14 + 432) objectForKey:v17] == 0;
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 80) + 8) + 24) = v13;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v18 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v18 + 424))
    {
      *(v18 + 424) = dispatch_queue_create("reflection Queue", 0);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 89) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) newObjectVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    v5 = v6;
    if ((*(a1 + 89) & 0x10) != 0)
    {
      [v6 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v7 = *(a1 + 88);
  if ((v7 & 0x200) != 0)
  {
    v8 = *(a1 + 40);
    v9 = *(a2 + 88);
    v10 = MTLPipelinePerformanceKeyObjectShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyObjectShader[0]];
    if (v11)
    {
      if (v9)
      {
LABEL_11:
        _MTLAddCompilerServiceCompileTimeStats(v11, v9);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v13 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_14:
        [v11 setObject:v12 forKey:*v13];
        v7 = *(a1 + 88);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v15 = *(a2 + 40);
    v16 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    if (v15)
    {
      v17 = *(v14 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v15;
      block[6] = v14;
      block[4] = v16;
      dispatch_sync(v17, block);
    }
  }

  v18 = *(a2 + 80);
  if (v18)
  {
    *(*(*(a1 + 64) + 8) + 40) = v18;
    dispatch_retain(*(*(*(a1 + 64) + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(*(a1 + 72) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "gpuCompilerSPIOptions")];
  if (a3)
  {
    v10 = *(v8 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v8;
    block[4] = v9;
    dispatch_sync(v10, block);
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  os_unfair_lock_lock((v11 + 32));
  if (!*(v11 + 56))
  {
    *(v11 + 56) = a2;

    *(v11 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v11 + 40));
  os_unfair_lock_unlock((v11 + 32));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_8(uint64_t a1)
{
  if (*(*(*(*(a1 + 72) + 8) + 24) + 48))
  {
    v2 = *(*(*(a1 + 80) + 8) + 24);
    v3 = *(*(*(a1 + 88) + 8) + 40);
    v4 = *(a1 + 104);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    (*(*(a1 + 64) + 16))(*(a1 + 64), 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    (*(*(a1 + 48) + 16))();
    v6 = *(*(*(a1 + 72) + 8) + 24);
    reportErrorMessage(*(v6 + 56), *(v6 + 64), *(a1 + 56), *(a1 + 96));
  }

  v7 = *(*(*(a1 + 88) + 8) + 40);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {

    dispatch_release(v8);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_9(uint64_t a1)
{
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3052000000;
  v65[3] = __Block_byref_object_copy__10;
  v65[4] = __Block_byref_object_dispose__10;
  v65[5] = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v2 = [*(a1 + 32) getFunctionKeyWithRenderPipelineDescriptor:*(a1 + 40) options:*(a1 + 160) unfilteredOptions:*(a1 + 144) airScript:*(*(*(a1 + 136) + 8) + 24) function:objc_msgSend(*(a1 + 40) functionType:"meshFunction") compiledNextStageVariant:7 keySize:*(a1 + 48) functionDriverData:&v56 functionDriverSize:{&v55, &v54}];
  v53 = 0;
  v3 = [*(a1 + 48) inputInfoAndSize:&v53];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_10;
  block[3] = &unk_1E6EEC258;
  v47 = v56;
  v48 = v3;
  v49 = v53;
  v6 = *(a1 + 64);
  block[4] = *(a1 + 56);
  block[5] = v4;
  block[6] = v6;
  v51 = *(a1 + 164);
  v50 = 0;
  v43 = *(a1 + 40);
  v7 = *(a1 + 72);
  v45 = &v66;
  v46 = v2;
  v44 = v7;
  v52 = *(a1 + 168);
  dispatch_sync(v5, block);
  v8 = v67[3];
  if (v8)
  {
    v9 = *(v8 + 440);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_11;
    v40[3] = &unk_1E6EEC280;
    v40[12] = v56;
    v40[13] = v3;
    v10 = *(a1 + 56);
    v40[8] = &v66;
    v40[9] = &v61;
    v11 = *(a1 + 144);
    v40[14] = v53;
    v40[15] = v11;
    v12 = *(a1 + 80);
    v40[4] = v10;
    v40[5] = v12;
    v40[6] = *(a1 + 40);
    v40[7] = &v70;
    v40[10] = &v57;
    v40[11] = v2;
    v41 = *(a1 + 164);
    dispatch_sync(v9, v40);
    if (*(v62 + 24) == 1)
    {
      v13 = VariantEntry::newSerializedKeyWithAdditionalData(v71[3], v55, v54);
      v14 = v53;
      if ((*(a1 + 165) & 2) != 0)
      {
        v15 = mach_absolute_time();
      }

      else
      {
        v15 = 0;
      }

      v20 = objc_opt_new();
      [(MTLCompileFunctionRequestData *)v20 setSync:*(a1 + 112) == 0];
      [(MTLCompileFunctionRequestData *)v20 setFunction:*(a1 + 64)];
      [(MTLCompileFunctionRequestData *)v20 setPipelineOptions:*(a1 + 144)];
      [(MTLCompileFunctionRequestData *)v20 setFrameworkData:*(a1 + 56)];
      [(MTLCompileFunctionRequestData *)v20 setDriverKeyData:v13];
      [(MTLCompileFunctionRequestData *)v20 setDestinationBinaryArchive:*(a1 + 72)];
      -[MTLCompileFunctionRequestData setBinaryArchives:](v20, "setBinaryArchives:", [*(a1 + 40) binaryArchives]);
      -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v20, "setGpuCompilerSPIOptions:", [*(a1 + 40) gpuCompilerSPIOptions]);
      -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v20, "setMaxAccelerationStructureTraversalDepth:", [*(a1 + 40) maxAccelerationStructureTraversalDepth]);
      setLinkedFunctionsForRequest(v20, [*(a1 + 40) meshLinkedFunctions]);
      [*(a1 + 32) initializeFunctionRequestScriptAndFunctionId:v20 script:0 driverCompilerOptions:objc_msgSend(*(a1 + 40) compiledNextStageVariant:{"driverCompilerOptions"), *(a1 + 48)}];
      v21 = *(a1 + 32);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_12;
      v38[3] = &unk_1E6EEC2A8;
      v39 = *(a1 + 164);
      v23 = *(a1 + 80);
      v22 = *(a1 + 88);
      v38[4] = v21;
      v38[5] = v23;
      v38[6] = *(a1 + 40);
      v38[7] = &v66;
      v38[8] = v65;
      v38[9] = &v70;
      v38[10] = v15;
      [v21 compileFunctionRequestInternal:v20 frameworkLinking:1 linkDataSize:v14 reflectionOnly:0 compilerTask:v22 completionHandler:v38];

      dispatch_release(v13);
    }

    else if (*(v58 + 24) == 1)
    {
      dispatch_group_enter(*(v71[3] + 40));
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
      v19 = *(a1 + 144);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_13;
      v37[3] = &unk_1E6EEC2D0;
      v37[4] = v17;
      v37[5] = &v66;
      v37[6] = &v70;
      [v16 reflectionWithFunction:v18 options:v19 completionHandler:v37];
    }

    [*(*(a1 + 32) + 8) freeMeshFunctionDriverData:v55 meshFunctionDriverDataSize:v54];
    [*(*(a1 + 32) + 8) freeMeshFunctionKey:v2 meshKeySize:v56];
    v24 = v71[3];
    v25 = *(a1 + 112);
    v26 = [*(*(a1 + 32) + 8) serialQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_14;
    v29[3] = &unk_1E6EEC348;
    v27 = *(a1 + 152);
    v28 = *(a1 + 112);
    v30 = *(a1 + 96);
    v31 = v28;
    v33 = &v70;
    v34 = &v66;
    v35 = v65;
    v36 = v27;
    v32 = *(a1 + 128);
    VariantEntry::waitOrNotify(v24, v25 != 0, v26, v29);
  }

  else
  {
    [*(*(a1 + 32) + 8) freeMeshFunctionDriverData:v55 meshFunctionDriverDataSize:v54];
    [*(*(a1 + 32) + 8) freeMeshFunctionKey:v2 meshKeySize:v56];
    (*(*(a1 + 104) + 16))();
    reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", *(a1 + 112), *(a1 + 152));
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v3;
  v15[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v17, &v18);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v17 = 0;
    v18 = 0;
  }

  v16 = v6;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 128);
  v11 = [*(a1 + 56) driverCompilerOptions];
  v12 = *(a1 + 120);
  v13 = [*(a1 + 56) binaryArchives];
  if (v9)
  {
    [v9 requiredKeysForFunction:v8 variantKey:v15 frameworkData:v7 compilerOptions:v10 driverCompilerOptions:v11 airScript:v12 archives:v13 compiledNextStageVariant:*(a1 + 64)];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) getProgramObject:*(a1 + 48) destinationArchive:*(a1 + 72) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:v15 failOnMiss:{&v14, *(a1 + 132)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v14);
  if (v16)
  {
    dispatch_release(v16);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 32);
  v19[0] = v2;
  v19[1] = v4;
  v19[2] = v3;
  v19[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v21, &v22);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  object = v6;
  *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v19);
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), v19);
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if ((*(a1 + 122) & 0x40) != 0)
  {
    v7 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(a1 + 40);
    v9 = [objc_msgSend(*(a1 + 48) "meshFunction")];
    v10 = MTLPipelinePerformanceKeyMeshShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyMeshShader[0]];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:(v7 ^ 1) & 1];
    [v11 setObject:v12 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v9)
    {
      [v11 setObject:v9 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(a1 + 128))
  {
    v14 = *(*(*(a1 + 64) + 8) + 24);
    v15 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    v16 = *(v14 + 432);
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1EF478240;
    }

    v13 = [*(v14 + 432) objectForKey:v17] == 0;
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 80) + 8) + 24) = v13;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v18 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v18 + 424))
    {
      *(v18 + 424) = dispatch_queue_create("reflection Queue", 0);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_12(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 89) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) newMeshVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    v5 = v6;
    if ((*(a1 + 89) & 0x10) != 0)
    {
      [v6 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v7 = *(a1 + 88);
  if ((v7 & 0x200) != 0)
  {
    v8 = *(a1 + 40);
    v9 = *(a2 + 88);
    v10 = MTLPipelinePerformanceKeyMeshShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyMeshShader[0]];
    if (v11)
    {
      if (v9)
      {
LABEL_11:
        _MTLAddCompilerServiceCompileTimeStats(v11, v9);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v13 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_14:
        [v11 setObject:v12 forKey:*v13];
        v7 = *(a1 + 88);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v15 = *(a2 + 40);
    v16 = [objc_msgSend(*(a1 + 48) "gpuCompilerSPIOptions")];
    if (v15)
    {
      v17 = *(v14 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v15;
      block[6] = v14;
      block[4] = v16;
      dispatch_sync(v17, block);
    }
  }

  v18 = *(a2 + 80);
  if (v18)
  {
    *(*(*(a1 + 64) + 8) + 40) = v18;
    dispatch_retain(*(*(*(a1 + 64) + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(*(a1 + 72) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "gpuCompilerSPIOptions")];
  if (a3)
  {
    v10 = *(v8 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v8;
    block[4] = v9;
    dispatch_sync(v10, block);
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  os_unfair_lock_lock((v11 + 32));
  if (!*(v11 + 56))
  {
    *(v11 + 56) = a2;

    *(v11 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v11 + 40));
  os_unfair_lock_unlock((v11 + 32));
}

void __315__MTLCompiler_createMeshStageAndLinkPipelineWithFragment_fragmentVariant_objectFunction_serializedObjectDescriptor_meshFunction_serializedMeshDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_14(uint64_t a1)
{
  if (*(*(*(*(a1 + 72) + 8) + 24) + 48))
  {
    v2 = *(*(*(a1 + 80) + 8) + 24);
    v3 = *(*(*(a1 + 88) + 8) + 40);
    if (*(a1 + 32))
    {
      v4 = *(a1 + 56);
      v5 = *(*(*(a1 + 80) + 8) + 24);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      (*(*(a1 + 64) + 16))(*(a1 + 64), 0);
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
    v7 = *(*(*(a1 + 72) + 8) + 24);
    reportErrorMessage(*(v7 + 56), *(v7 + 64), *(a1 + 48), *(a1 + 96));
  }

  v8 = *(*(*(a1 + 88) + 8) + 40);
  if (v8)
  {

    dispatch_release(v8);
  }
}

- (id)createVertexStageAndLinkPipelineWithFragment:(void *)a3 fragmentVariant:(id)a4 vertexFunction:(id)a5 serializedVertexDescriptor:(id)a6 descriptor:(id)a7 airDescriptor:(id)a8 destinationArchive:(id)a9 options:(unint64_t)a10 reflection:(id *)a11 compileStatistics:(id)a12 fragmentCompileTimeData:(id)a13 pipelineArchiverId:(id)a14 error:(id *)a15 compilerTask:(id)a16 completionHandler:(id)a17
{
  v76 = 0;
  v77 = &v76;
  v78 = 0x3052000000;
  v79 = __Block_byref_object_copy__10;
  v80 = __Block_byref_object_dispose__10;
  v81 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3052000000;
  v75[3] = __Block_byref_object_copy__10;
  v75[4] = __Block_byref_object_dispose__10;
  v75[5] = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = MTLGetCompilerOptions(self->_device, a10, self->_compilerFlags, 0, 0);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  buffer_ptr = 0;
  size_ptr = 0;
  v41 = dispatch_data_create_map(a8, &buffer_ptr, &size_ptr);
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v23 = -[MTLCompiler getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:functionDriverData:functionDriverSize:](self, "getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:functionDriverData:functionDriverSize:", a7, a10 & 0x11240000, a10, buffer_ptr, [a7 vertexFunction], 1, a4, &v52, &v51, &v50);
  v40 = a3;
  v49 = 0;
  v24 = [a4 inputInfoAndSize:&v49];
  v25 = a9;
  compilerQueue = self->_compilerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC398;
  block[12] = v23;
  block[13] = v52;
  block[14] = v24;
  block[15] = v49;
  block[4] = a6;
  block[5] = self;
  block[6] = a5;
  block[7] = a7;
  block[16] = buffer_ptr;
  block[10] = &v71;
  block[11] = &v55;
  block[8] = a4;
  block[9] = a9;
  v48 = (a10 & 4) != 0;
  dispatch_sync(compilerQueue, block);
  v27 = v56[3];
  if (v27)
  {
    v28 = *(v27 + 440);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2;
    v46[3] = &unk_1E6EEC3C0;
    v46[14] = v52;
    v46[15] = v24;
    v46[8] = &v67;
    v46[9] = &v55;
    v29 = a6;
    v46[4] = a6;
    v46[5] = a9;
    v46[16] = v49;
    v46[17] = a10;
    v46[6] = a12;
    v46[7] = a7;
    v46[10] = &v63;
    v46[11] = &v59;
    v46[12] = &v71;
    v46[13] = v23;
    dispatch_sync(v28, v46);
    if (*(v64 + 24) == 1)
    {
      object = VariantEntry::newSerializedKeyWithAdditionalData(v68[3], v51, v50);
      v30 = v41;
      v38 = v49;
      if ((*(v72 + 25) & 2) != 0)
      {
        v37 = mach_absolute_time();
        v31 = a9;
      }

      else
      {
        v31 = a9;
        v37 = 0;
      }

      v33 = objc_opt_new();
      [(MTLCompileFunctionRequestData *)v33 setSync:a17 == 0];
      [(MTLCompileFunctionRequestData *)v33 setFunction:a5];
      [(MTLCompileFunctionRequestData *)v33 setPipelineOptions:a10];
      [(MTLCompileFunctionRequestData *)v33 setFrameworkData:v29];
      [(MTLCompileFunctionRequestData *)v33 setDriverKeyData:object];
      [(MTLCompileFunctionRequestData *)v33 setDestinationBinaryArchive:v31];
      -[MTLCompileFunctionRequestData setBinaryArchives:](v33, "setBinaryArchives:", [a7 binaryArchives]);
      [(MTLCompileFunctionRequestData *)v33 setArchiverId:a14];
      -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v33, "setGpuCompilerSPIOptions:", [a7 gpuCompilerSPIOptions]);
      -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v33, "setMaxAccelerationStructureTraversalDepth:", [a7 maxAccelerationStructureTraversalDepth]);
      setLinkedFunctionsForRequest(v33, [a7 vertexLinkedFunctions]);
      [(MTLCompileFunctionRequestData *)v33 setAirScript:v41];
      -[MTLCompiler initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:](self, "initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:", v33, buffer_ptr, [a7 driverCompilerOptions], a4);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3;
      v45[3] = &unk_1E6EEC3E8;
      v45[4] = self;
      v45[5] = a12;
      v45[6] = &v71;
      v45[7] = &v55;
      v45[8] = v75;
      v45[9] = &v67;
      v45[10] = v37;
      [(MTLCompiler *)self compileFunctionRequestInternal:v33 frameworkLinking:1 linkDataSize:v38 reflectionOnly:0 compilerTask:a16 completionHandler:v45];

      dispatch_release(object);
      v25 = v31;
    }

    else
    {
      v30 = v41;
      if (*(v60 + 24) == 1)
      {
        dispatch_group_enter(*(v68[3] + 40));
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4;
        v44[3] = &unk_1E6EEC410;
        v44[4] = &v55;
        v44[5] = &v67;
        [(MTLCompiler *)self reflectionWithFunction:a5 options:a10 completionHandler:v44];
      }
    }

    [(_MTLDevice *)self->_device freeVertexFunctionDriverData:v51 vertexFunctionDriverDataSize:v50];
    [(_MTLDevice *)self->_device freeVertexFunctionKey:v23 vertexKeySize:v52];
    dispatch_retain(v29);
    v34 = v68[3];
    v35 = [(_MTLDevice *)self->_device serialQueue];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5;
    v43[3] = &unk_1E6EEC438;
    v43[4] = v25;
    v43[5] = a4;
    v43[12] = &v67;
    v43[13] = &v76;
    v43[6] = self;
    v43[7] = v29;
    v43[16] = a15;
    v43[17] = a10;
    v43[8] = a7;
    v43[9] = a12;
    v43[14] = &v55;
    v43[15] = v75;
    v43[18] = a11;
    v43[19] = v40;
    v43[10] = a13;
    v43[11] = a17;
    VariantEntry::waitOrNotify(v34, a17 != 0, v35, v43);
    dispatch_release(v30);
    v32 = v77[5];
  }

  else
  {
    [(_MTLDevice *)self->_device freeVertexFunctionDriverData:v51 vertexFunctionDriverDataSize:v50];
    [(_MTLDevice *)self->_device freeVertexFunctionKey:v23 vertexKeySize:v52];
    reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", a17, a15);
    dispatch_release(v41);
    v32 = 0;
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(v75, 8);
  _Block_object_dispose(&v76, 8);
  return v32;
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 32);
  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v3;
  v15[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v17, &v18);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v17 = 0;
    v18 = 0;
  }

  v16 = v6;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(*(*(a1 + 80) + 8) + 24);
  v11 = [*(a1 + 56) driverCompilerOptions];
  v12 = *(a1 + 128);
  v13 = [*(a1 + 56) binaryArchives];
  if (v9)
  {
    [v9 requiredKeysForFunction:v8 variantKey:v15 frameworkData:v7 compilerOptions:v10 driverCompilerOptions:v11 airScript:v12 archives:v13 compiledNextStageVariant:*(a1 + 64)];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 40) getProgramObject:*(a1 + 48) destinationArchive:*(a1 + 72) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:v15 failOnMiss:{&v14, *(a1 + 136)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v14);
  if (v16)
  {
    dispatch_release(v16);
  }
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 32);
  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v3;
  v15[3] = v5;
  if (v6)
  {
    v6 = dispatch_data_create_map(v6, &v17, &v18);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  object = v6;
  *(*(*(a1 + 64) + 8) + 24) = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 72) + 8) + 24), v15);
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    *(*(*(a1 + 64) + 8) + 24) = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 72) + 8) + 24), v15);
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 40))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 138) & 0x40) != 0)
  {
    v7 = *(*(*(a1 + 80) + 8) + 24);
    v8 = *(a1 + 48);
    v9 = [objc_msgSend(*(a1 + 56) "vertexFunction")];
    v10 = MTLPipelinePerformanceKeyVertexShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyVertexShader[0]];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:(v7 ^ 1) & 1];
    [v11 setObject:v12 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v9)
    {
      [v11 setObject:v9 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  v13 = (*(*(*(a1 + 96) + 8) + 24) & 1) != 0 && [*(*(*(*(a1 + 72) + 8) + 24) + 432) objectForKey:&stru_1EF478240] == 0;
  *(*(*(a1 + 88) + 8) + 24) = v13;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v14 = *(*(*(a1 + 72) + 8) + 24);
    if (!*(v14 + 424))
    {
      *(v14 + 424) = dispatch_queue_create("reflection Queue", 0);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if ((*(*(a1[6] + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - a1[10]));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1[4] + 8) newVertexVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    v5 = v6;
    if ((*(*(a1[6] + 8) + 25) & 0x10) != 0)
    {
      [v6 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v7 = *(*(a1[6] + 8) + 24);
  if ((v7 & 0x200) != 0)
  {
    v8 = a1[5];
    v9 = *(a2 + 88);
    v10 = MTLPipelinePerformanceKeyVertexShader[0];
    v11 = [v8 objectForKey:MTLPipelinePerformanceKeyVertexShader[0]];
    if (v11)
    {
      if (v9)
      {
LABEL_11:
        _MTLAddCompilerServiceCompileTimeStats(v11, v9);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v13 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_14:
        [v11 setObject:v12 forKey:*v13];
        v7 = *(*(a1[6] + 8) + 24);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v11 forKey:v10];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    v14 = *(a2 + 40);
    if (v14)
    {
      v15 = *(*(a1[7] + 8) + 24);
      v16 = *(v15 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v14;
      block[6] = v15;
      block[4] = 0;
      dispatch_sync(v16, block);
    }
  }

  v17 = *(a2 + 80);
  if (v17)
  {
    *(*(a1[8] + 8) + 40) = v17;
    dispatch_retain(*(*(a1[8] + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(a1[9] + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

void __279__MTLCompiler_createVertexStageAndLinkPipelineWithFragment_fragmentVariant_vertexFunction_serializedVertexDescriptor_descriptor_airDescriptor_destinationArchive_options_reflection_compileStatistics_fragmentCompileTimeData_pipelineArchiverId_error_compilerTask_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 96) + 8) + 24);
  v3 = *(v2 + 48);
  if (v3)
  {
    if (!*(a1 + 32))
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        v5 = newRenderPipeline(*(a1 + 152), v4, *(*(*(a1 + 112) + 8) + 24), v3, 0, 0, 0, 0, 0, 0, *(*(a1 + 48) + 8), *(a1 + 56), *(a1 + 64), *(a1 + 136), *(*(a1 + 48) + 48), *(a1 + 144), *(a1 + 72), *(a1 + 80), *(*(*(a1 + 120) + 8) + 40), *(a1 + 88), *(a1 + 128));
      }

      else
      {
        v5 = newRenderPipeline(0, 0, *(*(*(a1 + 112) + 8) + 24), v3, 0, 0, 0, 0, 0, 0, *(*(a1 + 48) + 8), *(a1 + 56), *(a1 + 64), *(a1 + 136), *(*(a1 + 48) + 48), *(a1 + 144), *(a1 + 72), 0, *(*(*(a1 + 120) + 8) + 40), *(a1 + 88), *(a1 + 128));
      }

      *(*(*(a1 + 104) + 8) + 40) = v5;
    }
  }

  else
  {
    reportErrorMessage(*(v2 + 56), *(v2 + 64), *(a1 + 88), *(a1 + 128));
  }

  v6 = *(*(*(a1 + 120) + 8) + 40);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 56);

  dispatch_release(v8);
}

- (void)addFunctionKeys:(RequiredFunctionKeys *)a3 function:(id)a4 driverData:(id)a5 frameworkData:(id)a6 compilerOptions:(int)a7
{
  v7 = a7;
  FunctionHashFactory::FunctionHashFactory(v15, a4, [a4 functionData], a7 & 0xFFFFBFFF, 0, 0, 0);
  if ((v7 & 2) == 0)
  {
    a3->var0[0] = FunctionHashFactory::createHash(v15, 0, a5, a6);
  }

  if (v7)
  {
    if ((v7 & 0x1000) != 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = 0;
    }

    if ((v7 & 0x1000) != 0)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0;
    }

    a3->var0[2] = FunctionHashFactory::createHash(v15, 2, v12, v13);
  }

  if ((v7 & 0x100) != 0)
  {
    a3->var0[3] = FunctionHashFactory::createHash(v15, 3, 0, 0, 0, 0);
  }

  if ((v7 & 0x1000) != 0)
  {
    a3->var0[6] = FunctionHashFactory::createHash(v15, 6, a5, a6);
  }

  v14 = [a4 functionType];
  if ((v7 & 4) != 0 && v14 == 2)
  {
    a3->var0[1] = FunctionHashFactory::createHash(v15, 1, a5, a6);
  }
}

- (id)newRenderPipelineStateWithDescriptorInternal:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 destinationBinaryArchive:(id)a6 error:(id *)a7 compilerTask:(id)a8 completionHandler:(id)a9
{
  if ((a4 & 0x400000) != 0)
  {
    if (initTimebaseInfo(void)::onceToken == -1)
    {
      if (a9)
      {
        goto LABEL_4;
      }

LABEL_110:
      v15 = mach_absolute_time();
      if (!a7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    initTimebaseInfo();
    if (!a9)
    {
      goto LABEL_110;
    }
  }

LABEL_4:
  v15 = 0;
  if (a7)
  {
LABEL_5:
    *a7 = 0;
  }

LABEL_6:
  if (!self->_device)
  {
    MTLReportFailure(0, "[MTLCompiler newRenderPipelineStateWithDescriptorInternal:options:reflection:destinationBinaryArchive:error:compilerTask:completionHandler:]", 19829, @"device cannot be null.", a5, a6, a7, a8, v54);
    if (!self->_device)
    {
      return 0;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(MTLCompiler *)isKindOfClass newRenderPipelineStateWithDescriptorInternal:v17 options:v18 reflection:v19 destinationBinaryArchive:v20 error:v21 compilerTask:v22 completionHandler:v23, v54];
    if (a3)
    {
      goto LABEL_9;
    }
  }

  [(MTLCompiler *)isKindOfClass newRenderPipelineStateWithDescriptorInternal:v17 options:v18 reflection:v19 destinationBinaryArchive:v20 error:v21 compilerTask:v22 completionHandler:v23, v54];
LABEL_9:
  v114 = 0;
  if ([a3 validateWithDevice:self->_device error:&v114])
  {
    v70 = a6;
    v24 = [a3 fragmentFunction];
    v68 = [a3 vertexFunction];
    v25 = [a3 newPipelineScript];
    v69 = [a3 objectFunction];
    v64 = [a3 meshFunction];
    if (v64)
    {
      v63 = a8;
      v81[0] = 0;
      v26 = [a3 newSerializedMeshDataWithFlags:self->_compilerFlags options:a4 error:v81];
      v27 = v26;
      if (v26 && v69)
      {
        v28 = [a3 newSerializedObjectDataWithFlags:self->_compilerFlags options:a4 error:v81];
        if (!v28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (!v26)
        {
LABEL_30:
          if (a9)
          {
            (*(a9 + 2))(a9, 0, 0, v81[0]);
          }

          else if (a7)
          {
            *a7 = v81[0];
          }

          if (v25)
          {
            dispatch_release(v25);
          }

          if (!v27)
          {
            return 0;
          }

          v52 = v27;
          goto LABEL_102;
        }

        v28 = 0;
      }

      v65 = 0;
LABEL_23:
      v66 = v28;
      if (a9)
      {
        a3 = [a3 copy];
      }

      if ((a4 & 0x400000) != 0)
      {
        v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      else
      {
        v71 = 0;
      }

      v110 = 0;
      v111 = &v110;
      v112 = 0x2020000000;
      v113 = 0;
      size_ptr = 0;
      buffer_ptr = 0;
      if (v25)
      {
        v67 = dispatch_data_create_map(v25, &buffer_ptr, &size_ptr);
      }

      else
      {
        v67 = 0;
      }

      v102 = 0;
      v103 = &v102;
      v104 = 0x3052000000;
      v105 = __Block_byref_object_copy__10;
      v106 = __Block_byref_object_dispose__10;
      v107 = 0;
      if (((v24 != 0) & [a3 isRasterizationEnabled]) != 0)
      {
        v60 = v15;
        v98 = 0;
        v99 = &v98;
        v100 = 0x2020000000;
        v101 = 0;
        v94 = 0;
        v95 = &v94;
        v96 = 0x2020000000;
        v97 = 0;
        if ([v68 renderTargetArrayIndexType])
        {
          v37 = 1;
        }

        else
        {
          v37 = (a4 & 0x200000) == 0;
        }

        if (v37)
        {
          v38 = a4;
        }

        else
        {
          v38 = a4 | 0x4000000;
        }

        v90 = 0;
        v91 = &v90;
        v92 = 0x2020000000;
        v93 = MTLGetCompilerOptions(self->_device, v38, self->_compilerFlags, 0, 0);
        data = [a3 newSerializedFragmentDataWithFlags:self->_compilerFlags options:v38];
        v89 = 0;
        v39 = -[MTLCompiler getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:](self, "getFunctionKeyWithRenderPipelineDescriptor:options:unfilteredOptions:airScript:function:functionType:compiledNextStageVariant:keySize:", a3, a4 & 0x11240000, v38, buffer_ptr, [a3 fragmentFunction], 2, 0, &v89);
        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        v88 = 0;
        v81[0] = 0;
        v81[1] = v81;
        v81[2] = 0x6812000000;
        v81[3] = __Block_byref_object_copy__1412;
        v81[4] = __Block_byref_object_dispose__1413;
        v59 = v39;
        v81[6] = v39;
        v81[7] = 0;
        v81[8] = v89;
        v81[9] = 0;
        v61 = v27;
        if (data)
        {
          v40 = data;
          v41 = dispatch_data_create_map(data, &v83, &v84);
        }

        else
        {
          v41 = 0;
          v83 = 0;
          v84 = 0;
          v40 = 0;
        }

        v82 = v41;
        compilerQueue = self->_compilerQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke;
        block[3] = &unk_1E6EEC460;
        block[4] = self;
        block[5] = v24;
        block[6] = v40;
        block[7] = a3;
        block[12] = buffer_ptr;
        block[10] = &v90;
        block[11] = &v110;
        block[9] = v81;
        block[8] = v70;
        v80 = (v38 & 4) != 0;
        dispatch_sync(compilerQueue, block);
        v45 = v111[3];
        v58 = v45;
        if (v45)
        {
          v46 = *(v45 + 440);
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 3221225472;
          v78[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_2;
          v78[3] = &unk_1E6EEC488;
          v78[8] = &v110;
          v78[9] = v81;
          v78[4] = v70;
          v78[5] = v71;
          v78[7] = &v94;
          v78[6] = a3;
          v78[10] = &v98;
          v78[11] = &v85;
          v57 = v38;
          v78[13] = v38;
          v78[12] = &v90;
          dispatch_sync(v46, v78);
          v77[0] = 0;
          v77[1] = v77;
          v77[2] = 0x3052000000;
          v77[3] = __Block_byref_object_copy__10;
          v77[4] = __Block_byref_object_dispose__10;
          v77[5] = 0;
          v76[0] = 0;
          v76[1] = v76;
          v76[2] = 0x3052000000;
          v76[3] = __Block_byref_object_copy__10;
          v76[4] = __Block_byref_object_dispose__10;
          v76[5] = 0;
          if (*(v99 + 24) == 1)
          {
            object = dispatch_data_create(*v95[3], *(v95[3] + 16) + *(v95[3] + 8), 0, 0);
            v47 = 0;
            v27 = v61;
            v48 = v65;
            if ((*(v91 + 25) & 2) != 0)
            {
              v47 = mach_absolute_time();
            }

            v55 = v47;
            v49 = objc_opt_new();
            [(MTLCompileFunctionRequestData *)v49 setSync:a9 == 0];
            [(MTLCompileFunctionRequestData *)v49 setFunction:v24];
            [(MTLCompileFunctionRequestData *)v49 setPipelineOptions:v57];
            [(MTLCompileFunctionRequestData *)v49 setFrameworkData:data];
            [(MTLCompileFunctionRequestData *)v49 setDriverKeyData:object];
            [(MTLCompileFunctionRequestData *)v49 setDestinationBinaryArchive:v70];
            -[MTLCompileFunctionRequestData setBinaryArchives:](v49, "setBinaryArchives:", [a3 binaryArchives]);
            [(MTLCompileFunctionRequestData *)v49 setArchiverId:0];
            -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v49, "setGpuCompilerSPIOptions:", [a3 gpuCompilerSPIOptions]);
            -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v49, "setMaxAccelerationStructureTraversalDepth:", [a3 maxAccelerationStructureTraversalDepth]);
            [(MTLCompileFunctionRequestData *)v49 setAirScript:v67];
            setLinkedFunctionsForRequest(v49, [a3 fragmentLinkedFunctions]);
            -[MTLCompiler initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:](self, "initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:", v49, buffer_ptr, [a3 driverCompilerOptions], 0);
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_3;
            v75[3] = &unk_1E6EEC4B0;
            v75[6] = &v90;
            v75[7] = v76;
            v75[4] = self;
            v75[5] = v71;
            v75[8] = &v110;
            v75[9] = v77;
            v75[11] = v55;
            v75[10] = &v94;
            [(MTLCompiler *)self compileFunctionRequestInternal:v49 frameworkLinking:1 linkDataSize:0 reflectionOnly:0 compilerTask:v63 completionHandler:v75];

            dispatch_release(object);
          }

          else
          {
            v27 = v61;
            v48 = v65;
            if (*(v86 + 24) == 1)
            {
              dispatch_group_enter(*(v95[3] + 40));
              v74[0] = MEMORY[0x1E69E9820];
              v74[1] = 3221225472;
              v74[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_4;
              v74[3] = &unk_1E6EEC410;
              v74[4] = &v110;
              v74[5] = &v94;
              [(MTLCompiler *)self reflectionWithFunction:v24 options:v57 completionHandler:v74];
            }
          }

          dispatch_release(data);
          [(_MTLDevice *)self->_device freeFragmentFunctionKey:v59 fragmentKeySize:v89];
          if (v48)
          {
            dispatch_retain(v48);
          }

          if (v66)
          {
            dispatch_retain(v66);
          }

          if (v27)
          {
            dispatch_retain(v27);
          }

          v50 = v95[3];
          v51 = [(_MTLDevice *)self->_device concurrentQueue];
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_5;
          v73[3] = &unk_1E6EEC4D8;
          v73[16] = a9;
          v73[17] = &v94;
          v73[4] = v64;
          v73[5] = self;
          v73[18] = &v102;
          v73[19] = &v110;
          v73[6] = v69;
          v73[7] = v66;
          v73[8] = v27;
          v73[9] = a3;
          v73[10] = v67;
          v73[11] = v70;
          v73[22] = a7;
          v73[23] = v57;
          v73[24] = a5;
          v73[20] = v77;
          v73[21] = v76;
          v73[12] = v71;
          v73[13] = v63;
          v73[14] = v68;
          v73[15] = v48;
          VariantEntry::waitOrNotify(v50, a9 != 0, v51, v73);
          _Block_object_dispose(v76, 8);
          _Block_object_dispose(v77, 8);
          v15 = v60;
          v43 = v67;
        }

        else
        {
          [(_MTLDevice *)self->_device freeFragmentFunctionKey:v59 fragmentKeySize:v89];
          v15 = v60;
          v27 = v61;
          v43 = v67;
          if (data)
          {
            dispatch_release(data);
          }

          if (v65)
          {
            dispatch_release(v65);
          }

          if (a9)
          {
          }

          reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", a9, a7);
          dispatch_release(v67);
          dispatch_release(v25);
        }

        _Block_object_dispose(v81, 8);
        if (v82)
        {
          dispatch_release(v82);
        }

        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v90, 8);
        _Block_object_dispose(&v94, 8);
        _Block_object_dispose(&v98, 8);
        if (!v58)
        {
          v29 = 0;
          goto LABEL_90;
        }
      }

      else
      {
        if (v64)
        {
          v42 = [(MTLCompiler *)self createMeshStageAndLinkPipelineWithFragment:0 fragmentVariant:0 objectFunction:v69 serializedObjectDescriptor:v66 meshFunction:v64 serializedMeshDescriptor:v27 descriptor:a3 airDescriptor:v67 destinationArchive:v70 options:a4 reflection:a5 compileStatistics:v71 fragmentCompileTimeData:0 pipelineArchiverId:0 error:a7 compilerTask:v63 completionHandler:a9];
        }

        else
        {
          v42 = [(MTLCompiler *)self createVertexStageAndLinkPipelineWithFragment:0 fragmentVariant:0 vertexFunction:v68 serializedVertexDescriptor:v65 descriptor:a3 airDescriptor:v67 destinationArchive:v70 options:a4 reflection:a5 compileStatistics:v71 fragmentCompileTimeData:0 pipelineArchiverId:0 error:a7 compilerTask:v63 completionHandler:a9];
        }

        v103[5] = v42;
        v43 = v67;
      }

      if (v65)
      {
        dispatch_release(v65);
      }

      if (v66)
      {
        dispatch_release(v66);
      }

      if (v27)
      {
        dispatch_release(v27);
      }

      if (v43)
      {
        dispatch_release(v43);
      }

      if (v25)
      {
        dispatch_release(v25);
      }

      if (a9)
      {

        if (!v71)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (!v71)
        {
LABEL_89:
          v29 = v103[5];
LABEL_90:
          _Block_object_dispose(&v102, 8);
          _Block_object_dispose(&v110, 8);
          return v29;
        }

        [v71 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", (*&gMachTimeToNS * (mach_absolute_time() - v15))), MTLCompileTimeStatisticsKeyPipelineTotal[0]}];
      }

      _MTLAddCompilePipelinePerformanceStatistics(v71, MTLCompileTimeStatisticsKeyPipelinesRender);
      goto LABEL_89;
    }

    v81[0] = 0;
    v65 = [a3 newSerializedVertexDataWithFlags:self->_compilerFlags options:a4 error:v81];
    if (v65)
    {
      v63 = a8;
      if (v68)
      {
        v27 = 0;
        v28 = 0;
        goto LABEL_23;
      }

      if ([(MTLCompiler *)v25 newRenderPipelineStateWithDescriptorInternal:v30 options:v31 reflection:v32 destinationBinaryArchive:v33 error:v34 compilerTask:v35 completionHandler:v36])
      {
        return 0;
      }
    }

    else
    {
      if (a9)
      {
        (*(a9 + 2))(a9, 0, 0, v81[0]);
      }

      else if (a7)
      {
        *a7 = v81[0];
      }

      if (!v25)
      {
        return 0;
      }
    }

    v52 = v25;
LABEL_102:
    dispatch_release(v52);
    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  v29 = 0;
  *a7 = v114;
  return v29;
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  v5 = *(*(*(a1 + 80) + 8) + 24);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) driverCompilerOptions];
  v8 = *(a1 + 96);
  v9 = [*(a1 + 56) binaryArchives];
  if (v2)
  {
    [v2 requiredKeysForFunction:v3 variantKey:v4 + 48 frameworkData:v6 compilerOptions:v5 driverCompilerOptions:v7 airScript:v8 archives:v9 compiledNextStageVariant:0];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) getProgramObject:*(a1 + 40) destinationArchive:*(a1 + 64) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:*(*(a1 + 72) + 8) + 48 failOnMiss:{&v10, *(a1 + 104)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v10);
}

void *__141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_2(uint64_t a1)
{
  result = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    result = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v3 = *(*(*(a1 + 80) + 8) + 24) ^ 1;
    v4 = *(a1 + 40);
    v5 = [objc_msgSend(*(a1 + 48) "fragmentFunction")];
    v6 = MTLPipelinePerformanceKeyFragmentShader[0];
    v7 = [v4 objectForKey:MTLPipelinePerformanceKeyFragmentShader[0]];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v4 setObject:v7 forKey:v6];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:v3 & 1];
    result = [v7 setObject:v8 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v5)
    {
      result = [v7 setObject:v5 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24))
  {
    result = [*(*(*(*(a1 + 64) + 8) + 24) + 432) objectForKey:&stru_1EF478240];
    v9 = result == 0;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v9;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v10 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v10 + 424))
    {
      result = dispatch_queue_create("reflection Queue", 0);
      *(v10 + 424) = result;
    }
  }

  return result;
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if ((*(*(a1[6] + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - a1[11]));
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1[4] + 8) newFragmentVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
    *(*(a1[7] + 8) + 40) = *(a2 + 112);
    v8 = *(*(a1[7] + 8) + 40);
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *(a2 + 56);
    if (v9)
    {
      v22 = 0;
      buffer_ptr[0] = 0;
      v10 = dispatch_data_create_map(v9, buffer_ptr, &v22);
      if (v22)
      {
        [v7 setInputInfo:buffer_ptr[0] size:?];
      }

      dispatch_release(v10);
    }

    if ((*(*(a1[6] + 8) + 25) & 0x10) != 0)
    {
      [v7 setDebugInstrumentationData:*(a2 + 104)];
    }
  }

  v11 = *(*(a1[6] + 8) + 24);
  if ((v11 & 0x200) != 0)
  {
    v12 = a1[5];
    v13 = *(a2 + 88);
    v14 = MTLPipelinePerformanceKeyFragmentShader[0];
    v15 = [v12 objectForKey:MTLPipelinePerformanceKeyFragmentShader[0]];
    if (v15)
    {
      if (v13)
      {
LABEL_17:
        _MTLAddCompilerServiceCompileTimeStats(v15, v13);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v17 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_20:
        [v15 setObject:v16 forKey:*v17];
        v11 = *(*(a1[6] + 8) + 24);
        goto LABEL_21;
      }
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:v15 forKey:v14];

      if (v13)
      {
        goto LABEL_17;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v17 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_20;
  }

LABEL_21:
  if (v11)
  {
    v18 = *(a2 + 40);
    if (v18)
    {
      v19 = *(*(a1[8] + 8) + 24);
      v20 = v19[53];
      buffer_ptr[0] = MEMORY[0x1E69E9820];
      buffer_ptr[1] = 3221225472;
      buffer_ptr[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      buffer_ptr[3] = &unk_1E6EEAD68;
      buffer_ptr[5] = v18;
      buffer_ptr[6] = v19;
      buffer_ptr[4] = 0;
      dispatch_sync(v20, buffer_ptr);
    }
  }

  v21 = *(a2 + 80);
  if (v21)
  {
    *(*(a1[9] + 8) + 40) = v21;
    dispatch_retain(*(*(a1[9] + 8) + 40));
  }

  VariantEntry::insertVariant(*(*(a1[10] + 8) + 24), v7, v5, v6, *(a2 + 104));
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

void __141__MTLCompiler_newRenderPipelineStateWithDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke_5(void *a1)
{
  v2 = *(*(a1[17] + 8) + 24);
  if (*(v2 + 48))
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(*(a1[19] + 8) + 24);
    if (v4)
    {
      v6 = a1[6];
      v7 = a1[7];
      v8 = a1[8];
      v9 = a1[13];
      v10 = [v3 createMeshStageAndLinkPipelineWithFragment:v5 fragmentVariant:a1[9] objectFunction:a1[10] serializedObjectDescriptor:a1[11] meshFunction:a1[23] serializedMeshDescriptor:a1[24] descriptor:a1[12] airDescriptor:*(*(a1[20] + 8) + 40) destinationArchive:*(*(a1[21] + 8) + 40) options:a1[22] reflection:v9 compileStatistics:a1[16] fragmentCompileTimeData:? pipelineArchiverId:? error:? compilerTask:? completionHandler:?];
    }

    else
    {
      v11 = a1[9];
      v12 = a1[10];
      v13 = a1[13];
      v14 = a1[15];
      v10 = [v3 createVertexStageAndLinkPipelineWithFragment:v5 fragmentVariant:a1[11] vertexFunction:a1[23] serializedVertexDescriptor:a1[24] descriptor:a1[12] airDescriptor:*(*(a1[20] + 8) + 40) destinationArchive:*(*(a1[21] + 8) + 40) options:a1[22] reflection:v13 compileStatistics:a1[16] fragmentCompileTimeData:? pipelineArchiverId:? error:? compilerTask:? completionHandler:?];
    }

    *(*(a1[18] + 8) + 40) = v10;
  }

  else
  {
    reportErrorMessage(*(v2 + 56), *(v2 + 64), a1[16], a1[22]);
  }

  v15 = *(*(a1[21] + 8) + 40);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = a1[15];
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = a1[7];
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = a1[8];
  if (v18)
  {

    dispatch_release(v18);
  }
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6 completionHandler:(id)a7
{
  if ([a3 pipelineLibrary])
  {
    v13 = [objc_msgSend(a3 "pipelineLibrary")];
  }

  else
  {
    v13 = 0;
  }

  return [(MTLCompiler *)self newComputePipelineStateWithDescriptorInternal:a3 options:a4 pipelineCache:v13 destinationBinaryArchive:0 reflection:a5 error:a6 compilerTask:0 completionHandler:a7];
}

- (VariantEntry)computeVariantEntryWithDescriptor:(id)a3 airDescriptor:(id)a4 options:(unint64_t)a5 serializedComputeDataDescriptor:(id)a6 asyncCompile:(BOOL)a7 pipelineCache:(id)a8 destinationBinaryArchive:(id)a9 computeProgram:(MTLProgramObject *)a10 kernelDriverCompileTimeData:(id *)a11 compileTimeStatistics:(id)a12 compilerTask:(id)a13
{
  v14 = a7;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = MTLGetCompilerOptions(self->_device, a5, self->_compilerFlags, 1uLL, 0);
  v20 = [a3 computeFunction];
  buffer_ptr = 0;
  size_ptr = 0;
  v21 = dispatch_data_create_map(a4, &buffer_ptr, &size_ptr);
  v54 = 0;
  v22 = [(_MTLDevice *)self->_device computeFunctionKeyWithComputePipelineDescriptor:a3 options:a5 keySize:&v54];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x6812000000;
  v50[3] = __Block_byref_object_copy__1412;
  v50[4] = __Block_byref_object_dispose__1413;
  v50[6] = v22;
  v50[7] = 0;
  v50[8] = v54;
  v50[9] = 0;
  v38 = v22;
  v37 = v14;
  if (a6)
  {
    v23 = dispatch_data_create_map(a6, &v52, &v53);
  }

  else
  {
    v23 = 0;
    v52 = 0;
    v53 = 0;
  }

  object = v23;
  compilerQueue = self->_compilerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke;
  block[3] = &unk_1E6EEC460;
  block[4] = self;
  block[5] = v20;
  block[6] = a6;
  block[7] = a3;
  block[9] = v50;
  block[10] = &v57;
  block[11] = &v69;
  block[12] = buffer_ptr;
  block[8] = a9;
  v49 = (a5 & 4) != 0;
  dispatch_sync(compilerQueue, block);
  v25 = v70[3];
  if ((a5 & 4) == 0 || v25)
  {
    v27 = *(v25 + 440);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2;
    v47[3] = &unk_1E6EEC488;
    v47[8] = &v69;
    v47[9] = v50;
    v47[4] = a9;
    v47[5] = a12;
    v47[6] = a3;
    v47[7] = &v73;
    v47[10] = &v61;
    v47[11] = &v65;
    v47[12] = &v57;
    v47[13] = a5;
    dispatch_sync(v27, v47);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__10;
    v45 = __Block_byref_object_dispose__10;
    v46 = 0;
    if (a9 || (v28 = 0, (v62[3] & 1) != 0))
    {
      v28 = dispatch_data_create(*v74[3], *(v74[3] + 16) + *(v74[3] + 8), 0, 0);
    }

    v29 = objc_opt_new();
    [v29 setSync:!v37];
    [v29 setFunction:v20];
    [v29 setPipelineOptions:a5];
    [v29 setFrameworkData:a6];
    [v29 setDriverKeyData:v28];
    [v29 setPipelineCache:a8];
    if ([a3 linkedFunctions])
    {
      v30 = [objc_msgSend(a3 "linkedFunctions")];
    }

    else
    {
      v30 = 0;
    }

    [v29 setVisibleFunctions:{v30, a12}];
    [v29 setDestinationBinaryArchive:a9];
    [v29 setBinaryArchives:{objc_msgSend(a3, "binaryArchives")}];
    if ([a3 linkedFunctions])
    {
      v31 = [objc_msgSend(a3 "linkedFunctions")];
    }

    else
    {
      v31 = 0;
    }

    [v29 setPrivateVisibleFunctions:v31];
    [v29 setGpuCompilerSPIOptions:{objc_msgSend(a3, "gpuCompilerSPIOptions")}];
    [v29 setMaxAccelerationStructureTraversalDepth:{objc_msgSend(a3, "maxAccelerationStructureTraversalDepth")}];
    [v29 setAirScript:v21];
    if ([v29 visibleFunctions])
    {
      v32 = [objc_msgSend(v29 "visibleFunctions")];
    }

    else
    {
      v32 = [a3 functionPointers];
    }

    [v29 setVisibleFunctions:v32];
    -[MTLCompiler initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:](self, "initializeFunctionRequestScriptAndFunctionId:script:driverCompilerOptions:compiledNextStageVariant:", v29, buffer_ptr, [a3 driverCompilerOptions], 0);
    if (*(v62 + 24) == 1)
    {
      if ((*(v58 + 25) & 2) != 0)
      {
        v33 = mach_absolute_time();
      }

      else
      {
        v33 = 0;
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3;
      v40[3] = &unk_1E6EEC500;
      v40[6] = &v57;
      v40[7] = &v69;
      v40[4] = self;
      v40[5] = v36;
      v40[8] = &v73;
      v40[9] = &v41;
      v40[10] = v33;
      [(MTLCompiler *)self compileFunctionRequestInternal:v29 frameworkLinking:1 linkDataSize:0 reflectionOnly:0 compilerTask:a13 completionHandler:v40];
    }

    else if (*(v66 + 24) == 1)
    {
      dispatch_group_enter(*(v74[3] + 40));
      v34 = [a3 binaryArchives];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4;
      v39[3] = &unk_1E6EEC410;
      v39[4] = &v69;
      v39[5] = &v73;
      [(MTLCompiler *)self reflectionWithFunction:v20 options:a5 sync:0 binaryArchives:v34 completionHandler:v39];
    }

    if (v28)
    {
      dispatch_release(v28);
    }

    dispatch_release(v21);
    [(_MTLDevice *)self->_device freeComputeFunctionKey:v38 keySize:v54];
    *a11 = v42[5];
    *a10 = v70[3];
    v26 = v74[3];
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    [(_MTLDevice *)self->_device freeComputeFunctionKey:v38 keySize:v54];
    dispatch_release(v21);
    v26 = 0;
  }

  _Block_object_dispose(v50, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  return v26;
}

void __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  v5 = *(*(*(a1 + 80) + 8) + 24);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) driverCompilerOptions];
  v8 = *(a1 + 96);
  v9 = [*(a1 + 56) binaryArchives];
  if (v2)
  {
    [v2 requiredKeysForFunction:v3 variantKey:v4 + 48 frameworkData:v6 compilerOptions:v5 driverCompilerOptions:v7 airScript:v8 archives:v9 compiledNextStageVariant:0];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) getProgramObject:*(a1 + 40) destinationArchive:*(a1 + 64) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:*(*(a1 + 72) + 8) + 48 failOnMiss:{&v10, *(a1 + 104)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v10);
}

void *__233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2(uint64_t a1)
{
  result = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    result = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v3 = *(*(*(a1 + 80) + 8) + 24);
    v4 = *(a1 + 40);
    v5 = [objc_msgSend(*(a1 + 48) "computeFunction")];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:(v3 & 1) == 0];
    result = [v4 setObject:v6 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v5)
    {
      result = [v4 setObject:v5 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24))
  {
    result = [*(*(*(*(a1 + 64) + 8) + 24) + 432) objectForKey:&stru_1EF478240];
    v7 = result == 0;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v7;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v8 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v8 + 424))
    {
      result = dispatch_queue_create("reflection Queue", 0);
      *(v8 + 424) = result;
    }
  }

  return result;
}

void __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 8) newComputeVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72)];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      v7 = *(*(*(a1 + 56) + 8) + 24);
      v8 = *(v7 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v6;
      block[6] = v7;
      block[4] = 0;
      dispatch_sync(v8, block);
    }
  }

  VariantEntry::insertVariant(*(*(*(a1 + 64) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));

  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v9 = *(a1 + 40);
    v10 = *(a2 + 88);
    if (v10)
    {
      _MTLAddCompilerServiceCompileTimeStats(*(a1 + 40), v10);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
      v12 = MTLCompileTimeStatisticsKeyMTLCompilerService;
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v12 = MTLCompileTimeStatisticsKeyCachedFunction;
    }

    [v9 setObject:v11 forKey:*v12];
  }

  v13 = *(a2 + 80);
  if (v13)
  {
    *(*(*(a1 + 72) + 8) + 40) = v13;
    dispatch_retain(*(*(*(a1 + 72) + 8) + 40));
  }
}

void __233__MTLCompiler_computeVariantEntryWithDescriptor_airDescriptor_options_serializedComputeDataDescriptor_asyncCompile_pipelineCache_destinationBinaryArchive_computeProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

- (id)pipelineStateWithVariant:(VariantEntry *)a3 descriptor:(id)a4 options:(unint64_t)a5 computeProgram:(void *)a6 kernelDriverCompileTimeData:(id)a7 serializedComputeDataDescriptor:(id)a8 compileTimeStatistics:(id)a9 reflection:(id *)a10 error:(id *)a11 completionHandler:(id)a12
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v19 = MTLGetCompilerOptions(self->_device, a5, self->_compilerFlags, 1uLL, 0);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3052000000;
  v26[3] = __Block_byref_object_copy__10;
  v26[4] = __Block_byref_object_dispose__10;
  v26[5] = a7;
  v20 = [(_MTLDevice *)self->_device serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __191__MTLCompiler_pipelineStateWithVariant_descriptor_options_computeProgram_kernelDriverCompileTimeData_serializedComputeDataDescriptor_compileTimeStatistics_reflection_error_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC528;
  block[8] = a12;
  block[9] = &v27;
  block[4] = self;
  block[5] = a4;
  block[12] = a11;
  block[13] = a5;
  v24 = v19;
  block[10] = v26;
  block[11] = a3;
  block[6] = a8;
  block[7] = a9;
  v25 = a12 != 0;
  block[14] = a6;
  block[15] = a10;
  VariantEntry::waitOrNotify(a3, a12 != 0, v20, block);
  v21 = v28[5];
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);
  return v21;
}

void __191__MTLCompiler_pipelineStateWithVariant_descriptor_options_computeProgram_kernelDriverCompileTimeData_serializedComputeDataDescriptor_compileTimeStatistics_reflection_error_completionHandler___block_invoke(uint64_t a1)
{
  v35[16] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  v3 = v2[6];
  if (v3)
  {
    v30 = 0;
    *(*(*(a1 + 72) + 8) + 40) = [*(*(a1 + 32) + 8) newComputePipelineWithDescriptor:*(a1 + 40) variant:v3 errorMessage:&v30];
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      if (*(a1 + 104))
      {
        v4 = [*(*(a1 + 32) + 8) pipelineFlagsWithComputeVariant:v3];
        if (*(a1 + 128))
        {
          v5 = [*(*(a1 + 112) + 432) objectForKey:&stru_1EF478240];
        }

        else
        {
          v5 = 0;
        }

        v11 = [[MTLComputePipelineReflection alloc] initWithSerializedData:v5 serializedStageInputDescriptor:*(a1 + 48) device:*(*(a1 + 32) + 8) options:*(a1 + 104) flags:v4];
        v12 = *(a1 + 104);
        if ((v12 & 0x440000) != 0)
        {
          v13 = [*(*(a1 + 32) + 8) pipelinePerformanceStatisticsWithComputeVariant:v3 compileTimeOutput:*(*(*(a1 + 80) + 8) + 40)];
          v14 = *(*(*(a1 + 80) + 8) + 40);
          if (v14)
          {
            dispatch_release(v14);
            *(*(*(a1 + 80) + 8) + 40) = 0;
          }

          if ((*(a1 + 106) & 0x40) != 0)
          {
            v15 = *(a1 + 56);
            if (([objc_msgSend(v15 objectForKey:{MTLCompileTimeStatisticsKeyCachedFunction[0]), "BOOLValue"}] & 1) == 0)
            {
              v16 = [v13 objectForKey:MTLPipelinePerformanceKeyCompileTimeStatistics[0]];
              *v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v17 = [v16 countByEnumeratingWithState:v31 objects:v35 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v32;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v32 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    [v15 setObject:objc_msgSend(v16 forKey:{"objectForKey:", *(v31[1] + i)), *(v31[1] + i)}];
                  }

                  v18 = [v16 countByEnumeratingWithState:v31 objects:v35 count:16];
                }

                while (v18);
              }
            }
          }

          [(MTLComputePipelineReflection *)v11 setPerformanceStatistics:v13];
          v12 = *(a1 + 104);
        }

        if ((v12 & 0x200000) != 0)
        {
          v35[0] = 0;
          v31[0] = 0;
          v29 = 0;
          v28 = 0;
          [*(*(a1 + 32) + 8) getConstantSamplersBitmasks:v35 uniqueIdentifiers:v31 constantSamplerCount:&v29 stride:&v28 forComputeVariant:v3];
          if (v29)
          {
            [(MTLComputePipelineReflection *)v11 setConstantSamplerDescriptorsFromBitmasks:v35[0] stride:v28 count:?];
            v21 = objc_alloc(MEMORY[0x1E695DF70]);
            v22 = [v21 initWithCapacity:v29];
            if (v29)
            {
              for (j = 0; j < v29; ++j)
              {
                [v22 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedLongLong:", *(v31[0] + j)), j}];
              }
            }

            [(MTLComputePipelineReflection *)v11 setConstantSamplerUniqueIdentifiers:v22];
          }

          free(v35[0]);
          free(v31[0]);
          v12 = *(a1 + 104);
        }

        if ((v12 & 0x1000000) != 0)
        {
          v24 = [[MTLDebugInstrumentationData alloc] initWithData:*(*(a1 + 88) + 72)];
          [*(*(*(a1 + 72) + 8) + 40) setDebugInstrumentationData:v24];
        }

        if ((*(a1 + 132) & 1) == 0)
        {
          if (!v11)
          {
            goto LABEL_38;
          }

          if (*(a1 + 120))
          {
            v27 = v11;
            **(a1 + 120) = v11;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

LABEL_36:
        v25 = *(*(*(a1 + 72) + 8) + 40);
        (*(*(a1 + 64) + 16))();

        *(*(*(a1 + 72) + 8) + 40) = 0;
LABEL_37:

        goto LABEL_38;
      }

      if (*(a1 + 132) == 1)
      {
        v11 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      reportErrorMessage(2, v30, *(a1 + 64), *(a1 + 96));
    }

LABEL_38:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = v2[7];
  v7 = v2[8];
  v8 = *(a1 + 64);
  v9 = *(a1 + 96);
  v10 = *MEMORY[0x1E69E9840];

  reportErrorMessage(v6, v7, v8, v9);
}

- (id)newComputePipelineStateWithDescriptorInternal:(id)a3 options:(unint64_t)a4 pipelineCache:(id)a5 destinationBinaryArchive:(id)a6 reflection:(id *)a7 error:(id *)a8 compilerTask:(id)a9 completionHandler:(id)a10
{
  v16 = _MTLCompilePerformanceStatisticsEnabled();
  if (v16)
  {
    v24 = a4 | 0x400000;
  }

  else
  {
    v24 = a4;
  }

  if ((v24 & 0x400000) != 0)
  {
    if (initTimebaseInfo(void)::onceToken != -1)
    {
      initTimebaseInfo();
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesCompute);
    if (a10)
    {
      v25 = 0;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = mach_absolute_time();
      v25 = v16;
      if (a3)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  [(MTLCompiler *)v16 newComputePipelineStateWithDescriptorInternal:v17 options:v18 pipelineCache:v19 destinationBinaryArchive:v20 reflection:v21 error:v22 compilerTask:v23 completionHandler:v34];
LABEL_11:
  v42 = 0;
  if ([a3 validateWithDevice:self->_device error:&v42])
  {
    v35 = a7;
    if (a8)
    {
      *a8 = 0;
    }

    v36 = a8;
    if (a10)
    {
      a3 = [a3 copy];
    }

    v27 = [a3 newSerializedComputeDataWithFlags:self->_compilerFlags options:v24];
    v41 = 0;
    v40 = 0;
    object = v27;
    v38 = [a3 newPipelineScript];
    v28 = [MTLCompiler computeVariantEntryWithDescriptor:"computeVariantEntryWithDescriptor:airDescriptor:options:serializedComputeDataDescriptor:asyncCompile:pipelineCache:destinationBinaryArchive:computeProgram:kernelDriverCompileTimeData:compileTimeStatistics:compilerTask:" airDescriptor:a3 options:a6 serializedComputeDataDescriptor:&v40 asyncCompile:&v41 pipelineCache:v26 destinationBinaryArchive:a9 computeProgram:? kernelDriverCompileTimeData:? compileTimeStatistics:? compilerTask:?];
    if (v28)
    {
      v29 = v28;
      if (!a6)
      {
        v32 = v27;
        v31 = [(MTLCompiler *)self pipelineStateWithVariant:v28 descriptor:a3 options:v24 computeProgram:v40 kernelDriverCompileTimeData:v41 serializedComputeDataDescriptor:v27 compileTimeStatistics:v26 reflection:v35 error:v36 completionHandler:a10];
        if (!object)
        {
LABEL_29:
          if (a10)
          {

            if (!v26)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!v26)
            {
LABEL_35:
              dispatch_release(v38);
              return v31;
            }

            -[NSDictionary setObject:forKey:](v26, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*&gMachTimeToNS * (mach_absolute_time() - v25))], MTLCompileTimeStatisticsKeyPipelineTotal[0]);
          }

          _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesCompute);

          goto LABEL_35;
        }

LABEL_28:
        dispatch_release(v32);
        goto LABEL_29;
      }

      v30 = [(_MTLDevice *)self->_device serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __156__MTLCompiler_newComputePipelineStateWithDescriptorInternal_options_pipelineCache_destinationBinaryArchive_reflection_error_compilerTask_completionHandler___block_invoke;
      block[3] = &unk_1E6EEC550;
      block[4] = a10;
      block[5] = v29;
      block[6] = v36;
      VariantEntry::waitOrNotify(v29, a10 != 0, v30, block);
    }

    else
    {
      reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", a10, v36);
    }

    v31 = 0;
    v32 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a8)
  {
    *a8 = v42;
  }

  if (v26)
  {
  }

  return 0;
}

void *__156__MTLCompiler_newComputePipelineStateWithDescriptorInternal_options_pipelineCache_destinationBinaryArchive_reflection_error_compilerTask_completionHandler___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(v1 + 48))
  {
    return reportErrorMessage(*(v1 + 56), *(v1 + 64), result[4], result[6]);
  }

  return result;
}

- (VariantEntry)tileVariantEntryWithDescriptor:(id)a3 airDescriptor:(id)a4 options:(unint64_t)a5 serializedTileDataDescriptor:(id)a6 asyncCompile:(BOOL)a7 destinationBinaryArchive:(id)a8 tileProgram:(MTLProgramObject *)a9 kernelDriverCompileTimeData:(id *)a10 compileTimeStatistics:(id)a11 compilerTask:(id)a12
{
  v13 = a7;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = MTLGetCompilerOptions(self->_device, a5, self->_compilerFlags, 0, 0);
  v19 = [a3 tileFunction];
  v32 = [v19 functionType];
  buffer_ptr = 0;
  size_ptr = 0;
  v20 = dispatch_data_create_map(a4, &buffer_ptr, &size_ptr);
  v49 = 0;
  v21 = [(_MTLDevice *)self->_device tileFunctionKeyWithTilePipelineDescriptor:a3 options:a5 keySize:&v49];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x6812000000;
  v45[3] = __Block_byref_object_copy__1412;
  v45[4] = __Block_byref_object_dispose__1413;
  v45[6] = v21;
  v45[7] = 0;
  v45[8] = v49;
  v45[9] = 0;
  v33 = v21;
  if (a6)
  {
    v22 = dispatch_data_create_map(a6, &v47, &v48);
  }

  else
  {
    v22 = 0;
    v47 = 0;
    v48 = 0;
  }

  object = v22;
  compilerQueue = self->_compilerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke;
  block[3] = &unk_1E6EEC460;
  block[4] = self;
  block[5] = v19;
  block[6] = a6;
  block[7] = a3;
  block[9] = v45;
  block[10] = &v52;
  block[11] = &v64;
  block[12] = buffer_ptr;
  block[8] = a8;
  v44 = (a5 & 4) != 0;
  dispatch_sync(compilerQueue, block);
  v24 = v65[3];
  if ((a5 & 4) == 0 || v24)
  {
    v26 = *(v24 + 440);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2;
    v42[3] = &unk_1E6EEC578;
    v42[8] = &v64;
    v42[9] = v45;
    v42[4] = a8;
    v42[5] = a11;
    v42[13] = a5;
    v42[14] = v32;
    v42[6] = a3;
    v42[7] = &v68;
    v42[10] = &v56;
    v42[11] = &v60;
    v42[12] = &v52;
    dispatch_sync(v26, v42);
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = __Block_byref_object_copy__10;
    v40 = __Block_byref_object_dispose__10;
    v41 = 0;
    if (a8 || (v27 = 0, (v57[3] & 1) != 0))
    {
      v27 = dispatch_data_create(*v69[3], *(v69[3] + 16) + *(v69[3] + 8), 0, 0);
    }

    v28 = objc_opt_new();
    [(MTLCompileFunctionRequestData *)v28 setSync:!v13];
    [(MTLCompileFunctionRequestData *)v28 setFunction:v19];
    [(MTLCompileFunctionRequestData *)v28 setPipelineOptions:a5];
    [(MTLCompileFunctionRequestData *)v28 setFrameworkData:a6];
    [(MTLCompileFunctionRequestData *)v28 setDriverKeyData:v27];
    [(MTLCompileFunctionRequestData *)v28 setDestinationBinaryArchive:a8];
    -[MTLCompileFunctionRequestData setBinaryArchives:](v28, "setBinaryArchives:", [a3 binaryArchives]);
    -[MTLCompileFunctionRequestData setGpuCompilerSPIOptions:](v28, "setGpuCompilerSPIOptions:", [a3 gpuCompilerSPIOptions]);
    -[MTLCompileFunctionRequestData setMaxAccelerationStructureTraversalDepth:](v28, "setMaxAccelerationStructureTraversalDepth:", [a3 maxAccelerationStructureTraversalDepth]);
    [(MTLCompileFunctionRequestData *)v28 setAirScript:v20];
    setLinkedFunctionsForRequest(v28, [a3 linkedFunctions]);
    [(MTLCompiler *)self initializeFunctionRequestScriptAndFunctionId:v28 script:buffer_ptr driverCompilerOptions:0 compiledNextStageVariant:0];
    if (*(v57 + 24) == 1)
    {
      if ((*(v53 + 25) & 2) != 0)
      {
        v29 = mach_absolute_time();
      }

      else
      {
        v29 = 0;
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3;
      v35[3] = &unk_1E6EEC5A0;
      v35[10] = v29;
      v35[11] = v32;
      v35[6] = &v52;
      v35[7] = &v64;
      v35[4] = self;
      v35[5] = a11;
      v35[8] = &v68;
      v35[9] = &v36;
      [(MTLCompiler *)self compileFunctionRequestInternal:v28 frameworkLinking:1 linkDataSize:0 reflectionOnly:0 compilerTask:a12 completionHandler:v35, a11];
    }

    else if (*(v61 + 24) == 1)
    {
      dispatch_group_enter(*(v69[3] + 40));
      v30 = [a3 binaryArchives];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4;
      v34[3] = &unk_1E6EEC410;
      v34[4] = &v64;
      v34[5] = &v68;
      [(MTLCompiler *)self reflectionWithFunction:v19 options:a5 sync:0 binaryArchives:v30 completionHandler:v34];
    }

    if (v27)
    {
      dispatch_release(v27);
    }

    dispatch_release(v20);
    [(_MTLDevice *)self->_device freeTileFunctionKey:v33 keySize:v49];
    *a10 = v37[5];
    *a9 = v65[3];
    v25 = v69[3];
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    [(_MTLDevice *)self->_device freeTileFunctionKey:v33 keySize:v49];
    dispatch_release(v20);
    v25 = 0;
  }

  _Block_object_dispose(v45, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  return v25;
}

void __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  v5 = *(*(*(a1 + 80) + 8) + 24);
  v6 = *(a1 + 96);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) binaryArchives];
  if (v2)
  {
    [v2 requiredKeysForFunction:v3 variantKey:v4 + 48 frameworkData:v7 compilerOptions:v5 driverCompilerOptions:0 airScript:v6 archives:v8 compiledNextStageVariant:0];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) getProgramObject:*(a1 + 40) destinationArchive:*(a1 + 64) sourceBinaryArchives:objc_msgSend(*(a1 + 56) variantKey:"binaryArchives") requiredKeys:*(*(a1 + 72) + 8) + 48 failOnMiss:{&v9, *(a1 + 104)}];
  RequiredFunctionKeys::~RequiredFunctionKeys(&v9);
}

void *__210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_2(uint64_t a1)
{
  result = VariantList<4u>::find<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    result = VariantList<4u>::newVariantEntry<VariantKey>(*(*(*(a1 + 64) + 8) + 24), *(*(a1 + 72) + 8) + 48);
    *(*(*(a1 + 56) + 8) + 24) = result;
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v3 = *(a1 + 112);
    v4 = *(*(*(a1 + 80) + 8) + 24) ^ 1;
    v5 = *(a1 + 40);
    v6 = [objc_msgSend(*(a1 + 48) "tileFunction")];
    if (v3 <= 8 && ((1 << v3) & 0x186) != 0)
    {
      v7 = MTLPipelinePerformanceKeyVertexShader;
      if (v3 != 1)
      {
        v7 = MTLPipelinePerformanceKeyFragmentShader;
      }

      if (v3 == 8)
      {
        v7 = MTLPipelinePerformanceKeyObjectShader;
      }

      if (v3 == 7)
      {
        v7 = MTLPipelinePerformanceKeyMeshShader;
      }

      v8 = *v7;
      v9 = [v5 objectForKey:*v7];
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v5 setObject:v9 forKey:v8];
      }
    }

    else
    {
      v9 = v5;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
    result = [v9 setObject:v10 forKey:MTLCompileTimeStatisticsKeyCachedFunction[0]];
    if (v6)
    {
      result = [v9 setObject:v6 forKey:MTLCompileTimeStatisticsKeyFunctionName[0]];
    }
  }

  if (*(*(*(a1 + 96) + 8) + 24))
  {
    result = [*(*(*(*(a1 + 64) + 8) + 24) + 432) objectForKey:&stru_1EF478240];
    v11 = result == 0;
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = v11;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v12 = *(*(*(a1 + 64) + 8) + 24);
    if (!*(v12 + 424))
    {
      result = dispatch_queue_create("reflection Queue", 0);
      *(v12 + 424) = result;
    }
  }

  return result;
}

void __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v4 = (*&gMachTimeToNS * (mach_absolute_time() - *(a1 + 80)));
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 8) newTileVariantWithCompilerOutput:*(a2 + 24) pipelineStatisticsOutput:*(a2 + 72) functionType:*(a1 + 88)];
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      v7 = *(*(*(a1 + 56) + 8) + 24);
      v8 = *(v7 + 424);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
      block[3] = &unk_1E6EEAD68;
      block[5] = v6;
      block[6] = v7;
      block[4] = 0;
      dispatch_sync(v8, block);
    }
  }

  VariantEntry::insertVariant(*(*(*(a1 + 64) + 8) + 24), v5, *a2, *(a2 + 8), *(a2 + 104));

  if ((*(*(*(a1 + 48) + 8) + 25) & 2) != 0)
  {
    v9 = *(a1 + 40);
    v10 = *(a2 + 88);
    v11 = *(a1 + 88);
    if (v11 <= 8 && ((1 << v11) & 0x186) != 0)
    {
      v12 = MTLPipelinePerformanceKeyVertexShader;
      if (v11 != 1)
      {
        v12 = MTLPipelinePerformanceKeyFragmentShader;
      }

      if (v11 == 8)
      {
        v12 = MTLPipelinePerformanceKeyObjectShader;
      }

      if (v11 == 7)
      {
        v13 = MTLPipelinePerformanceKeyMeshShader;
      }

      else
      {
        v13 = v12;
      }

      v14 = *v13;
      v15 = [*(a1 + 40) objectForKey:*v13];
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v9 setObject:v15 forKey:v14];
      }

      if (v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(a1 + 40);
      if (v10)
      {
LABEL_23:
        _MTLAddCompilerServiceCompileTimeStats(v15, v10);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v17 = MTLCompileTimeStatisticsKeyMTLCompilerService;
LABEL_26:
        [v15 setObject:v16 forKey:*v17];
        goto LABEL_27;
      }
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v17 = MTLCompileTimeStatisticsKeyCachedFunction;
    goto LABEL_26;
  }

LABEL_27:
  v18 = *(a2 + 80);
  if (v18)
  {
    *(*(*(a1 + 72) + 8) + 40) = v18;
    dispatch_retain(*(*(*(a1 + 72) + 8) + 40));
  }
}

void __210__MTLCompiler_tileVariantEntryWithDescriptor_airDescriptor_options_serializedTileDataDescriptor_asyncCompile_destinationBinaryArchive_tileProgram_kernelDriverCompileTimeData_compileTimeStatistics_compilerTask___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = *(v7 + 424);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke;
    block[3] = &unk_1E6EEAD68;
    block[5] = a3;
    block[6] = v7;
    block[4] = 0;
    dispatch_sync(v8, block);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  os_unfair_lock_lock((v9 + 32));
  if (!*(v9 + 56))
  {
    *(v9 + 56) = a2;

    *(v9 + 64) = [a4 copy];
  }

  dispatch_group_leave(*(v9 + 40));
  os_unfair_lock_unlock((v9 + 32));
}

- (id)renderPipelineStateWithTileVariant:(VariantEntry *)a3 descriptor:(id)a4 options:(unint64_t)a5 tileProgram:(void *)a6 kernelDriverCompileTimeData:(id)a7 serializedTileDataDescriptor:(id)a8 compileTimeStatistics:(id)a9 reflection:(id *)a10 error:(id *)a11 compilerTask:(id)a12 completionHandler:(id)a13
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v19 = MTLGetCompilerOptions(self->_device, a5, self->_compilerFlags, 0, 0);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3052000000;
  v27[3] = __Block_byref_object_copy__10;
  v27[4] = __Block_byref_object_dispose__10;
  v27[5] = a7;
  v20 = [objc_msgSend(a4 "tileFunction")];
  v21 = [(_MTLDevice *)self->_device serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __208__MTLCompiler_renderPipelineStateWithTileVariant_descriptor_options_tileProgram_kernelDriverCompileTimeData_serializedTileDataDescriptor_compileTimeStatistics_reflection_error_compilerTask_completionHandler___block_invoke;
  block[3] = &unk_1E6EEC5C8;
  block[10] = a3;
  block[11] = a11;
  block[4] = self;
  block[5] = a4;
  v25 = v19;
  block[12] = a5;
  block[13] = a6;
  block[8] = &v28;
  block[9] = v27;
  block[6] = a9;
  block[7] = a13;
  v26 = a13 != 0;
  block[14] = v20;
  block[15] = a10;
  VariantEntry::waitOrNotify(a3, a13 != 0, v21, block);
  v22 = v29[5];
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);
  return v22;
}

void __208__MTLCompiler_renderPipelineStateWithTileVariant_descriptor_options_tileProgram_kernelDriverCompileTimeData_serializedTileDataDescriptor_compileTimeStatistics_reflection_error_compilerTask_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = v2[6];
  if (v3)
  {
    v24 = 0;
    *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 8) newRenderPipelineWithTileDescriptor:*(a1 + 40) tileVariant:v3 errorMessage:&v24];
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      reportErrorMessage(2, v24, *(a1 + 56), *(a1 + 88));
      return;
    }

    if (!*(a1 + 96))
    {
      if (*(a1 + 132) != 1)
      {
        return;
      }

      v10 = 0;
      goto LABEL_29;
    }

    v4 = [*(*(a1 + 32) + 8) pipelineFlagsWithTileVariant:v3];
    if (*(a1 + 128))
    {
      v5 = [*(*(a1 + 104) + 432) objectForKey:&stru_1EF478240];
    }

    else
    {
      v5 = 0;
    }

    v10 = [[MTLRenderPipelineReflectionInternal alloc] initWithTileData:v5 functionType:*(a1 + 112) device:*(*(a1 + 32) + 8) options:*(a1 + 96) flags:v4];
    v11 = *(a1 + 96);
    if ((v11 & 0x440000) != 0)
    {
      v12 = [*(*(a1 + 32) + 8) pipelinePerformanceStatisticsWithTileVariant:v3 compileTimeOutput:*(*(*(a1 + 72) + 8) + 40)];
      v13 = *(*(*(a1 + 72) + 8) + 40);
      if (v13)
      {
        dispatch_release(v13);
        *(*(*(a1 + 72) + 8) + 40) = 0;
      }

      if ((*(a1 + 98) & 0x40) != 0)
      {
        addDriverCompilerPerformanceData(*(a1 + 48), v12, *(a1 + 112));
      }

      [(MTLRenderPipelineReflectionInternal *)v10 setPerformanceStatistics:v12];
      v11 = *(a1 + 96);
    }

    if ((v11 & 0x200000) != 0)
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v20 = 0;
      [*(*(a1 + 32) + 8) getConstantSamplersBitmasks:&v23 uniqueIdentifiers:&v22 constantSamplerCount:&v21 stride:&v20 forTileVariant:v3];
      if (v21)
      {
        [(MTLRenderPipelineReflectionInternal *)v10 setConstantSamplerDescriptorsFromBitmasks:v23 stride:v20 count:?];
        v14 = objc_alloc(MEMORY[0x1E695DF70]);
        v15 = [v14 initWithCapacity:v21];
        if (v21)
        {
          for (i = 0; i < v21; ++i)
          {
            [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedLongLong:", *(v22 + i)), i}];
          }
        }

        [(MTLRenderPipelineReflectionInternal *)v10 setConstantSamplerUniqueIdentifiers:v15];
      }

      free(v23);
      free(v22);
      v11 = *(a1 + 96);
    }

    if ((v11 & 0x1000000) != 0)
    {
      v17 = [[MTLDebugInstrumentationData alloc] initWithData:*(*(a1 + 80) + 72)];
      [*(*(*(a1 + 64) + 8) + 40) setTileDebugInstrumentationData:v17];
    }

    if (*(a1 + 132))
    {
LABEL_29:
      v18 = *(*(*(a1 + 64) + 8) + 40);
      (*(*(a1 + 56) + 16))();

      *(*(*(a1 + 64) + 8) + 40) = 0;
LABEL_30:

      return;
    }

    if (v10)
    {
      if (*(a1 + 120))
      {
        v19 = v10;
        **(a1 + 120) = v10;
        return;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v6 = v2[7];
    v7 = v2[8];
    v8 = *(a1 + 56);
    v9 = *(a1 + 88);

    reportErrorMessage(v6, v7, v8, v9);
  }
}

- (id)newRenderPipelineStateWithTileDescriptorInternal:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 destinationBinaryArchive:(id)a6 error:(id *)a7 compilerTask:(id)a8 completionHandler:(id)a9
{
  v16 = _MTLCompilePerformanceStatisticsEnabled();
  if (v16)
  {
    v24 = a4 | 0x400000;
  }

  else
  {
    v24 = a4;
  }

  if ((v24 & 0x400000) == 0)
  {
    v25 = 0;
    v26 = 0;
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if (initTimebaseInfo(void)::onceToken != -1)
  {
    initTimebaseInfo();
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesRender);
  if (a9)
  {
    v25 = 0;
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v16 = mach_absolute_time();
  v25 = v16;
  if (!a3)
  {
LABEL_18:
    [(MTLCompiler *)v16 newRenderPipelineStateWithTileDescriptorInternal:v17 options:v18 reflection:v19 destinationBinaryArchive:v20 error:v21 compilerTask:v22 completionHandler:v23, v33];
  }

LABEL_6:
  v40 = 0;
  if ([a3 validateWithDevice:self->_device error:&v40])
  {
    if (a7)
    {
      *a7 = 0;
    }

    v34 = a5;
    v35 = v25;
    if (a9)
    {
      a3 = [a3 copy];
    }

    v27 = [a3 newSerializedTileDataWithFlags:self->_compilerFlags options:v24 error:a7];
    v38 = 0;
    v39 = 0;
    object = [a3 newPipelineScript];
    v28 = [MTLCompiler tileVariantEntryWithDescriptor:"tileVariantEntryWithDescriptor:airDescriptor:options:serializedTileDataDescriptor:asyncCompile:destinationBinaryArchive:tileProgram:kernelDriverCompileTimeData:compileTimeStatistics:compilerTask:" airDescriptor:a3 options:&v38 serializedTileDataDescriptor:&v39 asyncCompile:v26 destinationBinaryArchive:a8 tileProgram:? kernelDriverCompileTimeData:? compileTimeStatistics:? compilerTask:?];
    if (v28)
    {
      v29 = v28;
      if (!a6)
      {
        v31 = [(MTLCompiler *)self renderPipelineStateWithTileVariant:v28 descriptor:a3 options:v24 tileProgram:v38 kernelDriverCompileTimeData:v39 serializedTileDataDescriptor:v27 compileTimeStatistics:v26 reflection:v34 error:a7 compilerTask:a8 completionHandler:a9];
        if (!v27)
        {
LABEL_27:
          if (a9)
          {

            if (!v26)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!v26)
            {
LABEL_35:
              dispatch_release(object);
              return v31;
            }

            -[NSDictionary setObject:forKey:](v26, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*&gMachTimeToNS * (mach_absolute_time() - v35))], MTLCompileTimeStatisticsKeyPipelineTotal[0]);
          }

          _MTLAddCompilePipelinePerformanceStatistics(v26, MTLCompileTimeStatisticsKeyPipelinesRender);

          goto LABEL_35;
        }

LABEL_26:
        dispatch_release(v27);
        goto LABEL_27;
      }

      v30 = [(_MTLDevice *)self->_device serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __145__MTLCompiler_newRenderPipelineStateWithTileDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke;
      block[3] = &unk_1E6EEC550;
      block[4] = a9;
      block[5] = v29;
      block[6] = a7;
      VariantEntry::waitOrNotify(v29, a9 != 0, v30, block);
    }

    else
    {
      reportErrorMessage(1, @"MTLPipelineOptionFailOnBinaryArchiveMiss was set and failed to find compiled pipeline functions in binary archive.", a9, a7);
    }

    v31 = 0;
    if (!v27)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a7)
  {
    *a7 = v40;
  }

  if (v26)
  {
  }

  return 0;
}

void *__145__MTLCompiler_newRenderPipelineStateWithTileDescriptorInternal_options_reflection_destinationBinaryArchive_error_compilerTask_completionHandler___block_invoke(void *result)
{
  v1 = result[5];
  if (!*(v1 + 48))
  {
    return reportErrorMessage(*(v1 + 56), *(v1 + 64), result[4], result[6]);
  }

  return result;
}

- (void)generateMachOWithID:binaryEntries:machOSpecializedData:machOType:Path:platform:bitcodeList:compilerTask:completionHandler:
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 11);
        v6 -= 88;
        v7 = v8;
        if (v8)
        {
          dispatch_release(v7);
        }

        v9 = *(v4 - 10);
        if (v9)
        {
          dispatch_release(v9);
        }

        v10 = *(v4 - 9);
        if (v10)
        {
          dispatch_release(v10);
        }

        v11 = *(v4 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v12 = *(v4 - 7);
        if (v12)
        {
          *(v4 - 6) = v12;
          operator delete(v12);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

@end