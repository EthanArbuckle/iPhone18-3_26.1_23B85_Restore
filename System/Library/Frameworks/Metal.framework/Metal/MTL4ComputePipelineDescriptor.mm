@interface MTL4ComputePipelineDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4ComputePipelineDescriptor)init;
- (MTL4StaticLinkingDescriptor)staticLinkingDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setRequiredThreadsPerThreadgroup:(id *)a3;
- (void)setStaticLinkingDescriptor:(id)a3;
@end

@implementation MTL4ComputePipelineDescriptor

- (MTL4ComputePipelineDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4ComputePipelineDescriptor;
  v2 = [(MTL4PipelineDescriptor *)&v4 init];
  [(MTL4ComputePipelineDescriptor *)v2 reset];
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ComputePipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MTL4ComputePipelineDescriptor;
  v5 = [(MTL4PipelineDescriptor *)&v8 copyWithZone:?];
  v5[8] = [(MTL4FunctionDescriptor *)self->_computeFunctionDescriptor copyWithZone:a3];
  *(v5 + 40) = self->_threadGroupSizeIsMultipleOfThreadExecutionWidth;
  v5[9] = self->_maxTotalThreadsPerThreadgroup;
  *(v5 + 41) = self->_supportBinaryLinking;
  v5[6] = [(MTL4StaticLinkingDescriptor *)self->_staticLinkingDescriptor copyWithZone:a3];
  v6 = *&self->_requiredThreadsPerThreadgroup.width;
  v5[12] = self->_requiredThreadsPerThreadgroup.depth;
  *(v5 + 5) = v6;
  [v5 setSupportIndirectCommandBuffers:{-[MTL4ComputePipelineDescriptor supportIndirectCommandBuffers](self, "supportIndirectCommandBuffers")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v13 = v3;
  v14 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v12.receiver = self;
  v12.super_class = MTL4ComputePipelineDescriptor;
  v8 = [(MTL4PipelineDescriptor *)&v12 isEqual:a3];
  if (v8)
  {
    staticLinkingDescriptor = self->_staticLinkingDescriptor;
    if (staticLinkingDescriptor == *(a3 + 6) || (v8 = [(MTL4StaticLinkingDescriptor *)staticLinkingDescriptor isEqual:?]) != 0)
    {
      computeFunctionDescriptor = self->_computeFunctionDescriptor;
      if (computeFunctionDescriptor == *(a3 + 8) || (v8 = [(MTL4FunctionDescriptor *)computeFunctionDescriptor isEqual:?]) != 0)
      {
        if (*(a3 + 40) == self->_threadGroupSizeIsMultipleOfThreadExecutionWidth && *(a3 + 9) == self->_maxTotalThreadsPerThreadgroup && *(a3 + 41) == self->_supportBinaryLinking && *(a3 + 10) == self->_requiredThreadsPerThreadgroup.width && *(a3 + 11) == self->_requiredThreadsPerThreadgroup.height && *(a3 + 12) == self->_requiredThreadsPerThreadgroup.depth)
        {
          LOBYTE(v8) = *(a3 + 7) == self->_supportIndirectCommandBuffers;
          return v8;
        }

LABEL_3:
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v9, 0x50uLL);
  v3 = [(MTL4FunctionDescriptor *)self->_computeFunctionDescriptor hash];
  threadGroupSizeIsMultipleOfThreadExecutionWidth = self->_threadGroupSizeIsMultipleOfThreadExecutionWidth;
  v9[0] = v3;
  v9[1] = threadGroupSizeIsMultipleOfThreadExecutionWidth;
  supportBinaryLinking = self->_supportBinaryLinking;
  v9[2] = self->_maxTotalThreadsPerThreadgroup;
  v9[3] = supportBinaryLinking;
  v9[4] = [(MTL4StaticLinkingDescriptor *)self->_staticLinkingDescriptor hash];
  v10 = *&self->_requiredThreadsPerThreadgroup.width;
  supportIndirectCommandBuffers = self->_supportIndirectCommandBuffers;
  depth = self->_requiredThreadsPerThreadgroup.depth;
  v12 = supportIndirectCommandBuffers;
  v8.receiver = self;
  v8.super_class = MTL4ComputePipelineDescriptor;
  v13 = [(MTL4PipelineDescriptor *)&v8 hash];
  return _MTLHashState(v9, 0x50uLL);
}

- (void)reset
{
  self->_computeFunctionDescriptor = 0;
  self->_threadGroupSizeIsMultipleOfThreadExecutionWidth = 0;
  self->_maxTotalThreadsPerThreadgroup = 0;
  self->_requiredThreadsPerThreadgroup.height = 0;
  self->_requiredThreadsPerThreadgroup.depth = 0;
  self->_requiredThreadsPerThreadgroup.width = 0;
  self->_supportBinaryLinking = 0;

  self->_staticLinkingDescriptor = 0;
  v3.receiver = self;
  v3.super_class = MTL4ComputePipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 reset];
}

- (MTL4StaticLinkingDescriptor)staticLinkingDescriptor
{
  result = self->_staticLinkingDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTL4StaticLinkingDescriptor);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_staticLinkingDescriptor, &v4, result);
    if (v4)
    {

      return self->_staticLinkingDescriptor;
    }

    else
    {
      self->_staticLinkingDescriptor = result;
    }
  }

  return result;
}

- (void)setStaticLinkingDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4ComputePipelineDescriptor *)isKindOfClass setStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_staticLinkingDescriptor != a3)
  {
    staticLinkingDescriptor = self->_staticLinkingDescriptor;
    self->_staticLinkingDescriptor = [a3 copy];
  }
}

- (void)setRequiredThreadsPerThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_requiredThreadsPerThreadgroup.width = *&a3->var0;
  self->_requiredThreadsPerThreadgroup.depth = var2;
}

@end