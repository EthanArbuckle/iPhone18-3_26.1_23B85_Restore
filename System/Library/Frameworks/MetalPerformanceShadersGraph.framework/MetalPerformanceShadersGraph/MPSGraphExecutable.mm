@interface MPSGraphExecutable
+ (MPSGraphExecutable)executableWithMLIRSourceFromURL:(id)a3 executableDescriptor:(id)a4 error:(id *)a5;
+ (MPSGraphExecutable)executableWithMPSGraphPackageAtURL:(id)a3 compilationDescriptor:(id)a4 error:(id *)a5;
+ (id)executablesWithMLIRSourceForMultipleModules:(id)a3 executableDescriptor:(id)a4 regionNames:(id)a5;
+ (void)executablesWithMLIRSourceForMultipleModules:executableDescriptor:regionNames:;
+ (void)prepareExecDescriptorAndRuntimeSpecialization:(id)a3 device:(id)a4 executableExecutionDescriptor:(id)a5;
- (BOOL)checkSpecializationValidForSingleEntry;
- (BOOL)isExecutableForFeeds:(id)a3 targetTensors:(id)a4 targetOperations:(id)a5 compilationDescriptor:(id)a6;
- (BOOL)sendANEStreamingSessionSignal:(id)a3 sessionDescriptor:(id)a4 report:(id)a5;
- (FuncOp)getEntryFuncOpForModule:(ModuleOp)a3;
- (MPSGraphExecutable)initWithCoreMLPackage:(id)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithCoreMLPackageAtURL:(id)a3 compilationDescriptor:(id)a4;
- (MPSGraphExecutable)initWithGraph:(id)a3 device:(id)a4 feeds:(id)a5 targetTensors:(id)a6 targetOperations:(id)a7 executableDescriptor:(id)a8;
- (MPSGraphExecutable)initWithMILProgram:(void *)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithMILProgramWithURL:(id)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithMLIRBytecode:(id)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithMLIRCommon:()unique_ptr<llvm:(std:(id)a4 :(id *)a5 default_delete<llvm::MemoryBuffer>>)a3 :MemoryBuffer executableDescriptor:error:;
- (MPSGraphExecutable)initWithMLIRCoreML:(StringRef)a3 executableDescriptor:(id)a4 error:(id *)a5;
- (MPSGraphExecutable)initWithMLIRModule:(ModuleOp)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithMLIRSource:(id)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithMLIRSourceFromURL:(id)a3 executableDescriptor:(id)a4;
- (MPSGraphExecutable)initWithMPSGraphPackageAtURL:(NSURL *)mpsgraphPackageURL compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor;
- (MPSGraphExecutable)initWithMPSGraphPackageAtURL:(id)a3 adapterExecutable:(id)a4 compilationDescriptor:(id)a5;
- (MPSGraphExecutable)initWithMPSGraphPackageAtURLCommon:(id)a3 compilationDescriptor:(id)a4 error:(id *)a5;
- (MPSGraphExecutable)initWithSpecializedMLIRModule:(ModuleOp)a3 device:(id)a4 shapedEntryPoint:(id)a5 compilationDescriptor:(id)a6 executableDescriptor:(id)a7;
- (MPSGraphExecutableCacheValue)specializeWithDevice:(MPSGraphExecutableCacheValue *__return_ptr)retstr shapedEntryPoint:compilationDescriptor:;
- (MPSGraphModuleKey)getDeviceCacheKeyForEntryPoint:(SEL)a3 device:(id)a4 compilationDescriptor:(id)a5;
- (MPSGraphModuleKey)getDeviceCacheKeyForTransformedEntryPoint:(SEL)a3 device:(id)a4 compilationDescriptor:(id)a5;
- (MPSGraphModuleKey)getDeviceCacheKeyForTransformedEntryPointImpl:(SEL)a3 deviceDescriptor:(id)a4 compilationDescriptor:(id)a5;
- (NSArray)encodeToCommandBuffer:(MPSCommandBuffer *)commandBuffer inputsArray:(NSArray *)inputsArray resultsArray:(NSArray *)resultsArray executionDescriptor:(MPSGraphExecutableExecutionDescriptor *)executionDescriptor;
- (NSArray)getOutputTypesWithDevice:(MPSGraphDevice *)device inputTypes:(NSArray *)inputTypes compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor;
- (NSArray)runAsyncWithMTLCommandQueue:(id)commandQueue inputsArray:(NSArray *)inputsArray resultsArray:(NSArray *)resultsArray executionDescriptor:(MPSGraphExecutableExecutionDescriptor *)executionDescriptor;
- (NSArray)runWithMTLCommandQueue:(id)commandQueue inputsArray:(NSArray *)inputsArray resultsArray:(NSArray *)resultsArray executionDescriptor:(MPSGraphExecutableExecutionDescriptor *)executionDescriptor;
- (OwningOpRef<mlir::ModuleOp>)cloneForFeeds:(id)a3 targetTensors:(id)a4 targetOperations:(id)a5;
- (ReturnOp)returnOpForFunctionInModule:(ModuleOp)a3;
- (SmallVector<MPSGraphExecutableCacheValue,)specializedModuleWithDevice:(MPSGraphExecutable *)self shapedEntryPoints:(SEL)a3 compilationDescriptor:(id)a4 error:(id)a5;
- (__n128)getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:;
- (id).cxx_construct;
- (id)allocateTensorDataTargetsForDevice:(id)a3 shapedEntryPoint:(id)a4;
- (id)applyOptionsToEntryPoint:(id)a3 compilationDescriptor:(id)a4;
- (id)createMLIRLibraryWithMPSGraphPackage:(id)a3 packageKey:(id)a4 appendOptimizedModules:(BOOL)a5;
- (id)debugDescription;
- (id)emitObjCToURL:(id)a3 test:(BOOL)a4;
- (id)emitViewerSPI;
- (id)emitViewerSPIWithDevice:(id)a3 inputShapes:(id)a4 compilationDescriptor:(id)a5;
- (id)encodeWithMPSCommandBuffer:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6;
- (id)functionNames;
- (id)getDataFilesFromMPSGraphPackageAtURLCommon:(id)a3 error:(id *)a4;
- (id)getDefaultEntryPointWithShapes:(id)a3;
- (id)getFunctionReflectionData;
- (id)getIR;
- (id)getInputShapes;
- (id)getInputShapesForFuncOp:(FuncOp)a3;
- (id)getInputShapesForFunction:(id)a3;
- (id)getInputShapesForFunction:(id)a3 error:(id *)a4;
- (id)getOperationsToVisitForOperation:(id)a3 visitedOperations:(id)a4;
- (id)getOutputShapes;
- (id)getOutputShapesForFuncOp:(FuncOp)a3;
- (id)getOutputShapesForFunction:(id)a3;
- (id)getOutputTypesWithDevice:(id)a3 entryPoint:(id)a4 compilationDescriptor:(id)a5;
- (id)getOutputTypesWithDevice:(id)a3 shapedEntryPoint:(id)a4 compilationDescriptor:(id)a5;
- (id)getStateInputPositionsWithEntryFunctionName:(id)a3;
- (id)getTargetShapesForDevice:(id)a3 inputsArray:(id)a4;
- (id)getTensorDataArraysWithDevice:(id)a3 feedsDictionary:(id)a4 resultsDictionary:(id)a5 inputsArray:(id)a6 resultsArray:(id)a7 executableExecutionDescriptor:(id)a8;
- (id)initializeWithMLIRModule:(ModuleOp)a3 executableDescriptor:(id)a4;
- (id)inputNamesForFuncOp:(FuncOp)a3;
- (id)inputNamesForFunction:(id)a3;
- (id)lazyInitWithModuleURL:(id)a3 executableDescriptor:(id)a4 callablesDescription:(id)a5 moduleResourcesLoader:(shared_ptr<ModuleResourcesLoader>)a6;
- (id)newExecutableWithDevice:(id)a3 inputsArray:(id)a4 intermediateOperations:(id)a5 executionDescriptor:(id)a6;
- (id)optimizedBytecode:(id)a3 inputShapes:(id)a4 compilationDescriptor:(id)a5;
- (id)optimizedBytecodeForAllExistingSpecializations;
- (id)outputNamesForFuncOp:(FuncOp)a3;
- (id)outputNamesForFunction:(id)a3;
- (id)resourceBlob:(id)a3 resourceName:(id)a4 error:(id *)a5;
- (id)runAsyncWithCommandQueue:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6;
- (id)runAsyncWithDevice:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6;
- (id)runInternalWithDevice:(id)a3 commandBuffer:(id)a4 feeds:(id)a5 results:(id)a6 executableExecutionDescriptor:(id)a7 mpsGraphOwnedCommandBuffer:(BOOL)a8;
- (id)runInternalWithDevice:(id)a3 commandBuffer:(id)a4 feedsDictionary:(id)a5 resultsDictionary:(id)a6 executableExecutionDescriptor:(id)a7 mpsGraphOwnedCommandBuffer:(BOOL)a8;
- (id)runWithDevice:(id)a3 inputsArray:(id)a4 intermediateOperations:(id)a5 resultsArray:(id)a6 executionDescriptor:(id)a7;
- (id)runWithDevice:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6;
- (id)runWithMTLCommandQueue:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5;
- (uint64_t)applyOptimizationPassesWithDevice:(uint64_t)a1 module:(uint64_t)a2 compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:;
- (uint64_t)applyOptimizationPassesWithDevice:(uint64_t)a1 module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:;
- (uint64_t)applyOptimizationPassesWithDevice:module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:;
- (uint64_t)getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:;
- (uint64_t)initWithMPSGraphPackageAtURLCommon:compilationDescriptor:error:;
- (uint64_t)optimizeOriginalModule;
- (unint64_t)getOptimizedModuleCacheSize;
- (unint64_t)getOptimizedModulesSize;
- (unint64_t)getOptimizedNoDeviceModuleCacheSize;
- (unint64_t)getOptimizedNoDeviceModulesSize;
- (unint64_t)getResourcesTotalSize;
- (unint64_t)getTotalANEJITCompilations;
- (vector<mlir::NamedAttribute,)getAttributesFromDescriptors:(MPSGraphExecutable *)self context:(SEL)a3 deviceDescriptor:(id)a4;
- (vector<mlir::Type,)convertMPSGraphShapesToMLIRTypes:(MPSGraphExecutable *)self;
- (vector<mlir::Type,)convertMPSGraphShapesToMLIRTypes:(MPSGraphExecutable *)self funcOp:(SEL)a3 compilationDescriptor:(id)a4;
- (void)allCommonSetup;
- (void)aneRegionOpsHashSet:;
- (void)aneRegionOpsHashSet:(void *)a3;
- (void)applyEntryPointToSymbolAndFileNameMap:(id)a3 device:(id)a4 compilationDescriptor:(id)a5;
- (void)applyInputTypes:(const void *)a3 toFunction:(FuncOp)a4;
- (void)applyOptimizationPassesWithDevice:(id)a3 module:(ModuleOp)a4 compilationID:(unint64_t)a5 compilationDescriptor:(id)a6 perEntryPointFuncOpMLIRName:(const void *)a7;
- (void)applyOptimizationPassesWithDevice:(uint64_t)a1 module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:;
- (void)checkCallablesForModule:(void *)a3;
- (void)commonPostInit:()unique_ptr<InMemoryModuleRef;
- (void)commonPreInitWithDescriptor:(id)a3;
- (void)createMLIRLibraryWithMPSGraphPackage:packageKey:appendOptimizedModules:;
- (void)createMetalPackageAtURL:(id)a3 descriptor:(id)a4;
- (void)dealloc;
- (void)dump;
- (void)dumpArrayOfTensorData:(id)a3 basePath:(id)a4 separator:(id)a5 invocationCount:(unint64_t)a6;
- (void)dumpCompiledProducts;
- (void)dumpModuleWithEV:(ModuleOp)a3;
- (void)emitObjUnitTestToUrl:(id)a3;
- (void)emitViewerSPIToURL:(id)a3;
- (void)getNewRuntimeForDevice:(id)a3 specializedModule:(void *)a4 shapedEntryPoints:(id)a5 compilationDescriptor:(id)a6;
- (void)getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:;
- (void)getRuntimeSpecializationAndEntryFunction:(id)a3 shapedEntryPoint:(id)a4 perEntryPointToSymbolAndFileNameMap:(id)a5 entryFuncOp:(void *)a6 runtime:(BaseRuntime *)a7;
- (void)initializeFuncNamesInOriginalModule;
- (void)newExecutableWithDevice:inputsArray:intermediateOperations:executionDescriptor:;
- (void)optimizeOriginalModule;
- (void)serializeOptimizedBytecode:(ModuleOp)a3 :(id)a4 :(id)a5;
- (void)serializeToMPSGraphPackageAtURL:(NSURL *)url descriptor:(MPSGraphExecutableSerializationDescriptor *)descriptor;
- (void)specializeForMultipleInputTypesWithDevice:(id)a3 multipleInputTypes:(id)a4 compilationDescriptor:(id)a5;
- (void)specializeWithDevice:(MPSGraphDevice *)device inputTypes:(NSArray *)inputTypes compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor;
- (void)specializeWithDevice:(id)a3 entryPoints:(id)a4 compilationDescriptor:(id)a5;
- (void)specializeWithDevice:(id)a3 entryPoints:(id)a4 compilationDescriptor:(id)a5 error:(id *)a6;
- (void)specializeWithDevice:(id)a3 inputShapes:(id)a4 compilationDescriptor:(id)a5;
- (void)specializeWithDevice:(id)a3 shapedEntryPoints:(id)a4 compilationDescriptor:(id)a5 error:(id *)a6;
- (void)specializedModuleWithDevice:(void *)a1 shapedEntryPoints:compilationDescriptor:error:;
- (void)specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:;
- (void)unloadEntryPointToSymbolAndFileNameMap:(id)a3 device:(id)a4 compilationDescriptor:(id)a5;
@end

@implementation MPSGraphExecutable

- (void)allCommonSetup
{
  if (*(self + 34))
  {
    loadCommonMPSDialectsInContext(*(self + 34));
  }

  operator new();
}

void __36__MPSGraphExecutable_allCommonSetup__block_invoke(mlir *a1)
{
  mlir::registerAsmPrinterCLOptions(a1);

  ParseEnvironmentOptions("main", "MPSGRAPH_MLIR_CL", "");
}

- (void)commonPreInitWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:v6];
  v8 = *(self + 94);
  *(self + 94) = v7;

  *(self + 93) = arc4random();
  *(self + 95) = 0;
  *(self + 204) = 0;
  *(self + 103) = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = *(self + 101);
  *(self + 101) = v9;

  *(self + 97) = 0;
  v11 = [v4 compilationDescriptor];
  if (v11 && ([v4 compilationDescriptor], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "dispatchQueue"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v13))
  {
    v14 = [v4 compilationDescriptor];
    v15 = [v14 dispatchQueue];
    v16 = *(self + 73);
    *(self + 73) = v15;

    if (!v4)
    {
LABEL_4:
      v17 = objc_opt_new();
      v18 = *(self + 46);
      *(self + 46) = v17;

      v19 = *(self + 47);
      *(self + 47) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = dispatch_queue_create("MPSGraphExecutable_queue", 0);
    v21 = *(self + 73);
    *(self + 73) = v20;

    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v22 = [v4 compilationDescriptor];
  v23 = [v22 copy];
  v24 = *(self + 46);
  *(self + 46) = v23;

  v19 = [v4 perDeviceDescriptorCompilationOptions];
  v25 = [v19 copy];
  v26 = *(self + 47);
  *(self + 47) = v25;

LABEL_7:
  if ([MPSGraphExecutable commonPreInitWithDescriptor:]::onceToken == -1)
  {
    if (byte_1EED2BC58 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  dispatch_once(&[MPSGraphExecutable commonPreInitWithDescriptor:]::onceToken, &__block_literal_global_473);
  if (byte_1EED2BC58 == 1)
  {
LABEL_9:
    *(self + 116) |= 2uLL;
  }

LABEL_10:
  *(self + 852) = byte_1EED2BC59;
  overrideCompilationDescriptorWithEV(*(self + 46));
  v27 = qword_1EED2BC68;
  *(self + 96) = off_1EED2BC60;
  objc_storeStrong(self + 98, v27);
  objc_storeStrong(self + 99, qword_1EED2BC70);
  *(self + 100) = qword_1EED2BC78;
  *(self + 832) = byte_1EED2BC80;
  if (byte_1EED2BC97 == 1)
  {
    v28 = byte_1EED2BC96;
  }

  else
  {
    v28 = [*(self + 46) compilerOptions] & 0x80;
  }

  *(self + 837) = v28 != 0;
  *(self + 838) = byte_1EED2BC98;
  *(self + 839) = byte_1EED2BC99;
  *(self + 107) = dword_1EED2BC9C;
  *(self + 840) = byte_1EED2BC9A;
  if (byte_1EED2BCA4)
  {
    v29 = 1;
  }

  else
  {
    v29 = [*(self + 46) printANEPlacementAnalysis];
  }

  *(self + 841) = v29;
  *(self + 842) = byte_1EED2BCB8;
  *(self + 843) = byte_1EED2BCB9;
  *(self + 844) = byte_1EED2BCBB;
  *(self + 845) = byte_1EED2BCBC;
  *(self + 846) = byte_1EED2BCBD;
  *(self + 850) = byte_1EED2BCF1;
  *(self + 851) = byte_1EED2BCF2;
  *(self + 853) = byte_1EED2BCF3;
  if (HIBYTE(word_1EED2BC5A) == 1 && !word_1EED2BC5A && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (byte_1EED2BC81 == 1 && !word_1EED2BC5A && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (word_1EED2BC90 == 1 && !word_1EED2BC5A && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (byte_1EED2BC92 == 1 && !word_1EED2BC5A && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v30 = NSTemporaryDirectory();
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = @"/tmp/";
  }

  v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v33 = [v32 bundleIdentifier];

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@/mpsgraph-%d-%@-%lu", v31, v33, getpid(), *(self + 94), *(self + 93)];
  v35 = *(self + 115);
  *(self + 115) = v34;

  v52 = 0;
  if ([*(self + 101) fileExistsAtPath:*(self + 115) isDirectory:&v52])
  {
    if ((v52 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v45 = *(self + 115);
      v44 = [0 localizedFailureReason];
      v46 = [v44 cStringUsingEncoding:4];
      v47 = [0 localizedDescription];
      v49 = v46;
      v50 = [v47 cStringUsingEncoding:4];
      v48 = v45;
      MTLReportFailure();

      v36 = 0;
      goto LABEL_32;
    }

    v36 = 0;
  }

  else
  {
    v37 = *(self + 101);
    v38 = *(self + 115);
    v51 = 0;
    v39 = [v37 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:0 error:&v51];
    v40 = v51;
    v36 = v40;
    if ((v39 & 1) == 0)
    {
      v41 = [v40 localizedFailureReason];
      v42 = [v41 cStringUsingEncoding:4];
      v43 = [v36 localizedDescription];
      NSLog(&cfstr_ErrorCreatingD.isa, v42, [v43 cStringUsingEncoding:4]);

      v44 = *(self + 115);
      *(self + 115) = 0;
LABEL_32:
    }
  }

  [(MPSGraphExecutable *)self allCommonSetup:v48];
}

char *__50__MPSGraphExecutable_commonPreInitWithDescriptor___block_invoke()
{
  if (getenv("MPSGRAPH_LOG_INFO"))
  {
    byte_1EED2BC58 = 1;
    puts("MPSGRAPH_LOG_INFO EV is set.");
  }

  if (getenv("MPSGRAPH_LOG_PASS_TIMINGS"))
  {
    byte_1EED2BC59 = 1;
    puts("MPSGRAPH_LOG_PASS_TIMINGS EV is set.");
  }

  v0 = getenv("MPSGRAPH_COMPILER_STITCHING");
  if (v0)
  {
    word_1EED2BC5A = 257;
    v1 = atoi(v0);
    if (!v1)
    {
      byte_1EED2BC5C = 1;
    }

    printf("MPSGRAPH_COMPILER_STITCHING EV is set to %d.\n", v1);
  }

  v2 = getenv("MPSGRAPH_DISABLE_TYPE_INFERENCE");
  if (v2)
  {
    word_1EED2BC5A = 257;
    byte_1EED2BC5D = atoi(v2) != 0;
    puts("MPSGRAPH_DISABLE_TYPE_INFERENCE EV is set.");
  }

  if (getenv("MPSGRAPH_USE_COMMON_CANONICALIZATION_PASS"))
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCA2 = 1;
    puts("MPSGRAPH_USE_COMMON_CANONICALIZATION_PASS EV is set.");
  }

  if (getenv("MPSGRAPH_RUN_F32_TO_F16_PASS"))
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCA3 = 1;
    puts("MPSGRAPH_RUN_F32_TO_F16_PASS EV is set.");
  }

  v3 = getenv("MPSGRAPH_ANE_SPATIAL_SPLITTING");
  if (v3)
  {
    byte_1EED2BC81 = 1;
    LOBYTE(word_1EED2BC5A) = 1;
    qword_1EED2BC88 = atoll(v3);
    printf("MPSGRAPH_ANE_SPATIAL_SPLITTING EV is set to %llu.\n", qword_1EED2BC88);
  }

  if (getenv("MPSGRAPH_ENABLE_ANE_FW_TO_FW_SIGNAL"))
  {
    LOBYTE(word_1EED2BC5A) = 1;
    word_1EED2BC90 = 257;
    puts("MPSGRAPH_ENABLE_ANE_FW_TO_FW_SIGNAL EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_ANE_FW_TO_FW_SIGNAL"))
  {
    LOBYTE(word_1EED2BC5A) = 1;
    word_1EED2BC90 = 1;
    puts("MPSGRAPH_DISABLE_ANE_FW_TO_FW_SIGNAL EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_ANE_LATE_LATCH"))
  {
    LOBYTE(word_1EED2BC5A) = 1;
    byte_1EED2BC92 = 1;
    byte_1EED2BC94 = 1;
    puts("MPSGRAPH_ENABLE_ANE_FW_TO_FW_SIGNAL EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_ANE_LATE_LATCH"))
  {
    LOBYTE(word_1EED2BC5A) = 1;
    byte_1EED2BC92 = 1;
    byte_1EED2BC94 = 0;
    puts("MPSGRAPH_DISABLE_ANE_FW_TO_FW_SIGNAL EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_CHW_RANK_PROMOTION"))
  {
    LOBYTE(word_1EED2BC5A) = 1;
    byte_1EED2BC93 = 1;
    byte_1EED2BC95 = 1;
    puts("MPSGRAPH_ENABLE_CHW_RANK_PROMOTION EV is set.");
  }

  v4 = getenv("MPSGRAPH_DUMP_MODULE");
  if (v4)
  {
    off_1EED2BC60 = atoll(v4);
    puts("MPSGRAPH_DUMP_MODULE EV is set.");
  }

  v5 = getenv("MPSGRAPH_DUMP_MODULE_FILE_PATH");
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    v8 = qword_1EED2BC68;
    qword_1EED2BC68 = v7;

    printf("MPSGRAPH_DUMP_MODULE_FILE_PATH EV is set to %s.\n", v6);
  }

  v9 = getenv("MPSGRAPH_DUMP_COMPILED_PRODUCTS_PATH");
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    v12 = qword_1EED2BC70;
    qword_1EED2BC70 = v11;

    printf("MPSGRAPH_DUMP_COMPILED_PRODUCTS_PATH EV is set to %s.\n", v10);
  }

  v13 = getenv("MPSGRAPH_DUMP_FEEDS_RESULTS");
  if (v13)
  {
    qword_1EED2BC78 = atoll(v13);
    puts("MPSGRAPH_DUMP_FEEDS_RESULTS EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_CC"))
  {
    byte_1EED2BC80 = 0;
    puts("MPSGRAPH_DISABLE_CC EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_PROFILING_OP_NAMES"))
  {
    byte_1EED2BCA0 = 1;
    puts("MPSGRAPH_ENABLE_PROFILING_OP_NAMES EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_ENCODER_BREAKUP"))
  {
    byte_1EED2BCA1 = 1;
    puts("MPSGRAPH_ENABLE_ENCODER_BREAKUP EV is set.");
  }

  v14 = getenv("MPSGRAPH_PLACEMENT_PASS");
  if (v14)
  {
    byte_1EED2BC96 = atoi(v14) != 0;
    byte_1EED2BC97 = 1;
    printf("MPSGRAPH_PLACEMENT_PASS EV is set to %d.\n", byte_1EED2BC96);
  }

  v15 = getenv("MPSGRAPH_USE_COST_MODEL");
  if (v15)
  {
    byte_1EED2BC98 = atoi(v15) != 0;
    printf("MPSGRAPH_USE_COST_MODEL EV is set to %d.\n", byte_1EED2BC98);
  }

  if (getenv("MPSGRAPH_USE_OLD_COST_MODEL_PASS"))
  {
    byte_1EED2BC99 = 1;
    puts("MPSGRAPH_USE_OLD_COST_MODEL_PASS EV is set.");
  }

  v16 = getenv("MPSGRAPH_FORCE_DEVICE_PLACEMENT");
  if (v16)
  {
    dword_1EED2BC9C = atoi(v16);
    printf("MPSGRAPH_FORCE_DEVICE_PLACEMENT EV is set to %d.\n", dword_1EED2BC9C);
  }

  if (getenv("MPSGRAPH_PRINT_COST_MODEL"))
  {
    byte_1EED2BC9A = 1;
    puts("MPSGRAPH_PRINT_COST_MODEL EV is set.");
  }

  if (getenv("MPSGRAPH_PRINT_ANE_PLACEMENT_ANALYSIS"))
  {
    byte_1EED2BCA4 = 1;
    LOBYTE(word_1EED2BC5A) = 1;
    puts("MPSGRAPH_PRINT_ANE_PLACEMENT_ANALYSIS EV is set.");
  }

  v17 = getenv("MPSGRAPH_ANE_LIVEIO_LIMIT");
  if (v17)
  {
    *&xmmword_1EED2BCA8 = atoi(v17);
    printf("MPSGRAPH_ANE_LIVEIO_LIMIT EV is set to %lu.\n", xmmword_1EED2BCA8);
  }

  v18 = getenv("MPSGRAPH_ANE_REGION_OP_LIMIT");
  if (v18)
  {
    *(&xmmword_1EED2BCA8 + 1) = atoi(v18);
    printf("MPSGRAPH_ANE_REGION_OP_LIMIT EV is set to %lu.\n", *(&xmmword_1EED2BCA8 + 1));
  }

  if (getenv("MPSGRAPH_LEGACY_ANE_QUANTIZATION"))
  {
    byte_1EED2BCB8 = 1;
    puts("MPSGRAPH_LEGACY_ANE_QUANTIZATION EV is set.");
  }

  if (getenv("MPSGRAPH_KEEP_ANEC_UNIT_NAME_ATTRS"))
  {
    byte_1EED2BCB9 = 1;
    puts("MPSGRAPH_KEEP_ANEC_UNIT_NAME_ATTRS EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_GPU_QUANT_OPS"))
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCBA = 1;
    puts("MPSGRAPH_DISABLE_GPU_QUANT_OPS EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_PRE_ENCODE_TI"))
  {
    byte_1EED2BCBB = 1;
    puts("MPSGRAPH_DISABLE_PRE_ENCODE_TI EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_PRE_ENCODE_TI_READ_INPUTS"))
  {
    byte_1EED2BCBC = 1;
    puts("MPSGRAPH_ENABLE_PRE_ENCODE_TI_READ_INPUTS EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_RUNTIME_TI_VERIFIERS"))
  {
    byte_1EED2BCBD = 1;
    puts("MPSGRAPH_ENABLE_RUNTIME_TI_VERIFIERS EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_SDPA_GQA"))
  {
    byte_1EED2BCBE = 0;
    puts("MPSGRAPH_DISABLE_SDPA_GQA EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_GPU_REGIONS"))
  {
    byte_1EED2BCBF = 1;
    puts("MPSGRAPH_ENABLE_GPU_REGIONS EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_PARALLEL_ENCODE"))
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCC0 = 1;
    puts("MPSGRAPH_ENABLE_PARALLEL_ENCODE EV is set.");
  }

  v19 = getenv("MPSGRAPH_MIN_NUM_OPS_PER_PARALLEL_REGION");
  if (v19)
  {
    byte_1EED2BCC1 = 1;
    LOBYTE(word_1EED2BC5A) = 1;
    qword_1EED2BCC8 = atoi(v19);
    printf("MPSGRAPH_MIN_NUM_OPS_PER_PARALLEL_REGION EV is set to %llu.\n", qword_1EED2BCC8);
  }

  v20 = getenv("MPSGRAPH_MAX_NUM_PARALLEL_REGIONS");
  if (v20)
  {
    byte_1EED2BCD0 = 1;
    LOBYTE(word_1EED2BC5A) = 1;
    qword_1EED2BCD8 = atoi(v20);
    printf("MPSGRAPH_MAX_NUM_PARALLEL_REGIONS EV is set to %llu.\n", qword_1EED2BCD8);
  }

  if (getenv("MPSGRAPH_ENABLE_MLIR_DIAGNOSTICS"))
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCE0 = 1;
    puts("MPSGRAPH_ENABLE_MLIR_DIAGNOSTICS EV is set.");
  }

  v21 = getenv("MPSGRAPH_ENABLE_SHAPE_EQUIVALENCE");
  if (v21)
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCE1 = atoi(v21) != 0;
    printf("MPSGRAPH_ENABLE_SHAPE_EQUIVALENCE EV is set to %d.\n", byte_1EED2BCE1);
  }

  if (getenv("MPSGRAPH_ENABLE_ANEC_MODULE_VALIDATION"))
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCE3 = 1;
    puts("MPSGRAPH_ENABLE_ANEC_MODULE_VALIDATION EV is set.");
  }

  v22 = getenv("MPSGRAPH_ENABLE_MEMREF_BUFFERIZATION");
  if (v22)
  {
    word_1EED2BC5A = 257;
    byte_1EED2BCE2 = atoi(v22) != 0;
    printf("MPSGRAPH_ENABLE_MEMREF_BUFFERIZATION EV is set to %d.\n", byte_1EED2BCE2);
  }

  v23 = getenv("MPSGRAPH_ENABLE_LAYOUT_CONVERSION");
  if (v23)
  {
    word_1EED2BC5A = 257;
    v24 = atoi(v23);
    qword_1EED2BCE8 = v24;
    printf("MPSGRAPH_ENABLE_LAYOUT_CONVERSION EV is set to %d.\n", v24);
  }

  if (getenv("MPSGRAPH_ENABLE_COMPILE_RESOURCES_FOR_PACKAGE"))
  {
    byte_1EED2BCD0 = 1;
    LOBYTE(word_1EED2BC5A) = 1;
    byte_1EED2BCF0 = 1;
    puts("MPSGRAPH_ENABLE_COMPILE_RESOURCES_FOR_PACKAGE EV is set.");
  }

  if (getenv("MPSGRAPH_ENABLE_QUANTIZED_CONV_FUSION"))
  {
    byte_1EED2BCF1 = 1;
    puts("MPSGRAPH_ENABLE_QUANTIZED_CONV_FUSION EV is set.");
  }

  if (getenv("MPSGRAPH_DISABLE_QUANTIZED_CONV_FUSION"))
  {
    byte_1EED2BCF2 = 1;
    puts("MPSGRAPH_DISABLE_QUANTIZED_CONV_FUSION EV is set.");
  }

  result = getenv("MPSGRAPH_DISABLE_REDUCE_GREEDY_ANE_PLACEMENT");
  if (result)
  {
    byte_1EED2BCF3 = 1;

    return puts("MPSGRAPH_DISABLE_REDUCE_GREEDY_ANE_PLACEMENT EV is set.");
  }

  return result;
}

- (void)commonPostInit:()unique_ptr<InMemoryModuleRef
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = self;
  v4 = *a3.var0;
  *a3.var0 = 0;
  v5 = *(self + 37);
  *(self + 37) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  v34 = OriginalModuleRef::get(self + 37, 0);
  v33 = objc_opt_new();
  v32 = objc_opt_new();
  v7 = *(((v34 + 16 * ((*(v34 + 11) >> 23) & 1) + ((*(v34 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 10) + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v31[0] = &v35;
  v31[1] = &v32;
  v31[2] = &v34;
  v31[3] = &v33;
  v9 = *(v8 + 40);
  v10 = v8 + 32;
  if (v9 != v8 + 32)
  {
    do
    {
      v11 = *(v9 + 8);
      v12 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v9, v6);
      v36 = v31;
      mlir::detail::walk<mlir::ForwardIterator>(v12, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ37__MPSGraphExecutable_commonPostInit__E4__11NS1_3mps6CallOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v36, 1);
      v9 = v11;
    }

    while (v11 != v10);
  }

  v13 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v33;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v15)
  {
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [v13 setObject:@"default" forKeyedSubscript:*(*(&v27 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v15);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v32;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v19)
  {
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [v13 setObject:@"dynamic" forKeyedSubscript:{*(*(&v23 + 1) + 8 * v21++), v23}];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v19);
  }

  v22 = *(v35 + 48);
  *(v35 + 48) = v13;

  mlir::verify(v34, 1);
  if ((mlir::verify(v34, 1) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }
}

- (MPSGraphExecutable)initWithGraph:(id)a3 device:(id)a4 feeds:(id)a5 targetTensors:(id)a6 targetOperations:(id)a7 executableDescriptor:(id)a8
{
  v36 = *MEMORY[0x1E69E9840];
  obj = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v35.receiver = self;
  v35.super_class = MPSGraphExecutable;
  v14 = [(MPSGraphExecutable *)&v35 init];
  v15 = v14;
  if (v14)
  {
    v16 = objc_storeWeak(v14 + 33, obj);
    v15[116] = [obj options];

    v17 = obj[5];
    v33 = v17;
    v18 = obj[6];
    v34 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v19 = v15[35];
      v15[34] = v17;
      v15[35] = v18;
      v21 = v15 + 34;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = v15[35];
      v15[34] = v17;
      v15[35] = 0;
      v21 = v15 + 34;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

LABEL_8:
    [v15 commonPreInitWithDescriptor:{v26, v21, v22, v23, v24, v25}];
    v28 = 0x2B2B07DC2B2B07D8;
    v29 = obj;
    v30 = [v26 compilerOptions];
    v31 = 0;
    v32 = 0;
    kdebug_trace();
    operator new();
  }

  return 0;
}

void __101__MPSGraphExecutable_initWithGraph_device_feeds_targetTensors_targetOperations_executableDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [*(*(a1 + 32) + 16) indexOfObject:v3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && MTLReportFailureTypeEnabled())
  {
    v4 = [v3 operation];
    v5 = [v4 name];
    MTLReportFailure();
  }

  std::vector<unsigned long>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, &v6);
}

- (MPSGraphExecutable)initWithMLIRModule:(ModuleOp)a3 executableDescriptor:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MPSGraphExecutable;
  v7 = [(MPSGraphExecutable *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(MPSGraphExecutable *)v7 initializeWithMLIRModule:a3.state executableDescriptor:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MPSGraphExecutable)initWithSpecializedMLIRModule:(ModuleOp)a3 device:(id)a4 shapedEntryPoint:(id)a5 compilationDescriptor:(id)a6 executableDescriptor:(id)a7
{
  v46[12] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v44.receiver = self;
  v44.super_class = MPSGraphExecutable;
  v16 = [(MPSGraphExecutable *)&v44 init];
  v17 = v16;
  if (v16)
  {
    v18 = [(MPSGraphExecutable *)v16 initializeWithMLIRModule:a3.state executableDescriptor:v15];
    *(v17 + 854) = 1;
    [(MPSGraphExecutable *)v17 getDeviceCacheKeyForEntryPoint:v13 device:v12 compilationDescriptor:v14];
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    v34[0] = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(0, 0, v46, v34) & 1) == 0)
    {
      inserted = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::InsertIntoBucketImpl<MPSGraphModuleKey>(v42, v46, v34[0]);
      MPSGraphModuleKey::operator=(inserted, v46);
    }

    v20 = *(v17 + 36);
    if (!v20)
    {
      operator new();
    }

    v34[0] = 0;
    v34[1] = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v21 = mlir::OpBuilder::clone(v20, a3.state, v34);
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    v31 = [(MPSGraphExecutable *)v17 getEntryFuncOpForModule:v21];
    SymName = mlir::func::FuncOp::getSymName(&v31);
    if (SymName)
    {
      v24 = v22;
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v22 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v22;
      if (v22)
      {
        memmove(&__dst, SymName, v22);
      }

      __dst.__r_.__value_.__s.__data_[v24] = 0;
      v26 = v32[0];
      v25 = v33;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      memset(&__dst, 0, sizeof(__dst));
    }

    v45 = 0;
    v27 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::LookupBucketFor<MPSGraphModuleKey>(v26, v25, v46, &v45);
    v28 = v45;
    if ((v27 & 1) == 0)
    {
      v28 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::InsertIntoBucketImpl<MPSGraphModuleKey>(v32, v46, v45);
      MPSGraphModuleKey::operator=(v28, v46);
      v28[4].__r_.__value_.__r.__words[0] = 0;
      v28[4].__r_.__value_.__l.__size_ = 0;
      v28[4].__r_.__value_.__r.__words[2] = 0;
    }

    std::string::operator=(v28 + 4, &__dst);
    operator new();
  }

  return 0;
}

- (id)lazyInitWithModuleURL:(id)a3 executableDescriptor:(id)a4 callablesDescription:(id)a5 moduleResourcesLoader:(shared_ptr<ModuleResourcesLoader>)a6
{
  v21 = *MEMORY[0x1E69E9840];
  a3;
  v9 = a4;
  a5;
  objc_storeWeak(self + 33, 0);
  *(self + 116) = 1;
  [(MPSGraphExecutable *)self commonPreInitWithDescriptor:v9];
  *(self + 36) = 0;
  llvm::SourceMgr::SourceMgr(v17);
  v10 = *(self + 34);
  v18 = 0u;
  v19 = 0u;
  mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(v20, v17, v10, &v18);
  v11 = BYTE8(v19);
  if (*(&v19 + 1) >= 8uLL)
  {
    if ((BYTE8(v19) & 4) != 0)
    {
      if ((BYTE8(v19) & 2) != 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      (*((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8) + 16))(v12);
    }

    if ((v11 & 2) == 0)
    {
      llvm::deallocate_buffer(v18, *(&v18 + 1));
    }
  }

  *(self + 38) = 0;
  std::mutex::lock((self + 136));
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>,llvm::DenseMapInfo<MPSGraphExecutableSpecializedModule const*,void>,llvm::detail::DenseMapPair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>>,MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>,llvm::DenseMapInfo<MPSGraphExecutableSpecializedModule const*,void>,llvm::detail::DenseMapPair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>>::clear((self + 416));
  std::mutex::unlock((self + 136));
  std::mutex::lock((self + 72));
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::clear(self + 464);
  llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::clear(self + 110);
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::clear(self + 536);
  llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::clear(self + 128);
  std::mutex::unlock((self + 72));
  v13 = *(self + 89);
  *(self + 89) = 0;

  v14 = *(self + 90);
  *(self + 90) = 0;

  v15 = *(self + 92);
  *(self + 92) = 0;

  operator new();
}

- (id)initializeWithMLIRModule:(ModuleOp)a3 executableDescriptor:(id)a4
{
  v38[10] = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_storeWeak(self + 33, 0);
  *(self + 116) = 1;
  [(MPSGraphExecutable *)self commonPreInitWithDescriptor:v6];
  if ([v6 isCoreMLBytecode])
  {
    Context = mlir::Attribute::getContext((a3.state + 24));
    mlir::PassManager::PassManager(v38, Context, "any", 3uLL, 1);
    mlir::createCoreMLFlattenGraphPass(&v35);
    mlir::OpPassManager::addPass(v38, &v35);
    v8 = v35;
    v35 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    mlir::createCoreMLToMPSPass(&v34);
    mlir::OpPassManager::addPass(v38, &v34);
    v10 = v34;
    v34 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    if (mlir::moduleHasIndependentAdapters(a3.state, v9))
    {
      v11 = [(MPSGraphExecutable *)self getMutableWeightsFilePath];
      v28[0] = 0;
      v12 = v11;
      v13 = [v11 UTF8String];
      v14 = strlen(v13);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        operator new();
      }

      v30 = v14;
      if (v14)
      {
        memmove(&__p, v13, v14);
      }

      *(&__p + v15) = 0;
      v31 = 0;
      v32 = self + 392;
      mlir::mpsx::createANEAdaptersMutableWeightsPass(v28, &v36);
      v16 = v36;
      *&v36 = 0;
      v33 = v16;
      mlir::OpPassManager::addPass(v38, &v33);
      v17 = v33;
      v33 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v18 = v36;
      *&v36 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      if (v30 < 0)
      {
        operator delete(__p);
      }
    }

    v19.var0.var0 = a3.state;
    if (!mlir::PassManager::run(v38, v19) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    mlir::PassManager::~PassManager(v38);
  }

  *(self + 36) = 0;
  llvm::SourceMgr::SourceMgr(v28);
  v20 = *(self + 34);
  v36 = 0u;
  *v37 = 0u;
  mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(v38, v28, v20, &v36);
  v21 = v37[1];
  if (v37[1] >= 8)
  {
    if ((v37[1] & 4) != 0)
    {
      if ((v37[1] & 2) != 0)
      {
        v22 = &v36;
      }

      else
      {
        v22 = v36;
      }

      (*((v37[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v22);
    }

    if ((v21 & 2) == 0)
    {
      llvm::deallocate_buffer(v36, *(&v36 + 1));
    }
  }

  *(self + 38) = 0;
  std::mutex::lock((self + 136));
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>,llvm::DenseMapInfo<MPSGraphExecutableSpecializedModule const*,void>,llvm::detail::DenseMapPair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>>,MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>,llvm::DenseMapInfo<MPSGraphExecutableSpecializedModule const*,void>,llvm::detail::DenseMapPair<MPSGraphExecutableSpecializedModule const*,std::unique_ptr<RuntimeCacheEntry>>>::clear((self + 416));
  std::mutex::unlock((self + 136));
  std::mutex::lock((self + 72));
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::clear(self + 464);
  llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::clear(self + 110);
  llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::clear(self + 536);
  llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::clear(self + 128);
  std::mutex::unlock((self + 72));
  v23 = *(self + 89);
  *(self + 89) = 0;

  v24 = *(self + 90);
  *(self + 90) = 0;

  v25 = *(self + 92);
  *(self + 92) = 0;

  mlir::Operation::CloneOptions::all(v26);
  mlir::Operation::clone();
}

- (MPSGraphExecutable)initWithCoreMLPackage:(id)a3 executableDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v8 = dispatch_semaphore_create(0);
  if (qword_1ECE75460 == -1)
  {
    v9 = qword_1ECE75468;
    if (qword_1ECE75460 == -1)
    {
      goto LABEL_3;
    }

LABEL_8:
    dispatch_once(&qword_1ECE75460, &__block_literal_global_1222);
    if (qword_1ECE75468)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  dispatch_once(&qword_1ECE75460, &__block_literal_global_1222);
  v15 = qword_1ECE75468;
  if (qword_1ECE75460 != -1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (qword_1ECE75468)
  {
    goto LABEL_4;
  }

LABEL_9:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_4:
  if (qword_1ECE75460 != -1)
  {
    dispatch_once(&qword_1ECE75460, &__block_literal_global_1222);
  }

  v10 = qword_1ECE75468;
  v11 = qword_1ECE75468;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __65__MPSGraphExecutable_initWithCoreMLPackage_executableDescriptor___block_invoke;
  v19 = &unk_1E86D4F88;
  v21 = &v22;
  v12 = v8;
  v20 = v12;
  [v10 compileModelAtURL:v6 completionHandler:&v16];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [(MPSGraphExecutable *)self initWithMILProgramWithURL:v23[5] executableDescriptor:v7, v16, v17, v18, v19];

  _Block_object_dispose(&v22, 8);
  return v13;
}

void __65__MPSGraphExecutable_initWithCoreMLPackage_executableDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (qword_1ECE75480 == -1)
    {
      v7 = qword_1ECE75488;
      if (qword_1ECE75480 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&qword_1ECE75480, &__block_literal_global_1228);
      v16 = qword_1ECE75488;
      if (qword_1ECE75480 == -1)
      {
LABEL_4:
        if (qword_1ECE75488)
        {
LABEL_5:
          if (qword_1ECE75480 != -1)
          {
            dispatch_once(&qword_1ECE75480, &__block_literal_global_1228);
          }

          if ([qword_1ECE75488 canAddMLProgramToCompiledModelAtURL:v5])
          {
            if (qword_1ECE75480 != -1)
            {
              dispatch_once(&qword_1ECE75480, &__block_literal_global_1228);
            }

            v19 = 0;
            v8 = [qword_1ECE75488 addMLProgramToCompiledModelAtURL:v5 error:&v19];
            v6 = v19;
            if (v6 && MTLReportFailureTypeEnabled())
            {
              v17 = [v6 description];
              v18 = [v17 UTF8String];
              MTLReportFailure();
            }
          }

          else
          {
            v6 = 0;
          }

          v9 = MEMORY[0x1E695DFF8];
          v10 = MEMORY[0x1E696AEC0];
          v11 = [v5 path];
          v12 = [v10 stringWithFormat:@"%@/model.mil", v11];
          v13 = [v9 fileURLWithPath:v12];
          v14 = *(*(a1 + 40) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          goto LABEL_14;
        }

LABEL_20:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_5;
      }
    }

    dispatch_once(&qword_1ECE75480, &__block_literal_global_1228);
    if (qword_1ECE75488)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (!MTLReportFailureTypeEnabled())
  {
    goto LABEL_15;
  }

  v11 = [v6 description];
  [v11 UTF8String];
  MTLReportFailure();
LABEL_14:

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (MPSGraphExecutable)initWithCoreMLPackageAtURL:(id)a3 compilationDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setCompilationDescriptor:v7];
  v9 = [(MPSGraphExecutable *)self initWithCoreMLPackage:v6 executableDescriptor:v8];

  return v9;
}

- (MPSGraphExecutable)initWithMILProgramWithURL:(id)a3 executableDescriptor:(id)a4
{
  v5 = a3;
  v32 = a4;
  MIL::MILContext::Make(&__dst, v32);
  v43 = __dst.__r_.__value_.__r.__words[0];
  if (__dst.__r_.__value_.__r.__words[0])
  {
    operator new();
  }

  v44 = 0;
  MEMORY[0x1E12E5060](0);
  MEMORY[0x1E12E5070](0);
  v42 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:&v42];
  v7 = v42;
  v30 = v7;
  if (v7)
  {
    v26 = v7;
    if (MTLReportFailureTypeEnabled())
    {
      v27 = [v5 absoluteString];
      [v27 UTF8String];
      v28 = [v26 localizedFailureReason];
      [v28 cStringUsingEncoding:4];
      v29 = [v26 localizedDescription];
      [v29 cStringUsingEncoding:4];
      MTLReportFailure();
    }
  }

  v8 = [v6 UTF8String];
  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    v9 = memmove(&__dst, v8, v9);
  }

  __dst.__r_.__value_.__s.__data_[v10] = 0;
  MIL::ParserOptions::Make(&v33, v9);
  v11 = [v5 pathComponents];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 1}];
  v14 = [v12 pathWithComponents:v13];

  v40 = 0;
  v15 = [MEMORY[0x1E696AC08] defaultManager];
  [v15 fileExistsAtPath:v14 isDirectory:&v40];
  [v14 length];
  v16 = v33;
  v17 = [v14 UTF8String];
  v18 = strlen(v17);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v39 = v18;
  if (v18)
  {
    memmove(&__p, v17, v18);
  }

  *(&__p + v19) = 0;
  (*(*v16 + 48))(v16, &__p);
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v35 = v43;
  v36 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = __dst;
  }

  MIL::Text::ParseProgram();
  v20 = v37;
  v37 = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v21 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = v33;
  v33 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = [[MPSGraphExecutable alloc] initWithMILProgram:v20 executableDescriptor:v32];
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v24 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  return v23;
}

- (MPSGraphExecutable)initWithMILProgram:(void *)a3 executableDescriptor:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MPSGraphExecutable *)self init];
  *(v6 + 116) = 1;
  [(MPSGraphExecutable *)v6 commonPreInitWithDescriptor:v5];
  [v5 compilerOptions];
  lowerMILProgram();
}

- (MPSGraphExecutable)initWithMLIRSourceFromURL:(id)a3 executableDescriptor:(id)a4
{
  v6 = a4;
  v16 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:a3 encoding:4 error:&v16];
  v8 = v16;
  if (v8 && MTLReportFailureTypeEnabled())
  {
    v11 = [v8 localizedFailureReason];
    v12 = [v11 cStringUsingEncoding:4];
    v13 = [v8 localizedDescription];
    v14 = v12;
    v15 = [v13 cStringUsingEncoding:4];
    MTLReportFailure();
  }

  v9 = [(MPSGraphExecutable *)self initWithMLIRSource:v7 executableDescriptor:v6, v14, v15];

  return v9;
}

- (MPSGraphExecutable)initWithMLIRCommon:()unique_ptr<llvm:(std:(id)a4 :(id *)a5 default_delete<llvm::MemoryBuffer>>)a3 :MemoryBuffer executableDescriptor:error:
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(MPSGraphExecutable *)self allCommonSetup];
  operator new();
}

- (MPSGraphExecutable)initWithMLIRCoreML:(StringRef)a3 executableDescriptor:(id)a4 error:(id *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v27[5] = *MEMORY[0x1E69E9840];
  v8 = a4;
  [(MPSGraphExecutable *)self allCommonSetup];
  v11 = 0u;
  v12 = 0x1000000000;
  v13 = &v15;
  v14 = 0;
  v15 = 0;
  v16 = *(self + 34);
  v17 = 1;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v24;
  v23 = 0x600000000;
  v24[6] = &v25;
  v24[7] = 0x600000000;
  memset(v26, 0, sizeof(v26));
  v27[0] = v27;
  v27[1] = v27;
  memset(&v27[2], 0, 24);
  if (mlir::parseSourceString(var0, var1, v26, &v16, "", 0, &v15))
  {
    mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(v26, v16, v15, &v10);
    mlir::Block::~Block(v26);
    if (v10)
    {
      [(MPSGraphExecutable *)self initializeWithMLIRModule:v10 executableDescriptor:v8];
      objc_claimAutoreleasedReturnValue();
      if (v10)
      {
        mlir::Operation::erase(v10);
      }
    }
  }

  else
  {
    v10 = 0;
    mlir::Block::~Block(v26);
  }

  mlir::ParserConfig::~ParserConfig(&v16);
}

- (MPSGraphExecutable)initWithMLIRSource:(id)a3 executableDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = MPSGraphExecutable;
  v8 = [(MPSGraphExecutable *)&v22 init];
  if (v8)
  {
    v9 = [v6 UTF8String];
    v10 = v9;
    if (v9)
    {
      v11 = strlen(v9);
    }

    else
    {
      v11 = 0;
    }

    if ([v7 isCoreMLBytecode])
    {
      v21 = 0;
      v12 = [(MPSGraphExecutable *)v8 initWithMLIRCoreML:v10 executableDescriptor:v11 error:v7, &v21];
      v13 = v21;
    }

    else
    {
      llvm::MemoryBuffer::getMemBuffer(v10, v11, "", 0, &v20);
      v19 = v20;
      v20 = 0;
      v18 = 0;
      v12 = [(MPSGraphExecutable *)v8 initWithMLIRCommon:&v19 executableDescriptor:v7 error:&v18];
      v13 = v18;
      v14 = v19;
      v19 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v15 = v20;
      v20 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    if (!v12)
    {
      if (v13)
      {
        [v13 localizedDescription];

        if (MTLReportFailureTypeEnabled())
        {
          v17 = [v13 localizedDescription];
          MTLReportFailure();
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MPSGraphExecutable)initWithMLIRBytecode:(id)a3 executableDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = MPSGraphExecutable;
  v8 = [(MPSGraphExecutable *)&v21 init];
  if (v8)
  {
    v9 = [v6 bytes];
    v10 = [v6 length];
    if ([v7 isCoreMLBytecode])
    {
      v20 = 0;
      v11 = [(MPSGraphExecutable *)v8 initWithMLIRCoreML:v9 executableDescriptor:v10 error:v7, &v20];
      v12 = v20;
    }

    else
    {
      llvm::MemoryBuffer::getMemBuffer(v9, v10, "", 0, &v19);
      v18 = v19;
      v19 = 0;
      v17 = 0;
      v11 = [(MPSGraphExecutable *)v8 initWithMLIRCommon:&v18 executableDescriptor:v7 error:&v17];
      v12 = v17;
      v13 = v18;
      v18 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = v19;
      v19 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    if (!v11)
    {
      if (v12)
      {
        [v12 localizedDescription];

        if (MTLReportFailureTypeEnabled())
        {
          v16 = [v12 localizedDescription];
          MTLReportFailure();
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (MPSGraphExecutable)executableWithMLIRSourceFromURL:(id)a3 executableDescriptor:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v23 = 0;
  v9 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v7 encoding:4 error:&v23];
  v10 = v23;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 UTF8String];
    if (v12)
    {
      v13 = v12;
      v14 = strlen(v12);
      v12 = v13;
    }

    else
    {
      v14 = 0;
    }

    llvm::MemoryBuffer::getMemBuffer(v12, v14, "", 0, &v22);
    v17 = [MPSGraphExecutable alloc];
    v21 = v22;
    v22 = 0;
    v16 = [(MPSGraphExecutable *)v17 initWithMLIRCommon:&v21 executableDescriptor:v8 error:a5];
    v18 = v21;
    v21 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v22;
    v22 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  else if (a5)
  {
    v15 = v10;
    v16 = 0;
    *a5 = v11;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)serializeOptimizedBytecode:(ModuleOp)a3 :(id)a4 :(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *(self + 114);
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = *(self + 114);
    *(self + 114) = v11;

    v10 = *(self + 114);
  }

  if (([v10 containsObject:v8] & 1) == 0)
  {
    v13 = mlir::OpPrintingFlags::OpPrintingFlags(&v28);
    mlir::OpPrintingFlags::enableDebugInfo(v13, 1, 0);
    mlir::OpPrintingFlags::elideLargeResourceString(&v28, 0);
    Context = mlir::Attribute::getContext((a3.state + 24));
    mlir::PassManager::PassManager(&v20, Context, "any", 3uLL, 1);
    v18[0] = v28;
    v18[1] = v29;
    v18[2] = v30;
    mlir::createLocationSnapshotPass(v18, ", 0, "mpsgraph_op_id"", 0xEuLL, &v19);
    mlir::OpPassManager::addPass(&v20, &v19);
    v15 = v19;
    v19 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16.var0.var0 = a3.state;
    if (!mlir::PassManager::run(&v20, v16))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    [*(self + 114) addObject:v8];
    mlir::PassManager::~PassManager(&v20);
  }

  v28 = 0uLL;
  *&v29 = 0;
  v21 = 0;
  v25 = 0;
  v26 = 1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = &unk_1F5B3FB30;
  v27 = &v28;
  llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
  v31.var0 = "MLIR20.0.0git";
  v31.var1 = 13;
  mlir::BytecodeWriterConfig::BytecodeWriterConfig(v18, v31);
  mlir::BytecodeWriterConfig::setElideResourceDataFlag(v18, 1);
  mlir::writeBytecodeToFile(a3.state, &v20, v18, v17);
}

- (id)optimizedBytecodeForAllExistingSpecializations
{
  std::mutex::lock((self + 72));
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = *(self + 55) + 32 * *(self + 114);
  if (*(self + 112))
  {
    v10[0] = *(self + 55);
    v10[1] = v4;
    llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v10);
  }

  v9 = vdupq_n_s64(v4);
  if (v9.i64[0] != *(self + 55) + 32 * *(self + 114))
  {
    v5 = (*(***(v9.i64[0] + 24) + 24))(**(v9.i64[0] + 24), 0);
    v6 = MPSGraphModuleKeysSetToJSONString(v9.i64[0]);
    [(MPSGraphExecutable *)self serializeOptimizedBytecode:v5];

    v9.i64[0] += 32;
    llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v9.i64);
  }

  v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  std::mutex::unlock((self + 72));

  return v7;
}

- (id)optimizedBytecode:(id)a3 inputShapes:(id)a4 compilationDescriptor:(id)a5
{
  v72[5] = *MEMORY[0x1E69E9840];
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v7 = [(MPSGraphExecutable *)self getDefaultEntryPointWithShapes:v50];
  v69 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v60 = 0;
  [(MPSGraphExecutable *)self specializedModuleWithDevice:v49 shapedEntryPoints:v8 compilationDescriptor:v51 error:&v60];
  v52 = v60;

  if (v71 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  std::mutex::lock((self + 72));
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = v9;
  if (v71)
  {
    v11 = v70;
    v55 = v9;
    v12 = (*(*v11[1] + 24))(v11[1], 0);
    v13 = *v11;
    __p = 0;
    v58 = 0;
    v59 = 0;
    v14 = *(v13 + 8);
    v15 = *(v13 + 24);
    if (*(v13 + 16))
    {
      v61[0] = *(v13 + 8);
      v61[1] = (v14 + 120 * v15);
      llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(v61);
      v16 = *v61;
      v15 = *(v13 + 24);
      v14 = *(v13 + 8);
    }

    else
    {
      v16 = vdupq_n_s64(v14 + 120 * v15);
    }

    v54 = v12;
    v56 = v16;
    v17 = v14 + 120 * v15;
    while (1)
    {
      v20 = v56.i64[0];
      if (v56.i64[0] == v17)
      {
        v65[0] = __p;
        v56.i64[0] = v58;
        llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl<std::__wrap_iter<MPSGraphModuleKey*>>(v61, v65, &v56);
        v43 = MPSGraphModuleKeysSetToJSONString(v61);
        [(MPSGraphExecutable *)self serializeOptimizedBytecode:v54];

        llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v61);
        llvm::deallocate_buffer(v61[0], (96 * v62));
      }

      v21 = v58;
      if (v58 < v59)
      {
        v22 = v58 + 2;
        *v58 = v58 + 2;
        v21[1] = 0x600000000;
        v23 = *(v20 + 8);
        if (v21 != v20 && v23 != 0)
        {
          if (v23 < 7)
          {
            v18 = *(v20 + 8);
            goto LABEL_8;
          }

          *(v21 + 2) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v21, (v21 + 2), v23, 8);
          v18 = *(v20 + 8);
          if (v18)
          {
            v22 = *v21;
LABEL_8:
            memcpy(v22, *v20, 8 * v18);
          }

          *(v21 + 2) = v23;
        }

        v21[8] = *(v20 + 64);
        v21[9] = *(v20 + 72);
        v21[10] = *(v20 + 80);
        v21[11] = *(v20 + 88);
        v19 = v21 + 12;
        goto LABEL_11;
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v58 - __p) >> 5) + 1;
      if (v25 > 0x2AAAAAAAAAAAAAALL)
      {
        std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v59 - __p) >> 5) > v25)
      {
        v25 = 0x5555555555555556 * ((v59 - __p) >> 5);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v59 - __p) >> 5) >= 0x155555555555555)
      {
        v26 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      p_p = &__p;
      if (v26)
      {
        if (v26 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v27 = (32 * ((v58 - __p) >> 5));
      v61[0] = 0;
      v61[1] = v27;
      v62 = v27;
      v63 = 0;
      v28 = v27 + 2;
      *v27 = v27 + 2;
      v27[1] = 0x600000000;
      v29 = *(v20 + 8);
      v30 = v27 == v20 || v29 == 0;
      v31 = v27;
      v32 = v27;
      if (v30)
      {
        goto LABEL_40;
      }

      if (v29 < 7)
      {
        break;
      }

      *(v27 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27, (v27 + 2), v29, 8);
      v33 = *(v20 + 8);
      if (v33)
      {
        v28 = *v27;
LABEL_38:
        memcpy(v28, *v20, 8 * v33);
      }

      *(v27 + 2) = v29;
      v31 = v61[1];
      v32 = v62;
LABEL_40:
      v27[8] = *(v20 + 64);
      v27[9] = *(v20 + 72);
      v27[10] = *(v20 + 80);
      v27[11] = *(v20 + 88);
      v19 = v32 + 12;
      v62 = v19;
      v35 = __p;
      v34 = v58;
      v65[0] = &__p;
      v65[1] = &v67;
      v65[2] = &v68;
      v66 = 0;
      v36 = v31 + __p - v58;
      v67 = v36;
      v68 = v36;
      if (__p == v58)
      {
        goto LABEL_56;
      }

      v37 = v36;
      v38 = __p;
      do
      {
        v41 = v37 + 2;
        *v37 = v37 + 2;
        v37[1] = 0x600000000;
        v40 = v37;
        if (v38 != v37)
        {
          v42 = *(v38 + 2);
          v40 = v37;
          if (*(v38 + 2))
          {
            if (v42 >= 7)
            {
              *(v37 + 2) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v37, (v37 + 2), v42, 8);
              v39 = *(v38 + 2);
              if (v39)
              {
                v41 = *v37;
LABEL_43:
                memcpy(v41, *v38, 8 * v39);
              }

              *(v37 + 2) = v42;
              v40 = v68;
              goto LABEL_45;
            }

            v39 = *(v38 + 2);
            goto LABEL_43;
          }
        }

LABEL_45:
        v37[8] = v38[8];
        v37[9] = v38[9];
        v37[10] = v38[10];
        v37[11] = v38[11];
        v38 += 12;
        v37 = v40 + 12;
        v68 = v40 + 12;
      }

      while (v38 != v34);
      do
      {

        if (v35 + 2 != *v35)
        {
          free(*v35);
        }

        v35 += 12;
      }

      while (v35 != v34);
      v35 = __p;
LABEL_56:
      __p = v36;
      v58 = v19;
      v59 = v63;
      if (v35)
      {
        operator delete(v35);
      }

      v20 = v56.i64[0];
LABEL_11:
      v58 = v19;
      v56.i64[0] = v20 + 120;
      llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(&v56);
    }

    v33 = *(v20 + 8);
    goto LABEL_38;
  }

  v44 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v9];

  std::mutex::unlock((self + 72));
  v45 = v70;
  if (v71)
  {
    v46 = &v70[5 * v71 - 3];
    v47 = -40 * v71;
    do
    {
      if (*(v46 + 23) < 0)
      {
        operator delete(*v46);
      }

      v46 -= 40;
      v47 += 40;
    }

    while (v47);
    v45 = v70;
  }

  if (v45 != v72)
  {
    free(v45);
  }

  return v44;
}

- (id)resourceBlob:(id)a3 resourceName:(id)a4 error:(id *)a5
{
  v80[16] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v58 = a4;
  v8 = v7;
  v9 = MEMORY[0x1E696ACB0];
  v59 = v8;
  v10 = [v8 dataUsingEncoding:4];
  v55 = a5;
  v71 = 0;
  v60 = [v9 JSONObjectWithData:v10 options:4 error:&v71];
  v57 = v71;

  if (!v60 && MTLReportFailureTypeEnabled())
  {
    v54 = [v57 debugDescription];
    MTLReportFailure();
  }

  __p = 0;
  v69 = 0;
  v70 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v11 = v60;
    v12 = [v11 countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = *v65;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v64 + 1) + 8 * i);
        jsonStringToMPSGraphModuleKey(&__src, v15);
        v16 = v69;
        if (v69 >= v70)
        {
          std::vector<MPSGraphModuleKey>::__emplace_back_slow_path<MPSGraphModuleKey>(&__p, &__src);
          goto LABEL_22;
        }

        v17 = v69 + 16;
        *v69 = v69 + 16;
        *(v16 + 8) = 0x600000000;
        if (v16 != &__src)
        {
          v18 = v75;
          if (v75)
          {
            v19 = __src;
            if (__src != v77)
            {
              *v16 = __src;
              *(v16 + 8) = v18;
              *(v16 + 12) = v76;
              __src = v77;
              v76 = 0;
LABEL_20:
              v75 = 0;
              goto LABEL_21;
            }

            if (v75 < 7uLL)
            {
              v21 = v75;
LABEL_18:
              memcpy(v17, v19, 8 * v21);
            }

            else
            {
              *(v16 + 8) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v16, v16 + 16, v18, 8);
              v21 = v75;
              if (v75)
              {
                v19 = __src;
                v17 = *v16;
                goto LABEL_18;
              }
            }

            *(v16 + 8) = v18;
            goto LABEL_20;
          }
        }

LABEL_21:
        v22 = v78;
        v78 = 0u;
        *(v16 + 64) = v22;
        v23 = v79;
        v79 = 0u;
        *(v16 + 80) = v23;
        v20 = (v16 + 96);
LABEL_22:
        v69 = v20;

        if (__src != v77)
        {
          free(__src);
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v64 objects:v80 count:16];
      if (!v12)
      {
LABEL_26:

        break;
      }
    }
  }

  __src = __p;
  v63 = v69;
  llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl<std::__wrap_iter<MPSGraphModuleKey*>>(v61, &__src, &v63);
  v24 = __p;
  if (__p)
  {
    v25 = v69;
    v26 = __p;
    if (v69 != __p)
    {
      do
      {

        v27 = (v25 - 96);
        v28 = *(v25 - 12);
        if (v25 - 80 != v28)
        {
          free(v28);
        }

        v25 = (v25 - 96);
      }

      while (v27 != v24);
      v26 = __p;
    }

    v69 = v24;
    operator delete(v26);
  }

  v29 = llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>>::doFind<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(*(self + 55), *(self + 114), v61);
  v30 = v29;
  if (!v29 || v29 == *(self + 55) + 32 * *(self + 114) || !MPSGraphSpecializationCache::moduleValid((self + 440), *(v29 + 24)) || (v31 = *(v30 + 24)) == 0)
  {
    v72 = *MEMORY[0x1E696A578];
    v73 = @"No module was found with the given signature. Pass a valid string signature in byteCodeSignature that is associated with an optimized module.";
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:{1, v54}];
    v41 = MEMORY[0x1E696ABC0];
    v42 = [MEMORY[0x1E696AAE8] mainBundle];
    v43 = [v42 bundleIdentifier];
    *v55 = [v41 errorWithDomain:v43 code:-1000 userInfo:v40];

    goto LABEL_43;
  }

  v32 = *v31;
  if (!*v31 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v33 = v58;
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(*(v32 + 24), v34);
  v36 = v33;
  v37 = [v33 UTF8String];
  v38 = v37;
  if (v37)
  {
    v39 = strlen(v37);
  }

  else
  {
    v39 = 0;
  }

  v44 = mlir::mps::MPSResourceBlobManagerInterface::lookup(Manager, v38, v39);
  if (v44)
  {
    if (*(v44 + 80))
    {
      [MEMORY[0x1E695DEF0] dataWithBytes:*(v44 + 16) length:*(v44 + 24)];
      objc_claimAutoreleasedReturnValue();
LABEL_51:

LABEL_43:
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v61);
      llvm::deallocate_buffer(v61[0], (96 * v62));
    }

    __src = *MEMORY[0x1E696A578];
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found a resource entry for %@ but the resource is not loaded in memory", v33];
    v80[0] = v51;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&__src count:1];

    v52 = MEMORY[0x1E696ABC0];
    v48 = [MEMORY[0x1E696AAE8] mainBundle];
    v49 = [v48 bundleIdentifier];
    v50 = [v52 errorWithDomain:v49 code:-1000 userInfo:v46];
  }

  else
  {
    __src = *MEMORY[0x1E696A578];
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find a resource with the name %@", v33];
    v80[0] = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&__src count:1];

    v47 = MEMORY[0x1E696ABC0];
    v48 = [MEMORY[0x1E696AAE8] mainBundle];
    v49 = [v48 bundleIdentifier];
    v50 = [v47 errorWithDomain:v49 code:-1000 userInfo:v46];
  }

  *v55 = v50;

  goto LABEL_51;
}

- (id)getDataFilesFromMPSGraphPackageAtURLCommon:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[MPSGraphPackage alloc] initWithSourcePackageURL:v5 error:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [(MPSGraphPackage *)v6 getMLIRLibrary];
    v9 = [v8 getDict];
    v10 = [v9 objectForKeyedSubscript:@"Data File Names"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MPSGraphExecutable)initWithMPSGraphPackageAtURLCommon:(id)a3 compilationDescriptor:(id)a4 error:(id *)a5
{
  v122 = *MEMORY[0x1E69E9840];
  v101 = a3;
  v79 = a4;
  v100 = a5;
  v102 = 0;
  v99.receiver = self;
  v99.super_class = MPSGraphExecutable;
  v102 = [(MPSGraphExecutable *)&v99 init];

  [(MPSGraphExecutable *)v102 allCommonSetup];
  v8 = [MPSGraphPackage alloc];
  v9 = [(MPSGraphPackage *)v8 initWithSourcePackageURL:v101 error:v100];
  v10 = v9;
  v78 = v9;
  if (v9)
  {
    v77 = [(MPSGraphPackage *)v9 getMLIRLibrary];
    v98 = [v77 getDict];
    v76 = objc_opt_new();
    [v76 setCompilationDescriptor:v79];
    v11 = [v98 objectForKeyedSubscript:@"Original"];
    v75 = v11;
    if (v11)
    {
      v97 = [v101 URLByAppendingPathComponent:v11];
      v96 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v97 path];
      v13 = [v96 fileExistsAtPath:v12];

      if (v13)
      {
        v74 = [v77 getCallablesDescription];
        v15 = [v77 getResourceStorageMode];
        v95 = v15;
        if (v15 != 1)
        {
          goto LABEL_66;
        }

        Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(*(v102 + 34), v14);
        v16 = objc_opt_new();
        v17 = [v98 objectForKeyedSubscript:@"Original Resources Used"];
        [v16 addObjectsFromArray:v17];

        [v98 objectForKeyedSubscript:@"Optimized Resources Used"];
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v18 = v92 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v91 objects:v110 count:16];
        if (v19)
        {
          v20 = *v92;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v92 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = [v18 objectForKeyedSubscript:*(*(&v91 + 1) + 8 * i)];
              [v16 addObjectsFromArray:v22];
            }

            v19 = [v18 countByEnumeratingWithState:&v91 objects:v110 count:16];
          }

          while (v19);
        }

        [v98 objectForKeyedSubscript:@"Optimized No Device Resources Used"];
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v23 = v88 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v87 objects:v109 count:16];
        if (v24)
        {
          v25 = *v88;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v88 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = [v23 objectForKeyedSubscript:*(*(&v87 + 1) + 8 * j)];
              [v16 addObjectsFromArray:v27];
            }

            v24 = [v23 countByEnumeratingWithState:&v87 objects:v109 count:16];
          }

          while (v24);
        }

        v28 = v101;
        v29 = +[MPSGraphPackage getResourceFileName];
        v80 = [v28 URLByAppendingPathComponent:v29];

        if ([v16 count] && (v30 = v96, objc_msgSend(v80, "path"), v31 = objc_claimAutoreleasedReturnValue(), LOBYTE(v30) = objc_msgSend(v30, "fileExistsAtPath:", v31), v31, (v30 & 1) == 0))
        {
          v67 = MEMORY[0x1E696ABC0];
          v107 = *MEMORY[0x1E696A578];
          v68 = MEMORY[0x1E696AEC0];
          obj = +[MPSGraphPackage getResourceFileName];
          v69 = [v80 absoluteString];
          v70 = [v68 stringWithFormat:@"Error: %@ missing at %@", obj, v69];
          v108 = v70;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v72 = [v67 errorWithDomain:@"com.apple.mps" code:-20 userInfo:v71];
          *v100 = v72;
        }

        else
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          obj = v16;
          v32 = [obj countByEnumeratingWithState:&v83 objects:v106 count:16];
          if (!v32)
          {
            goto LABEL_63;
          }

          v33 = *v84;
LABEL_23:
          v34 = 0;
          while (1)
          {
            if (*v84 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v35 = [*(*(&v83 + 1) + 8 * v34) UTF8String];
            v36 = strlen(v35);
            if (v36 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v37 = v36;
            if (v36 >= 0x17)
            {
              operator new();
            }

            v121 = v36;
            if (v36)
            {
              memmove(&__dst, v35, v36);
            }

            *(&__dst + v37) = 0;
            if (v121 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            if (v121 >= 0)
            {
              v39 = v121;
            }

            else
            {
              v39 = __dst_8;
            }

            LOBYTE(v115[0]) = 0;
            v118 = 0;
            mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, p_dst, v39, v115, &v103);
            if (v118 == 1 && v117 >= 8)
            {
              v40 = (v117 & 2) != 0 ? v116 : v116[0];
              (*(v117 & 0xFFFFFFFFFFFFFFF8))(v40, v115[0], v115[1], v115[2]);
              v41 = v117;
              if (v117 >= 8)
              {
                if ((v117 & 4) != 0)
                {
                  if ((v117 & 2) != 0)
                  {
                    v42 = v116;
                  }

                  else
                  {
                    v42 = v116[0];
                  }

                  (*((v117 & 0xFFFFFFFFFFFFFFF8) + 16))(v42);
                }

                if ((v41 & 2) == 0)
                {
                  llvm::deallocate_buffer(v116[0], v116[1]);
                }
              }
            }

            v43 = *(v103 + 8);
            LODWORD(v44) = v121;
            v45 = __dst_8;
            v46 = __dst;
            if (v121 >= 0)
            {
              v47 = &__dst;
            }

            else
            {
              v47 = __dst;
            }

            if (v121 >= 0)
            {
              v45 = v121;
            }

            if (v43 != v45 || v43 && memcmp(*v103, v47, v43))
            {
              break;
            }

            if ((v44 & 0x80000000) != 0)
            {
              operator delete(v46);
            }

            if (v32 == ++v34)
            {
              v32 = [obj countByEnumeratingWithState:&v83 objects:v106 count:16];
              if (!v32)
              {
LABEL_63:

                v48 = [v76 compilationDescriptor];
                v49 = [v48 constantData];

                if (v49)
                {
                  [v49 loadIntoResourceManager:Manager];
                }

                v15 = v95;
LABEL_66:
                v50 = v101;
                v51 = [v98 objectForKeyedSubscript:@"Original Resources Used"];
                v52 = [v98 objectForKeyedSubscript:@"Resource Offsets"];
                getModuleResourcesLoader(&__dst, v50, v15, v51, v52);
              }

              goto LABEL_23;
            }
          }

          if (v100)
          {
            v44 = MEMORY[0x1E696ABC0];
            v104 = *MEMORY[0x1E696A578];
            v105 = @"Could not create correct resource name";
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
            v66 = [v44 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v65];
            *v100 = v66;

            LOBYTE(v44) = v121;
          }

          if ((v44 & 0x80) != 0)
          {
            operator delete(__dst);
          }
        }
      }

      else
      {
        v60 = MEMORY[0x1E696ABC0];
        v111 = *MEMORY[0x1E696A578];
        v61 = MEMORY[0x1E696AEC0];
        v74 = [v97 absoluteString];
        v62 = [v61 stringWithFormat:@"Error: Original module missing at %@", v74];
        v112 = v62;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v64 = [v60 errorWithDomain:@"com.apple.mps" code:-20 userInfo:v63];
        *v100 = v64;
      }

      v10 = 0;
    }

    else
    {
      if (v100)
      {
        v53 = MEMORY[0x1E696ABC0];
        v113 = *MEMORY[0x1E696A578];
        v54 = MEMORY[0x1E696AEC0];
        v55 = [v101 absoluteString];
        v56 = getMPSGraphPackageVersionString();
        v57 = [v54 stringWithFormat:@"Error: No valid MPSGraph Package Version found in .mpsgraphpackage with URL: %@ \nThis OS supports MPSGraph Package Version up to %@", v55, v56];
        v114 = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v59 = [v53 errorWithDomain:@"com.apple.mps" code:-20 userInfo:v58];
        *v100 = v59;
      }

      v10 = 0;
    }
  }

  return v10;
}

- (uint64_t)initWithMPSGraphPackageAtURLCommon:compilationDescriptor:error:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v26 = *MEMORY[0x1E696A578];
    v27 = *v36;
    v33 = a1;
    do
    {
      v8 = 0;
      v28 = v7;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v8;
        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = [obj objectForKeyedSubscript:v9];
        v11 = **a1;
        v31 = v10;
        v12 = [v10 objectForKeyedSubscript:@"File Name"];
        v32 = [v11 URLByAppendingPathComponent:v12];

        v13 = *v33[1];
        v14 = [v32 path];
        LOBYTE(v13) = [v13 fileExistsAtPath:v14];

        if (v13)
        {
          v15 = **v33;
          v16 = *v33[4];
          v17 = [v25 objectForKeyedSubscript:v9];
          v18 = [*v33[5] objectForKeyedSubscript:@"Resource Offsets"];
          getModuleResourcesLoader(&v34, v15, v16, v17, v18);
        }

        v19 = MEMORY[0x1E696ABC0];
        v39 = v26;
        v20 = MEMORY[0x1E696AEC0];
        v21 = [*v33[3] absoluteString];
        v22 = [v20 stringWithFormat:@"Error: optimized module missing at %@", v21];
        v40 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        **v33[2] = [v19 errorWithDomain:@"com.apple.mps" code:-20 userInfo:v23];

        v8 = v30 + 1;
        a1 = v33;
      }

      while (v30 + 1 != v28);
      v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  return 1;
}

- (MPSGraphExecutable)initWithMPSGraphPackageAtURL:(NSURL *)mpsgraphPackageURL compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor
{
  v6 = mpsgraphPackageURL;
  v7 = compilationDescriptor;
  v15.receiver = self;
  v15.super_class = MPSGraphExecutable;
  v8 = [(MPSGraphExecutable *)&v15 init];
  if (v8)
  {
    v14 = 0;
    v9 = [(MPSGraphExecutable *)v8 initWithMPSGraphPackageAtURLCommon:v6 compilationDescriptor:v7 error:&v14];
    v10 = v14;
    v11 = v10;
    if (!v9)
    {
      if (v10)
      {
        v12 = [v10 localizedDescription];
        NSLog(&stru_1F5B5DFD0.isa, v12);
      }

      else
      {
        NSLog(&cfstr_Initwithmpsgra.isa);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MPSGraphExecutable)initWithMPSGraphPackageAtURL:(id)a3 adapterExecutable:(id)a4 compilationDescriptor:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = [v10 callables];

      if (v12)
      {
        NSLog(&cfstr_ProvidedBothAn.isa);
        goto LABEL_16;
      }
    }

    else
    {
      v11 = objc_opt_new();
    }

    v28 = 0;
    v13 = [[MPSGraphPackage alloc] initWithSourcePackageURL:v8 error:&v28];
    v23 = v28;
    if (v13)
    {
      v22 = [(MPSGraphPackage *)v13 getMLIRLibrary];
      v21 = [v22 getCallablesDescription];
      v14 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v21;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v16)
      {
        v17 = *v25;
        do
        {
          v18 = 0;
          do
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [v14 setObject:v9 forKey:*(*(&v24 + 1) + 8 * v18++)];
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v16);
      }

      [v11 setCallables:v14];
    }
  }

LABEL_16:
  v19 = [[MPSGraphExecutable alloc] initWithMPSGraphPackageAtURL:v8 compilationDescriptor:v11];

  return v19;
}

+ (MPSGraphExecutable)executableWithMPSGraphPackageAtURL:(id)a3 compilationDescriptor:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[MPSGraphExecutable alloc] initWithMPSGraphPackageAtURLCommon:v7 compilationDescriptor:v8 error:a5];

  return v9;
}

- (ReturnOp)returnOpForFunctionInModule:(ModuleOp)a3
{
  v3.var0 = [(MPSGraphExecutable *)self getEntryFuncOpForModule:a3.state];
  if (!v3.var0)
  {
    v8 = MTLReportFailureTypeEnabled();
    v3.var0 = 0;
    if (v8)
    {
      MTLReportFailure();
      v3.var0 = 0;
    }
  }

  v5 = *(((v3.var0 + 16 * ((*(v3.var0 + 11) >> 23) & 1) + ((*(v3.var0 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3.var0 + 10) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  Terminator = mlir::Block::getTerminator(v6, v4);
  if (!Terminator || *(*(Terminator + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return 0;
  }

  return Terminator;
}

+ (id)executablesWithMLIRSourceForMultipleModules:(id)a3 executableDescriptor:(id)a4 regionNames:(id)a5
{
  v11[36] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v11[3] = a4;
  v11[2] = a5;
  v11[1] = objc_opt_new();
  v8 = [v7 UTF8String];
  if (v8)
  {
    v9 = v8;
    v10 = strlen(v8);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  llvm::MemoryBuffer::getMemBuffer(v8, v10, "", 0, v11);
  operator new();
}

- (BOOL)isExecutableForFeeds:(id)a3 targetTensors:(id)a4 targetOperations:(id)a5 compilationDescriptor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 count];
  if (v14 == [*(self + 90) count])
  {
    v15 = [v11 count];
    if (v15 == [*(self + 89) count])
    {
      v16 = [v10 count];
      if (v16 == [*(self + 92) count])
      {
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 1;
        v17 = *(self + 90);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __96__MPSGraphExecutable_isExecutableForFeeds_targetTensors_targetOperations_compilationDescriptor___block_invoke;
        v52[3] = &unk_1E86D4FB0;
        v54 = &v55;
        v53 = v12;
        [v17 enumerateObjectsUsingBlock:v52];
        v18 = *(self + 89);
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __96__MPSGraphExecutable_isExecutableForFeeds_targetTensors_targetOperations_compilationDescriptor___block_invoke_2;
        v49[3] = &unk_1E86D4FD8;
        v51 = &v55;
        v50 = v11;
        [v18 enumerateObjectsUsingBlock:v49];
        if ([v13 compilerOptions])
        {
          v19 = *(self + 92);
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __96__MPSGraphExecutable_isExecutableForFeeds_targetTensors_targetOperations_compilationDescriptor___block_invoke_3;
          v46[3] = &unk_1E86D5000;
          v47 = v10;
          v48 = &v55;
          [v19 enumerateKeysAndObjectsUsingBlock:v46];
        }

        if (word_1EED2BC5A)
        {
          v20 = v56;
          if (*(v56 + 24) == 1)
          {
            v21 = [*(self + 46) isEqualTo:v13];
LABEL_9:
            v20 = v56;
LABEL_34:
            *(v20 + 24) = v21 & 1;

            _Block_object_dispose(&v55, 8);
            goto LABEL_11;
          }

          goto LABEL_25;
        }

        v20 = v56;
        if ((word_1EED2BC5A & 0x100) != 0)
        {
          if ((v56[3] & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_17:
          v25 = [v13 aneCompilerSpatialSplitting];
          v26 = v25 == [*(self + 46) aneCompilerSpatialSplitting];
          v27 = v26 | byte_1EED2BC81;
          v20 = v56;
          *(v56 + 24) = v27 & 1;
          if (v27)
          {
            v28 = [v13 enableANEFWToFWSignal];
            v29 = [*(self + 46) enableANEFWToFWSignal];
            v30 = word_1EED2BC90 | ~(v28 ^ v29);
            v20 = v56;
            *(v56 + 24) = word_1EED2BC90 & 1 | (((v28 ^ v29) & 1) == 0);
            if (v30)
            {
              v31 = [v13 enableANELateLatch];
              v32 = [*(self + 46) enableANELateLatch];
              v33 = byte_1EED2BC92 | ~(v31 ^ v32);
              v20 = v56;
              *(v56 + 24) = byte_1EED2BC92 & 1 | (((v31 ^ v32) & 1) == 0);
              if (v33)
              {
                v34 = [v13 enableANECHWRankPromotion];
                v35 = [*(self + 46) enableANECHWRankPromotion];
                v36 = byte_1EED2BC93 | ~(v34 ^ v35);
                v20 = v56;
                *(v56 + 24) = byte_1EED2BC93 & 1 | (((v34 ^ v35) & 1) == 0);
                if (v36)
                {
                  v37 = [v13 entryFunctionName];
                  v38 = [*(self + 46) entryFunctionName];
                  *(v56 + 24) = v37 == v38;

                  v20 = v56;
                  if (v56[3])
                  {
                    v39 = [v13 callables];
                    v40 = [*(self + 46) callables];
                    *(v56 + 24) = v39 == v40;

                    v20 = v56;
                    if (v56[3])
                    {
                      v41 = [v13 minimumNumberOfOpsInParallelRegion];
                      v42 = v41 == [*(self + 46) minimumNumberOfOpsInParallelRegion];
                      v43 = v42 | byte_1EED2BCC1;
                      v20 = v56;
                      *(v56 + 24) = v43 & 1;
                      if (v43)
                      {
                        v44 = [v13 maximumNumberOfParallelEncodingRegions];
                        v45 = v44 == [*(self + 46) maximumNumberOfParallelEncodingRegions];
                        v21 = v45 | byte_1EED2BCD0;
                        goto LABEL_9;
                      }

LABEL_25:
                      v21 = 0;
                      goto LABEL_34;
                    }

LABEL_33:
                    v21 = 0;
                    *(v20 + 24) = 0;
                    goto LABEL_34;
                  }

LABEL_32:
                  *(v20 + 24) = 0;
                  goto LABEL_33;
                }

LABEL_31:
                *(v20 + 24) = 0;
                goto LABEL_32;
              }

LABEL_30:
              *(v20 + 24) = 0;
              goto LABEL_31;
            }

LABEL_29:
            *(v20 + 24) = 0;
            goto LABEL_30;
          }

LABEL_28:
          *(v20 + 24) = 0;
          goto LABEL_29;
        }

        if (v56[3])
        {
          v23 = [v13 compilerOptions];
          v24 = [*(self + 46) compilerOptions];
          v20 = v56;
          *(v56 + 24) = v23 == v24;
          if (v23 == v24)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v56 + 24) = 0;
        }

LABEL_27:
        *(v20 + 24) = 0;
        goto LABEL_28;
      }
    }
  }

  v21 = 0;
LABEL_11:

  return v21 & 1;
}

uint64_t __96__MPSGraphExecutable_isExecutableForFeeds_targetTensors_targetOperations_compilationDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) containsObject:v3];
  }

  else
  {
    *(v4 + 24) = 0;
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __96__MPSGraphExecutable_isExecutableForFeeds_targetTensors_targetOperations_compilationDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) containsObject:v3];
  }

  else
  {
    *(v4 + 24) = 0;
  }

  return MEMORY[0x1EEE66BB8]();
}

void __96__MPSGraphExecutable_isExecutableForFeeds_targetTensors_targetOperations_compilationDescriptor___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  v7 = v6;
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = [v6 isEqualTo:v5];
    v8 = *(*(a1 + 40) + 8);
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 24) = v9;
}

- (id)getOperationsToVisitForOperation:(id)a3 visitedOperations:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = v5[5];
  if (v8)
  {
    v9 = *(v8 + 8);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__MPSGraphExecutable_getOperationsToVisitForOperation_visitedOperations___block_invoke;
    v25[3] = &unk_1E86D5028;
    v26 = v6;
    v27 = v7;
    [v9 enumerateObjectsUsingBlock:v25];
  }

  v10 = [v5 inputTensors];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__MPSGraphExecutable_getOperationsToVisitForOperation_visitedOperations___block_invoke_2;
  v22[3] = &unk_1E86D4E20;
  v11 = v6;
  v23 = v11;
  v12 = v7;
  v24 = v12;
  [v10 enumerateObjectsUsingBlock:v22];

  v13 = [v5 controlDependencies];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__MPSGraphExecutable_getOperationsToVisitForOperation_visitedOperations___block_invoke_3;
  v19[3] = &unk_1E86D5050;
  v14 = v11;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  [v13 enumerateObjectsUsingBlock:v19];

  v16 = v21;
  v17 = v15;

  return v15;
}

void __73__MPSGraphExecutable_getOperationsToVisitForOperation_visitedOperations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __73__MPSGraphExecutable_getOperationsToVisitForOperation_visitedOperations___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 operation];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __73__MPSGraphExecutable_getOperationsToVisitForOperation_visitedOperations___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    [*(a1 + 40) addObject:v4];
  }
}

- (id)newExecutableWithDevice:(id)a3 inputsArray:(id)a4 intermediateOperations:(id)a5 executionDescriptor:(id)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v70 = a5;
  v12 = a6;
  if (v10)
  {
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;
    v15 = [MPSGraphExecutableShapedEntryPoint alloc];
    v16 = [v14 entryFunctionName];
    v17 = [(MPSGraphExecutableShapedEntryPoint *)v15 initWithEntryFunctionName:v16 inputTypes:v11];

    [(MPSGraphExecutable *)self specializeWithDevice:v10 shapedEntryPoint:v17 compilationDescriptor:0];
    v18 = (*(*v68 + 24))(v68, 0);
    v19 = *(self + 36);
    if (!v19)
    {
      operator new();
    }

    v60[0] = 0;
    v60[1] = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v20 = mlir::OpBuilder::clone(v19, v18, v60);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v72 = &v57;
    __p = &v72;
    mlir::detail::walk<mlir::ForwardIterator>(v20, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ101__MPSGraphExecutable_newExecutableWithDevice_inputsArray_intermediateOperations_executionDescriptor__E4__15NS1_4func8ReturnOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &__p, 1);
    v21.var0 = [(MPSGraphExecutable *)self getEntryFuncOpForModule:v20];
    v22 = *(((v21.var0 + 16 * ((*(v21.var0 + 11) >> 23) & 1) + ((*(v21.var0 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21.var0 + 10) + 8);
    if (v22)
    {
      v23 = (v22 - 8);
    }

    else
    {
      v23 = 0;
    }

    v24 = *(self + 36);
    mpsFileLoc("[MPSGraphExecutable newExecutableWithDevice:inputsArray:intermediateOperations:executionDescriptor:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphExecutable.mm", &v72);
    v56 = 260;
    __p = &v72;
    StringAttr = mlir::Builder::getStringAttr(v24, &__p);
    v26 = mlir::FileLineColLoc::get(StringAttr, 0xB00u, 0);
    if (SHIBYTE(p_p) < 0)
    {
      operator delete(v72);
    }

    v27 = *(self + 36);
    v28 = *(((v21.var0 + 16 * ((*(v21.var0 + 11) >> 23) & 1) + ((*(v21.var0 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21.var0 + 10) + 8);
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    *(v27 + 16) = v29;
    *(v27 + 24) = v29 + 32;
    __p = 0;
    v54 = 0;
    v55 = 0;
    v72 = &v69;
    v73 = &v70;
    p_p = &__p;
    mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<[MPSGraphExecutable newExecutableWithDevice:inputsArray:intermediateOperations:executionDescriptor:]::$_16>, &v72, 1);
    v51 = v26;
    v50 = v20;
    v52 = self;
    if (__p != v54)
    {
      operator new();
    }

    v30 = v57;
    if (v57 != v58)
    {
      do
      {
        v31 = *v30;
        v32 = __p;
        v33 = v54;
        v34 = __p;
        if (__p != v54)
        {
          v34 = __p;
          while (*v34 != v31)
          {
            v34 += 8;
            if (v34 == v54)
            {
              goto LABEL_27;
            }
          }
        }

        if (v34 == v54)
        {
LABEL_27:
          if (v54 >= v55)
          {
            v35 = v54 - __p;
            v36 = (v54 - __p) >> 3;
            v37 = v36 + 1;
            if ((v36 + 1) >> 61)
            {
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            v38 = v55 - __p;
            if ((v55 - __p) >> 2 > v37)
            {
              v37 = v38 >> 2;
            }

            if (v38 >= 0x7FFFFFFFFFFFFFF8)
            {
              v39 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              if (!(v39 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v40 = (8 * v36);
            v41 = &v40[-((v54 - __p) >> 3)];
            *v40 = v31;
            v42 = (v40 + 1);
            memcpy(v41, v32, v35);
            __p = v41;
            v54 = v42;
            v55 = 0;
            if (v32)
            {
              operator delete(v32);
            }

            v54 = v42;
          }

          else
          {
            *v54 = v31;
            v54 = v33 + 8;
          }

          operator new();
        }

        ++v30;
      }

      while (v30 != v58);
    }

    mlir::OpBuilder::create<mlir::func::ReturnOp,std::vector<mlir::Value> &>(*(v52 + 36), v51, &__p);
    v43 = *(v52 + 36);
    ArgumentTypes = mlir::Block::getArgumentTypes(v23);
    mlir::ValueRange::ValueRange(&v72, ArgumentTypes, (v45 - ArgumentTypes) >> 3);
    mlir::TypeRange::TypeRange(v71, v72, v73);
    mlir::ValueRange::ValueRange(&v72, 0, 0);
    FunctionType = mlir::Builder::getFunctionType(v43, v71[0], v71[1], v72, v73);
    if (v21.var0)
    {
      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v21.var0);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::function_interface_impl::setFunctionType(v21.var0, InterfaceFor, FunctionType);
    if (mlir::verify(v50, 1))
    {
      v48 = objc_opt_new();
      [[MPSGraphExecutable alloc] initWithSpecializedMLIRModule:v50 device:v10 shapedEntryPoint:v17 compilationDescriptor:0 executableDescriptor:v48];
    }

    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    llvm::deallocate_buffer(v65, (16 * v67));
  }

  return 0;
}

- (id)runWithDevice:(id)a3 inputsArray:(id)a4 intermediateOperations:(id)a5 resultsArray:(id)a6 executionDescriptor:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(MPSGraphExecutable *)self newExecutableWithDevice:v12 inputsArray:v13 intermediateOperations:a5 executionDescriptor:v15];
  v17 = [v16 runWithDevice:v12 inputsArray:v13 resultsArray:v14 executionDescriptor:v15];

  return v17;
}

- (OwningOpRef<mlir::ModuleOp>)cloneForFeeds:(id)a3 targetTensors:(id)a4 targetOperations:(id)a5
{
  v107 = v5;
  v143 = *MEMORY[0x1E69E9840];
  v108 = a3;
  v111 = a4;
  v110 = a5;
  v129[0] = 0;
  v129[1] = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v115 = self;
  v9 = *(self + 36);
  WeakRetained = objc_loadWeakRetained(self + 33);
  v109 = mlir::OpBuilder::clone(v9, WeakRetained[8], v129);

  memset(v128, 0, sizeof(v128));
  obj = *(self + 91);
  if ([obj countByEnumeratingWithState:v128 objects:v139 count:16])
  {
    v11 = [*(self + 92) objectForKeyedSubscript:{**(&v128[0] + 1), v107, v108}];
    v12 = *(self + 36);
    v13 = [v11 shape];
    v14 = [v11 dataType];
    v15 = v13;
    v16 = *v12;
    v17 = v15;
    MLIRElementType = getMLIRElementType(v16, v14);
    v19 = v17;
    v20 = v19;
    if (v19)
    {
      getMLIRShape(v19, &v140);
      {
        v21 = llvm::getTypeName<mlir::ShapedType>();
        mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v21, v22);
      }

      if (v140 != &v141)
      {
        free(v140);
      }
    }

    {
      v23 = llvm::getTypeName<mlir::ShapedType>();
      mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v23, v24);
    }

    operator new();
  }

  v25.var0 = [(MPSGraphExecutable *)self getEntryFuncOpForModule:v109];
  v26 = v25.var0 + 64;
  var0 = v25.var0;
  v27 = *(((v25.var0 + 16 * ((*(v25.var0 + 11) >> 23) & 1) + ((*(v25.var0 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v25.var0 + 10) + 8);
  if (v27)
  {
    v28 = (v27 - 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = *(self + 36);
  mpsFileLoc("[MPSGraphExecutable cloneForFeeds:targetTensors:targetOperations:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphExecutable.mm", &__p);
  LOWORD(v142) = 260;
  *&v140 = &__p;
  StringAttr = mlir::Builder::getStringAttr(v29, &v140);
  v31 = mlir::FileLineColLoc::get(StringAttr, 0xB59u, 0);
  v114 = v26;
  if (SHIBYTE(v127) < 0)
  {
    operator delete(__p);
  }

  v32 = 0;
  __p = 0;
  v126 = 0;
  v127 = 0;
  while (1)
  {
    if (v32 >= [v111 count])
    {
      v50 = *(v115 + 36);
      v51 = *(((v114 + 16 * ((var0[11] >> 23) & 1) + ((var0[11] >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * var0[10] + 8);
      if (v51)
      {
        v52 = v51 - 8;
      }

      else
      {
        v52 = 0;
      }

      *(v50 + 16) = v52;
      *(v50 + 24) = v52 + 32;
      mlir::OpBuilder::create<mlir::func::ReturnOp,std::vector<mlir::Value> &>(*(v115 + 36), v31, &__p);
      for (i = 0; i < [*(v115 + 91) count]; ++i)
      {
        v54 = [*(v115 + 91) objectAtIndexedSubscript:i];
        v55 = [v54 value];
        v56 = mlir::Block::addArgument(v28, *([v54 value] + 8) & 0xFFFFFFFFFFFFFFF8, v31);
        v57 = 0x9DDFEA08EB382D69 * ((8 * v55 - 0xAE502812AA7333) ^ HIDWORD(v55));
        v58 = 0x9DDFEA08EB382D69 * (HIDWORD(v55) ^ (v57 >> 47) ^ v57);
        v59 = (v130 - 1) & (-348639895 * ((v58 >> 47) ^ v58));
        if (*(v129[0] + 2 * v59) != v55)
        {
          v65 = 1;
          do
          {
            v66 = v59 + v65++;
            v59 = v66 & (v130 - 1);
          }

          while (*(v129[0] + 2 * v59) != v55);
        }

        v60 = *(v129[0] + 2 * v59 + 1);
        while (1)
        {
          v61 = *v60;
          if (!*v60)
          {
            break;
          }

          v62 = v61[1];
          if (v62)
          {
            v63 = *v61;
            *v62 = *v61;
            if (v63)
            {
              *(v63 + 8) = v62;
            }
          }

          v61[3] = v56;
          v61[1] = v56;
          v64 = *v56;
          *v61 = *v56;
          if (v64)
          {
            *(v64 + 8) = v61;
          }

          *v56 = v61;
        }
      }

      if (__p != v126)
      {
        operator new();
      }

      v67 = *(v115 + 36);
      ArgumentTypes = mlir::Block::getArgumentTypes(v28);
      mlir::ValueRange::ValueRange(&v140, ArgumentTypes, (v69 - ArgumentTypes) >> 3);
      mlir::TypeRange::TypeRange(&v137, v140, *(&v140 + 1));
      mlir::ValueRange::ValueRange(&v140, 0, 0);
      FunctionType = mlir::Builder::getFunctionType(v67, v137, v138[0], v140, *(&v140 + 1));
      if (var0)
      {
        InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(var0);
      }

      else
      {
        InterfaceFor = 0;
      }

      mlir::function_interface_impl::setFunctionType(var0, InterfaceFor, FunctionType);
      v138[0] = 0;
      v138[1] = 0;
      v137 = v138;
      v72 = MEMORY[0x1E695DF70];
      v73 = objc_loadWeakRetained(v115 + 33);
      v74 = [v72 arrayWithCapacity:{objc_msgSend(v73[10], "count")}];

      v75 = [MEMORY[0x1E695DF90] dictionary];
      v76 = 0;
      v140 = 0u;
      v141 = 0u;
      v142 = 1065353216;
      while (v76 < [v110 count])
      {
        v77 = [v110 objectAtIndexedSubscript:v76];
        [v74 addObject:v77];

        ++v76;
      }

      for (j = 0; j < [v111 count]; ++j)
      {
        v79 = [v111 objectAtIndexedSubscript:j];
        v80 = [v79 operation];

        [v74 addObject:v80];
      }

      while (1)
      {
        if (![v74 count])
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v95 = objc_loadWeakRetained(v115 + 33);
          v96 = [v95[10] count];
          if (v96)
          {
            if (!(v96 >> 61))
            {
              operator new();
            }

            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          v119 = 0;
          v120 = 0;
          v121 = 0;
          v97 = objc_loadWeakRetained(v115 + 33);
          v98 = [v97[10] count];
          if (v98)
          {
            if (!(v98 >> 61))
            {
              operator new();
            }

            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          v99 = objc_loadWeakRetained(v115 + 33);
          v118 = &v122;
          v100 = v99[8];
          v116 = &v118;
          mlir::detail::walk<mlir::ForwardIterator>(v100, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ67__MPSGraphExecutable_cloneForFeeds_targetTensors_targetOperations__E4__17NS1_3mps16AssignVariableOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v116, 1);

          v118 = &v119;
          v116 = &v118;
          mlir::detail::walk<mlir::ForwardIterator>(v109, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ67__MPSGraphExecutable_cloneForFeeds_targetTensors_targetOperations__E4__18NS1_3mps16AssignVariableOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v116, 1);
          v103 = v122;
          v102 = v123;
          if (v123 - v122 != v120 - v119 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v117[0] = 0;
          v117[1] = 0;
          v116 = v117;
          if (v102 != v103)
          {
            if ((v123 - v122) >> 3 && (v120 - v119) >> 3)
            {
              operator new();
            }

            std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
          }

          mlir::mps::inferTypes(var0, v101);
          *v107 = v109;
          std::__tree<void *>::destroy(v117[0]);
          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          if (v122)
          {
            v123 = v122;
            operator delete(v122);
          }

          v104 = v141;
          if (v141)
          {
            do
            {
              v105 = *v104;
              operator delete(v104);
              v104 = v105;
            }

            while (v105);
          }

          v106 = v140;
          *&v140 = 0;
          if (v106)
          {
            operator delete(v106);
          }

          std::__tree<MPSGraphTensor * {__strong}>::destroy(&v137, v138[0]);
          if (__p)
          {
            v126 = __p;
            operator delete(__p);
          }

          llvm::deallocate_buffer(v134, (16 * v136));
        }

        v81 = [v74 objectAtIndexedSubscript:0];
        v82 = v81[8];
        if (v82 && *(*(v82 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
        {
          break;
        }

LABEL_100:
        [v75 setObject:v81 forKey:v81];
        v94 = [(MPSGraphExecutable *)v115 getOperationsToVisitForOperation:v81 visitedOperations:v75];
        [v74 removeObjectAtIndex:0];
        [v74 addObjectsFromArray:v94];
      }

      v84 = 0x9DDFEA08EB382D69 * ((8 * (v81[8] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(v81[8]));
      v85 = 0x9DDFEA08EB382D69 * (HIDWORD(v82) ^ (v84 >> 47) ^ v84);
      v86 = v85 ^ (v85 >> 47);
      v87 = 0x9DDFEA08EB382D69 * v86;
      if (*(&v140 + 1))
      {
        v88 = vcnt_s8(*(&v140 + 8));
        v88.i16[0] = vaddlv_u8(v88);
        if (v88.u32[0] > 1uLL)
        {
          v89 = 0x9DDFEA08EB382D69 * v86;
          if (v87 >= *(&v140 + 1))
          {
            v89 = v87 % *(&v140 + 1);
          }
        }

        else
        {
          v89 = (*(&v140 + 1) - 1) & v87;
        }

        v90 = *(v140 + 8 * v89);
        if (v90)
        {
          v91 = *v90;
          if (v91)
          {
            if (v88.u32[0] < 2uLL)
            {
              while (1)
              {
                v93 = v91[1];
                if (v93 == v87)
                {
                  if (v91[2] == v82)
                  {
                    goto LABEL_100;
                  }
                }

                else if ((v93 & (*(&v140 + 1) - 1)) != v89)
                {
                  goto LABEL_99;
                }

                v91 = *v91;
                if (!v91)
                {
                  goto LABEL_99;
                }
              }
            }

            do
            {
              v92 = v91[1];
              if (v92 == v87)
              {
                if (v91[2] == v82)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                if (v92 >= *(&v140 + 1))
                {
                  v92 %= *(&v140 + 1);
                }

                if (v92 != v89)
                {
                  break;
                }
              }

              v91 = *v91;
            }

            while (v91);
          }
        }
      }

LABEL_99:
      operator new();
    }

    v34 = [v111 objectAtIndexedSubscript:v32];
    v35 = [v34 value];
    if (!v130)
    {
      goto LABEL_26;
    }

    v36 = 0x9DDFEA08EB382D69 * ((8 * v35 - 0xAE502812AA7333) ^ HIDWORD(v35));
    v37 = 0x9DDFEA08EB382D69 * (HIDWORD(v35) ^ (v36 >> 47) ^ v36);
    v38 = (v130 - 1) & (-348639895 * ((v37 >> 47) ^ v37));
    v39 = *(v129[0] + 2 * v38);
    if (v39 != v35)
    {
      break;
    }

LABEL_25:
    if (v38 == v130)
    {
      goto LABEL_26;
    }

    v40 = *(v129[0] + 2 * v38 + 1);
LABEL_28:

    v41 = v126;
    if (v126 < v127)
    {
      *v126 = v40;
      v33 = (v41 + 8);
    }

    else
    {
      v42 = __p;
      v43 = v126 - __p;
      v44 = (v126 - __p) >> 3;
      v45 = v44 + 1;
      if ((v44 + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v46 = v127 - __p;
      if ((v127 - __p) >> 2 > v45)
      {
        v45 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (!(v47 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v44) = v40;
      v33 = 8 * v44 + 8;
      memcpy(0, v42, v43);
      __p = 0;
      v126 = v33;
      v127 = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    v126 = v33;
    ++v32;
  }

  v48 = 1;
  while (v39 != -4096)
  {
    v49 = v38 + v48++;
    v38 = v49 & (v130 - 1);
    v39 = *(v129[0] + 2 * v38);
    if (v39 == v35)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v40 = 0;
  goto LABEL_28;
}

- (FuncOp)getEntryFuncOpForModule:(ModuleOp)a3
{
  v5 = [*(self + 46) entryFunctionName];

  if (v5)
  {
    v6 = [*(self + 46) entryFunctionName];
    v7 = [v6 UTF8String];
    v8 = v7;
    if (v7)
    {
      v9 = strlen(v7);
    }

    else
    {
      v9 = 0;
    }

    Context = mlir::Attribute::getContext((a3.state + 24));
    v17 = 261;
    v16[0] = v8;
    v16[1] = v9;
    v12 = mlir::StringAttr::get(Context, v16);
    v13 = mlir::SymbolTable::lookupSymbolIn(a3.state, v12);
    if (v13 && *(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v15.var0 = v13;

      return v15;
    }

    else
    {

      v14 = MTLReportFailureTypeEnabled();
      v10.var0 = 0;
      if (v14)
      {
        MTLReportFailure();
        return 0;
      }
    }
  }

  else
  {

    return getFuncOpInModule(a3.state);
  }

  return v10;
}

- (void)optimizeOriginalModule
{
  v2 = self;
  v85 = *MEMORY[0x1E69E9840];
  std::mutex::lock((self + 8));
  v3 = atomic_load(v2 + 708);
  if ((v3 & 1) == 0)
  {
    v76 = 0;
    v55 = v2;
    v54 = OriginalModuleRef::get(v2 + 37, &v76);
    v4 = v76;
    if (v4)
    {
LABEL_73:

      v2 = v55;
      goto LABEL_74;
    }

    v5 = *(v2 + 47);
    if (v5)
    {
      v53 = &v82;
      *&v81 = &v82;
      *(&v81 + 1) = 0x100000000;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v5;
      v6 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
      if (v6)
      {
        v58 = *v73;
        do
        {
          v59 = v6;
          for (i = 0; i != v59; ++i)
          {
            if (*v73 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v72 + 1) + 8 * i);
            if (![v8 type])
            {
              [v8 hasANE];
              if (([v8 hasANE] & 1) == 0 && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v9 = [*(v55 + 47) objectForKeyedSubscript:v8];
              v10 = MEMORY[0x1E696ACB0];
              v11 = [v9 aneCompilerOptions];
              v71 = 0;
              v12 = [v10 dataWithJSONObject:v11 options:2 error:&v71];
              v57 = v71;

              if (!v12 && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];
              Context = mlir::Attribute::getContext((v54 + 24));
              v15 = [v8 architecture];
              v16 = v15;
              v17 = [v15 UTF8String];
              v18 = v17;
              if (v17)
              {
                v19 = strlen(v17);
              }

              else
              {
                v19 = 0;
              }

              v20 = [v8 gpuCoreCount];
              v21 = v13;
              v22 = [v13 UTF8String];
              v23 = v22;
              if (v22)
              {
                v24 = strlen(v22);
              }

              else
              {
                v24 = 0;
              }

              v25 = mlir::mps_spi::DeviceDescriptorOptionsAttr::get(Context, v18, v19, v20, v23, v24);
              v26 = DWORD2(v81);
              if (DWORD2(v81) >= HIDWORD(v81))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v53, DWORD2(v81) + 1, 8);
                v26 = DWORD2(v81);
              }

              *(v81 + 8 * v26) = v25;
              ++DWORD2(v81);
            }
          }

          v6 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
        }

        while (v6);
      }

      if (DWORD2(v81))
      {
        v27 = mlir::Attribute::getContext((v54 + 24));
        v28 = mlir::ArrayAttr::get(v27, v81, DWORD2(v81));
        v29 = mlir::Attribute::getContext((v54 + 24));
        v70 = 261;
        v69[0] = "mps_spi.per_device_compilation_options";
        v69[1] = 38;
        v30 = mlir::StringAttr::get(v29, v69);
        mlir::Operation::setAttr(v54, v30, v28);
      }

      if (v81 != v53)
      {
        free(v81);
      }
    }

    v31 = mlir::Attribute::getContext((v54 + 24));
    if (([*(v55 + 46) compilerOptions] & 0x20) != 0)
    {
      mlir::PassManager::enableVerifier(v69, 1);
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (((([(MPSGraphExecutable *)v55 options]& 2) != 0) & has_internal_diagnostics) != 1)
    {
LABEL_43:
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      __str[23] = 0;
      __str[0] = 0;
      v36 = *(v55 + 115);
      if (v36)
      {
        MEMORY[0x1E12E55D0](__str, [v36 UTF8String]);
      }

      std::string::operator=((&v82 + 8), __str);
      mlir::mps::createCopyDataFilesPass(&v81, &v65);
      v37 = v65;
      v65 = 0;
      v66 = v37;
      mlir::OpPassManager::addPass(v69, &v66);
      v38 = v66;
      v66 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      v39 = v65;
      v65 = 0;
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }

      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
        if ((SHIBYTE(v83) & 0x80000000) == 0)
        {
LABEL_51:
          if ((SBYTE7(v82) & 0x80000000) == 0)
          {
LABEL_52:
            v40 = mlir::OpPassManager::nest(v69, "func.func", 9uLL);
            mlir::mps::createTypeInferencePass(&v81);
            v41 = v81;
            *&v81 = 0;
            v64 = v41;
            mlir::OpPassManager::addPass(v40, &v64);
            v42 = v64;
            v64 = 0;
            if (v42)
            {
              (*(*v42 + 8))(v42);
            }

            v43 = v81;
            *&v81 = 0;
            if (v43)
            {
              (*(*v43 + 8))(v43);
            }

            mlir::createCanonicalizerPass(&v63);
            mlir::OpPassManager::addPass(v40, &v63);
            v44 = v63;
            v63 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }

            if (([*(v55 + 46) compilerOptions] & 0x100) != 0)
            {
              __str[4] = byte_1EED2BCBE;
              *__str = 0;
              mlir::mps::createCommonRuntimeCanonicalizationPass(__str, &v81);
              v45 = v81;
              *&v81 = 0;
              v62 = v45;
              mlir::OpPassManager::addPass(v40, &v62);
              v46 = v62;
              v62 = 0;
              if (v46)
              {
                (*(*v46 + 8))(v46);
              }

              v47 = v81;
              *&v81 = 0;
              if (v47)
              {
                (*(*v47 + 8))(v47);
              }
            }

            mlir::mps::createTypeInferencePass(&v81);
            v48 = v81;
            *&v81 = 0;
            v61 = v48;
            mlir::OpPassManager::addPass(v40, &v61);
            v49 = v61;
            v61 = 0;
            if (v49)
            {
              (*(*v49 + 8))(v49);
            }

            v50 = v81;
            *&v81 = 0;
            if (v50)
            {
              (*(*v50 + 8))(v50);
            }

            if (([*(v55 + 46) compilerOptions] & 4) != 0)
            {
              mlir::createCSEPass(&v60);
              mlir::OpPassManager::addPass(v40, &v60);
              v51 = v60;
              v60 = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }
            }

            v52.var0.var0 = v54;
            if (!mlir::PassManager::run(v69, v52) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            if ((mlir::verify(v54, 1) & 1) == 0 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            atomic_store(1u, v55 + 708);
            mlir::PassManager::~PassManager(v69);
            v4 = 0;
            goto LABEL_73;
          }

LABEL_77:
          operator delete(v81);
          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v83) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(*(&v82 + 1));
      if ((SBYTE7(v82) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_77;
    }

    mlir::OpPrintingFlags::OpPrintingFlags(&v81);
    mlir::OpPrintingFlags::elideLargeElementsAttrs(&v81, 256);
    v33 = mlir::OpPrintingFlags::elideLargeResourceString(&v81, 0);
    v79[0] = &unk_1F5B53EC0;
    v80 = v79;
    v77[0] = &unk_1F5B53F40;
    v78 = v77;
    v34 = llvm::dbgs(v33);
    *__str = v81;
    *&__str[16] = v82;
    v68 = v83;
    mlir::PassManager::enableIRPrinting(v69, v79, v77, 0, 0, 0, v34, __str);
    if (v78 == v77)
    {
      (*(*v78 + 32))(v78);
      v35 = v80;
      if (v80 != v79)
      {
LABEL_38:
        if (v35)
        {
          (*(*v35 + 40))(v35);
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (v78)
      {
        (*(*v78 + 40))();
      }

      v35 = v80;
      if (v80 != v79)
      {
        goto LABEL_38;
      }
    }

    (*(*v35 + 32))(v35);
LABEL_42:
    mlir::PassManager::enableTiming(v69);
    goto LABEL_43;
  }

LABEL_74:
  std::mutex::unlock((v2 + 8));
}

- (vector<mlir::Type,)convertMPSGraphShapesToMLIRTypes:(MPSGraphExecutable *)self
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = __Block_byref_object_copy__711;
  v17 = __Block_byref_object_dispose__712;
  v18 = &unk_1E0AB8473;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v7 = [v6 count];
  if (v7 > (v21 - __p) >> 3)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__MPSGraphExecutable_convertMPSGraphShapesToMLIRTypes___block_invoke;
  v12[3] = &unk_1E86D5078;
  v12[4] = self;
  v12[5] = &v13;
  [v6 enumerateObjectsUsingBlock:v12];
  v8 = v14;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v10 = v8[6];
  v9 = v8[7];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  _Block_object_dispose(&v13, 8);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return result;
}

void __55__MPSGraphExecutable_convertMPSGraphShapesToMLIRTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 272);
  v5 = [v3 shape];
  v6 = [v3 dataType];
  v7 = v5;
  MLIRElementType = getMLIRElementType(v4, v6);
  MLIRType = getMLIRType(v7, MLIRElementType);
  v11 = v10;

  v12[0] = MLIRType;
  v12[1] = v11;

  std::vector<mlir::Type>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, v12);
}

- (vector<mlir::Type,)convertMPSGraphShapesToMLIRTypes:(MPSGraphExecutable *)self funcOp:(SEL)a3 compilationDescriptor:(id)a4
{
  v10 = a4;
  v11 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__711;
  v27 = __Block_byref_object_dispose__712;
  v28 = &unk_1E0AB8473;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = __Block_byref_object_copy__716;
  v22[4] = __Block_byref_object_dispose__717;
  v22[5] = 0;
  v22[6] = a5.var0;
  v12 = [v10 count];
  if (v12 > (v31 - __p) >> 3)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__MPSGraphExecutable_convertMPSGraphShapesToMLIRTypes_funcOp_compilationDescriptor___block_invoke;
  v18[3] = &unk_1E86D50A0;
  v20 = v22;
  v18[4] = self;
  v13 = v11;
  v19 = v13;
  v21 = &v23;
  [v10 enumerateObjectsUsingBlock:v18];
  v14 = v24;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v16 = v14[6];
  v15 = v14[7];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return result;
}

void __84__MPSGraphExecutable_convertMPSGraphShapesToMLIRTypes_funcOp_compilationDescriptor___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 48) + 8) + 48);
  v7 = *(((v6 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v6 + 40) + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(v8 + 48) + 8 * a3);
  v10 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v56 = v10;
    v57 = v11;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v46 = a3;
    MTLReportFailure();
  }

LABEL_8:
  v12 = *(*(a1 + 32) + 272);
  v13 = [v5 shape];
  v14 = [v5 dataType];
  v15 = v13;
  MLIRElementType = getMLIRElementType(v12, v14);
  MLIRType = getMLIRType(v15, MLIRElementType);
  v19 = v18;

  v54 = MLIRType;
  v55 = v19;

  v52[0] = mlir::ElementsAttr::isSplat(&v56);
  if (mlir::Type::isIntOrFloat(v52))
  {
    __p[0] = mlir::ElementsAttr::isSplat(&v56);
    v20 = mlir::Type::getIntOrFloatBitWidth(__p) != 1;
  }

  else
  {
    v20 = 1;
  }

  if ([v5 dataType] == 536870920 && !v20)
  {
    v21 = [v5 shape];
    isSplat = mlir::ElementsAttr::isSplat(&v56);
    v54 = getMLIRType(v21, isSplat);
    v55 = v23;
  }

  if (([*(a1 + 40) compilerOptions] & 0x200) == 0)
  {
    mlir::ElementsAttr::isSplat(&v56);
    mlir::ElementsAttr::isSplat(&v54);
    v24 = mlir::ElementsAttr::isSplat(&v56);
    if (v24 != mlir::ElementsAttr::isSplat(&v54))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v42 = mlir::ElementsAttr::isSplat(&v56);
        v43 = v52;
        getIRStringForMLIRObject<mlir::Type>(v52, v42);
        if (v53 < 0)
        {
          v43 = v52[0];
        }

        v44 = mlir::ElementsAttr::isSplat(&v54);
        getIRStringForMLIRObject<mlir::Type>(__p, v44);
        if (v51 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        v48 = v43;
        v49 = v45;
        v47 = a3;
        MTLReportFailure();
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        if (v53 < 0)
        {
          operator delete(v52[0]);
        }
      }
    }
  }

  v25 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v25 = 0;
  }

  v52[0] = v25;
  if (v25)
  {
    mlir::ArrayAttr::getValue(v52);
    if (!v26)
    {
      v27 = [v5 shape];
      if ([v27 count] == 1)
      {
        v28 = [v5 shape];
        v29 = [v28 objectAtIndexedSubscript:0];
        v30 = [v29 integerValue];

        if (v30 == 1)
        {
          std::vector<mlir::Type>::push_back[abi:ne200100](*(*(a1 + 56) + 8) + 48, &v56);
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v56);
    v33 = v32;
    v34 = mlir::CallableOpInterface::getArgAttrsAttr(&v54);
    mlir::verifyCompatibleShape(ArgAttrsAttr, v33, v34, v35);
    v36 = mlir::CallableOpInterface::getArgAttrsAttr(&v56);
    v38 = v37;
    v39 = mlir::CallableOpInterface::getArgAttrsAttr(&v54);
    if ((mlir::verifyCompatibleShape(v36, v38, v39, v40) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v47 = a3;
      MTLReportFailure();
    }
  }

  if ([*(a1 + 40) compilerOptions])
  {
    v41 = &v54;
  }

  else if (([*(a1 + 40) compilerOptions] & 0x200) != 0)
  {
    v41 = &v54;
  }

  else
  {
    v41 = &v56;
  }

  std::vector<mlir::Type>::push_back[abi:ne200100](*(*(a1 + 56) + 8) + 48, v41);
LABEL_30:
}

- (vector<mlir::NamedAttribute,)getAttributesFromDescriptors:(MPSGraphExecutable *)self context:(SEL)a3 deviceDescriptor:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v41 = v9;
  v43 = v10;
  v44 = retstr;
  if (v9)
  {
    [v9 getNamedAttrArray:a5 deviceDescriptor:{v10, v9, v10, retstr}];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  v11 = [*(self + 46) entryFunctionName];

  if (v11)
  {
    v48 = "mps.entryFunctionName";
    LOWORD(v52) = 259;
    v12 = mlir::StringAttr::get(a5, &v48);
    v13 = [*(self + 46) entryFunctionName];
    v14 = v13;
    v15 = [v13 UTF8String];
    v63 = 257;
    if (*v15)
    {
      *&v62[0] = v15;
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    LOBYTE(v63) = v16;
    v17 = mlir::StringAttr::get(a5, v62);
    mlir::NamedAttribute::NamedAttribute(&__p, v12, v17);
    std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](v44, &__p);
  }

  v18 = *(self + 48);
  if (v18)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (!v19)
    {
      v20 = 0;
      goto LABEL_38;
    }

    v20 = 0;
    v46 = *v59;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v59 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        __p = 0uLL;
        v57 = 0;
        v49 = 0;
        v53 = 0;
        v54 = 1;
        v51 = 0;
        v52 = 0;
        v50 = 0;
        v48 = &unk_1F5B3FB30;
        p_p = &__p;
        llvm::raw_ostream::SetBufferAndMode(&v48, 0, 0, 0);
        v23 = v22;
        v24 = [v22 UTF8String];
        v25 = v24;
        if (v24)
        {
          v26 = strlen(v24);
          if (v26 > v51 - v52)
          {
            v27 = llvm::raw_ostream::write(&v48, v25, v26);
            v28 = v27[4];
            if ((v27[3] - v28) > 1)
            {
              goto LABEL_19;
            }

            goto LABEL_23;
          }

          if (v26)
          {
            memcpy(v52, v25, v26);
            v52 += v26;
          }
        }

        v27 = &v48;
        v28 = v52;
        if ((v51 - v52) > 1)
        {
LABEL_19:
          *v28 = 8250;
          v27[4] += 2;
          goto LABEL_24;
        }

LABEL_23:
        v27 = llvm::raw_ostream::write(v27, ": ", 2uLL);
LABEL_24:
        v29 = [*(self + 48) objectForKeyedSubscript:v22];
        v30 = v29;
        v31 = [v29 UTF8String];
        v32 = v31;
        if (v31)
        {
          v33 = strlen(v31);
          v34 = v27[4];
          if (v33 <= v27[3] - v34)
          {
            if (v33)
            {
              memcpy(v34, v32, v33);
              v27[4] += v33;
            }
          }

          else
          {
            llvm::raw_ostream::write(v27, v32, v33);
          }
        }

        v63 = 260;
        *&v62[0] = &__p;
        v35 = mlir::StringAttr::get(a5, v62);
        v36 = v20;
        v37 = v20 >> 3;
        if (((v20 >> 3) + 1) >> 61)
        {
          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        if (v20 >> 3 != -1)
        {
          if (!(((v20 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v37) = v35;
        v20 = 8 * v37 + 8;
        memcpy(0, 0, v36);
        llvm::raw_ostream::~raw_ostream(&v48);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__p);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (!v19)
      {
LABEL_38:

        v48 = "mps.callables";
        LOWORD(v52) = 259;
        v38 = mlir::StringAttr::get(a5, &v48);
        v39 = mlir::ArrayAttr::get(a5, 0, v20 >> 3);
        mlir::NamedAttribute::NamedAttribute(v62, v38, v39);
        std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](v44, v62);
        break;
      }
    }
  }

  return result;
}

- (void)initializeFuncNamesInOriginalModule
{
  [(MPSGraphExecutable *)self optimizeOriginalModule];
  std::mutex::lock((self + 8));
  v3 = (self + 864);
  if (*(self + 904))
  {
    goto LABEL_43;
  }

  *__n = 0u;
  *__p = 0u;
  v26 = 1065353216;
  v4 = OriginalModuleRef::get(self + 37, 0);
  if (!v4)
  {
    v10 = __p[0];
    if (__p[0])
    {
      do
      {
        v12 = *v10;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }

    v11 = __n[0];
    if (__n[0])
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v23 = __n;
  v27 = &v23;
  mlir::detail::walk<mlir::ForwardIterator>(v4, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ57__MPSGraphExecutable_initializeFuncNamesInOriginalModule_E4__19NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v27, 1);
  if (*(self + 904) != 1)
  {
    *v3 = 0u;
    *(self + 55) = 0u;
    *(self + 224) = v26;
    prime = __n[1];
    if (__n[1] == 1)
    {
      prime = 2;
LABEL_36:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(self + 864, prime);
LABEL_37:
      v19 = __p[0];
      if (__p[0])
      {
        do
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(self + 864, (v19 + 2), (v19 + 2));
          v19 = *v19;
        }

        while (v19);
      }

      *(self + 904) = 1;
      goto LABEL_40;
    }

    if ((__n[1] & (__n[1] - 1)) != 0)
    {
      prime = std::__next_prime(__n[1]);
      v14 = *(self + 872);
      v15 = prime >= *&v14;
      if (prime > *&v14)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v14 = 0;
      v15 = 1;
      if (__n[1])
      {
        goto LABEL_36;
      }
    }

    if (v15)
    {
      goto LABEL_37;
    }

    v16 = vcvtps_u32_f32(*(self + 111) / *(self + 224));
    if (*&v14 < 3uLL || (v17 = vcnt_s8(v14), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
    {
      v16 = std::__next_prime(v16);
    }

    else
    {
      v18 = 1 << -__clz(v16 - 1);
      if (v16 >= 2)
      {
        v16 = v18;
      }
    }

    if (prime <= v16)
    {
      prime = v16;
    }

    if (prime >= *&v14)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v3 != __n)
  {
    *(self + 224) = v26;
    v5 = __p[0];
    v6 = *(self + 109);
    if (v6 && (bzero(*v3, 8 * v6), v7 = *(self + 110), *(self + 110) = 0, *(self + 111) = 0, v7))
    {
      while (v5)
      {
        std::string::operator=((v7 + 16), (v5 + 16));
        v8 = *v7;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(self + 864, v7);
        v5 = *v5;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      do
      {
        v9 = *v7;
        if (v7[39] < 0)
        {
          operator delete(*(v7 + 2));
        }

        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }

    else
    {
LABEL_9:
      if (v5)
      {
        operator new();
      }
    }
  }

LABEL_40:
  v20 = __p[0];
  if (__p[0])
  {
    do
    {
      v21 = *v20;
      if (*(v20 + 39) < 0)
      {
        v22 = v20;
        operator delete(v20[2]);
        v20 = v22;
      }

      operator delete(v20);
      v20 = v21;
    }

    while (v21);
  }

  v11 = __n[0];
  __n[0] = 0;
  if (v11)
  {
LABEL_42:
    operator delete(v11);
  }

LABEL_43:
  std::mutex::unlock((self + 8));
}

- (BOOL)checkSpecializationValidForSingleEntry
{
  [(MPSGraphExecutable *)self initializeFuncNamesInOriginalModule];
  v3 = (self + 864);
  if (*(self + 904) != 1)
  {
    goto LABEL_13;
  }

  if (*(self + 111) == 1)
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  v5 = [*(self + 46) entryFunctionName];

  if (!v5)
  {
    v10 = 4;
    strcpy(__p, "main");
    v6 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(v3, __p);
    if (v10 < 0)
    {
      v7 = v6;
      operator delete(__p[0]);
      v6 = v7;
    }

    if (v6)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v4 = MTLReportFailureTypeEnabled();
    if (!v4)
    {
      return v4;
    }

    MTLReportFailure();
LABEL_13:
    LOBYTE(v4) = 0;
    return v4;
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (id)applyOptionsToEntryPoint:(id)a3 compilationDescriptor:(id)a4
{
  v6 = a3;
  if (!a4)
  {
    a4 = *(self + 46);
  }

  v7 = a4;
  v8 = [v6 shapedInputTypes];
  if (([v7 compilerOptions] & 1) == 0)
  {

    v8 = 0;
  }

  v9 = [MPSGraphExecutableShapedEntryPoint alloc];
  v10 = [v6 entryFunctionName];
  v11 = [(MPSGraphExecutableShapedEntryPoint *)v9 initWithEntryFunctionName:v10 inputTypes:v8];

  return v11;
}

- (MPSGraphModuleKey)getDeviceCacheKeyForTransformedEntryPointImpl:(SEL)a3 deviceDescriptor:(id)a4 compilationDescriptor:(id)a5
{
  v18[6] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (!a6)
  {
    a6 = *(self + 46);
  }

  v12 = a6;
  v13 = [v10 entryFunctionName];
  if (v13)
  {
    [v10 entryFunctionName];
  }

  else
  {
    [*(self + 46) entryFunctionName];
  }
  v14 = ;

  v15 = [v10 shapedInputTypes];
  getFlatShapes(v17, v15);

  MPSGraphModuleKey::MPSGraphModuleKey(retstr, v17, v12, *(self + 48), v14, v11);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  return result;
}

- (MPSGraphModuleKey)getDeviceCacheKeyForTransformedEntryPoint:(SEL)a3 device:(id)a4 compilationDescriptor:(id)a5
{
  v12 = a4;
  v9 = a6;
  v10 = [a5 deviceDescriptor];
  [(MPSGraphExecutable *)self getDeviceCacheKeyForTransformedEntryPointImpl:v12 deviceDescriptor:v10 compilationDescriptor:v9];

  return result;
}

- (MPSGraphModuleKey)getDeviceCacheKeyForEntryPoint:(SEL)a3 device:(id)a4 compilationDescriptor:(id)a5
{
  v12 = a5;
  v9 = a6;
  v10 = [(MPSGraphExecutable *)self applyOptionsToEntryPoint:a4 compilationDescriptor:v9];
  [(MPSGraphExecutable *)self getDeviceCacheKeyForTransformedEntryPoint:v10 device:v12 compilationDescriptor:v9];

  return result;
}

- (BOOL)sendANEStreamingSessionSignal:(id)a3 sessionDescriptor:(id)a4 report:(id)a5
{
  v51[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47 = 0;
  v48 = 0;
  v11 = [MPSGraphExecutableShapedEntryPoint alloc];
  v12 = [v9 shapedEntryPoint];
  v13 = [v12 entryFunctionName];
  v14 = [v9 shapedEntryPoint];
  v15 = [v14 inputTypes];
  v16 = getShapesFromTypes(v15);
  v17 = [(MPSGraphExecutableShapedEntryPoint *)v11 initWithEntryFunctionName:v13 inputTypes:v16];

  v18 = [v9 perEntryPointToSymbolAndFileNameMap];

  if (v18)
  {
    v19 = [v9 shapedEntryPoint];
    [v19 entryFunctionName];

    v20 = [v9 shapedEntryPoint];
    v21 = [v20 entryFunctionName];

    if (!v21 && MTLReportFailureTypeEnabled())
    {
      v41 = [v9 shapedEntryPoint];
      v42 = [v41 entryFunctionName];
      MTLReportFailure();
    }

    v22 = [v9 perEntryPointToSymbolAndFileNameMap];
    v23 = [(MPSGraphExecutable *)self getRuntimeSpecializationAndEntryFunction:v8 shapedEntryPoint:v17 perEntryPointToSymbolAndFileNameMap:v22 entryFuncOp:&v47 runtime:&v48];

    v24 = v48;
    if (v48[75])
    {
      goto LABEL_4;
    }

LABEL_17:
    v25 = 1;
    goto LABEL_18;
  }

  v26 = [v9 compilationDescriptor];
  [(MPSGraphExecutable *)self specializeWithDevice:v8 shapedEntryPoint:v17 compilationDescriptor:v26];

  v27 = v8;
  v51[0] = v17;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v29 = [v9 compilationDescriptor];
  v24 = [(MPSGraphExecutable *)self getNewRuntimeForDevice:v27 specializedModule:v43 shapedEntryPoints:v28 compilationDescriptor:v29];
  v48 = v24;

  v30 = (*(*v44 + 24))(v44, 0);
  v31 = v46;
  v32 = __p[0];
  v33 = __p[1];
  Context = mlir::Attribute::getContext((v30 + 6));
  v35 = __p;
  if ((v31 & 0x80u) == 0)
  {
    v36 = v31;
  }

  else
  {
    v36 = v33;
  }

  v50 = 261;
  if ((v31 & 0x80u) != 0)
  {
    v35 = v32;
  }

  v49[0] = v35;
  v49[1] = v36;
  v37 = mlir::StringAttr::get(Context, v49);
  v38 = mlir::SymbolTable::lookupSymbolIn(v30, v37);
  if (v38)
  {
    if (*(*(v38 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v47 = v39;
    if (v46 < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v47 = 0;
    if (v46 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }
  }

  v23 = 0;
  if (!v24[75])
  {
    goto LABEL_17;
  }

LABEL_4:
  v25 = MPSRuntime::aneStreamingSessionSignal(v24, v9, v47, v23, v10);
LABEL_18:

  return v25;
}

- (void)getRuntimeSpecializationAndEntryFunction:(id)a3 shapedEntryPoint:(id)a4 perEntryPointToSymbolAndFileNameMap:(id)a5 entryFuncOp:(void *)a6 runtime:(BaseRuntime *)a7
{
  v53[5] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v44 = v13;
  v15 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)v14 perEntryPointMap];
  v16 = [v15 allKeys];

  v45 = 0;
  [(MPSGraphExecutable *)self specializedModuleWithDevice:v12 shapedEntryPoints:v16 compilationDescriptor:0 error:&v45];
  v43 = v45;
  v17 = *v51;
  *a7 = [(MPSGraphExecutable *)self getNewRuntimeForDevice:v12 specializedModule:*v51 shapedEntryPoints:v16 compilationDescriptor:0];
  [(MPSGraphExecutable *)self getDeviceCacheKeyForEntryPoint:v13 device:v12 compilationDescriptor:0];
  v18 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::doFind<MPSGraphModuleKey>(v17[1], *(v17 + 6), &v49);
  v19 = *(v17 + 6);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17[1] + 120 * v19;
  }

  if (v20 == v17[1] + 120 * v19 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = (*(**v17 + 24))(*v17, 0);
  v24 = *(v20 + 96);
  v23 = v20 + 96;
  v22 = v24;
  v25 = *(v23 + 23);
  v26 = *(v23 + 8);
  Context = mlir::Attribute::getContext((v21 + 6));
  if (v25 >= 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  v48 = 261;
  if (v25 >= 0)
  {
    v29 = v23;
  }

  else
  {
    v29 = v22;
  }

  v46[0] = v29;
  v46[1] = v28;
  v30 = mlir::StringAttr::get(Context, v46);
  v31 = mlir::SymbolTable::lookupSymbolIn(v21, v30);
  if (v31)
  {
    if (*(*(v31 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  *a6 = v32;
  v33 = *a7;
  SpecializationOrNil = RuntimeSpecializationsCache::getSpecializationOrNil(*(*a7 + 85), v14);
  if (!SpecializationOrNil)
  {
    createToPerEntryFuncOpSymbolMap(v46, v14, v16, v51, v52);
    RuntimeSpecializationsCache::getOrCreateSpecialization(*(v33 + 85), v14);
    v35 = v46[0];
    if (v47)
    {
      v36 = 16 * v47;
      v37 = (v46[0] + 8);
      do
      {
        if ((*(v37 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
        }

        v37 += 2;
        v36 -= 16;
      }

      while (v36);
      v35 = v46[0];
      v38 = (16 * v47);
    }

    else
    {
      v38 = 0;
    }

    llvm::deallocate_buffer(v35, v38);
  }

  if (v49 != v50)
  {
    free(v49);
  }

  v39 = v51;
  if (v52)
  {
    v40 = &v51[5 * v52 - 3];
    v41 = -40 * v52;
    do
    {
      if (*(v40 + 23) < 0)
      {
        operator delete(*v40);
      }

      v40 -= 40;
      v41 += 40;
    }

    while (v41);
    v39 = v51;
  }

  if (v39 != v53)
  {
    free(v39);
  }

  return SpecializationOrNil;
}

- (SmallVector<MPSGraphExecutableCacheValue,)specializedModuleWithDevice:(MPSGraphExecutable *)self shapedEntryPoints:(SEL)a3 compilationDescriptor:(id)a4 error:(id)a5
{
  v139 = *MEMORY[0x1E69E9840];
  v119[0] = self;
  v118 = a4;
  v95 = a5;
  v10 = a6;
  v11 = v10;
  if (!v10)
  {
    v11 = *(self + 46);
  }

  v12 = v11;
  v117 = v12;

  v13 = v12;
  if (v12 != *(self + 46))
  {
    overrideCompilationDescriptorWithEV(v12);
    v13 = v117;
  }

  v14 = [(MPSGraphCompilationDescriptor *)v13 callables];
  if (v14)
  {
    v15 = [(MPSGraphCompilationDescriptor *)v117 callables];
    v16 = [*(v119[0] + 46) callables];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  [v95 count];
  if (![v95 count] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([v95 count] == 1)
  {
    v18 = [v95 objectAtIndexedSubscript:0];
    v19 = [v18 entryFunctionName];

    v116 = v19 == 0;
    if (!v19)
    {
      v20 = [(MPSGraphCompilationDescriptor *)v117 entryFunctionName];
      if (v20)
      {
        v21 = [(MPSGraphCompilationDescriptor *)v117 entryFunctionName];
        v22 = [*(v119[0] + 46) entryFunctionName];
        v23 = [v21 isEqual:v22];

        if ((v23 & 1) == 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    v116 = 0;
  }

  if (!v118 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = [(MPSGraphCompilationDescriptor *)v117 entryFunctionName];
  if (v24)
  {

    goto LABEL_21;
  }

  v25 = [*(v119[0] + 46) entryFunctionName];

  if (v25)
  {
LABEL_21:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v26 = v95;
  v27 = [v26 countByEnumeratingWithState:&v112 objects:v138 count:16];
  if (v27)
  {
    v28 = *v113;
    do
    {
      v29 = 0;
      do
      {
        if (*v113 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v112 + 1) + 8 * v29);
        [v30 entryFunctionName];

        v31 = [v30 entryFunctionName];
        LODWORD(v30) = v31 == 0;

        if (v30 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        ++v29;
      }

      while (v27 != v29);
      v32 = [v26 countByEnumeratingWithState:&v112 objects:v138 count:16];
      v27 = v32;
    }

    while (v32);
  }

LABEL_35:
  v111 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v95, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v96 = v95;
  v33 = [v96 countByEnumeratingWithState:&v107 objects:v137 count:16];
  if (v33)
  {
    v34 = *v108;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v108 != v34)
        {
          objc_enumerationMutation(v96);
        }

        v36 = [v119[0] applyOptionsToEntryPoint:*(*(&v107 + 1) + 8 * i) compilationDescriptor:v117];
        [v111 addObject:v36];
      }

      v33 = [v96 countByEnumeratingWithState:&v107 objects:v137 count:16];
    }

    while (v33);
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  if (v118)
  {
    v37 = [v111 count];
    if (0xAAAAAAAAAAAAAAABLL * ((v106 - v104) >> 5) < v37)
    {
      if (v37 < 0x2AAAAAAAAAAAAABLL)
      {
        v129[2] = &v104;
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v38 = v111;
    v39 = [v38 countByEnumeratingWithState:&v100 objects:v136 count:16];
    if (v39)
    {
      v40 = *v101;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v101 != v40)
          {
            objc_enumerationMutation(v38);
          }

          [v119[0] getDeviceCacheKeyForTransformedEntryPoint:*(*(&v100 + 1) + 8 * j) device:v118 compilationDescriptor:v117];
          v42 = v105;
          if (v105 >= v106)
          {
            std::vector<MPSGraphModuleKey>::__emplace_back_slow_path<MPSGraphModuleKey>(&v104, &v128);
            goto LABEL_66;
          }

          v43 = v105 + 2;
          *v105 = v105 + 2;
          *(v42 + 8) = 0x600000000;
          if (v42 != &v128)
          {
            v44 = DWORD2(v128);
            if (DWORD2(v128))
            {
              v45 = v128;
              if (v128 != v129)
              {
                *v42 = v128;
                *(v42 + 8) = v44;
                *(v42 + 12) = HIDWORD(v128);
                *&v128 = v129;
                HIDWORD(v128) = 0;
LABEL_64:
                DWORD2(v128) = 0;
                goto LABEL_65;
              }

              if (DWORD2(v128) < 7uLL)
              {
                v47 = DWORD2(v128);
LABEL_62:
                memcpy(v43, v45, 8 * v47);
              }

              else
              {
                *(v42 + 8) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v42, v42 + 16, v44, 8);
                v47 = DWORD2(v128);
                if (DWORD2(v128))
                {
                  v45 = v128;
                  v43 = *v42;
                  goto LABEL_62;
                }
              }

              *(v42 + 8) = v44;
              goto LABEL_64;
            }
          }

LABEL_65:
          v48 = v130;
          v130 = 0u;
          *(v42 + 64) = v48;
          v49 = v131;
          v131 = 0u;
          *(v42 + 80) = v49;
          v46 = (v42 + 96);
LABEL_66:
          v105 = v46;

          if (v128 != v129)
          {
            free(v128);
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v100 objects:v136 count:16];
      }

      while (v39);
    }
  }

  v99[0] = &v118;
  v99[1] = v119;
  v99[2] = &v111;
  v99[3] = &v104;
  v99[4] = &v117;
  [MPSGraphExecutable specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:]::$_21::operator()(retstr, v99);
  if (!retstr->var1)
  {
    var3 = retstr->var3;
    if (retstr->var0 != retstr->var3)
    {
      free(retstr->var0);
    }

    v133 = v135;
    v134 = 0x100000000;
    v50 = v119[0];
    std::mutex::lock((v119[0] + 200));
    [MPSGraphExecutable specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:]::$_21::operator()(retstr, v99);
    if (retstr->var1)
    {
      std::mutex::unlock((v50 + 200));
      v81 = v133;
      if (v134)
      {
        v82 = &v133[40 * v134 - 24];
        v83 = -40 * v134;
        do
        {
          if (*(v82 + 23) < 0)
          {
            operator delete(*v82);
          }

          v82 -= 40;
          v83 += 40;
        }

        while (v83);
        v81 = v133;
      }

      if (v81 != v135)
      {
        free(v81);
      }

      goto LABEL_137;
    }

    if (retstr->var0 != var3)
    {
      free(retstr->var0);
    }

    v97[0] = 0;
    v97[1] = 0;
    v98 = 0;
    if (v118)
    {
      std::mutex::lock((v119[0] + 72));
      *&v123 = v104;
      *&v120 = v105;
      llvm::detail::DenseSetImpl<MPSGraphModuleKey,llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKeyInfo>::DenseSetImpl<std::__wrap_iter<MPSGraphModuleKey*>>(&v128, &v123, &v120);
      llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v97);
      llvm::deallocate_buffer(0, 0);
    }

    [v119[0] optimizeOriginalModule];
    LOBYTE(v128) = 0;
    v132 = 0;
    if (!v116)
    {
LABEL_119:
      *&v120 = &v111;
      *(&v120 + 1) = &v116;
      v121.__r_.__value_.__r.__words[0] = v119;
      v121.__r_.__value_.__l.__size_ = &v117;
      v121.__r_.__value_.__r.__words[2] = &v128;
      v122 = &v118;
      if (v118)
      {
        v76 = v119[0];
        std::mutex::lock((v119[0] + 72));
        v77 = v119[0] + 440;
        v78 = llvm::DenseMapBase<llvm::DenseMap<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>,llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,llvm::detail::DenseSetEmpty,MPSGraphModuleKeysSetInfo,llvm::detail::DenseSetPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>>::doFind<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>>(*(v119[0] + 61), *(v119[0] + 126), v97);
        v79 = *(v77 + 6);
        v80 = *(v77 + 16);
        std::mutex::unlock((v76 + 72));
        if (v78 && v78 != v79 + 24 * v80)
        {
          [MPSGraphExecutable specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:]::$_22::operator()();
        }

        [MPSGraphExecutable specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:]::$_22::operator()();
      }

      [MPSGraphExecutable specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:]::$_22::operator()();
    }

    [v119[0] checkSpecializationValidForSingleEntry];
    v51 = v119[0];
    v52 = [v111 objectAtIndexedSubscript:0];
    [v51 getNoDeviceCacheKeyForTransformedEntryPoint:v52 compilationDescriptor:v117];
    if (v132 == 1)
    {
      v53 = v123;
      if (v123 != &v124)
      {
        if (v128 != v129)
        {
          free(v128);
          v53 = v123;
        }

        *&v128 = v53;
        *(&v128 + 1) = *(&v123 + 1);
        *&v123 = &v124;
        HIDWORD(v123) = 0;
        goto LABEL_107;
      }

      v57 = DWORD2(v123);
      v58 = DWORD2(v128);
      if (DWORD2(v128) >= DWORD2(v123))
      {
        if (DWORD2(v123))
        {
          memmove(v128, v123, 8 * DWORD2(v123));
        }

        goto LABEL_106;
      }

      if (HIDWORD(v128) >= DWORD2(v123))
      {
        if (DWORD2(v128))
        {
          memmove(v128, v123, 8 * DWORD2(v128));
          goto LABEL_104;
        }
      }

      else
      {
        DWORD2(v128) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v129, DWORD2(v123), 8);
      }

      v58 = 0;
LABEL_104:
      v63 = DWORD2(v123) - v58;
      if (v63)
      {
        memcpy((v128 + 8 * v58), (v123 + 8 * v58), 8 * v63);
      }

LABEL_106:
      DWORD2(v128) = v57;
LABEL_107:
      DWORD2(v123) = 0;
      v64 = v126;
      *&v126 = 0;
      v65 = v130;
      *&v130 = v64;

      v66 = *(&v126 + 1);
      *(&v126 + 1) = 0;
      v67 = *(&v130 + 1);
      *(&v130 + 1) = v66;

      v68 = v127;
      *&v127 = 0;
      v69 = v131;
      *&v131 = v68;

      v70 = *(&v127 + 1);
      *(&v127 + 1) = 0;
      v71 = *(&v131 + 1);
      *(&v131 + 1) = v70;

      v60 = *(&v127 + 1);
      goto LABEL_108;
    }

    v54 = v129;
    *&v128 = v129;
    *(&v128 + 1) = 0x600000000;
    v55 = DWORD2(v123);
    if (!DWORD2(v123))
    {
LABEL_100:
      v60 = 0;
      v61 = v126;
      v62 = v127;
      v126 = 0u;
      v127 = 0u;
      v130 = v61;
      v131 = v62;
      v132 = 1;
LABEL_108:

      if (v123 != &v124)
      {
        free(v123);
      }

      v72 = (v119[0] + 512);
      v73 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::doFind<MPSGraphModuleKey>(*(v119[0] + 67), *(v119[0] + 138), &v128);
      v74 = v73;
      if (v73)
      {
        if (v73 != (v72->_currentCache.Buckets + 136 * v72->_currentCache.NumBuckets))
        {
          v75 = v73 + 1;
          if (MPSGraphSpecializationCache::moduleValid(v72, v73[1].var0.var0))
          {
            v123 = *&v75->var0.var0;
            if (v74[1].var0.var3[23] < 0)
            {
              std::string::__init_copy_ctor_external(&v124, *v74[1].var0.var3, *&v74[1].var0.var3[8]);
            }

            else
            {
              v124 = *v74[1].var0.var3;
            }

            v125 = 1;
            if (!v118)
            {
              v90 = [(MPSGraphCompilationDescriptor *)v117 compilationCompletionHandler];
              v91 = v90 == 0;

              if (!v91)
              {
                v92 = [(MPSGraphCompilationDescriptor *)v117 compilationCompletionHandler];
                (v92)[2](v92, v119[0], 0);
              }

              v120 = v123;
              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v121, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
              }

              else
              {
                v121 = v124;
              }

              retstr->var0 = var3;
              *&retstr->var1 = 0x100000000;
              llvm::SmallVectorImpl<MPSGraphExecutableCacheValue>::append(retstr, &v120, 1);
              if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v121.__r_.__value_.__l.__data_);
              }

              if (v125 == 1 && SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              if (v132 == 1)
              {

                if (v128 != v129)
                {
                  free(v128);
                }
              }

              llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v97);
              llvm::deallocate_buffer(v97[0], (96 * v98));
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      goto LABEL_119;
    }

    v56 = v123;
    if (v123 != &v124)
    {
      v128 = v123;
      *&v123 = &v124;
      HIDWORD(v123) = 0;
LABEL_99:
      DWORD2(v123) = 0;
      goto LABEL_100;
    }

    if (DWORD2(v123) < 7)
    {
      v59 = DWORD2(v123);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v129, DWORD2(v123), 8);
      v59 = DWORD2(v123);
      if (!DWORD2(v123))
      {
LABEL_98:
        DWORD2(v128) = v55;
        goto LABEL_99;
      }

      v56 = v123;
      v54 = v128;
    }

    memcpy(v54, v56, 8 * v59);
    goto LABEL_98;
  }

LABEL_137:
  v84 = v104;
  if (v104)
  {
    v85 = v105;
    v86 = v104;
    if (v105 != v104)
    {
      do
      {

        v87 = v85 - 12;
        v88 = *(v85 - 12);
        if (v85 - 10 != v88)
        {
          free(v88);
        }

        v85 -= 12;
      }

      while (v87 != v84);
      v86 = v104;
    }

    v105 = v84;
    operator delete(v86);
  }

  return result;
}

- (void)specializedModuleWithDevice:shapedEntryPoints:compilationDescriptor:error:
{
  v44[5] = *MEMORY[0x1E69E9840];
  if (!**a2)
  {
    *a1 = a1 + 2;
    a1[1] = 0x100000000;
    return;
  }

  v38 = **(a2 + 8);
  std::mutex::lock((v38 + 72));
  v42 = v44;
  v43 = 0x100000000;
  v4 = [**(a2 + 16) count];
  if (v4 > 1)
  {
    *&v39 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v42, v44, v4, 40, &v39);
    v6 = v5;
    v7 = v42;
    if (v43)
    {
      v8 = v42 + 40 * v43;
      v9 = v6;
      do
      {
        *v9 = *v7;
        v10 = *(v7 + 1);
        v9[4] = *(v7 + 4);
        *(v9 + 1) = v10;
        *(v7 + 3) = 0;
        *(v7 + 4) = 0;
        *(v7 + 2) = 0;
        v9 += 5;
        v7 += 40;
      }

      while (v7 != v8);
      v7 = v42;
      if (v43)
      {
        v11 = (v42 + 40 * v43 - 24);
        v12 = -40 * v43;
        do
        {
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          v11 -= 5;
          v12 += 40;
        }

        while (v12);
        v7 = v42;
      }
    }

    v13 = v39;
    if (v7 != v44)
    {
      free(v7);
    }

    v42 = v6;
    HIDWORD(v43) = v13;
  }

  v14 = 0;
  v15 = 0;
  for (i = [**(a2 + 16) count]; v15 != i; i = objc_msgSend(**(a2 + 16), "count", v23, v37))
  {
    v17 = **(a2 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(a2 + 24) + 8) - v17) >> 5) <= v15)
    {
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }

    v18 = (**(a2 + 8) + 440);
    v19 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::doFind<MPSGraphModuleKey>(*(**(a2 + 8) + 464), *(**(a2 + 8) + 480), (v17 + v14));
    v20 = v19;
    if (!v19 || v19 == (v18->_currentCache.Buckets + 136 * v18->_currentCache.NumBuckets))
    {
      break;
    }

    v22 = v19 + 1;
    if (!MPSGraphSpecializationCache::moduleValid(v18, v19[1].var0.var0))
    {
      break;
    }

    v39 = *&v22->var0.var0;
    if (v20[1].var0.var3[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v20[1].var0.var3, *&v20[1].var0.var3[8]);
    }

    else
    {
      __p = *v20[1].var0.var3;
    }

    v41 = 1;
    v24 = v42;
    if (v43 && *v42 != v39)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      break;
    }

    if (v43 >= HIDWORD(v43))
    {
      if (v42 <= &v39 && v42 + 40 * v43 > &v39)
      {
        llvm::SmallVectorTemplateBase<MPSGraphExecutableCacheValue,false>::grow(&v42, v43 + 1);
        v28 = (&v39 - v24);
        v24 = v42;
        v25 = &v28[v42];
      }

      else
      {
        llvm::SmallVectorTemplateBase<MPSGraphExecutableCacheValue,false>::grow(&v42, v43 + 1);
        v25 = &v39;
        v24 = v42;
      }
    }

    else
    {
      v25 = &v39;
    }

    v26 = &v24[40 * v43];
    *v26 = *v25;
    if (v25[39] < 0)
    {
      std::string::__init_copy_ctor_external((v26 + 16), *(v25 + 2), *(v25 + 3));
    }

    else
    {
      v27 = *(v25 + 1);
      *(v26 + 4) = *(v25 + 4);
      *(v26 + 1) = v27;
    }

    LODWORD(v43) = v43 + 1;
    if (v41 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v15;
    v14 += 96;
  }

  v29 = v43;
  if ([**(a2 + 16) count] == v29)
  {
    v30 = [**(a2 + 32) compilationCompletionHandler];
    v31 = v30 == 0;

    if (!v31)
    {
      v32 = [**(a2 + 32) compilationCompletionHandler];
      v32[2](v32, **(a2 + 8), 0);
    }

    *v37 = v37 + 2;
    v37[1] = 0x100000000;
    if (!v43)
    {
LABEL_57:
      v34 = v42;
      if (v42 == v44)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    llvm::SmallVectorImpl<MPSGraphExecutableCacheValue>::operator=(v37, &v42);
    v33 = v43;
    v34 = v42;
    if (!v43)
    {
      goto LABEL_49;
    }

LABEL_53:
    v35 = &v34[5 * v33 - 3];
    v36 = -40 * v33;
    do
    {
      if (*(v35 + 23) < 0)
      {
        operator delete(*v35);
      }

      v35 -= 40;
      v36 += 40;
    }

    while (v36);
    goto LABEL_57;
  }

  *v37 = v37 + 2;
  v37[1] = 0x100000000;
  v33 = v43;
  v34 = v42;
  if (v43)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (v34 != v44)
  {
LABEL_50:
    free(v34);
  }

LABEL_51:
  std::mutex::unlock((v38 + 72));
}

- (void)specializedModuleWithDevice:(void *)a1 shapedEntryPoints:compilationDescriptor:error:
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = v2[3];
      v5 = v2[2];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = v2[2];
      }

      v2[3] = v3;
      operator delete(v5);
    }

    v7 = v2[1];
    v2[1] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    MEMORY[0x1E12E5B90](v2, 0x1020C4025F8E444);
  }

  return a1;
}

- (void)specializeWithDevice:(MPSGraphDevice *)device inputTypes:(NSArray *)inputTypes compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor
{
  v10 = device;
  v8 = compilationDescriptor;
  v9 = getShapesFromTypes(inputTypes);
  [(MPSGraphExecutable *)self specializeWithDevice:v10 inputShapes:v9 compilationDescriptor:v8];
}

- (void)specializeForMultipleInputTypesWithDevice:(id)a3 multipleInputTypes:(id)a4 compilationDescriptor:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 count];
  if (![v9 count] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([v10 waitForCompilationCompletion])
  {
    memset(v26.__cv_.__opaque, 0, sizeof(v26.__cv_.__opaque));
    v26.__cv_.__sig = 1018212795;
    memset(v25.__m_.__opaque, 0, sizeof(v25.__m_.__opaque));
    v24 = [v9 count];
    v25.__m_.__sig = 850045863;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __105__MPSGraphExecutable_specializeForMultipleInputTypesWithDevice_multipleInputTypes_compilationDescriptor___block_invoke;
    v17[3] = &unk_1E86D50F0;
    v18 = v10;
    v19 = self;
    v20 = v8;
    v21 = &v25;
    v22 = &v24;
    v23 = &v26;
    [v9 enumerateObjectsUsingBlock:v17];
    __lk.__m_ = &v25;
    __lk.__owns_ = 1;
    std::mutex::lock(&v25);
    while (atomic_load(&v24))
    {
      std::condition_variable::wait(&v26, &__lk);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    std::mutex::~mutex(&v25);
    std::condition_variable::~condition_variable(&v26);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__MPSGraphExecutable_specializeForMultipleInputTypesWithDevice_multipleInputTypes_compilationDescriptor___block_invoke_3;
    v13[3] = &unk_1E86D5118;
    v13[4] = self;
    v14 = v8;
    v15 = v10;
    [v9 enumerateObjectsUsingBlock:v13];
  }
}

void __105__MPSGraphExecutable_specializeForMultipleInputTypesWithDevice_multipleInputTypes_compilationDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  if (v4)
  {
    v5 = [*(a1 + 32) dispatchQueue];
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = *(v6 + 584);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__MPSGraphExecutable_specializeForMultipleInputTypesWithDevice_multipleInputTypes_compilationDescriptor___block_invoke_2;
  block[3] = &unk_1E86D50C8;
  block[4] = v6;
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v7 = v3;
  dispatch_async(v5, block);
  if (v4)
  {
  }
}

void __105__MPSGraphExecutable_specializeForMultipleInputTypesWithDevice_multipleInputTypes_compilationDescriptor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) specializeWithDevice:*(a1 + 40) inputTypes:*(a1 + 48) compilationDescriptor:*(a1 + 56)];
  v2 = *(a1 + 64);
  std::mutex::lock(v2);
  atomic_fetch_add(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL);
  if (atomic_load(*(a1 + 72)))
  {
    v4 = v2;
  }

  else
  {
    std::condition_variable::notify_all(*(a1 + 80));
    v4 = v2;
  }

  std::mutex::unlock(v4);
}

- (id)getDefaultEntryPointWithShapes:(id)a3
{
  v3 = a3;
  v4 = [[MPSGraphExecutableShapedEntryPoint alloc] initWithEntryFunctionName:0 inputTypes:v3];

  return v4;
}

- (NSArray)getOutputTypesWithDevice:(MPSGraphDevice *)device inputTypes:(NSArray *)inputTypes compilationDescriptor:(MPSGraphCompilationDescriptor *)compilationDescriptor
{
  v8 = device;
  v9 = compilationDescriptor;
  v10 = getShapesFromTypes(inputTypes);
  v11 = [(MPSGraphExecutable *)self getDefaultEntryPointWithShapes:v10];
  v12 = [(MPSGraphExecutable *)self getOutputTypesWithDevice:v8 shapedEntryPoint:v11 compilationDescriptor:v9];

  return v12;
}

- (id)getOutputTypesWithDevice:(id)a3 entryPoint:(id)a4 compilationDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 inputTypes];
  v12 = getShapesFromTypes(v11);

  v13 = [MPSGraphExecutableShapedEntryPoint alloc];
  v14 = [v9 entryFunctionName];
  v15 = [(MPSGraphExecutableShapedEntryPoint *)v13 initWithEntryFunctionName:v14 inputTypes:v12];
  v16 = [(MPSGraphExecutable *)self getOutputTypesWithDevice:v8 shapedEntryPoint:v15 compilationDescriptor:v10];

  return v16;
}

- (id)getOutputTypesWithDevice:(id)a3 shapedEntryPoint:(id)a4 compilationDescriptor:(id)a5
{
  v48[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (*(self + 46) != v10)
  {
    overrideCompilationDescriptorWithEV(v10);
  }

  v45 = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v42 = 0;
  [(MPSGraphExecutable *)self specializedModuleWithDevice:v8 shapedEntryPoints:v12 compilationDescriptor:v11 error:&v42];
  v13 = v42;

  v14 = v46;
  v15 = (*(**(v46 + 1) + 24))(*(v46 + 1), 0);
  v18 = v14[2];
  v16 = (v14 + 2);
  v17 = v18;
  v19 = v16[23];
  v20 = *(v16 + 1);
  Context = mlir::Attribute::getContext((v15 + 6));
  if ((v19 & 0x80u) == 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  v44 = 261;
  if ((v19 & 0x80u) == 0)
  {
    v23 = v16;
  }

  else
  {
    v23 = v17;
  }

  v43[0] = v23;
  v43[1] = v22;
  v24 = mlir::StringAttr::get(Context, v43);
  v25 = mlir::SymbolTable::lookupSymbolIn(v15, v24);
  if (*(*(v25 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(((v27 + 16 * ((*(v27 + 11) >> 23) & 1) + ((*(v27 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10) + 8);
  if (v28)
  {
    v29 = (v28 - 8);
  }

  else
  {
    v29 = 0;
  }

  Terminator = mlir::Block::getTerminator(v29, v26);
  v31 = Terminator;
  if (Terminator && *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v32 = MEMORY[0x1E695DF70];
    if ((*(v31 + 46) & 0x80) != 0)
    {
LABEL_18:
      v33 = *(v31 + 68);
      goto LABEL_19;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v31 = 0;
    v32 = MEMORY[0x1E695DF70];
    if ((MEMORY[0x2E] & 0x80) != 0)
    {
      goto LABEL_18;
    }
  }

  v33 = 0;
LABEL_19:
  v34 = [v32 arrayWithCapacity:v33];
  v35 = 0;
  for (i = 24; (*(v31 + 46) & 0x80) != 0; i += 32)
  {
    if (v35 >= *(v31 + 68))
    {
      break;
    }

    v37 = getMPSGraphShapedType((*(*(*(v31 + 72) + i) + 8) & 0xFFFFFFFFFFFFFFF8));
    [v34 addObject:v37];

    ++v35;
  }

  v38 = v46;
  if (v47)
  {
    v39 = (v46 + 40 * v47 - 24);
    v40 = -40 * v47;
    do
    {
      if (*(v39 + 23) < 0)
      {
        operator delete(*v39);
      }

      v39 -= 5;
      v40 += 40;
    }

    while (v40);
    v38 = v46;
  }

  if (v38 != v48)
  {
    free(v38);
  }

  return v34;
}

- (void)specializeWithDevice:(id)a3 inputShapes:(id)a4 compilationDescriptor:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPSGraphExecutable *)self getDefaultEntryPointWithShapes:v9];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = 0;
  [(MPSGraphExecutable *)self specializeWithDevice:v8 shapedEntryPoints:v12 compilationDescriptor:v10 error:&v14];
  v13 = v14;
}

- (void)specializeWithDevice:(id)a3 entryPoints:(id)a4 compilationDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__MPSGraphExecutable_specializeWithDevice_entryPoints_compilationDescriptor___block_invoke;
  v13[3] = &unk_1E86D5140;
  v13[4] = &v14;
  [v9 enumerateObjectsUsingBlock:v13];
  v11 = v15[5];
  v12 = 0;
  [(MPSGraphExecutable *)self specializeWithDevice:v8 shapedEntryPoints:v11 compilationDescriptor:v10 error:&v12];
  _Block_object_dispose(&v14, 8);
}

void __77__MPSGraphExecutable_specializeWithDevice_entryPoints_compilationDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [MPSGraphExecutableShapedEntryPoint alloc];
  v5 = [v9 entryFunctionName];
  v6 = [v9 inputTypes];
  v7 = getShapesFromTypes(v6);
  v8 = [(MPSGraphExecutableShapedEntryPoint *)v4 initWithEntryFunctionName:v5 inputTypes:v7];
  [v3 addObject:v8];
}

- (void)specializeWithDevice:(id)a3 entryPoints:(id)a4 compilationDescriptor:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__MPSGraphExecutable_specializeWithDevice_entryPoints_compilationDescriptor_error___block_invoke;
  v13[3] = &unk_1E86D5140;
  v13[4] = &v14;
  [v11 enumerateObjectsUsingBlock:v13];
  [(MPSGraphExecutable *)self specializeWithDevice:v10 shapedEntryPoints:v15[5] compilationDescriptor:v12 error:a6];
  _Block_object_dispose(&v14, 8);
}

void __83__MPSGraphExecutable_specializeWithDevice_entryPoints_compilationDescriptor_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [MPSGraphExecutableShapedEntryPoint alloc];
  v5 = [v9 entryFunctionName];
  v6 = [v9 inputTypes];
  v7 = getShapesFromTypes(v6);
  v8 = [(MPSGraphExecutableShapedEntryPoint *)v4 initWithEntryFunctionName:v5 inputTypes:v7];
  [v3 addObject:v8];
}

- (void)specializeWithDevice:(id)a3 shapedEntryPoints:(id)a4 compilationDescriptor:(id)a5 error:(id *)a6
{
  v25[5] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 waitForCompilationCompletion])
  {
    [(MPSGraphExecutable *)self specializedModuleWithDevice:v10 shapedEntryPoints:v11 compilationDescriptor:v12 error:a6];
    v13 = v23;
    if (v24)
    {
      v14 = (v23 + 40 * v24 - 24);
      v15 = -40 * v24;
      do
      {
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v14 -= 5;
        v15 += 40;
      }

      while (v15);
      v13 = v23;
    }

    if (v13 != v25)
    {
      free(v13);
    }
  }

  else
  {
    std::mutex::lock((self + 592));
    atomic_fetch_add(self + 176, 1u);
    std::mutex::unlock((self + 592));
    v16 = [v12 dispatchQueue];
    if (v16)
    {
      v17 = [v12 dispatchQueue];
    }

    else
    {
      v17 = *(self + 73);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__MPSGraphExecutable_specializeWithDevice_shapedEntryPoints_compilationDescriptor_error___block_invoke;
    block[3] = &unk_1E86D5168;
    block[4] = self;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = a6;
    dispatch_async(v17, block);
    if (v16)
    {
    }
  }
}

void __89__MPSGraphExecutable_specializeWithDevice_shapedEntryPoints_compilationDescriptor_error___block_invoke(uint64_t a1)
{
  v8[5] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) specializedModuleWithDevice:*(a1 + 40) shapedEntryPoints:*(a1 + 48) compilationDescriptor:*(a1 + 56) error:*(a1 + 64)];
  v2 = v6;
  if (v7)
  {
    v3 = (v6 + 40 * v7 - 24);
    v4 = -40 * v7;
    do
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      v3 -= 5;
      v4 += 40;
    }

    while (v4);
    v2 = v6;
  }

  if (v2 != v8)
  {
    free(v2);
  }

  v5 = *(a1 + 32);
  std::mutex::lock((v5 + 592));
  if (atomic_fetch_add((*(a1 + 32) + 704), 0xFFFFFFFF) == 1)
  {
    std::condition_variable::notify_all((*(a1 + 32) + 656));
  }

  std::mutex::unlock((v5 + 592));
}

- (MPSGraphExecutableCacheValue)specializeWithDevice:(MPSGraphExecutableCacheValue *__return_ptr)retstr shapedEntryPoint:compilationDescriptor:
{
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v24[5] = *MEMORY[0x1E69E9840];
  v9 = v2;
  v10 = v6;
  v11 = v5;
  v21 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v20 = 0;
  [v7 specializedModuleWithDevice:v9 shapedEntryPoints:v12 compilationDescriptor:v11 error:&v20];
  v13 = v20;
  v14 = v22;
  *&retstr->var0 = *v22;
  if (v14[39] < 0)
  {
    std::string::__init_copy_ctor_external(&retstr->var2, *(v14 + 2), *(v14 + 3));
    v14 = v22;
    v16 = v23;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *(v14 + 1);
    *(&retstr->var2.var0.var1 + 2) = *(v14 + 4);
    *retstr->var2.var0.var0.var0 = v15;
    v16 = v23;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  v17 = &v14[40 * v16 - 24];
  v18 = -40 * v16;
  do
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    v17 -= 40;
    v18 += 40;
  }

  while (v18);
  v14 = v22;
LABEL_10:
  if (v14 != v24)
  {
    free(v14);
  }

  return result;
}

- (void)checkCallablesForModule:(void *)a3
{
  v5 = *(*a3 + 40);
  v4 = *(*a3 + 44);
  v6 = *a3 + 16 * ((v4 >> 23) & 1);
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  v7 = *(((v6 + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v5 + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v55 = &v50;
  v9 = *(v8 + 40);
  v10 = v8 + 32;
  if (v9 != v8 + 32)
  {
    do
    {
      v11 = *(v9 + 8);
      v12 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v9, a2);
      v53[0] = &v55;
      mlir::detail::walk<mlir::ForwardIterator>(v12, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ46__MPSGraphExecutable_checkCallablesForModule__E4__25NS1_3mps6CallOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, v53, 1);
      v9 = v11;
    }

    while (v11 != v10);
    if (v52)
    {
      v13 = v50;
      if (v50 != &v51)
      {
        v48 = self;
        do
        {
          if (*(v13 + 55) < 0)
          {
            v14 = v13[4];
          }

          else
          {
            v14 = v13 + 4;
          }

          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v14, v47}];
          v16 = [*(self + 46) callables];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (v17)
          {
            [v17 optimizeOriginalModule];
            v18 = [v17 getEntryFuncOpForModule:{OriginalModuleRef::get(v17 + 37, 0)}];
            v56 = 0;
            v20 = ((v18 + 16 * ((*(v18 + 44) >> 23) & 1) + ((*(v18 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 40);
            v55 = &v56;
            v21 = *(v20 + 8);
            if (v21 != v20)
            {
              do
              {
                v22 = v21 - 8;
                if (!v21)
                {
                  v22 = 0;
                }

                v23 = *(v22 + 40);
                v24 = v22 + 32;
                if (v23 != v22 + 32)
                {
                  do
                  {
                    v25 = *(v23 + 8);
                    v26 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v23, v19);
                    v53[0] = &v55;
                    mlir::detail::walk<mlir::ForwardIterator>(v26, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZ46__MPSGraphExecutable_checkCallablesForModule__ENK4__26clENS1_4func6FuncOpEEUlNS1_3mps6CallOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, v53, 1);
                    v23 = v25;
                  }

                  while (v25 != v24);
                }

                v21 = *(v21 + 8);
              }

              while (v21 != v20);
              if (v56 && MTLReportFailureTypeEnabled())
              {
                v47 = v15;
                MTLReportFailure();
              }
            }
          }

          else
          {
            v27 = *a3;
            v28 = *(v13 + 55);
            v29 = v13[4];
            v30 = v13[5];
            Context = mlir::Attribute::getContext((*a3 + 24));
            if (v28 >= 0)
            {
              v32 = v28;
            }

            else
            {
              v32 = v30;
            }

            v54 = 261;
            if (v28 >= 0)
            {
              v33 = v13 + 4;
            }

            else
            {
              v33 = v29;
            }

            v53[0] = v33;
            v53[1] = v32;
            v34 = mlir::StringAttr::get(Context, v53);
            v35 = mlir::SymbolTable::lookupSymbolIn(v27, v34);
            if (!v35 || *(*(v35 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
            {
              MTLReportFailureTypeEnabled();
              v47 = v15;
              MTLReportFailure();
              v35 = 0;
            }

            v56 = 0;
            v37 = ((v35 + 16 * ((*(v35 + 11) >> 23) & 1) + ((*(v35 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v35 + 10);
            v55 = &v56;
            v38 = *(v37 + 8);
            if (v38 != v37)
            {
              do
              {
                v39 = v38 - 8;
                if (!v38)
                {
                  v39 = 0;
                }

                v40 = *(v39 + 40);
                v41 = v39 + 32;
                if (v40 != v39 + 32)
                {
                  do
                  {
                    v42 = *(v40 + 8);
                    v43 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v40, v36);
                    v53[0] = &v55;
                    mlir::detail::walk<mlir::ForwardIterator>(v43, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZZ46__MPSGraphExecutable_checkCallablesForModule__ENK4__26clENS1_4func6FuncOpEEUlNS1_3mps6CallOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, v53, 1);
                    v40 = v42;
                  }

                  while (v42 != v41);
                }

                v38 = *(v38 + 8);
              }

              while (v38 != v37);
              if (v56 && MTLReportFailureTypeEnabled())
              {
                v47 = v15;
                MTLReportFailure();
              }
            }

            self = v48;
          }

          v44 = v13[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v13[2];
              v46 = *v45 == v13;
              v13 = v45;
            }

            while (!v46);
          }

          v13 = v45;
        }

        while (v45 != &v51);
      }
    }
  }

  std::__tree<std::string>::destroy(&v50, v51);
}

- (void)applyInputTypes:(const void *)a3 toFunction:(FuncOp)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  var0 = a4.var0;
  v5 = *(self + 34);
  mlir::ValueRange::ValueRange(v19, *a3, (*(a3 + 1) - *a3) >> 3);
  FunctionType = mlir::func::FuncOp::getFunctionType(&var0);
  Results = mlir::FunctionType::getResults(&FunctionType);
  mlir::ValueRange::ValueRange(v18, Results, v7);
  v8 = mlir::FunctionType::get(v5, v19[0], v19[1], v18[0], v18[1]);
  v9 = var0;
  if (var0)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(var0);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::function_interface_impl::setFunctionType(v9, InterfaceFor, v8);
  v19[0] = mlir::func::FuncOp::getFunctionType(&var0);
  mlir::FunctionType::getInputs(v19);
  v12 = var0;
  if (v11)
  {
    v13 = 0;
    do
    {
      v14 = *(((&v12[4 * ((v12[11] >> 23) & 1) + 17] + ((v12[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v12[10] + 8);
      if (v14)
      {
        v15 = v14 - 8;
      }

      else
      {
        v15 = 0;
      }

      *(*(*(v15 + 48) + v13) + 8) = *(*(*(v15 + 48) + v13) + 8) & 7 | *(*a3 + v13);
      v13 += 8;
    }

    while (8 * v11 != v13);
  }

  mlir::mps::inferTypes(v12, v11);
}

- (void)applyOptimizationPassesWithDevice:(id)a3 module:(ModuleOp)a4 compilationID:(unint64_t)a5 compilationDescriptor:(id)a6 perEntryPointFuncOpMLIRName:(const void *)a7
{
  state = a4.state;
  v324 = *MEMORY[0x1E69E9840];
  v309 = a4.state;
  v9 = a3;
  v249 = a6;
  v247 = v9;
  if (v9)
  {
    v246 = [v9 deviceDescriptor];

    state = v309;
  }

  else
  {
    v246 = 0;
  }

  Context = mlir::Attribute::getContext((state + 24));
  *&v310 = "mps.aneCompilerSpatialSplitting";
  LOWORD(v312) = 259;
  v11 = mlir::StringAttr::get(Context, &v310);
  v12 = mlir::Attribute::getContext((v309 + 24));
  v13 = mlir::IntegerType::get(v12, 64, 2u);
  v14 = mlir::IntegerAttr::get(v13, [v249 aneCompilerSpatialSplitting]);
  mlir::Operation::setAttr(state, v11, v14);
  v15 = mlir::Attribute::getContext((v309 + 24));
  *&v310 = "mps.aneEnableFWToFWSignal";
  LOWORD(v312) = 259;
  v16 = mlir::StringAttr::get(v15, &v310);
  v17 = mlir::Attribute::getContext((v309 + 24));
  v18 = mlir::IntegerType::get(v17, 1, 0);
  v19 = mlir::IntegerAttr::get(v18, [v249 enableANEFWToFWSignal]);
  mlir::Operation::setAttr(v309, v16, v19);
  v20 = mlir::Attribute::getContext((v309 + 24));
  *&v310 = "mps.aneEnableLateLatch";
  LOWORD(v312) = 259;
  v21 = mlir::StringAttr::get(v20, &v310);
  v22 = mlir::Attribute::getContext((v309 + 24));
  v23 = mlir::IntegerType::get(v22, 1, 0);
  v24 = mlir::IntegerAttr::get(v23, [v249 enableANELateLatch]);
  mlir::Operation::setAttr(v309, v21, v24);
  v25 = mlir::Attribute::getContext((v309 + 24));
  *&v310 = "mps.enableANECHWRankPromotion";
  LOWORD(v312) = 259;
  v26 = mlir::StringAttr::get(v25, &v310);
  v27 = mlir::Attribute::getContext((v309 + 24));
  v28 = mlir::IntegerType::get(v27, 1, 0);
  v29 = mlir::IntegerAttr::get(v28, [v249 enableANECHWRankPromotion]);
  mlir::Operation::setAttr(v309, v26, v29);
  v30 = [v249 compilerOptions];
  if (!*(v309 + 47) || (v325.var0 = "mps_spi.per_device_compilation_options", v325.var1 = 38, InherentAttr = mlir::Operation::getInherentAttr(v309, v325), (v32 & 1) == 0))
  {
    v326.var0 = "mps_spi.per_device_compilation_options";
    v326.var1 = 38;
    InherentAttr = mlir::DictionaryAttr::get((v309 + 56), v326);
  }

  if (InherentAttr)
  {
    v33 = *(*InherentAttr + 136);
    v34 = v33 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v35 = v33 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? InherentAttr : 0;
    v300[0] = v35;
    if (v34)
    {
      if (v246 && ![v246 type])
      {
        [v246 hasANE];
        if (([v246 hasANE] & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        Value = mlir::ArrayAttr::getValue(v300);
        v121 = mlir::ArrayAttr::getValue(v300);
        for (i = (v121 + 8 * v122); Value != i; ++Value)
        {
          *&__dst = *Value;
          v124 = mlir::AffineMapAttr::getValue(&__dst);
          v125 = [v246 architecture];
          v126 = v125;
          v127 = [v125 UTF8String];
          v128 = v127;
          if (v127)
          {
            v129 = strlen(v127);
          }

          else
          {
            v129 = 0;
          }

          *&v310 = v124;
          AttrData = mlir::OpaqueAttr::getAttrData(&v310);
          if (v131 == v129 && (!v129 || !memcmp(AttrData, v128, v129)))
          {
            Position = mlir::AffineDimExpr::getPosition(&__dst);
            v133 = [v246 gpuCoreCount] == Position;

            if (v133)
            {
              v134 = v309;
              v135 = __dst;
              v136 = mlir::Attribute::getContext((v309 + 24));
              LOWORD(v312) = 261;
              *&v310 = "mps_spi.device_compilation_options";
              *(&v310 + 1) = 34;
              v137 = mlir::StringAttr::get(v136, &v310);
              mlir::Operation::setAttr(v134, v137, v135);
              break;
            }
          }

          else
          {
          }
        }
      }

      v36 = v309;
      v37 = mlir::Attribute::getContext((v309 + 24));
      LOWORD(v312) = 261;
      *&v310 = "mps_spi.per_device_compilation_options";
      *(&v310 + 1) = 38;
      v38 = mlir::StringAttr::get(v37, &v310);
      mlir::Operation::removeAttr(v36, v38);
    }
  }

  v39 = mlir::Attribute::getContext((v309 + 24));
  v40 = [v249 compilerOptions];
  v306 = v39;
  shouldPrintOpOnDiagnostic = mlir::MLIRContext::shouldPrintOpOnDiagnostic(v39);
  mlir::MLIRContext::printOpOnDiagnostic(v39, (v40 & 0x1000) != 0);
  DiagEngine = mlir::MLIRContext::getDiagEngine(v39);
  LOBYTE(v310) = (v40 & 0x1000) >> 12;
  __p.i64[1] = &_MergedGlobals_85 + 2;
  v308 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v310);
  v42 = __p.i8[8];
  if (__p.i64[1] >= 8uLL)
  {
    if ((__p.i8[8] & 4) != 0)
    {
      if ((__p.i8[8] & 2) != 0)
      {
        v43 = &v310;
      }

      else
      {
        v43 = v310;
      }

      (*((__p.i64[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v43);
    }

    if ((v42 & 2) == 0)
    {
      llvm::deallocate_buffer(v310, *(&v310 + 1));
    }
  }

  if (v246 && ![v246 type] && objc_msgSend(v246, "hasANE"))
  {
    v44 = [v246 architecture];
    ANECFamily = getANECFamily(v44);
    v45 = v309;
    v46 = mlir::Attribute::getContext((v309 + 24));
    *&v310 = "mps.aneArch";
    LOWORD(v312) = 259;
    v47 = mlir::StringAttr::get(v46, &v310);
    v48 = mlir::Attribute::getContext((v309 + 24));
    v49 = v44;
    v50 = [(NSString *)v44 UTF8String];
    v301 = 257;
    if (*v50)
    {
      v300[0] = v50;
      v51 = 3;
    }

    else
    {
      v51 = 1;
    }

    LOBYTE(v301) = v51;
    v151 = mlir::StringAttr::get(v48, v300);
    mlir::Operation::setAttr(v45, v47, v151);

    v243 = 1;
  }

  else
  {
    ANECFamily = 0;
    v243 = 0;
  }

  v52 = [v246 gpuCoreCount];
  v53 = *(self + 40);
  v54 = *(self + 82);
  if (v54)
  {
    v55 = *(self + 40);
    if (*v53)
    {
      v56 = *v53 == -8;
    }

    else
    {
      v56 = 1;
    }

    if (v56)
    {
      do
      {
        v58 = v55[1];
        ++v55;
        v57 = v58;
        if (v58)
        {
          v59 = v57 == -8;
        }

        else
        {
          v59 = 1;
        }
      }

      while (v59);
    }

    v60 = &v53[v54];
    if (v55 == v60)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v55 = *(self + 40);
  v60 = &v53[v54];
  if (v53 != v60)
  {
LABEL_43:
    v61 = *v55;
    do
    {
      v62.var0.var0 = *(v309 + 3);
      LazyCopyFile::load(*(v61 + 8), v62);
      do
      {
        v63 = v55[1];
        ++v55;
        v61 = v63;
        if (v63)
        {
          v64 = v61 == -8;
        }

        else
        {
          v64 = 1;
        }
      }

      while (v64);
    }

    while (v55 != v60);
  }

LABEL_50:
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v65 = [v249 callables];
  v66 = [v65 countByEnumeratingWithState:&v302 objects:v323 count:16];
  if (!v66)
  {
    goto LABEL_77;
  }

  v67 = *v303;
  do
  {
    for (j = 0; j != v66; ++j)
    {
      if (*v303 != v67)
      {
        objc_enumerationMutation(v65);
      }

      v69 = *(*(&v302 + 1) + 8 * j);
      v70 = [v249 callables];
      v71 = [v70 objectForKey:v69];

      v72 = *(v71 + 320);
      v73 = *(v71 + 328);
      if (!v73)
      {
        v74 = *(v71 + 320);
        v79 = &v72[v73];
        if (v72 == v79)
        {
          goto LABEL_75;
        }

LABEL_68:
        v80 = *v74;
        do
        {
          v81.var0.var0 = *(v309 + 3);
          LazyCopyFile::load(*(v80 + 8), v81);
          do
          {
            v82 = v74[1];
            ++v74;
            v80 = v82;
            if (v82)
            {
              v83 = v80 == -8;
            }

            else
            {
              v83 = 1;
            }
          }

          while (v83);
        }

        while (v74 != v79);
        goto LABEL_75;
      }

      v74 = *(v71 + 320);
      if (*v72)
      {
        v75 = *v72 == -8;
      }

      else
      {
        v75 = 1;
      }

      if (v75)
      {
        do
        {
          v77 = v74[1];
          ++v74;
          v76 = v77;
          if (v77)
          {
            v78 = v76 == -8;
          }

          else
          {
            v78 = 1;
          }
        }

        while (v78);
      }

      v79 = &v72[v73];
      if (v74 != v79)
      {
        goto LABEL_68;
      }

LABEL_75:
    }

    v66 = [v65 countByEnumeratingWithState:&v302 objects:v323 count:16];
  }

  while (v66);
LABEL_77:

  v84 = mlir::Attribute::getContext((v309 + 24));
  if (([v249 compilerOptions] & 0x20) != 0)
  {
    mlir::PassManager::enableVerifier(v300, 1);
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (((([(MPSGraphExecutable *)self options]& 2) != 0) & has_internal_diagnostics) != 1)
  {
    if (*(self + 852) == 1)
    {
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  mlir::OpPrintingFlags::OpPrintingFlags(&v310);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v310, 256);
  v86 = mlir::OpPrintingFlags::elideLargeResourceString(&v310, 0);
  v321[0] = &unk_1F5B53FC0;
  v322 = v321;
  v319[0] = &unk_1F5B54040;
  v320 = v319;
  v87 = llvm::dbgs(v86);
  __dst = v310;
  __dst_16 = __p;
  v318 = v312;
  mlir::PassManager::enableIRPrinting(v300, v321, v319, 0, 0, 0, v87, &__dst);
  if (v320 == v319)
  {
    (*(*v320 + 32))(v320);
    v88 = v322;
    if (v322 != v321)
    {
      goto LABEL_84;
    }

    goto LABEL_89;
  }

  if (v320)
  {
    (*(*v320 + 40))();
  }

  v88 = v322;
  if (v322 == v321)
  {
LABEL_89:
    (*(*v88 + 32))(v88);
    goto LABEL_90;
  }

LABEL_84:
  if (v88)
  {
    (*(*v88 + 40))(v88);
  }

LABEL_90:
  mlir::PassManager::enableTiming(v300);
LABEL_91:
  if (([v249 compilerOptions] & 0x200) != 0)
  {
    mlir::mps::createConvertF32ToF16Pass(&v310);
    v89 = v310;
    *&v310 = 0;
    v299 = v89;
    mlir::OpPassManager::addPass(v300, &v299);
    v90 = v299;
    v299 = 0;
    if (v90)
    {
      (*(*v90 + 8))(v90);
    }

    v91 = v310;
    *&v310 = 0;
    if (v91)
    {
      (*(*v91 + 8))(v91);
    }
  }

  v92 = mlir::OpPassManager::nest(v300, "func.func", 9uLL);
  if ([v249 compilerOptions])
  {
    mlir::mps::createTypeInferencePass(&v310);
    v93 = v310;
    *&v310 = 0;
    v298 = v93;
    mlir::OpPassManager::addPass(v92, &v298);
    v94 = v298;
    v298 = 0;
    if (v94)
    {
      (*(*v94 + 8))(v94);
    }

    v95 = v310;
    *&v310 = 0;
    if (v95)
    {
      (*(*v95 + 8))(v95);
    }
  }

  if ([v249 layoutConversionPassConfig])
  {
    v96 = vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s32([v249 layoutConversionPassConfig] - 1), xmmword_1E0970220)));
    *&v310 = vsub_s32(vbic_s8(0x200000002, v96), v96);
    mlir::mps::createLayoutConversionPass(&v310, &__dst);
    v97 = __dst;
    *&__dst = 0;
    v297 = v97;
    mlir::OpPassManager::addPass(v92, &v297);
    v98 = v297;
    v297 = 0;
    if (v98)
    {
      (*(*v98 + 8))(v98);
    }

    v99 = __dst;
    *&__dst = 0;
    if (v99)
    {
      (*(*v99 + 8))(v99);
    }

    mlir::mps::createReorderOperationsPass(&__dst);
    v100 = __dst;
    *&__dst = 0;
    v296 = v100;
    mlir::OpPassManager::addPass(v92, &v296);
    v101 = v296;
    v296 = 0;
    if (v101)
    {
      (*(*v101 + 8))(v101);
    }

    v102 = __dst;
    *&__dst = 0;
    if (v102)
    {
      (*(*v102 + 8))(v102);
    }
  }

  mlir::createCanonicalizerPass(&v295);
  mlir::OpPassManager::addPass(v92, &v295);
  v103 = v295;
  v295 = 0;
  if (v103)
  {
    (*(*v103 + 8))(v103);
  }

  if (([v249 compilerOptions] & 0x100) != 0)
  {
    LODWORD(__dst) = (v30 & 0x8000) >> 15;
    BYTE4(__dst) = byte_1EED2BCBE;
    mlir::mps::createCommonRuntimeCanonicalizationPass(&__dst, &v310);
    v104 = v310;
    *&v310 = 0;
    v294 = v104;
    mlir::OpPassManager::addPass(v92, &v294);
    v105 = v294;
    v294 = 0;
    if (v105)
    {
      (*(*v105 + 8))(v105);
    }

    v106 = v310;
    *&v310 = 0;
    if (v106)
    {
      (*(*v106 + 8))(v106);
    }
  }

  if ([v249 compilerOptions])
  {
    mlir::mps::createTypeInferencePass(&v310);
    v107 = v310;
    *&v310 = 0;
    v293 = v107;
    mlir::OpPassManager::addPass(v92, &v293);
    v108 = v293;
    v293 = 0;
    if (v108)
    {
      (*(*v108 + 8))(v108);
    }

    v109 = v310;
    *&v310 = 0;
    if (v109)
    {
      (*(*v109 + 8))(v109);
    }
  }

  if (([v249 compilerOptions] & 4) != 0)
  {
    mlir::createCSEPass(&v292);
    mlir::OpPassManager::addPass(v92, &v292);
    v110 = v292;
    v292 = 0;
    if (v110)
    {
      (*(*v110 + 8))(v110);
    }
  }

  v111 = [v249 preferredDevice];
  v112 = [v249 allowedComputeDevices];
  if (ANECFamily < 2)
  {
    v113 = 1;
  }

  else
  {
    v113 = v111;
  }

  if (byte_1EED2BC97 == 1)
  {
    v114 = byte_1EED2BC96;
    v291 = 0;
    if (!v246)
    {
      goto LABEL_205;
    }
  }

  else
  {
    v114 = [v249 compilerOptions] & 0x80;
    v291 = 0;
    if (!v246)
    {
      goto LABEL_205;
    }
  }

  if (v114 && ((v243 ^ 1) & 1) == 0)
  {
    if (ANECFamily >= 2)
    {
      v115 = v112 & 2;
    }

    else
    {
      v115 = 0;
    }

    if (v115 || (*(self + 107) & 0x8000000000000000) == 0)
    {
      if ((v30 & 0x8000) != 0)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/scratchPad_%llu", *(self + 115), a5];
        objc_claimAutoreleasedReturnValue();
        operator new();
      }

      if (*(self + 839) == 1)
      {
        mlir::createMPSPlacementPass(ANECFamily, v52, 2, 1, &v290);
        mlir::OpPassManager::addPass(v300, &v290);
        v116 = v290;
        v290 = 0;
        if (v116)
        {
          (*(*v116 + 8))(v116);
        }
      }

      else
      {
        LODWORD(v310) = 0;
        *(&v310 + 3) = 0;
        v313 = 0;
        v312 = 0uLL;
        v314 = ANECFamily;
        v117 = *(self + 838);
        v315 = 0;
        BYTE1(v310) = v117;
        v118 = *(self + 107);
        if (v118 == 2)
        {
          LOBYTE(v119) = 1;
        }

        else
        {
          v119 = (v115 != 0) & (v113 >> 1);
        }

        BYTE2(v310) = v119;
        BYTE3(v310) = v118 == 1;
        BYTE4(v310) = *(self + 840);
        *(&v310 + 1) = v52;
        __p = vextq_s8(xmmword_1EED2BCA8, xmmword_1EED2BCA8, 8uLL);
        std::to_string(&__dst, a5);
        if (SHIBYTE(v313) < 0)
        {
          operator delete(v312);
        }

        v312 = __dst;
        v313 = __dst_16.i64[0];
        LOBYTE(v315) = *(self + 842);
        mlir::createMPSToANECPass(&v310, &v289);
        mlir::OpPassManager::addPass(v300, &v289);
        v138 = v289;
        v289 = 0;
        if (v138)
        {
          (*(*v138 + 8))(v138);
        }

        if (SHIBYTE(v313) < 0)
        {
          operator delete(v312);
        }
      }

      mlir::anec::createRegionCanonicalizationPass(&v288);
      mlir::OpPassManager::addPass(v300, &v288);
      v139 = v288;
      v288 = 0;
      if (v139)
      {
        (*(*v139 + 8))(v139);
      }

      mlir::createCSEPass(&v287);
      mlir::OpPassManager::addPass(v300, &v287);
      v140 = v287;
      v287 = 0;
      if (v140)
      {
        (*(*v140 + 8))(v140);
      }

      mlir::createCanonicalizerPass(&v286);
      mlir::OpPassManager::addPass(v300, &v286);
      v141 = v286;
      v286 = 0;
      if (v141)
      {
        (*(*v141 + 8))(v141);
      }

      if (*(self + 842) == 1)
      {
        mlir::anec::createLegacyQuantizationCanonicalizationPass(&v310);
        v142 = v310;
        *&v310 = 0;
        v285 = v142;
        mlir::OpPassManager::addPass(v300, &v285);
        v143 = v285;
        v285 = 0;
        if (v143)
        {
          (*(*v143 + 8))(v143);
        }

        v144 = v310;
        *&v310 = 0;
        if (v144)
        {
          (*(*v144 + 8))(v144);
        }

        mlir::createCanonicalizerPass(&v284);
        mlir::OpPassManager::addPass(v300, &v284);
        v145 = v284;
        v284 = 0;
        if (v145)
        {
          (*(*v145 + 8))(v145);
        }
      }

      mlir::anec::createRegionCanonicalizationPass(&v283);
      mlir::OpPassManager::addPass(v300, &v283);
      v146 = v283;
      v283 = 0;
      if (v146)
      {
        (*(*v146 + 8))(v146);
      }

      mlir::anec::createANECRegionCallCanonicalizationPass(0, &v310);
      v147 = v310;
      *&v310 = 0;
      v282 = v147;
      mlir::OpPassManager::addPass(v300, &v282);
      v148 = v282;
      v282 = 0;
      if (v148)
      {
        (*(*v148 + 8))(v148);
      }

      v149 = v310;
      *&v310 = 0;
      if (v149)
      {
        (*(*v149 + 8))(v149);
      }

      WORD2(v310) = 1;
      LODWORD(v310) = 0;
      mlir::mps::createConstantsConversionPass(&v310, &v281);
      populateLegacyANEPass(v300, ANECFamily, &v281);
      v150 = v281;
      v281 = 0;
      if (v150)
      {
        (*(*v150 + 8))(v150);
      }
    }

    v152 = 0xAAAAAAAAAAAAAAABLL * ((*(a7 + 1) - *a7) >> 3);
    *&v310 = *a7;
    *(&v310 + 1) = v152;
    mlir::mps::createUnreachableFunctionRemovalPass(&v310, &__dst);
    v153 = __dst;
    *&__dst = 0;
    v280 = v153;
    mlir::OpPassManager::addPass(v300, &v280);
    v154 = v280;
    v280 = 0;
    if (v154)
    {
      (*(*v154 + 8))(v154);
    }

    v155 = __dst;
    *&__dst = 0;
    if (v155)
    {
      (*(*v155 + 8))(v155);
    }

    if (([v249 compilerOptions] & 4) != 0)
    {
      mlir::createCSEPass(&v279);
      mlir::OpPassManager::addPass(v300, &v279);
      v156 = v279;
      v279 = 0;
      if (v156)
      {
        (*(*v156 + 8))(v156);
      }
    }

    mlir::anec::createRegionCanonicalizationPass(&v278);
    mlir::OpPassManager::addPass(v300, &v278);
    v157 = v278;
    v278 = 0;
    if (v157)
    {
      (*(*v157 + 8))(v157);
    }

    mlir::anec::createANECRegionCallCanonicalizationPass(1, &__dst);
    v158 = __dst;
    *&__dst = 0;
    v277 = v158;
    mlir::OpPassManager::addPass(v300, &v277);
    v159 = v277;
    v277 = 0;
    if (v159)
    {
      (*(*v159 + 8))(v159);
    }

    v160 = __dst;
    *&__dst = 0;
    if (v160)
    {
      (*(*v160 + 8))(v160);
    }

    if (([v249 compilerOptions] & 4) != 0)
    {
      mlir::createCSEPass(&v276);
      mlir::OpPassManager::addPass(v300, &v276);
      v161 = v276;
      v276 = 0;
      if (v161)
      {
        (*(*v161 + 8))(v161);
      }
    }
  }

LABEL_205:
  if (v246)
  {
    [(MPSGraphExecutable *)self checkCallablesForModule:&v309];
    v310 = 0uLL;
    [*(self + 46) callables];
    [objc_claimAutoreleasedReturnValue() count];
    operator new();
  }

  v162 = mlir::OpPassManager::nest(v300, "func.func", 9uLL);
  v273[0] = 256;
  v274 = 32;
  v275 = 0x10101000000;
  if (!v247)
  {
    v163 = 0;
    goto LABEL_213;
  }

  if ([v247 type])
  {
    v163 = 0;
  }

  else
  {
    v164 = [v247 metalDevice];
    v163 = v164 != 0;
  }

  if ([v247 type])
  {
LABEL_213:
    v165 = 0;
    v166 = 0;
    v167 = 0;
    if (*(self + 850) == 1)
    {
      goto LABEL_214;
    }
  }

  else
  {
    if (v163)
    {
      v170 = [v247 metalDevice];
      MPSDevice = MPSDevice::GetMPSDevice();

      v163 = 1;
      v165 = 1;
      if ((*(MPSDevice + 1478) & 2) == 0)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v163 = 0;
      if (([0 supportsMXU] & 1) == 0)
      {
        goto LABEL_213;
      }

      v165 = 1;
    }

LABEL_214:
    v167 = *(self + 851) ^ 1;
    v166 = v165;
  }

  BYTE6(v275) = v167 & 1;
  if (v247 && ![v247 type])
  {
    if (v163)
    {
      v168 = [v247 metalDevice];
      v169 = MPSDevice::GetMPSDevice();

      LOBYTE(v273[0]) = *(v169 + 1472) < 10;
    }

    else
    {
      if ((v243 & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      LOBYTE(v273[0]) = ANECFamily != 0;
    }

    BYTE1(v275) = 1;
    HIBYTE(v273[0]) = ([v249 compilerOptions] & 0x400) == 0;
    v274 = 5;
  }

  if (([v249 compilerOptions] & 0x100) != 0)
  {
    mlir::mps::createCommonRuntimeCanonicalizationPass(&v310);
    v172 = v310;
    *&v310 = 0;
    v272 = v172;
    mlir::OpPassManager::addPass(v162, &v272);
    v173 = v272;
    v272 = 0;
    if (v173)
    {
      (*(*v173 + 8))(v173);
    }

    v174 = v310;
    *&v310 = 0;
    if (v174)
    {
      (*(*v174 + 8))(v174);
    }
  }

  if (v247)
  {
    mlir::mps::createRuntimeCanonicalizationPass(v273, &v310);
    v175 = v310;
    *&v310 = 0;
    v271 = v175;
    mlir::OpPassManager::addPass(v162, &v271);
    v176 = v271;
    v271 = 0;
    if (v176)
    {
      (*(*v176 + 8))(v176);
    }

    v177 = v310;
    *&v310 = 0;
    if (v177)
    {
      (*(*v177 + 8))(v177);
    }
  }

  if (([v249 compilerOptions] & 0x100) != 0)
  {
    mlir::mps::createCommonRuntimeCanonicalizationPass(&v310);
    v178 = v310;
    *&v310 = 0;
    v270 = v178;
    mlir::OpPassManager::addPass(v162, &v270);
    v179 = v270;
    v270 = 0;
    if (v179)
    {
      (*(*v179 + 8))(v179);
    }

    v180 = v310;
    *&v310 = 0;
    if (v180)
    {
      (*(*v180 + 8))(v180);
    }
  }

  if (v247 && ![v247 type])
  {
    LODWORD(__dst) = v166;
    BYTE1(__dst) = v166;
    mlir::mps::createLoweringPass(&__dst, &v310);
    v181 = v310;
    *&v310 = 0;
    v269 = v181;
    mlir::OpPassManager::addPass(v162, &v269);
    v182 = v269;
    v269 = 0;
    if (v182)
    {
      (*(*v182 + 8))(v182);
    }

    v183 = v310;
    *&v310 = 0;
    if (v183)
    {
      (*(*v183 + 8))(v183);
    }
  }

  if (([v249 compilerOptions] & 0x100) != 0)
  {
    mlir::mps::createCommonRuntimeCanonicalizationPass(&v310);
    v184 = v310;
    *&v310 = 0;
    v268 = v184;
    mlir::OpPassManager::addPass(v162, &v268);
    v185 = v268;
    v268 = 0;
    if (v185)
    {
      (*(*v185 + 8))(v185);
    }

    v186 = v310;
    *&v310 = 0;
    if (v186)
    {
      (*(*v186 + 8))(v186);
    }
  }

  if (v247)
  {
    mlir::mps::createRuntimeCanonicalizationPass(v273, &v310);
    v187 = v310;
    *&v310 = 0;
    v267 = v187;
    mlir::OpPassManager::addPass(v162, &v267);
    v188 = v267;
    v267 = 0;
    if (v188)
    {
      (*(*v188 + 8))(v188);
    }

    v189 = v310;
    *&v310 = 0;
    if (v189)
    {
      (*(*v189 + 8))(v189);
    }
  }

  if ([v249 compilerOptions])
  {
    mlir::mps::createTypeInferencePass(&v310);
    v190 = v310;
    *&v310 = 0;
    v266 = v190;
    mlir::OpPassManager::addPass(v162, &v266);
    v191 = v266;
    v266 = 0;
    if (v191)
    {
      (*(*v191 + 8))(v191);
    }

    v192 = v310;
    *&v310 = 0;
    if (v192)
    {
      (*(*v192 + 8))(v192);
    }
  }

  if (([v249 compilerOptions] & 8) != 0)
  {
    mlir::createCanonicalizerPass(&v265);
    mlir::OpPassManager::addPass(v162, &v265);
    v193 = v265;
    v265 = 0;
    if (v193)
    {
      (*(*v193 + 8))(v193);
    }
  }

  if (([v249 compilerOptions] & 4) != 0)
  {
    mlir::createCSEPass(&v264);
    mlir::OpPassManager::addPass(v162, &v264);
    v194 = v264;
    v264 = 0;
    if (v194)
    {
      (*(*v194 + 8))(v194);
    }
  }

  if (v247 && ![v247 type])
  {
    v195 = [v249 compilerOptions];
    v196 = byte_1EED2BCBF;
    mlir::mps::createRefineDynamicShapeInfoPass(&v310);
    v197 = v310;
    *&v310 = 0;
    v263 = v197;
    mlir::OpPassManager::addPass(v162, &v263);
    v198 = v263;
    v263 = 0;
    if (v198)
    {
      (*(*v198 + 8))(v198);
    }

    v199 = v310;
    *&v310 = 0;
    if (v199)
    {
      (*(*v199 + 8))(v199);
    }

    if (v196 & 1 | ((v195 & 0x800) != 0))
    {
      LOBYTE(__dst) = 1;
      mlir::mps::createGPURegionFormationPass(&__dst, &v310);
      v200 = v310;
      *&v310 = 0;
      v262 = v200;
      mlir::OpPassManager::addPass(v300, &v262);
      v201 = v262;
      v262 = 0;
      if (v201)
      {
        (*(*v201 + 8))(v201);
      }

      v202 = v310;
      *&v310 = 0;
      if (v202)
      {
        (*(*v202 + 8))(v202);
      }

      if ((v195 & 0x800) != 0 && [v249 maximumNumberOfParallelEncodingRegions] >= 2)
      {
        *&v310 = [v249 minimumNumberOfOpsInParallelRegion];
        *(&v310 + 1) = [v249 maximumNumberOfParallelEncodingRegions];
        mlir::mpsx::createGPURegionParallelEncodePass(&v310, &__dst);
        v203 = __dst;
        *&__dst = 0;
        v261 = v203;
        mlir::OpPassManager::addPass(v300, &v261);
        v204 = v261;
        v261 = 0;
        if (v204)
        {
          (*(*v204 + 8))(v204);
        }

        v205 = __dst;
        *&__dst = 0;
        if (v205)
        {
          (*(*v205 + 8))(v205);
        }
      }
    }

    if (([v249 compilerOptions] & 2) != 0)
    {
      if (v163)
      {
        v206 = [v247 metalDevice];
        MPSDevice::GetMPSDevice();
      }

      operator new();
    }
  }

  v260 = 1;
  v259 = 0;
  mlir::mps::createConstantsConversionPass(&v259, &v258);
  mlir::OpPassManager::addPass(v300, &v258);
  v207 = v258;
  v258 = 0;
  if (v207)
  {
    (*(*v207 + 8))(v207);
  }

  if (v247 && ([v249 compilerOptions] & 0x4000) != 0)
  {
    v209 = ((v309 + 16 * ((*(v309 + 11) >> 23) & 1) + ((*(v309 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v309 + 10);
    v210 = *(v209 + 8);
    if (v210 == v209)
    {
LABEL_301:
      v215 = mlir::OpPassManager::nest(v300, "func.func", 9uLL);
      mlir::mps::createMemrefRegionPass(&v310);
      v216 = v310;
      *&v310 = 0;
      v257 = v216;
      mlir::OpPassManager::addPass(v215, &v257);
      v217 = v257;
      v257 = 0;
      if (v217)
      {
        (*(*v217 + 8))(v217);
      }

      v218 = v310;
      *&v310 = 0;
      if (v218)
      {
        (*(*v218 + 8))(v218);
      }

      mlir::mps::createMemrefViewTransformationPass(&v310);
      v219 = v310;
      *&v310 = 0;
      v256 = v219;
      mlir::OpPassManager::addPass(v215, &v256);
      v220 = v256;
      v256 = 0;
      if (v220)
      {
        (*(*v220 + 8))(v220);
      }

      v221 = v310;
      *&v310 = 0;
      if (v221)
      {
        (*(*v221 + 8))(v221);
      }

      mlir::mps::createMemrefAllocBlockHoistingPass(&v310);
      v222 = v310;
      *&v310 = 0;
      v255 = v222;
      mlir::OpPassManager::addPass(v215, &v255);
      v223 = v255;
      v255 = 0;
      if (v223)
      {
        (*(*v223 + 8))(v223);
      }

      v224 = v310;
      *&v310 = 0;
      if (v224)
      {
        (*(*v224 + 8))(v224);
      }

      mlir::mps::createMemrefAllocLoopHoistingPass(&v310);
      v225 = v310;
      *&v310 = 0;
      v254 = v225;
      mlir::OpPassManager::addPass(v215, &v254);
      v226 = v254;
      v254 = 0;
      if (v226)
      {
        (*(*v226 + 8))(v226);
      }

      v227 = v310;
      *&v310 = 0;
      if (v227)
      {
        (*(*v227 + 8))(v227);
      }

      mlir::mps::createMemrefDeallocationPass(&v310);
      v228 = v310;
      *&v310 = 0;
      v253 = v228;
      mlir::OpPassManager::addPass(v215, &v253);
      v229 = v253;
      v253 = 0;
      if (v229)
      {
        (*(*v229 + 8))(v229);
      }

      v230 = v310;
      *&v310 = 0;
      if (v230)
      {
        (*(*v230 + 8))(v230);
      }

      mlir::mps::createMemrefAllocFusionPass(&v310);
      v231 = v310;
      *&v310 = 0;
      v252 = v231;
      mlir::OpPassManager::addPass(v215, &v252);
      v232 = v252;
      v252 = 0;
      if (v232)
      {
        (*(*v232 + 8))(v232);
      }

      v233 = v310;
      *&v310 = 0;
      if (v233)
      {
        (*(*v233 + 8))(v233);
      }

      mlir::createCanonicalizerPass(&v251);
      mlir::OpPassManager::addPass(v215, &v251);
      v234 = v251;
      v251 = 0;
      if (v234)
      {
        (*(*v234 + 8))(v234);
      }
    }

    else
    {
      while (1)
      {
        v211 = v210 - 8;
        if (!v210)
        {
          v211 = 0;
        }

        v212 = v211 + 32;
        v213 = *(v211 + 40);
        if (v213 != v211 + 32)
        {
          break;
        }

LABEL_300:
        v210 = *(v210 + 8);
        if (v210 == v209)
        {
          goto LABEL_301;
        }
      }

      while (1)
      {
        v214 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v213, v208);
        if ((mlir::mps::isRegionMemrefRegionPassCompatible(v214, 0) & 1) == 0)
        {
          break;
        }

        v213 = *(v213 + 8);
        if (v213 == v212)
        {
          goto LABEL_300;
        }
      }
    }
  }

  if ((*(self + 768) & 0x20) != 0)
  {
    operator new();
  }

  v235.var0.var0 = v309;
  if (!mlir::PassManager::run(v300, v235) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!mlir::ModuleOp::verify(&v309) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(MPSGraphExecutable *)self getAttributesFromDescriptors:v249 context:mlir::Attribute::getContext((v309 + 24)) deviceDescriptor:0];
  v237 = *(&__dst + 1);
  for (k = __dst; k != v237; ++k)
  {
    v310 = *k;
    v238 = v309;
    CallableRegion = mlir::CallGraphNode::getCallableRegion(&v310);
    mlir::Operation::setAttr(v238, CallableRegion, *(&v310 + 1));
  }

  if ((*(self + 768) & 0x20) == 0)
  {
    [(MPSGraphExecutable *)self dumpModuleWithEV:v309];
  }

  [(MPSGraphExecutable *)self dumpCompiledProducts];
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  v240 = v291;
  v291 = 0;
  if (v240)
  {
    if (*v240 == 1)
    {
      [*(v240 + 8) removeItemAtPath:*(v240 + 16) error:0];
    }

    MEMORY[0x1E12E5B90](v240, 0x1080C40D8888184);
  }

  mlir::PassManager::~PassManager(v300);
  v241 = v306;
  mlir::MLIRContext::printOpOnDiagnostic(v306, shouldPrintOpOnDiagnostic);
  v242 = mlir::MLIRContext::getDiagEngine(v241);
  mlir::DiagnosticEngine::eraseHandler(v242, v308);
}

- (void)dumpModuleWithEV:(ModuleOp)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (*(self + 96))
  {
    v6 = has_internal_diagnostics == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    v43 = 0;
    v47 = 0;
    v48 = 1;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v42 = &unk_1F5B3FB30;
    v49 = v50;
    llvm::raw_ostream::SetBufferAndMode(&v42, 0, 0, 0);
    mlir::OpPrintingFlags::OpPrintingFlags(v41);
    v7 = *(self + 96);
    if ((v7 & 8) != 0)
    {
      mlir::OpPrintingFlags::enableDebugInfo(v41, 1, 0);
      v7 = *(self + 96);
    }

    if ((v7 & 4) != 0)
    {
      mlir::OpPrintingFlags::elideLargeElementsAttrs(v41, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      mlir::OpPrintingFlags::elideLargeElementsAttrs(v41, 256);
      mlir::OpPrintingFlags::elideLargeResourceString(v41, 0);
    }

    if ((*(self + 768) & 2) != 0)
    {
      mlir::Operation::print(a3.state, &v42, v41);
    }

    else
    {
      OriginalModuleRef::get(self + 37, 0);
      v8 = *(self + 37);
      ((*v8)[3])(v8, 0);
      v29[0] = v41[0];
      v29[1] = v41[1];
      v29[2] = v41[2];
      mlir::Operation::print(v8[5], &v42, v29);
    }

    if (*(self + 98))
    {
      if (v51 >= 0)
      {
        v9 = v50;
      }

      else
      {
        v9 = v50[0];
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [*(self + 98) stringByDeletingPathExtension];
      v12 = getpid();
      v13 = *(self + 94);
      v14 = [*(self + 98) pathExtension];
      v15 = [v10 stringWithFormat:@"%@_net-%d-%@.%@", v11, v12, v13, v14];

      v40 = 0;
      [v26 writeToFile:v15 atomically:1 encoding:4 error:&v40];
      v16 = v40;
      if ((*(self + 768) & 0x10) != 0)
      {
        __p[0] = 0;
        __p[1] = 0;
        v39 = 0;
        v31 = 0;
        v35 = 0;
        v36 = 1;
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v30 = &unk_1F5B3FB30;
        v37 = __p;
        llvm::raw_ostream::SetBufferAndMode(&v30, 0, 0, 0);
        if ((*(self + 768) & 2) == 0)
        {
          a3.state = OriginalModuleRef::get(self + 37, 0);
        }

        Context = mlir::Attribute::getContext((a3.state + 24));
        mlir::PassManager::PassManager(v29, Context, "any", 3uLL, 1);
        mlir::createPrintOpGraphPass(&v30, &v28);
        mlir::OpPassManager::addPass(v29, &v28);
        v18 = v28;
        v28 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        v19.var0.var0 = a3.state;
        if (!mlir::PassManager::run(v29, v19) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v39 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
        v22 = MEMORY[0x1E696AEC0];
        v23 = [*(self + 98) stringByDeletingPathExtension];
        v24 = [v22 stringWithFormat:@"%@_net-%d-%@.dot", v23, getpid(), *(self + 94)];

        v27 = 0;
        [v21 writeToFile:v24 atomically:1 encoding:4 error:&v27];

        mlir::PassManager::~PassManager(v29);
        llvm::raw_ostream::~raw_ostream(&v30);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }
      }

      llvm::raw_ostream::~raw_ostream(&v42);
      if (SHIBYTE(v51) < 0)
      {
LABEL_29:
        operator delete(v50[0]);
      }
    }

    else
    {
      puts("set MPSGRAPH_DUMP_MODULE_FILE_PATH to a path with .mlir file to produce, eg. /tmp/meh.mlir");
      v25 = v50;
      if (v51 < 0)
      {
        v25 = v50[0];
      }

      printf("MPSGraph module dump:\n\n%s\n\n", v25);
      llvm::raw_ostream::~raw_ostream(&v42);
      if (SHIBYTE(v51) < 0)
      {
        goto LABEL_29;
      }
    }
  }
}

- (void)dumpCompiledProducts
{
  v2 = *(self + 99);
  if (v2)
  {
    [*(self + 101) createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
    v17 = 0;
    v4 = *(self + 99);
    v5 = [*(self + 115) lastPathComponent];
    v6 = [v4 stringByAppendingFormat:@"/%@", v5];

    if ([*(self + 101) fileExistsAtPath:v6 isDirectory:&v17])
    {
      v7 = *(self + 101);
      v16 = 0;
      [v7 removeItemAtPath:v6 error:&v16];
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(self + 101);
    v10 = *(self + 115);
    v15 = v8;
    v11 = [v9 copyItemAtPath:v10 toPath:v6 error:&v15];
    v12 = v15;

    if (v11)
    {
      v13 = @"Copying compiled products to %@";
    }

    else
    {
      v13 = @"Copying compiled products failed, %@";
    }

    if (v11)
    {
      v14 = v6;
    }

    else
    {
      v14 = v12;
    }

    NSLog(&v13->isa, v14);
  }
}

- (void)aneRegionOpsHashSet:(void *)a3
{
  v38[4] = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&c);
  CC_SHA256_Init(&v36);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  mlir::OpPrintingFlags::OpPrintingFlags(v32);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(v32, 0);
  mlir::OpPrintingFlags::elideLargeResourceString(v32, 0);
  memset(v31, 0, sizeof(v31));
  LODWORD(v24) = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_1F5B3FB30;
  v30 = v31;
  llvm::raw_ostream::SetBufferAndMode(&v23, 0, 0, 0);
  v4 = *a3;
  if (!*(*a3 + 47) || (v39.var0 = "mps.aneHashSalt", v39.var1 = 15, InherentAttr = mlir::Operation::getInherentAttr(*a3, v39), (v6 & 1) == 0))
  {
    v40.var0 = "mps.aneHashSalt";
    v40.var1 = 15;
    InherentAttr = mlir::DictionaryAttr::get((v4 + 56), v40);
  }

  if (InherentAttr)
  {
    v7 = *(*InherentAttr + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
    v9 = v7 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
    v38[0] = v9;
    if (v8)
    {
      mlir::Attribute::print(v38, &v23, 0);
    }
  }

  v10 = *a3;
  if (!*(*a3 + 47) || (v41.var0 = "mps.aneCompilerSpatialSplitting", v41.var1 = 31, v11 = mlir::Operation::getInherentAttr(*a3, v41), (v12 & 1) == 0))
  {
    v42.var0 = "mps.aneCompilerSpatialSplitting";
    v42.var1 = 31;
    v11 = mlir::DictionaryAttr::get((v10 + 56), v42);
  }

  if (v11)
  {
    v13 = *(*v11 + 136);
    v14 = v13 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v15 = v13 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? v11 : 0;
    v38[0] = v15;
    if (v14)
    {
      mlir::Attribute::print(v38, &v23, 0);
    }
  }

  v16 = *a3;
  if (!*(*a3 + 47) || (v43.var0 = "mps_spi.device_compilation_options", v43.var1 = 34, v17 = mlir::Operation::getInherentAttr(*a3, v43), (v18 & 1) == 0))
  {
    v44.var0 = "mps_spi.device_compilation_options";
    v44.var1 = 34;
    v17 = mlir::DictionaryAttr::get((v16 + 56), v44);
  }

  if (v17)
  {
    v19 = *(*v17 + 136);
    v20 = v19 == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
    if (v19 == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    v38[0] = v21;
    if (v20)
    {
      if (mlir::AffineBinaryOpExpr::getRHS(v38))
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(v38);
        mlir::Attribute::print(&RHS, &v23, 0);
      }
    }
  }

  llvm::raw_ostream::~raw_ostream(&v23);
  operator new();
}

- (void)aneRegionOpsHashSet:
{
  v12 = *a1;
  v13 = *(*a1 + 23);
  if (v13 < 0)
  {
    v12 = *v12;
    v13 = *(*a1 + 8);
  }

  CC_SHA256_Update(c, v12, v13);
  v14 = *(a1 + 8);
  v15 = *(v14 + 8) - *v14;
  if (v15 >= 1)
  {
    bzero(*v14, v15);
  }

  CC_SHA256_Final(*(a1 + 16), c);
  v16 = **(a1 + 8);
  snprintf(v16, 3uLL, "%02X", **(a1 + 16));
  snprintf(v16 + 2, 3uLL, "%02X", *(*(a1 + 16) + 1));
  snprintf(v16 + 4, 3uLL, "%02X", *(*(a1 + 16) + 2));
  snprintf(v16 + 6, 3uLL, "%02X", *(*(a1 + 16) + 3));
  snprintf(v16 + 8, 3uLL, "%02X", *(*(a1 + 16) + 4));
  snprintf(v16 + 10, 3uLL, "%02X", *(*(a1 + 16) + 5));
  snprintf(v16 + 12, 3uLL, "%02X", *(*(a1 + 16) + 6));
  snprintf(v16 + 14, 3uLL, "%02X", *(*(a1 + 16) + 7));
  snprintf(v16 + 16, 3uLL, "%02X", *(*(a1 + 16) + 8));
  snprintf(v16 + 18, 3uLL, "%02X", *(*(a1 + 16) + 9));
  snprintf(v16 + 20, 3uLL, "%02X", *(*(a1 + 16) + 10));
  snprintf(v16 + 22, 3uLL, "%02X", *(*(a1 + 16) + 11));
  snprintf(v16 + 24, 3uLL, "%02X", *(*(a1 + 16) + 12));
  snprintf(v16 + 26, 3uLL, "%02X", *(*(a1 + 16) + 13));
  snprintf(v16 + 28, 3uLL, "%02X", *(*(a1 + 16) + 14));
  snprintf(v16 + 30, 3uLL, "%02X", *(*(a1 + 16) + 15));
  snprintf(v16 + 32, 3uLL, "%02X", *(*(a1 + 16) + 16));
  snprintf(v16 + 34, 3uLL, "%02X", *(*(a1 + 16) + 17));
  snprintf(v16 + 36, 3uLL, "%02X", *(*(a1 + 16) + 18));
  snprintf(v16 + 38, 3uLL, "%02X", *(*(a1 + 16) + 19));
  snprintf(v16 + 40, 3uLL, "%02X", *(*(a1 + 16) + 20));
  snprintf(v16 + 42, 3uLL, "%02X", *(*(a1 + 16) + 21));
  snprintf(v16 + 44, 3uLL, "%02X", *(*(a1 + 16) + 22));
  snprintf(v16 + 46, 3uLL, "%02X", *(*(a1 + 16) + 23));
  snprintf(v16 + 48, 3uLL, "%02X", *(*(a1 + 16) + 24));
  snprintf(v16 + 50, 3uLL, "%02X", *(*(a1 + 16) + 25));
  snprintf(v16 + 52, 3uLL, "%02X", *(*(a1 + 16) + 26));
  snprintf(v16 + 54, 3uLL, "%02X", *(*(a1 + 16) + 27));
  snprintf(v16 + 56, 3uLL, "%02X", *(*(a1 + 16) + 28));
  snprintf(v16 + 58, 3uLL, "%02X", *(*(a1 + 16) + 29));
  snprintf(v16 + 60, 3uLL, "%02X", *(*(a1 + 16) + 30));
  snprintf(v16 + 62, 3uLL, "%02X", *(*(a1 + 16) + 31));
  v16[64] = 95;
  CC_SHA256_Final(*(a1 + 16), a3);
  snprintf(v16 + 65, 3uLL, "%02X", **(a1 + 16));
  snprintf(v16 + 67, 3uLL, "%02X", *(*(a1 + 16) + 1));
  snprintf(v16 + 69, 3uLL, "%02X", *(*(a1 + 16) + 2));
  snprintf(v16 + 71, 3uLL, "%02X", *(*(a1 + 16) + 3));
  snprintf(v16 + 73, 3uLL, "%02X", *(*(a1 + 16) + 4));
  snprintf(v16 + 75, 3uLL, "%02X", *(*(a1 + 16) + 5));
  snprintf(v16 + 77, 3uLL, "%02X", *(*(a1 + 16) + 6));
  snprintf(v16 + 79, 3uLL, "%02X", *(*(a1 + 16) + 7));
  snprintf(v16 + 81, 3uLL, "%02X", *(*(a1 + 16) + 8));
  snprintf(v16 + 83, 3uLL, "%02X", *(*(a1 + 16) + 9));
  snprintf(v16 + 85, 3uLL, "%02X", *(*(a1 + 16) + 10));
  snprintf(v16 + 87, 3uLL, "%02X", *(*(a1 + 16) + 11));
  snprintf(v16 + 89, 3uLL, "%02X", *(*(a1 + 16) + 12));
  snprintf(v16 + 91, 3uLL, "%02X", *(*(a1 + 16) + 13));
  snprintf(v16 + 93, 3uLL, "%02X", *(*(a1 + 16) + 14));
  snprintf(v16 + 95, 3uLL, "%02X", *(*(a1 + 16) + 15));
  snprintf(v16 + 97, 3uLL, "%02X", *(*(a1 + 16) + 16));
  snprintf(v16 + 99, 3uLL, "%02X", *(*(a1 + 16) + 17));
  snprintf(v16 + 101, 3uLL, "%02X", *(*(a1 + 16) + 18));
  snprintf(v16 + 103, 3uLL, "%02X", *(*(a1 + 16) + 19));
  snprintf(v16 + 105, 3uLL, "%02X", *(*(a1 + 16) + 20));
  snprintf(v16 + 107, 3uLL, "%02X", *(*(a1 + 16) + 21));
  snprintf(v16 + 109, 3uLL, "%02X", *(*(a1 + 16) + 22));
  snprintf(v16 + 111, 3uLL, "%02X", *(*(a1 + 16) + 23));
  snprintf(v16 + 113, 3uLL, "%02X", *(*(a1 + 16) + 24));
  snprintf(v16 + 115, 3uLL, "%02X", *(*(a1 + 16) + 25));
  snprintf(v16 + 117, 3uLL, "%02X", *(*(a1 + 16) + 26));
  snprintf(v16 + 119, 3uLL, "%02X", *(*(a1 + 16) + 27));
  snprintf(v16 + 121, 3uLL, "%02X", *(*(a1 + 16) + 28));
  snprintf(v16 + 123, 3uLL, "%02X", *(*(a1 + 16) + 29));
  snprintf(v16 + 125, 3uLL, "%02X", *(*(a1 + 16) + 30));
  snprintf(v16 + 127, 3uLL, "%02X", *(*(a1 + 16) + 31));
  Context = mlir::Attribute::getContext((**(a1 + 24) + 24));
  v18 = 1;
  v24 = 1;
  if (*v16)
  {
    v22 = v16;
    v18 = 3;
  }

  v23 = v18;
  v19 = mlir::StringAttr::get(Context, &v22);
  v20 = mlir::Attribute::getContext((a4 + 24));
  v26 = 261;
  v25[0] = a5;
  v25[1] = a6;
  v21 = mlir::StringAttr::get(v20, v25);
  mlir::Operation::setAttr(a4, v21, v19);
}

- (id)emitViewerSPI
{
  v7 = *MEMORY[0x1E69E9840];
  std::mutex::lock((self + 8));
  WeakRetained = objc_loadWeakRetained(self + 33);
  v4 = OriginalModuleRef::get(self + 37, 0);
  EmitViewerSPI::EmitViewerSPI(v6, WeakRetained, self, v4);
}

- (id)emitViewerSPIWithDevice:(id)a3 inputShapes:(id)a4 compilationDescriptor:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPSGraphExecutable *)self getDefaultEntryPointWithShapes:v9];
  v19 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v17 = 0;
  [(MPSGraphExecutable *)self specializedModuleWithDevice:v8 shapedEntryPoints:v12 compilationDescriptor:v10 error:&v17];
  v13 = v17;

  std::mutex::lock((self + 200));
  WeakRetained = objc_loadWeakRetained(self + 33);
  v15 = (*(**(v20 + 8) + 24))(*(v20 + 8), 0);
  EmitViewerSPI::EmitViewerSPI(v18, WeakRetained, self, v15);
}

- (void)emitViewerSPIToURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  std::mutex::lock((self + 8));
  WeakRetained = objc_loadWeakRetained(self + 33);
  v6 = OriginalModuleRef::get(self + 37, 0);
  EmitViewerSPI::EmitViewerSPI(v7, WeakRetained, self, v6);
}

- (id)emitObjCToURL:(id)a3 test:(BOOL)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  std::mutex::lock((self + 8));
  WeakRetained = objc_loadWeakRetained(self + 33);
  v7 = OriginalModuleRef::get(self + 37, 0);
  EmitObjC::EmitObjC(v9, WeakRetained, self, v7);
}

- (void)emitObjUnitTestToUrl:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [a3 path];
  v4 = [objc_claimAutoreleasedReturnValue() lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"test_%@_buildExecutable", v5];
  std::mutex::lock((self + 8));
  WeakRetained = objc_loadWeakRetained(self + 33);
  v8 = OriginalModuleRef::get(self + 37, 0);
  v6;
  EmitObjC::EmitObjC(v9, WeakRetained, self, v8);
}

- (void)dealloc
{
  v19 = 0;
  if (![*(self + 101) fileExistsAtPath:*(self + 115) isDirectory:&v19])
  {
    v5 = 0;
    v6 = *(self + 36);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = *(self + 101);
  v4 = *(self + 115);
  v18 = 0;
  [v3 removeItemAtPath:v4 error:&v18];
  v5 = v18;
  v6 = *(self + 36);
  if (v6)
  {
LABEL_5:
    MEMORY[0x1E12E5B90](v6, 0x20C40DC1BFBCFLL);
  }

LABEL_6:
  v7 = *(self + 38);
  if (v7)
  {
    v8 = *(v7 + 40);
    if (v8)
    {
      do
      {
        v12 = *v8;
        if (*(v8 + 47) < 0)
        {
          v13 = v8;
          operator delete(v8[3]);
          v8 = v13;
        }

        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }

    v9 = *(v7 + 24);
    *(v7 + 24) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    if (*(v7 + 12))
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        v11 = 0;
        do
        {
          v14 = *(*v7 + v11);
          if (v14 != -8 && v14 != 0)
          {
            v16 = *v14;
            if (*(v14 + 31) < 0)
            {
              operator delete(*(v14 + 1));
            }

            llvm::deallocate_buffer(v14, (v16 + 33));
          }

          v11 += 8;
        }

        while (8 * v10 != v11);
      }
    }

    free(*v7);
    MEMORY[0x1E12E5B90](v7, 0x10A0C4083D84BACLL);
  }

  v17.receiver = self;
  v17.super_class = MPSGraphExecutable;
  [(MPSGraphExecutable *)&v17 dealloc];
}

- (void)dump
{
  std::mutex::lock((self + 8));
  OriginalModuleRef::get(self + 37, 0);
  v3 = *(self + 37);
  (*(*v3 + 3))(v3, 0);
  mlir::Operation::dump(v3[5]);

  std::mutex::unlock((self + 8));
}

- (id)getIR
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v9 = 0;
  v13 = 0;
  v14 = 1;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v8 = &unk_1F5B3FB30;
  v15 = v16;
  llvm::raw_ostream::SetBufferAndMode(&v8, 0, 0, 0);
  std::mutex::lock((self + 8));
  OriginalModuleRef::get(self + 37, 0);
  v3 = *(self + 37);
  ((*v3)[3])(v3, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(v7);
  mlir::Operation::print(v3[5], &v8, v7);
  v4 = v15;
  if (*(v15 + 23) < 0)
  {
    v4 = *v15;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v4];
  std::mutex::unlock((self + 8));
  llvm::raw_ostream::~raw_ostream(&v8);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  return v5;
}

- (id)createMLIRLibraryWithMPSGraphPackage:(id)a3 packageKey:(id)a4 appendOptimizedModules:(BOOL)a5
{
  v5 = a5;
  v113[1] = *MEMORY[0x1E69E9840];
  v105 = self;
  v104 = a3;
  v85 = a4;
  v103 = [v104 getMLIRLibrary];
  v87 = v85;
  MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v108, v87);
  if (v108 < 4 || v108 == 4 && v109.__r_.__value_.__l.__data_ <= 20)
  {
    v108 = xmmword_1E09A7130;
    v109.__r_.__value_.__r.__words[0] = 21;
  }

  MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v98, v87);
  if (v98.var0 < 4)
  {
    goto LABEL_6;
  }

  if (v98.var0 == 4)
  {
    if (v98.var1 < 4)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_16;
    }

    v7 = v98.var1 != 4 || v98.var2 >= 0;
  }

  else
  {
    v7 = 1;
  }

LABEL_16:

  v102 = v7;
  v9 = objc_opt_new();
  v98.var0 = &v102;
  v98.var1 = &v101;
  v98.var2 = &v103;
  v99 = &v105;
  v100 = &v104;
  v101 = v9;
  if (([v103 originalFileExists] & 1) == 0)
  {
    [(MPSGraphExecutable *)v105 optimizeOriginalModule];
    v10 = [v104 createFileHandle];
    v11 = v105;
    std::mutex::lock((v105 + 8));
    v12 = v104;
    v13 = OriginalModuleRef::get(v105 + 37, 0);
    [v12 createVersionedBytecodeFromMlirModule:v13 packageKey:v87 fileHandle:v10 resourceStorageMode:v102 downgradedModuleCallback:{llvm::function_ref<void ()(mlir::mps::serialization::ModuleOp)>::callback_fn<-[MPSGraphExecutable createMLIRLibraryWithMPSGraphPackage:packageKey:appendOptimizedModules:]::$_31>, &v98}];
    [v103 addOriginalMLIRFile:v10];
    std::mutex::unlock((v11 + 8));
  }

  v86 = [v103 getBinaryResourceFiles];
  if (v5)
  {
    v14 = v105;
    std::mutex::lock((v105 + 200));
    v15 = v105;
    std::mutex::lock((v105 + 72));
    v16 = *(v105 + 55) + 32 * *(v105 + 114);
    v83 = 72;
    v84 = v15;
    if (*(v105 + 112))
    {
      *&v108 = *(v105 + 55);
      *(&v108 + 1) = v16;
      llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(&v108);
    }

    v97 = vdupq_n_s64(v16);
    v17 = v97.i64[0];
    if (v97.i64[0] != *(v105 + 55) + 32 * *(v105 + 114))
    {
      v18 = *(v97.i64[0] + 24);
      v88 = *v18;
      if ((*(**v18 + 16))() == 2)
      {
        v89 = MPSGraphModuleKeysSetToJSONString(v97.i64[0]);
        v91 = objc_opt_new();
        v90 = objc_opt_new();
        v19 = *v97.i64[0];
        v20 = *(v97.i64[0] + 16);
        v21 = *v97.i64[0] + 96 * v20;
        if (*(v97.i64[0] + 8))
        {
          *&v108 = *v97.i64[0];
          *(&v108 + 1) = v21;
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(&v108);
          v22 = v108;
          v20 = *(v97.i64[0] + 16);
          v19 = *v97.i64[0];
        }

        else
        {
          v22 = vdupq_n_s64(v21);
        }

        *v96 = v22;
        v23 = (v19 + 96 * v20);
        while (1)
        {
          v24 = v96[0];
          if (v96[0] == v23)
          {
            break;
          }

          v25 = MPSGraphModuleKeyToJSONString(v96[0]);
          v26 = MEMORY[0x1E696AEC0];
          v27 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>,MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>>::doFind<MPSGraphModuleKey>(v18[1], *(v18 + 6), v24);
          v28 = v18[1] + 120 * *(v18 + 6);
          if (v27)
          {
            v28 = v27;
          }

          if (*(v28 + 119) < 0)
          {
            std::string::__init_copy_ctor_external(&v108, *(v28 + 96), *(v28 + 104));
          }

          else
          {
            v108 = *(v28 + 96);
            v109.__r_.__value_.__r.__words[0] = *(v28 + 112);
          }

          if (v109.__r_.__value_.__s.__data_[7] >= 0)
          {
            v29 = &v108;
          }

          else
          {
            v29 = v108;
          }

          v30 = [v26 stringWithUTF8String:{v29, v83, v84}];
          [v91 setObject:v30 forKeyedSubscript:v25];

          if (v109.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v108);
          }

          v31 = (v105 + 440);
          v32 = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>,MPSGraphModuleKey,MPSGraphExecutableCacheValue,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,MPSGraphExecutableCacheValue>>::doFind<MPSGraphModuleKey>(*(v105 + 58), *(v105 + 120), v24);
          v33 = v32;
          if (v32)
          {
            if (v32 != (v31->_currentCache.Buckets + 136 * v31->_currentCache.NumBuckets))
            {
              v34 = &v32[1];
              if (MPSGraphSpecializationCache::moduleValid(v31, v32[1].var0.var0))
              {
                v108 = *v34;
                if (v33[1].var0.var3[23] < 0)
                {
                  std::string::__init_copy_ctor_external(&v109, *v33[1].var0.var3, *&v33[1].var0.var3[8]);
                }

                else
                {
                  v109 = *v33[1].var0.var3;
                }

                v110 = 1;
                if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v109.__r_.__value_.__l.__data_);
                }

                [v90 addObject:v25];
              }
            }
          }

          v96[0] = v24 + 1;
          llvm::DenseMapIterator<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>,true>::AdvancePastEmptyBuckets(v96);
        }

        if ([v103 optimizedModuleWithSignature:v89])
        {
          v35 = [v103 getOptimizedModules];
          v36 = [v35 objectForKeyedSubscript:v89];
          v37 = [v36 objectForKeyedSubscript:@"File Name"];

          v38 = [v103 getOptimizedModules];
          v39 = [v38 objectForKeyedSubscript:v89];
          v40 = [v39 objectForKeyedSubscript:@"Used Binary File Resource Ids"];

          if (v37)
          {
            v41 = v37;
          }

          else
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v41 = 0;
          }
        }

        else
        {
          v41 = [v104 createFileHandle];
          v42 = v104;
          v43 = (*(*v88 + 24))(v88, 0);
          [v42 createBytecodeFromMlirModule:v43 fileHandle:v41 resourceStorageMode:v102];
          if (v102)
          {
            v44 = (*(*v88 + 24))(v88, 0);
            v45 = objc_opt_new();
            v96[0] = v45;
            v47 = ((v44 + 16 * ((*(v44 + 44) >> 23) & 1) + ((*(v44 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v44 + 40);
            v106 = v96;
            v48 = *(v47 + 8);
            if (v48 != v47)
            {
              do
              {
                v49 = v48 - 8;
                if (!v48)
                {
                  v49 = 0;
                }

                v50 = *(v49 + 40);
                v51 = v49 + 32;
                if (v50 != v49 + 32)
                {
                  do
                  {
                    v52 = *(v50 + 8);
                    v53 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v50, v46);
                    *&v108 = &v106;
                    mlir::detail::walk<mlir::ForwardIterator>(v53, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ32getConstantResourcesUsedInModuleINS1_8ModuleOpEEP7NSArrayIP8NSStringET_EUlNS1_3mps10ConstantOpEE_SK_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v108, 1);
                    v50 = v52;
                  }

                  while (v52 != v51);
                }

                v48 = *(v48 + 8);
              }

              while (v48 != v47);
              v45 = v96[0];
            }

            v54 = [(MPSGraphModuleKey *)v45 allObjects:v83];

            [v101 addObjectsFromArray:v54];
            [v103 addOptimizedResourcesUsed:v54 withSignature:v89];
          }

          (*(*v88 + 40))(&v108);
          if (v109.__r_.__value_.__s.__data_[0] == 1)
          {
            v55 = [v104 addBinaryResourceFile:v108 withFileType:v86 toBinaryResourceFileDict:?];
            v113[0] = v55;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:1];

            if (v109.__r_.__value_.__s.__data_[0])
            {
            }
          }

          else
          {
            v40 = 0;
          }
        }

        v111[0] = @"File Name";
        v111[1] = @"Key to Symbol Name";
        v112[0] = v41;
        v112[1] = v91;
        v111[2] = @"Used In Cache";
        v112[2] = v90;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:{3, v83, v84}];
        v57 = [v56 mutableCopy];

        if (v40)
        {
          [v57 setObject:v40 forKeyedSubscript:@"Used Binary File Resource Ids"];
        }

        [v103 setOptimizedModule:v57 withSignature:v89];

        v17 = v97.i64[0];
      }

      v97.i64[0] = v17 + 32;
      llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v97.i64);
    }

    std::mutex::unlock((v15 + 72));
    std::mutex::unlock((v14 + 200));
  }

  [v103 setCallablesDescription:{*(v105 + 48), v83, v84}];
  [v103 setResourceStorageMode:v102];
  if ([v101 count])
  {
    Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(*(v105 + 34), v58);
    v60 = [v103 getResourceOffsetsLibrary];
    *&v108 = &v109;
    *(&v108 + 1) = 0xA00000000;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v61 = v101;
    v62 = [v61 countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v62)
    {
      v63 = *v93;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v93 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v92 + 1) + 8 * i);
          v67 = [v60 objectForKeyedSubscript:v66];
          v68 = v67 == 0;

          if (v68)
          {
            v69 = v66;
            v70 = [v66 UTF8String];
            v71 = v70;
            if (v70)
            {
              v72 = strlen(v70);
            }

            else
            {
              v72 = 0;
            }

            v73 = mlir::mps::MPSResourceBlobManagerInterface::lookup(Manager, v71, v72);
            v74 = v73;
            if ((!v73 || (*(v73 + 96) & 1) == 0) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v65 = DWORD2(v108);
            if (DWORD2(v108) >= HIDWORD(v108))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, &v109, DWORD2(v108) + 1, 8);
              v65 = DWORD2(v108);
            }

            *(v108 + 8 * v65) = v74;
            ++DWORD2(v108);
          }
        }

        v62 = [v61 countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v62);
    }

    v75 = [v104 writeResources:{v108, DWORD2(v108)}];
    [v60 addEntriesFromDictionary:v75];

    if (v108 != &v109)
    {
      free(v108);
    }
  }

  v76 = objc_opt_new();
  v77 = *(v105 + 49);
  for (j = *(v105 + 50); v77 != j; v77 += 3)
  {
    v79 = v77;
    if (*(v77 + 23) < 0)
    {
      v79 = *v77;
    }

    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v79];
    [v76 addObject:v80];
  }

  [v103 addSymbolsWithMutableWeights:v76];
  v81 = v103;

  return v81;
}

- (id)getFunctionReflectionData
{
  v269 = *MEMORY[0x1E69E9840];
  v2 = [(MPSGraphExecutable *)self functionNames];
  v3 = v2;
  if (!v2 || ![v2 count])
  {
    v178 = 0;
    goto LABEL_409;
  }

  v258 = 0;
  v259 = 0;
  v260 = xmmword_1E09AC010;
  v261 = 0u;
  v262 = 0u;
  v263 = 0;
  v264 = 1;
  v265 = 256;
  v266 = 0;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  obj = v3;
  v226 = [obj countByEnumeratingWithState:&v254 objects:v268 count:16];
  if (v226)
  {
    v227 = 0;
    v225 = *v255;
    v250 = v3;
    while (1)
    {
      v229 = 0;
      do
      {
        if (*v255 != v225)
        {
          objc_enumerationMutation(obj);
        }

        v230 = *(*(&v254 + 1) + 8 * v229);
        v234 = [(MPSGraphExecutable *)self inputNamesForFunction:v230];
        v245 = [(MPSGraphExecutable *)self getInputShapesForFunction:v230];
        if (![v234 count])
        {
          for (i = 0; i < [v245 count]; ++i)
          {
            v155 = [MEMORY[0x1E696AEC0] stringWithFormat:@"arg%ld", i];
            v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v155];
            [v234 addObject:v156];
          }
        }

        v243 = 0;
        for (j = 0; j < [v245 count]; j = v248 + 1)
        {
          v5 = [v245 objectAtIndexedSubscript:j];
          v6 = [v5 shape];
          v7 = v6 == 0;

          v248 = j;
          if (v7)
          {
            v10 = -1;
          }

          else
          {
            v8 = [v5 shape];
            v9 = [v8 count] != 0;

            if (v9)
            {
              [v5 shape];
              [objc_claimAutoreleasedReturnValue() objectAtIndexedSubscript:0];
              [objc_claimAutoreleasedReturnValue() integerValue];
              operator new();
            }

            v10 = 0;
          }

          v11 = [v234 objectAtIndexedSubscript:j];
          v12 = v11;
          v13 = [v11 UTF8String];
          v14 = strlen(v13);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          v240 = v10;
          v241 = v11;
          if (v14 >= 0x17)
          {
            operator new();
          }

          v253 = v14;
          if (v14)
          {
            memmove(&__dst, v13, v14);
          }

          *(&__dst + v15) = 0;
          if ((v253 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v253 & 0x80u) == 0)
          {
            v17 = v253;
          }

          else
          {
            v17 = v252;
          }

          String = flatbuffers::FlatBufferBuilder::CreateString(&v258, p_dst, v17);
          BYTE6(v263) = 1;
          if (v264 <= 3)
          {
            v264 = 4;
          }

          v18 = (v262 - BYTE8(v261) - v261) & 3;
          if (v262 - *(&v262 + 1) >= v18)
          {
            *&v262 = v262 - v18;
            if (!v18)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v19 = v261 >> 1;
            if (!v261)
            {
              v19 = v260;
            }

            if (v19 <= v18)
            {
              v19 = (v262 - BYTE8(v261) - v261) & 3;
            }

            v20 = v261 - v262 + DWORD2(v261);
            *&v261 = (v261 + *(&v260 + 1) + v19 - 1) & -*(&v260 + 1);
            v236 = DWORD2(v262) - DWORD2(v261);
            if (*(&v261 + 1))
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v21 = (*(*v258 + 32))();
            }

            else
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v21 = (*(*v258 + 16))();
            }

            *(&v261 + 1) = v21;
            *&v262 = v21 + v261 - v20 - v18;
            *(&v262 + 1) = v21 + v236;
          }

          v22 = 0;
          do
          {
            *(v262 + v22++) = 0;
          }

          while (v18 != v22);
          if (v264 <= 3)
          {
            v264 = 4;
          }

LABEL_49:
          v23 = v261 - v262 + DWORD2(v261);
          v24 = -v23 & 3;
          if (v262 - *(&v262 + 1) >= v24)
          {
            *&v262 = v262 - v24;
            if ((-v23 & 3) == 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v25 = v261 >> 1;
            if (!v261)
            {
              v25 = v260;
            }

            if (v25 <= v24)
            {
              v25 = -v23 & 3;
            }

            v26 = v23;
            v27 = DWORD2(v262) - DWORD2(v261);
            *&v261 = (v261 + *(&v260 + 1) + v25 - 1) & -*(&v260 + 1);
            if (*(&v261 + 1))
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v28 = (*(*v258 + 32))();
            }

            else
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v28 = (*(*v258 + 16))();
            }

            *(&v261 + 1) = v28;
            *&v262 = v28 + v261 - v26 - v24;
            *(&v262 + 1) = v28 + v27;
          }

          v29 = 0;
          do
          {
            *(v262 + v29++) = 0;
          }

          while (v24 != v29);
LABEL_66:
          BYTE6(v263) = 0;
          if (v264 <= 3)
          {
            v264 = 4;
          }

          v31 = *(&v261 + 1);
          v30 = v261;
          v32 = *(&v262 + 1);
          v33 = (v262 - (v261 + BYTE8(v261))) & 3;
          if (v262 - *(&v262 + 1) < v33)
          {
            v34 = v261 >> 1;
            if (!v261)
            {
              v34 = v260;
            }

            if (v34 <= v33)
            {
              v34 = (v262 - (v261 + BYTE8(v261))) & 3;
            }

            v35 = v261 - v262 + DWORD2(v261);
            v36 = DWORD2(v262) - DWORD2(v261);
            *&v261 = (v261 + *(&v260 + 1) + v34 - 1) & -*(&v260 + 1);
            if (*(&v261 + 1))
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v37 = (*(*v258 + 32))();
            }

            else
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v37 = (*(*v258 + 16))();
            }

            *(&v261 + 1) = v37;
            *&v262 = v37 + v261 - v35 - v33;
            *(&v262 + 1) = v37 + v36;
LABEL_84:
            v39 = 0;
            do
            {
              *(v262 + v39++) = 0;
            }

            while (v33 != v39);
            v32 = *(&v262 + 1);
            v38 = v262;
            v31 = *(&v261 + 1);
            v30 = v261;
            if (v262 - *(&v262 + 1) > 3uLL)
            {
              goto LABEL_99;
            }

            goto LABEL_87;
          }

          v38 = v262 - v33;
          *&v262 = v262 - v33;
          if (v33)
          {
            goto LABEL_84;
          }

          if ((v38 - *(&v262 + 1)) > 3)
          {
            goto LABEL_99;
          }

LABEL_87:
          v40 = v30 >> 1;
          if (!v30)
          {
            v40 = v260;
          }

          if (v40 <= 4)
          {
            v40 = 4;
          }

          v41 = v30 - v38 + v31;
          v42 = v32 - v31;
          *&v261 = (v30 + *(&v260 + 1) + v40 - 1) & -*(&v260 + 1);
          if (v31)
          {
            if (!v258)
            {
              v267 = &unk_1F5B53E10;
              operator new[]();
            }

            v43 = (*(*v258 + 32))();
          }

          else
          {
            if (!v258)
            {
              v267 = &unk_1F5B53E10;
              operator new[]();
            }

            v43 = (*(*v258 + 16))();
          }

          v31 = v43;
          v30 = v261;
          v38 = v43 + v261 - v41;
          v32 = v43 + v42;
          *(&v261 + 1) = v43;
          *(&v262 + 1) = v32;
LABEL_99:
          *(v38 - 4) = 0;
          v44 = v38 - 4;
          *&v262 = v44;
          BYTE6(v263) = 1;
          if (v264 <= 3)
          {
            v264 = 4;
          }

          v246 = v30 - v44 + v31;
          v45 = (v44 - (v30 + v31)) & 3;
          if (v44 - v32 >= v45)
          {
            *&v262 = v44 - v45;
            if (((v44 - (v30 + v31)) & 3) == 0)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v46 = v30 >> 1;
            if (!v30)
            {
              v46 = v260;
            }

            if (v46 <= v45)
            {
              v46 = v45;
            }

            v47 = v32 - v31;
            *&v261 = (v30 + *(&v260 + 1) + v46 - 1) & -*(&v260 + 1);
            if (v31)
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v48 = (*(*v258 + 32))();
            }

            else
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v48 = (*(*v258 + 16))();
            }

            *(&v261 + 1) = v48;
            *&v262 = v48 + v261 - v246 - v45;
            *(&v262 + 1) = v48 + v47;
          }

          v49 = 0;
          do
          {
            *(v262 + v49++) = 0;
          }

          while (v45 != v49);
          if (v264 <= 3)
          {
            v264 = 4;
          }

LABEL_120:
          v50 = (v261 - v262 + DWORD2(v261));
          v51 = -v50 & 3;
          if (v262 - *(&v262 + 1) >= v51)
          {
            *&v262 = v262 - v51;
            if (!v51)
            {
              BYTE6(v263) = 0;
              goto LABEL_139;
            }
          }

          else
          {
            v52 = v261 >> 1;
            if (!v261)
            {
              v52 = v260;
            }

            if (v52 <= v51)
            {
              v52 = -v50 & 3;
            }

            v53 = DWORD2(v262) - DWORD2(v261);
            *&v261 = (v261 + *(&v260 + 1) + v52 - 1) & -*(&v260 + 1);
            if (*(&v261 + 1))
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v54 = (*(*v258 + 32))();
            }

            else
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v54 = (*(*v258 + 16))();
            }

            *(&v261 + 1) = v54;
            *&v262 = v54 + v261 - v50 - v51;
            *(&v262 + 1) = v54 + v53;
          }

          v55 = 0;
          do
          {
            *(v262 + v55++) = 0;
          }

          while (v51 != v55);
          BYTE6(v263) = 0;
          if (v264 <= 3)
          {
            v264 = 4;
          }

LABEL_139:
          v57 = *(&v261 + 1);
          v56 = v261;
          v58 = DWORD2(v262);
          v59 = (v262 - (v261 + BYTE8(v261))) & 3;
          if (v262 - *(&v262 + 1) < v59)
          {
            v60 = v261 >> 1;
            if (!v261)
            {
              v60 = v260;
            }

            if (v60 <= v59)
            {
              v60 = (v262 - (v261 + BYTE8(v261))) & 3;
            }

            v61 = v261 - v262 + DWORD2(v261);
            v62 = DWORD2(v262) - DWORD2(v261);
            *&v261 = (v261 + *(&v260 + 1) + v60 - 1) & -*(&v260 + 1);
            if (*(&v261 + 1))
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v63 = (*(*v258 + 32))();
            }

            else
            {
              if (!v258)
              {
                v267 = &unk_1F5B53E10;
                operator new[]();
              }

              v63 = (*(*v258 + 16))();
            }

            *(&v261 + 1) = v63;
            *&v262 = v63 + v261 - v61 - v59;
            *(&v262 + 1) = v63 + v62;
LABEL_155:
            v65 = 0;
            do
            {
              *(v262 + v65++) = 0;
            }

            while (v59 != v65);
            v64 = v262;
            v58 = DWORD2(v262);
            v57 = *(&v261 + 1);
            v56 = v261;
            if (v262 - *(&v262 + 1) > 3uLL)
            {
              goto LABEL_170;
            }

            goto LABEL_158;
          }

          v64 = v262 - v59;
          *&v262 = v262 - v59;
          if (v59)
          {
            goto LABEL_155;
          }

          if ((v64 - *(&v262 + 1)) > 3)
          {
            goto LABEL_170;
          }

LABEL_158:
          v66 = v56 >> 1;
          if (!v56)
          {
            v66 = v260;
          }

          if (v66 <= 4)
          {
            v66 = 4;
          }

          v67 = v56 - v64 + v57;
          v68 = v58 - v57;
          *&v261 = (v56 + *(&v260 + 1) + v66 - 1) & -*(&v260 + 1);
          if (v57)
          {
            if (!v258)
            {
              v267 = &unk_1F5B53E10;
              operator new[]();
            }

            v69 = (*(*v258 + 32))();
          }

          else
          {
            if (!v258)
            {
              v267 = &unk_1F5B53E10;
              operator new[]();
            }

            v69 = (*(*v258 + 16))();
          }

          LODWORD(v57) = v69;
          LODWORD(v56) = v261;
          v64 = v69 + v261 - v67;
          *(&v261 + 1) = v69;
          *(&v262 + 1) = v69 + v68;
LABEL_170:
          *(v64 - 4) = 0;
          *&v262 = v64 - 4;
          Tensor = MPSGraphReflection::CreateTensor(&v258, String, v246, (v56 + v57 - (v64 - 4)), v240, [v5 dataType]);
          v71 = v243;
          v72 = v243 >> 2;
          v3 = v250;
          if (((v243 >> 2) + 1) >> 62)
          {
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          if (v243 >> 2 != -1)
          {
            if (!(((v243 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v72) = Tensor;
          v243 = 4 * v72 + 4;
          memcpy(0, 0, v71);
          if (v253 < 0)
          {
            operator delete(__dst);
          }
        }

        v233 = [(MPSGraphExecutable *)self outputNamesForFunction:v230];
        v244 = [(MPSGraphExecutable *)self getOutputShapesForFunction:v230];
        if (![v233 count])
        {
          for (k = 0; k < [v244 count]; ++k)
          {
            v158 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%ld", k];
            v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v158];
            [v233 addObject:v159];
          }
        }

        v242 = 0;
        v73 = 0;
        while (2)
        {
          if (v73 < [v244 count])
          {
            v74 = [v244 objectAtIndexedSubscript:v73];
            v75 = [v74 shape];
            v247 = v73;
            v76 = v75 == 0;

            if (v76)
            {
              v79 = -1;
            }

            else
            {
              v77 = [v74 shape];
              v78 = [v77 count] != 0;

              if (v78)
              {
                [v74 shape];
                [objc_claimAutoreleasedReturnValue() objectAtIndexedSubscript:0];
                [objc_claimAutoreleasedReturnValue() integerValue];
                operator new();
              }

              v79 = 0;
            }

            v80 = [v233 objectAtIndexedSubscript:v247];
            v81 = v80;
            v82 = [v80 UTF8String];
            v83 = strlen(v82);
            if (v83 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v84 = v83;
            v237 = v79;
            v239 = v80;
            if (v83 >= 0x17)
            {
              operator new();
            }

            v253 = v83;
            if (v83)
            {
              memmove(&__dst, v82, v83);
            }

            *(&__dst + v84) = 0;
            if ((v253 & 0x80u) == 0)
            {
              v85 = &__dst;
            }

            else
            {
              v85 = __dst;
            }

            if ((v253 & 0x80u) == 0)
            {
              v86 = v253;
            }

            else
            {
              v86 = v252;
            }

            v235 = flatbuffers::FlatBufferBuilder::CreateString(&v258, v85, v86);
            BYTE6(v263) = 1;
            if (v264 <= 3)
            {
              v264 = 4;
            }

            v87 = (v262 - BYTE8(v261) - v261) & 3;
            if (v262 - *(&v262 + 1) >= v87)
            {
              *&v262 = v262 - v87;
              if (v87)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v88 = v261 >> 1;
              if (!v261)
              {
                v88 = v260;
              }

              if (v88 <= v87)
              {
                v88 = (v262 - BYTE8(v261) - v261) & 3;
              }

              v89 = v261 - v262 + DWORD2(v261);
              *&v261 = (v261 + *(&v260 + 1) + v88 - 1) & -*(&v260 + 1);
              v231 = DWORD2(v262) - DWORD2(v261);
              if (*(&v261 + 1))
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v90 = (*(*v258 + 32))();
              }

              else
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v90 = (*(*v258 + 16))();
              }

              *(&v261 + 1) = v90;
              *&v262 = v90 + v261 - v89 - v87;
              *(&v262 + 1) = v90 + v231;
LABEL_215:
              v91 = 0;
              do
              {
                *(v262 + v91++) = 0;
              }

              while (v87 != v91);
              if (v264 <= 3)
              {
                v264 = 4;
              }
            }

            v92 = v261 - v262 + DWORD2(v261);
            v93 = -v92 & 3;
            if (v262 - *(&v262 + 1) >= v93)
            {
              *&v262 = v262 - v93;
              if ((-v92 & 3) != 0)
              {
                goto LABEL_234;
              }
            }

            else
            {
              v94 = v261 >> 1;
              if (!v261)
              {
                v94 = v260;
              }

              if (v94 <= v93)
              {
                v94 = -v92 & 3;
              }

              v95 = v92;
              *&v261 = (v261 + *(&v260 + 1) + v94 - 1) & -*(&v260 + 1);
              v232 = DWORD2(v262) - DWORD2(v261);
              if (*(&v261 + 1))
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v96 = (*(*v258 + 32))();
              }

              else
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v96 = (*(*v258 + 16))();
              }

              *(&v261 + 1) = v96;
              *&v262 = v96 + v261 - v95 - v93;
              *(&v262 + 1) = v96 + v232;
LABEL_234:
              v97 = 0;
              do
              {
                *(v262 + v97++) = 0;
              }

              while (v93 != v97);
            }

            BYTE6(v263) = 0;
            if (v264 <= 3)
            {
              v264 = 4;
            }

            v99 = *(&v261 + 1);
            v98 = v261;
            v100 = *(&v262 + 1);
            v101 = (v262 - (v261 + BYTE8(v261))) & 3;
            if (v262 - *(&v262 + 1) >= v101)
            {
              v106 = v262 - v101;
              *&v262 = v262 - v101;
              if (v101)
              {
                goto LABEL_254;
              }

              if ((v106 - *(&v262 + 1)) <= 3)
              {
LABEL_257:
                v108 = v98 >> 1;
                if (!v98)
                {
                  v108 = v260;
                }

                if (v108 <= 4)
                {
                  v108 = 4;
                }

                v109 = v98 - v106 + v99;
                v110 = v100 - v99;
                *&v261 = (v98 + *(&v260 + 1) + v108 - 1) & -*(&v260 + 1);
                if (v99)
                {
                  if (!v258)
                  {
                    v267 = &unk_1F5B53E10;
                    operator new[]();
                  }

                  v111 = (*(*v258 + 32))();
                }

                else
                {
                  if (!v258)
                  {
                    v267 = &unk_1F5B53E10;
                    operator new[]();
                  }

                  v111 = (*(*v258 + 16))();
                }

                v99 = v111;
                v98 = v261;
                v106 = v111 + v261 - v109;
                v100 = v111 + v110;
                *(&v261 + 1) = v111;
                *(&v262 + 1) = v100;
              }
            }

            else
            {
              v102 = v261 >> 1;
              if (!v261)
              {
                v102 = v260;
              }

              if (v102 <= v101)
              {
                v102 = (v262 - (v261 + BYTE8(v261))) & 3;
              }

              v103 = v261 - v262 + DWORD2(v261);
              v104 = DWORD2(v262) - DWORD2(v261);
              *&v261 = (v261 + *(&v260 + 1) + v102 - 1) & -*(&v260 + 1);
              if (*(&v261 + 1))
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v105 = (*(*v258 + 32))();
              }

              else
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v105 = (*(*v258 + 16))();
              }

              *(&v261 + 1) = v105;
              *&v262 = v105 + v261 - v103 - v101;
              *(&v262 + 1) = v105 + v104;
LABEL_254:
              v107 = 0;
              do
              {
                *(v262 + v107++) = 0;
              }

              while (v101 != v107);
              v100 = *(&v262 + 1);
              v106 = v262;
              v99 = *(&v261 + 1);
              v98 = v261;
              if (v262 - *(&v262 + 1) <= 3uLL)
              {
                goto LABEL_257;
              }
            }

            *(v106 - 4) = 0;
            v112 = v106 - 4;
            *&v262 = v112;
            BYTE6(v263) = 1;
            if (v264 <= 3)
            {
              v264 = 4;
            }

            v249 = v98 - v112 + v99;
            v113 = (v112 - (v98 + v99)) & 3;
            if (v112 - v100 >= v113)
            {
              *&v262 = v112 - v113;
              if (((v112 - (v98 + v99)) & 3) != 0)
              {
                goto LABEL_286;
              }
            }

            else
            {
              v114 = v98 >> 1;
              if (!v98)
              {
                v114 = v260;
              }

              if (v114 <= v113)
              {
                v114 = v113;
              }

              v115 = v100 - v99;
              *&v261 = (v98 + *(&v260 + 1) + v114 - 1) & -*(&v260 + 1);
              if (v99)
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v116 = (*(*v258 + 32))();
              }

              else
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v116 = (*(*v258 + 16))();
              }

              *(&v261 + 1) = v116;
              *&v262 = v116 + v261 - v249 - v113;
              *(&v262 + 1) = v116 + v115;
LABEL_286:
              v117 = 0;
              do
              {
                *(v262 + v117++) = 0;
              }

              while (v113 != v117);
              if (v264 <= 3)
              {
                v264 = 4;
              }
            }

            v118 = (v261 - v262 + DWORD2(v261));
            v119 = -v118 & 3;
            if (v262 - *(&v262 + 1) >= v119)
            {
              *&v262 = v262 - v119;
              if (v119)
              {
                goto LABEL_305;
              }

              BYTE6(v263) = 0;
            }

            else
            {
              v120 = v261 >> 1;
              if (!v261)
              {
                v120 = v260;
              }

              if (v120 <= v119)
              {
                v120 = -v118 & 3;
              }

              v121 = DWORD2(v262) - DWORD2(v261);
              *&v261 = (v261 + *(&v260 + 1) + v120 - 1) & -*(&v260 + 1);
              if (*(&v261 + 1))
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v122 = (*(*v258 + 32))();
              }

              else
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v122 = (*(*v258 + 16))();
              }

              *(&v261 + 1) = v122;
              *&v262 = v122 + v261 - v118 - v119;
              *(&v262 + 1) = v122 + v121;
LABEL_305:
              v123 = 0;
              do
              {
                *(v262 + v123++) = 0;
              }

              while (v119 != v123);
              BYTE6(v263) = 0;
              if (v264 <= 3)
              {
                v264 = 4;
              }
            }

            v125 = *(&v261 + 1);
            v124 = v261;
            v126 = DWORD2(v262);
            v127 = (v262 - (v261 + BYTE8(v261))) & 3;
            if (v262 - *(&v262 + 1) >= v127)
            {
              v132 = v262 - v127;
              *&v262 = v262 - v127;
              if (v127)
              {
                goto LABEL_325;
              }

              if ((v132 - *(&v262 + 1)) <= 3)
              {
LABEL_328:
                v134 = v124 >> 1;
                if (!v124)
                {
                  v134 = v260;
                }

                if (v134 <= 4)
                {
                  v134 = 4;
                }

                v135 = v124 - v132 + v125;
                v136 = v126 - v125;
                *&v261 = (v124 + *(&v260 + 1) + v134 - 1) & -*(&v260 + 1);
                if (v125)
                {
                  if (!v258)
                  {
                    v267 = &unk_1F5B53E10;
                    operator new[]();
                  }

                  v137 = (*(*v258 + 32))();
                }

                else
                {
                  if (!v258)
                  {
                    v267 = &unk_1F5B53E10;
                    operator new[]();
                  }

                  v137 = (*(*v258 + 16))();
                }

                LODWORD(v125) = v137;
                LODWORD(v124) = v261;
                v132 = v137 + v261 - v135;
                *(&v261 + 1) = v137;
                *(&v262 + 1) = v137 + v136;
              }
            }

            else
            {
              v128 = v261 >> 1;
              if (!v261)
              {
                v128 = v260;
              }

              if (v128 <= v127)
              {
                v128 = (v262 - (v261 + BYTE8(v261))) & 3;
              }

              v129 = v261 - v262 + DWORD2(v261);
              v130 = DWORD2(v262) - DWORD2(v261);
              *&v261 = (v261 + *(&v260 + 1) + v128 - 1) & -*(&v260 + 1);
              if (*(&v261 + 1))
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v131 = (*(*v258 + 32))();
              }

              else
              {
                if (!v258)
                {
                  v267 = &unk_1F5B53E10;
                  operator new[]();
                }

                v131 = (*(*v258 + 16))();
              }

              *(&v261 + 1) = v131;
              *&v262 = v131 + v261 - v129 - v127;
              *(&v262 + 1) = v131 + v130;
LABEL_325:
              v133 = 0;
              do
              {
                *(v262 + v133++) = 0;
              }

              while (v127 != v133);
              v132 = v262;
              v126 = DWORD2(v262);
              v125 = *(&v261 + 1);
              v124 = v261;
              if (v262 - *(&v262 + 1) <= 3uLL)
              {
                goto LABEL_328;
              }
            }

            *(v132 - 4) = 0;
            *&v262 = v132 - 4;
            v138 = MPSGraphReflection::CreateTensor(&v258, v235, v249, (v124 + v125 - (v132 - 4)), v237, [v74 dataType]);
            v139 = v242;
            v140 = v242 >> 2;
            v3 = v250;
            if (((v242 >> 2) + 1) >> 62)
            {
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }

            if (v242 >> 2 != -1)
            {
              if (!(((v242 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v140) = v138;
            v242 = 4 * v140 + 4;
            memcpy(0, 0, v139);
            if (v253 < 0)
            {
              operator delete(__dst);
            }

            v73 = v247 + 1;
            continue;
          }

          break;
        }

        v141 = v230;
        v142 = [v230 UTF8String];
        v143 = strlen(v142);
        if (v143 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v144 = v143;
        if (v143 >= 0x17)
        {
          operator new();
        }

        v253 = v143;
        if (v143)
        {
          memmove(&__dst, v142, v143);
        }

        *(&__dst + v144) = 0;
        if ((v253 & 0x80u) == 0)
        {
          v145 = &__dst;
        }

        else
        {
          v145 = __dst;
        }

        if ((v253 & 0x80u) == 0)
        {
          v146 = v253;
        }

        else
        {
          v146 = v252;
        }

        v147 = flatbuffers::FlatBufferBuilder::CreateString(&v258, v145, v146);
        v148 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::Offset<MPSGraphReflection::Tensor>>(&v258, 0, v243);
        v149 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::Offset<MPSGraphReflection::Tensor>>(&v258, 0, v242);
        BYTE6(v263) = 1;
        v150 = WORD4(v261);
        v151 = v262;
        v152 = v261;
        if (v149)
        {
          if (v264 <= 3)
          {
            v264 = 4;
          }

          v153 = (v262 - (v261 + BYTE8(v261))) & 3;
          if (v262 - *(&v262 + 1) >= v153)
          {
            v160 = v262 - v153;
            *&v262 = v262 - v153;
            if (((v151 - (v261 + BYTE8(v261))) & 3) != 0)
            {
              goto LABEL_372;
            }

            v162 = DWORD2(v261);
            v163 = v261;
          }

          else
          {
            flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + BYTE8(v261))) & 3);
            *&v262 = v262 - v153;
LABEL_372:
            v161 = 0;
            do
            {
              *(v262 + v161++) = 0;
            }

            while (v153 != v161);
            v162 = DWORD2(v261);
            v160 = v262;
            v163 = v261;
          }

          flatbuffers::FlatBufferBuilder::AddElement<int>(&v258, 8, v162 - v160 + v163 - v149 + 4);
        }

        if (v148)
        {
          if (v264 <= 3)
          {
            v264 = 4;
          }

          v164 = v261;
          v165 = DWORD2(v261);
          v166 = (v262 - (v261 + BYTE8(v261))) & 3;
          if (v262 - *(&v262 + 1) >= v166)
          {
            v167 = v262 - v166;
            *&v262 = v262 - v166;
            if (v166)
            {
              goto LABEL_382;
            }
          }

          else
          {
            flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + BYTE8(v261))) & 3);
            *&v262 = v262 - v166;
LABEL_382:
            v168 = 0;
            do
            {
              *(v262 + v168++) = 0;
            }

            while (v166 != v168);
            v165 = DWORD2(v261);
            v167 = v262;
            v164 = v261;
          }

          flatbuffers::FlatBufferBuilder::AddElement<int>(&v258, 6, v165 - v167 + v164 - v148 + 4);
        }

        if (v147)
        {
          if (v264 <= 3)
          {
            v264 = 4;
          }

          v169 = v261;
          v170 = DWORD2(v261);
          v171 = (v262 - (v261 + BYTE8(v261))) & 3;
          if (v262 - *(&v262 + 1) >= v171)
          {
            v172 = v262 - v171;
            *&v262 = v262 - v171;
            if (v171)
            {
              goto LABEL_392;
            }
          }

          else
          {
            flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + BYTE8(v261))) & 3);
            *&v262 = v262 - v171;
LABEL_392:
            v173 = 0;
            do
            {
              *(v262 + v173++) = 0;
            }

            while (v171 != v173);
            v170 = DWORD2(v261);
            v172 = v262;
            v169 = v261;
          }

          flatbuffers::FlatBufferBuilder::AddElement<int>(&v258, 4, v170 - v172 + v169 - v147 + 4);
        }

        v174 = flatbuffers::FlatBufferBuilder::EndTable(&v258, v152 - v151 + v150);
        v175 = v227;
        v176 = v227 >> 2;
        if (((v227 >> 2) + 1) >> 62)
        {
          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        if (v227 >> 2 != -1)
        {
          if (!(((v227 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v176) = v174;
        v227 = 4 * v176 + 4;
        memcpy(0, 0, v175);
        if (v253 < 0)
        {
          operator delete(__dst);
        }

        ++v229;
      }

      while (v229 != v226);
      v177 = [obj countByEnumeratingWithState:&v254 objects:v268 count:16];
      v226 = v177;
      if (!v177)
      {
        goto LABEL_413;
      }
    }
  }

  v227 = 0;
LABEL_413:

  v180 = flatbuffers::FlatBufferBuilder::CreateString(&v258, "mpsgraph", 8uLL);
  if (v227)
  {
    v181 = 0;
  }

  else
  {
    v181 = &flatbuffers::data<flatbuffers::Offset<MPSGraphReflection::Function>,std::allocator<flatbuffers::Offset<MPSGraphReflection::Function>>>(std::vector<flatbuffers::Offset<MPSGraphReflection::Function>> const&)::t;
  }

  flatbuffers::FlatBufferBuilder::StartVector(&v258);
  if (v227)
  {
    v182 = v227 >> 2;
    do
    {
      v183 = v181[--v182];
      if (v264 <= 3)
      {
        v264 = 4;
      }

      v184 = v261;
      v185 = BYTE8(v261);
      v186 = (v262 - (v261 + DWORD2(v261))) & 3;
      if (v262 - *(&v262 + 1) >= v186)
      {
        v187 = v262 - v186;
        *&v262 = v262 - v186;
        if (!v186)
        {
          v189 = v261 + DWORD2(v261) - v187;
          goto LABEL_429;
        }
      }

      else
      {
        flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + DWORD2(v261))) & 3);
        *&v262 = v262 - v186;
      }

      v188 = 0;
      do
      {
        *(v262 + v188++) = 0;
      }

      while (v186 != v188);
      v184 = v261;
      v185 = BYTE8(v261);
      v187 = v262;
      v189 = DWORD2(v261) - v262 + v261;
      if (v264 <= 3)
      {
        v264 = 4;
      }

LABEL_429:
      v190 = (v187 - (v184 + v185)) & 3;
      v191 = *(&v262 + 1);
      if (v187 - *(&v262 + 1) < v190)
      {
        flatbuffers::vector_downward::reallocate(&v258, v190);
        *&v262 = v262 - v190;
LABEL_432:
        v193 = 0;
        do
        {
          *(v262 + v193++) = 0;
        }

        while (v190 != v193);
        v191 = *(&v262 + 1);
        v192 = v262;
        goto LABEL_435;
      }

      v192 = v187 - v190;
      *&v262 = v187 - v190;
      if (v190)
      {
        goto LABEL_432;
      }

LABEL_435:
      if ((v192 - v191) <= 3)
      {
        flatbuffers::vector_downward::reallocate(&v258, 4uLL);
        v192 = v262;
      }

      *(v192 - 4) = v189 - v183 + 4;
      *&v262 = v192 - 4;
    }

    while (v182);
  }

  BYTE6(v263) = 0;
  if (v264 <= 3)
  {
    v264 = 4;
  }

  v194 = *(&v262 + 1);
  v195 = (v262 - (v261 + BYTE8(v261))) & 3;
  if (v262 - *(&v262 + 1) >= v195)
  {
    v196 = v262 - v195;
    *&v262 = v262 - v195;
    if (!v195)
    {
      goto LABEL_445;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + BYTE8(v261))) & 3);
    *&v262 = v262 - v195;
  }

  v197 = 0;
  do
  {
    *(v262 + v197++) = 0;
  }

  while (v195 != v197);
  v194 = *(&v262 + 1);
  v196 = v262;
LABEL_445:
  if ((v196 - v194) <= 3)
  {
    flatbuffers::vector_downward::reallocate(&v258, 4uLL);
    v196 = v262;
  }

  *(v196 - 4) = v227 >> 2;
  v198 = v196 - 4;
  *&v262 = v198;
  v199 = v261;
  v200 = DWORD2(v261);
  BYTE6(v263) = 1;
  v201 = v261 - v198 + DWORD2(v261);
  if (v201)
  {
    if (v264 <= 3)
    {
      v264 = 4;
    }

    v202 = (v198 - (v261 + BYTE8(v261))) & 3;
    if (v198 - *(&v262 + 1) >= v202)
    {
      v203 = v198 - v202;
      *&v262 = v203;
      if (!v202)
      {
LABEL_456:
        flatbuffers::FlatBufferBuilder::AddElement<int>(&v258, 8, v200 - v203 + v199 - v201 + 4);
        goto LABEL_457;
      }
    }

    else
    {
      flatbuffers::vector_downward::reallocate(&v258, (v198 - (v261 + BYTE8(v261))) & 3);
      *&v262 = v262 - v202;
    }

    v204 = 0;
    do
    {
      *(v262 + v204++) = 0;
    }

    while (v202 != v204);
    v200 = DWORD2(v261);
    LODWORD(v203) = v262;
    v199 = v261;
    goto LABEL_456;
  }

LABEL_457:
  if (!v180)
  {
    goto LABEL_467;
  }

  if (v264 <= 3)
  {
    v264 = 4;
  }

  v205 = v261;
  v206 = DWORD2(v261);
  v207 = (v262 - (v261 + BYTE8(v261))) & 3;
  if (v262 - *(&v262 + 1) < v207)
  {
    flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + BYTE8(v261))) & 3);
    *&v262 = v262 - v207;
    goto LABEL_463;
  }

  v208 = v262 - v207;
  *&v262 = v262 - v207;
  if (v207)
  {
LABEL_463:
    v209 = 0;
    do
    {
      *(v262 + v209++) = 0;
    }

    while (v207 != v209);
    v206 = DWORD2(v261);
    v208 = v262;
    v205 = v261;
  }

  flatbuffers::FlatBufferBuilder::AddElement<int>(&v258, 6, v206 - v208 + v205 - v180 + 4);
LABEL_467:
  flatbuffers::FlatBufferBuilder::AddElement<int>(&v258, 4, 1);
  v210 = flatbuffers::FlatBufferBuilder::EndTable(&v258, v201);
  *(&v262 + 1) = *(&v261 + 1);
  v211 = v264;
  v212 = (-4 - (v261 + DWORD2(v261) - v262)) & (v264 - 1);
  if (v262 - *(&v261 + 1) >= v212)
  {
    *&v262 = v262 - v212;
    if (!v212)
    {
      goto LABEL_473;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(&v258, (-4 - (v261 + DWORD2(v261) - v262)) & (v264 - 1));
    *&v262 = v262 - v212;
  }

  v213 = 0;
  do
  {
    *(v262 + v213++) = 0;
  }

  while (v212 != v213);
  v211 = v264;
LABEL_473:
  if (v211 <= 3)
  {
    v264 = 4;
  }

  v214 = v261;
  v215 = BYTE8(v261);
  v216 = (v262 - (v261 + DWORD2(v261))) & 3;
  if (v262 - *(&v262 + 1) >= v216)
  {
    v217 = v262 - v216;
    *&v262 = v262 - v216;
    if (!v216)
    {
      v219 = v261 + DWORD2(v261) - v217;
      goto LABEL_483;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(&v258, (v262 - (v261 + DWORD2(v261))) & 3);
    *&v262 = v262 - v216;
  }

  v218 = 0;
  do
  {
    *(v262 + v218++) = 0;
  }

  while (v216 != v218);
  v214 = v261;
  v215 = BYTE8(v261);
  v217 = v262;
  v219 = DWORD2(v261) - v262 + v261;
  if (v264 <= 3)
  {
    v264 = 4;
  }

LABEL_483:
  v220 = (v217 - (v215 + v214)) & 3;
  v221 = *(&v262 + 1);
  if (v217 - *(&v262 + 1) < v220)
  {
    flatbuffers::vector_downward::reallocate(&v258, v220);
    *&v262 = v262 - v220;
    goto LABEL_486;
  }

  v222 = v217 - v220;
  *&v262 = v217 - v220;
  if (v220)
  {
LABEL_486:
    v223 = 0;
    do
    {
      *(v262 + v223++) = 0;
    }

    while (v220 != v223);
    v221 = *(&v262 + 1);
    v222 = v262;
  }

  if ((v222 - v221) <= 3)
  {
    flatbuffers::vector_downward::reallocate(&v258, 4uLL);
    v222 = v262;
  }

  *(v222 - 4) = v219 - v210 + 4;
  *&v262 = v222 - 4;
  HIBYTE(v263) = 1;
  v178 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v258);
LABEL_409:

  return v178;
}

- (void)serializeToMPSGraphPackageAtURL:(NSURL *)url descriptor:(MPSGraphExecutableSerializationDescriptor *)descriptor
{
  v41 = url;
  v6 = descriptor;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(MPSGraphExecutableSerializationDescriptor);
    if (!v7)
    {
      v46 = 0;
      v47 = 0u;
      goto LABEL_5;
    }
  }

  [(MPSGraphExecutableSerializationDescriptor *)v7 getUserSetMinimumDeploymentTarget];
LABEL_5:
  __lk = v46;
  v45 = v47;
  [MPSGraphExecutableSerializationDescriptor validateMinimumDeploymentTargetVersion:&__lk forPlatform:[(MPSGraphExecutableSerializationDescriptor *)v7 deploymentPlatform]];
  v8 = *(self + 101);
  v43 = 0;
  v9 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:v41 create:0 error:&v43];
  v39 = v9;
  v40 = v43;
  if (!v9)
  {
    v9 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      v28 = [(NSURL *)v41 absoluteString];
      v29 = [v40 localizedFailureReason];
      v33 = [v40 description];
      v34 = [v40 code];
      v30 = v28;
      v32 = v29;
      MTLReportFailure();

      v9 = 0;
    }
  }

  v10 = [v9 URLByAppendingPathComponent:{@"temporary.mpsgraphpackage", v30, v32, v33, v34}];
  v11 = [[MPSGraphPackage alloc] initWithPackageURL:v41 temporaryPackageURL:v10 append:[(MPSGraphExecutableSerializationDescriptor *)v7 append]];
  __lk.__m_ = (self + 592);
  __lk.__owns_ = 1;
  std::mutex::lock((self + 592));
  while (atomic_load(self + 176))
  {
    std::condition_variable::wait((self + 656), &__lk);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v14 = [(MPSGraphExecutableSerializationDescriptor *)v7 deploymentPlatform];
  __lk = v46;
  v45 = v47;
  v15 = [(MPSGraphPackage *)v11 getPackageKeyForPlatform:v14 andMinimumDeploymentTarget:&__lk];
  active_platform = dyld_get_active_platform();
  v17 = active_platform;
  if (active_platform == 1)
  {
    goto LABEL_11;
  }

  if ((active_platform & 0xFFFFFFFB) == 2)
  {
    v18 = 1;
  }

  else if (active_platform == 3)
  {
    v18 = 2;
  }

  else
  {
    if (active_platform != 11)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v31 = v17;
        MTLReportFailure();
      }

LABEL_11:
      v18 = 0;
      goto LABEL_19;
    }

    v18 = 3;
  }

LABEL_19:
  LOBYTE(__lk.__m_) = 0;
  BYTE8(v45) = 0;
  v19 = [(MPSGraphPackage *)v11 getPackageKeyForPlatform:v18 andMinimumDeploymentTarget:&__lk, v31];
  v20 = -[MPSGraphExecutable createMLIRLibraryWithMPSGraphPackage:packageKey:appendOptimizedModules:](self, "createMLIRLibraryWithMPSGraphPackage:packageKey:appendOptimizedModules:", v11, v15, [v15 isEqualToString:v19]);
  [(MPSGraphPackage *)v11 setMLIRLibrary:v20 withPackageKey:v15];
  v21 = [(MPSGraphPackage *)v11 getPlistData];
  v22 = [v10 URLByAppendingPathComponent:@"manifest.plist"];
  [v21 writeToURL:v22 atomically:1];

  v23 = [(MPSGraphExecutable *)self getFunctionReflectionData];
  if (v23)
  {
    v24 = [v10 URLByAppendingPathComponent:@"reflection.fb"];
    [v23 writeToURL:v24 atomically:1];
  }

  v25 = *(self + 101);
  v42 = 0;
  v26 = [v25 replaceItemAtURL:v41 withItemAtURL:v10 backupItemName:0 options:1 resultingItemURL:0 error:&v42];
  v27 = v42;
  if ((v26 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v38 = [(NSURL *)v41 absoluteString];
    v37 = [v10 absoluteString];
    v36 = [v27 localizedFailureReason];
    v35 = [v27 description];
    [v27 code];
    MTLReportFailure();
  }
}

- (void)createMetalPackageAtURL:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v31 = a4;
  v7 = *(self + 101);
  v34 = 0;
  v8 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:0 error:&v34];
  v9 = v34;
  if (!v8 && MTLReportFailureTypeEnabled())
  {
    v21 = [v6 absoluteString];
    v22 = [v9 localizedFailureReason];
    v25 = [v9 description];
    v26 = [v9 code];
    v23 = v21;
    v24 = v22;
    MTLReportFailure();
  }

  v10 = [v8 URLByAppendingPathComponent:{@"temporary.metalpackage", v23, v24, v25, v26}];
  v11 = [[MetalPackage alloc] initWithPackageURL:v6 temporaryPackageURL:v10];
  __lk.__m_ = (self + 592);
  __lk.__owns_ = 1;
  std::mutex::lock((self + 592));
  while (atomic_load(self + 176))
  {
    std::condition_variable::wait((self + 656), &__lk);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v14 = [v10 URLByAppendingPathComponent:@"/"];
  v15 = [v14 URLByAppendingPathComponent:@"library.mpsgraphpackage"];

  [(MPSGraphExecutable *)self serializeToMPSGraphPackageAtURL:v15 descriptor:v31];
  v16 = [(MetalPackage *)v11 getJsonData];
  v17 = [v10 URLByAppendingPathComponent:@"manifest.json"];
  [v16 writeToURL:v17 atomically:1];

  v18 = *(self + 101);
  v32 = 0;
  v19 = [v18 replaceItemAtURL:v6 withItemAtURL:v10 backupItemName:0 options:1 resultingItemURL:0 error:&v32];
  v20 = v32;
  if ((v19 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v30 = [v6 absoluteString];
    v29 = [v10 absoluteString];
    v28 = [v20 localizedFailureReason];
    v27 = [v20 description];
    [v20 code];
    MTLReportFailure();
  }
}

- (id)debugDescription
{
  v3 = mlir::OpPrintingFlags::OpPrintingFlags(v23);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(v3, 256);
  mlir::OpPrintingFlags::elideLargeResourceString(v23, 0);
  mlir::OpPrintingFlags::enableDebugInfo(v23, 1, 0);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v14 = 0;
  v18 = 0;
  v19 = 1;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v13 = &unk_1F5B3FB30;
  v20 = v21;
  llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
  std::mutex::lock((self + 8));
  OriginalModuleRef::get(self + 37, 0);
  v4 = *(self + 37);
  ((*v4)[3])(v4, 0);
  v12[1] = v23[1];
  v12[2] = v23[2];
  v12[0] = v23[0];
  mlir::Operation::print(v4[5], &v13, v12);
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MPSGraphExecutable;
  v6 = [(MPSGraphExecutable *)&v11 debugDescription];
  v7 = v6;
  v8 = v20;
  if (*(v20 + 23) < 0)
  {
    v8 = *v20;
  }

  v9 = [v5 stringWithFormat:@"%@ : \n\nIR: %s \n\n", v6, v8];

  std::mutex::unlock((self + 8));
  llvm::raw_ostream::~raw_ostream(&v13);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  return v9;
}

- (id)getInputShapes
{
  [(MPSGraphExecutable *)self checkSpecializationValidForSingleEntry];
  std::mutex::lock((self + 8));
  v7 = 0;
  v3 = OriginalModuleRef::get(self + 37, &v7);
  v4 = v7;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MPSGraphExecutable *)self getInputShapesForFuncOp:[(MPSGraphExecutable *)self getEntryFuncOpForModule:v3]];
  }

  std::mutex::unlock((self + 8));

  return v5;
}

- (id)getInputShapesForFunction:(id)a3
{
  v5 = 0;
  v3 = [(MPSGraphExecutable *)self getInputShapesForFunction:a3 error:&v5];

  return v3;
}

- (id)getInputShapesForFunction:(id)a3 error:(id *)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v62 = a3;
  std::mutex::lock((self + 72));
  if (*(self + 709) == 1)
  {
    v7 = (*(self + 55) + 32 * *(self + 114));
    v60 = self;
    if (*(self + 112))
    {
      __dst[0] = *(self + 55);
      __dst[1] = v7;
      llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(__dst);
    }

    v66 = vdupq_n_s64(v7);
    v58 = self + 440;
    v59 = a4;
    v9 = *(self + 55) + 32 * *(self + 114);
    v8 = v66.i64[0];
    if (v66.i64[0] != v9)
    {
      v10 = *(v66.i64[0] + 24);
      v11 = (*(**v10 + 24))(*v10, a4);
      if (*a4)
      {
LABEL_6:
        v66.i64[0] = v8 + 32;
        llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v66.i64);
      }

      v12 = v11;
      v13 = *(v10 + 1);
      v14 = v10[6];
      if (v10[4])
      {
        __dst[0] = *(v10 + 1);
        __dst[1] = (v13 + 120 * v14);
        llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(__dst);
        v15 = *__dst;
        v14 = v10[6];
        v13 = *(v10 + 1);
      }

      else
      {
        v15 = vdupq_n_s64(v13 + 120 * v14);
      }

      v65 = v15;
      v16 = v13 + 120 * v14;
      while (1)
      {
        v17 = v65.i64[0];
        if (v65.i64[0] == v16)
        {
          v8 = v66.i64[0];
          goto LABEL_6;
        }

        __dst[0] = v70;
        __dst[1] = 0x600000000;
        v18 = *(v65.i64[0] + 8);
        if (__dst != v65.i64[0] && v18 != 0)
        {
          break;
        }

LABEL_23:
        v22 = *(v17 + 64);
        v23 = *(v17 + 72);
        v24 = *(v17 + 80);
        v25 = *(v17 + 88);
        *&v26 = v24;
        *(&v26 + 1) = v25;
        *&v27 = v22;
        *(&v27 + 1) = v23;
        v71 = v27;
        v72 = v26;
        if (*(v17 + 119) < 0)
        {
          std::string::__init_copy_ctor_external(&v73, *(v17 + 96), *(v17 + 104));
        }

        else
        {
          v28 = *(v17 + 96);
          v73.__r_.__value_.__r.__words[2] = *(v17 + 112);
          *&v73.__r_.__value_.__l.__data_ = v28;
        }

        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v73;
        }

        else
        {
          v29 = v73.__r_.__value_.__r.__words[0];
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v29, v58, v59}];
        if ([v30 hasPrefix:v62] && (objc_msgSend(v30, "containsString:", @"ANE_region") & 1) == 0)
        {
          v32 = v30;
          v33 = [v30 UTF8String];
          v34 = strlen(v33);
          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v35 = v34;
          if (v34 >= 0x17)
          {
            operator new();
          }

          v64 = v34;
          if (v34)
          {
            memmove(__p, v33, v34);
          }

          *(__p + v35) = 0;
          v36 = v64;
          v37 = __p[0];
          v38 = __p[1];
          Context = mlir::Attribute::getContext((v12 + 6));
          if ((v36 & 0x80u) == 0)
          {
            v40 = v36;
          }

          else
          {
            v40 = v38;
          }

          v68 = 261;
          v41 = __p;
          if ((v36 & 0x80u) != 0)
          {
            v41 = v37;
          }

          v67[0] = v41;
          v67[1] = v40;
          v42 = mlir::StringAttr::get(Context, v67);
          v43 = mlir::SymbolTable::lookupSymbolIn(v12, v42);
          if (v43)
          {
            if (*(*(v43 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
            v44 = 0;
          }

          v4 = [(MPSGraphExecutable *)v60 getInputShapesForFuncOp:v44];
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (__dst[0] != v70)
        {
          free(__dst[0]);
        }

        if (!v31)
        {
          self = v60;
          goto LABEL_70;
        }

        v65.i64[0] += 120;
        llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(&v65);
      }

      v20 = v70;
      v21 = *(v65.i64[0] + 8);
      if (v18 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v70, *(v65.i64[0] + 8), 8);
        v21 = *(v17 + 8);
        if (!v21)
        {
LABEL_22:
          LODWORD(__dst[1]) = v18;
          goto LABEL_23;
        }

        v20 = __dst[0];
      }

      memcpy(v20, *v17, 8 * v21);
      goto LABEL_22;
    }

    self = v60;
  }

  std::mutex::lock((self + 8));
  v45 = OriginalModuleRef::get(self + 37, a4);
  if (!*a4)
  {
    v46 = v45;
    v61 = self;
    v47 = v62;
    v48 = v47;
    v49 = [v47 UTF8String];
    v50 = v49;
    if (v49)
    {
      v51 = strlen(v49);
    }

    else
    {
      v51 = 0;
    }

    v52 = mlir::Attribute::getContext((v46 + 6));
    v70[8] = 261;
    __dst[0] = v50;
    __dst[1] = v51;
    v53 = mlir::StringAttr::get(v52, __dst);
    v54 = mlir::SymbolTable::lookupSymbolIn(v46, v53);
    v55 = v54;
    if (v54)
    {
      v56 = *(*(v54 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;

      if (v56)
      {
        self = v61;
        v4 = [(MPSGraphExecutable *)v61 getInputShapesForFuncOp:v55];
        goto LABEL_69;
      }
    }

    else
    {
    }

    v4 = 0;
    self = v61;
    goto LABEL_69;
  }

  v4 = 0;
LABEL_69:
  std::mutex::unlock((self + 8));
LABEL_70:
  std::mutex::unlock((self + 72));

  return v4;
}

- (id)getInputShapesForFuncOp:(FuncOp)a3
{
  if (a3.var0)
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = (((a3.var0 + 16 * ((*(a3.var0 + 11) >> 23) & 1) + ((*(a3.var0 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3.var0 + 10));
    if (*v5 != v5)
    {
      v6 = v5[1];
      v7 = v6 ? v6 - 8 : 0;
      v8 = *(v7 + 48);
      for (i = *(v7 + 56); v8 != i; ++v8)
      {
        v10 = *v8;
        v11 = [MPSGraphShapedType alloc];
        v12 = getMPSShapeFromMLIR(v10);
        v13 = [(MPSGraphShapedType *)v11 initWithShape:v12 dataType:getMPSDataType((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8))];
        [v4 addObject:v13];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)inputNamesForFunction:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 8));
  v18 = 0;
  v5 = OriginalModuleRef::get(self + 37, &v18);
  v6 = v18;
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = v4;
  v10 = [v9 UTF8String];
  v11 = v10;
  if (v10)
  {
    v12 = strlen(v10);
  }

  else
  {
    v12 = 0;
  }

  Context = mlir::Attribute::getContext((v5 + 6));
  v20 = 261;
  v19[0] = v11;
  v19[1] = v12;
  v14 = mlir::StringAttr::get(Context, v19);
  v15 = mlir::SymbolTable::lookupSymbolIn(v5, v14);
  v16 = v15;
  if (!v15)
  {

    goto LABEL_2;
  }

  v17 = *(*(v15 + 6) + 16);

  if (v17 != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_3;
  }

  v7 = [(MPSGraphExecutable *)self inputNamesForFuncOp:v16];
LABEL_3:

  std::mutex::unlock((self + 8));

  return v7;
}

- (id)inputNamesForFuncOp:(FuncOp)a3
{
  var0 = a3.var0;
  v26 = a3.var0;
  if (a3.var0)
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v25 = *&var0[4 * ((var0[11] >> 23) & 1) + 16];
    if (v25)
    {
      __dst[0] = mlir::func::FuncOp::getFunctionType(&v26);
      mlir::FunctionType::getInputs(__dst);
      v6 = v5;
      mlir::ArrayAttr::getValue(&v25);
      if (v7 != v6)
      {
LABEL_32:
        var0 = 0;
        goto LABEL_33;
      }

      v20 = v6;
      if (v6)
      {
        v8 = 0;
        do
        {
          v9 = *(mlir::ArrayAttr::getValue(&v25) + 8 * v8);
          if (!v9)
          {
            goto LABEL_32;
          }

          if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v9 = 0;
          }

          v24 = v9;
          if (!v9)
          {
            goto LABEL_32;
          }

          Value = mlir::AffineMapAttr::getValue(&v24);
          v11 = mlir::DictionaryAttr::end(&v24);
          while (Value != v11)
          {
            v12 = *(Value + 8);
            if (v12 && *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v12 = 0;
            }

            v21 = v12;
            AttrData = mlir::OpaqueAttr::getAttrData(&v21);
            if (AttrData)
            {
              v15 = v13;
              if (v13 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v13 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v23) = v13;
              if (v13)
              {
                memmove(__dst, AttrData, v13);
              }

              *(__dst + v15) = 0;
            }

            else
            {
              __dst[0] = 0;
              __dst[1] = 0;
              v23 = 0;
            }

            v16 = objc_alloc(MEMORY[0x1E696AEC0]);
            if (v23 >= 0)
            {
              v17 = __dst;
            }

            else
            {
              v17 = __dst[0];
            }

            v18 = [v16 initWithUTF8String:{v17, v20}];
            [v4 addObject:v18];

            if (SHIBYTE(v23) < 0)
            {
              operator delete(__dst[0]);
            }

            Value += 16;
          }
        }

        while (++v8 != v20);
      }
    }

    var0 = v4;
LABEL_33:
  }

  return var0;
}

- (id)outputNamesForFunction:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 8));
  v18 = 0;
  v5 = OriginalModuleRef::get(self + 37, &v18);
  v6 = v18;
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = v4;
  v10 = [v9 UTF8String];
  v11 = v10;
  if (v10)
  {
    v12 = strlen(v10);
  }

  else
  {
    v12 = 0;
  }

  Context = mlir::Attribute::getContext((v5 + 6));
  v20 = 261;
  v19[0] = v11;
  v19[1] = v12;
  v14 = mlir::StringAttr::get(Context, v19);
  v15 = mlir::SymbolTable::lookupSymbolIn(v5, v14);
  v16 = v15;
  if (!v15)
  {

    goto LABEL_2;
  }

  v17 = *(*(v15 + 6) + 16);

  if (v17 != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_3;
  }

  v7 = [(MPSGraphExecutable *)self outputNamesForFuncOp:v16];
LABEL_3:

  std::mutex::unlock((self + 8));

  return v7;
}

- (id)outputNamesForFuncOp:(FuncOp)a3
{
  var0 = a3.var0;
  v26 = a3.var0;
  if (a3.var0)
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v25 = *&var0[4 * ((var0[11] >> 23) & 1) + 20];
    if (v25)
    {
      __dst[0] = mlir::func::FuncOp::getFunctionType(&v26);
      mlir::FunctionType::getResults(__dst);
      v6 = v5;
      mlir::ArrayAttr::getValue(&v25);
      if (v7 != v6)
      {
LABEL_32:
        var0 = 0;
        goto LABEL_33;
      }

      v20 = v6;
      if (v6)
      {
        v8 = 0;
        do
        {
          v9 = *(mlir::ArrayAttr::getValue(&v25) + 8 * v8);
          if (!v9)
          {
            goto LABEL_32;
          }

          if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v9 = 0;
          }

          v24 = v9;
          if (!v9)
          {
            goto LABEL_32;
          }

          Value = mlir::AffineMapAttr::getValue(&v24);
          v11 = mlir::DictionaryAttr::end(&v24);
          while (Value != v11)
          {
            v12 = *(Value + 8);
            if (v12 && *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v12 = 0;
            }

            v21 = v12;
            AttrData = mlir::OpaqueAttr::getAttrData(&v21);
            if (AttrData)
            {
              v15 = v13;
              if (v13 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v13 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v23) = v13;
              if (v13)
              {
                memmove(__dst, AttrData, v13);
              }

              *(__dst + v15) = 0;
            }

            else
            {
              __dst[0] = 0;
              __dst[1] = 0;
              v23 = 0;
            }

            v16 = objc_alloc(MEMORY[0x1E696AEC0]);
            if (v23 >= 0)
            {
              v17 = __dst;
            }

            else
            {
              v17 = __dst[0];
            }

            v18 = [v16 initWithUTF8String:{v17, v20}];
            [v4 addObject:v18];

            if (SHIBYTE(v23) < 0)
            {
              operator delete(__dst[0]);
            }

            Value += 16;
          }
        }

        while (++v8 != v20);
      }
    }

    var0 = v4;
LABEL_33:
  }

  return var0;
}

- (id)getStateInputPositionsWithEntryFunctionName:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49 = v4;
  std::mutex::lock((self + 72));
  if (*(self + 709) != 1)
  {
    goto LABEL_66;
  }

  v5 = (*(self + 55) + 32 * *(self + 114));
  v48 = self;
  if (*(self + 112))
  {
    __dst[0] = *(self + 55);
    __dst[1] = v5;
    llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(__dst);
  }

  v54 = vdupq_n_s64(v5);
  v47 = self + 440;
  v6 = v54.i64[0];
  if (v54.i64[0] == *(self + 55) + 32 * *(self + 114))
  {
LABEL_66:
    std::mutex::lock((self + 8));
    v45 = OriginalModuleRef::get(self + 37, 0);
    if (v45)
    {
      v50 = getStateArray(v45, v4);
    }

    else
    {
      v50 = 0;
    }

    std::mutex::unlock((self + 8));
    goto LABEL_70;
  }

  v7 = *(v54.i64[0] + 24);
  v8 = (*(**v7 + 24))(*v7, 0);
  if (!v8)
  {
LABEL_6:
    v54.i64[0] = v6 + 32;
    llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v54.i64);
  }

  v9 = *(v7 + 1);
  v10 = v7[6];
  if (v7[4])
  {
    __dst[0] = *(v7 + 1);
    __dst[1] = (v9 + 120 * v10);
    llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(__dst);
    v11 = *__dst;
    v10 = v7[6];
    v9 = *(v7 + 1);
  }

  else
  {
    v11 = vdupq_n_s64(v9 + 120 * v10);
  }

  v53 = v11;
  v12 = v9 + 120 * v10;
  while (1)
  {
    v13 = v53.i64[0];
    if (v53.i64[0] == v12)
    {
      v6 = v54.i64[0];
      goto LABEL_6;
    }

    __dst[0] = v58;
    __dst[1] = 0x600000000;
    v14 = *(v53.i64[0] + 8);
    if (__dst != v53.i64[0] && v14 != 0)
    {
      v16 = v58;
      v17 = *(v53.i64[0] + 8);
      if (v14 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v58, *(v53.i64[0] + 8), 8);
        v17 = *(v13 + 8);
        if (!v17)
        {
LABEL_22:
          LODWORD(__dst[1]) = v14;
          goto LABEL_23;
        }

        v16 = __dst[0];
      }

      memcpy(v16, *v13, 8 * v17);
      goto LABEL_22;
    }

LABEL_23:
    v18 = *(v13 + 64);
    v19 = *(v13 + 72);
    v20 = *(v13 + 80);
    v21 = *(v13 + 88);
    *&v22 = v20;
    *(&v22 + 1) = v21;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v59 = v23;
    v60 = v22;
    if (*(v13 + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v61, *(v13 + 96), *(v13 + 104));
    }

    else
    {
      v24 = *(v13 + 96);
      v61.__r_.__value_.__r.__words[2] = *(v13 + 112);
      *&v61.__r_.__value_.__l.__data_ = v24;
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v61;
    }

    else
    {
      v25 = v61.__r_.__value_.__r.__words[0];
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v25, v47}];
    if (![v26 hasPrefix:v4])
    {
      v31 = 1;
      goto LABEL_59;
    }

    v27 = v26;
    v28 = [v26 UTF8String];
    v29 = strlen(v28);
    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v30 = v29;
    if (v29 >= 0x17)
    {
      operator new();
    }

    v52 = v29;
    if (v29)
    {
      memmove(__p, v28, v29);
    }

    *(__p + v30) = 0;
    v32 = v52;
    v33 = __p[0];
    v34 = __p[1];
    Context = mlir::Attribute::getContext((v8 + 6));
    if ((v32 & 0x80u) == 0)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    v56 = 261;
    v37 = __p;
    if ((v32 & 0x80u) != 0)
    {
      v37 = v33;
    }

    v55[0] = v37;
    v55[1] = v36;
    v38 = mlir::StringAttr::get(Context, v55);
    v39 = mlir::SymbolTable::lookupSymbolIn(v8, v38);
    v4 = v49;
    if (v39)
    {
      if (*(*(v39 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      if (v52 < 0)
      {
LABEL_50:
        operator delete(__p[0]);
        if (!v40)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v40 = 0;
      if (v52 < 0)
      {
        goto LABEL_50;
      }
    }

    if (!v40)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (*(v40 + 47) && (v64.var0 = "mps.stateInputIndices", v64.var1 = 21, InherentAttr = mlir::Operation::getInherentAttr(v40, v64), (v42 & 1) != 0))
    {
      if (!InherentAttr)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v65.var0 = "mps.stateInputIndices";
      v65.var1 = 21;
      if ((mlir::DictionaryAttr::contains((v40 + 56), v65) & 1) == 0)
      {
LABEL_58:
        v31 = 0;
        v50 = 0;
        goto LABEL_59;
      }
    }

LABEL_54:
    v43 = getStateArray(v8, v26);
    v31 = v43 == 0;
    v44 = v50;
    if (v43)
    {
      v44 = v43;
    }

    v50 = v44;
LABEL_59:

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (__dst[0] != v58)
    {
      free(__dst[0]);
    }

    if (!v31)
    {
      break;
    }

    v53.i64[0] += 120;
    llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(&v53);
  }

  self = v48;
LABEL_70:
  std::mutex::unlock((self + 72));

  return v50;
}

- (id)functionNames
{
  std::mutex::lock((self + 8));
  v3 = OriginalModuleRef::get(self + 37, 0);
  if (v3)
  {
    v5 = &v6;
    v6 = [MEMORY[0x1E695E0F0] mutableCopy];
    v7 = &v5;
    mlir::detail::walk<mlir::ForwardIterator>(v3, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ35__MPSGraphExecutable_functionNames_E4__34NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v7, 1);
    v3 = v6;
  }

  std::mutex::unlock((self + 8));

  return v3;
}

- (id)getOutputShapes
{
  [(MPSGraphExecutable *)self checkSpecializationValidForSingleEntry];
  std::mutex::lock((self + 8));
  v7 = 0;
  v3 = OriginalModuleRef::get(self + 37, &v7);
  v4 = v7;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MPSGraphExecutable *)self getOutputShapesForFuncOp:[(MPSGraphExecutable *)self getEntryFuncOpForModule:v3]];
  }

  std::mutex::unlock((self + 8));

  return v5;
}

- (id)getOutputShapesForFunction:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 8));
  v18 = 0;
  v5 = OriginalModuleRef::get(self + 37, &v18);
  v6 = v18;
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = v4;
  v10 = [v9 UTF8String];
  v11 = v10;
  if (v10)
  {
    v12 = strlen(v10);
  }

  else
  {
    v12 = 0;
  }

  Context = mlir::Attribute::getContext((v5 + 6));
  v20 = 261;
  v19[0] = v11;
  v19[1] = v12;
  v14 = mlir::StringAttr::get(Context, v19);
  v15 = mlir::SymbolTable::lookupSymbolIn(v5, v14);
  v16 = v15;
  if (!v15)
  {

    goto LABEL_2;
  }

  v17 = *(*(v15 + 6) + 16);

  if (v17 != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_3;
  }

  v7 = [(MPSGraphExecutable *)self getOutputShapesForFuncOp:v16];
LABEL_3:

  std::mutex::unlock((self + 8));

  return v7;
}

- (id)getOutputShapesForFuncOp:(FuncOp)a3
{
  var0 = a3.var0;
  if (a3.var0)
  {
    v3 = [MEMORY[0x1E695E0F0] mutableCopy];
    FunctionType = mlir::func::FuncOp::getFunctionType(&var0);
    Results = mlir::FunctionType::getResults(&FunctionType);
    if (v5)
    {
      v6 = Results;
      v7 = 8 * v5;
      do
      {
        v8 = *v6;
        v9 = [MPSGraphShapedType alloc];
        v10 = getMPSShapeFromMLIR(v8);
        v11 = [(MPSGraphShapedType *)v9 initWithShape:v10 dataType:getMPSDataType(v8)];
        [v3 addObject:v11];

        ++v6;
        v7 -= 8;
      }

      while (v7);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getTargetShapesForDevice:(id)a3 inputsArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPSGraphExecutable *)self getDefaultEntryPointWithShapes:v7];
  [(MPSGraphExecutable *)self specializeWithDevice:v6 shapedEntryPoint:v8 compilationDescriptor:0];

  v9.var0 = [(MPSGraphExecutable *)self returnOpForFunctionInModule:(*(*v16 + 24))(v16, 0)];
  if ((*(v9.var0 + 46) & 0x80) != 0)
  {
    v10 = *(v9.var0 + 17);
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  v12 = 0;
  for (i = 24; (*(v9.var0 + 46) & 0x80) != 0; i += 32)
  {
    if (v12 >= *(v9.var0 + 17))
    {
      break;
    }

    v14 = getMPSGraphShapedType((*(*(*(v9.var0 + 9) + i) + 8) & 0xFFFFFFFFFFFFFFF8));
    [v11 addObject:v14];

    ++v12;
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

- (id)getTensorDataArraysWithDevice:(id)a3 feedsDictionary:(id)a4 resultsDictionary:(id)a5 inputsArray:(id)a6 resultsArray:(id)a7 executableExecutionDescriptor:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v41 = a7;
  v18 = a8;
  v19 = *(self + 91);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __141__MPSGraphExecutable_getTensorDataArraysWithDevice_feedsDictionary_resultsDictionary_inputsArray_resultsArray_executableExecutionDescriptor___block_invoke;
  v45[3] = &unk_1E86D4E20;
  v20 = v17;
  v46 = v20;
  v47 = v15;
  v39 = v16;
  v40 = v47;
  [v19 enumerateObjectsUsingBlock:v45];
  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v37 = v18;
    v38 = v14;
    v22 = [MPSGraphExecutableShapedEntryPoint alloc];
    v23 = [v18 entryFunctionName];
    v24 = [(MPSGraphExecutableShapedEntryPoint *)v22 initWithEntryFunctionName:v23 inputTypes:v20];

    v25 = v24;
    v26 = [(MPSGraphExecutable *)self allocateTensorDataTargetsForDevice:v14 shapedEntryPoint:v24];
    v27 = [MEMORY[0x1E695DF90] dictionary];
    for (i = 0; [*(self + 89) count] > i; ++i)
    {
      v29 = [v26 objectAtIndexedSubscript:i];
      v30 = [*(self + 89) objectAtIndexedSubscript:i];
      [v27 setObject:v29 forKey:v30];

      v24 = v25;
    }

    v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v27];

    v18 = v37;
    v14 = v38;
  }

  v31 = *(self + 89);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __141__MPSGraphExecutable_getTensorDataArraysWithDevice_feedsDictionary_resultsDictionary_inputsArray_resultsArray_executableExecutionDescriptor___block_invoke_2;
  v42[3] = &unk_1E86D4E20;
  v32 = v41;
  v43 = v32;
  v33 = v21;
  v44 = v33;
  [v31 enumerateObjectsUsingBlock:v42];
  v34 = v44;
  v35 = v33;

  return v33;
}

void __141__MPSGraphExecutable_getTensorDataArraysWithDevice_feedsDictionary_resultsDictionary_inputsArray_resultsArray_executableExecutionDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v2 addObject:?];
}

void __141__MPSGraphExecutable_getTensorDataArraysWithDevice_feedsDictionary_resultsDictionary_inputsArray_resultsArray_executableExecutionDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v2 addObject:?];
}

- (id)runWithMTLCommandQueue:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5
{
  v5 = [(MPSGraphExecutable *)self runWithMTLCommandQueue:a3 inputsArray:a4 resultsArray:a5 executionDescriptor:0];

  return v5;
}

- (id)runWithDevice:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  [v15 setWaitUntilCompleted:1];
  v17 = [(MPSGraphExecutable *)self runAsyncWithDevice:v10 inputsArray:v11 resultsArray:v12 executionDescriptor:v16];

  return v17;
}

- (id)runAsyncWithDevice:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  if (!v13)
  {
    v13 = objc_opt_new();
  }

  v15 = [(MPSGraphExecutable *)self runInternalWithDevice:v10 commandBuffer:0 feeds:v11 results:v12 executableExecutionDescriptor:v13 mpsGraphOwnedCommandBuffer:1];
  objc_autoreleasePoolPop(v14);

  return v15;
}

- (NSArray)runWithMTLCommandQueue:(id)commandQueue inputsArray:(NSArray *)inputsArray resultsArray:(NSArray *)resultsArray executionDescriptor:(MPSGraphExecutableExecutionDescriptor *)executionDescriptor
{
  v10 = commandQueue;
  v11 = inputsArray;
  v12 = resultsArray;
  v13 = executionDescriptor;
  v14 = v13;
  if (v13)
  {
    v15 = [(MPSGraphExecutableExecutionDescriptor *)v13 copy];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  [v15 setWaitUntilCompleted:1];
  v17 = [(MPSGraphExecutable *)self runAsyncWithMTLCommandQueue:v10 inputsArray:v11 resultsArray:v12 executionDescriptor:v16];

  return v17;
}

- (NSArray)runAsyncWithMTLCommandQueue:(id)commandQueue inputsArray:(NSArray *)inputsArray resultsArray:(NSArray *)resultsArray executionDescriptor:(MPSGraphExecutableExecutionDescriptor *)executionDescriptor
{
  v10 = inputsArray;
  v11 = resultsArray;
  v12 = executionDescriptor;
  v13 = objc_autoreleasePoolPush();
  v14 = [MEMORY[0x1E6974450] commandBufferFromCommandQueue:commandQueue];
  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v15 = [v14 device];
  v16 = [MPSGraphDevice deviceWithMTLDevice:v15];

  v17 = [(MPSGraphExecutable *)self runInternalWithDevice:v16 commandBuffer:v14 feeds:v10 results:v11 executableExecutionDescriptor:v12 mpsGraphOwnedCommandBuffer:1];

  objc_autoreleasePoolPop(v13);

  return v17;
}

- (id)runAsyncWithCommandQueue:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6
{
  v6 = [(MPSGraphExecutable *)self runAsyncWithMTLCommandQueue:a3 inputsArray:a4 resultsArray:a5 executionDescriptor:a6];

  return v6;
}

- (NSArray)encodeToCommandBuffer:(MPSCommandBuffer *)commandBuffer inputsArray:(NSArray *)inputsArray resultsArray:(NSArray *)resultsArray executionDescriptor:(MPSGraphExecutableExecutionDescriptor *)executionDescriptor
{
  v6 = [(MPSGraphExecutable *)self encodeWithMPSCommandBuffer:commandBuffer inputsArray:inputsArray resultsArray:resultsArray executionDescriptor:executionDescriptor];

  return v6;
}

- (id)encodeWithMPSCommandBuffer:(id)a3 inputsArray:(id)a4 resultsArray:(id)a5 executionDescriptor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = [v10 device];
  v16 = [MPSGraphDevice deviceWithMTLDevice:v15];

  v17 = [(MPSGraphExecutable *)self runInternalWithDevice:v16 commandBuffer:v10 feeds:v11 results:v12 executableExecutionDescriptor:v14 mpsGraphOwnedCommandBuffer:0];

  return v17;
}

- (void)getNewRuntimeForDevice:(id)a3 specializedModule:(void *)a4 shapedEntryPoints:(id)a5 compilationDescriptor:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v10 = a5;
  v11 = a6;
  (*(**a4 + 16))();
  if ((*(**a4 + 16))() != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  (*(**a4 + 24))(*a4, 0);
  std::mutex::lock((self + 136));
  v12 = (self + 416);
  v13 = *(self + 108);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = *v12;
  v15 = (v13 - 1) & ((a4 >> 4) ^ (a4 >> 9));
  v16 = *(*v12 + 16 * v15);
  if (v16 != a4)
  {
    v22 = 1;
    while (v16 != -4096)
    {
      v23 = v15 + v22++;
      v15 = v23 & (v13 - 1);
      v16 = *(v14 + 16 * v15);
      if (v16 == a4)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    operator new();
  }

LABEL_4:
  if (v15 == v13)
  {
    goto LABEL_5;
  }

  v17 = *(v14 + 16 * v15 + 8);
  std::mutex::unlock((self + 136));
  if (v17)
  {
    if (byte_1EED2BC97 == 1)
    {
LABEL_8:
      v18 = byte_1EED2BC96;
      goto LABEL_15;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = 0;
    if (byte_1EED2BC97 == 1)
    {
      goto LABEL_8;
    }
  }

  v18 = [v11 compilerOptions] & 0x80;
LABEL_15:
  LOBYTE(v28) = v18 != 0;
  [v11 compilerOptions];
  [v11 compilerOptions];
  if ((byte_1EED2BCE2 & 1) == 0)
  {
    [v11 compilerOptions];
  }

  __lk.__m_ = v17;
  __lk.__owns_ = 1;
  std::mutex::lock(v17);
  while (1)
  {
    v19 = atomic_load((v17 + 112));
    if ((v19 & 1) == 0)
    {
      break;
    }

    std::condition_variable::wait((v17 + 64), &__lk);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v20 = *(v17 + 120);
  if (!v20 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(MPSGraphExecutable *)self dumpCompiledProducts];

  return v20;
}

- (id)allocateTensorDataTargetsForDevice:(id)a3 shapedEntryPoint:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  [(MPSGraphExecutable *)self specializeWithDevice:v6 shapedEntryPoint:v7 compilationDescriptor:0];
  v34[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v10 = [(MPSGraphExecutable *)self getNewRuntimeForDevice:v6 specializedModule:v28 shapedEntryPoints:v9 compilationDescriptor:0];

  v11 = (*(*v29 + 24))(v29, 0);
  v12 = v31;
  v13 = __p[0];
  v14 = __p[1];
  Context = mlir::Attribute::getContext((v11 + 6));
  v16 = __p;
  if ((v12 & 0x80u) == 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  v33 = 261;
  if ((v12 & 0x80u) != 0)
  {
    v16 = v13;
  }

  v32[0] = v16;
  v32[1] = v17;
  v18 = mlir::StringAttr::get(Context, v32);
  v19 = mlir::SymbolTable::lookupSymbolIn(v11, v18);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(((v21 + 16 * ((*(v21 + 11) >> 23) & 1) + ((*(v21 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 10) + 8);
  if (v22)
  {
    v23 = (v22 - 8);
  }

  else
  {
    v23 = 0;
  }

  Terminator = mlir::Block::getTerminator(v23, v20);
  v25 = Terminator;
  if (!Terminator || *(*(Terminator + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = 0;
  }

  v26 = (*(*v10 + 40))(v10, v25);

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  return v26;
}

- (void)applyEntryPointToSymbolAndFileNameMap:(id)a3 device:(id)a4 compilationDescriptor:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 perEntryPointMap];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v8 perEntryPointMap];
    v14 = [v13 allKeys];

    v23 = 0;
    [(MPSGraphExecutable *)self specializedModuleWithDevice:v9 shapedEntryPoints:v14 compilationDescriptor:v10 error:&v23];
    v15 = v23;
    v16 = [(MPSGraphExecutable *)self getNewRuntimeForDevice:v9 specializedModule:*v24 shapedEntryPoints:v14 compilationDescriptor:0];
    createToPerEntryFuncOpSymbolMap(&v21, v8, v14, v24, v25);
    RuntimeSpecializationsCache::getOrCreateSpecialization(v16[85], v8);
    v17 = v21;
    if (v22)
    {
      v18 = 16 * v22;
      v19 = (v21 + 8);
      do
      {
        if ((*(v19 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
      v17 = v21;
      v20 = (16 * v22);
    }

    else
    {
      v20 = 0;
    }

    llvm::deallocate_buffer(v17, v20);
  }
}

- (void)unloadEntryPointToSymbolAndFileNameMap:(id)a3 device:(id)a4 compilationDescriptor:(id)a5
{
  v22[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)v8 perEntryPointMap];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)v8 perEntryPointMap];
    v14 = [v13 allKeys];

    v19 = 0;
    [(MPSGraphExecutable *)self specializedModuleWithDevice:v9 shapedEntryPoints:v14 compilationDescriptor:v10 error:&v19];
    v15 = v19;
    RuntimeSpecializationsCache::removeSpecialization(*([(MPSGraphExecutable *)self getNewRuntimeForDevice:v9 specializedModule:*v20 shapedEntryPoints:v14 compilationDescriptor:0]+ 680), v8);
    v16 = v20;
    if (v21)
    {
      v17 = (v20 + 40 * v21 - 24);
      v18 = -40 * v21;
      do
      {
        if (*(v17 + 23) < 0)
        {
          operator delete(*v17);
        }

        v17 -= 5;
        v18 += 40;
      }

      while (v18);
      v16 = v20;
    }

    if (v16 != v22)
    {
      free(v16);
    }
  }
}

- (id)runInternalWithDevice:(id)a3 commandBuffer:(id)a4 feedsDictionary:(id)a5 resultsDictionary:(id)a6 executableExecutionDescriptor:(id)a7 mpsGraphOwnedCommandBuffer:(BOOL)a8
{
  v8 = a8;
  v52 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v32 = a5;
  v33 = a6;
  v37 = v14;
  v38 = a7;
  v35 = v15;
  v16 = [v14 type];
  v17 = [v15 commandBuffer];
  v18 = [v17 device];
  v46 = 0x2B2B07EC2B2B07E8;
  v47 = self;
  v48 = v16;
  v49 = [v18 registryID];
  v50 = self;
  kdebug_trace();

  v36 = [MEMORY[0x1E695DF70] array];
  v34 = [MEMORY[0x1E695DF70] array];
  v31 = [MPSGraphExecutable getTensorDataArraysWithDevice:"getTensorDataArraysWithDevice:feedsDictionary:resultsDictionary:inputsArray:resultsArray:executableExecutionDescriptor:" feedsDictionary:v14 resultsDictionary:v32 inputsArray:v33 resultsArray:v36 executableExecutionDescriptor:?];
  if (![v14 type])
  {
    if (!v15)
    {
      v19 = [v14 metalDevice];
      v20 = [v19 newCommandQueue];

      v35 = [MEMORY[0x1E6974450] commandBufferFromCommandQueue:v20];

      v8 = 1;
    }

    v21 = [v38 scheduledGraphHandler];

    if (v21)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __149__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feedsDictionary_resultsDictionary_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke;
      v43[3] = &unk_1E86D5190;
      v44 = v38;
      v45 = v31;
      [v35 addScheduledHandler:v43];
    }
  }

  v22 = [(MPSGraphExecutable *)self runInternalWithDevice:v14 commandBuffer:v35 feeds:v36 results:v34 executableExecutionDescriptor:v38 mpsGraphOwnedCommandBuffer:v8];
  v23 = [MEMORY[0x1E695E0F8] mutableCopy];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = v31;
  v25 = [v24 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v25)
  {
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        v29 = [v22 objectAtIndexedSubscript:{objc_msgSend(*(self + 89), "indexOfObject:", v28)}];
        [v23 setObject:v29 forKeyedSubscript:v28];
      }

      v25 = [v24 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v25);
  }

  kdebug_trace();

  return v23;
}

void __149__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feedsDictionary_resultsDictionary_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) scheduledGraphHandler];
  v4 = *(a1 + 40);
  v5 = [v6 error];
  (v3)[2](v3, v4, v5);
}

- (void)dumpArrayOfTensorData:(id)a3 basePath:(id)a4 separator:(id)a5 invocationCount:(unint64_t)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = a4;
  v9 = a5;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = v10;
    v47 = *v67;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v66 + 1) + 8 * i);
        v15 = v49;
        v16 = [v49 UTF8String];
        v17 = strlen(v16);
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v18 = v17;
        if (v17 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v17;
        if (v17)
        {
          memmove(&__dst, v16, v17);
        }

        __dst.__r_.__value_.__s.__data_[v18] = 0;
        v58 = 4;
        strcpy(__s, "/it_");
        v19 = std::string::append(&__dst, __s, 4uLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v56, a6);
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v56;
        }

        else
        {
          v21 = v56.__r_.__value_.__r.__words[0];
        }

        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v56.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v60, v21, size);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = v9;
        v26 = [v9 UTF8String];
        v27 = strlen(v26);
        if (v27 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v28 = v27;
        if (v27 >= 0x17)
        {
          operator new();
        }

        v55 = v27;
        if (v27)
        {
          memmove(v54, v26, v27);
        }

        *(v54 + v28) = 0;
        if ((v55 & 0x80u) == 0)
        {
          v29 = v54;
        }

        else
        {
          v29 = v54[0];
        }

        if ((v55 & 0x80u) == 0)
        {
          v30 = v55;
        }

        else
        {
          v30 = v54[1];
        }

        v31 = std::string::append(&v61, v29, v30);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v53, v11);
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v53;
        }

        else
        {
          v33 = v53.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v53.__r_.__value_.__l.__size_;
        }

        v35 = std::string::append(&v62, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v63.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v63.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v52 = 4;
        strcpy(v51, ".bin");
        v37 = std::string::append(&v63, v51, 4uLL);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v65 = v37->__r_.__value_.__r.__words[2];
        __p = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (v52 < 0)
        {
          operator delete(*v51);
          if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_39:
            if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_57;
          }
        }

        else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        operator delete(v63.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_40:
          if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_58;
        }

LABEL_57:
        operator delete(v53.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_41:
          if ((v55 & 0x80000000) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_59;
        }

LABEL_58:
        operator delete(v62.__r_.__value_.__l.__data_);
        if ((v55 & 0x80000000) == 0)
        {
LABEL_42:
          if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_60;
        }

LABEL_59:
        operator delete(v54[0]);
        if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_43:
          if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_61;
        }

LABEL_60:
        operator delete(v61.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_44:
          if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_62;
        }

LABEL_61:
        operator delete(v56.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_45:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_63;
        }

LABEL_62:
        operator delete(v60.__r_.__value_.__l.__data_);
        if ((v58 & 0x80000000) == 0)
        {
LABEL_46:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_64;
          }

          goto LABEL_47;
        }

LABEL_63:
        operator delete(*__s);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_64:
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

LABEL_47:
        v39 = [v14 mpsndarray];
        v40 = 0;
        ++v11;
        v41 = [v14 dataType] >> 3;
        while (v40 < [v39 numberOfDimensions])
        {
          v41 *= [v39 lengthOfDimension:v40++];
        }

        v42 = [MEMORY[0x1E695DF88] dataWithLength:v41];
        v43 = v42;
        [v39 readBytes:objc_msgSend(v42 strideBytes:{"mutableBytes"), 0}];
        if (v65 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
        v50 = 0;
        [v42 writeToFile:v45 options:1 error:&v50];

        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v12);
  }
}

- (id)runInternalWithDevice:(id)a3 commandBuffer:(id)a4 feeds:(id)a5 results:(id)a6 executableExecutionDescriptor:(id)a7 mpsGraphOwnedCommandBuffer:(BOOL)a8
{
  v105 = a8;
  v162[1] = *MEMORY[0x1E69E9840];
  v111 = a3;
  v108 = a4;
  v109 = a5;
  v13 = a6;
  v14 = a7;
  v114 = v14;
  if (*(self + 100))
  {
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v153 = 0;
    v16 = [v15 createDirectoryAtPath:@"/tmp/feeds" withIntermediateDirectories:1 attributes:0 error:&v153];
    v17 = v153;
    v18 = v17;
    if (v16)
    {
      ++qword_1ECE75450;
      [(MPSGraphExecutable *)self dumpArrayOfTensorData:v109 basePath:@"/tmp/feeds" separator:@"_feed_" invocationCount:?];
    }

    else
    {
      NSLog(&cfstr_FailedToCreate_13.isa, @"/tmp/feeds", v17);
    }

    v14 = v114;
  }

  if (v14[5])
  {
    v19 = [[MPSGraphInternalCommandBuffer alloc] initWithMPSCommandBuffer:v108 executableExecutionDescriptor:v114];
    if (v19)
    {
LABEL_8:
      [(MPSGraphInternalCommandBuffer *)v19 mpsCommandBufferDescriptor];
      v101 = v155;
      goto LABEL_11;
    }
  }

  else
  {
    v19 = v108;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  v101 = 0;
LABEL_11:
  v20 = [v111 type];
  v21 = [(MPSCommandBuffer *)v19 commandBuffer];
  v22 = [v21 device];
  v152[1] = 0x2B2B07EC2B2B07E8;
  v152[2] = self;
  v152[3] = v20;
  v152[4] = [v22 registryID];
  v152[5] = self;
  kdebug_trace();

  v23 = [v114 enableProfilingOpNames];
  *(self + 833) = (v23 | byte_1EED2BCA0) & 1;
  *(self + 834) = [v114 briefProfilingOpNames];
  if (*(self + 841))
  {
    v24 = 1;
  }

  else
  {
    v24 = [v114 generateRuntimeExecutionReport];
  }

  *(self + 841) = v24;
  *(self + 835) = [v114 simulateANECompileFailure];
  *(self + 836) = [v114 simulateANELoadModelFailure];
  *(self + 847) = [v114 disableANECaching];
  *(self + 848) = [v114 disableANEFallback];
  v25 = [MPSGraphExecutableShapedEntryPoint alloc];
  v26 = [v114 entryFunctionName];
  v110 = [(MPSGraphExecutableShapedEntryPoint *)v25 initWithEntryFunctionName:v26 inputTypes:v109];

  if (v13)
  {
    v112 = v13;
  }

  else
  {
    v112 = [(MPSGraphExecutable *)self allocateTensorDataTargetsForDevice:v111 shapedEntryPoint:v110];

    if (!v112)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v112 = 0;
    }
  }

  v152[0] = 0;
  v151 = 0;
  v27 = [v114 perEntryPointToSymbolAndFileNameMap];
  v28 = v27 == 0;

  if (v28)
  {
    [(MPSGraphExecutable *)self specializeWithDevice:v111 shapedEntryPoint:v110 compilationDescriptor:0];
    v32 = v111;

    v162[0] = v110;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:1];
    v152[0] = [(MPSGraphExecutable *)self getNewRuntimeForDevice:v32 specializedModule:v147 shapedEntryPoints:v33 compilationDescriptor:0];

    v34 = (*(*v148 + 24))(v148, 0);
    v35 = v150;
    v36 = __p[0];
    v37 = __p[1];
    Context = mlir::Attribute::getContext((v34 + 6));
    v39 = __p;
    if ((v35 & 0x80u) == 0)
    {
      v40 = v35;
    }

    else
    {
      v40 = v37;
    }

    LOWORD(v157) = 261;
    if ((v35 & 0x80u) != 0)
    {
      v39 = v36;
    }

    __lk.__m_ = v39;
    *&__lk.__owns_ = v40;
    v41 = mlir::StringAttr::get(Context, &__lk);
    v42 = mlir::SymbolTable::lookupSymbolIn(v34, v41);
    if (v42)
    {
      if (*(*(v42 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }

      v151 = v43;
      if ((v150 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v151 = 0;
      if ((v150 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    operator delete(__p[0]);
LABEL_31:
    v102 = 0;
    goto LABEL_32;
  }

  [(MPSGraphExecutableShapedEntryPoint *)v110 entryFunctionName];

  v29 = [(MPSGraphExecutableShapedEntryPoint *)v110 entryFunctionName];
  v30 = v29 == 0;

  if (v30 && MTLReportFailureTypeEnabled())
  {
    v99 = [(MPSGraphExecutableShapedEntryPoint *)v110 entryFunctionName];
    MTLReportFailure();
  }

  v31 = [v114 perEntryPointToSymbolAndFileNameMap];
  v102 = [(MPSGraphExecutable *)self getRuntimeSpecializationAndEntryFunction:v111 shapedEntryPoint:v110 perEntryPointToSymbolAndFileNameMap:v31 entryFuncOp:&v151 runtime:v152];

LABEL_32:
  __lk.__m_ = (self + 592);
  __lk.__owns_ = 1;
  std::mutex::lock((self + 592));
  while (atomic_load(self + 176))
  {
    std::condition_variable::wait((self + 656), &__lk);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (qword_1ECE75438 == -1)
  {
    v46 = qword_1ECE75428;
    if (!qword_1ECE75428)
    {
LABEL_64:
      v59 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    dispatch_once(&qword_1ECE75438, &__block_literal_global_866);
    v46 = qword_1ECE75428;
    if (!qword_1ECE75428)
    {
      goto LABEL_64;
    }
  }

  if (!*v46)
  {
    goto LABEL_64;
  }

  v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  if (qword_1ECE75430 && *qword_1ECE75430)
  {
    v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  }

  else
  {
    v103 = @"MPSGraph";
  }

  v106 = [[MPSGraphCaptureContext alloc] initWithOutputFolderPath:v100 graphName:v103];
  v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v109, "count")}];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v48 = [(MPSGraphExecutable *)self feedTensors];
  v49 = [v48 countByEnumeratingWithState:&v143 objects:v161 count:16];
  if (v49)
  {
    v50 = *v144;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v144 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = [*(*(&v143 + 1) + 8 * i) name];
        [v47 addObject:v52];
      }

      v49 = [v48 countByEnumeratingWithState:&v143 objects:v161 count:16];
    }

    while (v49);
  }

  [(MPSGraphCaptureContext *)v106 setFeeds:v109 names:v47];
  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v54 = [(MPSGraphExecutable *)self targetTensors];
  v55 = [v54 countByEnumeratingWithState:&v139 objects:v160 count:16];
  if (v55)
  {
    v56 = *v140;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v140 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = [*(*(&v139 + 1) + 8 * j) name];
        [v53 addObject:v58];
      }

      v55 = [v54 countByEnumeratingWithState:&v139 objects:v160 count:16];
    }

    while (v55);
  }

  [(MPSGraphCaptureContext *)v106 setResults:v13 names:v53];
  objc_storeStrong((v152[0] + 208), v106);

  v59 = v106;
LABEL_65:
  if (![v111 type] || *(self + 837) == 1)
  {
    v104 = v152[0];
    if (!v19)
    {
      v60 = MEMORY[0x1E6974450];
      v61 = [v111 metalDevice];
      v62 = [v61 newCommandQueue];
      v19 = [v60 commandBufferFromCommandQueue:v62];

      v105 = 1;
    }

    v107 = v59;
    v63 = [(MPSCommandBuffer *)v19 commandBuffer];
    v64 = [v63 globalTraceObjectID];
    __lk.__m_ = 0x2B2B07E42B2B07E0;
    *&__lk.__owns_ = self;
    v155 = v64;
    v156 = v104;
    v157 = 0;
    kdebug_trace();

    v65 = [v114 completionGraphHandler];
    if (v65)
    {
    }

    else
    {
      v66 = [v114 scheduledGraphHandler];
      v67 = v66 == 0;

      if (v67)
      {
        v70 = 0;
LABEL_75:
        if ([v114 enableCommitAndContinue])
        {
          v71 = *(self + 832);
        }

        else
        {
          v71 = 0;
        }

        v72 = [v114 breakUpMetalEncoders];
        v73 = byte_1EED2BCA1;
        v74 = [v114 scheduledGraphHandler];
        if (v74)
        {
        }

        else
        {
          v75 = [v114 scheduledHandler];
          v76 = v75 == 0;

          if (v76)
          {
LABEL_82:
            v131[0] = MEMORY[0x1E69E9820];
            v131[1] = 3221225472;
            v131[2] = __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_3;
            v131[3] = &unk_1E86D4B20;
            v131[4] = self;
            [(MPSGraphInternalCommandBuffer *)v19 addScheduledHandler:v131];
            v130 = 1;
            v78 = MPSRuntime::evaluateOps(v104, v151, v102, v109, v112, v114, v19, v71 & 1, (v72 | v73) & 1, v105, &v130);

            v113 = v78;
            v79 = v113;
            if ([v114 disableSynchronizeResults] & 1) == 0 && v130 == 1 && (*(self + 116))
            {
              v128 = 0u;
              v129 = 0u;
              v126 = 0u;
              v127 = 0u;
              v80 = v113;
              v81 = [v80 countByEnumeratingWithState:&v126 objects:v159 count:16];
              if (v81)
              {
                v82 = *v127;
                do
                {
                  for (k = 0; k != v81; ++k)
                  {
                    if (*v127 != v82)
                    {
                      objc_enumerationMutation(v80);
                    }

                    v84 = [*(*(&v126 + 1) + 8 * k) mpsndarray];
                    [v84 synchronizeOnCommandBuffer:v19];
                  }

                  v81 = [v80 countByEnumeratingWithState:&v126 objects:v159 count:16];
                }

                while (v81);
              }

              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v85 = v80;
              v86 = [v85 countByEnumeratingWithState:&v122 objects:v158 count:16];
              if (v86)
              {
                v87 = *v123;
                do
                {
                  for (m = 0; m != v86; ++m)
                  {
                    if (*v123 != v87)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v89 = [*(*(&v122 + 1) + 8 * m) mpsndarray];
                    [v89 synchronizeOnCommandBuffer:v19];
                  }

                  v86 = [v85 countByEnumeratingWithState:&v122 objects:v158 count:16];
                }

                while (v86);
              }

              v79 = v113;
            }

            v90 = [(MPSCommandBuffer *)v19 commandBuffer];
            v91 = [v114 completionGraphHandler];
            if (v91 || ([v114 completionHandler], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
            {

              v79 = v113;
            }

            else if (!v114[4])
            {
              goto LABEL_104;
            }

            v117[0] = MEMORY[0x1E69E9820];
            v117[1] = 3221225472;
            v117[2] = __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_4;
            v117[3] = &unk_1E86D51E0;
            v118 = v114;
            v119 = v70;
            v120 = v79;
            v121 = self;
            [(MPSGraphInternalCommandBuffer *)v19 addCompletedHandler:v117];
            v130 = 1;

            v79 = v113;
LABEL_104:
            v115[0] = MEMORY[0x1E69E9820];
            v115[1] = 3221225472;
            v115[2] = __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_5;
            v115[3] = &unk_1E86D5190;
            v115[4] = self;
            v13 = v79;
            v116 = v13;
            [(MPSGraphInternalCommandBuffer *)v19 addCompletedHandler:v115];
            if (v130 == 1)
            {
              if (v105)
              {
                [(MPSGraphInternalCommandBuffer *)v19 commit];
              }

              if ([v114 waitUntilCompleted])
              {
                if (!v105)
                {
                  [(MPSGraphInternalCommandBuffer *)v19 commitAndContinue];
                }

                [v90 waitUntilCompleted];
              }
            }

            if (v19)
            {
              [(MPSGraphInternalCommandBuffer *)v19 mpsCommandBufferDescriptor];
              v92 = __p[0];
            }

            else
            {
              v92 = 0;
            }

            v114[7] = &v92[-v101];

            kdebug_trace();
            v112 = v13;
            v59 = v107;
            goto LABEL_115;
          }
        }

        v77 = [(MPSCommandBuffer *)v19 commandBuffer];
        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_2;
        v132[3] = &unk_1E86D51B8;
        v133 = v114;
        v134 = v70;
        v135 = v112;
        [v77 addScheduledHandler:v132];

        goto LABEL_82;
      }
    }

    v68 = objc_opt_new();
    v69 = *(self + 89);
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke;
    v136[3] = &unk_1E86D4E20;
    v70 = v68;
    v137 = v70;
    v138 = v112;
    [v69 enumerateObjectsUsingBlock:v136];

    goto LABEL_75;
  }

  if ([v111 type] == 1)
  {
    (*(*v152[0] + 16))(v152[0], v109, v112, v114);
  }

  else if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_115:
  if (v59)
  {
    [(MPSGraphCaptureContext *)v59 writejsonFile:@"mpsgraph.json"];
  }

  if (qword_1ECE75448 == -1)
  {
    if (_MergedGlobals_86 != 1)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  dispatch_once(&qword_1ECE75448, &__block_literal_global_870);
  if (_MergedGlobals_86 == 1)
  {
LABEL_119:
    v93 = MEMORY[0x1E695DFF8];
    v94 = [MEMORY[0x1E696AEC0] stringWithUTF8String:qword_1ECE75440];
    v95 = [v93 URLWithString:v94];
    [(MPSGraphExecutable *)self emitObjUnitTestToUrl:v95];
  }

LABEL_120:
  v96 = v112;
  if (v13)
  {
    v96 = v13;
  }

  v97 = v96;

  kdebug_trace();

  return v97;
}

void __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

void __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) scheduledGraphHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) scheduledGraphHandler];
    v5 = *(a1 + 40);
    v6 = [v11 error];
    (v4)[2](v4, v5, v6);
  }

  v7 = [*(a1 + 32) scheduledHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) scheduledHandler];
    v9 = *(a1 + 48);
    v10 = [v11 error];
    (v8)[2](v8, v9, v10);
  }
}

void __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 816));
  ++*(*(a1 + 32) + 824);
  v2 = (*(a1 + 32) + 816);

  os_unfair_lock_unlock(v2);
}

void __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) completionGraphHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionGraphHandler];
    v5 = *(a1 + 40);
    v6 = [v15 error];
    (v4)[2](v4, v5, v6);
  }

  v7 = [*(a1 + 32) completionHandler];

  if (v7)
  {
    v8 = [*(a1 + 32) completionHandler];
    v9 = *(a1 + 48);
    v10 = [v15 error];
    (v8)[2](v8, v9, v10);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 32);
  if (v12)
  {
    v13 = *(v11 + 40);
    v14 = [v15 error];
    (*(v12 + 16))(v12, v13, v14);
  }

  kdebug_trace();
}

void __129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer___block_invoke_5(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 816));
  --*(*(a1 + 32) + 824);
  os_unfair_lock_unlock((*(a1 + 32) + 816));
  if (*(*(a1 + 32) + 800))
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = 0;
    v3 = [v2 createDirectoryAtPath:@"/tmp/results" withIntermediateDirectories:1 attributes:0 error:&v8];
    v4 = v8;
    v5 = v4;
    if (v3)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      ++_ZZZ129__MPSGraphExecutable_runInternalWithDevice_commandBuffer_feeds_results_executableExecutionDescriptor_mpsGraphOwnedCommandBuffer__EUb_E15invocationCount;
      [v6 dumpArrayOfTensorData:v7 basePath:@"/tmp/results" separator:@"_result_" invocationCount:?];
    }

    else
    {
      NSLog(&cfstr_FailedToCreate_13.isa, @"/tmp/results", v4);
    }
  }
}

- (unint64_t)getOptimizedModuleCacheSize
{
  std::mutex::lock((self + 72));
  v3 = *(self + 118);
  std::mutex::unlock((self + 72));
  return v3;
}

- (unint64_t)getOptimizedNoDeviceModuleCacheSize
{
  std::mutex::lock((self + 72));
  v3 = *(self + 136);
  std::mutex::unlock((self + 72));
  return v3;
}

- (unint64_t)getOptimizedModulesSize
{
  std::mutex::lock((self + 72));
  v3 = *(self + 112);
  std::mutex::unlock((self + 72));
  return v3;
}

- (unint64_t)getOptimizedNoDeviceModulesSize
{
  std::mutex::lock((self + 72));
  v3 = *(self + 130);
  std::mutex::unlock((self + 72));
  return v3;
}

- (unint64_t)getResourcesTotalSize
{
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(*(self + 34), a2);
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  v3 = *(Manager + 24);
  v4 = *(Manager + 32);
  if (v4)
  {
    v5 = *(Manager + 24);
    if (*v3)
    {
      v6 = *v3 == -8;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      do
      {
        v8 = v5[1];
        ++v5;
        v7 = v8;
        if (v8)
        {
          v9 = v7 == -8;
        }

        else
        {
          v9 = 1;
        }
      }

      while (v9);
    }

    v10 = &v3[v4];
    if (v5 != v10)
    {
      goto LABEL_12;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v5 = *(Manager + 24);
  v10 = &v3[v4];
  if (v5 == v10)
  {
    goto LABEL_22;
  }

LABEL_12:
  v11 = 0;
  v12 = *v5;
  do
  {
    if (*(v12 + 88) == 1)
    {
      v11 += *(v12 + 32);
    }

    do
    {
      v13 = v5[1];
      ++v5;
      v12 = v13;
      if (v13)
      {
        v14 = v12 == -8;
      }

      else
      {
        v14 = 1;
      }
    }

    while (v14);
  }

  while (v5 != v10);
LABEL_23:
  llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
  return v11;
}

- (unint64_t)getTotalANEJITCompilations
{
  std::mutex::lock((self + 200));
  std::mutex::lock((self + 72));
  v3 = *(self + 55) + 32 * *(self + 114);
  if (*(self + 112))
  {
    v12[0] = *(self + 55);
    v12[1] = v3;
    llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v12);
  }

  v11 = vdupq_n_s64(v3);
  if (v11.i64[0] != *(self + 55) + 32 * *(self + 114))
  {
    v4 = (*(***(v11.i64[0] + 24) + 32))(**(v11.i64[0] + 24));
    if (v4 && *(v4 + 36) != 1 && *(v4 + 56))
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        v6 = 16 * v5;
        v7 = *(v4 + 48);
        while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v7 += 2;
          v6 -= 16;
          if (!v6)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        v7 = *(v4 + 48);
      }

      v8 = *(v4 + 48) + 16 * v5;
      if (v7 != v8)
      {
        v9 = 0;
        do
        {
          v9 += *(v7[1] + 30);
          do
          {
            v7 += 2;
            if (v7 == v8)
            {
              goto LABEL_4;
            }
          }

          while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v7 != v8);
      }
    }

LABEL_4:
    v11.i64[0] += 32;
    llvm::DenseMapIterator<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>,MPSGraphModuleKeysSetInfo,llvm::detail::DenseMapPair<llvm::DenseSet<MPSGraphModuleKey,MPSGraphModuleKeyInfo>,std::unique_ptr<MPSGraphExecutableSpecializedModule>>,true>::AdvancePastEmptyBuckets(v11.i64);
  }

  std::mutex::unlock((self + 72));
  std::mutex::unlock((self + 200));
  return 0;
}

+ (void)prepareExecDescriptorAndRuntimeSpecialization:(id)a3 device:(id)a4 executableExecutionDescriptor:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 entryFunctionName];
  v11 = [v7 getInputShapesForFunction:v10];
  v12 = [[MPSGraphExecutableEntryPoint alloc] initWithEntryFunctionName:v10 inputTypes:v11];
  v13 = [MPSGraphExecutableEntryPointToSymbolAndFileNameMap alloc];
  v24 = v12;
  v14 = objc_opt_new();
  v25[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v16 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)v13 initWithPerEntryPointMap:v15];
  [v9 setPerEntryPointToSymbolAndFileNameMap:v16];

  v17 = [MPSGraphExecutableShapedEntryPoint alloc];
  v18 = getShapesFromTypes(v11);
  v19 = [(MPSGraphExecutableShapedEntryPoint *)v17 initWithEntryFunctionName:v10 inputTypes:v18];

  v22 = 0;
  v23 = 0;
  v20 = [MPSGraphDevice deviceWithMTLDevice:v8];
  v21 = [v9 perEntryPointToSymbolAndFileNameMap];
  [v7 getRuntimeSpecializationAndEntryFunction:v20 shapedEntryPoint:v19 perEntryPointToSymbolAndFileNameMap:v21 entryFuncOp:&v22 runtime:&v23];
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 850045863;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 16) = 0;
  *(self + 17) = 850045863;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 24) = 0;
  *(self + 25) = 850045863;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 32) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 37) = 0;
  *(self + 39) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 84) = 0;
  *(self + 85) = 16;
  *(self + 43) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0x1800000000;
  *(self + 50) = 0;
  *(self + 51) = 0;
  *(self + 49) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 108) = 0;
  *(self + 55) = 0;
  *(self + 56) = 0;
  *(self + 114) = 0;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 120) = 0;
  *(self + 61) = 0;
  *(self + 62) = 0;
  *(self + 126) = 0;
  *(self + 64) = 0;
  *(self + 65) = 0;
  *(self + 132) = 0;
  *(self + 67) = 0;
  *(self + 68) = 0;
  *(self + 138) = 0;
  *(self + 70) = 0;
  *(self + 71) = 0;
  *(self + 144) = 0;
  *(self + 74) = 850045863;
  *(self + 600) = 0u;
  *(self + 616) = 0u;
  *(self + 632) = 0u;
  *(self + 81) = 0;
  *(self + 82) = 1018212795;
  *(self + 664) = 0u;
  *(self + 680) = 0u;
  *(self + 87) = 0;
  *(self + 864) = 0;
  *(self + 904) = 0;
  return self;
}

+ (void)executablesWithMLIRSourceForMultipleModules:executableDescriptor:regionNames:
{
  v4 = *(*(a2 + 6) + 16);
  if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
  {
    v5 = *a1;
    if (*(a2 + 9))
    {
      v6 = a2 - 16;
    }

    else
    {
      v6 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    v8 = *(*a1 + 4);
    if (v8)
    {
      v9 = *(*(a2 + 9) + 24);
      v10 = **a1;
      v11 = 0x9DDFEA08EB382D69 * ((8 * v9 - 0xAE502812AA7333) ^ HIDWORD(v9));
      v12 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v11 >> 47) ^ v11);
      v13 = (-348639895 * ((v12 >> 47) ^ v12)) & (v8 - 1);
      v14 = *(v10 + 16 * v13);
      if (v14 == v9)
      {
LABEL_8:
        if (v13 != v8)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v36 = 1;
        while (v14 != -4096)
        {
          v37 = v13 + v36++;
          v13 = v37 & (v8 - 1);
          v14 = *(v10 + 16 * v13);
          if (v14 == v9)
          {
            goto LABEL_8;
          }
        }
      }
    }

    goto LABEL_18;
  }

  if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
  {
    v5 = *a1;
    if (*(a2 + 9))
    {
      v15 = a2 - 16;
    }

    else
    {
      v15 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
    v16 = *(*a1 + 4);
    if (v16)
    {
      v17 = *(*(a2 + 9) + 24);
      v10 = **a1;
      v18 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v18 >> 47) ^ v18);
      v13 = (-348639895 * ((v19 >> 47) ^ v19)) & (v16 - 1);
      v20 = *(v10 + 16 * v13);
      if (v20 == v17)
      {
LABEL_17:
        if (v13 != v16)
        {
LABEL_32:
          v21 = *(v10 + 16 * v13 + 8);
          goto LABEL_33;
        }
      }

      else
      {
        v38 = 1;
        while (v20 != -4096)
        {
          v39 = v13 + v38++;
          v13 = v39 & (v16 - 1);
          v20 = *(v10 + 16 * v13);
          if (v20 == v17)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_18:
    v21 = 0;
LABEL_33:
    __p = NextResultAtOffset;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v5, &__p) = v21;
    return;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id)
  {
    v22 = a2;
  }

  else
  {
    v22 = 0;
  }

  v43 = v22;
  if (!v22)
  {
    mlir::OpBuilder::clone(*a1[1], a2, *a1);
    return;
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v43, 0);
  if ((*(v43 + 46) & 0x80) != 0)
  {
    v24 = *(v43 + 9);
    v25 = ODSOperandIndexAndLength;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength)
    {
LABEL_25:
      v26 = v24 + 32 * v25;
      v27 = *(*a1 + 4);
      if (v27)
      {
        v28 = *(v26 + 24);
        v29 = **a1;
        v30 = 0x9DDFEA08EB382D69 * ((8 * v28 - 0xAE502812AA7333) ^ HIDWORD(v28));
        v31 = 0x9DDFEA08EB382D69 * (HIDWORD(v28) ^ (v30 >> 47) ^ v30);
        v32 = (-348639895 * ((v31 >> 47) ^ v31)) & (v27 - 1);
        v33 = *(v29 + 16 * v32);
        if (v33 != v28)
        {
          v34 = 1;
          do
          {
            if (v33 == -4096)
            {
              break;
            }

            v35 = v32 + v34++;
            v32 = v35 & (v27 - 1);
            v33 = *(v29 + 16 * v32);
          }

          while (v33 != v28);
        }
      }

      operator new();
    }
  }

  else
  {
    v24 = 0;
    v25 = ODSOperandIndexAndLength;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength)
    {
      goto LABEL_25;
    }
  }

  mlir::OpBuilder::create<mlir::func::ReturnOp,std::vector<mlir::Value> &>(*a1[1], *(v43 + 3), &__p);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }
}

- (void)newExecutableWithDevice:inputsArray:intermediateOperations:executionDescriptor:
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  NextResultAtOffset = &unk_1F5B3FB30;
  v18 = __p;
  llvm::raw_ostream::SetBufferAndMode(&NextResultAtOffset, 0, 0, 0);
  v10 = *(a2 + 24);
  v4 = mlir::Attribute::print(&v10, &NextResultAtOffset, 0);
  if (v20 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v5, v4}];
  llvm::raw_ostream::~raw_ostream(&NextResultAtOffset);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if ([**(a1 + 8) containsObject:v6])
  {
    v7 = *(a2 + 36);
    if (v7)
    {
      v8 = a2 - 16;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
        std::vector<mlir::Value>::push_back[abi:ne200100](*(a1 + 16), &NextResultAtOffset);
      }
    }
  }
}

- (uint64_t)optimizeOriginalModule
{
  v2 = *(a2 + 8);
  if (v2 == "Z44[MPSGraphExecutable optimizeOriginalModule]E3$_5")
  {
    return a1 + 8;
  }

  if (((v2 & "Z44[MPSGraphExecutable optimizeOriginalModule]E3$_5" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z44[MPSGraphExecutable optimizeOriginalModule]E3$_5"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z44[MPSGraphExecutable optimizeOriginalModule]E3$_5" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

- (uint64_t)applyOptimizationPassesWithDevice:module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:
{
  v2 = *(a2 + 8);
  if (v2 == "Z127[MPSGraphExecutable applyOptimizationPassesWithDevice:module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:]E3$_9")
  {
    return a1 + 8;
  }

  if (((v2 & "Z127[MPSGraphExecutable applyOptimizationPassesWithDevice:module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:]E3$_9" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z127[MPSGraphExecutable applyOptimizationPassesWithDevice:module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:]E3$_9"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z127[MPSGraphExecutable applyOptimizationPassesWithDevice:module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:]E3$_9" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

- (uint64_t)applyOptimizationPassesWithDevice:(uint64_t)a1 module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:
{

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, v2);
}

- (void)applyOptimizationPassesWithDevice:(uint64_t)a1 module:compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, v2);

  JUMPOUT(0x1E12E5B90);
}

- (uint64_t)applyOptimizationPassesWithDevice:(uint64_t)a1 module:(uint64_t)a2 compilationID:compilationDescriptor:perEntryPointFuncOpMLIRName:
{
  result = (*(*a2 + 32))(a2);
  if (v4 == 20)
  {
    v5 = *result == 0x696765722D656E61 && *(result + 8) == 0x616D726F662D6E6FLL;
    if (v5 && *(result + 16) == 1852795252)
    {
      v7 = *(a1 + 16);
      v8 = **(a1 + 8);

      return [v7 dumpModuleWithEV:v8];
    }
  }

  return result;
}

- (void)createMLIRLibraryWithMPSGraphPackage:packageKey:appendOptimizedModules:
{
  v43[6] = *MEMORY[0x1E69E9840];
  if (**a1 == 1)
  {
    v4 = objc_opt_new();
    v7 = *(this + 10);
    v6 = *(this + 11);
    __dst = v4;
    v8 = ((this + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v7;
    p_dst = &__dst;
    v9 = *(v8 + 8);
    if (v9 != v8)
    {
      do
      {
        v10 = v9 - 8;
        if (!v9)
        {
          v10 = 0;
        }

        v11 = *(v10 + 40);
        v12 = v10 + 32;
        if (v11 != v10 + 32)
        {
          do
          {
            v13 = *(v11 + 8);
            v14 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v11, v5);
            p_p_dst = &p_dst;
            mlir::detail::walk<mlir::ForwardIterator>(v14, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZ32getConstantResourcesUsedInModuleINS1_3mps13serialization8ModuleOpEEP7NSArrayIP8NSStringET_EUlNSC_10ConstantOpEE_SL_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESV_E4typeES3_OT1_EUlS3_E_EEvlS3_, &p_p_dst, 1);
            v11 = v13;
          }

          while (v13 != v12);
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v8);
      v4 = __dst;
    }

    v15 = [v4 allObjects];

    [**(a1 + 8) addObjectsFromArray:v15];
    [**(a1 + 16) addOriginalResourcesUsed:v15];
  }

  mlir::mps::getFilePathsInModule(this, &p_p_dst);
  v16 = [**(a1 + 24) getMutableWeightsFilePath];
  if ([*(**(a1 + 24) + 808) fileExistsAtPath:v16])
  {
    v17 = [v16 lastPathComponent];
    v18 = v17;
    v19 = [v17 UTF8String];
    v20 = strlen(v19);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    v38 = v20;
    if (v20)
    {
      memmove(&__dst, v19, v20);
    }

    *(&__dst + v21) = 0;
    v22 = &__dst;
    v23 = p_p_dst;
    if (v41 >= v42)
    {
      if (p_p_dst <= &__dst && p_p_dst + 24 * v41 > &__dst)
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow(&p_p_dst, v41 + 1);
        v36 = (&__dst - v23);
        v23 = p_p_dst;
        v22 = &v36[p_p_dst];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow(&p_p_dst, v41 + 1);
        v22 = &__dst;
        v23 = p_p_dst;
      }
    }

    v24 = &v23[24 * v41];
    v25 = *v22;
    *(v24 + 2) = v22[2];
    *v24 = v25;
    v22[1] = 0;
    v22[2] = 0;
    *v22 = 0;
    ++v41;
    if (v38 < 0)
    {
      operator delete(__dst);
    }
  }

  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:v41];
  if (v41)
  {
    v27 = p_p_dst;
    v28 = 24 * v41;
    do
    {
      v29 = v27;
      if (*(v27 + 23) < 0)
      {
        v29 = *v27;
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
      [v26 addObject:v30];

      v27 += 3;
      v28 -= 24;
    }

    while (v28);
  }

  [**(a1 + 16) addDataFileNames:v26];
  [**(a1 + 32) copyDataFiles:p_p_dst currentBasePath:v41 location:{*(**(a1 + 24) + 920), *(this + 3)}];

  v31 = p_p_dst;
  if (v41)
  {
    v32 = p_p_dst + 24 * v41 - 1;
    v33 = -24 * v41;
    v34 = v32;
    do
    {
      v35 = *v34;
      v34 -= 24;
      if (v35 < 0)
      {
        operator delete(*(v32 - 23));
      }

      v32 = v34;
      v33 += 24;
    }

    while (v33);
    v31 = p_p_dst;
  }

  if (v31 != v43)
  {
    free(v31);
  }
}

- (__n128)getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:
{
  *a2 = &unk_1F5B542E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:
{
  v30[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v3 = [*(**(a1 + 8) + 368) callables];
  if (![**(a1 + 16) type] || **(a1 + 24) == 1)
  {
    v28 = v30;
    v29 = 0x100000000;
    v4 = **(a1 + 56);
    v5 = *(v4 + 8);
    v6 = *(v4 + 24);
    if (*(v4 + 16))
    {
      v26.var0.var0 = *(v4 + 8);
      *&v26.var0.var1 = v5 + 120 * v6;
      llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(&v26);
      v7 = *&v26.var0.var0;
      v6 = *(v4 + 24);
      v5 = *(v4 + 8);
    }

    else
    {
      v7 = vdupq_n_s64(v5 + 120 * v6);
    }

    *v23 = v7;
    v8 = (v5 + 120 * v6);
    while (1)
    {
      v9 = v23[0];
      if (v23[0] == v8)
      {
        (*(****(a1 + 56) + 32))(***(a1 + 56));
        operator new();
      }

      MPSGraphModuleKey::MPSGraphModuleKey(&v26, v23[0]);
      if (v9[1].var0.var3[7] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v9[1].var0.var0, *&v9[1].var0.var1);
      }

      else
      {
        v10 = *&v9[1].var0.var0;
        __p.__r_.__value_.__r.__words[2] = *v9[1].var0.var3;
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v12 = *&__p.__r_.__value_.__l.__data_;
      v13 = **(a1 + 64);
      Context = mlir::Attribute::getContext((v13 + 6));
      if ((v11 & 0x80u) == 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *(&v12 + 1);
      }

      v25 = 261;
      if ((v11 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v12;
      }

      v24[0] = p_p;
      v24[1] = v15;
      v17 = mlir::StringAttr::get(Context, v24);
      v18 = mlir::SymbolTable::lookupSymbolIn(v13, v17);
      v19 = v18;
      if (v18)
      {
        InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v18);
        v21 = v29;
        if (v29 < HIDWORD(v29))
        {
          goto LABEL_24;
        }
      }

      else
      {
        InterfaceFor = 0;
        v21 = v29;
        if (v29 < HIDWORD(v29))
        {
          goto LABEL_24;
        }
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v21 + 1, 16);
      v21 = v29;
LABEL_24:
      v22 = &v28[2 * v21];
      *v22 = v19;
      v22[1] = InterfaceFor;
      LODWORD(v29) = v29 + 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v26.var0.var0 != v26.var0.var3)
      {
        free(v26.var0.var0);
      }

      v23[0] = (v9 + 120);
      llvm::DenseMapIterator<MPSGraphModuleKey,std::string,MPSGraphModuleKeyInfo,llvm::detail::DenseMapPair<MPSGraphModuleKey,std::string>,true>::AdvancePastEmptyBuckets(v23);
    }
  }

  if ([**(a1 + 16) type] == 1)
  {
    operator new();
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }
}

- (uint64_t)getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:
{
  v2 = *(a2 + 8);
  if (v2 == "Z103[MPSGraphExecutable getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:]E4$_10")
  {
    return a1 + 8;
  }

  if (((v2 & "Z103[MPSGraphExecutable getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:]E4$_10" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z103[MPSGraphExecutable getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:]E4$_10"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z103[MPSGraphExecutable getNewRuntimeForDevice:specializedModule:shapedEntryPoints:compilationDescriptor:]E4$_10" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

@end