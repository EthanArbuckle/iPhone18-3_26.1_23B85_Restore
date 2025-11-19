@interface AGXG18PFamilyArchive_mtlnext
- (AGXG18PFamilyArchive_mtlnext)initWithDevice:(id)a3 error:(id *)a4;
- (BOOL)loadFromURL:(id)a3 error:(id *)a4;
- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5;
- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation AGXG18PFamilyArchive_mtlnext

- (id)newBinaryFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x29EDCA608];
  archive_pipeline_factory = self->_archive_pipeline_factory;
  v7 = [a3 functionDescriptor];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__3844;
  v23 = __Block_byref_object_dispose__3845;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3844;
  v17 = __Block_byref_object_dispose__3845;
  v18 = 0;
  v8 = *(archive_pipeline_factory[2] + 40);
  v25 = archive_pipeline_factory;
  if (atomic_load_explicit(archive_pipeline_factory + 3, memory_order_acquire) != -1)
  {
    v12[0] = &v25;
    v26[0] = v12;
    std::__call_once(archive_pipeline_factory + 3, v26, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::ArchivePipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreateBinaryArchive(void)::{lambda(void)#1} &&>>);
  }

  v26[0] = archive_pipeline_factory[4];
  v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v26 count:1];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = ___ZN3AGX22ArchivePipelineFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20lookupBinaryFunctionEP28MTL4BinaryFunctionDescriptorPP7NSError_block_invoke;
  v12[3] = &unk_29F341A80;
  v12[4] = a3;
  v12[5] = v9;
  v12[6] = v8;
  v12[7] = &v19;
  v12[8] = &v13;
  v12[9] = archive_pipeline_factory;
  AGX::Metal4To3ConversionUtility<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createFunction(v7, v9, 0, 1u, 0, 0, v8, v12, 0);
  if (a4)
  {
    *a4 = v20[5];
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (BOOL)loadFromURL:(id)a3 error:(id *)a4
{
  v10.receiver = self;
  v10.super_class = AGXG18PFamilyArchive_mtlnext;
  v6 = [(_MTL4Archive *)&v10 loadFromURL:a3 error:a4];
  if (v6)
  {
    v7 = v6;
    v8 = [a3 copy];
    LOBYTE(v6) = v7;
    self->_url = v8;
  }

  return v6;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  v9 = 0;
  v6 = AGX::ArchivePipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupRenderPipeline(self->_archive_pipeline_factory, a3, a4, &v9, a5);
  v7 = v6;
  if (v6)
  {
    [v6 setReflection:v9];
  }

  [(AGXG18PFamilyDevice *)self->_device _storeRenderPipelineState:v7];
  return v7;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = AGX::ArchivePipelineFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::lookupRenderPipeline(self->_archive_pipeline_factory, a3, 0, &v8, a4);
  v6 = v5;
  if (v5)
  {
    [v5 setReflection:v8];
  }

  [(AGXG18PFamilyDevice *)self->_device _storeRenderPipelineState:v6];
  return v6;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 error:(id *)a5
{
  archive_pipeline_factory = self->_archive_pipeline_factory;
  v13 = 0;
  MTLComputePipelineDescriptor = AGX::Metal4To3ConversionUtility<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMTLComputePipelineDescriptor(a3, a4, 0, 0, *(archive_pipeline_factory[2] + 40), 0, 0);
  v10 = AGX::Metal4To3ConversionUtility<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::convertPipelineOptions<MTLComputePipelineDescriptor>([a3 options], MTLComputePipelineDescriptor);
  v14 = archive_pipeline_factory[2];
  v15 = 0;
  v16 = a3;
  ComputePipeline_impl = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(*archive_pipeline_factory, MTLComputePipelineDescriptor, *(v14 + 40), 0, v10, &v13, a5, &v14, 0, 0);

  if (ComputePipeline_impl)
  {
    [ComputePipeline_impl setReflection:v13];
  }

  [(AGXG18PFamilyDevice *)self->_device _storeComputePipelineState:ComputePipeline_impl];
  return ComputePipeline_impl;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  archive_pipeline_factory = self->_archive_pipeline_factory;
  v12 = 0;
  MTLComputePipelineDescriptor = AGX::Metal4To3ConversionUtility<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMTLComputePipelineDescriptor(a3, 0, 0, 0, *(archive_pipeline_factory[2] + 40), 0, 0);
  v9 = AGX::Metal4To3ConversionUtility<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::convertPipelineOptions<MTLComputePipelineDescriptor>([a3 options], MTLComputePipelineDescriptor);
  v13 = archive_pipeline_factory[2];
  v14 = 0;
  v15 = a3;
  ComputePipeline_impl = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createComputePipeline_impl(*archive_pipeline_factory, MTLComputePipelineDescriptor, *(v13 + 40), 0, v9, &v12, a4, &v13, 0, 0);

  if (ComputePipeline_impl)
  {
    [ComputePipeline_impl setReflection:v12];
  }

  [(AGXG18PFamilyDevice *)self->_device _storeComputePipelineState:ComputePipeline_impl];
  return ComputePipeline_impl;
}

- (void)dealloc
{
  archive_pipeline_factory = self->_archive_pipeline_factory;
  if (archive_pipeline_factory)
  {

    MEMORY[0x29ED520D0](archive_pipeline_factory, 0x10A0C4021D5C40CLL);
  }

  self->_archive_pipeline_factory = 0;

  self->_device = 0;
  self->_url = 0;
  v4.receiver = self;
  v4.super_class = AGXG18PFamilyArchive_mtlnext;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (AGXG18PFamilyArchive_mtlnext)initWithDevice:(id)a3 error:(id *)a4
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyArchive_mtlnext;
  v5 = [(_MTL4Archive *)&v7 initWithDevice:?];
  if (v5)
  {
    v5->_device = a3;
    operator new();
  }

  return 0;
}

@end