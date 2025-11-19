@interface _MTLPipelineLibrary
- (NSArray)metallibPaths;
- (_MTLPipelineLibrary)initWithDevice:(id)a3 pipelineLibraryData:(void *)a4;
- (id)newComputePipelineDescriptorWithName:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineDescriptorWithName:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
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

- (_MTLPipelineLibrary)initWithDevice:(id)a3 pipelineLibraryData:(void *)a4
{
  v8.receiver = self;
  v8.super_class = _MTLPipelineLibrary;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = a3;
    v6->_pipelineLibraryData = a4;
    v6->_disableRunTimeCompilation = 0;
  }

  return v6;
}

- (id)newComputePipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = MTLPipelineDescriptions::newComputePipelineDescriptor(*self->_pipelineLibraryData, [a3 UTF8String], *(self->_pipelineLibraryData + 3), a6);
  [v10 setPipelineLibrary:self];
  if (!v10)
  {
    return 0;
  }

  v11 = [(MTLDevice *)self->_device newComputePipelineStateWithDescriptor:v10 options:a4 reflection:a5 error:a6];

  return v11;
}

- (id)newRenderPipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v10 = MTLPipelineDescriptions::newRenderPipelineDescriptor(*self->_pipelineLibraryData, [a3 UTF8String], *(self->_pipelineLibraryData + 3), a6);
  [v10 setPipelineLibrary:self];
  if (!v10)
  {
    return 0;
  }

  v11 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v10 options:a4 reflection:a5 error:a6];

  return v11;
}

- (id)newComputePipelineDescriptorWithName:(id)a3 error:(id *)a4
{
  pipelineLibraryData = self->_pipelineLibraryData;
  v6 = [a3 UTF8String];
  v7 = *pipelineLibraryData;
  v8 = *(pipelineLibraryData + 3);

  return MTLPipelineDescriptions::newComputePipelineDescriptor(v7, v6, v8, a4);
}

- (id)newRenderPipelineDescriptorWithName:(id)a3 error:(id *)a4
{
  pipelineLibraryData = self->_pipelineLibraryData;
  v6 = [a3 UTF8String];
  v7 = *pipelineLibraryData;
  v8 = *(pipelineLibraryData + 3);

  return MTLPipelineDescriptions::newRenderPipelineDescriptor(v7, v6, v8, a4);
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