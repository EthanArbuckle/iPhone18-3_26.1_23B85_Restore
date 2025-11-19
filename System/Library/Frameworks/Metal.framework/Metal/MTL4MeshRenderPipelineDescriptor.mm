@interface MTL4MeshRenderPipelineDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4MeshRenderPipelineDescriptor)init;
- (MTL4StaticLinkingDescriptor)fragmentStaticLinkingDescriptor;
- (MTL4StaticLinkingDescriptor)meshStaticLinkingDescriptor;
- (MTL4StaticLinkingDescriptor)objectStaticLinkingDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setFragmentStaticLinkingDescriptor:(id)a3;
- (void)setMeshStaticLinkingDescriptor:(id)a3;
- (void)setObjectStaticLinkingDescriptor:(id)a3;
- (void)setRequiredThreadsPerMeshThreadgroup:(id *)a3;
- (void)setRequiredThreadsPerObjectThreadgroup:(id *)a3;
@end

@implementation MTL4MeshRenderPipelineDescriptor

- (MTL4MeshRenderPipelineDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4MeshRenderPipelineDescriptor;
  v2 = [(MTL4PipelineDescriptor *)&v4 init];
  [(MTL4MeshRenderPipelineDescriptor *)v2 reset];
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4MeshRenderPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MTL4MeshRenderPipelineDescriptor;
  v5 = [(MTL4PipelineDescriptor *)&v9 copyWithZone:?];
  *(v5 + 10) = [(MTL4FunctionDescriptor *)self->_objectFunctionDescriptor copyWithZone:a3];
  *(v5 + 11) = [(MTL4FunctionDescriptor *)self->_meshFunctionDescriptor copyWithZone:a3];
  *(v5 + 12) = [(MTL4FunctionDescriptor *)self->_fragmentFunctionDescriptor copyWithZone:a3];
  *(v5 + 13) = self->_maxTotalThreadsPerObjectThreadgroup;
  *(v5 + 14) = self->_maxTotalThreadsPerMeshThreadgroup;
  v5[40] = self->_objectThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  v5[41] = self->_meshThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  *(v5 + 15) = self->_payloadMemoryLength;
  *(v5 + 16) = self->_maxTotalThreadgroupsPerMeshGrid;
  *(v5 + 17) = self->_rasterSampleCount;
  *(v5 + 18) = self->_alphaToCoverageState;
  *(v5 + 19) = self->_alphaToOneState;
  v5[42] = self->_rasterizationEnabled;
  *(v5 + 20) = self->_maxVertexAmplificationCount;

  *(v5 + 21) = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments copyWithZone:a3];
  *(v5 + 8) = [(MTL4StaticLinkingDescriptor *)self->_objectStaticLinkingDescriptor copyWithZone:a3];
  *(v5 + 7) = [(MTL4StaticLinkingDescriptor *)self->_meshStaticLinkingDescriptor copyWithZone:a3];
  *(v5 + 6) = [(MTL4StaticLinkingDescriptor *)self->_fragmentStaticLinkingDescriptor copyWithZone:a3];
  v5[43] = self->_supportObjectBinaryLinking;
  v5[44] = self->_supportMeshBinaryLinking;
  v5[45] = self->_supportFragmentBinaryLinking;
  *(v5 + 22) = self->_colorAttachmentMappingState;
  depth = self->_requiredThreadsPerObjectThreadgroup.depth;
  *(v5 + 12) = *&self->_requiredThreadsPerObjectThreadgroup.width;
  *(v5 + 26) = depth;
  v7 = self->_requiredThreadsPerMeshThreadgroup.depth;
  *(v5 + 216) = *&self->_requiredThreadsPerMeshThreadgroup.width;
  *(v5 + 29) = v7;
  [v5 setSupportIndirectCommandBuffers:{-[MTL4MeshRenderPipelineDescriptor supportIndirectCommandBuffers](self, "supportIndirectCommandBuffers")}];
  *(v5 + 23) = self->_colorSampleCount;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v18 = v3;
  v19 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v17.receiver = self;
  v17.super_class = MTL4MeshRenderPipelineDescriptor;
  v8 = [(MTL4PipelineDescriptor *)&v17 isEqual:a3];
  if (v8)
  {
    objectFunctionDescriptor = self->_objectFunctionDescriptor;
    if (objectFunctionDescriptor == *(a3 + 10) || (v8 = [(MTL4FunctionDescriptor *)objectFunctionDescriptor isEqual:?]) != 0)
    {
      fragmentFunctionDescriptor = self->_fragmentFunctionDescriptor;
      if (fragmentFunctionDescriptor == *(a3 + 12) || (v8 = [(MTL4FunctionDescriptor *)fragmentFunctionDescriptor isEqual:?]) != 0)
      {
        meshFunctionDescriptor = self->_meshFunctionDescriptor;
        if (meshFunctionDescriptor == *(a3 + 11) || (v8 = [(MTL4FunctionDescriptor *)meshFunctionDescriptor isEqual:?]) != 0)
        {
          colorAttachments = self->_colorAttachments;
          if (colorAttachments == *(a3 + 21) || (v8 = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)colorAttachments isEqual:?]) != 0)
          {
            meshStaticLinkingDescriptor = self->_meshStaticLinkingDescriptor;
            if (meshStaticLinkingDescriptor == *(a3 + 7) || (v8 = [(MTL4StaticLinkingDescriptor *)meshStaticLinkingDescriptor isEqual:?]) != 0)
            {
              objectStaticLinkingDescriptor = self->_objectStaticLinkingDescriptor;
              if (objectStaticLinkingDescriptor == *(a3 + 8) || (v8 = [(MTL4StaticLinkingDescriptor *)objectStaticLinkingDescriptor isEqual:?]) != 0)
              {
                fragmentStaticLinkingDescriptor = self->_fragmentStaticLinkingDescriptor;
                if (fragmentStaticLinkingDescriptor == *(a3 + 6) || (v8 = [(MTL4StaticLinkingDescriptor *)fragmentStaticLinkingDescriptor isEqual:?]) != 0)
                {
                  if (*(a3 + 13) == self->_maxTotalThreadsPerObjectThreadgroup && *(a3 + 14) == self->_maxTotalThreadsPerMeshThreadgroup && *(a3 + 40) == self->_objectThreadgroupSizeIsMultipleOfThreadExecutionWidth && *(a3 + 41) == self->_meshThreadgroupSizeIsMultipleOfThreadExecutionWidth && *(a3 + 15) == self->_payloadMemoryLength && *(a3 + 16) == self->_maxTotalThreadgroupsPerMeshGrid && *(a3 + 17) == self->_rasterSampleCount && *(a3 + 18) == self->_alphaToCoverageState && *(a3 + 19) == self->_alphaToOneState && *(a3 + 42) == self->_rasterizationEnabled && *(a3 + 20) == self->_maxVertexAmplificationCount && *(a3 + 43) == self->_supportObjectBinaryLinking && *(a3 + 44) == self->_supportMeshBinaryLinking && *(a3 + 45) == self->_supportFragmentBinaryLinking && *(a3 + 22) == self->_colorAttachmentMappingState && *(a3 + 24) == self->_requiredThreadsPerObjectThreadgroup.width && *(a3 + 25) == self->_requiredThreadsPerObjectThreadgroup.height && *(a3 + 26) == self->_requiredThreadsPerObjectThreadgroup.depth && *(a3 + 27) == self->_requiredThreadsPerMeshThreadgroup.width && *(a3 + 28) == self->_requiredThreadsPerMeshThreadgroup.height && *(a3 + 29) == self->_requiredThreadsPerMeshThreadgroup.depth && *(a3 + 9) == self->_supportIndirectCommandBuffers)
                  {
                    LOBYTE(v8) = *(a3 + 23) == self->_colorSampleCount;
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
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v18, 0xF8uLL);
  v18[0] = [(MTL4FunctionDescriptor *)self->_objectFunctionDescriptor hash];
  v18[1] = [(MTL4FunctionDescriptor *)self->_meshFunctionDescriptor hash];
  v3 = [(MTL4FunctionDescriptor *)self->_fragmentFunctionDescriptor hash];
  maxTotalThreadsPerObjectThreadgroup = self->_maxTotalThreadsPerObjectThreadgroup;
  v18[2] = v3;
  v18[3] = maxTotalThreadsPerObjectThreadgroup;
  objectThreadgroupSizeIsMultipleOfThreadExecutionWidth = self->_objectThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  v18[4] = self->_maxTotalThreadsPerMeshThreadgroup;
  v18[5] = objectThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  payloadMemoryLength = self->_payloadMemoryLength;
  v18[6] = self->_meshThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  v18[7] = payloadMemoryLength;
  rasterSampleCount = self->_rasterSampleCount;
  v18[8] = self->_maxTotalThreadgroupsPerMeshGrid;
  v18[9] = rasterSampleCount;
  alphaToOneState = self->_alphaToOneState;
  v18[10] = self->_alphaToCoverageState;
  v18[11] = alphaToOneState;
  maxVertexAmplificationCount = self->_maxVertexAmplificationCount;
  v18[12] = self->_rasterizationEnabled;
  v18[13] = maxVertexAmplificationCount;
  v18[14] = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments hash];
  v18[15] = [(MTL4StaticLinkingDescriptor *)self->_objectStaticLinkingDescriptor hash];
  v18[16] = [(MTL4StaticLinkingDescriptor *)self->_meshStaticLinkingDescriptor hash];
  v10 = [(MTL4StaticLinkingDescriptor *)self->_fragmentStaticLinkingDescriptor hash];
  supportObjectBinaryLinking = self->_supportObjectBinaryLinking;
  supportMeshBinaryLinking = self->_supportMeshBinaryLinking;
  v18[17] = v10;
  v18[18] = supportObjectBinaryLinking;
  supportFragmentBinaryLinking = self->_supportFragmentBinaryLinking;
  v18[19] = supportMeshBinaryLinking;
  v18[20] = supportFragmentBinaryLinking;
  v18[21] = self->_colorAttachmentMappingState;
  requiredThreadsPerObjectThreadgroup = self->_requiredThreadsPerObjectThreadgroup;
  depth = self->_requiredThreadsPerMeshThreadgroup.depth;
  v20 = *&self->_requiredThreadsPerMeshThreadgroup.width;
  supportIndirectCommandBuffers = self->_supportIndirectCommandBuffers;
  v21 = depth;
  v22 = supportIndirectCommandBuffers;
  colorSampleCount = self->_colorSampleCount;
  v17.receiver = self;
  v17.super_class = MTL4MeshRenderPipelineDescriptor;
  v24 = [(MTL4PipelineDescriptor *)&v17 hash];
  return _MTLHashState(v18, 0xF8uLL);
}

- (void)reset
{
  self->_objectFunctionDescriptor = 0;

  self->_meshFunctionDescriptor = 0;
  self->_fragmentFunctionDescriptor = 0;
  self->_maxTotalThreadsPerObjectThreadgroup = 0;
  self->_maxTotalThreadsPerMeshThreadgroup = 0;
  self->_maxTotalThreadgroupsPerMeshGrid = 0;
  self->_objectThreadgroupSizeIsMultipleOfThreadExecutionWidth = 0;
  self->_meshThreadgroupSizeIsMultipleOfThreadExecutionWidth = 0;
  self->_payloadMemoryLength = 0;
  self->_rasterSampleCount = 1;
  self->_alphaToCoverageState = 0;
  self->_alphaToOneState = 0;
  self->_rasterizationEnabled = 1;
  self->_maxVertexAmplificationCount = 1;

  self->_colorAttachments = objc_alloc_init(MTL4RenderPipelineColorAttachmentDescriptorArray);
  self->_objectStaticLinkingDescriptor = 0;

  self->_meshStaticLinkingDescriptor = 0;
  self->_fragmentStaticLinkingDescriptor = 0;
  self->_supportObjectBinaryLinking = 0;
  self->_supportMeshBinaryLinking = 0;
  self->_supportFragmentBinaryLinking = 0;
  self->_colorAttachmentMappingState = 0;
  self->_requiredThreadsPerObjectThreadgroup.height = 0;
  self->_requiredThreadsPerObjectThreadgroup.depth = 0;
  self->_requiredThreadsPerObjectThreadgroup.width = 0;
  self->_requiredThreadsPerMeshThreadgroup.height = 0;
  self->_requiredThreadsPerMeshThreadgroup.depth = 0;
  self->_requiredThreadsPerMeshThreadgroup.width = 0;
  self->_colorSampleCount = 0;
  v3.receiver = self;
  v3.super_class = MTL4MeshRenderPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 reset];
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
      [(MTL4MeshRenderPipelineDescriptor *)isKindOfClass setFragmentStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_fragmentStaticLinkingDescriptor != a3)
  {
    fragmentStaticLinkingDescriptor = self->_fragmentStaticLinkingDescriptor;
    self->_fragmentStaticLinkingDescriptor = [a3 copy];
  }
}

- (MTL4StaticLinkingDescriptor)meshStaticLinkingDescriptor
{
  result = self->_meshStaticLinkingDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTL4StaticLinkingDescriptor);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_meshStaticLinkingDescriptor, &v4, result);
    if (v4)
    {

      return self->_meshStaticLinkingDescriptor;
    }

    else
    {
      self->_meshStaticLinkingDescriptor = result;
    }
  }

  return result;
}

- (void)setMeshStaticLinkingDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4MeshRenderPipelineDescriptor *)isKindOfClass setMeshStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_meshStaticLinkingDescriptor != a3)
  {
    meshStaticLinkingDescriptor = self->_meshStaticLinkingDescriptor;
    self->_meshStaticLinkingDescriptor = [a3 copy];
  }
}

- (MTL4StaticLinkingDescriptor)objectStaticLinkingDescriptor
{
  result = self->_objectStaticLinkingDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTL4StaticLinkingDescriptor);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_objectStaticLinkingDescriptor, &v4, result);
    if (v4)
    {

      return self->_objectStaticLinkingDescriptor;
    }

    else
    {
      self->_objectStaticLinkingDescriptor = result;
    }
  }

  return result;
}

- (void)setObjectStaticLinkingDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4MeshRenderPipelineDescriptor *)isKindOfClass setObjectStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_objectStaticLinkingDescriptor != a3)
  {
    objectStaticLinkingDescriptor = self->_objectStaticLinkingDescriptor;
    self->_objectStaticLinkingDescriptor = [a3 copy];
  }
}

- (void)setRequiredThreadsPerObjectThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_requiredThreadsPerObjectThreadgroup.width = *&a3->var0;
  self->_requiredThreadsPerObjectThreadgroup.depth = var2;
}

- (void)setRequiredThreadsPerMeshThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_requiredThreadsPerMeshThreadgroup.width = *&a3->var0;
  self->_requiredThreadsPerMeshThreadgroup.depth = var2;
}

@end