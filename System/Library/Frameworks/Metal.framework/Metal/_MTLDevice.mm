@interface _MTLDevice
+ (BOOL)featureProfile:(unint64_t)a3 supportsFeatureSet:(unint64_t)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)a3;
- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats;
- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)a3;
- (BOOL)_rateLimitQueueCreation;
- (BOOL)copyShaderCacheToPath:(id)a3;
- (BOOL)deviceOrFeatureProfileSupportsFeatureSet:(unint64_t)a3;
- (BOOL)isCollectingLibraries;
- (BOOL)isCompatibleWithAccelerationStructure:(id)a3;
- (BOOL)isPlacementHeapSupported;
- (BOOL)loadLibrariesRecursive:(id)a3 dylibs:(id *)a4 insertLibraries:(id)a5 options:(unint64_t)a6 error:(id *)a7;
- (BOOL)supportsFamily:(int64_t)a3;
- (BOOL)supportsRaytracing;
- (BOOL)validateDynamicLibrary:(id)a3 state:(BOOL)a4 error:(id *)a5;
- (BOOL)validateDynamicLibraryDescriptor:(id)a3 error:(id *)a4;
- (BOOL)validateDynamicLibraryURL:(id)a3 error:(id *)a4;
- (MTLGPUBVHBuilder)GPUBVHBuilder;
- (NSString)name;
- (_MTLDevice)init;
- (char)getComputeFunctionId:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 compilerOptionsSize:(unint64_t)a6;
- (char)getVertexFunctionId:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 compilerOptionsSize:(unint64_t)a6 compiledFragmentVariant:(id)a7;
- (id).cxx_construct;
- (id)_newDescriptorForSharedTexture:(__IOSurface *)a3;
- (id)_newDynamicLibraryWithDescriptor:(id)a3 computeDescriptor:(id)a4 error:(id *)a5;
- (id)architecture;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)a3 primitiveAccelerationStructures:(id)a4 withDescriptor:(id)a5;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)a3 withDescriptor:(id)a4;
- (id)endCollectingPipelineDescriptors;
- (id)formattedDescription:(unint64_t)a3;
- (id)getMostCompatibleArchitecture:(id)a3;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)loadDynamicLibrariesForFunctionDescriptor:(id)a3 insertLibraries:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)lookupRecompiledBinaryArchive:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newArchiveWithURL:(id)a3 error:(id *)a4;
- (id)newArgumentEncoderWithArguments:(id)a3 structType:(id *)a4;
- (id)newArgumentEncoderWithBufferBinding:(id)a3;
- (id)newBinaryArchiveWithDescriptor:(id)a3 error:(id *)a4;
- (id)newBinaryLibraryWithOptions:(unint64_t)a3 url:(id)a4 error:(id *)a5;
- (id)newCommandQueue;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3;
- (id)newComputePipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newComputePipelineWithDescriptor:(id)a3 variant:(id)a4 errorMessage:(id *)a5;
- (id)newComputeVariantWithCompilerOutput:(id)a3 pipelineStatisticsOutput:(id)a4;
- (id)newDagStringWithGraphs:(id)a3;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4;
- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5;
- (id)newDynamicLibrary:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryError:(unint64_t)a3 message:(id)a4;
- (id)newDynamicLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newEventWithOptions:(int64_t)a3;
- (id)newFragmentVariantWithCompilerOutput:(id)a3 pipelineStatisticsOutput:(id)a4;
- (id)newFunctionWithGLIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newIOCommandQueueWithDescriptor:(id)a3 error:(id *)a4;
- (id)newIOFileHandleWithURL:(id)a3 compressionMethod:(int64_t)a4 error:(id *)a5;
- (id)newIOFileHandleWithURL:(id)a3 error:(id *)a4;
- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5;
- (id)newLibraryWithData:(id)a3 error:(id *)a4;
- (id)newLibraryWithFile:(id)a3 error:(id *)a4;
- (id)newLibraryWithFunctionArray:(id)a3 error:(id *)a4;
- (id)newLibraryWithMPSGraphPackageURL:(id)a3 name:(id)a4 error:(id *)a5;
- (id)newLibraryWithMetalPackageURL:(id)a3 error:(id *)a4;
- (id)newLibraryWithSource:(id)a3 options:(id)a4 compilerTask:(id)a5 error:(id *)a6;
- (id)newLibraryWithStitchedDescriptor:(id)a3 destinationBinaryArchive:(id)a4 error:(id *)a5;
- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4;
- (id)newLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newLogStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newMeshRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4;
- (id)newPerformanceStateAssertion:(int64_t)a3 error:(id *)a4;
- (id)newPipelineDataSetSerializerWithDescriptor:(id)a3;
- (id)newRasterizationRateMapWithDescriptor:(id)a3;
- (id)newRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newResidencySetWithDescriptor:(id)a3 error:(id *)a4;
- (id)newSharedEventWithHandle:(id)a3;
- (id)newSharedEventWithOptions:(int64_t)a3;
- (id)newSharedTextureWithDescriptor:(id)a3;
- (id)newSharedTextureWithHandle:(id)a3;
- (id)newSharedTextureWithHandle:(id)a3 withResourceIndex:(unint64_t)a4;
- (id)newStructTypeWithSerializedData:(id)a3;
- (id)newTileRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4;
- (id)newUncachedIOFileHandleWithURL:(id)a3 compressionMethod:(int64_t)a4 error:(id *)a5;
- (id)newUncachedIOFileHandleWithURL:(id)a3 error:(id *)a4;
- (id)newVertexVariantWithCompilerOutput:(id)a3 pipelineStatisticsOutput:(id)a4;
- (id)serializeComputePipelineDescriptor:(id)a3;
- (id)serializeMeshRenderPipelineDescriptor:(id)a3;
- (id)serializeRenderPipelineDescriptor:(id)a3;
- (id)serializeStructType:(id)a3 version:(unsigned int)a4;
- (id)serializeTileRenderPipelineDescriptor:(id)a3;
- (int)defaultCompilerProcessesCount;
- (int)maximumCompilerProcessesCount;
- (int)threadsPerCompilerProcess;
- (unint64_t)bufferRobustnessSupport;
- (unint64_t)latestSupportedGenericBVHVersion;
- (unint64_t)maxAccelerationStructureTraversalDepth;
- (unint64_t)maximumConcurrentCompilationTaskCount;
- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)a3;
- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)a3;
- (unint64_t)optionsForPipelineLibrarySerialization;
- (unint64_t)readWriteTextureSupport;
- (unint64_t)sparseTexturesSupport;
- (unint64_t)sparseTileSizeInBytesForSparsePageSize:(int64_t)a3;
- (void)_decrementAcquireCount;
- (void)addToLogBufferResidencySet:(id)a3;
- (void)allowLibrariesFromOtherPlatforms;
- (void)convertSparsePixelRegions:(id *)a3 toTileRegions:(id *)a4 withTileSize:(id *)a5 alignmentMode:(unint64_t)a6 numRegions:(unint64_t)a7;
- (void)convertSparseTileRegions:(id *)a3 toPixelRegions:(id *)a4 withTileSize:(id *)a5 numRegions:(unint64_t)a6;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 fromBytes:(const void *)a4 primitiveAccelerationStructures:(id)a5 withDescriptor:(id)a6;
- (void)deserializeInstanceAccelerationStructureFromBytes:(const void *)a3 toBuffer:(id)a4 primitiveAccelerationStructures:(id)a5 forAccelerationStructure:(id)a6;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBytes:(const void *)a4 withDescriptor:(id)a5;
- (void)deserializePrimitiveAccelerationStructureFromBytes:(const void *)a3 toBuffer:(id)a4 forAccelerationStructure:(id)a5;
- (void)dumpPipelineDescriptorsIfRequested;
- (void)freeMeshFunctionDriverData:(void *)a3 meshFunctionDriverDataSize:(unint64_t)a4;
- (void)freeObjectFunctionDriverData:(void *)a3 objectFunctionDriverDataSize:(unint64_t)a4;
- (void)freeVertexFunctionDriverData:(void *)a3 vertexFunctionDriverDataSize:(unint64_t)a4;
- (void)getCompilerConnectionManager:(int)a3;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forComputeVariant:(id)a6;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forObjectVariant:(id)a6 meshVariant:(id)a7 fragmentVariant:(id)a8;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forTileVariant:(id)a6;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forVertexVariant:(id)a6 fragmentVariant:(id)a7;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forComputeVariant:(id)a7;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forObjectVariant:(id)a7 meshVariant:(id)a8 fragmentVariant:(id)a9;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forTileVariant:(id)a7;
- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forVertexVariant:(id)a7 fragmentVariant:(id)a8;
- (void)getDefaultSamplePositions:(id *)a3 count:(unint64_t)a4;
- (void)getMeshFunctionDriverData:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 nextStageVariant:(id)a6 driverDataSize:(unint64_t *)a7;
- (void)getObjectFunctionDriverData:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 nextStageVariant:(id)a6 driverDataSize:(unint64_t *)a7;
- (void)getShaderCacheKeys;
- (void)getVertexFunctionDriverData:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 nextStageVariant:(id)a6 driverDataSize:(unint64_t *)a7;
- (void)initDefaultLogState;
- (void)initFeatureQueries;
- (void)initGPUFamilySupport;
- (void)initLimits;
- (void)initLogBufferResidencySet;
- (void)initProgressTracking;
- (void)initSerializationPaths;
- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newLibraryWithSource:(id)a3 options:(id)a4 compilerTask:(id)a5 completionHandler:(id)a6;
- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)recordBinaryArchiveUsage:(id)a3;
- (void)registerComputePipelineDescriptor:(id)a3;
- (void)registerMeshRenderPipelineDescriptor:(id)a3;
- (void)registerRenderPipelineDescriptor:(id)a3;
- (void)registerTileRenderPipelineDescriptor:(id)a3;
- (void)removeLogBufferFromResidencySet:(id)a3;
- (void)setPluginData:(id)a3;
- (void)setRawBVHBuilderPtr:(id)a3;
- (void)startCollectingPipelineDescriptors;
- (void)startCollectingPipelineDescriptorsFromLibrary:(id)a3 filePath:(id)a4;
- (void)startCollectingPipelineDescriptorsUsingPrefixForNames:(id)a3;
- (void)unloadShaderCaches;
@end

@implementation _MTLDevice

- (void)initSerializationPaths
{
  if (!self->_hasInitSerializationPaths)
  {
    v3 = objc_autoreleasePoolPush();
    _dumpAtExit = 0;
    v4 = getenv("MTL_DUMP_PIPELINES_TO_JSON_FILE");
    if (v4)
    {
      v5 = v4;
      if ((os_variant_has_internal_diagnostics() & 1) == 0)
      {
        MTLReleaseAssertionFailure("[_MTLDevice initSerializationPaths]", 1729, "!Dumping pipelines is not supported!", 0, v6, v7, v8, v9, v14);
      }

      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
      self->_pipelineDescriptorsOutputFile = [v10 stringByExpandingTildeInPath];

      v11 = getenv("MTL_DUMP_LIBRARIES_TO_DIRECTORY");
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v11];
        self->_librariesOutputDirectory = [v12 stringByExpandingTildeInPath];
      }

      v13 = getenv("MTL_COLLECT_PIPELINES_AT_EXIT");
      if (!v13)
      {
        v13 = "0";
      }

      if (strtol(v13, 0, 0))
      {
        _dumpAtExit = 1;
        atexit(pipelineDumper);
      }

      [(_MTLDevice *)self startCollectingPipelineDescriptors];
    }

    self->_hasInitSerializationPaths = 1;

    objc_autoreleasePoolPop(v3);
  }
}

- (BOOL)isCollectingLibraries
{
  [(_MTLDevice *)self initSerializationPaths];
  pipelineCollection = self->_pipelineCollection;
  if (pipelineCollection)
  {
    LOBYTE(pipelineCollection) = self->_collectAllLibraries;
  }

  return pipelineCollection & 1;
}

- (id).cxx_construct
{
  *(self + 65) = 0;
  *(self + 72) = 0;
  *(self + 74) = 0;
  return self;
}

- (_MTLDevice)init
{
  v4.receiver = self;
  v4.super_class = _MTLDevice;
  v2 = [(_MTLDevice *)&v4 init];
  if (v2)
  {
    v2->_serialQueue = dispatch_queue_create("Device serial queue", 0);
    v2->_pipelineSerializationQueue = dispatch_queue_create("Pipeline serialization queue", 0);
    v2->_concurrentQueue = dispatch_queue_create("Device concurrent queue", MEMORY[0x1E69E96A8]);
    operator new();
  }

  return 0;
}

- (BOOL)_rateLimitQueueCreation
{
  if (self->_kRateLimitTimePenalty <= 0.0)
  {
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_commandQueueWaitLock);
  v3 = atomic_load(&self->_commandQueueID);
  v4 = v3 % self->_kRateLimitCriticalCommandQueues;
  v5 = [(NSMutableArray *)self->_nextCommandQueueAllowedDateBuffer objectAtIndexedSubscript:v4];
  v6 = atomic_load(&self->_commandQueueID);
  v7 = [(NSMutableArray *)self->_nextCommandQueueAllowedDateBuffer objectAtIndexedSubscript:(v6 - 1) % self->_kRateLimitCriticalCommandQueues];
  if ([v7 compare:{objc_msgSend(MEMORY[0x1E695DF00], "now")}] == 1)
  {
    v8 = [v7 dateByAddingTimeInterval:self->_kRateLimitTimePenalty];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_kRateLimitTimePenalty];
  }

  [(NSMutableArray *)self->_nextCommandQueueAllowedDateBuffer replaceObjectAtIndex:v4 withObject:v8];
  MTLAtomicIncrement(&self->_commandQueueID);
  os_unfair_lock_unlock(&self->_commandQueueWaitLock);
  if ([v5 compare:{objc_msgSend(MEMORY[0x1E695DF00], "now")}] != 1)
  {

LABEL_14:
    v9 = 0;
    return v9 & 1;
  }

  if (self->_kRateLimitEnabled)
  {
    [MEMORY[0x1E696AF00] sleepUntilDate:v5];
  }

  createCommandQueueRateLimitingTelemetry();
  if (self->_kRateLimitEnabled)
  {
    if (self->_kRateLimitShouldOnlyLogOnce)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37___MTLDevice__rateLimitQueueCreation__block_invoke;
      block[3] = &unk_1E6EEB598;
      block[4] = &v12;
      if ([_MTLDevice _rateLimitQueueCreation]::onceToken != -1)
      {
        dispatch_once(&[_MTLDevice _rateLimitQueueCreation]::onceToken, block);
      }

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
    self->_kRateLimitTimePenalty = 0.0;
  }

  return v9 & 1;
}

- (void)initLimits
{
  v3 = [(_MTLDevice *)self featureProfile];
  v4 = v3 == 1;
  v5 = vdupq_n_s64(v3);
  if (v3 == 1)
  {
    v6 = 31;
  }

  else
  {
    v6 = 0;
  }

  v298 = v6;
  if (v3 == 1)
  {
    v7 = 60;
  }

  else
  {
    v7 = 0;
  }

  v337 = v7;
  if (v3 == 1)
  {
    v8 = 65528;
  }

  else
  {
    v8 = 0;
  }

  v313 = v8;
  v9 = vmovn_s64(vceqq_s64(v5, xmmword_185DE1A90));
  if (v3 == 1)
  {
    v10 = 96;
  }

  else
  {
    v10 = 0;
  }

  v335 = v10;
  if (v3 == 1)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v339 = v11;
  v12 = v3 == 9;
  v13 = vmovn_s64(vceqq_s64(v5, xmmword_185DE1A70));
  v14 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if (v3 == 9)
  {
    v15 = 31;
  }

  else
  {
    v15 = 0;
  }

  v329 = v15;
  if (v3 == 9)
  {
    v16 = 124;
  }

  else
  {
    v16 = 0;
  }

  v330 = v16;
  v17 = vceqq_s64(v5, xmmword_185DE1A80);
  if (v3 == 9)
  {
    v18 = 262136;
  }

  else
  {
    v18 = 0;
  }

  v309 = v18;
  v19 = vmovn_s64(v17);
  if (v3 == 9)
  {
    v20 = 96;
  }

  else
  {
    v20 = 0;
  }

  v332 = v20;
  if (v3 == 9)
  {
    v21 = 6;
  }

  else
  {
    v21 = 0;
  }

  v334 = v21;
  v250 = v3 & 0xFFFFFFFFFFFFFFFELL;
  v22 = v14 == 10;
  v23 = v14 == 10;
  if (v14 == 10)
  {
    v24 = 31;
  }

  else
  {
    v24 = 0;
  }

  v327 = v24;
  if (v22)
  {
    v25 = 124;
  }

  else
  {
    v25 = 0;
  }

  v328 = v25;
  if (v22)
  {
    v26 = 262136;
  }

  else
  {
    v26 = 0;
  }

  v307 = v26;
  if (v22)
  {
    v27 = 96;
  }

  else
  {
    v27 = 0;
  }

  v331 = v27;
  if (v22)
  {
    v28 = 6;
  }

  else
  {
    v28 = 0;
  }

  v333 = v28;
  v251 = v3;
  v29 = v3 == 12;
  if (v3 == 12)
  {
    v30 = 31;
  }

  else
  {
    v30 = 0;
  }

  v326 = v30;
  v31 = vuzp1_s16(v13, v9);
  if (v3 == 12)
  {
    v32 = 1073741697;
  }

  else
  {
    v32 = 0;
  }

  v322 = v32;
  if (v3 == 12)
  {
    v33 = 124;
  }

  else
  {
    v33 = 0;
  }

  v308 = v33;
  if (v3 == 12)
  {
    v34 = 262136;
  }

  else
  {
    v34 = 0;
  }

  v281 = v34;
  if (v3 == 12)
  {
    v35 = 96;
  }

  else
  {
    v35 = 0;
  }

  v324 = v35;
  if (v3 == 12)
  {
    v36 = 6;
  }

  else
  {
    v36 = 0;
  }

  v325 = v36;
  if (v9.i8[4])
  {
    v37 = 16;
  }

  else
  {
    v37 = 0;
  }

  v282 = v37;
  if (v9.i8[4])
  {
    v38 = 0x2000;
  }

  else
  {
    v38 = 0;
  }

  v295 = v38;
  if (v9.i8[4])
  {
    v39 = 0x4000000;
  }

  else
  {
    v39 = 0;
  }

  v318 = v39;
  v312 = v9.i32[0];
  if (v9.i8[4])
  {
    v40 = 128;
  }

  else
  {
    v40 = 0;
  }

  if (v9.i8[4])
  {
    v41 = 4;
  }

  else
  {
    v41 = 0;
  }

  v291 = v41;
  if (v9.i8[4])
  {
    v42 = 31;
  }

  else
  {
    v42 = 0;
  }

  v259 = v42;
  if (v9.i8[4])
  {
    v43 = 4096;
  }

  else
  {
    v43 = 0;
  }

  v258 = v43;
  if (v9.i8[4])
  {
    v44 = 60;
  }

  else
  {
    v44 = 0;
  }

  v303 = v44;
  if (v9.i8[4])
  {
    v45 = 512;
  }

  else
  {
    v45 = 0;
  }

  v270 = v45;
  if (v9.i8[4])
  {
    v46 = 0x4000;
  }

  else
  {
    v46 = 0;
  }

  v272 = v46;
  if (v9.i8[4])
  {
    v47 = 65528;
  }

  else
  {
    v47 = 0;
  }

  v278 = v47;
  if (v9.i8[4])
  {
    v48 = 2048;
  }

  else
  {
    v48 = 0;
  }

  v293 = v48;
  if (v9.i8[4])
  {
    v49 = 0x10000;
  }

  else
  {
    v49 = 0;
  }

  v300 = v49;
  if (v9.i8[4])
  {
    v50 = 96;
  }

  else
  {
    v50 = 0;
  }

  v323 = v50;
  if (v9.i8[4])
  {
    v51 = 0x8000;
  }

  else
  {
    v51 = 0;
  }

  v310 = v51;
  if (v9.i8[4])
  {
    v52 = 32;
  }

  else
  {
    v52 = 0;
  }

  v319 = v52;
  if (v9.i8[0])
  {
    v53 = 256;
  }

  else
  {
    v53 = 0;
  }

  if (v9.i8[0])
  {
    v54 = 4096;
  }

  else
  {
    v54 = 0;
  }

  v254 = v54;
  if (v9.i8[0])
  {
    v55 = 60;
  }

  else
  {
    v55 = 0;
  }

  v301 = v55;
  v306 = v13.i32[0];
  if (v9.i8[0])
  {
    v56 = 8;
  }

  else
  {
    v56 = 0;
  }

  v321 = v56;
  if (v9.i8[0])
  {
    v57 = 31;
  }

  else
  {
    v57 = 0;
  }

  v256 = v57;
  if (v9.i8[0])
  {
    v58 = 512;
  }

  else
  {
    v58 = 0;
  }

  v264 = v58;
  if (v9.i8[0])
  {
    v59 = 0x4000;
  }

  else
  {
    v59 = 0;
  }

  v266 = v59;
  if (v9.i8[0])
  {
    v60 = 65528;
  }

  else
  {
    v60 = 0;
  }

  v274 = v60;
  if (v9.i8[0])
  {
    v61 = 4;
  }

  else
  {
    v61 = 0;
  }

  v276 = v61;
  if (v9.i8[0])
  {
    v62 = 2048;
  }

  else
  {
    v62 = 0;
  }

  v290 = v62;
  if (v9.i8[0])
  {
    v63 = 0x10000;
  }

  else
  {
    v63 = 0;
  }

  v296 = v63;
  if (v9.i8[0])
  {
    v64 = 96;
  }

  else
  {
    v64 = 0;
  }

  v320 = v64;
  if (v9.i8[0])
  {
    v65 = 0x8000;
  }

  else
  {
    v65 = 0;
  }

  v304 = v65;
  if (v9.i8[0])
  {
    v66 = 0x10000000;
  }

  else
  {
    v66 = 0;
  }

  v314 = v66;
  if (v9.i8[0])
  {
    v67 = 32;
  }

  else
  {
    v67 = 0;
  }

  v316 = v67;
  v68 = vuzp1_s16(v19, v9);
  v305 = v19.i32[0];
  if (v13.i8[0])
  {
    v69 = 512;
  }

  else
  {
    v69 = 0;
  }

  if (v13.i8[0])
  {
    v70 = 31;
  }

  else
  {
    v70 = 0;
  }

  v294 = v70;
  if (v13.i8[0])
  {
    v71 = 8;
  }

  else
  {
    v71 = 0;
  }

  v317 = v71;
  if (v13.i8[0])
  {
    v72 = 124;
  }

  else
  {
    v72 = 0;
  }

  v297 = v72;
  if (v13.i8[0])
  {
    v73 = 1024;
  }

  else
  {
    v73 = 0;
  }

  v260 = v73;
  if (v13.i8[0])
  {
    v74 = 0x10000;
  }

  else
  {
    v74 = 0;
  }

  v253 = v74;
  if (v13.i8[0])
  {
    v75 = 65528;
  }

  else
  {
    v75 = 0;
  }

  v268 = v75;
  if (v13.i8[0])
  {
    v76 = 4;
  }

  else
  {
    v76 = 0;
  }

  v273 = v76;
  if (v13.i8[0])
  {
    v77 = 0x4000;
  }

  else
  {
    v77 = 0;
  }

  v286 = v77;
  if (v13.i8[0])
  {
    v78 = 2048;
  }

  else
  {
    v78 = 0;
  }

  v287 = v78;
  if (v13.i8[0])
  {
    v79 = 0x8000;
  }

  else
  {
    v79 = 0;
  }

  v302 = v79;
  if (v13.i8[0])
  {
    v80 = 0x10000000;
  }

  else
  {
    v80 = 0;
  }

  v311 = v80;
  if (v13.i8[0])
  {
    v81 = 32;
  }

  else
  {
    v81 = 0;
  }

  v315 = v81;
  if (v19.i8[0])
  {
    v82 = 128;
  }

  else
  {
    v82 = 0;
  }

  v83 = vandq_s8(vmovl_u16(vzip1_s16(v68, vdup_lane_s16(v68, 1))), xmmword_185DE1AB0);
  v84 = vandq_s8(vmovl_u16(vzip1_s16(v31, vdup_lane_s16(v31, 1))), xmmword_185DE1AB0);
  v85 = vaddq_s32(v84, v83);
  v86 = vdup_lane_s16(v31, 0);
  v86.i16[0] = v31.i16[1];
  v87 = vdup_lane_s16(v68, 0);
  v87.i16[0] = v68.i16[1];
  v88 = vaddq_s32(vandq_s8(vmovl_u16(v86), xmmword_185DE1AA0), vandq_s8(vmovl_u16(v87), xmmword_185DE1AA0));
  v89 = vaddq_s32(v88, v83);
  v90.i32[0] = v89.i32[0];
  v90.i32[1] = v85.i32[1] + v82;
  if (v19.i8[0])
  {
    v91 = 512;
  }

  else
  {
    v91 = 0;
  }

  v92 = v53 + v69 + v91;
  if (v19.i8[0])
  {
    v93 = 31;
  }

  else
  {
    v93 = 0;
  }

  v265 = v93;
  if (v19.i8[0])
  {
    v94 = 8;
  }

  else
  {
    v94 = 0;
  }

  v292 = v94;
  if (v19.i8[0])
  {
    v95 = 124;
  }

  else
  {
    v95 = 0;
  }

  v267 = v95;
  if (v19.i8[0])
  {
    v96 = 1024;
  }

  else
  {
    v96 = 0;
  }

  if (v19.i8[0])
  {
    v97 = 0x10000;
  }

  else
  {
    v97 = 0;
  }

  if (v19.i8[0])
  {
    v98 = 65528;
  }

  else
  {
    v98 = 0;
  }

  if (v19.i8[0])
  {
    v99 = 4;
  }

  else
  {
    v99 = 0;
  }

  v252 = v99;
  if (v19.i8[0])
  {
    v100 = 0x4000;
  }

  else
  {
    v100 = 0;
  }

  v255 = v100;
  if (v19.i8[0])
  {
    v101 = 2048;
  }

  else
  {
    v101 = 0;
  }

  v257 = v101;
  if (v19.i8[0])
  {
    v102 = 64;
  }

  else
  {
    v102 = 0;
  }

  v269 = v102;
  if (v19.i8[0])
  {
    v103 = 0x8000;
  }

  else
  {
    v103 = 0;
  }

  v275 = v103;
  if (v19.i8[0])
  {
    v104 = 0x10000000;
  }

  else
  {
    v104 = 0;
  }

  v283 = v104;
  if (v19.i8[0])
  {
    v105 = 32;
  }

  else
  {
    v105 = 0;
  }

  v288 = v105;
  if (v19.i8[4])
  {
    v106 = 512;
  }

  else
  {
    v106 = 0;
  }

  v107 = v92 + v106;
  if (v19.i8[4])
  {
    v108 = 65528;
  }

  else
  {
    v108 = 0;
  }

  if (v19.i8[4])
  {
    v109 = 31;
  }

  else
  {
    v109 = 0;
  }

  v261 = v109;
  if (v19.i8[4])
  {
    v110 = 8;
  }

  else
  {
    v110 = 0;
  }

  v279 = v110;
  if (v19.i8[4])
  {
    v111 = 124;
  }

  else
  {
    v111 = 0;
  }

  v263 = v111;
  if (v19.i8[4])
  {
    v112 = 1024;
  }

  else
  {
    v112 = 0;
  }

  if (v19.i8[4])
  {
    v113 = 0x10000;
  }

  else
  {
    v113 = 0;
  }

  if (v19.i8[4])
  {
    v114 = 4;
  }

  else
  {
    v114 = 0;
  }

  if (v19.i8[4])
  {
    v115 = 0x4000;
  }

  else
  {
    v115 = 0;
  }

  if (v19.i8[4])
  {
    v116 = 2048;
  }

  else
  {
    v116 = 0;
  }

  if (v19.i8[4])
  {
    v117 = 64;
  }

  else
  {
    v117 = 0;
  }

  v262 = v117;
  if (v19.i8[4])
  {
    v118 = 96;
  }

  else
  {
    v118 = 0;
  }

  v289 = v118;
  if (v19.i8[4])
  {
    v119 = 0x8000;
  }

  else
  {
    v119 = 0;
  }

  v271 = v119;
  if (v19.i8[4])
  {
    v120 = 2;
  }

  else
  {
    v120 = 0;
  }

  v277 = v120;
  if (v19.i8[4])
  {
    v121 = 0x10000000;
  }

  else
  {
    v121 = 0;
  }

  v280 = v121;
  if (v19.i8[4])
  {
    v122 = 6;
  }

  else
  {
    v122 = 0;
  }

  if (v19.i8[4])
  {
    v123 = 32;
  }

  else
  {
    v123 = 0;
  }

  v284 = v122;
  v285 = v123;
  if (v13.i8[4])
  {
    v124 = 512;
  }

  else
  {
    v124 = 0;
  }

  self->_limits.maxFramebufferStorageBits = (v40 | (v4 << 8)) + v107 + v124 + (v12 << 9) + (v29 << 9) + (v23 << 9);
  v125.i32[0] = v88.i32[0];
  v126 = v97 + v253;
  v127 = v259 + v298 + v256;
  v128 = vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL)), xmmword_185DE1AB0);
  v129 = vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v29)), 0x1FuLL)), xmmword_185DE1AB0);
  v130 = vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v23)), 0x1FuLL)), xmmword_185DE1AB0);
  v131 = vaddq_s32(v85, vaddq_s32(vaddq_s32(v128, v129), v130));
  v132 = v88.u32[1];
  v133 = v88.i32[1] + v127;
  self->_limits.maxVertexTextures = v131.i32[1] + v88.i32[1] + v127;
  self->_limits.maxFragmentTextures = v131.i32[1] + v88.i32[1] + v127;
  self->_limits.maxComputeTextures = v131.i32[1] + v88.i32[1] + v127;
  if (v13.i8[4])
  {
    v134 = 1024;
  }

  else
  {
    v134 = 0;
  }

  v299 = v134 + (v12 << 10);
  if (v13.i8[4])
  {
    v135 = 0x10000;
  }

  else
  {
    v135 = 0;
  }

  v136 = v113 + v135;
  self->_limits.maxTotalComputeThreadsPerThreadgroup = (v299 | (v4 << 9)) + v270 + v264 + v260 + v96 + v112 + (v29 << 10) + (v23 << 10);
  self->_limits.maxComputeThreadgroupMemory = (v126 | (v4 << 14)) + v266 + v272 + v113 + v135 + (v12 << 16) + (v29 << 16) + (v23 << 16);
  if (v13.i8[4])
  {
    v137 = 262136;
  }

  else
  {
    v137 = 0;
  }

  self->_limits.maxVisibilityQueryOffset = v278 + v313 + v274 + v268 + v98 + v108 + v137 + v309 + v281 + v307;
  if (v13.i8[4])
  {
    v138 = 4;
  }

  else
  {
    v138 = 0;
  }

  v139 = vand_s8(v9, 0x4000000010);
  v140 = v85.i32[0] + 16 * v4 + v282 + v139.i32[0];
  v141 = vdup_laneq_s32(v130, 2);
  v141.i32[0] = v140;
  v125.i32[1] = v88.i32[2] + (v4 << 12) + v258 + v254 + v83.i32[2];
  v142 = vadd_s32(v125, vadd_s32(vadd_s32(vadd_s32(vzip1_s32(*v128.i8, *&vextq_s8(v84, v84, 8uLL)), vzip1_s32(*v129.i8, *&vextq_s8(v128, v128, 8uLL))), vzip1_s32(*v130.i8, *&vextq_s8(v129, v129, 8uLL))), v141));
  self->_limits.minBufferNoCopyAlignmentBytes = v142.u32[1];
  v143 = v273 + v276 + v252 + v291 + 4 * v4;
  v144 = vdup_lane_s32(*v129.i8, 0);
  v145 = v138 + v114 + 4 * v12 + 4 * v23 + v143;
  self->_limits.minConstantBufferAlignmentBytes = v145 + 4 * v29;
  if (v13.i8[4])
  {
    v146 = 0x4000;
  }

  else
  {
    v146 = 0;
  }

  if (v13.i8[4])
  {
    v147 = 2048;
  }

  else
  {
    v147 = 0;
  }

  v148 = v295 + (v4 << 13) + v266 + v286 + v255 + v115 + v146 + (v12 << 14) + (v29 << 15) + (v23 << 14);
  self->_limits.maxTextureWidth1D = v148;
  self->_limits.maxTextureWidth2D = v148;
  v149 = v293 + (v4 << 11) + v290 + v287 + v257 + v116 + v147 + (v12 << 11) + (v29 << 11) + (v23 << 11);
  self->_limits.maxTextureDepth3D = v149;
  self->_limits.maxTextureDimensionCube = v148;
  self->_limits.maxTextureHeight2D = v148;
  self->_limits.maxTextureWidth3D = v149;
  self->_limits.maxTextureHeight3D = v149;
  self->_limits.maxTextureLayers = v149;
  v88.i32[1] = v88.i32[0] | (v4 << 6);
  v144.i32[0] = v291 + 4 * v4;
  v150 = vadd_s32(*v88.i8, vadd_s32(vadd_s32(vadd_s32(vadd_s32(vadd_s32(vadd_s32(v139, vzip1_s32(*v84.i8, v139)), vzip1_s32(*v83.i8, *v84.i8)), vzip1_s32(*v128.i8, *v83.i8)), vzip1_s32(*v129.i8, *v128.i8)), v144), vdup_lane_s32(*v130.i8, 0)));
  self->_limits.deviceLinearReadOnlyTextureAlignmentBytes = v150.u32[1];
  self->_limits.maxFunctionConstantIndices = v126 + (v4 << 16) + v296 + v300 + v136 + (v12 << 16) + (v29 << 16) + (v23 << 16);
  if (v13.i8[4])
  {
    v151 = 31;
  }

  else
  {
    v151 = 0;
  }

  v152 = v294 + v265 + v261 + v151 + v329 + v326 + v327;
  self->_limits.maxTileBuffers = v152;
  v153 = v152 + v127;
  if (v13.i8[4])
  {
    v154 = 124;
  }

  else
  {
    v154 = 0;
  }

  v155 = v303 + v337 + v301 + v297 + v267 + v263 + v154 + v330 + v308 + v328;
  if (v13.i8[4])
  {
    v156 = 64;
  }

  else
  {
    v156 = 0;
  }

  self->_limits.maxInterpolants = v155;
  self->_limits.maxInterpolatedComponents = v155;
  self->_limits.maxTessellationFactor = ((v139.i32[0] + v84.i32[0]) | v269) + v262 + v156 + (v12 << 6) + (v29 << 6) + (v23 << 6);
  if (v13.i8[4])
  {
    v157 = 0x8000;
  }

  else
  {
    v157 = 0;
  }

  self->_limits.maxFenceInstances = v310 + (v4 << 15) + v304 + v302 + v275 + v271 + v157 + (v12 << 15) + (v29 << 15) + (v23 << 15);
  v158 = vadd_s32(v90, vadd_s32(vadd_s32(*v128.i8, *v129.i8), *v130.i8));
  v159 = v4 - v9.i32[1] - v9.i32[0] - v13.i32[0];
  self->_limits.maxViewportCount = v158.i32[0] | v159;
  self->_limits.maxCustomSamplePositions = v145 + 8 * v29;
  if (v13.i8[4])
  {
    v160 = 8;
  }

  else
  {
    v160 = 0;
  }

  v161 = v160 + v279;
  if (v13.i8[4])
  {
    v162 = 2;
  }

  else
  {
    v162 = 0;
  }

  v163 = v159 - v19.i32[0];
  self->_limits.maxVertexAmplificationFactor = v161 + 8 * v12 + 8 * v29 + 8 * v23 + v163;
  self->_limits.maxVertexAmplificationCount = v162 + v277 + 2 * v12 + 2 * v29 + 2 * v23 + v163;
  if (v13.i8[4])
  {
    v164 = 0x10000000;
  }

  else
  {
    v164 = 0;
  }

  self->_limits.maxTextureBufferWidth = ((v318 + (v4 << 26)) | v314) + v311 + v283 + v280 + v164 + (v12 << 28) + v322 + (v23 << 28);
  v165 = v339 + v9.i32[0] + v13.i32[0] + v19.i32[0] + v9.i32[1];
  v338 = v19.i8[4];
  v340 = v13.i8[4];
  self->_limits.maxPredicatedNestingDepth = v165 + v19.i32[1] + v13.i32[1] - v12 - v29 - v23;
  if (v13.i8[4])
  {
    v166 = 32;
  }

  else
  {
    v166 = 0;
  }

  v167 = vdup_n_s32(v4);
  self->_limits.maxAccelerationStructureLevels = v319 + 32 * v4 + v316 + v315 + v288 + v285 + v166 + 32 * v12 + 32 * v29 + 32 * v23;
  v168 = ((v161 + 8 * v4) | v291) + v321 + v317 + v292;
  if (v13.i8[4])
  {
    v169 = 96;
  }

  else
  {
    v169 = 0;
  }

  v170 = v332 + v324 + v331 + v169;
  v171 = v132 + v335 + v323 + v320 + v289;
  if (v13.i8[4])
  {
    v172 = 6;
  }

  else
  {
    v172 = 0;
  }

  v173 = vdup_n_s32(v12);
  v174 = vdup_n_s32(v29);
  v175 = v168 + 8 * v12 + 8 * v29;
  v176 = v172 + v284 + v334 + v325 + v333 + v143;
  v177 = vdup_n_s32(v23);
  v178 = v175 + 8 * v23;
  *&self->_limits.linearTextureArrayAlignmentBytes = v158;
  v179 = vaddq_s32(v89, vaddq_s32(vaddq_s32(vaddq_s32(v84, v128), v129), v130));
  v180 = vdup_lane_s32(v13, 0);
  v181 = vdup_lane_s32(v19, 0);
  v182 = vdup_lane_s32(v19, 1);
  v183 = vdup_lane_s32(v13, 1);
  self->_limits.padmaxBufferLength = 0;
  self->_limits.maxVertexBuffers = v153;
  self->_limits.maxComputeBuffers = v153;
  self->_limits.maxComputeLocalMemorySizes = v153;
  v184 = vdup_lane_s32(v9, 1);
  v185 = vdup_lane_s32(v9, 0);
  v186 = v170 + v171;
  self->_limits.maxIndirectSamplersPerDevice = v170 + v171;
  self->_limits.maxIOCommandsInFlight = v176;
  *&v187 = vrev64q_s32(v179).u64[0];
  *(&v187 + 1) = v179.i64[1];
  *&self->_limits.maxTileTextures = v187;
  v188.i64[0] = v167.u32[0];
  v188.i64[1] = v167.u32[1];
  v189 = vandq_s8(xmmword_185DE1AC0, vcltzq_s64(vshlq_n_s64(v188, 0x3FuLL)));
  v188.i64[0] = v180.i32[0];
  v188.i64[1] = v180.i32[1];
  v190 = vandq_s8(xmmword_185DE1AC0, v188);
  v188.i64[0] = v181.i32[0];
  v188.i64[1] = v181.i32[1];
  v191 = vandq_s8(xmmword_185DE1AC0, v188);
  v188.i64[0] = v182.i32[0];
  v188.i64[1] = v182.i32[1];
  v192 = vandq_s8(xmmword_185DE1AC0, v188);
  v188.i64[0] = v183.i32[0];
  v188.i64[1] = v183.i32[1];
  v193 = vandq_s8(xmmword_185DE1AC0, v188);
  v188.i64[0] = v173.u32[0];
  v188.i64[1] = v173.u32[1];
  v194 = vandq_s8(xmmword_185DE1AC0, vcltzq_s64(vshlq_n_s64(v188, 0x3FuLL)));
  v188.i64[0] = v177.u32[0];
  v188.i64[1] = v177.u32[1];
  v195 = vandq_s8(xmmword_185DE1AC0, vcltzq_s64(vshlq_n_s64(v188, 0x3FuLL)));
  v188.i64[0] = v174.u32[0];
  v188.i64[1] = v174.u32[1];
  v196 = vandq_s8(xmmword_185DE1AC0, vcltzq_s64(vshlq_n_s64(v188, 0x3FuLL)));
  self->_limits.maxColorAttachments = v178;
  self->_limits.maxVertexAttributes = v153;
  *&self->_limits.maxVertexSamplers = v142;
  self->_limits.maxFragmentBuffers = v153;
  *&self->_limits.maxFragmentSamplers = v142;
  *&self->_limits.maxComputeSamplers = v142;
  v188.i64[0] = v184.i32[0];
  v188.i64[1] = v184.i32[1];
  v197 = vaddq_f64(vandq_s8(xmmword_185DE1AC0, v188), v189);
  v188.i64[0] = v185.i32[0];
  v188.i64[1] = v185.i32[1];
  *&self->_limits.maxLineWidth = vcvt_f32_f64(vaddq_f64(v196, vaddq_f64(v195, vaddq_f64(v194, vaddq_f64(v193, vaddq_f64(v192, vaddq_f64(v191, vaddq_f64(v190, vaddq_f64(vandq_s8(xmmword_185DE1AC0, v188), v197)))))))));
  *&self->_limits.linearTextureAlignmentBytes = vext_s8(v150, v142, 4uLL);
  *&self->_limits.iosurfaceReadOnlyTextureAlignmentBytes = v150;
  self->_limits.maxComputeThreadgroupMemoryAlignmentBytes = v142.i32[0];
  v198 = v170 + v289 + v133;
  self->_limits.maxIndirectBuffers = v198;
  self->_limits.maxIndirectTextures = v198;
  self->_limits.maxIndirectSamplers = v142.i32[0];
  self->_limits.maxComputeAttributes = v153;
  self->_limits.maxConstantBufferArguments = v153;
  if (!v178)
  {
    [(_MTLDevice *)v143 initLimits:v291];
  }

  v199 = v142.i32[0];
  v336 = v132 + v335 + v323 + v320 + v289;
  v200 = [(_MTLDevice *)self argumentBuffersSupport];
  v208 = v198;
  if (v200)
  {
    v200 = [(_MTLDevice *)self argumentBuffersSupport];
    if (v200 != 1)
    {
      self->_limits.maxIndirectBuffers = 0;
LABEL_414:
      [(_MTLDevice *)v200 initLimits:v201];
    }

    if (v338)
    {
      v209 = 500000;
    }

    else
    {
      v209 = 0;
    }

    if (v340)
    {
      v210 = 500000;
    }

    else
    {
      v210 = 0;
    }

    if (v251 == 9)
    {
      v211 = 500000;
    }

    else
    {
      v211 = 0;
    }

    if (v250 == 10)
    {
      v212 = 500000;
    }

    else
    {
      v212 = 0;
    }

    if (v251 == 12)
    {
      v213 = 500000;
    }

    else
    {
      v213 = 0;
    }

    v208 = v210 + v209 + v211 + v213 + v212 + v133;
  }

  self->_limits.maxIndirectBuffers = v208;
  if (!v208)
  {
    goto LABEL_414;
  }

  v214 = [(_MTLDevice *)self argumentBuffersSupport];
  if (v214)
  {
    v214 = [(_MTLDevice *)self argumentBuffersSupport];
    if (v214 != 1)
    {
      self->_limits.maxIndirectTextures = 0;
LABEL_416:
      [(_MTLDevice *)v214 initLimits:v215];
    }

    if (v338)
    {
      v222 = 500000;
    }

    else
    {
      v222 = 0;
    }

    if (v340)
    {
      v223 = 500000;
    }

    else
    {
      v223 = 0;
    }

    if (v251 == 9)
    {
      v224 = 500000;
    }

    else
    {
      v224 = 0;
    }

    if (v250 == 10)
    {
      v225 = 500000;
    }

    else
    {
      v225 = 0;
    }

    if (v251 == 12)
    {
      v226 = 500000;
    }

    else
    {
      v226 = 0;
    }

    v198 = v223 + v222 + v224 + v226 + v225 + v133;
  }

  self->_limits.maxIndirectTextures = v198;
  if (!v198)
  {
    goto LABEL_416;
  }

  v227 = [(_MTLDevice *)self argumentBuffersSupport];
  if (v227)
  {
    v227 = [(_MTLDevice *)self argumentBuffersSupport];
    if (v227 != 1)
    {
      self->_limits.maxIndirectSamplers = 0;
LABEL_418:
      [(_MTLDevice *)v227 initLimits:v228];
    }

    if (v338)
    {
      v235 = 500000;
    }

    else
    {
      v235 = 0;
    }

    if (v340)
    {
      v236 = 500000;
    }

    else
    {
      v236 = 0;
    }

    if (v251 == 9)
    {
      v237 = 500000;
    }

    else
    {
      v237 = 0;
    }

    if (v250 == 10)
    {
      v238 = 500000;
    }

    else
    {
      v238 = 0;
    }

    if (v251 == 12)
    {
      v239 = 500000;
    }

    else
    {
      v239 = 0;
    }

    v199 = v236 + v235 + v237 + v239 + v238 + v140;
  }

  self->_limits.maxIndirectSamplers = v199;
  if (!v199)
  {
    goto LABEL_418;
  }

  v240 = [(_MTLDevice *)self argumentBuffersSupport];
  if (v240)
  {
    v240 = [(_MTLDevice *)self argumentBuffersSupport];
    if (v240 != 1)
    {
      self->_limits.maxIndirectSamplersPerDevice = 0;
LABEL_420:
      [(_MTLDevice *)v240 initLimits:v241];
    }

    if (v250 == 10)
    {
      v248 = 500000;
    }

    else
    {
      v248 = 0;
    }

    if (v251 == 12)
    {
      v249 = 500000;
    }

    else
    {
      v249 = 0;
    }

    v186 = (v299 | v249) + v248 + v336;
  }

  self->_limits.maxIndirectSamplersPerDevice = v186;
  if (!v186)
  {
    goto LABEL_420;
  }

  self->_limits.maxBufferLength = [(_MTLDevice *)self maxBufferLength];
  self->_limits.maxIOCommandsInFlight = v176;
}

- (void)initFeatureQueries
{
  [(_MTLDevice *)self initGPUFamilySupport];
  v3 = [[MTLDeviceFeatureQueries alloc] initWithDevice:self];
  self->_featureQueries = v3;

  [(MTLDeviceFeatureQueries *)v3 validate];
}

- (void)initGPUFamilySupport
{
  supportedGPUFamilies = self->_supportedGPUFamilies;
  if (!supportedGPUFamilies)
  {
    operator new();
  }

  supportedGPUFamilies[1] = *supportedGPUFamilies;
  v3 = [(_MTLDevice *)self featureProfile];
  if (v3 <= 9999)
  {
    if (v3 <= 6)
    {
      if (v3 <= 3)
      {
        if (!v3)
        {
          goto LABEL_59;
        }

        if (v3 != 1)
        {
          return;
        }

        goto LABEL_57;
      }

      if (v3 == 4)
      {
        goto LABEL_56;
      }

      if (v3 == 5)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (v3 > 9)
    {
      if (v3 != 10)
      {
        if (v3 != 11)
        {
          if (v3 != 12)
          {
            return;
          }

          v7 = 1010;
          std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        }

        std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &MTLGPUFamilyApple9B);
      }

      v7 = 1009;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    }

    else
    {
      if (v3 == 7)
      {
LABEL_50:
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          v7 = 5001;
          std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        }

        v6 = 1006;
        goto LABEL_53;
      }

      if (v3 == 8)
      {
LABEL_47:
        if (dyld_program_sdk_at_least())
        {
          v7 = 5001;
          std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        }

        v7 = 5002;
        std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        v7 = 1007;
        std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        goto LABEL_50;
      }
    }

    v7 = 1008;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    goto LABEL_47;
  }

  if (v3 > 29999)
  {
    if (v3 <= 30003)
    {
      if (v3 == 30000)
      {
LABEL_57:
        v5 = 1002;
        goto LABEL_58;
      }

      if (v3 == 30001)
      {
LABEL_56:
        v7 = 1003;
        std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        v7 = 3002;
        std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
        goto LABEL_57;
      }

      if (v3 != 30002)
      {
        return;
      }

      goto LABEL_54;
    }

    if (v3 != 30004)
    {
      if (v3 != 30005)
      {
        if (v3 != 30006)
        {
          return;
        }

        std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &MTLGPUFamilyApple9B);
      }

      v7 = 1009;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    }

    v7 = 1008;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 1007;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 1006;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 5001;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v6 = 5002;
LABEL_53:
    v7 = v6;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
LABEL_54:
    v7 = 1005;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 3003;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
LABEL_55:
    v7 = 1004;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    goto LABEL_56;
  }

  if (v3 > 19999)
  {
    if (v3 == 20000)
    {
LABEL_59:
      v7 = 1001;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
      v4 = 3001;
      goto LABEL_60;
    }

    if (v3 != 20001)
    {
      if (v3 != 20002)
      {
        return;
      }

      v7 = 1008;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
      v7 = 1007;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
      v7 = 1006;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
      v7 = 5001;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
      v7 = 5002;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    }

    v7 = 1005;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 3003;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 1004;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 1003;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 1002;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v5 = 3002;
LABEL_58:
    v7 = v5;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    goto LABEL_59;
  }

  if (v3 != 10000)
  {
    if (v3 != 10001)
    {
      if (v3 != 10002)
      {
        return;
      }

      v7 = 5001;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    }

    v7 = 3003;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    v7 = 2002;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    if (_CFMZEnabled())
    {
      v7 = 4002;
      std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
    }
  }

  v7 = 3001;
  std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
  v7 = 3002;
  std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
  v7 = 2001;
  std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
  if (_CFMZEnabled())
  {
    v4 = 4001;
LABEL_60:
    v7 = v4;
    std::vector<MTLTagType>::push_back[abi:ne200100](supportedGPUFamilies, &v7);
  }
}

- (NSString)name
{
  v3 = [(_MTLDevice *)self vendorName];
  v4 = [(_MTLDevice *)self familyName];
  v5 = [(_MTLDevice *)self productName];
  v6 = CFPreferencesCopyAppValue(@"forceDeviceName", @"com.apple.Metal");
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];
    CFRelease(v7);
  }

  else
  {
    v9 = getenv("METAL_FORCE_DEVICE_VENDOR_NAME");
    if (v9)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    }

    v10 = getenv("METAL_FORCE_DEVICE_FAMILY_NAME");
    if (v10)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    }

    v11 = getenv("METAL_FORCE_DEVICE_PRODUCT_NAME");
    if (v11)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v3 && ([v3 isEqualToString:&stru_1EF478240] & 1) == 0)
    {
      [v12 addObject:{objc_msgSend(objc_msgSend(v3, "componentsSeparatedByCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "componentsJoinedByString:", &stru_1EF478240)}];
    }

    if (v4 && ([v4 isEqualToString:&stru_1EF478240] & 1) == 0)
    {
      [v12 addObject:v4];
    }

    if (v5 && ([v5 isEqualToString:&stru_1EF478240] & 1) == 0)
    {
      [v12 addObject:v5];
    }

    [v12 addObject:@"GPU"];
    if ([v12 count])
    {
      v8 = [v12 componentsJoinedByString:@" "];
    }

    else
    {
      v8 = @"Unnamed_GPU";
    }
  }

  return &v8->isa;
}

- (id)newDefaultLibrary
{
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (!v3)
  {
    return 0;
  }

  v8 = MTLLibraryBuilder::newLibraryWithFile(self->_libraryBuilder, self, v3, 0, v4, v5, v6, v7);
  if ([(_MTLDevice *)self isCollectingLibraries]&& v8)
  {
    MTLPipelineCollection::addLibrary(self->_pipelineCollection, v8);
  }

  return v8;
}

- (unint64_t)readWriteTextureSupport
{
  if ([(_MTLDevice *)self supportsFamily:1004])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)initDefaultLogState
{
  v4 = 0;
  v5 = self;
  p_initDefaultLogState = &self->_initDefaultLogState;
  v3[0] = &v5;
  v3[1] = &v4;
  if (atomic_load_explicit(p_initDefaultLogState, memory_order_acquire) != -1)
  {
    v7 = v3;
    v6 = &v7;
    std::__call_once(&p_initDefaultLogState->__state_, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initDefaultLogState]::$_0 &&>>);
  }
}

- (void)initLogBufferResidencySet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___MTLDevice_initLogBufferResidencySet__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  if ([_MTLDevice initLogBufferResidencySet]::onceToken != -1)
  {
    dispatch_once(&[_MTLDevice initLogBufferResidencySet]::onceToken, block);
  }
}

- (void)addToLogBufferResidencySet:(id)a3
{
  if (self->_internalLogBufferResidencySet)
  {
    os_unfair_lock_lock(&self->_logBufferResidencyLock);
    [(MTLResidencySet *)self->_internalLogBufferResidencySet addAllocation:a3];
    [(MTLResidencySet *)self->_internalLogBufferResidencySet commit];

    os_unfair_lock_unlock(&self->_logBufferResidencyLock);
  }
}

- (void)removeLogBufferFromResidencySet:(id)a3
{
  if (self->_internalLogBufferResidencySet)
  {
    os_unfair_lock_lock(&self->_logBufferResidencyLock);
    [(MTLResidencySet *)self->_internalLogBufferResidencySet removeAllocation:a3];
    [(MTLResidencySet *)self->_internalLogBufferResidencySet commit];

    os_unfair_lock_unlock(&self->_logBufferResidencyLock);
  }
}

- (void)initProgressTracking
{
  v4 = self;
  p_initProgressTrackingOnceToken = &self->_initProgressTrackingOnceToken;
  v3 = &v4;
  if (atomic_load_explicit(p_initProgressTrackingOnceToken, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&p_initProgressTrackingOnceToken->__state_, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initProgressTracking]::$_1 &&>>);
  }
}

- (void)dealloc
{
  libraryBuilder = self->_libraryBuilder;
  if (libraryBuilder)
  {
    MTLLibraryBuilder::~MTLLibraryBuilder(libraryBuilder);
    MEMORY[0x1865FF210]();
  }

  pipelineLibraryBuilder = self->_pipelineLibraryBuilder;
  if (pipelineLibraryBuilder)
  {
    dispatch_release(pipelineLibraryBuilder->var1);
    MEMORY[0x1865FF210](pipelineLibraryBuilder, 0x80C40803F642BLL);
  }

  dispatch_release(self->_serialQueue);
  dispatch_release(self->_pipelineSerializationQueue);
  dispatch_release(self->_concurrentQueue);

  supportedGPUFamilies = self->_supportedGPUFamilies;
  if (supportedGPUFamilies)
  {
    v6 = *supportedGPUFamilies;
    if (*supportedGPUFamilies)
    {
      supportedGPUFamilies[1] = v6;
      operator delete(v6);
    }

    MEMORY[0x1865FF210](supportedGPUFamilies, 0x10C402FEFCB83);
  }

  self->_supportedGPUFamilies = 0;

  self->_progressTrackBufferStack = 0;
  self->_progressTrackComputePipeline = 0;

  self->_progressTrackComputePipeline = 0;
  self->_akIOResourceListPool = 0;
  recompiledBinaryArchiveMap = self->_recompiledBinaryArchiveMap;
  if (recompiledBinaryArchiveMap)
  {
    MTLVersionedDB::~MTLVersionedDB(recompiledBinaryArchiveMap);
    MEMORY[0x1865FF210]();
  }

  binaryArchiveUsage = self->_binaryArchiveUsage;
  if (binaryArchiveUsage)
  {
    MTLVersionedDB::~MTLVersionedDB(binaryArchiveUsage);
    MEMORY[0x1865FF210]();
  }

  compilerConnectionManager = self->_compilerConnectionManager;
  if (compilerConnectionManager)
  {
    (*(*compilerConnectionManager + 88))(compilerConnectionManager);
  }

  v10.receiver = self;
  v10.super_class = _MTLDevice;
  [(_MTLDevice *)&v10 dealloc];
}

- (unint64_t)bufferRobustnessSupport
{
  if ([(_MTLDevice *)self supportsBufferBoundsChecking])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsFamily:(int64_t)a3
{
  supportedGPUFamilies = self->_supportedGPUFamilies;
  v4 = *supportedGPUFamilies;
  v5 = supportedGPUFamilies[1];
  if (v4 != v5)
  {
    while (*v4 != a3)
    {
      if (++v4 == v5)
      {
        v4 = v5;
        return v4 != v5;
      }
    }
  }

  return v4 != v5;
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = [a3 computeFunction];
  v10 = [a3 preloadedLibraries];

  return [(_MTLDevice *)self loadDynamicLibrariesForFunction:v9 insertLibraries:v10 options:a4 error:a5];
}

- (id)formattedDescription:(unint64_t)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _MTLDevice;
  v6 = [(_MTLDevice *)&v11 description];
  v12[0] = v4;
  v12[1] = @"name =";
  v7 = [(_MTLDevice *)self name];
  v8 = @"<none>";
  if (v7)
  {
    v8 = v7;
  }

  v12[2] = v8;
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 3), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)newFunctionWithGLIR:(void *)a3 functionType:(unint64_t)a4
{
  v4 = a4;
  v6 = self;
  dyld_get_active_platform();

  newFunctionWithGLIR(v6, v4, a3);
}

- (id)newFunctionWithGLIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  v5 = a5;
  v7 = self;
  dyld_get_active_platform();

  newFunctionWithGLIR(v7, v5, a3);
}

- (void)getShaderCacheKeys
{
  v2 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v2 getShaderCacheKeys];
}

- (void)setRawBVHBuilderPtr:(id)a3
{
  GPUBVHBuilder = self->_GPUBVHBuilder;
  if (GPUBVHBuilder != a3)
  {

    self->_GPUBVHBuilder = a3;
  }
}

- (void)allowLibrariesFromOtherPlatforms
{
  *(self->_libraryBuilder + 40) = 0;
  v2 = [(_MTLDevice *)self compiler];

  [(MTLCompiler *)v2 allowLibrariesFromOtherPlatforms];
}

- (id)newLibraryWithFile:(id)a3 error:(id *)a4
{
  v9 = MTLLibraryBuilder::newLibraryWithFile(self->_libraryBuilder, self, a3, a4, v4, v5, v6, v7);
  if ([(_MTLDevice *)self isCollectingLibraries]&& v9)
  {
    MTLPipelineCollection::addLibrary(self->_pipelineCollection, v9);
  }

  return v9;
}

- (id)newLibraryWithMetalPackageURL:(id)a3 error:(id *)a4
{
  v7 = [a3 URLByAppendingPathComponent:@"manifest.json"];
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];
  if (!v8)
  {
    if (!a4)
    {
      return 0;
    }

    v18 = MEMORY[0x1E695DF20];
    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a4];
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!a4)
    {
      return 0;
    }

    v18 = MEMORY[0x1E695DF20];
LABEL_16:
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Invalid metal package";
    goto LABEL_17;
  }

  SubDictionary = getSubDictionary(v10, &cfstr_Mtlpackage.isa, a4);
  if (!SubDictionary)
  {
    return 0;
  }

  v12 = SubDictionary;
  v13 = getSubDictionary(SubDictionary, &cfstr_Version.isa, a4);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  VersionValue = getVersionValue(v13, &cfstr_Major.isa, a4);
  v16 = getVersionValue(v14, &cfstr_Minor.isa, a4);
  v17 = getVersionValue(v14, &cfstr_Patch.isa, a4);
  if (a4)
  {
    if (*a4)
    {
      return 0;
    }

    if (VersionValue != 1 || v16 || v17)
    {
      v18 = MEMORY[0x1E695DF20];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"Unsupported metal package version";
LABEL_17:
      v21 = [v18 dictionaryWithObject:v20 forKey:v19];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v21];
      return 0;
    }
  }

  else if (VersionValue != 1 || v16 || v17)
  {
    return 0;
  }

  v23 = getSubDictionary(v12, &cfstr_Content.isa, a4);
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  if (([getStringInDictionary(v12 &cfstr_Pkgtype.isa] & 1) == 0)
  {
    generateNSError(a4, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_MetalPackageDo.isa);
    return 0;
  }

  StringInDictionary = getStringInDictionary(v24, &cfstr_Mpspkgname.isa, a4);
  if (!StringInDictionary)
  {
    return 0;
  }

  v26 = [a3 URLByAppendingPathComponent:StringInDictionary];

  return [(_MTLDevice *)self newLibraryWithMPSGraphPackageURL:v26 name:@"library" error:a4];
}

- (id)newLibraryWithURL:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    [(_MTLDevice *)self newLibraryWithURL:a2 error:0, a4, v4, v5, v6, v7, v21];
  }

  v11 = [a3 fileSystemRepresentation];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v11];
    v22 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v22 == 1 && objc_msgSend(objc_msgSend(a3, "pathExtension"), "isEqualToString:", @"mtlpackage"))
    {
      v17 = [(_MTLDevice *)self newLibraryWithMetalPackageURL:a3 error:a4];
    }

    else
    {
      v17 = MTLLibraryBuilder::newLibraryWithFile(self->_libraryBuilder, self, v12, a4, v13, v14, v15, v16);
    }

    v18 = v17;

    if ([(_MTLDevice *)self isCollectingLibraries]&& v18)
    {
      MTLPipelineCollection::addLibrary(self->_pipelineCollection, v18);
    }
  }

  else
  {
    if (a4)
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid file url" forKey:*MEMORY[0x1E696A578]];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:6 userInfo:v19];
    }

    [(_MTLDevice *)self isCollectingLibraries];
    return 0;
  }

  return v18;
}

- (id)newSharedTextureWithDescriptor:(id)a3
{
  v5 = [(_MTLDevice *)self copyIOSurfaceSharedTextureProperties:?];
  if ([(MTLSharedTextureHandle *)v5 objectForKey:*MEMORY[0x1E696CE30]])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_MTLDevice registryID](self, "registryID")}];
    [(MTLSharedTextureHandle *)v5 setObject:v6 forKeyedSubscript:kMetalRegistryID];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "textureType")}];
    [(MTLSharedTextureHandle *)v5 setObject:v7 forKeyedSubscript:kMetalTextureType];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "pixelFormat")}];
    [(MTLSharedTextureHandle *)v5 setObject:v8 forKeyedSubscript:kMetalTexturePixelFormat];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "width")}];
    [(MTLSharedTextureHandle *)v5 setObject:v9 forKeyedSubscript:kMetalTextureWidth];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "height")}];
    [(MTLSharedTextureHandle *)v5 setObject:v10 forKeyedSubscript:kMetalTextureHeight];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "depth")}];
    [(MTLSharedTextureHandle *)v5 setObject:v11 forKeyedSubscript:kMetalTextureDepth];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "mipmapLevelCount")}];
    [(MTLSharedTextureHandle *)v5 setObject:v12 forKeyedSubscript:kMetalTextureMipmapLevelCount];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "sampleCount")}];
    [(MTLSharedTextureHandle *)v5 setObject:v13 forKeyedSubscript:kMetalTextureSampleCount];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "arrayLength")}];
    [(MTLSharedTextureHandle *)v5 setObject:v14 forKeyedSubscript:kMetalTextureArrayLength];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "resourceOptions")}];
    [(MTLSharedTextureHandle *)v5 setObject:v15 forKeyedSubscript:kMetalTextureResourceOptions];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "usage")}];
    [(MTLSharedTextureHandle *)v5 setObject:v16 forKeyedSubscript:kMetalTextureUsage];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "sparseSurfaceDefaultValue")}];
    [(MTLSharedTextureHandle *)v5 setObject:v17 forKeyedSubscript:kMetalTextureSparseValue];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "allowGPUOptimizedContents")}];
    [(MTLSharedTextureHandle *)v5 setObject:v18 forKeyedSubscript:kMetalTextureGPUOptimization];
    -[MTLSharedTextureHandle setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{MTLTextureSwizzleChannelsToKey(objc_msgSend(a3, "swizzle"))}], kMetalTextureSwizzleKey);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "rotation")}];
    [(MTLSharedTextureHandle *)v5 setObject:v19 forKeyedSubscript:kMetalTextureRotation];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "compressionFootprint")}];
    [(MTLSharedTextureHandle *)v5 setObject:v20 forKeyedSubscript:kMetalTextureFootprint];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "resourceIndex")}];
    [(MTLSharedTextureHandle *)v5 setObject:v21 forKeyedSubscript:kMetalTextureResourceIndex];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "colorSpaceConversionMatrix")}];
    [(MTLSharedTextureHandle *)v5 setObject:v22 forKeyedSubscript:kMetalTextureCSCMatrix];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "writeAccessPattern")}];
    [(MTLSharedTextureHandle *)v5 setObject:v23 forKeyedSubscript:kMetalTextureWriteAccessPattern];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "protectionOptions")}];
    [(MTLSharedTextureHandle *)v5 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696D0F0]];
    v25 = IOSurfaceCreate(v5);

    if (!v25)
    {
      return 0;
    }

    v5 = [[MTLSharedTextureHandle alloc] initWithIOSurface:v25 label:0];
    CFRelease(v25);
    v26 = [(_MTLDevice *)self newSharedTextureWithHandle:v5];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_newDescriptorForSharedTexture:(__IOSurface *)a3
{
  v4 = IOSurfaceCopyValue(a3, *MEMORY[0x1E696CEF8]);
  if ([v4 objectForKeyedSubscript:kMetalRegistryID] && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureType) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTexturePixelFormat) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureWidth) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureHeight) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureDepth) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureMipmapLevelCount) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureSampleCount) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureArrayLength) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureSparseValue) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureSwizzleKey) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureRotation) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureFootprint) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureResourceIndex) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureCSCMatrix) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureGPUOptimization) && objc_msgSend(v4, "objectForKeyedSubscript:", kMetalTextureWriteAccessPattern) && (v5 = objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", kMetalRegistryID), "unsignedLongLongValue"), -[_MTLDevice registryID](self, "registryID") == v5))
  {
    v6 = objc_alloc_init(MTLTextureDescriptor);
    -[MTLTextureDescriptor setTextureType:](v6, "setTextureType:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureType), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setPixelFormat:](v6, "setPixelFormat:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTexturePixelFormat), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setWidth:](v6, "setWidth:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureWidth), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setHeight:](v6, "setHeight:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureHeight), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setDepth:](v6, "setDepth:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureDepth), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setMipmapLevelCount:](v6, "setMipmapLevelCount:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureMipmapLevelCount), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setSampleCount:](v6, "setSampleCount:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureSampleCount), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setArrayLength:](v6, "setArrayLength:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureArrayLength), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setResourceOptions:](v6, "setResourceOptions:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureResourceOptions), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setUsage:](v6, "setUsage:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureUsage), "unsignedIntegerValue"}]);
    v7 = [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureSwizzleKey), "unsignedIntegerValue"}];
    [(MTLTextureDescriptor *)v6 setSwizzle:MTLTextureSwizzleKeyToChannels(v7, v8)];
    -[MTLTextureDescriptor setSparseSurfaceDefaultValue:](v6, "setSparseSurfaceDefaultValue:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureSparseValue), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setAllowGPUOptimizedContents:](v6, "setAllowGPUOptimizedContents:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureGPUOptimization), "BOOLValue"}]);
    -[MTLTextureDescriptor setRotation:](v6, "setRotation:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureRotation), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setCompressionFootprint:](v6, "setCompressionFootprint:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureFootprint), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setResourceIndex:](v6, "setResourceIndex:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureResourceIndex), "unsignedLongLongValue"}]);
    -[MTLTextureDescriptor setColorSpaceConversionMatrix:](v6, "setColorSpaceConversionMatrix:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureCSCMatrix), "unsignedIntegerValue"}]);
    -[MTLTextureDescriptor setWriteAccessPattern:](v6, "setWriteAccessPattern:", [objc_msgSend(v4 objectForKeyedSubscript:{kMetalTextureWriteAccessPattern), "integerValue"}]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newSharedTextureWithHandle:(id)a3
{
  v5 = [a3 ioSurface];
  v6 = [(_MTLDevice *)self _newDescriptorForSharedTexture:v5];
  v7 = [(_MTLDevice *)self newTextureWithDescriptor:v6 iosurface:v5 plane:0];

  [v7 setLabel:{objc_msgSend(a3, "label")}];
  return v7;
}

- (id)newSharedTextureWithHandle:(id)a3 withResourceIndex:(unint64_t)a4
{
  v7 = [a3 ioSurface];
  v8 = [(_MTLDevice *)self _newDescriptorForSharedTexture:v7];
  [v8 setResourceIndex:a4];
  v9 = [(_MTLDevice *)self newTextureWithDescriptor:v8 iosurface:v7 plane:0];

  [v9 setLabel:{objc_msgSend(a3, "label")}];
  return v9;
}

- (unint64_t)sparseTexturesSupport
{
  if ([(_MTLDevice *)self supportsFamily:1006])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)serializeRenderPipelineDescriptor:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  pipelineSerializationQueue = self->_pipelineSerializationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___MTLDevice_serializeRenderPipelineDescriptor___block_invoke;
  v6[3] = &unk_1E6EEB430;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(pipelineSerializationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)newRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4
{
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::PipelineDescriptorDeserializer(v7, a4);
  v5 = MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newRenderPipelineDescriptor(v7, a3);
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(v7);
  return v5;
}

- (id)serializeComputePipelineDescriptor:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  pipelineSerializationQueue = self->_pipelineSerializationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___MTLDevice_serializeComputePipelineDescriptor___block_invoke;
  v6[3] = &unk_1E6EEB430;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(pipelineSerializationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)newComputePipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4
{
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::PipelineDescriptorDeserializer(v7, a4);
  v5 = MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newComputePipelineDescriptor(v7, a3);
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(v7);
  return v5;
}

- (id)serializeTileRenderPipelineDescriptor:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  pipelineSerializationQueue = self->_pipelineSerializationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___MTLDevice_serializeTileRenderPipelineDescriptor___block_invoke;
  v6[3] = &unk_1E6EEB430;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(pipelineSerializationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)newTileRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4
{
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::PipelineDescriptorDeserializer(v7, a4);
  v5 = MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newTileRenderPipelineDescriptor(v7, a3);
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(v7);
  return v5;
}

- (id)serializeMeshRenderPipelineDescriptor:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  pipelineSerializationQueue = self->_pipelineSerializationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___MTLDevice_serializeMeshRenderPipelineDescriptor___block_invoke;
  v6[3] = &unk_1E6EEB430;
  v6[4] = a3;
  v6[5] = &v7;
  dispatch_sync(pipelineSerializationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)newMeshRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4
{
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::PipelineDescriptorDeserializer(v7, a4);
  v5 = MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newMeshRenderPipelineDescriptor(v7, a3);
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(v7);
  return v5;
}

- (id)serializeStructType:(id)a3 version:(unsigned int)a4
{
  v6 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  buffer = v6;
  *size = xmmword_185DE1A60;
  if (a4 >= 2)
  {
    *v6 = 0x4E494253504C544DLL;
    v6[2] = a4;
    size[1] = 12;
  }

  serializeStructType(a3, &buffer, a4);
  v7 = buffer;
  v8 = size[1];
  size[0] = 0;
  size[1] = 0;
  buffer = 0;
  v9 = dispatch_data_create(v7, v8, 0, *MEMORY[0x1E69E9648]);
  free(buffer);
  return v9;
}

- (id)newStructTypeWithSerializedData:(id)a3
{
  size_ptr = 0;
  buffer_ptr = 0;
  v4 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  v8[0] = buffer_ptr;
  v8[1] = size_ptr;
  v9 = 0;
  if (size_ptr >= 8 && *buffer_ptr == 0x4E494253504C544DLL)
  {
    if ((size_ptr & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      abort();
    }

    v5 = *(buffer_ptr + 2);
    v9 = 12;
  }

  else
  {
    v5 = 1;
  }

  v6 = newStructTypeWithSerializedContext(self, v8, v5);
  dispatch_release(v4);
  return v6;
}

- (void)unloadShaderCaches
{
  [(MTLCompiler *)[(_MTLDevice *)self compiler] unloadShaderCaches];
  libraryBuilder = self->_libraryBuilder;

  MTLLibraryBuilder::deleteLibraryCache(libraryBuilder);
}

- (BOOL)copyShaderCacheToPath:(id)a3
{
  v4 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v4 copyShaderCacheToPath:a3];
}

- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats
{
  v2 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v2 libraryCacheStats];
}

- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats
{
  v2 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v2 pipelineCacheStats];
}

- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4
{
  v6 = [a3 pathForResource:@"default" ofType:@"metallib"];
  if (v6)
  {
    v11 = MTLLibraryBuilder::newLibraryWithFile(self->_libraryBuilder, self, v6, a4, v7, v8, v9, v10);
    if ([(_MTLDevice *)self isCollectingLibraries]&& v11)
    {
      MTLPipelineCollection::addLibrary(self->_pipelineCollection, v11);
    }
  }

  else if (a4)
  {
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"no default library was found" forKey:*MEMORY[0x1E696A578]];
    v11 = 0;
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:6 userInfo:v12];
  }

  else
  {
    return 0;
  }

  return v11;
}

- (id)newLibraryWithData:(id)a3 error:(id *)a4
{
  v9 = MTLLibraryBuilder::newLibraryWithData(self->_libraryBuilder, self, a3, a4, v4, v5, v6, v7);
  if ([(_MTLDevice *)self isCollectingLibraries]&& v9 && self->_librariesOutputDirectory)
  {
    MTLPipelineCollection::addLibrary(self->_pipelineCollection, v9);
  }

  return v9;
}

- (id)newLibraryWithSource:(id)a3 options:(id)a4 compilerTask:(id)a5 error:(id *)a6
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  libraryBuilder = self->_libraryBuilder;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62___MTLDevice_newLibraryWithSource_options_compilerTask_error___block_invoke;
  v14[3] = &unk_1E6EEB458;
  v14[5] = &v21;
  v14[6] = &v15;
  v14[4] = self;
  MTLLibraryBuilder::newLibraryWithSource(libraryBuilder, self, a3, a4, 1, a5, v14, v6);
  if (v22[5])
  {
    v10 = v16[5];
    if (v10)
    {
      _MTLCompilerWarningLog(v10);

      v16[5] = 0;
    }
  }

  v11 = v16[5];
  if (a6)
  {
    *a6 = v11;
  }

  else
  {
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

- (void)newLibraryWithSource:(id)a3 options:(id)a4 compilerTask:(id)a5 completionHandler:(id)a6
{
  libraryBuilder = self->_libraryBuilder;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___MTLDevice_newLibraryWithSource_options_compilerTask_completionHandler___block_invoke;
  v9[3] = &unk_1E6EEB480;
  v9[4] = a6;
  MTLLibraryBuilder::newLibraryWithSource(libraryBuilder, self, a3, a4, 0, a5, v9, v6);
}

- (void)registerRenderPipelineDescriptor:(id)a3
{
  if (![a3 meshFunction])
  {
    if ([(_MTLDevice *)self isCollectingPipelines])
    {
      MTLPipelineCollection::addRenderPipeline(self->_pipelineCollection, a3);
      if ((_dumpAtExit & 1) == 0)
      {

        [(_MTLDevice *)self dumpPipelineDescriptorsIfRequested];
      }
    }
  }
}

- (void)registerComputePipelineDescriptor:(id)a3
{
  if ([(_MTLDevice *)self isCollectingPipelines])
  {
    MTLPipelineCollection::addComputePipeline(self->_pipelineCollection, a3);
    if ((_dumpAtExit & 1) == 0)
    {

      [(_MTLDevice *)self dumpPipelineDescriptorsIfRequested];
    }
  }
}

- (void)registerTileRenderPipelineDescriptor:(id)a3
{
  if ([(_MTLDevice *)self isCollectingPipelines])
  {
    MTLPipelineCollection::addTileRenderPipeline(self->_pipelineCollection, a3);
    if ((_dumpAtExit & 1) == 0)
    {

      [(_MTLDevice *)self dumpPipelineDescriptorsIfRequested];
    }
  }
}

- (void)registerMeshRenderPipelineDescriptor:(id)a3
{
  if ([(_MTLDevice *)self isCollectingPipelines])
  {
    MTLPipelineCollection::addMeshRenderPipeline(self->_pipelineCollection, a3);
    if ((_dumpAtExit & 1) == 0)
    {

      [(_MTLDevice *)self dumpPipelineDescriptorsIfRequested];
    }
  }
}

- (unint64_t)optionsForPipelineLibrarySerialization
{
  if ([_MTLDevice optionsForPipelineLibrarySerialization]::onceToken != -1)
  {
    [_MTLDevice optionsForPipelineLibrarySerialization];
  }

  v2 = 9;
  if ([_MTLDevice optionsForPipelineLibrarySerialization]::serializeMetalScript == 1)
  {
    v2 = 17;
  }

  if ([_MTLDevice optionsForPipelineLibrarySerialization]::serializeMetalScript)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

- (void)startCollectingPipelineDescriptors
{
  if (!self->_pipelineCollection)
  {
    operator new();
  }

  self->_collectAllLibraries = 1;
}

- (void)startCollectingPipelineDescriptorsUsingPrefixForNames:(id)a3
{
  if (!a3)
  {
    [(_MTLDevice *)self startCollectingPipelineDescriptorsUsingPrefixForNames:a2, 0, v3, v4, v5, v6, v7, v12];
  }

  pipelineCollection = self->_pipelineCollection;
  if (!pipelineCollection)
  {
    [(_MTLDevice *)self startCollectingPipelineDescriptors];
    pipelineCollection = self->_pipelineCollection;
  }

  v11 = [a3 UTF8String];

  MTLPipelineCollection::setNamePrefix(pipelineCollection, v11);
}

- (void)startCollectingPipelineDescriptorsFromLibrary:(id)a3 filePath:(id)a4
{
  pipelineCollection = self->_pipelineCollection;
  if (!pipelineCollection)
  {
    operator new();
  }

  v5 = self->_pipelineCollection;

  MTLPipelineCollection::addLibrary(pipelineCollection, a3);
}

- (id)endCollectingPipelineDescriptors
{
  pipelineCollection = self->_pipelineCollection;
  if (!pipelineCollection)
  {
    MTLReportFailure(0, "[_MTLDevice endCollectingPipelineDescriptors]", 3018, @"startCollectingPipelineDescriptors was not called", v2, v3, v4, v5, v11);
    pipelineCollection = self->_pipelineCollection;
  }

  v8 = MTLPipelineCollection::JSONData(pipelineCollection);
  self->_collectAllLibraries = 0;
  v9 = self->_pipelineCollection;
  if (v9)
  {
    MTLPipelineCollection::~MTLPipelineCollection(v9);
    MEMORY[0x1865FF210]();
    self->_pipelineCollection = 0;
  }

  return v8;
}

- (void)dumpPipelineDescriptorsIfRequested
{
  pipelineDescriptorsOutputFile = self->_pipelineDescriptorsOutputFile;
  if (pipelineDescriptorsOutputFile)
  {
    pipelineCollection = self->_pipelineCollection;
    if (pipelineCollection)
    {
      MTLPipelineCollection::writeJSONToFile(pipelineCollection, pipelineDescriptorsOutputFile);
      librariesOutputDirectory = self->_librariesOutputDirectory;
      if (librariesOutputDirectory)
      {
        v6 = self->_pipelineCollection;

        MTLPipelineCollection::dumpLibraries(v6, librariesOutputDirectory);
      }
    }
  }
}

- (id)newBinaryLibraryWithOptions:(unint64_t)a3 url:(id)a4 error:(id *)a5
{
  v9 = objc_opt_new();
  [v9 setOptions:a3];
  [v9 setUrl:a4];
  v10 = [(_MTLDevice *)self newBinaryArchiveWithDescriptor:v9 error:a5];

  return v10;
}

- (id)newBinaryArchiveWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = [_MTLBinaryArchive alloc];

  return [(_MTLBinaryArchive *)v7 initWithDevice:self descriptor:a3 error:a4];
}

- (id)newDynamicLibraryError:(unint64_t)a3 message:(id)a4
{
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObject:a4 forKey:*MEMORY[0x1E696A578]];
  v6 = objc_alloc(MEMORY[0x1E696ABC0]);

  return [v6 initWithDomain:@"MTLBinaryArchiveDomain" code:a3 userInfo:v5];
}

- (BOOL)validateDynamicLibraryURL:(id)a3 error:(id *)a4
{
  if ([(_MTLDevice *)self supportsDynamicLibraries]|| [(_MTLDevice *)self supportsStatefulDynamicLibraries])
  {
    if (a3)
    {
      return 1;
    }

    if (a4)
    {
      v8 = @"URL for dynamic library is nil";
      v9 = self;
      v10 = 1;
LABEL_9:
      v11 = [(_MTLDevice *)v9 newDynamicLibraryError:v10 message:v8];
      result = 0;
      *a4 = v11;
      return result;
    }
  }

  else if (a4)
  {
    v8 = @"Device does not support dynamic libraries.";
    v9 = self;
    v10 = 5;
    goto LABEL_9;
  }

  return 0;
}

- (BOOL)validateDynamicLibrary:(id)a3 state:(BOOL)a4 error:(id *)a5
{
  v7 = self;
  if (a4)
  {
    if ([(_MTLDevice *)self supportsStatefulDynamicLibraries])
    {
LABEL_5:
      v8 = [a3 type];
      result = v8 == 1;
      if (a5 && v8 != 1)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = @"MTLLibraryTypeExecutable";
        }

        if (a3)
        {
          v10 = @"null";
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a library with type MTLLibraryTypeDynamic, found invalid type: %@", v10];
        goto LABEL_15;
      }

      return result;
    }

    self = v7;
  }

  if ([(_MTLDevice *)self supportsDynamicLibraries])
  {
    goto LABEL_5;
  }

  if (a5)
  {
    v11 = @"Device does not support dynamic libraries.";
LABEL_15:
    v12 = [(_MTLDevice *)v7 newDynamicLibraryError:5 message:v11];
    result = 0;
    *a5 = v12;
    return result;
  }

  return 0;
}

- (BOOL)validateDynamicLibraryDescriptor:(id)a3 error:(id *)a4
{
  v7 = [a3 url] != 0;
  if ((v7 ^ ([a3 library] != 0)))
  {
    if ((![a3 library] || (v8 = -[_MTLDevice validateDynamicLibrary:state:error:](self, "validateDynamicLibrary:state:error:", objc_msgSend(a3, "library"), 0, a4))) && (!objc_msgSend(a3, "url") || (v8 = -[_MTLDevice validateDynamicLibraryURL:error:](self, "validateDynamicLibraryURL:error:", objc_msgSend(a3, "url"), a4))))
    {
      LOBYTE(v8) = 1;
    }
  }

  else if (a4)
  {
    v9 = [(_MTLDevice *)self newDynamicLibraryError:5 message:@"Invalid descriptor. Dynamic library must be created from a URL or a MTLLibrary"];
    LOBYTE(v8) = 0;
    *a4 = v9;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)newDynamicLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  if (![_MTLDevice validateDynamicLibraryDescriptor:"validateDynamicLibraryDescriptor:error:" error:?])
  {
    return 0;
  }

  return [(_MTLDevice *)self _newDynamicLibraryWithDescriptor:a3 computeDescriptor:0 error:a4];
}

- (id)_newDynamicLibraryWithDescriptor:(id)a3 computeDescriptor:(id)a4 error:(id *)a5
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v9 = [(_MTLDevice *)self compiler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71___MTLDevice__newDynamicLibraryWithDescriptor_computeDescriptor_error___block_invoke;
  v13[3] = &unk_1E6EEB4A8;
  v13[6] = &v14;
  v13[7] = &v20;
  v13[4] = a3;
  v13[5] = self;
  v13[8] = a5;
  [(MTLCompiler *)v9 compileDynamicLibraryWithDescriptor:a3 computePipelineDescriptor:a4 completionHandler:v13];
  v10 = v15[5];
  if (a5)
  {
    *a5 = v15[5];
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

- (id)newDynamicLibrary:(id)a3 error:(id *)a4
{
  if (![(_MTLDevice *)self validateDynamicLibrary:a3 state:0 error:a4])
  {
    return 0;
  }

  v7 = objc_opt_new();
  [v7 setLibrary:a3];
  v8 = [(_MTLDevice *)self _newDynamicLibraryWithDescriptor:v7 computeDescriptor:0 error:a4];

  return v8;
}

- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5
{
  if (![(_MTLDevice *)self validateDynamicLibrary:a3 state:1 error:?])
  {
    return 0;
  }

  v9 = objc_opt_new();
  [v9 setLibrary:a3];
  v10 = [(_MTLDevice *)self _newDynamicLibraryWithDescriptor:v9 computeDescriptor:a4 error:a5];

  return v10;
}

- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (![(_MTLDevice *)self validateDynamicLibraryURL:a3 error:a5])
  {
    return 0;
  }

  v9 = [_MTLDynamicLibrary alloc];

  return [(_MTLDynamicLibrary *)v9 initWithURL:a3 device:self options:a4 error:a5];
}

- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4
{
  v7 = objc_alloc_init(MTLComputePipelineDescriptor);
  [(MTLComputePipelineDescriptor *)v7 setComputeFunction:a3];
  v8 = [(_MTLDevice *)self newComputePipelineStateWithDescriptor:v7 error:a4];

  return v8;
}

- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = objc_alloc_init(MTLComputePipelineDescriptor);
  [v10[5] setComputeFunction:a3];
  v7 = v10[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___MTLDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke;
  v8[3] = &unk_1E6EEB4D0;
  v8[4] = a4;
  v8[5] = &v9;
  [(_MTLDevice *)self newComputePipelineStateWithDescriptor:v7 completionHandler:v8];
  _Block_object_dispose(&v9, 8);
}

- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v11 = objc_alloc_init(MTLComputePipelineDescriptor);
  [(MTLComputePipelineDescriptor *)v11 setComputeFunction:a3];
  v12 = [(_MTLDevice *)self newComputePipelineStateWithDescriptor:v11 options:a4 reflection:a5 error:a6];

  return v12;
}

- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = objc_alloc_init(MTLComputePipelineDescriptor);
  [v12[5] setComputeFunction:a3];
  v9 = v12[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76___MTLDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v10[3] = &unk_1E6EEB4F8;
  v10[4] = a5;
  v10[5] = &v11;
  [(_MTLDevice *)self newComputePipelineStateWithDescriptor:v9 options:a4 completionHandler:v10];
  _Block_object_dispose(&v11, 8);
}

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  result = MTLLibraryBuilder::newLibraryWithCIFilters(self->_libraryBuilder, a3, a4, 0, a5);
  if (result)
  {
    v8 = result;
    v9 = [result newFunctionWithName:@"ciKernelMain"];
    v10 = [(_MTLDevice *)self newComputePipelineStateWithFunction:v9 error:a5];

    return v10;
  }

  return result;
}

- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5
{
  libraryBuilder = self->_libraryBuilder;
  v7[0] = 0;
  v7[1] = 0;
  MTLLibraryBuilder::newLibraryWithDAG(libraryBuilder, a3, a4, a5, v7, 0, 0);
}

- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _MTLMessageContextBegin_(v16, "[_MTLDevice newLibraryWithStitchedDescriptor:error:]", 4122, self, 24, "Stitched Library with Descriptor Validation");
  if (validateMTLStitchedLibraryDescriptor(a3, v16, v6, v7, v8, v9, v10, v11))
  {
    v12 = newDAGStringFromFunctionGraphs([a3 functionGraphs], objc_msgSend(a3, "options"), v16);
    if (([v12 isEqualToString:&stru_1EF478240] & 1) == 0)
    {
      _MTLCreateStitchingScriptFromStichedLibraryDescriptor(a3);
    }
  }

  if (*&v16[0])
  {
    v13 = errorMessageFromContext(v16);
    if (a4)
    {
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:v13 forKey:*MEMORY[0x1E696A578]];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v14];
    }
  }

  _MTLMessageContextEnd(v16);
  return 0;
}

- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_(v13, "[_MTLDevice newLibraryWithStitchedDescriptor:completionHandler:]", 4152, self, 24, "Stitched Library with Descriptor Validation");
  if (validateMTLStitchedLibraryDescriptor(a3, v13, v6, v7, v8, v9, v10, v11) && ([newDAGStringFromFunctionGraphs(objc_msgSend(a3 "functionGraphs")] & 1) == 0)
  {
    _MTLCreateStitchingScriptFromStichedLibraryDescriptor(a3);
  }

  if (*&v13[0])
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", errorMessageFromContext(v13), *MEMORY[0x1E696A578])}];
  }

  else
  {
    v12 = 0;
  }

  _MTLMessageContextEnd(v13);
  (*(a4 + 2))(a4, 0, v12);
}

- (id)newLibraryWithStitchedDescriptor:(id)a3 destinationBinaryArchive:(id)a4 error:(id *)a5
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_(v17, "[_MTLDevice newLibraryWithStitchedDescriptor:destinationBinaryArchive:error:]", 4193, self, 24, "Stitched Library with Descriptor SPI Validation");
  if (validateMTLStitchedLibraryDescriptor(a3, v17, v7, v8, v9, v10, v11, v12))
  {
    v13 = newDAGStringFromFunctionGraphs([a3 functionGraphs], objc_msgSend(a3, "options"), v17);
    if (([v13 isEqualToString:&stru_1EF478240] & 1) == 0)
    {
      _MTLCreateStitchingScriptFromStichedLibraryDescriptor(a3);
    }
  }

  if (*&v17[0])
  {
    v14 = errorMessageFromContext(v17);
    if (a5)
    {
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:v14 forKey:*MEMORY[0x1E696A578]];
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v15];
    }
  }

  _MTLMessageContextEnd(v17);
  return 0;
}

- (id)newDagStringWithGraphs:(id)a3
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  _MTLMessageContextBegin_(v6, "[_MTLDevice newDagStringWithGraphs:]", 4258, self, 24, "New Dag String With Graphs Validation");
  v4 = newDAGStringFromFunctionGraphs(a3, 0, v6);
  _MTLMessageContextEnd(v6);
  return v4;
}

+ (BOOL)featureProfile:(unint64_t)a3 supportsFeatureSet:(unint64_t)a4
{
  switch(a4)
  {
    case 0uLL:
    case 2uLL:
    case 5uLL:
    case 8uLL:
    case 0xCuLL:
      v4 = 0;
      v5 = 1;
      break;
    case 1uLL:
    case 3uLL:
    case 6uLL:
    case 9uLL:
    case 0xDuLL:
      v5 = 1;
      v4 = 1;
      break;
    case 4uLL:
    case 7uLL:
    case 0xAuLL:
    case 0xEuLL:
      v5 = 1;
      v4 = 4;
      break;
    case 0xBuLL:
    case 0xFuLL:
      v5 = 1;
      v4 = 5;
      break;
    case 0x10uLL:
      v5 = 1;
      v4 = 6;
      break;
    case 0x11uLL:
      v5 = 1;
      v4 = 7;
      break;
    case 0x12uLL:
      v5 = 1;
      v4 = 8;
      break;
    default:
      v5 = 0;
      v4 = 0xFFFFFFFFLL;
      break;
  }

  return v4 <= a3 && v5;
}

- (BOOL)deviceOrFeatureProfileSupportsFeatureSet:(unint64_t)a3
{
  if ([(_MTLDevice *)self deviceSupportsFeatureSet:?])
  {
    return 1;
  }

  v6 = MTLGetGPUFamilyFromFeatureSet(a3);

  return [(_MTLDevice *)self supportsFamily:v6];
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v6 newRenderPipelineStateWithDescriptor:a3 options:0 reflection:0 error:a4 completionHandler:0];
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v10 newRenderPipelineStateWithDescriptor:a3 options:a4 reflection:a5 error:a6 completionHandler:0];
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(_MTLDevice *)self compiler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___MTLDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v7[3] = &unk_1E6EEB548;
  v7[4] = a4;
  [(MTLCompiler *)v6 newRenderPipelineStateWithDescriptor:a3 options:0 reflection:0 error:0 completionHandler:v7];
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(_MTLDevice *)self compiler];

  [(MTLCompiler *)v8 newRenderPipelineStateWithDescriptor:a3 options:a4 reflection:0 error:0 completionHandler:a5];
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v6 newComputePipelineStateWithDescriptor:a3 options:0 reflection:0 error:a4 completionHandler:0];
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = [(_MTLDevice *)self compiler];

  return [(MTLCompiler *)v10 newComputePipelineStateWithDescriptor:a3 options:a4 reflection:a5 error:a6 completionHandler:0];
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(_MTLDevice *)self compiler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___MTLDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v7[3] = &unk_1E6EEB570;
  v7[4] = a4;
  [(MTLCompiler *)v6 newComputePipelineStateWithDescriptor:a3 options:0 reflection:0 error:0 completionHandler:v7];
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(_MTLDevice *)self compiler];

  [(MTLCompiler *)v8 newComputePipelineStateWithDescriptor:a3 options:a4 reflection:0 error:0 completionHandler:a5];
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  if (a6)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Tile render pipelines are not supported on this device" forKey:{*MEMORY[0x1E696A578], a5}];
    *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v7];
  }

  return 0;
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Tile render pipelines are not supported on this device" forKey:*MEMORY[0x1E696A578]];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v6];
  v8 = *(a5 + 2);

  v8(a5, 0, 0, v7);
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 error:(id *)a4
{
  result = [a3 newRenderPipelineDescriptorWithDevice:self error:?];
  if (result)
  {
    v7 = result;
    v8 = [(_MTLDevice *)self newRenderPipelineStateWithDescriptor:result error:a4];

    return v8;
  }

  return result;
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  result = [a3 newRenderPipelineDescriptorWithDevice:self error:a6];
  if (result)
  {
    v11 = result;
    v12 = [(_MTLDevice *)self newRenderPipelineStateWithDescriptor:result options:a4 reflection:a5 error:a6];

    return v12;
  }

  return result;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 completionHandler:(id)a4
{
  v8 = 0;
  v6 = [a3 newRenderPipelineDescriptorWithDevice:self error:&v8];
  if (v6)
  {
    v7 = v6;
    [(_MTLDevice *)self newRenderPipelineStateWithDescriptor:v6 completionHandler:a4];
  }

  else
  {
    (*(a4 + 2))(a4, 0, v8);
  }
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v10 = 0;
  v8 = [a3 newRenderPipelineDescriptorWithDevice:self error:&v10];
  if (v8)
  {
    v9 = v8;
    [(_MTLDevice *)self newRenderPipelineStateWithDescriptor:v8 options:a4 completionHandler:a5];
  }

  else
  {
    (*(a5 + 2))(a5, 0, 0, v10);
  }
}

- (char)getComputeFunctionId:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 compilerOptionsSize:(unint64_t)a6
{
  v8 = [(_MTLDevice *)self getComputeFunctionId:a3 compilerOptions:a5 compilerOptionsSize:a6];
  if (([(MTLCompiler *)[(_MTLDevice *)self compiler] compilerFlags]& 0x40) == 0)
  {
    v12 = 0;
    v13 = 0;
    _MTLGetSerializedVertexFormat(a3, &v13, &v12, 0);
    if (v12)
    {
      v9 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, v13, v12);
      CC_SHA256_Update(&c, v8, 0x20u);
      CC_SHA256_Final(v9, &c);
      free(v13);
      free(v8);
      return v9;
    }
  }

  return v8;
}

- (char)getVertexFunctionId:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 compilerOptionsSize:(unint64_t)a6 compiledFragmentVariant:(id)a7
{
  v11 = [(_MTLDevice *)self getVertexFunctionId:a3 compilerOptions:a5 compilerOptionsSize:a6 compiledFragmentVariant:a7];
  v12 = [(MTLCompiler *)[(_MTLDevice *)self compiler] compilerFlags];
  v13 = [a4 patchType];
  v14 = 24;
  if (!v13)
  {
    v14 = 4;
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  if ((v14 & v12) != 0)
  {
    _MTLGetSerializedVertexFormat(a3, &v21, &v20 + 1, 0);
  }

  *&v20 = 0;
  v15 = [a7 inputInfoAndSize:&v20];
  if (v20 == 0)
  {
    return v11;
  }

  v17 = v15;
  v16 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  CC_SHA256_Init(&v19);
  if (v20)
  {
    CC_SHA256_Update(&v19, v17, v20);
  }

  if (*(&v20 + 1))
  {
    CC_SHA256_Update(&v19, v21, DWORD2(v20));
  }

  CC_SHA256_Update(&v19, v11, 0x20u);
  CC_SHA256_Final(v16, &v19);
  if (*(&v20 + 1))
  {
    free(v21);
  }

  free(v11);
  return v16;
}

- (void)getVertexFunctionDriverData:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 nextStageVariant:(id)a6 driverDataSize:(unint64_t *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  return 0;
}

- (void)getObjectFunctionDriverData:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 nextStageVariant:(id)a6 driverDataSize:(unint64_t *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  return 0;
}

- (void)getMeshFunctionDriverData:(const void *)a3 function:(id)a4 compilerOptions:(char *)a5 nextStageVariant:(id)a6 driverDataSize:(unint64_t *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  return 0;
}

- (void)freeVertexFunctionDriverData:(void *)a3 vertexFunctionDriverDataSize:(unint64_t)a4
{
  if (a3)
  {
    free(a3);
  }
}

- (void)freeObjectFunctionDriverData:(void *)a3 objectFunctionDriverDataSize:(unint64_t)a4
{
  if (a3)
  {
    free(a3);
  }
}

- (void)freeMeshFunctionDriverData:(void *)a3 meshFunctionDriverDataSize:(unint64_t)a4
{
  if (a3)
  {
    free(a3);
  }
}

- (id)newComputeVariantWithCompilerOutput:(id)a3 pipelineStatisticsOutput:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(_MTLDevice *)self computeVariantWithCompilerOutput:a3 pipelineStatisticsOutput:a4];
  objc_autoreleasePoolPop(v7);
  return v8;
}

- (id)newFragmentVariantWithCompilerOutput:(id)a3 pipelineStatisticsOutput:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(_MTLDevice *)self fragmentVariantWithCompilerOutput:a3 pipelineStatisticsOutput:a4];
  objc_autoreleasePoolPop(v7);
  return v8;
}

- (id)newVertexVariantWithCompilerOutput:(id)a3 pipelineStatisticsOutput:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(_MTLDevice *)self vertexVariantWithCompilerOutput:a3 pipelineStatisticsOutput:a4];
  objc_autoreleasePoolPop(v7);
  return v8;
}

- (id)newComputePipelineWithDescriptor:(id)a3 variant:(id)a4 errorMessage:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
    result = [(_MTLDevice *)self newComputePipelineWithDescriptor:a3 variant:a4];
    if (!result)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating compute variant"];
      result = 0;
      *a5 = v8;
    }
  }

  else
  {

    return [(_MTLDevice *)self newComputePipelineWithDescriptor:a3 variant:a4];
  }

  return result;
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forTileVariant:(id)a6
{
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forTileVariant:(id)a7
{
  *a6 = 8;
  *a5 = 0;
  *a3 = 0;
  *a4 = 0;
  [_MTLDevice getConstantSamplersBitmasks:"getConstantSamplersBitmasks:uniqueIdentifiers:constantSamplerCount:forTileVariant:" uniqueIdentifiers:? constantSamplerCount:? forTileVariant:?];
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forVertexVariant:(id)a6 fragmentVariant:(id)a7
{
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forVertexVariant:(id)a7 fragmentVariant:(id)a8
{
  *a6 = 8;
  *a5 = 0;
  *a3 = 0;
  *a4 = 0;
  [_MTLDevice getConstantSamplersBitmasks:"getConstantSamplersBitmasks:uniqueIdentifiers:constantSamplerCount:forVertexVariant:fragmentVariant:" uniqueIdentifiers:? constantSamplerCount:? forVertexVariant:? fragmentVariant:?];
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forComputeVariant:(id)a6
{
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forComputeVariant:(id)a7
{
  *a6 = 8;
  *a5 = 0;
  *a3 = 0;
  *a4 = 0;
  [_MTLDevice getConstantSamplersBitmasks:"getConstantSamplersBitmasks:uniqueIdentifiers:constantSamplerCount:forComputeVariant:" uniqueIdentifiers:? constantSamplerCount:? forComputeVariant:?];
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 forObjectVariant:(id)a6 meshVariant:(id)a7 fragmentVariant:(id)a8
{
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
}

- (void)getConstantSamplersBitmasks:(unint64_t *)a3 uniqueIdentifiers:(unint64_t *)a4 constantSamplerCount:(unint64_t *)a5 stride:(unsigned int *)a6 forObjectVariant:(id)a7 meshVariant:(id)a8 fragmentVariant:(id)a9
{
  *a6 = 8;
  *a5 = 0;
  *a3 = 0;
  *a4 = 0;
  [_MTLDevice getConstantSamplersBitmasks:"getConstantSamplersBitmasks:uniqueIdentifiers:constantSamplerCount:forObjectVariant:meshVariant:fragmentVariant:" uniqueIdentifiers:? constantSamplerCount:? forObjectVariant:? meshVariant:? fragmentVariant:?];
}

- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)a3
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  MTLPixelFormatGetInfoForDevice(self, a3, v14);
  v3 = dyld_program_sdk_at_least();
  v11 = BYTE8(v14[0]);
  if (v3 && (BYTE8(v14[0]) & 1) == 0)
  {
    MTLReportFailure(0, "[_MTLDevice minimumLinearTextureAlignmentForPixelFormat:]", 5513, @"%s is not supported on this device.", v7, v8, v9, v10, *&v14[0]);
    v11 = BYTE8(v14[0]);
    if ((WORD4(v14[0]) & 0x400) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((WORD4(v14[0]) & 0x400) == 0)
  {
    goto LABEL_4;
  }

  MTLReportFailure(0, "[_MTLDevice minimumLinearTextureAlignmentForPixelFormat:]", 5514, @"Linear textures do not support compressed pixel formats", v7, v8, v9, v10, v13);
  v11 = BYTE8(v14[0]);
LABEL_4:
  if ((v11 & 0x60) != 0)
  {
    [(_MTLDevice *)v3 minimumLinearTextureAlignmentForPixelFormat:v4, v5, v6, v7, v8, v9, v10];
  }

  return 64;
}

- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)a3
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  MTLPixelFormatGetInfoForDevice(self, a3, v12);
  if (dyld_program_sdk_at_least() && (BYTE8(v12[0]) & 1) == 0)
  {
    [(_MTLDevice *)v12 minLinearTextureAlignmentForPixelFormat:v4, v5, v6, v7, v8, v9, v10];
  }

  return [(_MTLDevice *)self deviceLinearTextureAlignmentBytes];
}

- (id)newLogStateWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = [_MTLLogState alloc];

  return [(_MTLLogState *)v7 initWithDevice:self descriptor:a3 error:a4];
}

- (id)newCommandQueue
{
  v3 = objc_alloc_init(MTLCommandQueueDescriptor);

  return [(_MTLDevice *)self newCommandQueueWithDescriptor:v3];
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3
{
  v5 = objc_alloc_init(MTLCommandQueueDescriptor);
  [(MTLCommandQueueDescriptor *)v5 setMaxCommandBufferCount:a3];

  return [(_MTLDevice *)self newCommandQueueWithDescriptor:v5];
}

- (void)_decrementAcquireCount
{
  if (!MTLAtomicDecrement(&self->_acquireCount))
  {

    [(_MTLDevice *)self _purgeDevice];
  }
}

- (void)getDefaultSamplePositions:(id *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v6 = [(_MTLDevice *)self supportsTextureSampleCount:a4];
  if (v6)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(_MTLDevice *)v4 getDefaultSamplePositions:v7 count:v8, v9, v10, v11, v12, v13];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(_MTLDevice *)v6 getDefaultSamplePositions:v7 count:v8, v9, v10, v11, v12, v13, v16];
LABEL_3:
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v14 = &_defaultSamplePositions_1;
    }

    else
    {
      if (v4 != 2)
      {
        return;
      }

      v14 = &_defaultSamplePositions_2;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        v14 = &_defaultSamplePositions_4;
        break;
      case 8:
        v14 = &_defaultSamplePositions_8;
        break;
      case 16:
        v14 = &_defaultSamplePositions_16;
        break;
      default:
        return;
    }
  }

  do
  {
    v15 = *v14++;
    *a3++ = v15;
    --v4;
  }

  while (v4);
}

- (id)newArgumentEncoderWithArguments:(id)a3 structType:(id *)a4
{
  if ([a3 count])
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    [(_MTLDevice *)0 newArgumentEncoderWithArguments:v7 structType:v8, v9, v10, v11, v12, v13, v18];
    if (!a3)
    {
      return 0;
    }
  }

  if (![a3 count])
  {
    return 0;
  }

  v14 = MTLCreateStructTypeFromArgumentDescriptors(a3);
  v15 = [(_MTLDevice *)self newIndirectArgumentBufferLayoutWithStructType:v14];
  [v15 setStructType:v14 withDevice:self];
  if (a4)
  {
    *a4 = v14;
  }

  else
  {
  }

  v16 = [(_MTLDevice *)self newArgumentEncoderWithLayout:v15];

  return v16;
}

- (id)newArgumentEncoderWithBufferBinding:(id)a3
{
  v5 = -[_MTLDevice newIndirectArgumentBufferLayoutWithStructType:](self, "newIndirectArgumentBufferLayoutWithStructType:", [a3 bufferStructType]);
  [v5 setStructType:objc_msgSend(a3 withDevice:{"bufferStructType"), self}];
  v6 = [(_MTLDevice *)self newArgumentEncoderWithLayout:v5];

  return v6;
}

- (id)newEventWithOptions:(int64_t)a3
{
  if (a3)
  {
    return [(_MTLDevice *)self newSharedEventWithOptions:?];
  }

  else
  {
    return [(_MTLDevice *)self newEvent];
  }
}

- (id)newSharedEventWithOptions:(int64_t)a3
{
  v4 = [_MTLSharedEvent alloc];

  return [(_MTLSharedEvent *)v4 initWithOptions:a3];
}

- (id)newSharedEventWithHandle:(id)a3
{
  v4 = [_MTLSharedEvent alloc];

  return [(_MTLSharedEvent *)v4 initWithSharedEventHandle:a3];
}

- (id)newIOCommandQueueWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [_MTLIOCommandQueue alloc];

  return [(_MTLIOCommandQueue *)v6 initWithDevice:self descriptor:a3];
}

- (id)newIOFileHandleWithURL:(id)a3 error:(id *)a4
{
  if (![a3 isFileURL])
  {
    if (a4)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v10];
    }

    return 0;
  }

  if (![a3 checkResourceIsReachableAndReturnError:a4])
  {
    return 0;
  }

  v7 = [_MTLIOHandleRaw alloc];
  v8 = [a3 fileSystemRepresentation];

  return [(_MTLIOHandleRaw *)v7 initWithDevice:self path:v8 error:a4 uncached:0];
}

- (id)newIOFileHandleWithURL:(id)a3 compressionMethod:(int64_t)a4 error:(id *)a5
{
  if (![a3 isFileURL])
  {
    if (a5)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v12];
    }

    return 0;
  }

  if (![a3 checkResourceIsReachableAndReturnError:a5])
  {
    return 0;
  }

  v9 = [_MTLIOHandleCompressed alloc];
  v10 = [a3 fileSystemRepresentation];

  return [(_MTLIOHandleCompressed *)v9 initWithDevice:self path:v10 compressionType:a4 error:a5 uncached:0];
}

- (id)newUncachedIOFileHandleWithURL:(id)a3 error:(id *)a4
{
  if (![a3 isFileURL])
  {
    if (a4)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v10];
    }

    return 0;
  }

  if (![a3 checkResourceIsReachableAndReturnError:a4])
  {
    return 0;
  }

  v7 = [_MTLIOHandleRaw alloc];
  v8 = [a3 fileSystemRepresentation];

  return [(_MTLIOHandleRaw *)v7 initWithDevice:self path:v8 error:a4 uncached:1];
}

- (id)newUncachedIOFileHandleWithURL:(id)a3 compressionMethod:(int64_t)a4 error:(id *)a5
{
  if (![a3 isFileURL])
  {
    if (a5)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v12];
    }

    return 0;
  }

  if (![a3 checkResourceIsReachableAndReturnError:a5])
  {
    return 0;
  }

  v9 = [_MTLIOHandleCompressed alloc];
  v10 = [a3 fileSystemRepresentation];

  return [(_MTLIOHandleCompressed *)v9 initWithDevice:self path:v10 compressionType:a4 error:a5 uncached:1];
}

- (unint64_t)sparseTileSizeInBytesForSparsePageSize:(int64_t)a3
{
  if ((a3 - 101) > 2)
  {
    return 0;
  }

  else
  {
    return qword_185DE1C88[a3 - 101];
  }
}

- (id)newRasterizationRateMapWithDescriptor:(id)a3
{
  v11 = 0;
  v5 = [a3 layerPointer:&v11];
  v9 = 0uLL;
  v10 = 0;
  if (a3)
  {
    [a3 screenSize];
  }

  v7 = v9;
  v8 = v10;
  return [(_MTLDevice *)self newRasterizationRateMapWithScreenSize:&v7 layerCount:v11 layers:v5];
}

- (BOOL)isPlacementHeapSupported
{
  if ([(_MTLDevice *)self supportsFamily:1001])
  {
    return 1;
  }

  return [(_MTLDevice *)self supportsFamily:2002];
}

- (void)convertSparsePixelRegions:(id *)a3 toTileRegions:(id *)a4 withTileSize:(id *)a5 alignmentMode:(unint64_t)a6 numRegions:(unint64_t)a7
{
  if (a5->var1 * a5->var0 * a5->var2)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    p_var1 = &a3->var1;
    v9 = &a4->var1;
    while (a6 != 1)
    {
      if (!a6)
      {
        var0 = a5->var0;
        var1 = a5->var1;
        v12 = p_var1[-1].var1 / var1;
        v9[-1].var0 = p_var1[-1].var0 / a5->var0;
        v9[-1].var1 = v12;
        v13 = p_var1[-1].var1;
        var2 = a5->var2;
        v15 = (var0 + p_var1->var0 + p_var1[-1].var0 % var0 - 1) / var0;
        v9[-1].var2 = p_var1[-1].var2 / var2;
        v9->var0 = v15;
        v16 = p_var1->var2;
        v9->var1 = (var1 + p_var1->var1 + v13 % var1 - 1) / var1;
        v17 = (var2 + v16 + p_var1[-1].var2 % var2 - 1) / var2;
LABEL_10:
        v9->var2 = v17;
      }

      p_var1 += 2;
      v9 += 2;
      if (!--a7)
      {
        return;
      }
    }

    v18 = a5->var0;
    v19 = a5->var1;
    v20 = (p_var1[-1].var0 + a5->var0 - 1) / a5->var0;
    v21 = (p_var1[-1].var1 + v19 - 1) / v19;
    v9[-1].var0 = v20;
    v9[-1].var1 = v21;
    v22 = a5->var2;
    v23 = p_var1[-1].var1;
    v24 = (p_var1[-1].var2 + v22 - 1) / v22;
    v25 = (p_var1[-1].var0 - v20 * v18 + p_var1->var0) / v18;
    v9[-1].var2 = v24;
    v9->var0 = v25;
    v26 = p_var1->var2;
    v9->var1 = (v23 - v21 * v19 + p_var1->var1) / v19;
    v17 = (p_var1[-1].var2 - v24 * v22 + v26) / v22;
    goto LABEL_10;
  }
}

- (void)convertSparseTileRegions:(id *)a3 toPixelRegions:(id *)a4 withTileSize:(id *)a5 numRegions:(unint64_t)a6
{
  if (a6)
  {
    p_var1 = &a3->var1;
    v7 = &a4->var1;
    do
    {
      var0 = a5->var0;
      var1 = a5->var1;
      v10 = var1 * p_var1[-1].var1;
      v7[-1].var0 = a5->var0 * p_var1[-1].var0;
      v7[-1].var1 = v10;
      v11 = p_var1->var0 * var0;
      var2 = a5->var2;
      v7[-1].var2 = var2 * p_var1[-1].var2;
      v7->var0 = v11;
      v13 = p_var1->var2 * var2;
      v7->var1 = p_var1->var1 * var1;
      v7->var2 = v13;
      p_var1 += 2;
      v7 += 2;
      --a6;
    }

    while (a6);
  }
}

- (BOOL)supportsRaytracing
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation]|| ![(_MTLDevice *)self argumentBuffersSupport])
  {
    return 0;
  }

  return [(_MTLDevice *)self supportsFunctionPointers];
}

- (unint64_t)latestSupportedGenericBVHVersion
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    return 260;
  }

  else
  {
    return 259;
  }
}

- (MTLGPUBVHBuilder)GPUBVHBuilder
{
  result = self->_GPUBVHBuilder;
  if (!result)
  {
    os_unfair_lock_lock(&self->_GPUBVHBuilderLock);
    if (!self->_GPUBVHBuilder)
    {
      self->_GPUBVHBuilder = [[MTLGPUBVHBuilder alloc] initWithDevice:self];
    }

    os_unfair_lock_unlock(&self->_GPUBVHBuilderLock);
    return self->_GPUBVHBuilder;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)a3
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_opt_class();
    if ([v9 isSubclassOfClass:objc_opt_class()])
    {
      if ([a4 instanceDescriptorType] == 2 || objc_msgSend(a4, "instanceDescriptorType") == 4)
      {
        v10 = 56 * [a4 instanceCount];
      }

      else
      {
        v10 = 24 * [a4 instanceCount];
      }
    }

    else
    {
      v12 = objc_opt_class();
      if ([v12 isSubclassOfClass:objc_opt_class()])
      {
        v13 = [a4 instanceDescriptorType];
        v14 = [a4 maxInstanceCount];
        if (v13 == 4)
        {
          v10 = 56 * v14;
        }

        else
        {
          v10 = 24 * v14;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    v15 = MTLBVHDescriptorForMTLAccelerationStructureDescriptor(a4);
    v16 = [(_MTLDevice *)self GPUBVHBuilder];
    v17 = [(MTLGPUBVHBuilder *)v16 getGenericBVHSizeForDescriptor:v15];
    v18 = [(MTLGPUBVHBuilder *)v16 getBuildScratchBufferSizeForDescriptor:v15]+ 256;
    v19 = [(MTLGPUBVHBuilder *)v16 getMTLSWBVHSizeForDescriptor:a4 bvhDescriptor:v15]+ 256;
    v20 = [(MTLGPUBVHBuilder *)v16 getEncodeMTLSWBVHScratchBufferSizeForDescriptor:a4 bvhDescriptor:v15]+ 256;
    v21 = [(MTLGPUBVHBuilder *)v16 getRefitScratchBufferSizeForDescriptor:a4 bvhDescriptor:v15];
    if (v18 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    v23 = (v17 + ((v10 + ((v22 + 255) & 0xFFFFFFFFFFFFFF00) + 255) & 0xFFFFFFFFFFFFFF00) + 511) & 0xFFFFFFFFFFFFFF00;
    if (v23 <= v20)
    {
      v23 = v20;
    }

    retstr->var0 = v19;
    retstr->var1 = v23;
    retstr->var2 = (v21 + 511) & 0xFFFFFFFFFFFFFF00;

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    result = [(_MTLDevice *)self doesNotRecognizeSelector:a3];
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  if (self)
  {
    [(_MTLDevice *)self accelerationStructureSizesWithDescriptor:a3];
  }

  return [(_MTLDevice *)self newAccelerationStructureWithSize:0];
}

- (BOOL)isCompatibleWithAccelerationStructure:(id)a3
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v6 = [(_MTLDevice *)self GPUBVHBuilder];

    return [(MTLGPUBVHBuilder *)v6 isCompatibleWithAccelerationStructure:a3];
  }

  else
  {
    [(_MTLDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (void)deserializePrimitiveAccelerationStructureFromBytes:(const void *)a3 toBuffer:(id)a4 forAccelerationStructure:(id)a5
{
  v7 = [a4 contents];
  memcpy(v7, a3 + 24, *(a3 + 2));
  v7[16] = [a5 accelerationStructureUniqueIdentifier];
}

- (void)deserializeInstanceAccelerationStructureFromBytes:(const void *)a3 toBuffer:(id)a4 primitiveAccelerationStructures:(id)a5 forAccelerationStructure:(id)a6
{
  v9 = [a4 contents];
  v10 = a3 + 24;
  memcpy(v9, a3 + 24, *(a3 + 2));
  v11 = *(a3 + 14);
  v12 = *(a3 + 16);
  v13 = *(a3 + 52);
  v24 = *(a3 + 27);
  v14 = [a4 contents];
  if (v11)
  {
    v15 = (v14 + v9[13]);
    v16 = &v10[v12];
    do
    {
      v17 = *v16;
      v16 += 4;
      v18 = [objc_msgSend(a5 objectAtIndexedSubscript:{v17), "buffer"}];
      v19 = [objc_msgSend(a5 objectAtIndexedSubscript:{v17), "bufferOffset"}];
      *v15++ = [v18 gpuAddress] + v19;
      --v11;
    }

    while (v11);
  }

  v20 = [a4 contents];
  if (v13)
  {
    v21 = &v10[v24];
    v22 = (v20 + v9[24]);
    do
    {
      v23 = *v21;
      v21 += 4;
      *v22++ = [objc_msgSend(a5 objectAtIndexedSubscript:{v23), "gpuResourceID"}];
      --v13;
    }

    while (v13);
  }

  v9[16] = [a6 accelerationStructureUniqueIdentifier];
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)a3 withDescriptor:(id)a4
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation:a3])
  {
    [(_MTLDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }

  v7 = [(_MTLDevice *)self newBufferWithLength:*(a3 + 2) options:0];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(_MTLDevice *)self newAccelerationStructureWithBuffer:v7 offset:0];
  [(_MTLDevice *)self deserializePrimitiveAccelerationStructureFromBytes:a3 toBuffer:v8 forAccelerationStructure:v9];

  return v9;
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)a3 primitiveAccelerationStructures:(id)a4 withDescriptor:(id)a5
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation:a3])
  {
    [(_MTLDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }

  v9 = [(_MTLDevice *)self newBufferWithLength:*(a3 + 2) options:0];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(_MTLDevice *)self newAccelerationStructureWithBuffer:v9 offset:0];

  [(_MTLDevice *)self deserializeInstanceAccelerationStructureFromBytes:a3 toBuffer:v10 primitiveAccelerationStructures:a4 forAccelerationStructure:v11];
  return v11;
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBytes:(const void *)a4 withDescriptor:(id)a5
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation:a3])
  {
    v9 = [a3 buffer];

    [(_MTLDevice *)self deserializePrimitiveAccelerationStructureFromBytes:a4 toBuffer:v9 forAccelerationStructure:a3];
  }

  else
  {

    [(_MTLDevice *)self doesNotRecognizeSelector:a2];
  }
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 fromBytes:(const void *)a4 primitiveAccelerationStructures:(id)a5 withDescriptor:(id)a6
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation:a3])
  {
    v11 = [a3 buffer];

    [(_MTLDevice *)self deserializeInstanceAccelerationStructureFromBytes:a4 toBuffer:v11 primitiveAccelerationStructures:a5 forAccelerationStructure:a3];
  }

  else
  {

    [(_MTLDevice *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setPluginData:(id)a3
{
  pluginData = self->_pluginData;
  if (pluginData != a3)
  {

    self->_pluginData = [a3 copy];
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)a3
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v6 = [(_MTLDevice *)self heapBufferSizeAndAlignWithLength:a3 options:32];
  }

  else
  {
    [(_MTLDevice *)self doesNotRecognizeSelector:a2];
    v7 = 0;
    v6 = 0;
  }

  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)a3
{
  if (self)
  {
    [(_MTLDevice *)self accelerationStructureSizesWithDescriptor:a3];
  }

  v4 = [(_MTLDevice *)self heapAccelerationStructureSizeAndAlignWithSize:0];
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (id)newPerformanceStateAssertion:(int64_t)a3 error:(id *)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Device does not support performance state assertion feature";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLPerformanceStateAssertionDomain" code:1 userInfo:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)lookupRecompiledBinaryArchive:(id)a3
{
  if (self->_isFirstParty || !self->_enableAssetUpgraderDaemon || self->_isPlugin)
  {
    return 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___MTLDevice_lookupRecompiledBinaryArchive___block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  if ([_MTLDevice lookupRecompiledBinaryArchive:]::onceToken != -1)
  {
    dispatch_once(&[_MTLDevice lookupRecompiledBinaryArchive:]::onceToken, block);
  }

  if (!self->_recompiledBinaryArchiveMap)
  {
    return 0;
  }

  v5 = [(_MTLDevice *)self targetDeviceArchitecture];
  v6 = MTLResolveFileURL(a3);
  v7 = v6;
  v8 = 0;
  if (v6 && v5)
  {
    recompiledBinaryArchiveMap = self->_recompiledBinaryArchiveMap;
    std::string::basic_string[abi:ne200100]<0>(__p, [v6 fileSystemRepresentation]);
    [(MTLTargetDeviceArchitecture *)v5 cpuType];
    [(MTLTargetDeviceArchitecture *)v5 subType];
    MTLArchiveMapDB::read(recompiledBinaryArchiveMap, __p, v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = v18;
    v11 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v10 = v17[1];
    }

    if (v10)
    {
      v12 = objc_alloc(MEMORY[0x1E695DFF8]);
      if ((v18 & 0x80u) == 0)
      {
        v13 = v17;
      }

      else
      {
        v13 = v17[0];
      }

      v8 = [v12 initFileURLWithPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v13, 4)}];
      v11 = v18;
    }

    else
    {
      v8 = 0;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(v17[0]);
    }
  }

  return v8;
}

- (void)recordBinaryArchiveUsage:(id)a3
{
  if (!self->_isFirstParty && self->_enableAssetUpgraderDaemon && !self->_isPlugin)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___MTLDevice_recordBinaryArchiveUsage___block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = self;
    if ([_MTLDevice recordBinaryArchiveUsage:]::onceToken != -1)
    {
      dispatch_once(&[_MTLDevice recordBinaryArchiveUsage:]::onceToken, block);
    }

    if (self->_binaryArchiveUsage)
    {
      v5 = [(_MTLDevice *)self targetDeviceArchitecture];
      v6 = MTLResolveFileURL(a3);
      v7 = v6;
      if (a3 && v5)
      {
        binaryArchiveUsage = self->_binaryArchiveUsage;
        std::string::basic_string[abi:ne200100]<0>(__p, [v6 fileSystemRepresentation]);
        MTLArchiveUsageDB::store(binaryArchiveUsage, __p, [(MTLTargetDeviceArchitecture *)v5 cpuType], [(MTLTargetDeviceArchitecture *)v5 subType], 0);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

- (id)architecture
{
  result = self->_architecture;
  if (!result)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26___MTLDevice_architecture__block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = self;
    dispatch_sync(serialQueue, block);
    return self->_architecture;
  }

  return result;
}

- (id)getMostCompatibleArchitecture:(id)a3
{
  v3 = [[MTLArchitecture alloc] initWithCPUType:0 cpuSubtype:0];

  return v3;
}

- (void)getCompilerConnectionManager:(int)a3
{
  v9 = self;
  v8 = a3;
  if (a3 == 32024)
  {
    p_initConnectionOnceToken = &self->_initConnectionOnceToken;
    v6 = &v9;
    v7 = &v8;
    if (atomic_load_explicit(p_initConnectionOnceToken, memory_order_acquire) != -1)
    {
      v11 = &v6;
      v10 = &v11;
      v4 = std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice getCompilerConnectionManager:]::$_3 &&>>;
      goto LABEL_7;
    }
  }

  else
  {
    if (a3 != 32023)
    {
      abort();
    }

    p_initConnectionOnceToken = &self->_initConnectionOnceToken;
    v6 = &v9;
    v7 = &v8;
    if (atomic_load_explicit(p_initConnectionOnceToken, memory_order_acquire) != -1)
    {
      v11 = &v6;
      v10 = &v11;
      v4 = std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice getCompilerConnectionManager:]::$_2 &&>>;
LABEL_7:
      std::__call_once(&p_initConnectionOnceToken->__state_, &v10, v4);
    }
  }

  return v9->_compilerConnectionManager;
}

- (unint64_t)maximumConcurrentCompilationTaskCount
{
  if ([_MTLDevice maximumConcurrentCompilationTaskCount]::onceToken != -1)
  {
    [_MTLDevice maximumConcurrentCompilationTaskCount];
  }

  result = [_MTLDevice maximumConcurrentCompilationTaskCount]::environmentOverride;
  if (![_MTLDevice maximumConcurrentCompilationTaskCount]::environmentOverride)
  {
    v4 = [(_MTLDevice *)self getCompilerConnectionManager:_MTLGetMTLCompilerLLVMVersionForDevice(self)];
    if (v4)
    {
      v5 = v4;
      v6 = (*(*v4 + 56))(v4);
      LODWORD(result) = (*(*v5 + 64))(v5) * v6;
    }

    else
    {
      LODWORD(result) = MTLGetDefaultCompilerProcessesCount();
    }

    return result;
  }

  return result;
}

- (unint64_t)maxAccelerationStructureTraversalDepth
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation])
  {
    return 0;
  }

  maxAccelerationStructureLevels = self->_limits.maxAccelerationStructureLevels;

  return [MTLGPUBVHBuilder getMaxAccelerationStructureTraversalDepth:maxAccelerationStructureLevels];
}

- (id)newResidencySetWithDescriptor:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v6 = [(_MTLDevice *)self allocResidencySet];
  if ([v6 initWithDevice:self descriptor:a3])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (id)newArchiveWithURL:(id)a3 error:(id *)a4
{
  v6 = [[_MTL4Archive alloc] initWithDevice:self];
  if (![(_MTL4Archive *)v6 loadFromURL:a3 error:a4])
  {

    return 0;
  }

  return v6;
}

- (id)newPipelineDataSetSerializerWithDescriptor:(id)a3
{
  v5 = [_MTL4PipelineDataSetSerializer alloc];

  return [(_MTL4PipelineDataSetSerializer *)v5 initWithDevice:self descriptor:a3];
}

- (id)newLibraryWithMPSGraphPackageURL:(id)a3 name:(id)a4 error:(id *)a5
{
  MPSGraphClassByName = getMPSGraphClassByName("MPSGraphExecutable");
  v9 = getMPSGraphClassByName("MPSGraphExecutableReflection");
  v10 = _MTLNewMPSGraphCompilationDescriptor(0);
  v11 = [[MPSGraphClassByName alloc] initWithMPSGraphPackageAtURL:a3 compilationDescriptor:v10];

  if (v9)
  {
    v15 = 0;
    v9 = [[v9 alloc] initWithMPSGraphPackage:a3 error:&v15];
  }

  if (v11)
  {
    v12 = [[_MTLMLLibrary alloc] initWithDevice:self executable:v11 url:a3 reflection:v9];
    if (v9)
    {
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"failed to open MPSGraph package" forKey:*MEMORY[0x1E696A578]];
    v12 = 0;
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLLibraryErrorDomain" code:6 userInfo:v13];
  }

  return v12;
}

- (BOOL)loadLibrariesRecursive:(id)a3 dylibs:(id *)a4 insertLibraries:(id)a5 options:(unint64_t)a6 error:(id *)a7
{
  v34 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [objc_msgSend(a3 "library")];
    if (v13)
    {
      v14 = v13;
      v15 = [(_MTLDevice *)self loadDynamicLibrariesForFunction:v13 insertLibraries:a5 options:a6 error:a7];

      if (v15)
      {
        [*a4 addObjectsFromArray:v15];

LABEL_5:
        LOBYTE(v16) = 1;
LABEL_23:
        v27 = *MEMORY[0x1E69E9840];
        return v16;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in library", objc_msgSend(a3, "name")];
      if (a7)
      {
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObject:v24 forKey:*MEMORY[0x1E696A578]];
        v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"DylibLoading" code:5 userInfo:v25];
        LOBYTE(v16) = 0;
        *a7 = v26;
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 functionGraph];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = [a3 functionDescriptors];
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
LABEL_13:
        v23 = 0;
        while (1)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v16 = [(_MTLDevice *)self loadLibrariesRecursive:*(*(&v29 + 1) + 8 * v23) dylibs:a4 insertLibraries:a5 options:a6 error:a7];
          if (!v16)
          {
            goto LABEL_23;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
            LOBYTE(v16) = 1;
            if (v21)
            {
              goto LABEL_13;
            }

            goto LABEL_23;
          }
        }
      }

      goto LABEL_5;
    }

LABEL_22:
    LOBYTE(v16) = 0;
    goto LABEL_23;
  }

  v17 = [a3 functionDescriptor];
  v18 = *MEMORY[0x1E69E9840];

  LOBYTE(v16) = [(_MTLDevice *)self loadLibrariesRecursive:v17 dylibs:a4 insertLibraries:a5 options:a6 error:a7];
  return v16;
}

- (id)loadDynamicLibrariesForFunctionDescriptor:(id)a3 insertLibraries:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![(_MTLDevice *)self loadLibrariesRecursive:a3 dylibs:&v14 insertLibraries:a4 options:a5 error:a6])
  {
    return 0;
  }

  v11 = objc_alloc(MEMORY[0x1E695DEC8]);
  v12 = [v11 initWithArray:v14];

  return v12;
}

- (int)defaultCompilerProcessesCount
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___MTLDevice_defaultCompilerProcessesCount__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  if ([_MTLDevice defaultCompilerProcessesCount]::onceToken != -1)
  {
    dispatch_once(&[_MTLDevice defaultCompilerProcessesCount]::onceToken, block);
  }

  return [_MTLDevice defaultCompilerProcessesCount]::ret;
}

- (int)maximumCompilerProcessesCount
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___MTLDevice_maximumCompilerProcessesCount__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  if ([_MTLDevice maximumCompilerProcessesCount]::onceToken != -1)
  {
    dispatch_once(&[_MTLDevice maximumCompilerProcessesCount]::onceToken, block);
  }

  return [_MTLDevice maximumCompilerProcessesCount]::ret;
}

- (int)threadsPerCompilerProcess
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___MTLDevice_threadsPerCompilerProcess__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  if ([_MTLDevice threadsPerCompilerProcess]::onceToken != -1)
  {
    dispatch_once(&[_MTLDevice threadsPerCompilerProcess]::onceToken, block);
  }

  return [_MTLDevice threadsPerCompilerProcess]::ret;
}

- (id)newLibraryWithFunctionArray:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    [(_MTLDevice(MTLDeviceInternal) *)self newLibraryWithFunctionArray:a2 error:0, a4, v4, v5, v6, v7, v25];
  }

  if ([a3 count])
  {
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(_MTLDevice(MTLDeviceInternal) *)0 newLibraryWithFunctionArray:v11 error:v12, v13, v14, v15, v16, v17, v25];
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if ([a3 count])
  {
    libraryBuilder = self->_libraryBuilder;

    return MTLLibraryBuilder::newLibraryWithFunctionArray(libraryBuilder, self, a3, a4, v18, v19, v20, v21);
  }

LABEL_10:
  if (a4)
  {
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Array cannot be nil or emty" forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v24];
  }

  return 0;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)a3
{
  [(_MTLDevice *)self doesNotRecognizeSelector:a2];
  v3 = 0;
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

@end