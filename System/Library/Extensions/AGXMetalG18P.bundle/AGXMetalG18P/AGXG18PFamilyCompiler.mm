@interface AGXG18PFamilyCompiler
- (AGXG18PFamilyCompiler)initWithDevice:(id)device descriptor:(id)descriptor;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newDynamicLibrary:(id)library completionHandler:(id)handler;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (void)dealloc;
@end

@implementation AGXG18PFamilyCompiler

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler
{
  v9 = [objc_alloc(MEMORY[0x29EDBB690]) initWithCompiler:self];
  v10 = [pipeline newRenderPipelineStateBySpecializationWithDescriptor:descriptor pipeline:pipeline completionHandler:handler error:0];
  [(AGXG18PFamilyDevice *)self->_device _storeRenderPipelineState:v10];
  (*(handler + 2))(handler, v10, 0);
  [v9 setStatus:3];
  return v9;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error
{
  v6 = [pipeline newRenderPipelineStateBySpecializationWithDescriptor:descriptor pipeline:pipeline completionHandler:0 error:error];
  [(AGXG18PFamilyDevice *)self->_device _storeRenderPipelineState:v6];
  return v6;
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  [(MTL4PipelineDataSetSerializer *)[(_MTL4Compiler *)self pipelineDataSetSerializer] addBinaryFunctionWithDescriptor:descriptor];
  v9 = [objc_alloc(MEMORY[0x29EDBB690]) initWithCompiler:self];
  binary_function_factory = self->_binary_function_factory;
  device = self->_device;
  harvesting_archive = self->_harvesting_archive;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __95__AGXG18PFamilyCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v14[3] = &unk_29F3413B0;
  v14[4] = v9;
  v14[5] = handler;
  AGX::UserBinaryFunctionFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createBinaryFunction(binary_function_factory, descriptor, device, harvesting_archive, options, 0, v9, v14);
  return v9;
}

uint64_t __95__AGXG18PFamilyCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setStatus:3];
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  [(MTL4PipelineDataSetSerializer *)[(_MTL4Compiler *)self pipelineDataSetSerializer] addBinaryFunctionWithDescriptor:descriptor];
  binary_function_factory = self->_binary_function_factory;
  device = self->_device;
  harvesting_archive = self->_harvesting_archive;

  return AGX::UserBinaryFunctionFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createBinaryFunction(binary_function_factory, descriptor, device, harvesting_archive, options, error, 0, 0);
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  [(MTL4PipelineDataSetSerializer *)[(_MTL4Compiler *)self pipelineDataSetSerializer] addPipelineWithDescriptor:descriptor];
  v11 = [objc_alloc(MEMORY[0x29EDBB690]) initWithCompiler:self];
  pipeline_factory = self->_pipeline_factory;
  device = self->_device;
  harvesting_archive = self->_harvesting_archive;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __125__AGXG18PFamilyCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v16[3] = &unk_29F341388;
  v16[5] = v11;
  v16[6] = handler;
  v16[4] = self;
  AGX::UserPipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline(pipeline_factory, descriptor, linkingDescriptor, device, options, harvesting_archive, 0, 0, v11, v16);
  return v11;
}

uint64_t __125__AGXG18PFamilyCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  [a2 setReflection:?];
  [*(a1[4] + 72) _storeRenderPipelineState:a2];
  (*(a1[6] + 16))();
  v4 = a1[5];

  return [v4 setStatus:3];
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  [(MTL4PipelineDataSetSerializer *)[(_MTL4Compiler *)self pipelineDataSetSerializer] addPipelineWithDescriptor:descriptor];
  v13 = 0;
  RenderPipeline = AGX::UserPipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createRenderPipeline(self->_pipeline_factory, descriptor, linkingDescriptor, self->_device, options, self->_harvesting_archive, &v13, error, 0, 0);
  [RenderPipeline setReflection:v13];
  [(AGXG18PFamilyDevice *)self->_device _storeRenderPipelineState:RenderPipeline];
  return RenderPipeline;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  [(MTL4PipelineDataSetSerializer *)[(_MTL4Compiler *)self pipelineDataSetSerializer] addPipelineWithDescriptor:descriptor];
  v11 = [objc_alloc(MEMORY[0x29EDBB690]) initWithCompiler:self];
  pipeline_factory = self->_pipeline_factory;
  device = self->_device;
  harvesting_archive = self->_harvesting_archive;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __126__AGXG18PFamilyCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v16[3] = &unk_29F341360;
  v16[5] = v11;
  v16[6] = handler;
  v16[4] = self;
  AGX::UserPipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline(pipeline_factory, descriptor, linkingDescriptor, device, options, harvesting_archive, 0, 0, v11, v16);
  return v11;
}

uint64_t __126__AGXG18PFamilyCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  [a2 setReflection:?];
  [*(a1[4] + 72) _storeComputePipelineState:a2];
  (*(a1[6] + 16))();
  v4 = a1[5];

  return [v4 setStatus:3];
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  [(MTL4PipelineDataSetSerializer *)[(_MTL4Compiler *)self pipelineDataSetSerializer] addPipelineWithDescriptor:descriptor];
  v13 = 0;
  ComputePipeline = AGX::UserPipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline(self->_pipeline_factory, descriptor, linkingDescriptor, self->_device, options, self->_harvesting_archive, &v13, error, 0, 0);
  [ComputePipeline setReflection:v13];
  [(AGXG18PFamilyDevice *)self->_device _storeComputePipelineState:ComputePipeline];
  return ComputePipeline;
}

- (id)newDynamicLibrary:(id)library completionHandler:(id)handler
{
  v7 = [objc_alloc(MEMORY[0x29EDBB698]) initWithCompiler:self];
  dylib_factory = self->_dylib_factory;
  device = self->_device;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __61__AGXG18PFamilyCompiler_newDynamicLibrary_completionHandler___block_invoke;
  v11[3] = &unk_29F341338;
  v11[4] = v7;
  v11[5] = handler;
  AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createDynamicLibrary(dylib_factory[4], library, 0, device, 0, 0, v7, v11);
  return v7;
}

uint64_t __61__AGXG18PFamilyCompiler_newDynamicLibrary_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setStatus:3];
}

- (void)dealloc
{
  binary_function_factory = self->_binary_function_factory;
  if (binary_function_factory)
  {
    v4 = *(binary_function_factory + 4);
    if (v4)
    {
      dispatch_release(*(v4 + 16));
      MEMORY[0x29ED520D0](v4, 0x10A0C407ABD5903);
    }

    *(binary_function_factory + 4) = 0;
    dispatch_release(*(binary_function_factory + 2));
    MEMORY[0x29ED520D0](binary_function_factory, 0x10A0C40C485B26CLL);
  }

  self->_binary_function_factory = 0;
  pipeline_factory = self->_pipeline_factory;
  if (pipeline_factory)
  {
    v6 = *(pipeline_factory + 4);
    if (v6)
    {
      dispatch_release(*(v6 + 16));
      MEMORY[0x29ED520D0](v6, 0x10A0C407ABD5903);
    }

    *(pipeline_factory + 4) = 0;
    v7 = *(pipeline_factory + 5);
    if (v7)
    {
      dispatch_release(*(v7 + 16));
      MEMORY[0x29ED520D0](v7, 0x10A0C406E3BE4FBLL);
    }

    *(pipeline_factory + 5) = 0;
    dispatch_release(*(pipeline_factory + 2));
    MEMORY[0x29ED520D0](pipeline_factory, 0x10A0C4064A1313ALL);
  }

  self->_pipeline_factory = 0;
  dylib_factory = self->_dylib_factory;
  if (dylib_factory)
  {
    v9 = *(dylib_factory + 4);
    if (v9)
    {
      dispatch_release(*(v9 + 16));
      MEMORY[0x29ED520D0](v9, 0x10A0C407ABD5903);
    }

    *(dylib_factory + 4) = 0;
    dispatch_release(*(dylib_factory + 2));
    MEMORY[0x29ED520D0](dylib_factory, 0x10A0C40C485B26CLL);
  }

  self->_dylib_factory = 0;

  self->_device = 0;
  v10.receiver = self;
  v10.super_class = AGXG18PFamilyCompiler;
  [(_MTL4Compiler *)&v10 dealloc];
}

- (AGXG18PFamilyCompiler)initWithDevice:(id)device descriptor:(id)descriptor
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyCompiler;
  v5 = [(_MTL4Compiler *)&v7 initWithDevice:device descriptor:descriptor];
  if (v5)
  {
    v5->_device = device;
    operator new();
  }

  return 0;
}

@end