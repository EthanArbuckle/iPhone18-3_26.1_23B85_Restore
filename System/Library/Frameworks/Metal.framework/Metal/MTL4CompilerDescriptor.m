@interface MTL4CompilerDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4CompilerDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4CompilerDescriptor

- (MTL4CompilerDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4CompilerDescriptor;
  result = [(MTL4CompilerDescriptor *)&v3 init];
  result->_shouldMaximizeConcurrentCompilation = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 24) = self->_pipelineDataSetSerializer;
  *(v4 + 8) = self->_shouldMaximizeConcurrentCompilation;
  [v4 setLabel:self->_label];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
LABEL_6:
      LOBYTE(v7) = 0;
      return v7;
    }

    label = self->_label;
    if (label == *(a3 + 2) || (v7 = [(NSString *)label isEqual:?]) != 0)
    {
      if (*(a3 + 3) != self->_pipelineDataSetSerializer)
      {
        goto LABEL_6;
      }

      LOBYTE(v7) = *(a3 + 8) == self->_shouldMaximizeConcurrentCompilation;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  bzero(v6, 0x18uLL);
  v3 = [(MTL4PipelineDataSetSerializer *)self->_pipelineDataSetSerializer hash];
  shouldMaximizeConcurrentCompilation = self->_shouldMaximizeConcurrentCompilation;
  v6[0] = v3;
  v6[1] = shouldMaximizeConcurrentCompilation;
  v6[2] = [(NSString *)self->_label hash];
  return _MTLHashState(v6, 0x18uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4CompilerDescriptor;
  [(MTL4CompilerDescriptor *)&v3 dealloc];
}

@end