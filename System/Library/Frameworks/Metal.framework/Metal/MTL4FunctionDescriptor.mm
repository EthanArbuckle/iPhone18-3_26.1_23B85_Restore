@interface MTL4FunctionDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4FunctionDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation MTL4FunctionDescriptor

- (MTL4FunctionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4FunctionDescriptor;
  return [(MTL4FunctionDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4FunctionDescriptor;
  [(MTL4FunctionDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(MTL4PipelineOptions *)self->_pipelineOptions copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (Class = object_getClass(self), Class == object_getClass(equal)))
    {
      v7 = *(equal + 1);
      if (v7 == self->_pipelineOptions || (v6 = [(MTL4PipelineOptions *)v7 isEqual:?]))
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end