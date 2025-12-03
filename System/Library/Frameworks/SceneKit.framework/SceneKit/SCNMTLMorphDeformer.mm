@interface SCNMTLMorphDeformer
+ (uint64_t)supportedOutputsForMorpher:(uint64_t)morpher;
- (uint64_t)setNextFrameRequiresFullMeshReset;
- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context;
- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1;
- (void)dealloc;
- (void)initWithMorpher:(char)morpher outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:;
- (void)setupMorphTargetsWithComputeContext:(id)context;
@end

@implementation SCNMTLMorphDeformer

+ (uint64_t)supportedOutputsForMorpher:(uint64_t)morpher
{
  objc_opt_self();
  OverrideMaterial = C3DGeometryGetOverrideMaterial(a2);
  if (!C3DMorphGetMorphNormals(OverrideMaterial))
  {
    return 1;
  }

  if (C3DPreferencesGetBool(9))
  {
    return 1;
  }

  return 3;
}

- (void)dealloc
{
  morpher = self->_morpher;
  if (morpher)
  {
    CFRelease(morpher);
    self->_morpher = 0;
  }

  free(self->_runtimeMorphTargets);
  v4.receiver = self;
  v4.super_class = SCNMTLMorphDeformer;
  [(SCNMTLMorphDeformer *)&v4 dealloc];
}

- (void)setupMorphTargetsWithComputeContext:(id)context
{
  BaseGeometry = C3DMorpherGetBaseGeometry(self->_morpher);
  v6 = C3DGeometryUsesDeformerBasedDynamicMesh(BaseGeometry);
  if (v6)
  {
    PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(BaseGeometry);
    if (PositionSourceForDeformerBasedDynamicMesh)
    {
      SourceWithSemanticAtIndex = PositionSourceForDeformerBasedDynamicMesh;
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v11 setupMorphTargetsWithComputeContext:v12, v13, v14, v15, v16, v17, v18];
    }

LABEL_10:
    SourceWithSemanticAtIndex = 0;
    goto LABEL_11;
  }

  Mesh = C3DGeometryGetMesh(BaseGeometry);
  if (!Mesh)
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v19 setupMorphTargetsWithComputeContext:v20, v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_10;
  }

  v10 = Mesh;
  SourceWithSemanticAtIndex = 0;
LABEL_12:
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_morpher);
  if (!OverrideMaterial)
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v28 setupMorphTargetsWithComputeContext:v29, v30, v31, v32, v33, v34, v35];
    }
  }

  v36 = C3DMorphGetCalculationMode(OverrideMaterial) == 0;
  IsUsingSparseTargets = C3DMorphIsUsingSparseTargets(OverrideMaterial);
  if (IsUsingSparseTargets)
  {
    finalMeshDataKind = 0;
    v39 = 44;
    v40 = 23;
    v41 = 1;
  }

  else
  {
    v41 = 0;
    finalMeshDataKind = self->_finalMeshDataKind;
    v40 = 9;
    v39 = 9;
  }

  if (!self->_morphNormals)
  {
    v40 = 0;
  }

  self->_morphKind = v41;
  self->_dataKindForComputeKernel = finalMeshDataKind;
  self->_basePositionDataType = 9;
  self->_baseNormalDataType = v40;
  self->_morphTargetPositionDataType = v39;
  self->_morphTargetNormalDataType = v40;
  v168 = OverrideMaterial;
  v170 = C3DGeometryGetOverrideMaterial(OverrideMaterial);
  Count = CFArrayGetCount(v170);
  v43 = Count;
  if (!Count)
  {
    v44 = scn_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v44 setupMorphTargetsWithComputeContext:v45, v46, v47, v48, v49, v50, v51];
    }
  }

  v188[0] = 0;
  v52 = self->_finalMeshDataKind;
  selfCopy = self;
  contextCopy = context;
  v169 = SourceWithSemanticAtIndex;
  if (v6)
  {
    if (v52 != self->_dataKindForComputeKernel)
    {
      [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
    }

    PositionOriginalToFirstDeindexedTable = 0;
    PositionDeindexedToOriginalTable = 0;
    v54 = 0;
    v55 = SourceWithSemanticAtIndex;
  }

  else
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v10, 0, 0, v52);
    PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(v10, v188);
    PositionOriginalToFirstDeindexedTable = C3DMeshGetPositionOriginalToFirstDeindexedTable(v10);
    v56 = C3DMeshGetSourceWithSemanticAtIndex(v10, 0, 0, self->_dataKindForComputeKernel);
    if (!v56)
    {
      v57 = scn_default_log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLMorphDeformer *)v57 setupMorphTargetsWithComputeContext:v58, v59, v60, v61, v62, v63, v64];
      }
    }

    if (self->_morphNormals)
    {
      v65 = C3DMeshGetSourceWithSemanticAtIndex(v10, 1, 0, self->_dataKindForComputeKernel);
      if (v65)
      {
        v55 = v56;
        v54 = v65;
      }

      else
      {
        v66 = C3DCreateNormalsWithMesh(v10, self->_dataKindForComputeKernel, 0);
        if (!v66)
        {
          v67 = scn_default_log();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
          {
            [(SCNMTLDeformerStack *)v67 setupInitialBuffersWithBasePositionSourceProvider:v68 baseNormalSourceProvider:v69 baseTangentSourceProvider:v70 info:v71, v72, v73, v74];
          }
        }

        CFAutorelease(v66);
        v55 = v56;
        v54 = v66;
      }
    }

    else
    {
      v55 = v56;
      v54 = 0;
    }
  }

  selfCopy->_vertexCountForComputeKernel = C3DMeshSourceGetCount(v55);
  selfCopy->_finalMeshVertexCount = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
  v75 = malloc_type_malloc(40 * v43, 0x10600401818AB88uLL);
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke;
  v184[3] = &unk_2782FD170;
  v186 = IsUsingSparseTargets;
  v184[4] = selfCopy;
  v184[5] = v10;
  v166 = v54;
  v167 = v55;
  v184[6] = v55;
  v184[7] = v54;
  v76 = selfCopy;
  v185 = v188[0];
  v187 = v36;
  v184[8] = PositionDeindexedToOriginalTable;
  v184[9] = v75;
  C3DCFArrayApplyBlock(v170, v184);
  runtimeMorphTargetCount = selfCopy->_runtimeMorphTargetCount;
  if (runtimeMorphTargetCount)
  {
    selfCopy->_runtimeMorphTargets = malloc_type_malloc(32 * runtimeMorphTargetCount, 0x100004017768742uLL);
    v78 = C3DSizeOfBaseType(selfCopy->_morphTargetPositionDataType);
    v79 = C3DSizeOfBaseType(selfCopy->_morphTargetNormalDataType);
    computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)selfCopy->_resourceManager computeEvaluator];
    if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator))
    {
      v81 = (v79 + ((v78 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v81 = v79 + v78;
    }

    v176 = v81;
    v84 = selfCopy->_vertexCountForComputeKernel - 1;
    v85 = 1;
    if (v84 > 0xFF)
    {
      v85 = 2;
    }

    v86 = HIWORD(v84);
    if (HIWORD(v84))
    {
      v85 = 4;
    }

    v171 = v85;
    SCNMTLDataTypeFromC3DBaseType(selfCopy->_morphTargetPositionDataType);
    v165 = v75;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v87 = 0;
      v88 = 0;
      v89 = 0;
      if (v86)
      {
        v90 = 2;
      }

      else
      {
        v90 = v84 > 0xFF;
      }

      v91 = v75 + 4;
      do
      {
        Alignment = MTLDataTypeGetAlignment();
        v93 = *v91;
        if (*v91 != selfCopy->_vertexCountForComputeKernel)
        {
          v94 = MTLDataTypeGetAlignment();
          v89 = ((v89 + v94 - 1) & -v94) + (*v91 << v90);
        }

        v88 = ((v88 + Alignment - 1) & -Alignment) + v93 * v176;
        ++v87;
        v91 += 5;
      }

      while (v87 < selfCopy->_runtimeMorphTargetCount);
      v173 = malloc_type_malloc(v88, 0x100004077774924uLL);
      if (v89)
      {
        v95 = malloc_type_malloc(v89, 0x100004077774924uLL);
      }

      else
      {
        v95 = 0;
      }

      v86 = HIWORD(v84);
    }

    else
    {
      v173 = malloc_type_malloc(0, 0x100004077774924uLL);
      v88 = 0;
      v89 = 0;
      v95 = 0;
    }

    v174 = v95;
    v164 = v89;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v96 = 0;
      v97 = 0;
      v98 = 0;
      if (v86)
      {
        v99 = 2;
      }

      else
      {
        v99 = v84 > 0xFF;
      }

      v100 = 4;
      v101 = v165;
      do
      {
        v102 = (&v76->_runtimeMorphTargets->var0 + v100);
        *v102 = *v101;
        v103 = MTLDataTypeGetAlignment();
        v104 = (v97 + v103 - 1) & -v103;
        v105 = MTLDataTypeGetAlignment();
        v106 = (v98 + v105 - 1) & -v105;
        [(SCNMTLMorphDeformer *)v76 createVertexBufferForMorphTarget:v102 - 1 withSetupTarget:v101 vertexBuffer:v173 vertexBufferOffset:v104 indicesBuffer:v174 indicesBufferOffset:v106 indexSize:v171 originalToFirstDeindexedTable:PositionOriginalToFirstDeindexedTable computeContext:contextCopy];
        v107 = *(v101 + 4);
        if (v107 == v76->_vertexCountForComputeKernel)
        {
          v108 = 0;
        }

        else
        {
          v108 = v107 << v99;
        }

        CFRelease(*(v101 + 2));
        v109 = *(v101 + 3);
        if (v109)
        {
          CFRelease(v109);
          *(v101 + 3) = 0;
        }

        v97 = v104 + v107 * v176;
        v98 = v108 + v106;
        ++v96;
        v76 = selfCopy;
        v100 += 32;
        v101 += 40;
      }

      while (v96 < selfCopy->_runtimeMorphTargetCount);
    }

    else
    {
      v98 = 0;
      v97 = 0;
    }

    free(v165);
    contextCopy2 = contextCopy;
    v76->_morphTargetsVertexBuffer = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v76->_resourceManager, v173, v88, [contextCopy currentBlitEncoder]);
    free(v173);
    if (v174)
    {
      v76->_morphTargetsSparseIndicesBuffer = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v76->_resourceManager, v174, v164, [contextCopy currentBlitEncoder]);
      free(v174);
    }

    v82 = v169;
    if (v97 != v88)
    {
      v110 = scn_default_log();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLMorphDeformer *)v110 setupMorphTargetsWithComputeContext:v111, v112, v113, v114, v115, v116, v117];
      }
    }

    if (v98 != v164)
    {
      v118 = scn_default_log();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLMorphDeformer *)v118 setupMorphTargetsWithComputeContext:v119, v120, v121, v122, v123, v124, v125];
      }
    }
  }

  else
  {
    free(v75);
    v82 = v169;
    contextCopy2 = context;
  }

  v182 = 0;
  v183 = 0;
  v181 = 0;
  LOBYTE(v163) = 1;
  v76->_baseBufferForComputeKernel = [contextCopy2 newBufferForDataKind:v76->_dataKindForComputeKernel positionSource:v167 normalSource:v166 positionDataType:v76->_basePositionDataType normalDataType:v76->_baseNormalDataType forStageInputOutputDescriptor:1 usePrivateStorageMode:v163 outStride:&v183 outPositionOffset:&v182 outNormalOffset:&v181];
  v126 = v76;
  v127 = C3DSizeOfBaseType(v76->_morphTargetPositionDataType);
  v128 = C3DSizeOfBaseType(v126->_morphTargetNormalDataType);
  computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v126->_resourceManager computeEvaluator];
  if (!SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator2))
  {
    v130 = v128 + v127;
    if (!v82)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v127 = (v127 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v130 = (v128 + v127 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v82)
  {
LABEL_84:
    CFRelease(v82);
  }

LABEL_85:
  if (C3DMorphGetClearCPUDataAfterUpload(v168))
  {
    C3DCFArrayApplyBlock(v170, &__block_literal_global_36);
  }

  morphKind = selfCopy->_morphKind;
  if (!morphKind)
  {
    LOBYTE(v180) = selfCopy->_morphNormals;
    v133 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v133 setConstantValue:&v180 type:53 withName:@"morphNormal"];
    v139 = 45;
    if (selfCopy->_morphNormals)
    {
      v139 = 78;
    }

    v139 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v139];
    v141 = objc_alloc_init(MEMORY[0x277CD6FF0]);
    v142 = 0;
    do
    {
      v143 = v142 + 1;
      v144 = [objc_msgSend(v141 "layouts")];
      [v144 setStepFunction:5];
      [v144 setStride:v130];
      v145 = [objc_msgSend(v141 "attributes")];
      [v145 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetPositionDataType)];
      [v145 setOffset:0];
      [v145 setBufferIndex:v142 + 1];
      if (v180 == 1)
      {
        v146 = [objc_msgSend(v141 "attributes")];
        [v146 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetNormalDataType)];
        [v146 setOffset:v127];
        [v146 setBufferIndex:v143];
      }

      v142 = v143;
    }

    while (v143 != 8);
    selfCopy->_incrementalInitPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:@"blend_inc_init_8x_generic" withStageDescriptor:v141 stageDescriptorUpdateBlock:0 constants:v133 constantsHash:v139];
    selfCopy->_incrementalAddPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:@"blend_inc_add_8x_generic" withStageDescriptor:v141 stageDescriptorUpdateBlock:0 constants:v133 constantsHash:v139];

    goto LABEL_141;
  }

  if (morphKind == 1)
  {
    v179 = 0;
    v180 = 0;
    if (!selfCopy->_dataKindForComputeKernel && selfCopy->_finalMeshDataKind == 1 && PositionOriginalToFirstDeindexedTable)
    {
      currentBlitEncoder = [contextCopy2 currentBlitEncoder];
      selfCopy->_originalToFirstDeindexedTableBuffer = [contextCopy2 originalToFirstDeindexedTableBufferWithBlitEncoder:currentBlitEncoder indexSizeOut:&v180];
      selfCopy->_deindexedToFirstDeindexedTableBuffer = [contextCopy2 deindexedToFirstDeindexedTableBufferWithBlitEncoder:currentBlitEncoder indexSizeOut:&v179];
    }

    morphNormals = selfCopy->_morphNormals;
    v133 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v133 setConstantValue:&morphNormals type:53 withName:@"morphNormal"];
    v134 = 45;
    if (selfCopy->_morphNormals)
    {
      v134 = 78;
    }

    v134 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v134];
    if (selfCopy->_originalToFirstDeindexedTableBuffer)
    {
      switch(v180)
      {
        case 1:
          v136 = 0;
          v137 = @"copy_indexed_u8_generic";
          v138 = @"blend_indexed_u8_generic";
          goto LABEL_114;
        case 4:
          v136 = 0;
          v137 = @"copy_indexed_u32_generic";
          v138 = @"blend_indexed_u32_generic";
          goto LABEL_114;
        case 2:
          v136 = 0;
          v137 = @"copy_indexed_u16_generic";
          v138 = @"blend_indexed_u16_generic";
LABEL_114:
          v149 = objc_alloc_init(MEMORY[0x277CD6FF0]);
          v150 = [objc_msgSend(v149 "layouts")];
          [v150 setStepFunction:5];
          [v150 setStride:v183];
          v151 = [objc_msgSend(v149 "attributes")];
          [v151 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_basePositionDataType)];
          [v151 setOffset:v182];
          [v151 setBufferIndex:1];
          if (selfCopy->_morphNormals)
          {
            v152 = [objc_msgSend(v149 "attributes")];
            [v152 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_baseNormalDataType)];
            [v152 setOffset:v181];
            [v152 setBufferIndex:1];
          }

          selfCopy->_copyBaseBufferPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v137 withStageDescriptor:v149 stageDescriptorUpdateBlock:0 constants:v133 constantsHash:v134];
          [v149 reset];
          v153 = [objc_msgSend(v149 "layouts")];
          [v153 setStepFunction:5];
          [v153 setStride:v130];
          v154 = [objc_msgSend(v149 "attributes")];
          [v154 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetPositionDataType)];
          [v154 setOffset:0];
          [v154 setBufferIndex:1];
          if (morphNormals)
          {
            v155 = [objc_msgSend(v149 "attributes")];
            [v155 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetNormalDataType)];
            [v155 setOffset:v127];
            [v155 setBufferIndex:1];
          }

          selfCopy->_blendDensePipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:@"blend_generic" withStageDescriptor:v149 stageDescriptorUpdateBlock:0 constants:v133 constantsHash:v134];
          if ((v136 & 1) == 0)
          {
            selfCopy->_blendDenseIndexedPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v138 withStageDescriptor:v149 stageDescriptorUpdateBlock:0 constants:v133 constantsHash:v134];
          }

          v156 = selfCopy->_vertexCountForComputeKernel - 1;
          v157 = 1;
          if (v156 > 0xFF)
          {
            v157 = 2;
          }

          v158 = HIWORD(v156) == 0;
          v159 = 4;
          if (v158)
          {
            v159 = v157;
          }

          if (v159 == 1)
          {
            v160 = @"blend_indexed_u8_generic";
          }

          else if (v159 == 4)
          {
            v160 = @"blend_indexed_u32_generic";
          }

          else
          {
            v160 = @"blend_indexed_u16_generic";
          }

          selfCopy->_blendSparsePipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v160 withStageDescriptor:v149 stageDescriptorUpdateBlock:0 constants:v133 constantsHash:v134];

          if (selfCopy->_deindexedToFirstDeindexedTableBuffer)
          {
            switch(v179)
            {
              case 1:
                v161 = @"splat_indexed_s8_vertices";
                break;
              case 4:
                v161 = @"splat_indexed_s32_vertices";
                break;
              case 2:
                v161 = @"splat_indexed_s16_vertices";
                break;
              default:
                v162 = scn_default_log();
                if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                {
                  [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
                }

                v161 = 0;
                break;
            }

            selfCopy->_splatPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v161 constants:v133 constantsHash:v134];
          }

LABEL_141:

          return;
      }

      v148 = scn_default_log();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
      }
    }

    v138 = 0;
    v137 = @"copy_generic";
    v136 = 1;
    goto LABEL_114;
  }

  v147 = scn_default_log();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
  }
}

void __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (C3DGeometryUsesDeformerBasedDynamicMesh(a3))
  {
    PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(a3);
    CFAutorelease(PositionSourceForDeformerBasedDynamicMesh);
    if (*(a1 + 84))
    {
      __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_2();
    }

    SourceWithSemanticAtIndex = 0;
  }

  else
  {
    Mesh = C3DGeometryGetMesh(a3);
    PositionSourceForDeformerBasedDynamicMesh = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 0);
    SourceWithSemanticAtIndex = 0;
    if (*(*(a1 + 32) + 32) == 1)
    {
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 1, 0, 0);
      if (!SourceWithSemanticAtIndex)
      {
        SourceWithSemanticAtIndex = C3DCreateNormalsForMorphTargetWithBaseMesh(Mesh, *(a1 + 40), 0);
        if (!SourceWithSemanticAtIndex)
        {
          v9 = scn_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }

        CFAutorelease(SourceWithSemanticAtIndex);
      }
    }

    if (*(a1 + 84) != 1 || PositionSourceForDeformerBasedDynamicMesh)
    {
      if (!*(a1 + 84))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!C3DMeshGetElementsCount(Mesh))
      {
        return;
      }

      if ((*(a1 + 84) & 1) == 0)
      {
        PositionSourceForDeformerBasedDynamicMesh = 0;
        goto LABEL_19;
      }
    }

    if (*(*(a1 + 32) + 40) != 1)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, 0, 0);
      Count = C3DMeshSourceGetCount(*(a1 + 48));
      ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(*(a1 + 40), 0, 0);
      PositionSourceForDeformerBasedDynamicMesh = C3DMeshSourceCreateUnpackedCopy(PositionSourceForDeformerBasedDynamicMesh, ElementAtIndex, Count, ChannelForSourceWithSemanticAtIndex);
      CFAutorelease(PositionSourceForDeformerBasedDynamicMesh);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v20 = C3DMeshSourceGetCount(*(a1 + 56));
        v21 = C3DMeshGetChannelForSourceWithSemanticAtIndex(*(a1 + 40), 1, 0);
        SourceWithSemanticAtIndex = C3DMeshSourceCreateUnpackedCopy(SourceWithSemanticAtIndex, ElementAtIndex, v20, v21);
        CFAutorelease(SourceWithSemanticAtIndex);
      }
    }
  }

LABEL_19:
  if (*(*(a1 + 32) + 17) == 1 && (v22 = *(a1 + 64)) != 0)
  {
    v23 = C3DMeshSourceCreatedDeindexedCopy(PositionSourceForDeformerBasedDynamicMesh, *(a1 + 80), v22);
    if (*(*(a1 + 32) + 32) == 1)
    {
      v24 = C3DMeshSourceCreatedDeindexedCopy(SourceWithSemanticAtIndex, *(a1 + 80), *(a1 + 64));
LABEL_25:
      v25 = v24;
      goto LABEL_27;
    }
  }

  else
  {
    v23 = CFRetain(PositionSourceForDeformerBasedDynamicMesh);
    if (*(*(a1 + 32) + 32) == 1)
    {
      v24 = CFRetain(SourceWithSemanticAtIndex);
      goto LABEL_25;
    }
  }

  v25 = 0;
LABEL_27:
  if (*(a1 + 85) == 1)
  {
    DeltaSource = C3DMeshSourceCreateDeltaSource(*(a1 + 48), v23);
    if (!DeltaSource)
    {
      return;
    }

    v27 = DeltaSource;
    CFRelease(v23);
    if (*(*(a1 + 32) + 32) == 1)
    {
      v28 = C3DMeshSourceCreateDeltaSource(*(a1 + 56), v25);
      if (!v28)
      {
        return;
      }

      v29 = v28;
      CFRelease(v25);
      v25 = v29;
    }
  }

  else
  {
    v27 = v23;
  }

  if (*(*(a1 + 32) + 40) != 1)
  {
    v42 = C3DMeshSourceGetCount(v27);
    if (*(*(a1 + 32) + 64) != v42)
    {
      v43 = scn_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_3(v43, v44, v45, v46, v47, v48, v49, v50);
      }
    }

    v51 = v42;
    goto LABEL_51;
  }

  v62 = 0u;
  v63 = 0u;
  C3DMeshSourceGetContent(v27, &v62);
  v32 = 0uLL;
  v60 = 0u;
  v61 = 0u;
  if (v25)
  {
    C3DMeshSourceGetContent(v25, &v60);
    v36 = v63;
    if (v63)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        *v39.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v63), (v62 + v38 * BYTE6(v63)), v33, v34.f32[0], v35.f32[0]);
        v59 = v39;
        *v33.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v61), (v60 + v38 * BYTE6(v61)), v39, v40, v41);
        v35.i64[0] = 0x3400000034000000;
        v35.i64[1] = 0x3400000034000000;
        v34.i32[0] = vminvq_u32(vcgtq_f32(v35, vabsq_f32(v59)));
        if ((v34.i32[0] & 0x80000000) == 0 || (v34.i64[0] = 0x3400000034000000, v34.i64[1] = 0x3400000034000000, v33 = vcgtq_f32(v34, vabsq_f32(v33)), v33.i32[0] = vminvq_u32(v33), (v33.i32[0] & 0x80000000) == 0))
        {
          ++v37;
        }

        ++v38;
      }

      while (v36 != v38);
LABEL_49:
      if (v37)
      {
        v51 = v37;
LABEL_51:
        v55 = *(a1 + 72);
        v56 = *(a1 + 32);
        v57 = *(v56 + 68);
        *(v56 + 68) = v57 + 1;
        v58 = v55 + 40 * v57;
        *v58 = a2;
        *(v58 + 4) = 0;
        *(v58 + 8) = a3;
        *(v58 + 16) = v27;
        *(v58 + 24) = v25;
        *(v58 + 32) = v51;
        return;
      }
    }
  }

  else
  {
    v52 = v63;
    if (v63)
    {
      v37 = 0;
      v53 = 0;
      do
      {
        *v54.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v63), (v62 + v53 * BYTE6(v63)), v32, v30.f32[0], v31);
        v30.i64[0] = 0x3400000034000000;
        v30.i64[1] = 0x3400000034000000;
        v32 = vcgtq_f32(v30, vabsq_f32(v54));
        v32.i32[0] = vminvq_u32(v32);
        v37 += v32.i32[0] >= 0;
        ++v53;
      }

      while (v52 != v53);
      goto LABEL_49;
    }
  }

  CFRelease(v27);
  if (v25)
  {
    CFRelease(v25);
  }
}

void __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!C3DGeometryUsesDeformerBasedDynamicMesh(a3))
  {
    Mesh = C3DGeometryGetMesh(a3);

    C3DMeshClearCPURepresentation(Mesh);
  }
}

- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1
{
  v63 = 0u;
  v64 = 0u;
  C3DMeshSourceGetContent(setupTarget->var2, &v63);
  v61 = 0u;
  v62 = 0u;
  if (self->_morphNormals)
  {
    C3DMeshSourceGetContent(setupTarget->var3, &v61);
  }

  v18 = v64;
  target->var2 = setupTarget->var4;
  if (self->_morphKind == 1)
  {
    [(SCNMTLMorphDeformer *)self createSparseIndicesBufferForMorphTarget:target withSetupTarget:setupTarget indicesBuffer:indicesBuffer indicesBufferOffset:bufferOffset indexSize:size originalToFirstDeindexedTable:table computeContext:context];
  }

  else
  {
    target->var4 = 0;
  }

  morphTargetPositionDataType = self->_morphTargetPositionDataType;
  if (morphTargetPositionDataType == 23)
  {
    if (self->_morphKind != 1)
    {
      v20 = scn_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [SCNMTLMorphDeformer createVertexBufferForMorphTarget:v20 withSetupTarget:v21 vertexBuffer:v22 vertexBufferOffset:v23 indicesBuffer:v24 indicesBufferOffset:v25 indexSize:v26 originalToFirstDeindexedTable:v27 computeContext:?];
      }
    }

    v28 = vmaxvq_f32(C3DMeshSourceGetAbsoluteMaxValue(setupTarget->var2));
    LOWORD(morphTargetPositionDataType) = self->_morphTargetPositionDataType;
    v60 = 1.0 / v28;
  }

  else
  {
    v60 = 1.0;
    v28 = 1.0;
  }

  target->var0 = v28;
  v29 = C3DSizeOfBaseType(morphTargetPositionDataType);
  v30 = C3DSizeOfBaseType(self->_morphTargetNormalDataType);
  v31 = v30 + v29;
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_resourceManager computeEvaluator];
  if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator))
  {
    v31 = (v30 + ((v29 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = (v29 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v36 = v29;
  }

  v37 = v31 * target->var2;
  v38 = &buffer[offset];
  if (self->_morphKind == 1)
  {
    if (self->_morphNormals)
    {
      if (v18)
      {
        v39 = 0;
        v40 = &buffer[offset];
        do
        {
          *v41.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v64), (v63 + v39 * BYTE6(v64)), v33, v34.f32[0], v35.f32[0]);
          v58 = v41;
          *v44.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v62), (v61 + v39 * BYTE6(v62)), v41, v42, v43);
          v35 = v44;
          v34.i64[0] = 0x3400000034000000;
          v34.i64[1] = 0x3400000034000000;
          if ((vminvq_u32(vcgtq_f32(v34, vabsq_f32(v58))) & 0x80000000) == 0 || (v33 = vcgtq_f32(v34, vabsq_f32(v44)), v33.i32[0] = vminvq_u32(v33), (v33.i32[0] & 0x80000000) == 0))
          {
            v45 = vmulq_n_f32(v58, v60);
            v59 = v35;
            C3DConvertFloatingTypeFromFloat4(self->_morphTargetPositionDataType, v40, v45);
            C3DConvertFloatingTypeFromFloat4(self->_morphTargetNormalDataType, &v40[v36], v59);
            v40 += v31;
          }

          ++v39;
        }

        while (v18 != v39);
        goto LABEL_37;
      }

LABEL_36:
      v40 = &buffer[offset];
      goto LABEL_37;
    }

    if (!v18)
    {
      goto LABEL_36;
    }

    v49 = 0;
    v40 = &buffer[offset];
    do
    {
      *v33.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v64), (v63 + v49 * BYTE6(v64)), v33, v34.f32[0], v35.f32[0]);
      v35.i64[0] = 0x3400000034000000;
      v35.i64[1] = 0x3400000034000000;
      v34.i32[0] = vminvq_u32(vcgtq_f32(v35, vabsq_f32(v33)));
      if ((v34.i32[0] & 0x80000000) == 0)
      {
        C3DConvertFloatingTypeFromFloat4(self->_morphTargetPositionDataType, v40, vmulq_n_f32(v33, v60));
        v40 += v31;
      }

      ++v49;
    }

    while (v18 != v49);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_36;
    }

    v46 = 0;
    v40 = &buffer[offset];
    do
    {
      *v47.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v64), (v63 + v46 * BYTE6(v64)), v33, v34.f32[0], v35.f32[0]);
      C3DConvertFloatingTypeFromFloat4(self->_morphTargetPositionDataType, v40, vmulq_n_f32(v47, v60));
      if (self->_morphNormals)
      {
        *v48.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v62), (v61 + v46 * BYTE6(v62)), v33, v34.f32[0], v35.f32[0]);
        C3DConvertFloatingTypeFromFloat4(self->_morphTargetNormalDataType, &v40[v36], v48);
      }

      v40 += v31;
      ++v46;
    }

    while (v18 != v46);
  }

LABEL_37:
  if (v40 != &v38[v37])
  {
    v50 = scn_default_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLMorphDeformer createVertexBufferForMorphTarget:v50 withSetupTarget:v51 vertexBuffer:v52 vertexBufferOffset:v53 indicesBuffer:v54 indicesBufferOffset:v55 indexSize:v56 originalToFirstDeindexedTable:v57 computeContext:?];
    }
  }

  target->var3 = offset;
}

- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context
{
  targetCopy = target;
  if (target->var2 == self->_vertexCountForComputeKernel)
  {
    target->var3 = 0;
    target->var4 = 0;
    return;
  }

  var3 = setupTarget->var3;
  if (self->_dataKindForComputeKernel)
  {
    v16 = 0;
  }

  else
  {
    if (table)
    {
      v17 = self->_finalMeshDataKind == 1;
    }

    else
    {
      v17 = 0;
    }

    v16 = v17;
  }

  v91 = 0u;
  v92 = 0u;
  C3DMeshSourceGetContent(setupTarget->var2, &v91);
  v89 = 0u;
  v90 = 0u;
  if (var3)
  {
    C3DMeshSourceGetContent(setupTarget->var3, &v89);
  }

  v18 = &buffer[offset];
  if (size == 1)
  {
    v19 = &buffer[offset];
  }

  else
  {
    v19 = 0;
  }

  if (size == 2)
  {
    v20 = &buffer[offset];
  }

  else
  {
    v20 = 0;
  }

  if (size == 4)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  Mesh = C3DGeometryGetMesh(setupTarget->var1);
  if (C3DMeshGetElementsCount(Mesh) >= 1)
  {
    v77 = targetCopy;
    ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, 0, 0);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    C3DMeshElementGetContent(ElementAtIndex, 0, &v85);
    offsetCopy = offset;
    if (var3)
    {
      if (v86)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v84 = 0;
          v80 = v85;
          v81 = v86;
          v82 = v87;
          v83 = v88;
          C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(&v80, v27, &v84 + 1, &v84);
          v33 = v84;
          for (i = HIDWORD(v84); i < v33; ++i)
          {
            *v35.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v92), (v91 + v28 * BYTE6(v92)), v30, v31.f32[0], v32.f32[0]);
            v78 = v35;
            *v30.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v90), (v89 + v28 * BYTE6(v90)), v35, v36, v37);
            v32.i64[0] = 0x3400000034000000;
            v32.i64[1] = 0x3400000034000000;
            v31.i32[0] = vminvq_u32(vcgtq_f32(v32, vabsq_f32(v78)));
            if ((v31.i32[0] & 0x80000000) == 0 || (v31.i64[0] = 0x3400000034000000, v31.i64[1] = 0x3400000034000000, v30 = vcgtq_f32(v31, vabsq_f32(v30)), v30.i32[0] = vminvq_u32(v30), (v30.i32[0] & 0x80000000) == 0))
            {
              if (v16)
              {
                v38 = table[i];
                if (v19)
                {
                  goto LABEL_31;
                }

LABEL_33:
                v19 = 0;
                if (v20)
                {
                  *v20 = v38;
                  v20 += 2;
                }

                else
                {
                  *v21++ = v38;
                }
              }

              else
              {
                v38 = i;
                if (!v19)
                {
                  goto LABEL_33;
                }

LABEL_31:
                *v19++ = v38;
              }

              ++v29;
              v33 = v84;
            }

            ++v28;
          }

          if (++v27 >= v86)
          {
            goto LABEL_73;
          }
        }
      }

      v29 = 0;
LABEL_73:
      targetCopy = v77;
      if (v29 == v77->var2)
      {
        goto LABEL_97;
      }

      v56 = scn_default_log();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

LABEL_96:
      [(SCNMTLMorphDeformer *)v56 createSparseIndicesBufferForMorphTarget:v57 withSetupTarget:v58 indicesBuffer:v59 indicesBufferOffset:v60 indexSize:v61 originalToFirstDeindexedTable:v62 computeContext:v63];
LABEL_97:
      offset = offsetCopy;
      goto LABEL_98;
    }

    if (!v86)
    {
      v48 = 0;
LABEL_94:
      targetCopy = v77;
      if (v48 == v77->var2)
      {
        goto LABEL_97;
      }

      v56 = scn_default_log();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
LABEL_58:
    v84 = 0;
    v80 = v85;
    v81 = v86;
    v82 = v87;
    v83 = v88;
    C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(&v80, v46, &v84 + 1, &v84);
    v52 = v84;
    for (j = HIDWORD(v84); ; ++j)
    {
      if (j >= v52)
      {
        if (++v46 >= v86)
        {
          goto LABEL_94;
        }

        goto LABEL_58;
      }

      *v54.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v92), (v91 + v47 * BYTE6(v92)), v49, v50.f32[0], v51);
      v50.i64[0] = 0x3400000034000000;
      v50.i64[1] = 0x3400000034000000;
      v49 = vcgtq_f32(v50, vabsq_f32(v54));
      v49.i32[0] = vminvq_u32(v49);
      if ((v49.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_69:
      ++v47;
    }

    if (v16)
    {
      v55 = table[j];
      if (v19)
      {
LABEL_63:
        *v19++ = v55;
LABEL_68:
        ++v48;
        v52 = v84;
        goto LABEL_69;
      }
    }

    else
    {
      v55 = j;
      if (v19)
      {
        goto LABEL_63;
      }
    }

    v19 = 0;
    if (v20)
    {
      *v20 = v55;
      v20 += 2;
    }

    else
    {
      *v21++ = v55;
    }

    goto LABEL_68;
  }

  v39 = v92;
  if (!var3)
  {
    if (!v92)
    {
      v65 = 0;
LABEL_100:
      if (v65 == targetCopy->var2)
      {
        goto LABEL_98;
      }

      v68 = scn_default_log();
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_98;
      }

      goto LABEL_92;
    }

    v64 = 0;
    v65 = 0;
    while (1)
    {
      *v66.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v92), (v91 + v64 * BYTE6(v92)), v23, v24.f32[0], v25.f32[0]);
      v24.i64[0] = 0x3400000034000000;
      v24.i64[1] = 0x3400000034000000;
      v23 = vcgtq_f32(v24, vabsq_f32(v66));
      v23.i32[0] = vminvq_u32(v23);
      if ((v23.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_87:
      if (v39 == ++v64)
      {
        goto LABEL_100;
      }
    }

    if (v16)
    {
      v67 = table[v64];
      if (v19)
      {
LABEL_81:
        *v19++ = v67;
LABEL_86:
        ++v65;
        goto LABEL_87;
      }
    }

    else
    {
      v67 = v64;
      if (v19)
      {
        goto LABEL_81;
      }
    }

    v19 = 0;
    if (v20)
    {
      *v20 = v67;
      v20 += 2;
    }

    else
    {
      *v21++ = v67;
    }

    goto LABEL_86;
  }

  if (v92)
  {
    v40 = 0;
    v41 = 0;
    while (1)
    {
      *v42.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v92), (v91 + v40 * BYTE6(v92)), v23, v24.f32[0], v25.f32[0]);
      v79 = v42;
      *v23.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v90), (v89 + v40 * BYTE6(v90)), v42, v43, v44);
      v25.i64[0] = 0x3400000034000000;
      v25.i64[1] = 0x3400000034000000;
      v24.i32[0] = vminvq_u32(vcgtq_f32(v25, vabsq_f32(v79)));
      if (v24.i32[0] < 0)
      {
        v24.i64[0] = 0x3400000034000000;
        v24.i64[1] = 0x3400000034000000;
        v23 = vcgtq_f32(v24, vabsq_f32(v23));
        v23.i32[0] = vminvq_u32(v23);
        if (v23.i32[0] < 0)
        {
          goto LABEL_54;
        }
      }

      if (v16)
      {
        v45 = table[v40];
        if (!v19)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v45 = v40;
        if (!v19)
        {
LABEL_50:
          v19 = 0;
          if (v20)
          {
            *v20 = v45;
            v20 += 2;
          }

          else
          {
            *v21++ = v45;
          }

          goto LABEL_53;
        }
      }

      *v19++ = v45;
LABEL_53:
      ++v41;
LABEL_54:
      if (v39 == ++v40)
      {
        goto LABEL_90;
      }
    }
  }

  v41 = 0;
LABEL_90:
  if (v41 == targetCopy->var2)
  {
    goto LABEL_98;
  }

  v68 = scn_default_log();
  if (!os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_98;
  }

LABEL_92:
  [(SCNMTLMorphDeformer *)v68 createSparseIndicesBufferForMorphTarget:v69 withSetupTarget:v70 indicesBuffer:v71 indicesBufferOffset:v72 indexSize:v73 originalToFirstDeindexedTable:v74 computeContext:v75];
LABEL_98:
  targetCopy->var4 = offset;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  currentFrameHash = [context currentFrameHash];
  if (self->_currentFrameHash == currentFrameHash)
  {
    return 0;
  }

  self->_currentFrameHash = currentFrameHash;
  var1 = buffers->var1;
  var3 = buffers->var3;
  if (self->_morphKind == 1)
  {

    return [(SCNMTLMorphDeformer *)self morphSparseWithComputeContext:context positions:var1 normals:var3];
  }

  else
  {

    return [(SCNMTLMorphDeformer *)self morphIncrementallyWithComputeContext:context positions:var1 normals:var3];
  }
}

- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0.0;
  v9 = C3DMorpherBeginIncrementalPass(self->_morpher, self->_lastMorpherIncrementalPassState, &v45, &v44, &v46, &v43);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  if (positions)
  {
    currentComputeEncoder->_buffers[0] = positions;
    currentComputeEncoder->_buffersToBind[0] |= 1uLL;
  }

  if (normals)
  {
    if (currentComputeEncoder->_buffers[4] == normals)
    {
      if (!currentComputeEncoder->_offsets[4])
      {
        goto LABEL_10;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[4] = normals;
    }

    currentComputeEncoder->_offsets[4] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 0x10uLL;
  }

LABEL_10:
  if (v10 != 2)
  {
    goto LABEL_23;
  }

  baseBufferForComputeKernel = self->_baseBufferForComputeKernel;
  if (currentComputeEncoder->_buffers[1] == baseBufferForComputeKernel)
  {
    if (!currentComputeEncoder->_offsets[1])
    {
      goto LABEL_15;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[1] = baseBufferForComputeKernel;
  }

  currentComputeEncoder->_offsets[1] = 0;
  currentComputeEncoder->_buffersToBind[0] |= 2uLL;
LABEL_15:
  vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
  v41[0] = 0.0;
  var2 = vertexCountForComputeKernel;
  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v41, 0xCuLL, 3uLL);
  v47 = 0;
  v48 = 0;
  encoder = currentComputeEncoder->_encoder;
  v49 = 0;
  v50 = var2;
  v51 = vdupq_n_s64(1uLL);
  [(MTLComputeCommandEncoder *)encoder setStageInRegion:&v47];
  originalToFirstDeindexedTableBuffer = self->_originalToFirstDeindexedTableBuffer;
  if (originalToFirstDeindexedTableBuffer)
  {
    if (currentComputeEncoder->_buffers[2] != originalToFirstDeindexedTableBuffer)
    {
      currentComputeEncoder->_buffers[2] = originalToFirstDeindexedTableBuffer;
LABEL_19:
      currentComputeEncoder->_offsets[2] = 0;
      currentComputeEncoder->_buffersToBind[0] |= 4uLL;
      goto LABEL_20;
    }

    if (currentComputeEncoder->_offsets[2])
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_copyBaseBufferPipeline computeEvaluator];
  v18 = var2;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v18);
  bzero(v45, 4 * v46);
LABEL_23:
  if (self->_runtimeMorphTargetCount)
  {
    v19 = 0;
    v20 = 0;
    v40 = vdupq_n_s64(1uLL);
    while (1)
    {
      runtimeMorphTargets = self->_runtimeMorphTargets;
      v22 = &runtimeMorphTargets[v19];
      var1 = runtimeMorphTargets[v19].var1;
      v24 = *&v44[4 * var1];
      v25 = *(v45 + var1);
      if (vabds_f32(v24, v25) > v43)
      {
        break;
      }

LABEL_46:
      ++v20;
      ++v19;
      if (v20 >= self->_runtimeMorphTargetCount)
      {
        goto LABEL_47;
      }
    }

    v41[0] = v24 - v25;
    v41[1] = (v24 - v25) * v22->var0;
    var2 = v22->var2;
    SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v41, 0xCuLL, 3uLL);
    v26 = v22->var2;
    v27 = self->_vertexCountForComputeKernel;
    morphTargetsVertexBuffer = self->_morphTargetsVertexBuffer;
    var3 = v22->var3;
    if (currentComputeEncoder->_buffers[1] == morphTargetsVertexBuffer)
    {
      if (currentComputeEncoder->_offsets[1] == var3)
      {
        goto LABEL_30;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[1] = morphTargetsVertexBuffer;
    }

    currentComputeEncoder->_offsets[1] = var3;
    currentComputeEncoder->_buffersToBind[0] |= 2uLL;
LABEL_30:
    v47 = 0;
    v48 = 0;
    v30 = currentComputeEncoder->_encoder;
    v49 = 0;
    v50 = var2;
    v51 = v40;
    [(MTLComputeCommandEncoder *)v30 setStageInRegion:&v47, *&v40];
    if (v26 == v27)
    {
      v31 = self->_originalToFirstDeindexedTableBuffer;
      if (v31)
      {
        if (currentComputeEncoder->_buffers[2] == v31)
        {
          if (!currentComputeEncoder->_offsets[2])
          {
LABEL_42:
            blendDenseIndexedPipeline = self->_blendDenseIndexedPipeline;
            goto LABEL_43;
          }
        }

        else
        {
          currentComputeEncoder->_buffers[2] = v31;
        }

        currentComputeEncoder->_offsets[2] = 0;
        currentComputeEncoder->_buffersToBind[0] |= 4uLL;
        goto LABEL_42;
      }

      blendDenseIndexedPipeline = self->_blendDensePipeline;
LABEL_43:
      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)blendDenseIndexedPipeline computeEvaluator];
      v36 = var2;
      if (currentComputeEncoder->_computePipelineState != computeEvaluator2)
      {
        currentComputeEncoder->_computePipelineState = computeEvaluator2;
        [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator2];
      }

      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v36);
      goto LABEL_46;
    }

    morphTargetsSparseIndicesBuffer = self->_morphTargetsSparseIndicesBuffer;
    var4 = runtimeMorphTargets[v19].var4;
    if (currentComputeEncoder->_buffers[2] == morphTargetsSparseIndicesBuffer)
    {
      if (currentComputeEncoder->_offsets[2] == var4)
      {
LABEL_39:
        blendDenseIndexedPipeline = self->_blendSparsePipeline;
        goto LABEL_43;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[2] = morphTargetsSparseIndicesBuffer;
    }

    currentComputeEncoder->_offsets[2] = var4;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
    goto LABEL_39;
  }

LABEL_47:
  deindexedToFirstDeindexedTableBuffer = self->_deindexedToFirstDeindexedTableBuffer;
  if (!deindexedToFirstDeindexedTableBuffer)
  {
    goto LABEL_55;
  }

  var2 = self->_finalMeshVertexCount;
  if (currentComputeEncoder->_buffers[2] != deindexedToFirstDeindexedTableBuffer)
  {
    currentComputeEncoder->_buffers[2] = deindexedToFirstDeindexedTableBuffer;
LABEL_51:
    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
    goto LABEL_52;
  }

  if (currentComputeEncoder->_offsets[2])
  {
    goto LABEL_51;
  }

LABEL_52:
  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v41, 0xCuLL, 3uLL);
  computeEvaluator3 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_splatPipeline computeEvaluator];
  finalMeshVertexCount = self->_finalMeshVertexCount;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator3)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator3;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator3];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, finalMeshVertexCount);
LABEL_55:
  self->_lastMorpherIncrementalPassState = C3DMorpherEndIncrementalPass(self->_morpher);
  return 1;
}

- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  positionsCopy = positions;
  v85 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0.0;
  v8 = C3DMorpherBeginIncrementalPass(self->_morpher, self->_lastMorpherIncrementalPassState, &v78, &v77, &v79, &v76);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  normalsCopy = normals;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  v63[1] = v63;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v63 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (v63 - ((v15 + 15) & 0xFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (v63 - v17);
  v70 = v9 == 2;
  v19 = 1.0;
  if (v9 == 2)
  {
    v19 = 0.0;
    if (v79)
    {
      bzero(v78, 4 * v79);
    }
  }

  if (vabds_f32(1.0, v19) <= 0.00000011921)
  {
    v20 = 0;
  }

  else
  {
    *v13 = 1.0 - v19;
    *v16 = self->_baseBufferForComputeKernel;
    *v18 = 0;
    v20 = 1;
  }

  LODWORD(v22) = self->_runtimeMorphTargetCount;
  if (v79 != v22)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v23 morphIncrementallyWithComputeContext:v24 positions:v25 normals:v26, v27, v28, v29, v30];
    }

    LODWORD(v22) = self->_runtimeMorphTargetCount;
  }

  if (v22)
  {
    v31 = v77;
    v32 = v78;
    v33 = v76;
    v22 = v22;
    p_var3 = &self->_runtimeMorphTargets->var3;
    do
    {
      v35 = *(p_var3 - 3);
      v36 = *&v31[4 * v35];
      v37 = v32[v35];
      if (vabds_f32(v36, v37) > v33)
      {
        v13[v20] = v36 - v37;
        v16[v20] = self->_morphTargetsVertexBuffer;
        v18[v20++] = *p_var3;
      }

      p_var3 += 4;
      --v22;
    }

    while (v22);
  }

  memset(v74, 0, sizeof(v74));
  vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
  memset(v84, 0, sizeof(v84));
  memset(&v83[4], 0, 32);
  v38 = 136;
  if (v9 == 2)
  {
    v38 = 128;
  }

  memset(v83, 0, 32);
  selfCopy = self;
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)*(&self->super.isa + v38) computeEvaluator];
  v67 = v20 + 7;
  if (v20 + 7 >= 8)
  {
    v39 = v16;
    v40 = 0;
    v41 = 0;
    v65 = v67 >> 3;
    p_baseBufferForComputeKernel = &selfCopy->_baseBufferForComputeKernel;
    do
    {
      v71 = v41;
      v43 = 0;
      v44 = v39;
      do
      {
        if (v40 + v43 >= v20)
        {
          v46 = 0;
          v45 = 0.0;
          v47 = p_baseBufferForComputeKernel;
        }

        else
        {
          v45 = v13[v43];
          v46 = v18[v43];
          v47 = v44;
        }

        v48 = *v47;
        *&v74[v43] = v45;
        *(v84 + v43) = v48;
        v83[v43++] = v46;
        ++v44;
      }

      while (v43 != 8);
      v72 = v39;
      v49 = currentComputeEncoder;
      SCNMTLComputeCommandEncoder::setBuffers(currentComputeEncoder, v84, v83, 1, 8);
      v50 = v49;
      if (v49->_buffers[10] == positionsCopy)
      {
        v53 = v49->_offsets[10];
        v51 = normalsCopy;
        v52 = computeEvaluator;
        if (!v53)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v49->_buffers[10] = positionsCopy;
        v51 = normalsCopy;
        v52 = computeEvaluator;
      }

      v50->_offsets[10] = 0;
      v50->_buffersToBind[0] |= 0x400uLL;
LABEL_31:
      if (v51)
      {
        if (v50->_buffers[11] != v51)
        {
          v50->_buffers[11] = v51;
LABEL_35:
          v50->_offsets[11] = 0;
          v50->_buffersToBind[0] |= 0x800uLL;
          goto LABEL_36;
        }

        if (v50->_offsets[11])
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      SCNMTLComputeCommandEncoder::setBytes(v50, v74, 0x24uLL, 0xCuLL);
      memset(v80, 0, sizeof(v80));
      encoder = currentComputeEncoder->_encoder;
      v81 = vertexCountForComputeKernel;
      v82 = vdupq_n_s64(1uLL);
      [(MTLComputeCommandEncoder *)encoder setStageInRegion:v80];
      v55 = currentComputeEncoder;
      v56 = vertexCountForComputeKernel;
      if (currentComputeEncoder->_computePipelineState != v52)
      {
        currentComputeEncoder->_computePipelineState = v52;
        v57 = v52;
        v58 = v56;
        [(MTLComputeCommandEncoder *)v55->_encoder setComputePipelineState:v57];
        v56 = v58;
        v55 = currentComputeEncoder;
      }

      v59 = v67 < 0x10;
      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v55, v56);
      v60 = v59 | ~v70;
      v61 = v71;
      if ((v60 & 1) == 0)
      {
        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)selfCopy->_incrementalAddPipeline computeEvaluator];
        v70 = 0;
      }

      v41 = v61 + 1;
      v13 += 8;
      v39 = v72 + 8;
      v18 += 8;
      v40 += 8;
    }

    while (v41 != v65);
  }

  v62 = selfCopy;
  v62->_lastMorpherIncrementalPassState = C3DMorpherEndIncrementalPass(selfCopy->_morpher);
  return 1;
}

- (void)initWithMorpher:(char)morpher outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:
{
  if (!self)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = SCNMTLMorphDeformer;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  if (v11)
  {
    if (a2)
    {
      v12 = CFRetain(a2);
    }

    else
    {
      v12 = 0;
    }

    v11[1] = v12;
    *(v11 + 32) = (morpher & 2) != 0;
    *(v11 + 16) = outputs;
    v11[3] = kind;
    *(v11 + 14) = -1;
    [v11 setupMorphTargetsWithComputeContext:manager];
  }

  return v11;
}

- (uint64_t)setNextFrameRequiresFullMeshReset
{
  if (result)
  {
    *(result + 56) = -1;
  }

  return result;
}

@end