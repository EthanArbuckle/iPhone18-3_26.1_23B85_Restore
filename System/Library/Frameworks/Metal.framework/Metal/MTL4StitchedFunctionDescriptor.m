@interface MTL4StitchedFunctionDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4StitchedFunctionDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4StitchedFunctionDescriptor

- (MTL4StitchedFunctionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4StitchedFunctionDescriptor;
  return [(MTL4FunctionDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4StitchedFunctionDescriptor;
  [(MTL4FunctionDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MTL4StitchedFunctionDescriptor;
  v5 = [(MTL4FunctionDescriptor *)&v7 copyWithZone:?];
  v5[2] = [(MTLFunctionStitchingGraph *)self->_functionGraph copyWithZone:a3];
  v5[3] = [(NSArray *)self->_functionDescriptors copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v11.receiver = self;
      v11.super_class = MTL4StitchedFunctionDescriptor;
      v8 = [(MTL4FunctionDescriptor *)&v11 isEqual:a3];
      if (v8)
      {
        functionGraph = self->_functionGraph;
        if (functionGraph == *(a3 + 2) || (v8 = [(MTLFunctionStitchingGraph *)functionGraph isEqual:?]) != 0)
        {
          LOBYTE(v8) = MTLCompareArray(self->_functionDescriptors, *(a3 + 3), 1, 0);
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v5, 0x18uLL);
  v5[0] = [(MTLFunctionStitchingGraph *)self->_functionGraph hash];
  v5[1] = MTLHashArray(self->_functionDescriptors, 1, 0);
  v4.receiver = self;
  v4.super_class = MTL4StitchedFunctionDescriptor;
  v5[2] = [(MTL4FunctionDescriptor *)&v4 hash];
  return _MTLHashState(v5, 0x18uLL);
}

@end