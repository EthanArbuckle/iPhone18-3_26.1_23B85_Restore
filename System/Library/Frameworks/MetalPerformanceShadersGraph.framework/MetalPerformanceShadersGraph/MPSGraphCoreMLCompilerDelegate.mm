@interface MPSGraphCoreMLCompilerDelegate
- (MPSGraphCoreMLCompilerDelegate)initWithCoreMLBytecode:(id)a3 coreMLDirectory:(id)a4 precompilationDescriptor:(id)a5;
- (id)getInitializedCoreMLBytecodeWithPayloadPrefix:(id)a3 delegateId:(id)a4;
- (id)getSegmentedCoreMLBytecodeWithDelegateId:(id)a3;
@end

@implementation MPSGraphCoreMLCompilerDelegate

- (MPSGraphCoreMLCompilerDelegate)initWithCoreMLBytecode:(id)a3 coreMLDirectory:(id)a4 precompilationDescriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MPSGraphCoreMLCompilerDelegate;
  v12 = [(MPSGraphCoreMLCompilerDelegate *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->coreMLBytecode, a3);
    objc_storeStrong(&v13->coreMLDirectory, a4);
    objc_storeStrong(&v13->precompilationDescriptor, a5);
    mpsgraphPackageName = v13->mpsgraphPackageName;
    v13->mpsgraphPackageName = @"mpsExecutable.mpsgraphpackage";
  }

  return v13;
}

- (id)getInitializedCoreMLBytecodeWithPayloadPrefix:(id)a3 delegateId:(id)a4
{
  v32[10] = *MEMORY[0x1E69E9840];
  a3;
  a4;
  v6 = self->precompilationDescriptor;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setEnableCompileResourcesForPackage:v6 != 0];
  [v8 setOptimizationLevel:1];
  [v8 setEnableANECValidationWorkflow:1];
  [v8 setPreferredDevice:2];
  [v8 setEnableANECHWRankPromotion:1];
  [v8 setAneCompilerSpatialSplitting:0];
  [v8 setCompilerOptions:{objc_msgSend(v8, "compilerOptions") | 0x80000}];
  [v7 setCompilationDescriptor:v8];
  [v7 setIsCoreMLBytecode:1];
  if (v6)
  {
    [(MPSGraphDelegatePrecompilationDescriptor *)v6 validatePrecompilationOptions];
    v9 = [MPSGraphDeviceDescriptor alloc];
    v10 = [(MPSGraphDelegatePrecompilationDescriptor *)v6 gpuCoreCount];
    v11 = [(MPSGraphDelegatePrecompilationDescriptor *)v6 architecture];
    v24 = [(MPSGraphDeviceDescriptor *)v9 initMetalDeviceWithGPUCoreCount:v10 architecture:v11];

    v12 = [(MPSGraphDelegatePrecompilationDescriptor *)v6 aneOptionsURL];
    if (v12)
    {
      v13 = MEMORY[0x1E695DEF0];
      v14 = [(MPSGraphDelegatePrecompilationDescriptor *)v6 aneOptionsURL];
      v28 = 0;
      v15 = [v13 dataWithContentsOfURL:v14 options:2 error:&v28];
      v16 = v28;

      v29[0] = 0;
      v27 = 0;
      v17 = [MEMORY[0x1E696AE40] propertyListWithData:v15 options:0 format:v29 error:&v27];
      v18 = v27;

      v19 = objc_alloc_init(MPSGraphDeviceCompilationOptions);
      [(MPSGraphDeviceCompilationOptions *)v19 setAneCompilerOptions:v17];
      v30 = v24;
      v31 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [v7 setPerDeviceDescriptorCompilationOptions:v20];
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = [[MPSGraphExecutable alloc] initWithMLIRBytecode:self->coreMLBytecode executableDescriptor:v7];
  if (v6)
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v21 = OriginalModuleRef::get(v26 + 37, 0);
    v29[0] = &v26;
    v29[1] = &v25;
    v32[0] = v29;
    mlir::detail::walk<mlir::ForwardIterator>(v21, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ91__MPSGraphCoreMLCompilerDelegate_getInitializedCoreMLBytecodeWithPayloadPrefix_delegateId__E3__3NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, v32, 1);
    v22 = v26;
    v23 = [[MPSGraphDevice alloc] initWithDeviceDescriptor:v24];
    [(MPSGraphExecutable *)v22 specializeWithDevice:v23 entryPoints:v25 compilationDescriptor:v8];
  }

  [(NSURL *)self->coreMLDirectory URLByAppendingPathComponent:self->mpsgraphPackageName];
  [(MPSGraphExecutable *)v26 serializeToMPSGraphPackageAtURL:objc_claimAutoreleasedReturnValue() descriptor:0];
  operator new();
}

- (id)getSegmentedCoreMLBytecodeWithDelegateId:(id)a3
{
  v5[32] = *MEMORY[0x1E69E9840];
  v4 = a3;
  llvm::MemoryBuffer::getMemBuffer([(NSData *)self->coreMLBytecode bytes], [(NSData *)self->coreMLBytecode length], "", 0, v5);
  operator new();
}

@end