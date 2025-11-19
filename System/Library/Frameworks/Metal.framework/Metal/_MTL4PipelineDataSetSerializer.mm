@interface _MTL4PipelineDataSetSerializer
- (BOOL)serializeAsArchiveAndFlushToURL:(id)a3 error:(id *)a4;
- (_MTL4PipelineDataSetSerializer)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)serializeAsPipelinesScriptWithError:(id *)a3;
- (void)dealloc;
@end

@implementation _MTL4PipelineDataSetSerializer

- (_MTL4PipelineDataSetSerializer)initWithDevice:(id)a3 descriptor:(id)a4
{
  v9.receiver = self;
  v9.super_class = _MTL4PipelineDataSetSerializer;
  v6 = [(_MTLObjectWithLabel *)&v9 init];
  if (v6)
  {
    v6->_configuration = [a4 configuration];
    v6->_device = a3;
    if (v6->_configuration != 2 || (v7 = objc_opt_new(), [v7 setOptions:{objc_msgSend(v7, "options") | 0x80}], v6->_destinationBinaryArchive = objc_msgSend(a3, "newBinaryArchiveWithDescriptor:error:", v7, 0), v7, v6->_destinationBinaryArchive))
    {
      operator new();
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTL4PipelineDataSetSerializer;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (BOOL)serializeAsArchiveAndFlushToURL:(id)a3 error:(id *)a4
{
  if (self->_configuration == 2)
  {
    return [(MTLBinaryArchive *)self->_destinationBinaryArchive serializeToURL:a3 error:a4];
  }

  else
  {
    return 0;
  }
}

- (id)serializeAsPipelinesScriptWithError:(id *)a3
{
  v3 = MTL4MetalScriptBuilder::newSerializedMetalScript(self->_mtl4ScriptBuilder.__ptr_);

  return v3;
}

@end