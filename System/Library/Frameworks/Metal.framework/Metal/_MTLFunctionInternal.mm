@interface _MTLFunctionInternal
- ($2772B1D07D29A72E8557B2574C0AE5C1)baseFunctionHash;
- (BOOL)specializedFunctionHash:(id *)a3 requestData:(id *)a4 airScript:(id *)a5 constants:(id)a6 specializedName:(id)a7 privateFunctions:(id)a8 completionHandler:(id)a9;
- (SpecializedFunctionTrackingData)specializedFunctionTrackingData;
- (_MTLFunctionInternal)initWithName:(id)a3 type:(unint64_t)a4 libraryData:(void *)a5 functionData:(MTLFunctionData *)a6 inheritedLibraryPath:(id)a7 device:(id)a8;
- (id).cxx_construct;
- (id)arguments;
- (id)bitcodeDataInternal;
- (id)filePath;
- (id)functionConstants;
- (id)functionConstantsDictionary;
- (id)importedLibraries;
- (id)importedSymbols;
- (id)newFunctionWithPluginData:(id)a3 bitcodeType:(unsigned __int8)a4;
- (id)newSpecializedFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 compilerTask:(id)a6 error:(id *)a7;
- (id)reflectionData;
- (id)returnType;
- (id)specializationAirScript;
- (id)stageInputAttributes;
- (id)stitchingAirScript;
- (id)unpackedFilePath;
- (id)vertexAttributes;
- (int64_t)lineNumber;
- (int64_t)patchControlPointCount;
- (void)dealloc;
- (void)initializePrivateMetadata;
- (void)initializePublicMetadata;
- (void)initializeSourceArchive;
- (void)initializeStitchableFunctionMetadata;
- (void)newSpecializedFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 sync:(BOOL)a6 compilerTask:(id)a7 completionHandler:(id)a8;
- (void)programObject;
- (void)setArguments:(id)a3;
- (void)setFilePath:(id)a3;
- (void)setFunctionConstantSpecializationHash:(id *)a3;
- (void)setFunctionConstants:(id)a3;
- (void)setPrecompiledOutput:(id)a3;
- (void)setRelocations:(id)a3;
- (void)setReturnType:(id)a3;
- (void)setStageInputAttributes:(id)a3;
- (void)setTrackingData:(shared_ptr<TrackingData>)a3;
- (void)setUnpackedFilePath:(id)a3;
- (void)setVertexAttributes:(id)a3;
- (void)stitchedLibraryTrackingData;
- (void)storeTrackingDataWithDescriptor:(id)a3 function:(id)a4 variantHash:(id *)a5;
@end

@implementation _MTLFunctionInternal

- (id)functionConstants
{
  if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata];
  }

  return self->super._functionConstants;
}

- (void)initializePublicMetadata
{
  v3 = MTLLibraryData::mutex(self->super._libraryData);
  os_unfair_lock_lock(v3);
  if (!self->_publicMetadataInitialized)
  {
    (*(*self->super._libraryData + 200))(self->super._libraryData, self->_functionData.publicArgumentsOffset, self, 1);
    self->_publicMetadataInitialized = 1;
  }

  os_unfair_lock_unlock(v3);
}

- (id).cxx_construct
{
  *(self + 296) = 0;
  *(self + 38) = 0;
  *(self + 156) = 0;
  *(self + 40) = 0;
  *(self + 45) = 0;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 32) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  return self;
}

- (void)dealloc
{
  programObject = self->_programObject;
  if (programObject)
  {
    MTLProgramObject::~MTLProgramObject(programObject);
    MEMORY[0x1865FF210]();
    self->_programObject = 0;
  }

  functionInputs = self->_functionData.functionInputs;
  if (functionInputs)
  {
    dispatch_release(functionInputs);
  }

  precompiledOutput = self->super._precompiledOutput;
  if (precompiledOutput)
  {
    dispatch_release(precompiledOutput);
  }

  dispatch_release(self->_functionQueue);
  self->_functionQueue = 0;
  airScript = self->_functionData.airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  reflectionData = self->super._reflectionData;
  if (reflectionData)
  {
    dispatch_release(reflectionData);
  }

  inheritedLibraryPath = self->_inheritedLibraryPath;
  if (inheritedLibraryPath)
  {
  }

  v9.receiver = self;
  v9.super_class = _MTLFunctionInternal;
  [(_MTLFunction *)&v9 dealloc];
}

- (id)bitcodeDataInternal
{
  v6 = 0;
  memset(size, 0, sizeof(size));
  if (!(*(*self->super._libraryData + 208))(self->super._libraryData, [(_MTLFunctionInternal *)self bitCodeOffset], [(_MTLFunctionInternal *)self bitCodeFileSize], &v6, &size[1], size))
  {
    return 0;
  }

  if (size[0])
  {
    v3 = malloc_type_malloc(size[0], 0x100004077774924uLL);
    if (((*(*self->super._libraryData + 240))(self->super._libraryData, v3, v6, *&size[1], size[0]) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v3 = malloc_type_malloc(*&size[1], 0x100004077774924uLL);
    if (!(*(*self->super._libraryData + 216))(self->super._libraryData, v3, v6, *&size[1]))
    {
      return 0;
    }
  }

  if (v3)
  {
    return dispatch_data_create(v3, *&size[1], 0, *MEMORY[0x1E69E9648]);
  }

  return 0;
}

- (_MTLFunctionInternal)initWithName:(id)a3 type:(unint64_t)a4 libraryData:(void *)a5 functionData:(MTLFunctionData *)a6 inheritedLibraryPath:(id)a7 device:(id)a8
{
  v19.receiver = self;
  v19.super_class = _MTLFunctionInternal;
  v10 = [(_MTLFunction *)&v19 initWithName:a3 type:a4 libraryData:a5 device:a8];
  v10->_inheritedLibraryPath = [a7 copy];
  v10->_publicMetadataInitialized = 0;
  v10->_privateMetadataInitialized = 0;
  v11 = *&a6->publicArgumentsOffset;
  *&v10->_functionData.bitCodeOffset = *&a6->bitCodeOffset;
  *&v10->_functionData.publicArgumentsOffset = v11;
  v12 = *&a6->bitcodeHash.key[24];
  v14 = *&a6->sourceArchiveOffset;
  v13 = *&a6->airMajorVersion;
  *&v10->_functionData.bitcodeHash.key[8] = *&a6->bitcodeHash.key[8];
  *&v10->_functionData.bitcodeHash.key[24] = v12;
  *&v10->_functionData.sourceArchiveOffset = v14;
  *&v10->_functionData.airMajorVersion = v13;
  v15 = *&a6->baseFunctionHash.key[24];
  v17 = *&a6->pluginData;
  v16 = *&a6->functionInputs;
  *&v10->_functionData.baseFunctionHash.key[8] = *&a6->baseFunctionHash.key[8];
  *&v10->_functionData.baseFunctionHash.key[24] = v15;
  *&v10->_functionData.pluginData = v17;
  *&v10->_functionData.functionInputs = v16;
  v10->_programObject = 0;
  *v10->super._functionConstantSpecializationHash.key = 0u;
  *&v10->super._functionConstantSpecializationHash.key[16] = 0u;
  v10->_functionQueue = dispatch_queue_create("function queue", 0);
  return v10;
}

- (id)specializationAirScript
{
  p_functionData = &self->_functionData;
  result = self->_functionData.airScript;
  if (result)
  {
    v5 = 0;
    buffer_ptr = 0;
    v4 = dispatch_data_create_map(result, &buffer_ptr, &v5);
    if (buffer_ptr && !strncmp(buffer_ptr + 4, "AIRC", 4uLL))
    {
      dispatch_release(v4);
      return p_functionData->airScript;
    }

    else
    {
      dispatch_release(v4);
      return 0;
    }
  }

  return result;
}

- (id)stitchingAirScript
{
  p_functionData = &self->_functionData;
  result = self->_functionData.airScript;
  if (result)
  {
    v5 = 0;
    buffer_ptr = 0;
    v4 = dispatch_data_create_map(result, &buffer_ptr, &v5);
    if (buffer_ptr && !strncmp(buffer_ptr + 4, "AIRS", 4uLL))
    {
      dispatch_release(v4);
      return p_functionData->airScript;
    }

    else
    {
      dispatch_release(v4);
      return 0;
    }
  }

  return result;
}

- (id)reflectionData
{
  result = self->super._reflectionData;
  if (!result)
  {
    v4 = MTLLibraryData::mutex(self->super._libraryData);
    os_unfair_lock_lock(v4);
    if (!self->super._reflectionData && self->_functionData.reflectionDataOffset != -1)
    {
      self->super._reflectionData = (*(*self->super._libraryData + 152))(self->super._libraryData);
    }

    os_unfair_lock_unlock(v4);
    return self->super._reflectionData;
  }

  return result;
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)baseFunctionHash
{
  v3 = *&self[10].var0[24];
  *retstr->var0 = *&self[10].var0[8];
  *&retstr->var0[16] = v3;
  return self;
}

- (void)setTrackingData:(shared_ptr<TrackingData>)a3
{
  p_trackingData = &self->_trackingData;
  v5 = *a3.__ptr_;
  v4 = *(a3.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_trackingData.__cntrl_;
  p_trackingData->__ptr_ = v5;
  p_trackingData->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (SpecializedFunctionTrackingData)specializedFunctionTrackingData
{
  result = [(_MTLFunctionInternal *)self specializationAirScript];
  if (result)
  {
    return self->_trackingData.__ptr_;
  }

  return result;
}

- (void)stitchedLibraryTrackingData
{
  result = [(_MTLFunctionInternal *)self stitchingAirScript];
  if (result)
  {
    return self->_trackingData.__ptr_;
  }

  return result;
}

- (void)programObject
{
  if (!self->_programObject)
  {
    operator new();
  }

  return self->_programObject;
}

- (id)importedSymbols
{
  result = self->super._libraryData;
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

- (id)importedLibraries
{
  result = self->super._libraryData;
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

- (int64_t)patchControlPointCount
{
  v2 = *(&self->_functionData + 105);
  if (v2 > 0x83)
  {
    return -1;
  }

  else
  {
    return v2 >> 2;
  }
}

- (void)initializeStitchableFunctionMetadata
{
  functionQueue = self->_functionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___MTLFunctionInternal_initializeStitchableFunctionMetadata__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  dispatch_sync(functionQueue, block);
}

- (id)vertexAttributes
{
  if (self->super._functionType != 1)
  {
    return 0;
  }

  if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata];
  }

  return self->super._vertexAttributes;
}

- (void)setVertexAttributes:(id)a3
{
  vertexAttributes = self->super._vertexAttributes;
  if (vertexAttributes != a3)
  {

    self->super._vertexAttributes = a3;
  }
}

- (void)setReturnType:(id)a3
{
  returnType = self->super._returnType;
  if (returnType != a3)
  {

    self->super._returnType = a3;
  }
}

- (id)returnType
{
  if ([(_MTLFunction *)self functionType]== 5)
  {
    if (!self->_stitchableFunctionMetadataInitialized)
    {
      [(_MTLFunctionInternal *)self initializeStitchableFunctionMetadata];
    }
  }

  else if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata];
  }

  return self->super._returnType;
}

- (void)setArguments:(id)a3
{
  arguments = self->super._arguments;
  if (arguments != a3)
  {

    self->super._arguments = a3;
  }
}

- (id)arguments
{
  if ([(_MTLFunction *)self functionType]== 5)
  {
    if (!self->_stitchableFunctionMetadataInitialized)
    {
      [(_MTLFunctionInternal *)self initializeStitchableFunctionMetadata];
    }
  }

  else if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata];
  }

  return self->super._arguments;
}

- (void)setPrecompiledOutput:(id)a3
{
  precompiledOutput = self->super._precompiledOutput;
  if (precompiledOutput)
  {
    dispatch_release(precompiledOutput);
  }

  self->super._precompiledOutput = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

- (id)stageInputAttributes
{
  if ((self->super._functionType | 2) == 3 && !self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata];
  }

  return self->super._vertexAttributes;
}

- (void)setStageInputAttributes:(id)a3
{
  vertexAttributes = self->super._vertexAttributes;
  if (vertexAttributes != a3)
  {

    self->super._vertexAttributes = a3;
  }
}

- (void)setFunctionConstants:(id)a3
{
  functionConstants = self->super._functionConstants;
  if (functionConstants != a3)
  {

    self->super._functionConstants = a3;
  }
}

- (void)setFunctionConstantSpecializationHash:(id *)a3
{
  if (a3)
  {
    v3 = *&a3->var0[16];
    *self->super._functionConstantSpecializationHash.key = *a3->var0;
    *&self->super._functionConstantSpecializationHash.key[16] = v3;
  }
}

- (id)functionConstantsDictionary
{
  if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata];
  }

  v3 = MTLLibraryData::mutex(self->super._libraryData);
  os_unfair_lock_lock(v3);
  functionConstantDictionary = self->super._functionConstantDictionary;
  if (!functionConstantDictionary)
  {
    functionConstants = self->super._functionConstants;
    if (functionConstants)
    {
      [(NSArray *)functionConstants count];
      operator new[]();
    }

    functionConstantDictionary = MEMORY[0x1E695E0F8];
    self->super._functionConstantDictionary = functionConstantDictionary;
  }

  os_unfair_lock_unlock(v3);
  return functionConstantDictionary;
}

- (BOOL)specializedFunctionHash:(id *)a3 requestData:(id *)a4 airScript:(id *)a5 constants:(id)a6 specializedName:(id)a7 privateFunctions:(id)a8 completionHandler:(id)a9
{
  v26 = *MEMORY[0x1E69E9840];
  size = 0;
  v24 = 0;
  if (a6)
  {
    v15 = a6;
    v16 = a6;
  }

  else
  {
    v15 = objc_alloc_init(MTLFunctionConstantValues);
  }

  v17 = [(MTLFunctionConstantValues *)v15 serializedConstantDataForFunction:self dataSize:&size errorMessage:&v24];
  if (v17)
  {
    *a5 = [(MTLFunctionConstantValues *)v15 newConstantScriptForFunction:self name:self->super._name specializedName:a7 errorMessage:&v24];

    *a4 = dispatch_data_create(v17, size, 0, *MEMORY[0x1E69E9648]);
    createHashForType(15, v17, size, &self->_functionData.bitcodeHash, 0, a7, a8, v25);
    v18 = v25[1];
    *a3->var0 = v25[0];
    *&a3->var0[16] = v18;
  }

  else
  {
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:v24 forKey:*MEMORY[0x1E696A578]];
    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v19];

    (*(a9 + 2))(a9, 0, v20);
  }

  result = v17 != 0;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)storeTrackingDataWithDescriptor:(id)a3 function:(id)a4 variantHash:(id *)a5
{
  if ([_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:]::onceToken != -1)
  {
    [_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:];
  }

  if ((-[_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:]::enableMetalScriptCollection & 1) != 0 || ([a3 options] & 2) != 0)
  {
    operator new();
  }

  if ([a3 constantValues])
  {
    [a4 setFunctionConstantSpecializationHash:a5];
  }
}

- (void)newSpecializedFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 sync:(BOOL)a6 compilerTask:(id)a7 completionHandler:(id)a8
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata:a3];
  }

  v11 = [a3 specializedName];
  if ([a3 specializedName] && ((objc_msgSend(objc_msgSend(a3, "specializedName"), "isEqualToString:", self->super._name) & 1) != 0 || (objc_msgSend(objc_msgSend(a3, "specializedName"), "isEqualToString:", &stru_1EF478240) & 1) != 0))
  {
    if (![a3 applyFunctionConstants])
    {
      goto LABEL_12;
    }

    v11 = 0;
    goto LABEL_9;
  }

  if ([a3 applyFunctionConstants])
  {
LABEL_9:
    if (self->super._functionConstants | v11)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v11)
  {
LABEL_15:
    MTLGetCompilerOptions(self->super._device, [a3 pipelineOptions], objc_msgSend(-[MTLDevice compiler](self->super._device, "compiler"), "compilerFlags") & 0x80, 3uLL, 0);
    v20 = 0;
    object = 0;
    if (-[_MTLFunctionInternal specializedFunctionHash:requestData:airScript:constants:specializedName:privateFunctions:completionHandler:](self, "specializedFunctionHash:requestData:airScript:constants:specializedName:privateFunctions:completionHandler:", &v21, &v20, &object, [a3 constantValues], v11, objc_msgSend(a3, "privateFunctions"), a8))
    {
      v12 = _MTLGetLibrariesCache(self->super._device);
      name = self->super._name;
      if ([a3 specializedName])
      {
        [a3 specializedName];
      }

      if (([a3 pipelineOptions] & 4) == 0 && (objc_msgSend(a3, "options") & 4) == 0)
      {
        [a3 pipelineOptions];
      }

      device = self->super._device;
      [a3 binaryArchives];
      v16 = *(v12 + 32);
      MultiLevelCacheFactory::createFunctionCache();
    }

    v17 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_12:
  if ([a3 privateFunctions] && objc_msgSend(objc_msgSend(a3, "privateFunctions"), "count"))
  {
    v11 = 0;
    goto LABEL_15;
  }

  v13 = *(a8 + 2);
  v14 = *MEMORY[0x1E69E9840];

  v13(a8, self, 0);
}

- (id)newSpecializedFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 compilerTask:(id)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113___MTLFunctionInternal_newSpecializedFunctionWithDescriptor_destinationArchive_functionCache_compilerTask_error___block_invoke;
  v15[3] = &unk_1E6EEC118;
  v15[4] = &v22;
  v15[5] = &v16;
  [(_MTLFunctionInternal *)self newSpecializedFunctionWithDescriptor:a3 destinationArchive:a4 functionCache:a5 sync:1 compilerTask:a6 completionHandler:v15];
  v9 = v23[5];
  if (v9 == self)
  {

    v11 = self;
  }

  else
  {
    v10 = v17[5];
    if (a7)
    {
      *a7 = v10;
    }

    else
    {
    }

    v12 = v23[5];
    if (v12)
    {
      *(v12 + 296) = self->_functionData.bitcodeType;
      *(v23[5] + 304) = self->_functionData.pluginData;
      v13 = *(v23[5] + 304);
      v11 = v23[5];
    }

    else
    {
      v11 = 0;
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v11;
}

- (id)newFunctionWithPluginData:(id)a3 bitcodeType:(unsigned __int8)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *&self->_functionData.functionInputs;
  v19 = *&self->_functionData.pluginData;
  object = v7;
  v8 = *&self->_functionData.baseFunctionHash.key[24];
  v21 = *&self->_functionData.baseFunctionHash.key[8];
  v22 = v8;
  v9 = *&self->_functionData.airMajorVersion;
  v16[2] = *&self->_functionData.sourceArchiveOffset;
  v17[0] = v9;
  v10 = *&self->_functionData.bitcodeHash.key[24];
  v17[1] = *&self->_functionData.bitcodeHash.key[8];
  v18 = v10;
  v11 = *&self->_functionData.publicArgumentsOffset;
  v16[0] = *&self->_functionData.bitCodeOffset;
  v16[1] = v11;
  if (object)
  {
    dispatch_retain(object);
  }

  *&v19 = a3;
  BYTE8(v18) = a4;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v17 + 8, 0x20u);
  v12 = [v19 bytes];
  CC_SHA256_Update(&c, v12, [v19 length]);
  CC_SHA256_Final(v17 + 8, &c);
  result = [[_MTLFunctionInternal alloc] initWithName:self->super._name type:self->super._functionType libraryData:self->super._libraryData functionData:v16 device:self->super._device];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initializePrivateMetadata
{
  v3 = MTLLibraryData::mutex(self->super._libraryData);
  os_unfair_lock_lock(v3);
  if (!self->_privateMetadataInitialized)
  {
    (*(*self->super._libraryData + 200))(self->super._libraryData, self->_functionData.privateArgumentsOffset, self, 0);
    self->_privateMetadataInitialized = 1;
  }

  os_unfair_lock_unlock(v3);
}

- (void)setFilePath:(id)a3
{
  filePath = self->_filePath;
  if (filePath != a3)
  {

    self->_filePath = [a3 copy];
  }
}

- (id)filePath
{
  if (!self->_privateMetadataInitialized && self->super._libraryData)
  {
    [(_MTLFunctionInternal *)self initializePrivateMetadata];
  }

  return self->_filePath;
}

- (void)initializeSourceArchive
{
  v3 = MTLLibraryData::mutex(self->super._libraryData);
  os_unfair_lock_lock(v3);
  if (!self->_sourceArchiveMetadataInitialized)
  {
    sourceArchiveOffset = self->_functionData.sourceArchiveOffset;
    if (sourceArchiveOffset != -1)
    {
      if (!self->_privateMetadataInitialized)
      {
        (*(*self->super._libraryData + 200))(self->super._libraryData, self->_functionData.privateArgumentsOffset, self, 0);
        self->_privateMetadataInitialized = 1;
        sourceArchiveOffset = self->_functionData.sourceArchiveOffset;
      }

      (*(*self->super._libraryData + 200))(self->super._libraryData, sourceArchiveOffset, self, 2);
      self->_sourceArchiveMetadataInitialized = 1;
    }
  }

  os_unfair_lock_unlock(v3);
}

- (void)setUnpackedFilePath:(id)a3
{
  unpackedFilePath = self->super._unpackedFilePath;
  if (unpackedFilePath != a3)
  {

    self->super._unpackedFilePath = [a3 copy];
  }
}

- (id)unpackedFilePath
{
  if (!self->_sourceArchiveMetadataInitialized && self->super._libraryData)
  {
    [(_MTLFunctionInternal *)self initializeSourceArchive];
  }

  return self->super._unpackedFilePath;
}

- (int64_t)lineNumber
{
  if (!self->_privateMetadataInitialized && self->super._libraryData)
  {
    [(_MTLFunctionInternal *)self initializePrivateMetadata];
  }

  return self->_lineNumber;
}

- (void)setRelocations:(id)a3
{
  relocations = self->super._relocations;
  if (relocations != a3)
  {

    self->super._relocations = [a3 copy];
  }
}

@end