@interface MTL4BinaryFunctionDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4BinaryFunctionDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4BinaryFunctionDescriptor

- (MTL4BinaryFunctionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4BinaryFunctionDescriptor;
  result = [(MTL4BinaryFunctionDescriptor *)&v3 init];
  *&result->_pipelineOptions = 0u;
  *&result->_name = 0u;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4BinaryFunctionDescriptor;
  [(MTL4BinaryFunctionDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setFunctionDescriptor:{-[MTL4BinaryFunctionDescriptor functionDescriptor](self, "functionDescriptor")}];
  [v4 setPipelineOptions:{-[MTL4BinaryFunctionDescriptor pipelineOptions](self, "pipelineOptions")}];
  [v4 setOptions:{-[MTL4BinaryFunctionDescriptor options](self, "options")}];
  [v4 setName:{-[MTL4BinaryFunctionDescriptor name](self, "name")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_13;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
LABEL_3:
    LOBYTE(v6) = 0;
    return v6;
  }

  functionDescriptor = self->_functionDescriptor;
  if (functionDescriptor == *(a3 + 2) || (v6 = [(MTL4FunctionDescriptor *)functionDescriptor isEqual:?]) != 0)
  {
    pipelineOptions = self->_pipelineOptions;
    if (pipelineOptions == *(a3 + 1) || (v6 = [(MTL4PipelineOptions *)pipelineOptions isEqual:?]) != 0)
    {
      if (self->_options != *(a3 + 4))
      {
        goto LABEL_3;
      }

      name = self->_name;
      if (name != *(a3 + 3))
      {

        LOBYTE(v6) = [(NSString *)name isEqual:?];
        return v6;
      }

LABEL_13:
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v6, 0x20uLL);
  v6[3] = [(NSString *)self->_name hash];
  v6[0] = [(MTL4FunctionDescriptor *)self->_functionDescriptor hash];
  v3 = [(MTL4PipelineOptions *)self->_pipelineOptions hash];
  options = self->_options;
  v6[1] = v3;
  v6[2] = options;
  return _MTLHashState(v6, 0x20uLL);
}

@end