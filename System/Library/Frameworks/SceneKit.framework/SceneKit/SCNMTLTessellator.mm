@interface SCNMTLTessellator
- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (SCNMTLTessellator)initWithGeometry:(__C3DGeometry *)geometry resourceManager:(id)manager;
- (id)newPipelineStateConfiguratorForMeshElement:(id)element patchType:(unsigned __int8)type device:(id)device;
- (unsigned)pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)dealloc;
- (void)draw:(id *)draw;
- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)subdivisionSurfaceTessellationDraw:(id *)draw;
- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)update:(id *)update;
- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateUniformTessellator:(id *)tessellator;
@end

@implementation SCNMTLTessellator

- (SCNMTLTessellator)initWithGeometry:(__C3DGeometry *)geometry resourceManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = SCNMTLTessellator;
  result = [(SCNMTLTessellator *)&v7 init];
  if (result)
  {
    result->_geometry = geometry;
    result->_resourceManager = manager;
    *&result->_cachedTessellator.tessellationPartitionMode = 0;
    result->_cachedTessellator.parameters = 0;
    *&result->_cachedTessellator.type = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLTessellator;
  [(SCNMTLTessellator *)&v3 dealloc];
}

- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type
{
  type = self->_cachedTessellator.type;
  if ((type - 1) < 3)
  {
    tessellationPartitionMode = self->_cachedTessellator.tessellationPartitionMode;
LABEL_5:
    v9 = (tessellationPartitionMode & 3);
    goto LABEL_6;
  }

  if (type == 4)
  {
    GPUContext = C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
    LOBYTE(tessellationPartitionMode) = C3DSubdivisionOsdGPUGetTessellationPartitionMode(GPUContext);
    type = self->_cachedTessellator.type;
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  if (type == 4)
  {
    C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
    v9 = (*&v9 & 0xFFFFFFF3 | (4 * (C3DSceneSourceGetSceneCount() & 3)));
    type = self->_cachedTessellator.type;
  }

  else if (type == 3)
  {
    v9 = (*&v9 | 4);
    goto LABEL_11;
  }

  if ((type - 1) < 3)
  {
LABEL_11:
    elements = [(SCNMTLMesh *)element elements];
    if (elements == 1)
    {
      v9 = (*&v9 | 0x20);
    }

    else if (elements)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLTessellator _pipelineStateHashForMeshElement:element patchType:v11];
      }
    }

    else
    {
      v9 = (*&v9 | 0x10);
    }

    goto LABEL_22;
  }

  if (type != 4)
  {
    if (!type)
    {
      return v9;
    }

    goto LABEL_23;
  }

  C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
  v9 = (*&v9 & 0xFFFFFFCF | (16 * (C3DParticleManagerGetUpdateQueue() & 3)));
LABEL_22:
  type = self->_cachedTessellator.type;
LABEL_23:
  if ((type - 1) < 3)
  {
    return (*&v9 | ((self->_cachedTessellator.tessellationFactorScale != 1.0) << 6));
  }

  return v9;
}

- (unsigned)pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type
{
  if ((type - 1) <= 1u && self->_cachedTessellator.type == 4)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLTessellator *)self _pipelineStateHashForMeshElement:element patchType:v4, v5];
  }
}

- (id)newPipelineStateConfiguratorForMeshElement:(id)element patchType:(unsigned __int8)type device:(id)device
{
  if ((type - 1) <= 1u && self->_cachedTessellator.type == 4)
  {
    return 0;
  }

  v13 = v5;
  v14 = v6;
  v9 = [(SCNMTLTessellator *)self _pipelineStateHashForMeshElement:element patchType:?];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SCNMTLTessellator_newPipelineStateConfiguratorForMeshElement_patchType_device___block_invoke;
  v11[3] = &unk_278302250;
  v12 = v9;
  v11[4] = device;
  return _Block_copy(v11);
}

uint64_t __81__SCNMTLTessellator_newPipelineStateConfiguratorForMeshElement_patchType_device___block_invoke(uint64_t a1, void *a2)
{
  [a2 setTessellationPartitionMode:*(a1 + 40) & 3];
  [a2 setTessellationFactorStepFunction:(*(a1 + 40) >> 2) & 3];
  [a2 setTessellationControlPointIndexType:(*(a1 + 40) >> 4) & 3];
  [a2 setTessellationFactorScaleEnabled:(*(a1 + 40) >> 6) & 1];
  [a2 setTessellationFactorFormat:0];
  [a2 setTessellationOutputWindingOrder:1];
  v4 = [*(a1 + 32) maxTessellationFactor];

  return [a2 setMaxTessellationFactor:v4];
}

- (void)update:(id *)update
{
  v15 = 0uLL;
  v16 = 0;
  C3DGeometryGetTessellator(self->_geometry, &v15);
  v5 = v15.n128_u8[0];
  p_cachedTessellator = &self->_cachedTessellator;
  if (v15.n128_u8[0] != self->_cachedTessellator.type)
  {

    self->_tessellationFactorBuffer = 0;
    v5 = v15.n128_u8[0];
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      v11 = v15;
      *&v12 = v16;
      [(SCNMTLTessellator *)self updateUniformTessellator:&v11];
    }

    else
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLTessellator update:v10];
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v14 = v16;
        v8 = *&update->var2;
        v11 = *&update->var0;
        v12 = v8;
        v13 = v15;
        [(SCNMTLTessellator *)self updateScreenSpaceAdaptiveTessellator:&v13 parameters:&v11];
        break;
      case 3:
        v14 = v16;
        v9 = *&update->var2;
        v11 = *&update->var0;
        v12 = v9;
        v13 = v15;
        [(SCNMTLTessellator *)self updateConstrainedEdgeLengthTessellator:&v13 parameters:&v11];
        break;
      case 4:
        v14 = v16;
        v7 = *&update->var2;
        v11 = *&update->var0;
        v12 = v7;
        v13 = v15;
        [(SCNMTLTessellator *)self updateSubdivisionSurfaceTessellator:&v13 parameters:&v11];
        break;
    }
  }

  *p_cachedTessellator = v15;
  p_cachedTessellator[1].n128_u64[0] = v16;
}

- (void)draw:(id *)draw
{
  v10 = 0uLL;
  v11 = 0;
  *&v5 = C3DGeometryGetTessellator(self->_geometry, &v10).n128_u64[0];
  if (v10.n128_u8[0] <= 1u)
  {
    if (v10.n128_u8[0])
    {
      if (v10.n128_u8[0] != 1)
      {
        return;
      }
    }

    else
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLTessellator update:v7];
      }
    }

    [(SCNMTLTessellator *)self uniformTessellationDrawMeshElement:draw->var3 forMesh:draw->var1 instanceCount:draw->var4 renderContext:draw->var5];
    return;
  }

  switch(v10.n128_u8[0])
  {
    case 2u:
      [(SCNMTLTessellator *)self screenSpaceAdaptiveTessellationDrawMeshElement:draw->var3 forMesh:draw->var1 instanceCount:draw->var4 renderContext:draw->var5, v5];
      break;
    case 3u:
      [(SCNMTLTessellator *)self constrainedEdgeLengthTessellationDrawMeshElement:draw->var3 forMesh:draw->var1 instanceCount:draw->var4 renderContext:draw->var5, v5];
      break;
    case 4u:
      v6 = *&draw->var2;
      v8[0] = *&draw->var0;
      v8[1] = v6;
      v8[2] = *&draw->var4;
      v9 = *&draw->var6;
      [(SCNMTLTessellator *)self subdivisionSurfaceTessellationDraw:v8];
      break;
  }
}

- (void)updateUniformTessellator:(id *)tessellator
{
  var0 = tessellator->var4.var0.var0;
  var1 = tessellator->var4.var0.var1;
  v6 = HIWORD(LODWORD(var0)) & 0x8000;
  v7 = (LODWORD(var0) >> 23);
  v8 = v7 - 112;
  v9 = v6 | 0x7BFF;
  if ((LODWORD(var0) & 0x7FFFFF) != 0)
  {
    LOWORD(v10) = v6 + 1;
  }

  else
  {
    v10 = HIWORD(LODWORD(var0)) & 0x8000;
  }

  v11 = v10 | 0x7C00;
  if (v7 == 255)
  {
    v9 = v11;
  }

  v12 = v7 - 113;
  if (v7 >= 0x71)
  {
    LOWORD(v13) = v9;
  }

  else
  {
    v13 = HIWORD(LODWORD(var0)) & 0x8000;
  }

  v14 = HIWORD(LODWORD(var0)) & 0x8000 | (LODWORD(var0) >> 13) & 0x3FF | (v8 << 10);
  if (v12 > 0x1D)
  {
    LOWORD(v14) = v13;
  }

  WORD2(v25) = v14;
  WORD1(v25) = v14;
  LOWORD(v25) = v14;
  v15 = HIWORD(LODWORD(var1)) & 0x8000;
  v16 = (LODWORD(var1) >> 23);
  v17 = v16 - 112;
  v18 = v16 - 113;
  v19 = v15 | 0x7BFF;
  if ((LODWORD(var1) & 0x7FFFFF) != 0)
  {
    LOWORD(v20) = v15 + 1;
  }

  else
  {
    v20 = HIWORD(LODWORD(var1)) & 0x8000;
  }

  v21 = v20 | 0x7C00;
  if (v16 == 255)
  {
    v19 = v21;
  }

  if (v16 >= 0x71)
  {
    LOWORD(v22) = v19;
  }

  else
  {
    v22 = HIWORD(LODWORD(var1)) & 0x8000;
  }

  v23 = HIWORD(LODWORD(var1)) & 0x8000 | (LODWORD(var1) >> 13) & 0x3FF | (v17 << 10);
  if (v18 > 0x1D)
  {
    LOWORD(v23) = v22;
  }

  HIWORD(v25) = v23;
  tessellationFactorBuffer = self->_tessellationFactorBuffer;
  if (tessellationFactorBuffer)
  {
    if (*&tessellator->var4 != *&self->_cachedTessellator.parameters)
    {
      *[(MTLBuffer *)tessellationFactorBuffer contents]= v25;
    }
  }

  else
  {
    self->_tessellationFactorBuffer = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self->_resourceManager) newBufferWithBytes:&v25 length:8 options:0];
  }
}

- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  renderEncoder = [(SCNMTLRenderContext *)context renderEncoder];
  *&v11 = self->_cachedTessellator.tessellationFactorScale;
  [*(renderEncoder + 3392) setTessellationFactorScale:v11];
  [*(renderEncoder + 3392) setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:0 instanceStride:0];

  [(SCNMTLRenderContext *)context _drawPatchForMeshElement:element instanceCount:count];
}

- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters
{
  v82 = *MEMORY[0x277D85DE8];
  var0 = parameters->var0;
  resourceComputeEncoder = [(SCNMTLRenderContext *)parameters->var1 resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v7 = resourceComputeEncoder[207];
  selfCopy = self;
  if (!self->_tessellationFactorBuffer)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    elements = [(SCNMTLMesh *)var0 elements];
    v9 = [elements countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v76;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v76 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v10 += [(SCNMTLMeshElement *)*(*(&v75 + 1) + 8 * i) primitiveCount];
        }

        v9 = [elements countByEnumeratingWithState:&v75 objects:v81 count:16];
      }

      while (v9);
      v9 = 24 * v10;
    }

    selfCopy->_tessellationFactorBuffer = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](selfCopy->_resourceManager) newBufferWithLength:v9 options:32];
  }

  commandQueue = [(SCNMTLResourceManager *)var0 commandQueue];
  v43 = [objc_msgSend(commandQueue "attributes")];
  v42 = [objc_msgSend(commandQueue "layouts")];
  [v7 pushDebugGroup:@"Compute SCNGeometryScreenSpaceAdaptiveTessellator tessellation factors"];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v44 = var0;
  obj = [(SCNMTLMesh *)var0 elements];
  v47 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (v47)
  {
    v14 = 0;
    v40 = *v72;
    v41 = v7;
    v39 = vdupq_n_s64(1uLL);
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v72 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v71 + 1) + 8 * j);
        elements2 = [(SCNMTLMesh *)v16 elements];
        if (elements2)
        {
          if (elements2 == 1)
          {
            v18 = @"compute_tessellation_factors_screeenspace_adaptive_uint32";
          }

          else
          {
            v19 = scn_default_log();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
            v18 = &stru_282DCC058;
            if (v20)
            {
              [SCNMTLTessellator updateScreenSpaceAdaptiveTessellator:v79 parameters:v16];
              v18 = &stru_282DCC058;
            }
          }
        }

        else
        {
          v18 = @"compute_tessellation_factors_screeenspace_adaptive_uint16";
        }

        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v18] computeEvaluator];
        primitiveCount = [(SCNMTLMeshElement *)v16 primitiveCount];
        buffer = [-[SCNMTLMeshElement indexBuffer](v16) buffer];
        offset = [-[SCNMTLMeshElement indexBuffer](v16) offset];
        libraryManager = [(SCNMTLResourceManager *)v16 libraryManager];
        v48 = [-[SCNMTLMesh buffers](v44) objectAtIndexedSubscript:{objc_msgSend(v43, "bufferIndex") - 18}];
        stride = [v42 stride];
        threadExecutionWidth = [computeEvaluator threadExecutionWidth];
        engineContext = [(SCNMTLRenderContext *)parameters->var1 engineContext];
        Viewport = C3DEngineContextGetViewport(engineContext);
        v27 = tessellator->var4.var0.var0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        Viewport.n128_f32[0] = Viewport.n128_f32[3] / v27;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        LODWORD(v57) = primitiveCount;
        BYTE4(v57) = stride;
        var2 = parameters->var2;
        v29 = *var2;
        v30 = *(var2 + 1);
        v31 = *(var2 + 3);
        v60 = *(var2 + 2);
        v61 = v31;
        v58 = v29;
        v59 = v30;
        v32 = *(var2 + 4);
        v33 = *(var2 + 5);
        v34 = *(var2 + 7);
        v64 = *(var2 + 6);
        v65 = v34;
        v62 = v32;
        v63 = v33;
        v35 = *(var2 + 8);
        v36 = *(var2 + 9);
        v37 = *(var2 + 11);
        v68 = *(var2 + 10);
        v69 = v37;
        v66 = v35;
        v67 = v36;
        LODWORD(v70) = Viewport.n128_u32[0];
        v7 = v41;
        [v41 setComputePipelineState:computeEvaluator];
        [v41 setBuffer:selfCopy->_tessellationFactorBuffer offset:24 * v14 atIndex:0];
        [v41 setBuffer:buffer offset:libraryManager + offset atIndex:1];
        [v41 setBuffer:v48 offset:0 atIndex:2];
        [v41 setBytes:&v57 length:224 atIndex:3];
        v55 = (primitiveCount + threadExecutionWidth - 1) / threadExecutionWidth;
        v56 = v39;
        v53 = threadExecutionWidth;
        v54 = v39;
        [v41 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v53];
        v14 += primitiveCount;
      }

      v47 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    }

    while (v47);
  }

  [v7 popDebugGroup];
}

- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  elements = [(SCNMTLMesh *)mesh elements];
  v11 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(elements);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if (v16 == element)
      {
        break;
      }

      v13 += [(SCNMTLMeshElement *)v16 primitiveCount];
      if (v12 == ++v15)
      {
        v12 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  renderEncoder = [(SCNMTLRenderContext *)context renderEncoder];
  *&v18 = self->_cachedTessellator.tessellationFactorScale;
  [*(renderEncoder + 3392) setTessellationFactorScale:{v18, v19}];
  [*(renderEncoder + 3392) setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:24 * v13 instanceStride:0];
  [(SCNMTLRenderContext *)context _drawPatchForMeshElement:element instanceCount:count];
}

- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters
{
  v56 = *MEMORY[0x277D85DE8];
  var0 = parameters->var0;
  if (self->_tessellationFactorBuffer)
  {
    if (tessellator->var4.var0.var0 == self->_cachedTessellator.parameters.uniform.edgeTessellationFactor)
    {
      return;
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    elements = [(SCNMTLMesh *)var0 elements];
    v9 = [elements countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v50;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v10 += [(SCNMTLMeshElement *)*(*(&v49 + 1) + 8 * i) primitiveCount];
        }

        v9 = [elements countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v9);
      v9 = 24 * v10;
    }

    self->_tessellationFactorBuffer = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self->_resourceManager) newBufferWithLength:v9 options:32];
  }

  selfCopy = self;
  tessellatorCopy = tessellator;
  resourceComputeEncoder = [(SCNMTLRenderContext *)parameters->var1 resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v14 = resourceComputeEncoder[207];
  commandQueue = [(SCNMTLResourceManager *)var0 commandQueue];
  v32 = [objc_msgSend(commandQueue "attributes")];
  v31 = [objc_msgSend(commandQueue "layouts")];
  [v14 pushDebugGroup:@"Compute kC3DGeometryTessellatorTypeConstrainedEdgeLength tessellation factors"];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = var0;
  obj = [(SCNMTLMesh *)var0 elements];
  v36 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v36)
  {
    v16 = 0;
    v30 = *v46;
    v29 = vdupq_n_s64(1uLL);
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v45 + 1) + 8 * j);
        elements2 = [(SCNMTLMesh *)v18 elements];
        if (elements2)
        {
          if (elements2 == 1)
          {
            v20 = @"compute_tessellation_factors_constrained_edge_uint32";
          }

          else
          {
            v21 = scn_default_log();
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
            v20 = &stru_282DCC058;
            if (v22)
            {
              [SCNMTLTessellator updateScreenSpaceAdaptiveTessellator:v53 parameters:v18];
              v20 = &stru_282DCC058;
            }
          }
        }

        else
        {
          v20 = @"compute_tessellation_factors_constrained_edge_uint16";
        }

        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v20] computeEvaluator];
        primitiveCount = [(SCNMTLMeshElement *)v18 primitiveCount];
        buffer = [-[SCNMTLMeshElement indexBuffer](v18) buffer];
        offset = [-[SCNMTLMeshElement indexBuffer](v18) offset];
        libraryManager = [(SCNMTLResourceManager *)v18 libraryManager];
        v25 = [-[SCNMTLMesh buffers](v33) objectAtIndexedSubscript:{objc_msgSend(v32, "bufferIndex") - 18}];
        stride = [v31 stride];
        threadExecutionWidth = [computeEvaluator threadExecutionWidth];
        v44[0] = primitiveCount;
        v44[1] = stride;
        v44[2] = LODWORD(tessellatorCopy->var4.var0.var0);
        [v14 setComputePipelineState:computeEvaluator];
        [v14 setBuffer:selfCopy->_tessellationFactorBuffer offset:24 * v16 atIndex:0];
        [v14 setBuffer:buffer offset:libraryManager + offset atIndex:1];
        [v14 setBuffer:v25 offset:0 atIndex:2];
        [v14 setBytes:v44 length:12 atIndex:3];
        v42 = (primitiveCount + threadExecutionWidth - 1) / threadExecutionWidth;
        v43 = v29;
        v40 = threadExecutionWidth;
        v41 = v29;
        [v14 dispatchThreadgroups:&v42 threadsPerThreadgroup:&v40];
        v16 += primitiveCount;
      }

      v36 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v36);
  }

  [v14 popDebugGroup];
}

- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  elements = [(SCNMTLMesh *)mesh elements];
  v11 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(elements);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if (v16 == element)
      {
        break;
      }

      v13 += [(SCNMTLMeshElement *)v16 primitiveCount];
      if (v12 == ++v15)
      {
        v12 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  renderEncoder = [(SCNMTLRenderContext *)context renderEncoder];
  *&v18 = self->_cachedTessellator.tessellationFactorScale;
  [*(renderEncoder + 3392) setTessellationFactorScale:{v18, v19}];
  [*(renderEncoder + 3392) setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:24 * v13 instanceStride:0];
  [(SCNMTLRenderContext *)context _drawPatchForMeshElement:element instanceCount:count];
}

- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters
{
  GPUContext = C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
  GPUContext[1] = tessellator->var1;
  v8 = [(SCNMTLMesh *)parameters->var0 bufferForAttribute:?];
  lastFramePositionBuffer = self->_lastFramePositionBuffer;
  if (lastFramePositionBuffer)
  {
    v10 = lastFramePositionBuffer == v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  self->_lastFramePositionBuffer = v8;
  v12 = parameters->var4 | v11;
  if (v12)
  {
    C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers(GPUContext, v8, parameters->var1, parameters->var3);
LABEL_10:
    C3DSubdivisionOsdGPUComputeTessellationFactors(GPUContext, parameters->var1, parameters->var2, parameters->var3, v13);
    goto LABEL_11;
  }

  if (C3DSubdivisionOsdGPURequiresTessellationFactorsInitialization(GPUContext))
  {
    goto LABEL_10;
  }

LABEL_11:
  engineContext = [(SCNMTLRenderContext *)parameters->var1 engineContext];
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(engineContext, 0);
  if (AuthoringEnvironment && (C3DAuthoringEnvironmentGetDisplayMask(AuthoringEnvironment) & 0x4000) != 0)
  {
    geometry = self->_geometry;
    var0 = parameters->var0;
    var1 = parameters->var1;

    C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData(geometry, var0, var1, v12 & 1);
  }
}

- (void)subdivisionSurfaceTessellationDraw:(id *)draw
{
  v5 = [C3DMeshGetMeshElements(draw->var0 0)];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  GPUContext = C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
  var5 = draw->var5;
  var6 = draw->var6;
  var4 = draw->var4;

  C3DSubdivisionOsdGPUDraw(GPUContext, var5, var6, v6, var4);
}

- (void)_pipelineStateHashForMeshElement:(uint64_t)a1 patchType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [(SCNMTLMesh *)a1 elements];
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown index type %d", v3, 8u);
}

- (void)updateScreenSpaceAdaptiveTessellator:(uint64_t)a1 parameters:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_16(a1, a2);
  *v3 = 67109120;
  *v2 = v4;
  OUTLINED_FUNCTION_1_15(&dword_21BEF7000, v5, v6, "Unreachable code: Unknown index type %d");
}

@end