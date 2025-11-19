@interface MTL4RenderPipelineDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4RenderPipelineDescriptor)init;
- (MTL4StaticLinkingDescriptor)fragmentStaticLinkingDescriptor;
- (MTL4StaticLinkingDescriptor)vertexStaticLinkingDescriptor;
- (MTLVertexDescriptor)vertexDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setFragmentStaticLinkingDescriptor:(id)a3;
- (void)setVertexDescriptor:(id)a3;
- (void)setVertexStaticLinkingDescriptor:(id)a3;
@end

@implementation MTL4RenderPipelineDescriptor

- (MTL4RenderPipelineDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4RenderPipelineDescriptor;
  v2 = [(MTL4PipelineDescriptor *)&v4 init];
  [(MTL4RenderPipelineDescriptor *)v2 reset];
  return v2;
}

- (MTLVertexDescriptor)vertexDescriptor
{
  result = self->_vertexDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTLVertexDescriptorInternal);
    self->_vertexDescriptor = result;
  }

  return result;
}

- (void)setVertexDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4RenderPipelineDescriptor *)isKindOfClass setVertexDescriptor:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  vertexDescriptor = self->_vertexDescriptor;
  if (vertexDescriptor != a3)
  {

    self->_vertexDescriptor = [a3 copy];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MTL4RenderPipelineDescriptor;
  v5 = [(MTL4PipelineDescriptor *)&v7 copyWithZone:?];
  *(v5 + 10) = [(MTL4FunctionDescriptor *)self->_vertexFunctionDescriptor copyWithZone:a3];
  *(v5 + 11) = [(MTL4FunctionDescriptor *)self->_fragmentFunctionDescriptor copyWithZone:a3];
  *(v5 + 8) = [(MTLVertexDescriptor *)self->_vertexDescriptor copyWithZone:a3];

  *(v5 + 16) = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments copyWithZone:a3];
  *(v5 + 18) = self->_colorAttachmentMappingState;
  *(v5 + 12) = self->_rasterSampleCount;
  *(v5 + 13) = self->_alphaToCoverageState;
  *(v5 + 14) = self->_alphaToOneState;
  *(v5 + 40) = self->_rasterizationEnabled;
  *(v5 + 15) = self->_maxVertexAmplificationCount;
  *(v5 + 17) = self->_inputPrimitiveTopology;
  *(v5 + 41) = self->_supportVertexBinaryLinking;
  *(v5 + 42) = self->_supportFragmentBinaryLinking;
  *(v5 + 7) = [(MTL4StaticLinkingDescriptor *)self->_vertexStaticLinkingDescriptor copyWithZone:a3];
  *(v5 + 6) = [(MTL4StaticLinkingDescriptor *)self->_fragmentStaticLinkingDescriptor copyWithZone:a3];
  [v5 setSupportIndirectCommandBuffers:{-[MTL4RenderPipelineDescriptor supportIndirectCommandBuffers](self, "supportIndirectCommandBuffers")}];
  *(v5 + 19) = self->_colorSampleCount;
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4RenderPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v16 = v3;
  v17 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v15.receiver = self;
  v15.super_class = MTL4RenderPipelineDescriptor;
  v8 = [(MTL4PipelineDescriptor *)&v15 isEqual:a3];
  if (v8)
  {
    v9 = *(a3 + 10);
    if (v9 == self->_vertexFunctionDescriptor || (v8 = [(MTL4FunctionDescriptor *)v9 isEqual:?]) != 0)
    {
      v10 = *(a3 + 11);
      if (v10 == self->_fragmentFunctionDescriptor || (v8 = [(MTL4FunctionDescriptor *)v10 isEqual:?]) != 0)
      {
        v8 = MTLVertexDescriptorEquivalent(self->_vertexDescriptor, *(a3 + 8));
        if (v8)
        {
          fragmentStaticLinkingDescriptor = self->_fragmentStaticLinkingDescriptor;
          if (fragmentStaticLinkingDescriptor == *(a3 + 6) || (v8 = [(MTL4StaticLinkingDescriptor *)fragmentStaticLinkingDescriptor isEqual:?]) != 0)
          {
            vertexStaticLinkingDescriptor = self->_vertexStaticLinkingDescriptor;
            if (vertexStaticLinkingDescriptor == *(a3 + 7) || (v8 = [(MTL4StaticLinkingDescriptor *)vertexStaticLinkingDescriptor isEqual:?]) != 0)
            {
              colorAttachments = self->_colorAttachments;
              if (colorAttachments == *(a3 + 16) || (v8 = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)colorAttachments isEqual:?]) != 0)
              {
                if (*(a3 + 12) == self->_rasterSampleCount && *(a3 + 13) == self->_alphaToCoverageState && *(a3 + 14) == self->_alphaToOneState && *(a3 + 40) == self->_rasterizationEnabled && *(a3 + 15) == self->_maxVertexAmplificationCount && *(a3 + 17) == self->_inputPrimitiveTopology && *(a3 + 41) == self->_supportVertexBinaryLinking && *(a3 + 42) == self->_supportFragmentBinaryLinking && *(a3 + 18) == self->_colorAttachmentMappingState && *(a3 + 9) == self->_supportIndirectCommandBuffers)
                {
                  LOBYTE(v8) = *(a3 + 19) == self->_colorSampleCount;
                  return v8;
                }

LABEL_3:
                LOBYTE(v8) = 0;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v16, 0x90uLL);
  v16[0] = [(MTL4FunctionDescriptor *)self->_vertexFunctionDescriptor hash];
  v16[1] = [(MTL4FunctionDescriptor *)self->_fragmentFunctionDescriptor hash];
  v3 = [(MTLVertexDescriptor *)self->_vertexDescriptor hash];
  rasterSampleCount = self->_rasterSampleCount;
  v16[2] = v3;
  v16[3] = rasterSampleCount;
  alphaToOneState = self->_alphaToOneState;
  v16[4] = self->_alphaToCoverageState;
  v16[5] = alphaToOneState;
  maxVertexAmplificationCount = self->_maxVertexAmplificationCount;
  v16[6] = self->_rasterizationEnabled;
  v16[7] = maxVertexAmplificationCount;
  v7 = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments hash];
  inputPrimitiveTopology = self->_inputPrimitiveTopology;
  v16[8] = v7;
  v16[9] = inputPrimitiveTopology;
  supportFragmentBinaryLinking = self->_supportFragmentBinaryLinking;
  v16[12] = self->_supportVertexBinaryLinking;
  v16[13] = supportFragmentBinaryLinking;
  v16[10] = [(MTL4StaticLinkingDescriptor *)self->_vertexStaticLinkingDescriptor hash];
  v10 = [(MTL4StaticLinkingDescriptor *)self->_fragmentStaticLinkingDescriptor hash];
  colorAttachmentMappingState = self->_colorAttachmentMappingState;
  v16[11] = v10;
  supportIndirectCommandBuffers = self->_supportIndirectCommandBuffers;
  colorSampleCount = self->_colorSampleCount;
  v16[14] = colorAttachmentMappingState;
  v16[15] = supportIndirectCommandBuffers;
  v16[16] = colorSampleCount;
  v15.receiver = self;
  v15.super_class = MTL4RenderPipelineDescriptor;
  v16[17] = [(MTL4PipelineDescriptor *)&v15 hash];
  return _MTLHashState(v16, 0x90uLL);
}

- (void)reset
{
  self->_vertexFunctionDescriptor = 0;

  self->_fragmentFunctionDescriptor = 0;
  self->_vertexDescriptor = 0;
  self->_rasterSampleCount = 1;
  self->_alphaToCoverageState = 0;
  self->_alphaToOneState = 0;
  self->_rasterizationEnabled = 1;
  self->_maxVertexAmplificationCount = 1;

  self->_colorAttachments = objc_alloc_init(MTL4RenderPipelineColorAttachmentDescriptorArray);
  self->_inputPrimitiveTopology = 0;
  self->_supportVertexBinaryLinking = 0;
  self->_supportFragmentBinaryLinking = 0;

  self->_vertexStaticLinkingDescriptor = 0;
  self->_fragmentStaticLinkingDescriptor = 0;
  self->_colorAttachmentMappingState = 0;
  self->_colorSampleCount = 0;
  v3.receiver = self;
  v3.super_class = MTL4RenderPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 reset];
}

- (MTL4StaticLinkingDescriptor)vertexStaticLinkingDescriptor
{
  result = self->_vertexStaticLinkingDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTL4StaticLinkingDescriptor);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_vertexStaticLinkingDescriptor, &v4, result);
    if (v4)
    {

      return self->_vertexStaticLinkingDescriptor;
    }

    else
    {
      self->_vertexStaticLinkingDescriptor = result;
    }
  }

  return result;
}

- (void)setVertexStaticLinkingDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4RenderPipelineDescriptor *)isKindOfClass setVertexStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_vertexStaticLinkingDescriptor != a3)
  {
    vertexStaticLinkingDescriptor = self->_vertexStaticLinkingDescriptor;
    self->_vertexStaticLinkingDescriptor = [a3 copy];
  }
}

- (MTL4StaticLinkingDescriptor)fragmentStaticLinkingDescriptor
{
  result = self->_fragmentStaticLinkingDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTL4StaticLinkingDescriptor);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_fragmentStaticLinkingDescriptor, &v4, result);
    if (v4)
    {

      return self->_fragmentStaticLinkingDescriptor;
    }

    else
    {
      self->_fragmentStaticLinkingDescriptor = result;
    }
  }

  return result;
}

- (void)setFragmentStaticLinkingDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4RenderPipelineDescriptor *)isKindOfClass setFragmentStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_fragmentStaticLinkingDescriptor != a3)
  {
    fragmentStaticLinkingDescriptor = self->_fragmentStaticLinkingDescriptor;
    self->_fragmentStaticLinkingDescriptor = [a3 copy];
  }
}

@end