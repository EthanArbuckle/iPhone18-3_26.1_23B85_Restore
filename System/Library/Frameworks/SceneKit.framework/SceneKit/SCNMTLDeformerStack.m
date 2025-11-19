@interface SCNMTLDeformerStack
- (Class)deformerClassForMeshlesshGeometry:(__C3DGeometry *)a3;
- (MTLBlitCommandEncoder)currentBlitEncoder;
- (SCNMTLComputeCommandEncoder)currentComputeEncoder;
- (__CFString)_baseEntityName;
- (__n128)_currentFrustumInfo;
- (__n128)currentTransforms;
- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4;
- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4;
- (id)dependencyBufferForInput:(unint64_t)a3 dependencyMesh:(id)a4;
- (id)dependencyBufferForInput:(unint64_t)a3 dependencyStack:(id)a4;
- (id)newBufferForDataKind:(unsigned __int8)a3 meshSource:(__C3DMeshSource *)a4 dataType:(signed __int16)a5 forStageInputOutputDescriptor:(BOOL)a6 usePrivateStorageMode:(BOOL)a7 outStride:(unint64_t *)a8;
- (id)newBufferForDataKind:(unsigned __int8)a3 positionSource:(__C3DMeshSource *)a4 normalSource:(__C3DMeshSource *)a5 positionDataType:(signed __int16)a6 normalDataType:(signed __int16)a7 forStageInputOutputDescriptor:(BOOL)a8 usePrivateStorageMode:(BOOL)a9 outStride:(unint64_t *)a10 outPositionOffset:(unint64_t *)a11 outNormalOffset:(unint64_t *)a12;
- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4;
- (uint64_t)bufferForCommonProfileArgumentNamed:(uint64_t)result;
- (uint64_t)computeDeformedMeshForContext:(unsigned __int8)a3 programHashCodeRequirements:(const void *)a4 transforms:(const void *)a5 frustumInfo:(_BOOL8 *)a6 status:;
- (uint64_t)computeDeformedMeshReliesOnFrustum;
- (uint64_t)computeDeformedMeshReliesOnTransforms;
- (uint64_t)invalidate;
- (uint64_t)setNextUpdateRequiresResetForIncrementalDeformers;
- (uint64_t)updateDataForAuthoringEnvironment:(uint64_t)a3 transforms:(uint64_t)a4 context:;
- (unint64_t)currentFrameHash;
- (void)dealloc;
- (void)drawAuthoringEnvironment:(uint64_t)a3 context:;
- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)a3;
- (void)enumerateInternalDeformersUsingBlock:(id)a3;
- (void)initWithDeformerStack:(uint64_t)a3 node:(char)a4 dataKind:(uint64_t)a5 resourceManager:;
- (void)reconfigureIfNeededWithContext:(id)a3 programHashCodeRequirements:(id)a4;
- (void)setStageInputOutputBuffersToEncoder:(SCNMTLComputeCommandEncoder *)a3;
- (void)setupFinalMeshFromBaseMeshWithInfo:(id)a3;
- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)a3;
- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)a3 baseNormalSourceProvider:(id)a4 baseTangentSourceProvider:(id)a5 info:(id)a6;
- (void)updateDependencyBuffersInBufferArray:(id *)a3 forDeformer:(id)a4;
@end

@implementation SCNMTLDeformerStack

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLDeformerStack;
  [(SCNMTLDeformerStack *)&v3 dealloc];
}

- (__CFString)_baseEntityName
{
  baseMesh = self->_baseMesh;
  if (!baseMesh || (result = C3DEntityGetName(baseMesh)) == 0)
  {
    baseGeometry = self->_baseGeometry;

    return C3DEntityGetName(baseGeometry);
  }

  return result;
}

- (Class)deformerClassForMeshlesshGeometry:(__C3DGeometry *)a3
{
  v3 = CFGetTypeID(a3);
  if (v3 == C3DBezierCurveGeometryGetTypeID())
  {

    return objc_opt_class();
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLDeformerStack deformerClassForMeshlesshGeometry:];
    }

    return 0;
  }
}

- (void)enumerateInternalDeformersUsingBlock:(id)a3
{
  if (self->_morphDeformer)
  {
    (*(a3 + 2))(a3);
  }

  if (self->_skinDeformer)
  {
    (*(a3 + 2))(a3);
  }

  if (self->_meshlessDeformer)
  {
    (*(a3 + 2))(a3);
  }

  if (self->_smoothNormalsDeformer)
  {
    v5 = *(a3 + 2);

    v5(a3);
  }
}

- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)a3 baseNormalSourceProvider:(id)a4 baseTangentSourceProvider:(id)a5 info:(id)a6
{
  v6 = *&a6.var0;
  initialPositionBuffer = self->_initialPositionBuffer;
  if (initialPositionBuffer)
  {
    CFRelease(initialPositionBuffer);
    self->_initialPositionBuffer = 0;
  }

  initialNormalBuffer = self->_initialNormalBuffer;
  if (initialNormalBuffer)
  {
    CFRelease(initialNormalBuffer);
    self->_initialNormalBuffer = 0;
  }

  initialTangentBuffer = self->_initialTangentBuffer;
  if (initialTangentBuffer)
  {
    CFRelease(initialTangentBuffer);
    self->_initialTangentBuffer = 0;
  }

  initialBuffersStageInputDescriptor = self->_initialBuffersStageInputDescriptor;
  if (initialBuffersStageInputDescriptor)
  {
    CFRelease(initialBuffersStageInputDescriptor);
    self->_initialBuffersStageInputDescriptor = 0;
  }

  self->_initialPositionStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialNormalStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialTangentStageInputOutputDescriptorInfo.isActive = 0;
  if ((v6 & 0x100010001) != 0)
  {
    self->_initialBuffersStageInputDescriptor = objc_alloc_init(MEMORY[0x277CD6FF0]);
    v15 = (*(a3 + 2))(a3, self->_deformDataKind);
    C3DMeshSourceGetCount(v15);
    if (v6)
    {
      v16 = [(MTLAttributeDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor attributes] objectAtIndexedSubscript:0];
      [(MTLAttributeDescriptor *)v16 setFormat:30];
      [(MTLAttributeDescriptor *)v16 setOffset:0];
      [(MTLAttributeDescriptor *)v16 setBufferIndex:10];
      v17 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor layouts] objectAtIndexedSubscript:[(MTLAttributeDescriptor *)v16 bufferIndex]];
      [(MTLBufferLayoutDescriptor *)v17 setStepFunction:5];
      if ((v6 & 0x100) != 0)
      {
        v61 = 0;
        self->_initialPositionBuffer = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v15 dataType:9 forStageInputOutputDescriptor:1 usePrivateStorageMode:1 outStride:&v61];
        v21 = v61;
        v20 = v17;
      }

      else
      {
        Size = SCNMTLVertexFormatGetSize(30);
        [SCNMTLResourceManager newBufferWithLength:? options:?];
        self->_initialPositionBuffer = v19;
        v20 = v17;
        v21 = Size;
      }

      [(MTLBufferLayoutDescriptor *)v20 setStride:v21];
      v22 = [(MTLAttributeDescriptor *)v16 format];
      v23 = [(MTLAttributeDescriptor *)v16 offset];
      v24 = [(MTLBufferLayoutDescriptor *)v17 stride];
      self->_initialPositionStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = v22;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = v23;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferLayoutStride = v24;
      if ((v6 & 0x10000) == 0)
      {
LABEL_12:
        if ((v6 & 0x100000000) == 0)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    else if ((v6 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    v25 = [(MTLAttributeDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor attributes] objectAtIndexedSubscript:1];
    [(MTLAttributeDescriptor *)v25 setFormat:30];
    [(MTLAttributeDescriptor *)v25 setOffset:0];
    [(MTLAttributeDescriptor *)v25 setBufferIndex:11];
    v26 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor layouts] objectAtIndexedSubscript:[(MTLAttributeDescriptor *)v25 bufferIndex]];
    [(MTLBufferLayoutDescriptor *)v26 setStepFunction:5];
    if ((v6 & 0x1000000) != 0)
    {
      v31 = (*(a4 + 2))(a4, self->_deformDataKind);
      if (!v31)
      {
        v32 = scn_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLDeformerStack *)v32 setupInitialBuffersWithBasePositionSourceProvider:v33 baseNormalSourceProvider:v34 baseTangentSourceProvider:v35 info:v36, v37, v38, v39];
        }
      }

      v61 = 0;
      self->_initialNormalBuffer = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v31 dataType:9 forStageInputOutputDescriptor:1 usePrivateStorageMode:1 outStride:&v61];
      v30 = v61;
      v29 = v26;
    }

    else
    {
      v27 = SCNMTLVertexFormatGetSize(30);
      [SCNMTLResourceManager newBufferWithLength:? options:?];
      self->_initialNormalBuffer = v28;
      v29 = v26;
      v30 = v27;
    }

    [(MTLBufferLayoutDescriptor *)v29 setStride:v30];
    v40 = [(MTLAttributeDescriptor *)v25 format];
    v41 = [(MTLAttributeDescriptor *)v25 offset];
    v42 = [(MTLBufferLayoutDescriptor *)v26 stride];
    self->_initialNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = v40;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = v41;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferLayoutStride = v42;
    if ((v6 & 0x100000000) != 0)
    {
LABEL_25:
      v43 = [(MTLAttributeDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor attributes] objectAtIndexedSubscript:2];
      [(MTLAttributeDescriptor *)v43 setFormat:31];
      [(MTLAttributeDescriptor *)v43 setOffset:0];
      [(MTLAttributeDescriptor *)v43 setBufferIndex:12];
      v44 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor layouts] objectAtIndexedSubscript:[(MTLAttributeDescriptor *)v43 bufferIndex]];
      [(MTLBufferLayoutDescriptor *)v44 setStepFunction:5];
      if ((v6 & 0x10000000000) != 0)
      {
        v49 = (*(a5 + 2))(a5, self->_deformDataKind);
        if (!v49)
        {
          v50 = scn_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            [(SCNMTLDeformerStack *)v50 setupInitialBuffersWithBasePositionSourceProvider:v51 baseNormalSourceProvider:v52 baseTangentSourceProvider:v53 info:v54, v55, v56, v57];
          }
        }

        v61 = 0;
        self->_initialTangentBuffer = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v49 dataType:10 forStageInputOutputDescriptor:1 usePrivateStorageMode:1 outStride:&v61];
        v48 = v61;
        v47 = v44;
      }

      else
      {
        v45 = SCNMTLVertexFormatGetSize(31);
        [SCNMTLResourceManager newBufferWithLength:? options:?];
        self->_initialTangentBuffer = v46;
        v47 = v44;
        v48 = v45;
      }

      [(MTLBufferLayoutDescriptor *)v47 setStride:v48];
      v58 = [(MTLAttributeDescriptor *)v43 format];
      v59 = [(MTLAttributeDescriptor *)v43 offset];
      v60 = [(MTLBufferLayoutDescriptor *)v44 stride];
      self->_initialTangentStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = v58;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = v59;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferLayoutStride = v60;
    }
  }
}

- (void)setupFinalMeshFromBaseMeshWithInfo:(id)a3
{
  *&v57[5] = *MEMORY[0x277D85DE8];
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  finalDataKind = self->_finalDataKind;
  v13 = [MEMORY[0x277CD7090] vertexDescriptor];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(self->_baseMesh)];
  baseMesh = self->_baseMesh;
  v16 = self->_finalDataKind;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __58__SCNMTLDeformerStack_setupFinalMeshFromBaseMeshWithInfo___block_invoke;
  v54[3] = &unk_2782FC510;
  v54[4] = self;
  v54[5] = v14;
  v54[6] = v13;
  v55 = finalDataKind == 0;
  C3DMeshApplySources(baseMesh, v16, v54);
  if (a3.var0)
  {
    Size = SCNMTLVertexFormatGetSize(30);
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, self->_deformDataKind);
    C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    if ((*&a3.var0 & 0x100) != 0)
    {
      v19 = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:SourceWithSemanticAtIndex dataType:9 forStageInputOutputDescriptor:0 usePrivateStorageMode:0 outStride:0];
    }

    else
    {
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_deformNormalBuffer = v19;
    v20 = self->_finalDataKind;
    if (v20 == self->_deformDataKind)
    {
      v21 = v19;
    }

    else
    {
      v22 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, v20);
      C3DMeshSourceGetCount(v22);
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_finalNormalBuffer = v21;
    v23 = [v14 count];
    [v14 addObject:self->_finalNormalBuffer];
    v24 = [objc_msgSend(v13 "attributes")];
    [v24 setFormat:30];
    [v24 setOffset:0];
    [v24 setBufferIndex:v23 + 18];
    v25 = [objc_msgSend(v13 "layouts")];
    [v25 setStride:Size];
    [v25 setStepFunction:1];
    v26 = [v24 offset];
    v27 = [v25 stride];
    self->_deformNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = v26;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferLayoutStride = v27;
  }

  if ((*&a3 & 0x10000) != 0)
  {
    v28 = SCNMTLVertexFormatGetSize(31);
    v29 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, self->_deformDataKind);
    C3DMeshSourceGetCount(v29);
    if ((*&a3 & 0x1000000) != 0)
    {
      v30 = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v29 dataType:10 forStageInputOutputDescriptor:0 usePrivateStorageMode:0 outStride:0];
    }

    else
    {
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_deformTangentBuffer = v30;
    v31 = self->_finalDataKind;
    if (v31 == self->_deformDataKind)
    {
      v32 = v30;
    }

    else
    {
      v33 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, v31);
      C3DMeshSourceGetCount(v33);
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_finalTangentBuffer = v32;
    v34 = [v14 count];
    [v14 addObject:self->_finalTangentBuffer];
    v35 = [objc_msgSend(v13 "attributes")];
    [v35 setFormat:31];
    [v35 setOffset:0];
    [v35 setBufferIndex:v34 + 18];
    v36 = [objc_msgSend(v13 "layouts")];
    [v36 setStride:v28];
    [v36 setStepFunction:1];
    v37 = [v35 offset];
    v38 = [v36 stride];
    self->_deformTangentStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = 31;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = v37;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferLayoutStride = v38;
  }

  ElementsCount = C3DMeshGetElementsCount(self->_baseMesh);
  v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(self->_baseMesh, i, self->_finalDataKind);
      Type = C3DMeshElementGetType(ElementAtIndex);
      if (C3DMeshElementTypeMapsToMTLPrimitiveType(Type))
      {
        [v40 addObject:-[SCNMTLResourceManager renderResourceForMeshElement:](self->_resourceManager)];
      }

      else if (self->_finalDataKind | finalDataKind)
      {
        v44 = scn_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLDeformerStack *)v56 setupFinalMeshFromBaseMeshWithInfo:v57, v44];
        }
      }
    }
  }

  v45 = self->_finalDataKind;
  if (self->_deformDataKind != v45)
  {
    v46 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, v45);
    self->_splatUniforms.maxIndex = C3DMeshSourceGetCount(v46);
    v53 = 0;
    [(SCNMTLDeformerStack *)self deindexedToOriginalTableBufferWithBlitEncoder:[(SCNMTLDeformerStack *)self currentBlitEncoder] indexSizeOut:&v53];
    v52 = v53;
    v47 = self->_deformTangentBuffer;
    v51 = self->_deformNormalBuffer != 0;
    v50 = v47 != 0;
    v48 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v48 setConstantValue:&v52 type:33 atIndex:0];
    [v48 setConstantValue:&v51 type:53 atIndex:1];
    [v48 setConstantValue:&v50 type:53 atIndex:2];
    self->_splatDeformedToFinalPipeline = -[SCNMTLResourceManager computePipelineStateForKernel:constants:constantsHash:](self->_resourceManager, "computePipelineStateForKernel:constants:constantsHash:", @"deformer_splat", v48, [MEMORY[0x277CCACA8] stringWithFormat:@"UInt%d-%d-%d", (8 * v52), v51, v50]);
  }

  v49 = objc_alloc_init(SCNMTLMesh);
  self->_finalMesh = v49;
  [(SCNMTLMesh *)v49 setVertexDescriptor:v13];
  [(SCNMTLMesh *)self->_finalMesh setBuffers:v14];
  [(SCNMTLMesh *)self->_finalMesh setElements:v40];
}

void __58__SCNMTLDeformerStack_setupFinalMeshFromBaseMeshWithInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 7 && (a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
  {
    if (C3DMeshSourceIsVolatile(a2))
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __58__SCNMTLDeformerStack_setupFinalMeshFromBaseMeshWithInfo___block_invoke_cold_1();
      }
    }

    else if (a3 != 4 && a3 != 1)
    {
      if (a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v14 = [SCNMTLResourceManager renderResourceForMeshSource:?];
          if (v14)
          {
            v15 = v14;
            v16 = [*(a1 + 40) indexOfObject:v14];
            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = [*(a1 + 40) count];
              [*(a1 + 40) addObject:v15];
            }

            v17 = *(a1 + 48);

            [SCNMTLResourceManager _fillVertexDescriptor:v17 withMeshSource:a2 semantic:a3 inputSet:a4 bufferIndex:v16];
          }
        }
      }

      else
      {
        Size = SCNMTLVertexFormatGetSize(30);
        C3DMeshSourceGetCount(a2);
        [SCNMTLResourceManager newBufferWithLength:? options:?];
        *(*(a1 + 32) + 120) = v10;
        v11 = *(a1 + 32);
        v12 = *(v11 + 49);
        if (v12 == *(v11 + 48))
        {
          v13 = *(v11 + 120);
        }

        else
        {
          SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(v11 + 40), 0, 0, v12);
          C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
          [SCNMTLResourceManager newBufferWithLength:? options:?];
        }

        *(*(a1 + 32) + 88) = v13;
        v19 = [*(a1 + 40) count];
        [*(a1 + 40) addObject:*(*(a1 + 32) + 120)];
        v20 = [objc_msgSend(*(a1 + 48) "attributes")];
        [v20 setFormat:30];
        [v20 setOffset:0];
        [v20 setBufferIndex:v19 + 18];
        v21 = [objc_msgSend(*(a1 + 48) "layouts")];
        [v21 setStride:Size];
        [v21 setStepFunction:1];
        v22 = [v20 offset];
        v23 = [v21 stride];
        v24 = *(a1 + 32);
        *(v24 + 240) = 1;
        *(v24 + 248) = 30;
        *(v24 + 256) = v22;
        *(v24 + 264) = v23;
      }
    }
  }
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)a3
{
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  if (!self->_meshlessDeformer)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLDeformerStack *)v12 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  self->_finalMesh = [(SCNMTLMeshlessDeformer *)self->_meshlessDeformer finalMesh];
  SCNMTLVertexFormatGetSize(30);
  v20 = [(SCNMTLResourceManager *)self->_finalMesh commandQueue];
  v21 = [objc_msgSend(v20 "attributes")];
  v22 = [objc_msgSend(v20 "layouts")];
  PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(self->_baseGeometry);
  C3DMeshSourceGetCount(PositionSourceForDeformerBasedDynamicMesh);
  [SCNMTLResourceManager newBufferWithLength:? options:?];
  self->_deformPositionBuffer = v24;
  CFRelease(PositionSourceForDeformerBasedDynamicMesh);
  if (a3.var0 && (v25 = scn_default_log(), os_log_type_enabled(v25, OS_LOG_TYPE_FAULT)))
  {
    [(SCNMTLDeformerStack *)v25 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v26, v27, v28, v29, v30, v31, v32];
    if ((*&a3 & 0x10000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*&a3 & 0x10000) == 0)
  {
    goto LABEL_23;
  }

  v33 = scn_default_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLDeformerStack *)v33 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v34, v35, v36, v37, v38, v39, v40];
  }

LABEL_23:
  v41 = [v21 offset];
  v42 = [v22 stride];
  self->_deformPositionStageInputOutputDescriptorInfo.isActive = 1;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = v41;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferLayoutStride = v42;
}

- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  if (!self->_deindexedToOriginalTableBuffer)
  {
    C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 1);
    v27 = 0;
    PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(self->_baseMesh, &v27);
    result = C3DMeshGetPositionOriginalToFirstDeindexedTable(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 0);
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    v11 = v27;
    v12 = v27 - 1;
    v26 = a3;
    if ((v27 - 1) < 0)
    {
      v15 = 8;
    }

    else
    {
      v13 = v12 >> 15;
      v14 = v12 > 0x7F;
      v15 = 1;
      if (v14)
      {
        v15 = 2;
      }

      if (v13)
      {
        v15 = 4;
      }
    }

    self->_deindexedToOriginalTableBufferIndexSize = v15;
    *a4 = v15;
    v25 = self->_deindexedToOriginalTableBufferIndexSize * v11;
    v16 = malloc_type_malloc(v25, 0x7583B073uLL);
    v17 = v16;
    deindexedToOriginalTableBufferIndexSize = self->_deindexedToOriginalTableBufferIndexSize;
    if (deindexedToOriginalTableBufferIndexSize == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 2)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 4)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (!v27)
    {
LABEL_31:
      self->_deindexedToOriginalTableBuffer = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v17 length:v25 blitEncoder:v26];
      free(v17);
      return self->_deindexedToOriginalTableBuffer;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(PositionDeindexedToOriginalTable + 4 * v22);
      if (v23 >= Count && (v24 = scn_default_log(), os_log_type_enabled(v24, OS_LOG_TYPE_FAULT)))
      {
        [(SCNMTLDeformerStack *)v28 deindexedToOriginalTableBufferWithBlitEncoder:v29 indexSizeOut:v24];
        if (!v19)
        {
LABEL_27:
          if (v20)
          {
            v20[v22] = v23;
          }

          else
          {
            v21[v22] = v23;
          }

          goto LABEL_30;
        }
      }

      else if (!v19)
      {
        goto LABEL_27;
      }

      v19[v22] = v23;
LABEL_30:
      if (++v22 >= v27)
      {
        goto LABEL_31;
      }
    }
  }

  *a4 = self->_deindexedToOriginalTableBufferIndexSize;
  return self->_deindexedToOriginalTableBuffer;
}

- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4
{
  *&v35[5] = *MEMORY[0x277D85DE8];
  if (self->_deindexedToFirstDeindexedTableBuffer)
  {
    *a4 = self->_deindexedToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 1);
    v31 = 0;
    PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(self->_baseMesh, &v31);
    result = C3DMeshGetPositionOriginalToFirstDeindexedTable(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v29 = a3;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 0);
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    v12 = v31;
    v13 = v31 - 1;
    if ((v31 - 1) < 0)
    {
      v16 = 8;
    }

    else
    {
      v14 = v13 >> 15;
      v15 = v13 > 0x7F;
      v16 = 1;
      if (v15)
      {
        v16 = 2;
      }

      if (v14)
      {
        v16 = 4;
      }
    }

    self->_deindexedToFirstDeindexedTableBufferIndexSize = v16;
    *a4 = v16;
    v28 = self->_deindexedToFirstDeindexedTableBufferIndexSize * v12;
    v17 = malloc_type_malloc(v28, 0xB0A4F3C8uLL);
    v18 = v17;
    deindexedToFirstDeindexedTableBufferIndexSize = self->_deindexedToFirstDeindexedTableBufferIndexSize;
    if (deindexedToFirstDeindexedTableBufferIndexSize == 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 2)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    v30 = v22;
    if (v31)
    {
      for (i = 0; i < v31; ++i)
      {
        v24 = *(PositionDeindexedToOriginalTable + 4 * i);
        v25 = v9[v24];
        if (v24 >= Count)
        {
          v26 = scn_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [(SCNMTLDeformerStack *)v34 deindexedToOriginalTableBufferWithBlitEncoder:v35 indexSizeOut:v26];
          }
        }

        if (v25 >= v31)
        {
          v27 = scn_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            [(SCNMTLDeformerStack *)v32 deindexedToFirstDeindexedTableBufferWithBlitEncoder:v27 indexSizeOut:?];
          }
        }

        if (i == v25)
        {
          if (v20)
          {
            v20[i] = -1;
          }

          else if (v21)
          {
            v21[i] = -1;
          }

          else
          {
            v30[i] = -1;
          }
        }

        else if (v20)
        {
          v20[i] = v25;
        }

        else if (v21)
        {
          v21[i] = v25;
        }

        else
        {
          v30[i] = v25;
        }
      }
    }

    self->_deindexedToFirstDeindexedTableBuffer = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v18 length:v28 blitEncoder:v29];
    free(v18);
  }

  return self->_deindexedToFirstDeindexedTableBuffer;
}

- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4
{
  if (self->_originalToFirstDeindexedTableBuffer)
  {
    *a4 = self->_originalToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 1);
    result = C3DMeshGetPositionOriginalToFirstDeindexedTable(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v8 = result;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 0);
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    v11 = Count;
    v12 = 1;
    if (Count - 1 > 0xFF)
    {
      v12 = 2;
    }

    v13 = 4;
    if (!((Count - 1) >> 16))
    {
      v13 = v12;
    }

    self->_originalToFirstDeindexedTableBufferIndexSize = v13;
    *a4 = v13;
    v14 = Count;
    v15 = self->_originalToFirstDeindexedTableBufferIndexSize * Count;
    v16 = malloc_type_malloc(v15, 0xEED24FFuLL);
    v17 = v16;
    originalToFirstDeindexedTableBufferIndexSize = self->_originalToFirstDeindexedTableBufferIndexSize;
    if (originalToFirstDeindexedTableBufferIndexSize == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 2)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 4)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v11)
    {
      v22 = v20;
      v23 = v19;
      do
      {
        v25 = *v8++;
        v24 = v25;
        if (v19)
        {
          *v23 = v24;
        }

        else if (v20)
        {
          *v22 = v24;
        }

        else
        {
          *v21 = v24;
        }

        ++v23;
        ++v22;
        ++v21;
        --v14;
      }

      while (v14);
    }

    self->_originalToFirstDeindexedTableBuffer = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v16 length:v15 blitEncoder:a3];
    free(v17);
  }

  return self->_originalToFirstDeindexedTableBuffer;
}

- (id)newBufferForDataKind:(unsigned __int8)a3 meshSource:(__C3DMeshSource *)a4 dataType:(signed __int16)a5 forStageInputOutputDescriptor:(BOOL)a6 usePrivateStorageMode:(BOOL)a7 outStride:(unint64_t *)a8
{
  v10 = a6;
  v11 = a5;
  Count = C3DMeshSourceGetCount(a4);
  v15 = C3DSizeOfBaseType(v11);
  if (v10)
  {
    v16 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_resourceManager computeEvaluator];
    if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(v16))
    {
      v15 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v17 = malloc_type_malloc(v15 * Count, 0x100004077774924uLL);
  v27 = 0u;
  v28 = 0u;
  C3DMeshSourceGetContent(a4, &v27);
  if (Count)
  {
    v21 = 0;
    v22 = v17;
    do
    {
      *v23.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v28), (v27 + v21 * BYTE6(v28)), v18, v19, v20);
      C3DConvertFloatingTypeFromFloat4(v11, v22, v23);
      v22 += v15;
      ++v21;
    }

    while (Count != v21);
  }

  if (a7)
  {
    v24 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v17 length:v15 * Count blitEncoder:[(SCNMTLDeformerStack *)self currentBlitEncoder]];
  }

  else
  {
    [SCNMTLResourceManager newBufferWithBytes:? length:? options:?];
  }

  v25 = v24;
  free(v17);
  if (a8)
  {
    *a8 = v15;
  }

  return v25;
}

- (id)newBufferForDataKind:(unsigned __int8)a3 positionSource:(__C3DMeshSource *)a4 normalSource:(__C3DMeshSource *)a5 positionDataType:(signed __int16)a6 normalDataType:(signed __int16)a7 forStageInputOutputDescriptor:(BOOL)a8 usePrivateStorageMode:(BOOL)a9 outStride:(unint64_t *)a10 outPositionOffset:(unint64_t *)a11 outNormalOffset:(unint64_t *)a12
{
  v12 = a8;
  v13 = a7;
  v14 = a6;
  if (a3 == 1 && a5 && (v18 = C3DMeshSourceGetCount(a4), v18 != C3DMeshSourceGetCount(a5)))
  {
    v35 = scn_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLDeformerStack newBufferForDataKind:positionSource:normalSource:positionDataType:normalDataType:forStageInputOutputDescriptor:usePrivateStorageMode:outStride:outPositionOffset:outNormalOffset:];
    }

    return 0;
  }

  else
  {
    Count = C3DMeshSourceGetCount(a4);
    v20 = C3DSizeOfBaseType(v14);
    v21 = C3DSizeOfBaseType(v13);
    v22 = v21 + v20;
    if (v12)
    {
      v23 = v21;
      v24 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_resourceManager computeEvaluator];
      if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(v24))
      {
        v22 = (v23 + ((v20 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v20 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      }
    }

    v37 = self;
    v25 = malloc_type_malloc(v22 * Count, 0x100004077774924uLL);
    v40 = 0u;
    v41 = 0u;
    C3DMeshSourceGetContent(a4, &v40);
    v28 = 0uLL;
    v38 = 0u;
    v39 = 0u;
    if (a5)
    {
      C3DMeshSourceGetContent(a5, &v38);
    }

    if (Count)
    {
      v29 = 0;
      v30 = v25;
      do
      {
        *v31.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v41), (v40 + v29 * BYTE6(v41)), v28, v26, v27);
        C3DConvertFloatingTypeFromFloat4(v14, v30, v31);
        if (a5)
        {
          *v32.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v39), (v38 + v29 * BYTE6(v39)), v28, v26, v27);
          C3DConvertFloatingTypeFromFloat4(v13, v30 + v20, v32);
        }

        v30 += v22;
        ++v29;
      }

      while (Count != v29);
    }

    if (a9)
    {
      v33 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v37[1], v25, v22 * Count, [v37 currentBlitEncoder]);
    }

    else
    {
      [SCNMTLResourceManager newBufferWithBytes:? length:? options:?];
    }

    v34 = v33;
    free(v25);
    if (a10)
    {
      *a10 = v22;
    }

    if (a11)
    {
      *a11 = 0;
    }

    if (a12)
    {
      *a12 = v20;
    }
  }

  return v34;
}

- (MTLBlitCommandEncoder)currentBlitEncoder
{
  result = self->_currentInitResourceBlitEncoder;
  if (!result)
  {
    result = *[(SCNMTLRenderContext *)self->_currentInitRenderContext resourceBlitEncoder];
    self->_currentInitResourceBlitEncoder = result;
  }

  return result;
}

- (void)reconfigureIfNeededWithContext:(id)a3 programHashCodeRequirements:(id)a4
{
  v4 = *&a4.var0;
  v208 = *MEMORY[0x277D85DE8];
  if (self->_isValid && (!a4.var0 || self->_finalTangentBuffer))
  {
    return;
  }

  self->_currentInitRenderContext = a3;
  BaseGeometry = C3DDeformerStackGetBaseGeometry(self->_c3dDeformerStack);
  v7 = BaseGeometry;
  v137 = self->_baseGeometry;
  if (v137 != BaseGeometry)
  {
    self->_baseGeometry = BaseGeometry;
  }

  v8 = C3DGeometryUsesDeformerBasedDynamicMesh(BaseGeometry);
  v142 = v7;
  if (v8)
  {
    v9 = [(SCNMTLDeformerStack *)self deformerClassForMeshlesshGeometry:v7];
    LODWORD(v129) = [(objc_class *)v9 deformsControlPointsForMeshlessGeometry:v7];
    Mesh = 0;
  }

  else
  {
    LODWORD(v129) = [0 deformsControlPointsForMeshlessGeometry:v7];
    Mesh = C3DGeometryGetMesh(v7);
    v9 = 0;
  }

  baseMesh = self->_baseMesh;
  if (baseMesh != Mesh)
  {
    self->_baseMesh = Mesh;
  }

  finalDataKind = self->_finalDataKind;
  Morpher = C3DDeformerStackGetMorpher(self->_c3dDeformerStack);
  Skinner = C3DDeformerStackGetSkinner(self->_c3dDeformerStack);
  if (Skinner)
  {
    v13 = C3DDeformerStackGetBaseGeometry(self->_c3dDeformerStack);
    v150 = C3DSkinnerGetEffectiveCalculationMode(Skinner, v13) == 2;
  }

  else
  {
    v150 = 0;
  }

  PostMorphingDeformers = C3DDeformerStackGetPostMorphingDeformers(self->_c3dDeformerStack);
  PostSkinningDeformers = C3DDeformerStackGetPostSkinningDeformers(self->_c3dDeformerStack);
  v135 = [PostMorphingDeformers count];
  v134 = [PostSkinningDeformers count];
  if (Morpher)
  {
    v16 = +[SCNMTLMorphDeformer requiredInputs];
  }

  else
  {
    v16 = 0;
  }

  if (v150)
  {
    v16 |= +[SCNMTLSkinDeformer requiredInputs];
  }

  v145 = v9;
  if (v9)
  {
    v16 |= [(objc_class *)v9 requiredInputs];
  }

  v139 = Skinner;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v17 = [PostMorphingDeformers countByEnumeratingWithState:&v195 objects:v207 count:{16, v129}];
  v148 = self;
  if (v17)
  {
    v18 = v17;
    v19 = *v196;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v196 != v19)
        {
          objc_enumerationMutation(PostMorphingDeformers);
        }

        v16 |= [*(*(&v195 + 1) + 8 * i) requiredInputs];
      }

      v18 = [PostMorphingDeformers countByEnumeratingWithState:&v195 objects:v207 count:16];
    }

    while (v18);
  }

  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v21 = [PostSkinningDeformers countByEnumeratingWithState:&v191 objects:v206 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v192;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v192 != v23)
        {
          objc_enumerationMutation(PostSkinningDeformers);
        }

        LODWORD(v16) = [*(*(&v191 + 1) + 8 * j) requiredInputs] | v16;
      }

      v22 = [PostSkinningDeformers countByEnumeratingWithState:&v191 objects:v206 count:16];
    }

    while (v22);
  }

  if (Mesh)
  {
    v25 = v148;
    v147 = (C3DMeshHasSourcesWithSemantic(Mesh, 1, 0, 0) | (v16 >> 1)) & (finalDataKind != 0);
    v133 = (v148->_finalNormalBuffer == 0) ^ v147;
    HasSourcesWithSemantic = C3DMeshHasSourcesWithSemantic(Mesh, 4, 0, 0);
  }

  else
  {
    HasSourcesWithSemantic = 0;
    v25 = v148;
    v147 = (finalDataKind != 0) & (v16 >> 1);
    v133 = (v148->_finalNormalBuffer == 0) ^ v147;
  }

  v144 = Mesh;
  v140 = v8;
  v27 = finalDataKind != 0;
  v132 = *(v25 + 136);
  LODWORD(v25) = Morpher;
  if (Morpher)
  {
    v28 = [SCNMTLMorphDeformer supportedOutputsForMorpher:?];
    v29 = v28;
  }

  else
  {
    v29 = 0;
    v28 = -1;
  }

  if (v150)
  {
    v30 = +[SCNMTLSkinDeformer supportedOutputs];
    v29 |= v30;
    v28 &= v30;
  }

  if (v145)
  {
    v31 = [(objc_class *)v145 supportedOutputs];
    v29 |= v31;
    v28 &= v31;
  }

  v190 = 0u;
  v189 = 0u;
  v32 = v4 | HasSourcesWithSemantic | (v16 >> 2);
  v188 = 0u;
  v187 = 0u;
  v33 = [PostMorphingDeformers countByEnumeratingWithState:&v187 objects:v205 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v188;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v188 != v35)
        {
          objc_enumerationMutation(PostMorphingDeformers);
        }

        v37 = [*(*(&v187 + 1) + 8 * k) supportedOutputs];
        v29 |= v37;
        v28 &= v37;
      }

      v34 = [PostMorphingDeformers countByEnumeratingWithState:&v187 objects:v205 count:16];
    }

    while (v34);
  }

  v146 = v32 & v27;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v38 = [PostSkinningDeformers countByEnumeratingWithState:&v183 objects:v204 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v184;
    v41 = v145;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v184 != v40)
        {
          objc_enumerationMutation(PostSkinningDeformers);
        }

        v43 = [*(*(&v183 + 1) + 8 * m) supportedOutputs];
        v29 |= v43;
        v28 &= v43;
      }

      v39 = [PostSkinningDeformers countByEnumeratingWithState:&v183 objects:v204 count:16];
    }

    while (v39);
  }

  else
  {
    v41 = v145;
  }

  v143 = v147 & ((v28 & 2) == 0);
  v44 = 3;
  if (v143)
  {
    v44 = 1;
  }

  if (!v147)
  {
    v44 = 1;
  }

  if (v146)
  {
    v45 = v44 | 4;
  }

  else
  {
    v45 = v44;
  }

  if (Morpher)
  {
    v46 = +[SCNMTLMorphDeformer requiredOutputs];
    v45 |= v46;
    v25 = (v46 >> 9) & 1;
  }

  if (v150)
  {
    v47 = +[SCNMTLSkinDeformer requiredOutputs];
    v45 |= v47;
    v48 = (v47 >> 9) & 1 | v25;
    if ((v47 & 0x200) == 0)
    {
      v49 = v25 ^ 1;
      v50 = v148;
      if ((v49 & 1) == 0)
      {
        [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
      }

      goto LABEL_76;
    }
  }

  else
  {
    v48 = v25;
  }

  v50 = v148;
LABEL_76:
  obj = PostSkinningDeformers;
  if (v41)
  {
    v51 = [(objc_class *)v41 requiredOutputs];
    v45 |= v51;
    v52 = (v51 >> 9) & 1 | v48;
    if ((v51 & 0x200) == 0 && ((v48 ^ 1) & 1) == 0)
    {
      [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
    }
  }

  else
  {
    v52 = v48;
  }

  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v53 = [PostMorphingDeformers countByEnumeratingWithState:&v179 objects:v203 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v180;
    do
    {
      for (n = 0; n != v54; ++n)
      {
        if (*v180 != v55)
        {
          objc_enumerationMutation(PostMorphingDeformers);
        }

        v57 = [*(*(&v179 + 1) + 8 * n) requiredOutputs];
        if ((v57 & 0x200) == 0 && ((v52 ^ 1) & 1) == 0)
        {
          [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
        }

        v52 |= (v57 >> 9) & 1;
        v45 |= v57;
      }

      v54 = [PostMorphingDeformers countByEnumeratingWithState:&v179 objects:v203 count:16];
    }

    while (v54);
  }

  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v58 = [obj countByEnumeratingWithState:&v175 objects:v202 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v176;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v176 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v62 = [*(*(&v175 + 1) + 8 * ii) requiredOutputs];
        if ((v62 & 0x200) == 0 && ((v52 ^ 1) & 1) == 0)
        {
          [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
        }

        v52 |= (v62 >> 9) & 1;
        v45 |= v62;
      }

      v59 = [obj countByEnumeratingWithState:&v175 objects:v202 count:16];
    }

    while (v59);
  }

  v131 = v50->_smoothNormalsDeformer != 0;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v63 = [(SCNMTLMesh *)v50->_finalMesh elements];
  v64 = [v63 countByEnumeratingWithState:&v171 objects:v201 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = 0;
    v67 = *v172;
    do
    {
      for (jj = 0; jj != v65; ++jj)
      {
        if (*v172 != v67)
        {
          objc_enumerationMutation(v63);
        }

        v66 |= v52 ^ ([(SCNMTLMesh *)*(*(&v171 + 1) + 8 * jj) buffers]!= 0);
      }

      v65 = [v63 countByEnumeratingWithState:&v171 objects:v201 count:16];
    }

    while (v65);
  }

  else
  {
    v66 = 0;
  }

  v69 = v134 + v135;
  v136 = v134 + v135;
  if (v150)
  {
    v70 = 1;
  }

  else
  {
    v70 = v130;
    if (v69)
    {
      v70 = 1;
    }
  }

  v71 = v148;
  v72 = v137;
  v73 = v143 ^ v131;
  initialBuffersStageInputDescriptor = v148->_initialBuffersStageInputDescriptor;
  morphDeformer = v148->_morphDeformer;
  v76 = (v147 ^ v143) & ((v28 & 2) == 0);
  v77 = v29 & 2;
  v78 = (v77 << 7) ^ 0x100;
  if (((v147 ^ v143) & ((v28 & 2) == 0)) == 0)
  {
    v78 = 0;
  }

  v149 = v78;
  v79 = v146 & ((v28 & 4) == 0);
  v80 = v29 & 4;
  v81 = (v80 << 22) ^ 0x1000000;
  if (!v79)
  {
    v81 = 0;
  }

  v138 = v81;
  v82 = v133 ^ 1;
  v83 = (v132 != 0) ^ v146;
  v84 = v70 ^ (initialBuffersStageInputDescriptor != 0);
  v85 = (Morpher == 0) ^ (morphDeformer == 0);
  if (baseMesh != v144 || !*(v71 + 56) || (v82 & 1) != 0 || (v83 & 1) != 0 || ((v70 ^ (initialBuffersStageInputDescriptor != 0)) & 1) != 0 || v85)
  {
    v86 = v79 & (v80 != 0);
    if (!Morpher)
    {
      v86 = 1;
    }

    v87 = v76 & (v77 != 0);
    if (!Morpher)
    {
      v87 = 1;
    }

    v169[0] = MEMORY[0x277D85DD0];
    v169[1] = 3221225472;
    v169[2] = __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke;
    v169[3] = &__block_descriptor_49_e192_____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_12__0C8l;
    v170 = v140;
    v169[4] = v142;
    v169[5] = v144;
    v167[0] = MEMORY[0x277D85DD0];
    v167[1] = 3221225472;
    v167[2] = __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_2;
    v167[3] = &unk_2782FC558;
    v168 = v140;
    v167[5] = v144;
    v167[4] = v71;
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 3221225472;
    v165[2] = __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_28;
    v165[3] = &unk_2782FC558;
    v166 = v140;
    v165[5] = v144;
    v165[4] = v71;
    v88 = v86 == 0;
    v89 = 0x10000000000;
    if (v88)
    {
      v89 = 0;
    }

    v90 = 0x100000000;
    if ((v146 & v70) == 0)
    {
      v90 = 0;
    }

    v88 = v87 == 0;
    v91 = 0x1000000;
    if (v88)
    {
      v91 = 0;
    }

    v92 = 0x10000;
    if ((v147 & v70) == 0)
    {
      v92 = 0;
    }

    [v71 setupInitialBuffersWithBasePositionSourceProvider:v169 baseNormalSourceProvider:v167 baseTangentSourceProvider:v165 info:v89 | ((Morpher == 0) << 8) | v91 | v70 | v90 | v92];
    morphDeformer = *(v71 + 832);
  }

  if (([(SCNMTLOpenSubdivComputeEvaluator *)morphDeformer computeEvaluator]!= Morpher) | (v82 | v83 | v73) & 1)
  {
    v93 = *(v71 + 832);
    if (v93)
    {
      CFRelease(v93);
      *(v71 + 832) = 0;
    }

    v94 = v140;
    if (Morpher)
    {
      *(v71 + 832) = [[SCNMTLMorphDeformer alloc] initWithMorpher:v45 outputs:*(v71 + 49) dataKind:*(v71 + 8) resourceManager:v71 computeContext:?];
    }
  }

  else
  {
    v95 = v84 | v85;
    v94 = v140;
    if (v95)
    {
      [(SCNMTLMorphDeformer *)*(v71 + 832) setNextFrameRequiresFullMeshReset];
    }
  }

  if (([(SCNMTLOpenSubdivComputeEvaluator *)*(v71 + 840) computeEvaluator]!= v139) | (v82 | v83 | v73) & 1)
  {
    v96 = *(v71 + 840);
    if (v96)
    {
      CFRelease(v96);
      *(v71 + 840) = 0;
    }

    if (v150)
    {
      *(v71 + 840) = [[SCNMTLSkinDeformer alloc] initWithSkinner:v139 baseGeometry:v142 outputs:v45 dataKind:*(v71 + 49) resourceManager:*(v71 + 8) computeContext:v71];
    }
  }

  v97 = v72 != v142 && v94;

  if (v97 == 1)
  {
    v98 = [[(objc_class *)v145 alloc] initWithMeshlessGeometry:*(v71 + 32) outputs:v45 deformDataKind:*(v71 + 49) finalDataKind:*(v71 + 48) resourceManager:*(v71 + 8) computeContext:v71];
  }

  else
  {
    v98 = 0;
  }

  *(v71 + 848) = v98;

  if (v143 & v73)
  {
    v99 = [[SCNMTLSmoothNormalsDeformer alloc] initWithMesh:*(v71 + 48) dataKind:*(v71 + 8) resourceManager:v71 computeContext:?];
  }

  else
  {
    v99 = 0;
  }

  *(v71 + 856) = v99;
  if (!*(v71 + 112) || (baseMesh != v144 ? (v100 = 1) : (v100 = v97), ((v100 | v82 | v83 | v66) & 1) != 0))
  {
    v101 = 0x10000;
    if (!v146)
    {
      v101 = 0;
    }

    v102 = v101 | v147 | v138;
    if (v94)
    {
      [v71 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v102 | v149];
    }

    else
    {
      [v71 setupFinalMeshFromBaseMeshWithInfo:v102 | v149];
    }
  }

  *(v71 + 864) = 0;
  *(v71 + 872) = 0;
  if (!*(v71 + 112))
  {
    [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
  }

  v103 = *(v71 + 256);
  __src[0] = *(v71 + 240);
  __src[1] = v103;
  __src[2] = __src[0];
  __src[3] = v103;
  v104 = *(v71 + 288);
  __src[4] = *(v71 + 272);
  __src[5] = v104;
  __src[6] = __src[4];
  __src[7] = v104;
  v105 = *(v71 + 320);
  __src[8] = *(v71 + 304);
  __src[9] = v105;
  __src[10] = __src[8];
  __src[11] = v105;
  memset(&__src[12], 0, 192);
  if (v136)
  {
    ObjCWrapper = C3DEntityGetObjCWrapper(*(v71 + 24));
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(v71 + 40), 0, 0, *(v71 + 49));
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    v107 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:v136];
    v108 = obj;
    if ([PostMorphingDeformers count])
    {
      *(v71 + 864) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(PostMorphingDeformers, "count")}];
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v109 = [PostMorphingDeformers countByEnumeratingWithState:&v160 objects:v200 count:16];
      if (v109)
      {
        v110 = v109;
        v111 = *v161;
        do
        {
          v112 = 0;
          do
          {
            if (*v161 != v111)
            {
              objc_enumerationMutation(PostMorphingDeformers);
            }

            v113 = *(*(&v160 + 1) + 8 * v112);
            v114 = [*(v71 + 880) objectForKey:v113];
            if (v114)
            {
              v115 = v114;
              [*(v71 + 864) addObject:v114];
              [v107 setObject:v115 forKey:v113];
            }

            else
            {
              v116 = [SCNGeometryDeformerInstanceWrapper alloc];
              memcpy(__dst, __src, sizeof(__dst));
              v117 = [(SCNGeometryDeformerInstanceWrapper *)v116 initWithWrappedInstanceForStack:v71 deformer:v113 node:ObjCWrapper outputs:v45 computeVertexCount:Count stageInputOutputDescriptors:__dst];
              [*(v71 + 864) addObject:v117];
              [v107 setObject:v117 forKey:v113];
            }

            ++v112;
            v108 = obj;
          }

          while (v110 != v112);
          v118 = [PostMorphingDeformers countByEnumeratingWithState:&v160 objects:v200 count:16];
          v110 = v118;
        }

        while (v118);
      }
    }

    if ([v108 count])
    {
      *(v71 + 872) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v108, "count")}];
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v119 = [v108 countByEnumeratingWithState:&v155 objects:v199 count:16];
      if (v119)
      {
        v120 = v119;
        v121 = *v156;
        do
        {
          v122 = 0;
          do
          {
            if (*v156 != v121)
            {
              objc_enumerationMutation(obj);
            }

            v123 = *(*(&v155 + 1) + 8 * v122);
            v124 = [*(v71 + 880) objectForKey:v123];
            if (v124)
            {
              v125 = v124;
              [*(v71 + 872) addObject:v124];
              [v107 setObject:v125 forKey:v123];
            }

            else
            {
              v126 = [SCNGeometryDeformerInstanceWrapper alloc];
              memcpy(__dst, __src, sizeof(__dst));
              v127 = [(SCNGeometryDeformerInstanceWrapper *)v126 initWithWrappedInstanceForStack:v71 deformer:v123 node:ObjCWrapper outputs:v45 computeVertexCount:Count stageInputOutputDescriptors:__dst];
              [*(v71 + 872) addObject:v127];
              [v107 setObject:v127 forKey:v123];
            }

            ++v122;
          }

          while (v120 != v122);
          v128 = [obj countByEnumeratingWithState:&v155 objects:v199 count:16];
          v120 = v128;
        }

        while (v128);
      }
    }
  }

  else
  {
    v107 = 0;
  }

  *(v71 + 880) = v107;
  *(v71 + 50) = 1;
  *(v71 + 400) = 0;
  *(v71 + 408) = 0;
}

CFTypeRef __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 48) == 1)
  {
    PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(*(a1 + 32));

    return CFAutorelease(PositionSourceForDeformerBasedDynamicMesh);
  }

  else
  {
    v5 = *(a1 + 40);

    return C3DMeshGetSourceWithSemanticAtIndex(v5, 0, 0, a2);
  }
}

const void *__82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_2_cold_2();
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(a1 + 40), 1, 0, *(*(a1 + 32) + 49));
  if (!SourceWithSemanticAtIndex)
  {
    SourceWithSemanticAtIndex = C3DCreateNormalsWithMesh(*(a1 + 40), *(*(a1 + 32) + 49), 0);
    if (!SourceWithSemanticAtIndex)
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLDeformerStack *)v3 setupInitialBuffersWithBasePositionSourceProvider:v4 baseNormalSourceProvider:v5 baseTangentSourceProvider:v6 info:v7, v8, v9, v10];
      }
    }

    CFAutorelease(SourceWithSemanticAtIndex);
  }

  return SourceWithSemanticAtIndex;
}

const void *__82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_28(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_28_cold_2();
  }

  result = C3DMeshGetSourceWithSemanticAtIndex(*(a1 + 40), 4, 0, *(*(a1 + 32) + 49));
  if (!result)
  {
    C3DMeshCreateTangentsIfNeeded(*(a1 + 40), *(*(a1 + 32) + 49));
    result = C3DMeshGetSourceWithSemanticAtIndex(*(a1 + 40), 4, 0, *(*(a1 + 32) + 49));
    if (!result)
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLDeformerStack *)v3 setupInitialBuffersWithBasePositionSourceProvider:v4 baseNormalSourceProvider:v5 baseTangentSourceProvider:v6 info:v7, v8, v9, v10];
      }

      return 0;
    }
  }

  return result;
}

- (unint64_t)currentFrameHash
{
  currentUpdateRenderContext = self->_currentUpdateRenderContext;
  v3 = [(SCNMTLRenderContext *)currentUpdateRenderContext engineContext];
  SystemTime = C3DEngineContextGetSystemTime(v3);
  v5 = [(SCNMTLOpenSubdivComputeEvaluator *)currentUpdateRenderContext computeEvaluator];
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ currentUpdateRenderContext)));
  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&SystemTime) ^ ((0xC6A4A7935BD1E995 * *&SystemTime) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))));
  return (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
}

- (__n128)currentTransforms
{
  v2 = *(a1 + 560);
  *(a2 + 128) = *(a1 + 544);
  *(a2 + 144) = v2;
  v3 = *(a1 + 592);
  *(a2 + 160) = *(a1 + 576);
  *(a2 + 176) = v3;
  v4 = *(a1 + 496);
  *(a2 + 64) = *(a1 + 480);
  *(a2 + 80) = v4;
  v5 = *(a1 + 528);
  *(a2 + 96) = *(a1 + 512);
  *(a2 + 112) = v5;
  v6 = *(a1 + 432);
  *a2 = *(a1 + 416);
  *(a2 + 16) = v6;
  result = *(a1 + 448);
  v8 = *(a1 + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(a1 + 688);
  *(a2 + 64) = *(a1 + 672);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 704);
  v3 = *(a1 + 624);
  *a2 = *(a1 + 608);
  *(a2 + 16) = v3;
  result = *(a1 + 656);
  *(a2 + 32) = *(a1 + 640);
  *(a2 + 48) = result;
  return result;
}

- (SCNMTLComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeCommandEncoder;
  if (!result)
  {
    result = [(SCNMTLRenderContext *)self->_currentUpdateRenderContext resourceComputeEncoder];
    self->_currentUpdateComputeCommandEncoder = result;
  }

  return result;
}

- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)a3
{
  self->_currentUpdateComputeCommandEncoder = 0;
  v4 = [(SCNMTLRenderContext *)self->_currentUpdateRenderContext resourceCommandBuffer];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)setStageInputOutputBuffersToEncoder:(SCNMTLComputeCommandEncoder *)a3
{
  srcPositions = self->_currentUpdateBuffers.srcPositions;
  if (a3->_buffers[10] == srcPositions)
  {
    if (!a3->_offsets[10])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3->_buffers[10] = srcPositions;
  }

  a3->_offsets[10] = 0;
  a3->_buffersToBind[0] |= 0x400uLL;
LABEL_5:
  srcNormals = self->_currentUpdateBuffers.srcNormals;
  if (a3->_buffers[11] == srcNormals)
  {
    if (!a3->_offsets[11])
    {
      goto LABEL_9;
    }
  }

  else
  {
    a3->_buffers[11] = srcNormals;
  }

  a3->_offsets[11] = 0;
  a3->_buffersToBind[0] |= 0x800uLL;
LABEL_9:
  srcTangents = self->_currentUpdateBuffers.srcTangents;
  if (a3->_buffers[12] == srcTangents)
  {
    if (!a3->_offsets[12])
    {
      return;
    }
  }

  else
  {
    a3->_buffers[12] = srcTangents;
  }

  a3->_offsets[12] = 0;
  a3->_buffersToBind[0] |= 0x1000uLL;
}

uint64_t __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = C3DDeformerStackWantsGPU(a2);
  if (result)
  {
    v9 = [*(*(a1 + 32) + 8) renderResourceForDeformerStack:a2 node:a3 dataKind:a4];
    v10 = v9;
    if (v9)
    {
      if (*(v9 + 51) == 1)
      {
        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
        }
      }

      if (*(v10 + 52) == 1)
      {
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    return [(SCNMTLDeformerStack *)v10 computeDeformedMeshForContext:*(a1 + 48) programHashCodeRequirements:&v27 transforms:v29 frustumInfo:v28 status:?];
  }

  return result;
}

uint64_t __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_36(uint64_t a1)
{
  v1 = [*(a1 + 32) currentComputeEncoder];
  bzero(v1, 0x678uLL);
  return v1[207];
}

- (id)dependencyBufferForInput:(unint64_t)a3 dependencyStack:(id)a4
{
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x48) != 0)
    {
      return *(a4 + 11);
    }

    if (((1 << a3) & 0x90) != 0)
    {
      return *(a4 + 12);
    }

    if (((1 << a3) & 0x120) != 0)
    {
      return *(a4 + 13);
    }
  }

  v5 = scn_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLDeformerStack dependencyBufferForInput:dependencyStack:];
  }

  return 0;
}

- (id)dependencyBufferForInput:(unint64_t)a3 dependencyMesh:(id)a4
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_ERROR, "Unreachable code: Not implemented", v5, 2u);
  }

  __assert_rtn("[SCNMTLDeformerStack dependencyBufferForInput:dependencyMesh:]", "SCNMTLDeformerStack.mm", 1985, "0");
}

- (void)updateDependencyBuffersInBufferArray:(id *)a3 forDeformer:(id)a4
{
  v4 = MEMORY[0x277D85DD0];
  *&a3->var8 = 0u;
  *&a3->var10 = 0u;
  *&a3->var6 = 0u;
  v5[0] = v4;
  v5[1] = 3221225472;
  v5[2] = __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke;
  v5[3] = &unk_2782FC5D0;
  v5[4] = self;
  v5[5] = a3;
  [a4 _enumerateDependencyNodesUsingBlock:v5];
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke(uint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v7 = [a3 nodeRef];
  DeformerStack = C3DNodeGetDeformerStack(v7);
  if (!DeformerStack)
  {
    Geometry = C3DNodeGetGeometry(v7);
    Mesh = C3DGeometryGetMesh(Geometry);
    v39 = [(SCNMTLResourceManager *)*(*(a1 + 32) + 8) renderResourceForMesh:*(*(a1 + 32) + 49) dataKind:?];
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      if ((a4 & 8) != 0 && (v40 = [*(a1 + 32) dependencyBufferForInput:3 dependencyMesh:v39], (*(*(a1 + 40) + 48) = v40) == 0) && (v41 = scn_default_log(), os_log_type_enabled(v41, OS_LOG_TYPE_FAULT)))
      {
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_4(v41, v42, v43, v44, v45, v46, v47, v48);
        if ((a4 & 0x10) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a4 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v49 = [*(a1 + 32) dependencyBufferForInput:4 dependencyMesh:v39];
      *(*(a1 + 40) + 56) = v49;
      if (!v49)
      {
        v50 = scn_default_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_5(v50, v51, v52, v53, v54, v55, v56, v57);
        }
      }

LABEL_24:
      if ((a4 & 0x20) != 0)
      {
        v58 = [*(a1 + 32) dependencyBufferForInput:5 dependencyMesh:v39];
        *(*(a1 + 40) + 64) = v58;
        if (!v58)
        {
          v29 = scn_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }
      }

      return;
    }

    if ((a4 & 0x40) != 0 && (v86 = [*(a1 + 32) dependencyBufferForInput:6 dependencyMesh:v39], (*(*(a1 + 40) + 72) = v86) == 0) && (v87 = scn_default_log(), os_log_type_enabled(v87, OS_LOG_TYPE_FAULT)))
    {
      __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_1(v87, v88, v89, v90, v91, v92, v93, v94);
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((a4 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    v95 = [*(a1 + 32) dependencyBufferForInput:7 dependencyMesh:v39];
    *(*(a1 + 40) + 80) = v95;
    if (!v95)
    {
      v96 = scn_default_log();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
      {
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_2(v96, v97, v98, v99, v100, v101, v102, v103);
      }
    }

LABEL_46:
    if ((a4 & 0x100) == 0)
    {
      return;
    }

    v104 = [*(a1 + 32) dependencyBufferForInput:8 dependencyMesh:v39];
    *(*(a1 + 40) + 88) = v104;
    if (v104)
    {
      return;
    }

    v78 = scn_default_log();
    if (!os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_49:
    __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_3(v78, v79, v80, v81, v82, v83, v84, v85);
    return;
  }

  v9 = [*(*(a1 + 32) + 8) renderResourceForDeformerStack:DeformerStack node:v7 dataKind:*(*(a1 + 32) + 49)];
  if (a2 == 1)
  {
    if ((a4 & 0x40) != 0 && (v59 = [*(a1 + 32) dependencyBufferForInput:6 dependencyStack:v9], (*(*(a1 + 40) + 72) = v59) == 0) && (v60 = scn_default_log(), os_log_type_enabled(v60, OS_LOG_TYPE_FAULT)))
    {
      __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_1(v60, v61, v62, v63, v64, v65, v66, v67);
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((a4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    v68 = [*(a1 + 32) dependencyBufferForInput:7 dependencyStack:v9];
    *(*(a1 + 40) + 80) = v68;
    if (!v68)
    {
      v69 = scn_default_log();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_2(v69, v70, v71, v72, v73, v74, v75, v76);
      }
    }

LABEL_35:
    if ((a4 & 0x100) == 0)
    {
      return;
    }

    v77 = [*(a1 + 32) dependencyBufferForInput:8 dependencyStack:v9];
    *(*(a1 + 40) + 88) = v77;
    if (v77)
    {
      return;
    }

    v78 = scn_default_log();
    if (!os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_49;
  }

  if (a2)
  {
    return;
  }

  if ((a4 & 8) != 0 && (v10 = [*(a1 + 32) dependencyBufferForInput:3 dependencyStack:v9], (*(*(a1 + 40) + 48) = v10) == 0) && (v11 = scn_default_log(), os_log_type_enabled(v11, OS_LOG_TYPE_FAULT)))
  {
    __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v19 = [*(a1 + 32) dependencyBufferForInput:4 dependencyStack:v9];
  *(*(a1 + 40) + 56) = v19;
  if (!v19)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_5(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

LABEL_11:
  if ((a4 & 0x20) != 0)
  {
    v28 = [*(a1 + 32) dependencyBufferForInput:5 dependencyStack:v9];
    *(*(a1 + 40) + 64) = v28;
    if (!v28)
    {
      v29 = scn_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_6(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }
  }
}

uint64_t __76__SCNMTLDeformerStack_updateDataForAuthoringEnvironment_transforms_context___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 232);
    v6 = *(*(a1 + 224) + 24);
    v7 = *(a1 + 176);
    v14[8] = *(a1 + 160);
    v14[9] = v7;
    v8 = *(a1 + 208);
    v14[10] = *(a1 + 192);
    v14[11] = v8;
    v9 = *(a1 + 112);
    v14[4] = *(a1 + 96);
    v14[5] = v9;
    v10 = *(a1 + 144);
    v14[6] = *(a1 + 128);
    v14[7] = v10;
    v11 = *(a1 + 48);
    v14[0] = *(a1 + 32);
    v14[1] = v11;
    v12 = *(a1 + 80);
    v13 = *(a1 + 240);
    v14[2] = *(a1 + 64);
    v14[3] = v12;
    return [a2 updateDataForAuthoringEnvironment:v13 node:v6 transforms:v14 context:v5];
  }

  return result;
}

uint64_t __56__SCNMTLDeformerStack_drawAuthoringEnvironment_context___block_invoke(void *a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = *(a1[4] + 24);

    return [a2 drawAuthoringEnvironment:v5 node:v7 context:v6];
  }

  return result;
}

- (void)initWithDeformerStack:(uint64_t)a3 node:(char)a4 dataKind:(uint64_t)a5 resourceManager:
{
  v74 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v72.receiver = a1;
  v72.super_class = SCNMTLDeformerStack;
  v9 = objc_msgSendSuper2(&v72, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[1] = a5;
    v9[2] = a2;
    v9[3] = a3;
    *(v9 + 48) = a4;
    *(v9 + 49) = a4;
    PostMorphingDeformers = C3DDeformerStackGetPostMorphingDeformers(a2);
    PostSkinningDeformers = C3DDeformerStackGetPostSkinningDeformers(v10[2]);
    v20 = OUTLINED_FUNCTION_9(PostSkinningDeformers, v13, v14, v15, v16, v17, v18, v19);
    if (v20)
    {
      v28 = v20;
      v29 = MEMORY[0];
      do
      {
        v30 = 0;
        do
        {
          if (MEMORY[0] != v29)
          {
            objc_enumerationMutation(PostMorphingDeformers);
          }

          v31 = *(8 * v30);
          *(v10 + 49) = 0;
          *(v10 + 51) |= [v31 deformedMeshReliesOnTransforms];
          v32 = [v31 deformedMeshReliesOnFrustum];
          *(v10 + 52) |= v32;
          ++v30;
        }

        while (v28 != v30);
        v20 = OUTLINED_FUNCTION_9(v32, v33, v34, v35, v36, v37, v38, v39);
        v28 = v20;
      }

      while (v20);
    }

    v40 = OUTLINED_FUNCTION_10(v20, v21, v22, v23, v24, v25, v26, v27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v70, v72.receiver, v72.super_class, v73);
    if (v40)
    {
      v41 = v40;
      v42 = *v56;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v56 != v42)
          {
            objc_enumerationMutation(PostSkinningDeformers);
          }

          v44 = *(v55 + 8 * i);
          *(v10 + 49) = 0;
          *(v10 + 51) |= [v44 deformedMeshReliesOnTransforms];
          v45 = [v44 deformedMeshReliesOnFrustum];
          *(v10 + 52) |= v45;
        }

        v41 = OUTLINED_FUNCTION_10(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v71, v72.receiver, v72.super_class, v73);
      }

      while (v41);
    }
  }

  return v10;
}

- (uint64_t)invalidate
{
  if (result)
  {
    *(result + 50) = 0;
  }

  return result;
}

- (uint64_t)setNextUpdateRequiresResetForIncrementalDeformers
{
  if (result)
  {
    return [(SCNMTLMorphDeformer *)*(result + 832) setNextFrameRequiresFullMeshReset];
  }

  return result;
}

- (uint64_t)computeDeformedMeshReliesOnTransforms
{
  if (a1)
  {
    v1 = *(a1 + 51);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)computeDeformedMeshReliesOnFrustum
{
  if (a1)
  {
    v1 = *(a1 + 52);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)computeDeformedMeshForContext:(unsigned __int8)a3 programHashCodeRequirements:(const void *)a4 transforms:(const void *)a5 frustumInfo:(_BOOL8 *)a6 status:
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 16);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke;
  v59[3] = &unk_2782FC580;
  v59[4] = a1;
  v59[5] = a2;
  v60 = a3;
  C3DDeformerStackEnumerateDependencyStacks(v12, v59);
  memcpy((a1 + 416), a4, 0xC0uLL);
  memcpy((a1 + 608), a5, 0x70uLL);
  *(a1 + 720) = a2;
  [a1 reconfigureIfNeededWithContext:a2 programHashCodeRequirements:a3];
  OUTLINED_FUNCTION_2_4();
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  if (!v13)
  {
    v13 = *(a1 + 88);
  }

  if (!v14)
  {
    v14 = *(a1 + 96);
  }

  v17 = *(a1 + 72);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  if (!v17)
  {
    v17 = *(a1 + 104);
  }

  *(a1 + 736) = v13;
  *(a1 + 744) = v15;
  *(a1 + 752) = v14;
  *(a1 + 760) = v16;
  *(a1 + 768) = v17;
  *(a1 + 776) = v18;
  OUTLINED_FUNCTION_5();
  v24 = *(a1 + 832);
  if (v24)
  {
    *(a1 + 744) = v21;
    *(a1 + 760) = v22;
    *(a1 + 776) = v23;
    v25 = OUTLINED_FUNCTION_11(v24, v20) == 1;
    v26 = *(a1 + 96);
    *(a1 + 744) = *(a1 + 88);
    *(a1 + 760) = v26;
    *(a1 + 776) = *(a1 + 104);
  }

  else
  {
    v25 = 0;
  }

  if (*(a1 + 864) && (PostMorphingDeformers = C3DDeformerStackGetPostMorphingDeformers(*(a1 + 16)), (v28 = [*(a1 + 864) count]) != 0))
  {
    v29 = v28;
    v30 = 0;
    for (i = 0; i != v29; ++i)
    {
      v32 = [*(a1 + 864) objectAtIndexedSubscript:i];
      if (v32)
      {
        [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
        OUTLINED_FUNCTION_8();
        v33 = [*(v32 + 24) updateWithContext:v32];
        *(v32 + 416) = 0;
        *(v32 + 424) = 0;
        if (v33 == 1)
        {
          v25 = 1;
        }

        v30 |= v33 == 1;
      }

      else
      {
        [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
      }

      OUTLINED_FUNCTION_0_5();
      if (([objc_msgSend(PostMorphingDeformers objectAtIndexedSubscript:{i, OUTLINED_FUNCTION_5()), "requiredOutputs"}] & 0x200) != 0)
      {
        if (v32)
        {
          v34 = *(v32 + 24);
        }

        else
        {
          v34 = 0;
        }

        v19 = [v34 meshForDeformedTopology];
      }
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = *(a1 + 840);
  if (v35)
  {
    if (OUTLINED_FUNCTION_11(v35, v20) == 1)
    {
      v25 = 1;
    }

    OUTLINED_FUNCTION_0_5();
  }

  if (*(a1 + 872))
  {
    PostSkinningDeformers = C3DDeformerStackGetPostSkinningDeformers(*(a1 + 16));
    v37 = [*(a1 + 872) count];
    if (v37)
    {
      v38 = v37;
      for (j = 0; j != v38; ++j)
      {
        v40 = [*(a1 + 872) objectAtIndexedSubscript:j];
        if (v40)
        {
          [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
          OUTLINED_FUNCTION_8();
          v41 = [*(v40 + 24) updateWithContext:v40];
          *(v40 + 416) = 0;
          *(v40 + 424) = 0;
          if (v41 == 1)
          {
            v25 = 1;
          }

          v30 |= v41 == 1;
        }

        else
        {
          [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
        }

        OUTLINED_FUNCTION_0_5();
        if (([objc_msgSend(PostSkinningDeformers objectAtIndexedSubscript:{j, OUTLINED_FUNCTION_5()), "requiredOutputs"}] & 0x200) != 0)
        {
          if (v40)
          {
            v42 = *(v40 + 24);
          }

          else
          {
            v42 = 0;
          }

          v19 = [v42 meshForDeformedTopology];
        }
      }
    }
  }

  v43 = *(a1 + 848);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_11(v43, v20);
    if (v44 == 1)
    {
      v25 = 1;
    }

    v30 |= v44 == 1;
    OUTLINED_FUNCTION_0_5();
  }

  if (*(a1 + 48) != *(a1 + 49))
  {
    v45 = [a1 currentComputeEncoder];
    v46 = v45;
    v47 = *(a1 + 88);
    if (v45->_buffers[0] == v47)
    {
      if (!v45->_offsets[0])
      {
        goto LABEL_55;
      }
    }

    else
    {
      v45->_buffers[0] = v47;
    }

    v45->_offsets[0] = 0;
    v45->_buffersToBind[0] |= 1uLL;
LABEL_55:
    v48 = *(a1 + 120);
    if (v45->_buffers[1] == v48)
    {
      if (!v45->_offsets[1])
      {
        goto LABEL_59;
      }
    }

    else
    {
      v45->_buffers[1] = v48;
    }

    v45->_offsets[1] = 0;
    v45->_buffersToBind[0] |= 2uLL;
LABEL_59:
    v49 = *(a1 + 96);
    if (!v49)
    {
      goto LABEL_68;
    }

    if (v45->_buffers[2] == v49)
    {
      if (!v45->_offsets[2])
      {
        goto LABEL_64;
      }
    }

    else
    {
      v45->_buffers[2] = v49;
    }

    v45->_offsets[2] = 0;
    v45->_buffersToBind[0] |= 4uLL;
LABEL_64:
    v50 = *(a1 + 128);
    if (v45->_buffers[3] == v50)
    {
      if (!v45->_offsets[3])
      {
        goto LABEL_68;
      }
    }

    else
    {
      v45->_buffers[3] = v50;
    }

    v45->_offsets[3] = 0;
    v45->_buffersToBind[0] |= 8uLL;
LABEL_68:
    v51 = *(a1 + 104);
    if (!v51)
    {
      goto LABEL_77;
    }

    if (v45->_buffers[4] == v51)
    {
      if (!v45->_offsets[4])
      {
        goto LABEL_73;
      }
    }

    else
    {
      v45->_buffers[4] = v51;
    }

    v45->_offsets[4] = 0;
    v45->_buffersToBind[0] |= 0x10uLL;
LABEL_73:
    v52 = *(a1 + 136);
    if (v45->_buffers[5] == v52)
    {
      if (!v45->_offsets[5])
      {
        goto LABEL_77;
      }
    }

    else
    {
      v45->_buffers[5] = v52;
    }

    v45->_offsets[5] = 0;
    v45->_buffersToBind[0] |= 0x20uLL;
LABEL_77:
    v53 = *(a1 + 352);
    if (v45->_buffers[6] == v53)
    {
      if (!v45->_offsets[6])
      {
LABEL_81:
        SCNMTLComputeCommandEncoder::setBytes(v45, (a1 + 336), 4uLL, 7uLL);
        v54 = [(SCNMTLOpenSubdivComputeEvaluator *)*(a1 + 344) computeEvaluator];
        v55 = *(a1 + 336);
        if (v46->_computePipelineState != v54)
        {
          v46->_computePipelineState = v54;
          [(MTLComputeCommandEncoder *)v46->_encoder setComputePipelineState:v54];
        }

        SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v46, v55);
        goto LABEL_84;
      }
    }

    else
    {
      v45->_buffers[6] = v53;
    }

    v45->_offsets[6] = 0;
    v45->_buffersToBind[0] |= 0x40uLL;
    goto LABEL_81;
  }

LABEL_84:
  v56 = *(a1 + 128);
  *(a1 + 744) = *(a1 + 120);
  *(a1 + 760) = v56;
  *(a1 + 776) = *(a1 + 136);
  if (v25)
  {
    OUTLINED_FUNCTION_11(*(a1 + 856), v20);
  }

  v57 = *(a1 + 728);
  if (v57)
  {
    bzero(v57, 0x678uLL);
  }

  *a6 = v25;
  bzero((a1 + 416), 0xC0uLL);
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  if (v30)
  {
    C3DNodeBoundingBoxDidUpdate(*(a1 + 24));
  }

  return v19;
}

- (uint64_t)bufferForCommonProfileArgumentNamed:(uint64_t)result
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [*(v3 + 848) bufferForCommonProfileArgumentNamed:a2]) == 0)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v5 = 136315394;
        v6 = "buffer != nil";
        v7 = 2112;
        v8 = a2;
        _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Deformer stack failed to find buffer for shader argument %@", &v5, 0x16u);
      }

      return 0;
    }
  }

  return result;
}

- (uint64_t)updateDataForAuthoringEnvironment:(uint64_t)a3 transforms:(uint64_t)a4 context:
{
  if (result)
  {
    v5 = result;
    OUTLINED_FUNCTION_2_4();
    v10[1] = 3221225472;
    v10[2] = __76__SCNMTLDeformerStack_updateDataForAuthoringEnvironment_transforms_context___block_invoke;
    v10[3] = &unk_2782FC5F8;
    v10[30] = v6;
    v10[28] = v7;
    memcpy((v8 + 32), v9, 0xC0uLL);
    v10[29] = a4;
    return [v5 enumerateInternalDeformersUsingBlock:v10];
  }

  return result;
}

- (void)drawAuthoringEnvironment:(uint64_t)a3 context:
{
  if (result)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __56__SCNMTLDeformerStack_drawAuthoringEnvironment_context___block_invoke;
    v3[3] = &unk_2782FC620;
    v3[5] = a3;
    v3[6] = a2;
    v3[4] = result;
    return [result enumerateInternalDeformersUsingBlock:v3];
  }

  return result;
}

- (void)setupFinalMeshFromBaseMeshWithInfo:(NSObject *)a3 .cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "_finalDataKind == kC3DMeshDataKindOriginal && subdivIsUsed";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Only original data kind can have non 'GPU' primitive type", a1);
}

- (void)deindexedToOriginalTableBufferWithBlitEncoder:(NSObject *)a3 indexSizeOut:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "orig < originalVertexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. buffer overflow", a1);
}

- (void)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(NSObject *)a3 indexSizeOut:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "prov < deindexedVertexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. buffer overflow", a1);
}

@end