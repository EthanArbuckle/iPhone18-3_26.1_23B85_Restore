@interface _MTLPipelineLibrary
- (NSArray)metallibPaths;
- (_MTLPipelineLibrary)initWithDevice:(id)device pipelineLibraryData:(void *)data;
- (id)newComputePipelineDescriptorWithName:(id)name error:(id *)error;
- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineDescriptorWithName:(id)name error:(id *)error;
- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (void)dealloc;
@end

@implementation _MTLPipelineLibrary

- (void)dealloc
{
  pipelineLibraryData = self->_pipelineLibraryData;
  if (pipelineLibraryData)
  {
    PipelineLibraryData::~PipelineLibraryData(pipelineLibraryData);
    MEMORY[0x1865FF210]();
  }

  v4.receiver = self;
  v4.super_class = _MTLPipelineLibrary;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (_MTLPipelineLibrary)initWithDevice:(id)device pipelineLibraryData:(void *)data
{
  v8.receiver = self;
  v8.super_class = _MTLPipelineLibrary;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = device;
    v6->_pipelineLibraryData = data;
    v6->_disableRunTimeCompilation = 0;
  }

  return v6;
}

- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v10 = MTLPipelineDescriptions::newComputePipelineDescriptor(*self->_pipelineLibraryData, [name UTF8String], *(self->_pipelineLibraryData + 3), error);
  [v10 setPipelineLibrary:self];
  if (!v10)
  {
    return 0;
  }

  v11 = [(MTLDevice *)self->_device newComputePipelineStateWithDescriptor:v10 options:options reflection:reflection error:error];

  return v11;
}

- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v10 = MTLPipelineDescriptions::newRenderPipelineDescriptor(*self->_pipelineLibraryData, [name UTF8String], *(self->_pipelineLibraryData + 3), error);
  [v10 setPipelineLibrary:self];
  if (!v10)
  {
    return 0;
  }

  v11 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v10 options:options reflection:reflection error:error];

  return v11;
}

- (id)newComputePipelineDescriptorWithName:(id)name error:(id *)error
{
  pipelineLibraryData = self->_pipelineLibraryData;
  uTF8String = [name UTF8String];
  v7 = *pipelineLibraryData;
  v8 = *(pipelineLibraryData + 3);

  return MTLPipelineDescriptions::newComputePipelineDescriptor(v7, uTF8String, v8, error);
}

- (id)newRenderPipelineDescriptorWithName:(id)name error:(id *)error
{
  pipelineLibraryData = self->_pipelineLibraryData;
  uTF8String = [name UTF8String];
  v7 = *pipelineLibraryData;
  v8 = *(pipelineLibraryData + 3);

  return MTLPipelineDescriptions::newRenderPipelineDescriptor(v7, uTF8String, v8, error);
}

- (NSArray)metallibPaths
{
  MTLPipelineDescriptions::libraryPaths(*self->_pipelineLibraryData, &v10);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [v2 initWithCapacity:0xAAAAAAAAAAAAAAABLL * (v11 - v10)];
  v4 = v10;
  for (i = v11; v4 != i; v4 += 3)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = v4;
    if (*(v4 + 23) < 0)
    {
      v7 = *v4;
    }

    v8 = [v6 initWithUTF8String:v7];
    [(NSArray *)v3 addObject:v8];
  }

  v12 = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v3;
}

@end