@interface _MTLFunctionInternal
- ($2772B1D07D29A72E8557B2574C0AE5C1)baseFunctionHash;
- (BOOL)specializedFunctionHash:(id *)hash requestData:(id *)data airScript:(id *)script constants:(id)constants specializedName:(id)name privateFunctions:(id)functions completionHandler:(id)handler;
- (SpecializedFunctionTrackingData)specializedFunctionTrackingData;
- (_MTLFunctionInternal)initWithName:(id)name type:(unint64_t)type libraryData:(void *)data functionData:(MTLFunctionData *)functionData inheritedLibraryPath:(id)path device:(id)device;
- (id).cxx_construct;
- (id)arguments;
- (id)bitcodeDataInternal;
- (id)filePath;
- (id)functionConstants;
- (id)functionConstantsDictionary;
- (id)importedLibraries;
- (id)importedSymbols;
- (id)newFunctionWithPluginData:(id)data bitcodeType:(unsigned __int8)type;
- (id)newSpecializedFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive functionCache:(id)cache compilerTask:(id)task error:(id *)error;
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
- (void)newSpecializedFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive functionCache:(id)cache sync:(BOOL)sync compilerTask:(id)task completionHandler:(id)handler;
- (void)programObject;
- (void)setArguments:(id)arguments;
- (void)setFilePath:(id)path;
- (void)setFunctionConstantSpecializationHash:(id *)hash;
- (void)setFunctionConstants:(id)constants;
- (void)setPrecompiledOutput:(id)output;
- (void)setRelocations:(id)relocations;
- (void)setReturnType:(id)type;
- (void)setStageInputAttributes:(id)attributes;
- (void)setTrackingData:(shared_ptr<TrackingData>)data;
- (void)setUnpackedFilePath:(id)path;
- (void)setVertexAttributes:(id)attributes;
- (void)stitchedLibraryTrackingData;
- (void)storeTrackingDataWithDescriptor:(id)descriptor function:(id)function variantHash:(id *)hash;
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

- (_MTLFunctionInternal)initWithName:(id)name type:(unint64_t)type libraryData:(void *)data functionData:(MTLFunctionData *)functionData inheritedLibraryPath:(id)path device:(id)device
{
  v19.receiver = self;
  v19.super_class = _MTLFunctionInternal;
  v10 = [(_MTLFunction *)&v19 initWithName:name type:type libraryData:data device:device];
  v10->_inheritedLibraryPath = [path copy];
  v10->_publicMetadataInitialized = 0;
  v10->_privateMetadataInitialized = 0;
  v11 = *&functionData->publicArgumentsOffset;
  *&v10->_functionData.bitCodeOffset = *&functionData->bitCodeOffset;
  *&v10->_functionData.publicArgumentsOffset = v11;
  v12 = *&functionData->bitcodeHash.key[24];
  v14 = *&functionData->sourceArchiveOffset;
  v13 = *&functionData->airMajorVersion;
  *&v10->_functionData.bitcodeHash.key[8] = *&functionData->bitcodeHash.key[8];
  *&v10->_functionData.bitcodeHash.key[24] = v12;
  *&v10->_functionData.sourceArchiveOffset = v14;
  *&v10->_functionData.airMajorVersion = v13;
  v15 = *&functionData->baseFunctionHash.key[24];
  v17 = *&functionData->pluginData;
  v16 = *&functionData->functionInputs;
  *&v10->_functionData.baseFunctionHash.key[8] = *&functionData->baseFunctionHash.key[8];
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

- (void)setTrackingData:(shared_ptr<TrackingData>)data
{
  p_trackingData = &self->_trackingData;
  v5 = *data.__ptr_;
  v4 = *(data.__ptr_ + 1);
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

- (void)setVertexAttributes:(id)attributes
{
  vertexAttributes = self->super._vertexAttributes;
  if (vertexAttributes != attributes)
  {

    self->super._vertexAttributes = attributes;
  }
}

- (void)setReturnType:(id)type
{
  returnType = self->super._returnType;
  if (returnType != type)
  {

    self->super._returnType = type;
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

- (void)setArguments:(id)arguments
{
  arguments = self->super._arguments;
  if (arguments != arguments)
  {

    self->super._arguments = arguments;
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

- (void)setPrecompiledOutput:(id)output
{
  precompiledOutput = self->super._precompiledOutput;
  if (precompiledOutput)
  {
    dispatch_release(precompiledOutput);
  }

  self->super._precompiledOutput = output;
  if (output)
  {

    dispatch_retain(output);
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

- (void)setStageInputAttributes:(id)attributes
{
  vertexAttributes = self->super._vertexAttributes;
  if (vertexAttributes != attributes)
  {

    self->super._vertexAttributes = attributes;
  }
}

- (void)setFunctionConstants:(id)constants
{
  functionConstants = self->super._functionConstants;
  if (functionConstants != constants)
  {

    self->super._functionConstants = constants;
  }
}

- (void)setFunctionConstantSpecializationHash:(id *)hash
{
  if (hash)
  {
    v3 = *&hash->var0[16];
    *self->super._functionConstantSpecializationHash.key = *hash->var0;
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

- (BOOL)specializedFunctionHash:(id *)hash requestData:(id *)data airScript:(id *)script constants:(id)constants specializedName:(id)name privateFunctions:(id)functions completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  size = 0;
  v24 = 0;
  if (constants)
  {
    constantsCopy = constants;
    constantsCopy2 = constants;
  }

  else
  {
    constantsCopy = objc_alloc_init(MTLFunctionConstantValues);
  }

  v17 = [(MTLFunctionConstantValues *)constantsCopy serializedConstantDataForFunction:self dataSize:&size errorMessage:&v24];
  if (v17)
  {
    *script = [(MTLFunctionConstantValues *)constantsCopy newConstantScriptForFunction:self name:self->super._name specializedName:name errorMessage:&v24];

    *data = dispatch_data_create(v17, size, 0, *MEMORY[0x1E69E9648]);
    createHashForType(15, v17, size, &self->_functionData.bitcodeHash, 0, name, functions, v25);
    v18 = v25[1];
    *hash->var0 = v25[0];
    *&hash->var0[16] = v18;
  }

  else
  {
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:v24 forKey:*MEMORY[0x1E696A578]];
    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v19];

    (*(handler + 2))(handler, 0, v20);
  }

  result = v17 != 0;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)storeTrackingDataWithDescriptor:(id)descriptor function:(id)function variantHash:(id *)hash
{
  if ([_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:]::onceToken != -1)
  {
    [_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:];
  }

  if ((-[_MTLFunctionInternal storeTrackingDataWithDescriptor:function:variantHash:]::enableMetalScriptCollection & 1) != 0 || ([descriptor options] & 2) != 0)
  {
    operator new();
  }

  if ([descriptor constantValues])
  {
    [function setFunctionConstantSpecializationHash:hash];
  }
}

- (void)newSpecializedFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive functionCache:(id)cache sync:(BOOL)sync compilerTask:(id)task completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_publicMetadataInitialized)
  {
    [(_MTLFunctionInternal *)self initializePublicMetadata:descriptor];
  }

  specializedName = [descriptor specializedName];
  if ([descriptor specializedName] && ((objc_msgSend(objc_msgSend(descriptor, "specializedName"), "isEqualToString:", self->super._name) & 1) != 0 || (objc_msgSend(objc_msgSend(descriptor, "specializedName"), "isEqualToString:", &stru_1EF478240) & 1) != 0))
  {
    if (![descriptor applyFunctionConstants])
    {
      goto LABEL_12;
    }

    specializedName = 0;
    goto LABEL_9;
  }

  if ([descriptor applyFunctionConstants])
  {
LABEL_9:
    if (self->super._functionConstants | specializedName)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (specializedName)
  {
LABEL_15:
    MTLGetCompilerOptions(self->super._device, [descriptor pipelineOptions], objc_msgSend(-[MTLDevice compiler](self->super._device, "compiler"), "compilerFlags") & 0x80, 3uLL, 0);
    v20 = 0;
    object = 0;
    if (-[_MTLFunctionInternal specializedFunctionHash:requestData:airScript:constants:specializedName:privateFunctions:completionHandler:](self, "specializedFunctionHash:requestData:airScript:constants:specializedName:privateFunctions:completionHandler:", &v21, &v20, &object, [descriptor constantValues], specializedName, objc_msgSend(descriptor, "privateFunctions"), handler))
    {
      v12 = _MTLGetLibrariesCache(self->super._device);
      name = self->super._name;
      if ([descriptor specializedName])
      {
        [descriptor specializedName];
      }

      if (([descriptor pipelineOptions] & 4) == 0 && (objc_msgSend(descriptor, "options") & 4) == 0)
      {
        [descriptor pipelineOptions];
      }

      device = self->super._device;
      [descriptor binaryArchives];
      v16 = *(v12 + 32);
      MultiLevelCacheFactory::createFunctionCache();
    }

    v17 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_12:
  if ([descriptor privateFunctions] && objc_msgSend(objc_msgSend(descriptor, "privateFunctions"), "count"))
  {
    specializedName = 0;
    goto LABEL_15;
  }

  v13 = *(handler + 2);
  v14 = *MEMORY[0x1E69E9840];

  v13(handler, self, 0);
}

- (id)newSpecializedFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive functionCache:(id)cache compilerTask:(id)task error:(id *)error
{
  if (error)
  {
    *error = 0;
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
  [(_MTLFunctionInternal *)self newSpecializedFunctionWithDescriptor:descriptor destinationArchive:archive functionCache:cache sync:1 compilerTask:task completionHandler:v15];
  v9 = v23[5];
  if (v9 == self)
  {

    selfCopy = self;
  }

  else
  {
    v10 = v17[5];
    if (error)
    {
      *error = v10;
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
      selfCopy = v23[5];
    }

    else
    {
      selfCopy = 0;
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return selfCopy;
}

- (id)newFunctionWithPluginData:(id)data bitcodeType:(unsigned __int8)type
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

  *&v19 = data;
  BYTE8(v18) = type;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v17 + 8, 0x20u);
  bytes = [v19 bytes];
  CC_SHA256_Update(&c, bytes, [v19 length]);
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

- (void)setFilePath:(id)path
{
  filePath = self->_filePath;
  if (filePath != path)
  {

    self->_filePath = [path copy];
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

- (void)setUnpackedFilePath:(id)path
{
  unpackedFilePath = self->super._unpackedFilePath;
  if (unpackedFilePath != path)
  {

    self->super._unpackedFilePath = [path copy];
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

- (void)setRelocations:(id)relocations
{
  relocations = self->super._relocations;
  if (relocations != relocations)
  {

    self->super._relocations = [relocations copy];
  }
}

@end