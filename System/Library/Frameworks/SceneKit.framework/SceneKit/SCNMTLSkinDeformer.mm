@interface SCNMTLSkinDeformer
+ (BOOL)canSkin:(void *)skin reuseRenderResourceForSkin:;
- (id)makeReadOnlyBuffersWithBaseGeometry:(__C3DGeometry *)geometry baseMesh:(__C3DMesh *)mesh blitEncoder:(id)encoder;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
- (void)initWithSkinner:(uint64_t)skinner baseGeometry:(char)geometry outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:;
- (void)setupWithComputeContext:(id)context;
@end

@implementation SCNMTLSkinDeformer

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    CFRelease(skinner);
    self->_skinner = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNMTLSkinDeformer;
  [(SCNMTLSkinDeformer *)&v4 dealloc];
}

- (void)setupWithComputeContext:(id)context
{
  Mesh = C3DGeometryGetMesh(self->_baseGeometry);
  if (!Mesh)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v6 setupWithComputeContext:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, self->_dataKind);
  if (!SourceWithSemanticAtIndex)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v15 setupWithComputeContext:v16, v17, v18, v19, v20, v21, v22];
    }
  }

  self->_baseVertexCount = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
  resourceManager = self->_resourceManager;
  skinner = self->_skinner;
  dataKind = self->_dataKind;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __46__SCNMTLSkinDeformer_setupWithComputeContext___block_invoke;
  v43[3] = &unk_2782FDC80;
  v43[4] = context;
  v43[5] = self;
  v43[6] = Mesh;
  v26 = [(SCNMTLResourceManager *)resourceManager renderResourceForSkinner:skinner baseMesh:Mesh dataKind:dataKind provider:v43];
  v27 = v26;
  if (v26)
  {
    self->_vertexWeightIndicesBuffer = *(v26 + 24);
    self->_boneIndicesBuffer = *(v27 + 32);
    v28 = *(v27 + 40);
  }

  else
  {
    [SCNMTLSkinDeformer setupWithComputeContext:?];
    v28 = 0;
  }

  self->_boneWeightsBuffer = v28;
  skinNormals = self->_skinNormals;
  v29 = objc_alloc_init(MEMORY[0x277CD6D70]);
  [v29 setConstantValue:&skinNormals type:53 withName:@"needNormal"];
  skinTangents = self->_skinTangents;
  [v29 setConstantValue:&skinTangents type:53 withName:@"needTangent"];
  if (v27)
  {
    v30 = *(v27 + 8);
    v31 = *(v27 + 16);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v39 = v31;
  v40 = v30;
  [v29 setConstantValue:&v40 type:33 withName:@"weight_index_size"];
  [v29 setConstantValue:&v39 type:33 withName:@"bone_index_size"];
  v32 = 84;
  if (!skinTangents)
  {
    v32 = 45;
  }

  v33 = 78;
  if (!skinNormals)
  {
    v33 = 45;
  }

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Int%d_Int%d_%c%c", (8 * v40), (8 * v39), v33, v32];
  self->_useFallbackCopyKernel = v27 == 0;
  if (v27)
  {
    v35 = v34;
    v36 = @"skin_var";
  }

  else
  {
    v37 = 84;
    if (!skinTangents)
    {
      v37 = 45;
    }

    v38 = 78;
    if (!skinNormals)
    {
      v38 = 45;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", v38, v37];
    v36 = @"skin_copy_as_fallback";
  }

  self->_computePipeline = -[SCNMTLResourceManager computePipelineStateForKernel:withStageDescriptor:stageDescriptorUpdateBlock:constants:constantsHash:](self->_resourceManager, "computePipelineStateForKernel:withStageDescriptor:stageDescriptorUpdateBlock:constants:constantsHash:", v36, [context stageInputDescriptor], 0, v29, v35);
}

uint64_t __46__SCNMTLSkinDeformer_setupWithComputeContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentBlitEncoder];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v3[2];

  return [v3 makeReadOnlyBuffersWithBaseGeometry:v5 baseMesh:v4 blitEncoder:v2];
}

- (id)makeReadOnlyBuffersWithBaseGeometry:(__C3DGeometry *)geometry baseMesh:(__C3DMesh *)mesh blitEncoder:(id)encoder
{
  v132 = *MEMORY[0x277D85DE8];
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  if (!OverrideMaterial)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v9 makeReadOnlyBuffersWithBaseGeometry:v10 baseMesh:v11 blitEncoder:v12, v13, v14, v15, v16];
    }
  }

  v17 = objc_alloc_init(SCNMTLSkinDeformerReadOnlyBuffers);
  v126 = 0;
  v127 = 0;
  v125 = 0;
  C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v127, &v126, &v125);
  v124 = 0;
  PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(mesh, &v124);
  JointsCount = C3DSkinGetJointsCount(OverrideMaterial);
  v20 = JointsCount;
  v21 = 1;
  if ((JointsCount - 129) < 0xFFFFFF80)
  {
    v21 = 2;
  }

  if (JointsCount >= 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 8;
  }

  v23 = 4;
  if (v22 < 4)
  {
    v23 = v22;
  }

  v123 = v23;
  if (self->_dataKind != 1 || !PositionDeindexedToOriginalTable)
  {
    MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
    p_baseVertexCount = &self->_baseVertexCount;
    if (MTLVertexFormat != self->_baseVertexCount)
    {
      v47 = scn_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLSkinDeformer makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:];
      }

      goto LABEL_37;
    }

    if (v125)
    {
      MTLVertexFormat = C3DSkinGetWeightsCount(OverrideMaterial);
    }

    if ((MTLVertexFormat - 1) >> 15)
    {
      v41 = 4 * (*p_baseVertexCount + 1);
      v42 = malloc_type_malloc(v41, 0xC7861EACuLL);
      v43 = v42;
      v44 = v127;
      if (v127)
      {
        v45 = 0;
        v46 = 4;
        do
        {
          *&v42[2 * v45] = *(v44 + 8 * v45);
          ++v45;
        }

        while (v45 <= *p_baseVertexCount);
      }

      else
      {
        v46 = 4;
        do
        {
          *&v42[2 * v44] = v44;
          LODWORD(v44) = v44 + 1;
        }

        while (v44 <= *p_baseVertexCount);
      }
    }

    else
    {
      v41 = *p_baseVertexCount + 1;
      if ((MTLVertexFormat - 1) <= 0x7F)
      {
        v88 = malloc_type_malloc(*p_baseVertexCount + 1, 0xC7861EACuLL);
        v43 = v88;
        v89 = v127;
        if (v127)
        {
          v90 = 0;
          v46 = 1;
          do
          {
            *(v88 + v90) = *(v127 + 8 * v90);
            ++v90;
          }

          while (v90 <= *p_baseVertexCount);
        }

        else
        {
          v46 = 1;
          do
          {
            *(v88 + v89) = v89;
            ++v89;
          }

          while (v89 <= *p_baseVertexCount);
        }
      }

      else
      {
        v41 *= 2;
        v43 = malloc_type_malloc(v41, 0xC7861EACuLL);
        v50 = v127;
        if (*p_baseVertexCount + 1 > 1)
        {
          v51 = *p_baseVertexCount + 1;
        }

        else
        {
          v51 = 1;
        }

        if (v127)
        {
          v52 = 0;
          v46 = 2;
          do
          {
            v43[v52] = *(v50 + 8 * v52);
            ++v52;
          }

          while (v51 != v52);
        }

        else
        {
          [SCNMTLSkinDeformer makeReadOnlyBuffersWithBaseGeometry:v51 baseMesh:v43 blitEncoder:?];
          v46 = 2;
        }
      }
    }

    v93 = MTLVertexFormat * v123;
    v94 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v43 length:v41 blitEncoder:encoder];
    if (v17)
    {
      objc_setProperty_nonatomic(v17, v95, v94, 24);
    }

    free(v43);
    if (v126 && v125)
    {
      if (MTLVertexFormat >= 1)
      {
        v96 = 0;
        v97 = 1;
        while (*(v126 + 2 * v96) < v20)
        {
          v96 = v97;
          v98 = MTLVertexFormat > v97++;
          if (!v98)
          {
            goto LABEL_105;
          }
        }

        v111 = scn_default_log();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v112 = *(v126 + 2 * v96);
          *buf = 67109376;
          v129 = v112;
          v130 = 1024;
          v131 = v20;
          _os_log_error_impl(&dword_21BEF7000, v111, OS_LOG_TYPE_ERROR, "Error: Skinning internal consistency error - out of range bone index ('%d < %d' assertion failed)", buf, 0xEu);
        }

        goto LABEL_37;
      }

LABEL_105:
      if (v22 == 2)
      {
        v113 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v126 length:v93 blitEncoder:encoder];
        if (v17)
        {
          objc_setProperty_nonatomic(v17, v114, v113, 32);
        }

LABEL_115:
        if (v125)
        {
          v104 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v125 length:4 * MTLVertexFormat blitEncoder:encoder];
          if (!v17)
          {
            return v17;
          }

          objc_setProperty_nonatomic(v17, v105, v104, 40);
        }

        else
        {
          v106 = malloc_type_malloc(4 * MTLVertexFormat, 0x100004052888210uLL);
          v55 = v106;
          if (MTLVertexFormat >= 1)
          {
            v107 = 1;
            v108 = v106;
            do
            {
              *v108++ = 1065353216;
              v98 = MTLVertexFormat > v107++;
            }

            while (v98);
          }

          v109 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v106 length:4 * MTLVertexFormat blitEncoder:encoder];
          if (!v17)
          {
            goto LABEL_84;
          }

          objc_setProperty_nonatomic(v17, v110, v109, 40);
          free(v55);
        }

        v17->_vertexWeightIndexSize = v46;
        v17->_boneIndexSize = v123;
        return v17;
      }

      if (v22 == 1)
      {
        v99 = malloc_type_malloc(v93, 0x100004077774924uLL);
        v100 = v99;
        if (MTLVertexFormat >= 1)
        {
          v101 = 0;
          do
          {
            *(v99 + v101) = *(v126 + 2 * v101);
            ++v101;
          }

          while (MTLVertexFormat > v101);
        }
      }

      else
      {
        if (v20 > 0)
        {
          goto LABEL_115;
        }

        v115 = malloc_type_malloc(v93, 0x100004052888210uLL);
        v100 = v115;
        if (MTLVertexFormat >= 1)
        {
          v116 = 0;
          v117 = v126;
          do
          {
            *(v115 + v116) = *(v117 + 2 * v116);
            ++v116;
          }

          while (MTLVertexFormat > v116);
        }
      }
    }

    else
    {
      v100 = malloc_type_calloc(v93, 1uLL, 0x2A4C9B24uLL);
    }

    v102 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v100 length:v93 blitEncoder:encoder];
    if (v17)
    {
      objc_setProperty_nonatomic(v17, v103, v102, 32);
    }

    free(v100);
    goto LABEL_115;
  }

  v25 = &self->_baseVertexCount;
  baseVertexCount = self->_baseVertexCount;
  if (baseVertexCount != v124)
  {
    v48 = scn_default_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLSkinDeformer makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:];
    }

LABEL_37:

    return 0;
  }

  v26 = malloc_type_malloc(4 * (baseVertexCount + 1), 0x100004052888210uLL);
  v27 = v26;
  *v26 = 0;
  encoderCopy = encoder;
  if (*v25)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v127;
    do
    {
      v32 = *(v31 + 8 * (*(PositionDeindexedToOriginalTable + 4 * v29) + 1)) - *(v31 + 8 * *(PositionDeindexedToOriginalTable + 4 * v29));
      v30 += v32;
      v28 += v32;
      v26[v29 + 1] = v28;
      v33 = *v25;
      ++v29;
    }

    while (v29 < v33);
    v34 = (v33 + 1);
    if (!((v30 - 1) >> 15))
    {
      if ((v30 - 1) <= 0x7F)
      {
        v121 = (v33 + 1);
        v91 = malloc_type_malloc(v34, 0x947460FAuLL);
        v36 = v91;
        v92 = 0;
        v118 = 1;
        do
        {
          *(v91 + v92) = v27[v92];
          ++v92;
        }

        while (v92 <= *v25);
      }

      else
      {
        v121 = 2 * v34;
        v35 = malloc_type_malloc(2 * v34, 0x1CB4052FuLL);
        v36 = v35;
        v37 = 0;
        if (*v25 + 1 > 1)
        {
          v38 = *v25 + 1;
        }

        else
        {
          v38 = 1;
        }

        v118 = 2;
        do
        {
          *(v35 + v37) = v27[v37];
          ++v37;
        }

        while (v38 != v37);
      }

      goto LABEL_48;
    }
  }

  else
  {
    v30 = 0;
    v34 = 1;
  }

  v121 = 4 * v34;
  v118 = 4;
  v36 = v27;
LABEL_48:
  v119 = v30 * v123;
  v53 = malloc_type_malloc(v30 * v123, 0x1854F7FEuLL);
  v120 = 4 * v30;
  v54 = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
  v55 = v54;
  if (v22 == 1)
  {
    v67 = *v25;
    v57 = v121;
    if (v67)
    {
      v68 = 0;
      do
      {
        v69 = v27[v68];
        v70 = v68 + 1;
        v71 = v27[v68 + 1] - v69;
        if (v71)
        {
          v72 = *(v127 + 8 * *(PositionDeindexedToOriginalTable + 4 * v68));
          do
          {
            v53[v69] = *(v126 + 2 * v72);
            *(v54 + v69++) = *(v125 + 4 * v72++);
            --v71;
          }

          while (v71);
          v67 = *v25;
        }

        ++v68;
      }

      while (v70 < v67);
    }
  }

  else if (v22 == 2)
  {
    v56 = *v25;
    v57 = v121;
    if (v56)
    {
      v58 = 0;
      v60 = v126;
      v59 = v127;
      v61 = v125;
      v62 = *v27;
      do
      {
        v63 = v58 + 1;
        v64 = v27[v58 + 1];
        v65 = v64 - v62;
        if (v64 != v62)
        {
          v66 = *(v59 + 8 * *(PositionDeindexedToOriginalTable + 4 * v58));
          do
          {
            *&v53[2 * v62] = *(v60 + 2 * v66);
            *(v54 + v62++) = *(v61 + 4 * v66++);
            --v65;
          }

          while (v65);
        }

        v62 = v64;
        v58 = v63;
      }

      while (v63 != v56);
    }
  }

  else
  {
    v57 = v121;
    if (v20 <= 0)
    {
      v73 = *v25;
      if (v73)
      {
        v74 = 0;
        v76 = v126;
        v75 = v127;
        v77 = v125;
        do
        {
          v78 = v27[v74];
          v79 = v74 + 1;
          v80 = v27[v74 + 1] - v78;
          if (v80)
          {
            v81 = *(v75 + 8 * *(PositionDeindexedToOriginalTable + 4 * v74));
            do
            {
              *&v53[4 * v78] = *(v76 + 2 * v81);
              *(v54 + v78++) = *(v77 + 4 * v81++);
              --v80;
            }

            while (v80);
            v73 = *v25;
          }

          ++v74;
        }

        while (v79 < v73);
      }
    }
  }

  if (v17)
  {
    v17->_vertexWeightIndexSize = v118;
    v17->_boneIndexSize = v123;
  }

  v82 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v36 length:v57 blitEncoder:encoderCopy];
  if (v17)
  {
    objc_setProperty_nonatomic(v17, v83, v82, 24);
  }

  v84 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v53 length:v119 blitEncoder:encoderCopy];
  if (v17)
  {
    objc_setProperty_nonatomic(v17, v85, v84, 32);
  }

  v86 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v55 length:v120 blitEncoder:encoderCopy];
  if (v17)
  {
    objc_setProperty_nonatomic(v17, v87, v86, 40);
  }

  if (v36 != v27)
  {
    free(v27);
  }

  free(v36);
  free(v53);
LABEL_84:
  free(v55);
  return v17;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  currentFrameHash = [context currentFrameHash];
  if (self->_currentFrameHash == currentFrameHash)
  {
    return 0;
  }

  self->_currentFrameHash = currentFrameHash;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  if (!self->_useFallbackCopyKernel)
  {
    vertexWeightIndicesBuffer = self->_vertexWeightIndicesBuffer;
    if (vertexWeightIndicesBuffer)
    {
      currentComputeEncoder->_buffers[1] = vertexWeightIndicesBuffer;
      currentComputeEncoder->_offsets[1] = 0;
      currentComputeEncoder->_buffersToBind[0] |= 2uLL;
      vertexWeightIndicesBuffer = currentComputeEncoder->_buffers[2];
    }

    boneIndicesBuffer = self->_boneIndicesBuffer;
    if (vertexWeightIndicesBuffer == boneIndicesBuffer)
    {
      if (!currentComputeEncoder->_offsets[2])
      {
        goto LABEL_11;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[2] = boneIndicesBuffer;
    }

    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
LABEL_11:
    boneWeightsBuffer = self->_boneWeightsBuffer;
    if (currentComputeEncoder->_buffers[3] == boneWeightsBuffer)
    {
      if (!currentComputeEncoder->_offsets[3])
      {
LABEL_15:
        v62[0] = 0;
        JointMatrices = C3DSkinnerGetJointMatrices(self->_skinner, v62);
        SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, JointMatrices, 16 * v62[0], 4uLL);
        v10 = 5;
        goto LABEL_16;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[3] = boneWeightsBuffer;
    }

    currentComputeEncoder->_offsets[3] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_16:
  var1 = buffers->var1;
  var3 = buffers->var3;
  var5 = buffers->var5;
  v61 = [(MTLBuffer *)var1 length]/ 0xCuLL;
  if (self->_baseVertexCount != v61)
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v18 updateWithComputeContext:v19 buffers:v20, v21, v22, v23, v24, v25];
    }
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &v61, 4uLL, 0);
  if (currentComputeEncoder->_buffers[v10] == var1)
  {
    v28 = &currentComputeEncoder->_buffers[v10];
    v29 = v28[31];
    v27 = v28 + 31;
    if (!v29)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = &currentComputeEncoder->_buffers[v10];
    *v26 = var1;
    v27 = v26 + 31;
  }

  *v27 = 0;
  currentComputeEncoder->_buffersToBind[0] |= (1 << v10);
LABEL_23:
  if (!self->_skinNormals)
  {
    goto LABEL_31;
  }

  v30 = v61;
  if (v30 != [(MTLBuffer *)var3 length]/ 0xCuLL)
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v31 updateWithComputeContext:v32 buffers:v33, v34, v35, v36, v37, v38];
    }
  }

  v39 = v10 + 1;
  if (currentComputeEncoder->_buffers[v10 + 1] == var3)
  {
    v42 = &currentComputeEncoder->_buffers[v39];
    v43 = v42[31];
    v41 = v42 + 31;
    if (!v43)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v40 = &currentComputeEncoder->_buffers[v39];
    *v40 = var3;
    v41 = v40 + 31;
  }

  *v41 = 0;
  currentComputeEncoder->_buffersToBind[0] |= (1 << v39);
LABEL_31:
  if (self->_skinTangents)
  {
    v44 = v61;
    if (v44 > [(MTLBuffer *)var5 length]>> 4)
    {
      v45 = scn_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLSkinDeformer *)v45 updateWithComputeContext:v46 buffers:v47, v48, v49, v50, v51, v52];
      }
    }

    v53 = v10 | 2;
    if (currentComputeEncoder->_buffers[v10 | 2] != var5)
    {
      v54 = &currentComputeEncoder->_buffers[v53];
      *v54 = var5;
      v55 = v54 + 31;
LABEL_38:
      *v55 = 0;
      currentComputeEncoder->_buffersToBind[0] |= (1 << v53);
      goto LABEL_39;
    }

    v56 = &currentComputeEncoder->_buffers[v53];
    v57 = v56[31];
    v55 = v56 + 31;
    if (v57)
    {
      goto LABEL_38;
    }
  }

LABEL_39:
  [context setStageInputOutputBuffersToEncoder:currentComputeEncoder];
  memset(v62, 0, 24);
  encoder = currentComputeEncoder->_encoder;
  v62[3] = v61;
  v63 = vdupq_n_s64(1uLL);
  [(MTLComputeCommandEncoder *)encoder setStageInRegion:v62];
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_computePipeline computeEvaluator];
  v60 = v61;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v60);
  return 1;
}

+ (BOOL)canSkin:(void *)skin reuseRenderResourceForSkin:
{
  objc_opt_self();
  JointsCount = C3DSkinGetJointsCount(skin);
  if (JointsCount != C3DSkinGetJointsCount(a2))
  {
    return 0;
  }

  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(skin);
  if (MTLVertexFormat != C3DMeshSourceGetMTLVertexFormat(a2))
  {
    return 0;
  }

  WeightsCount = C3DSkinGetWeightsCount(skin);
  if (WeightsCount != C3DSkinGetWeightsCount(a2))
  {
    return 0;
  }

  v8 = C3DSkinGetWeightsCount(skin);
  v9 = C3DMeshSourceGetMTLVertexFormat(skin);
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  C3DSkinGetVertexWeightsPointers(skin, &v16, &v14, &v12);
  C3DSkinGetVertexWeightsPointers(a2, &v15, &v13, &v11);
  if (v16 && v15)
  {
    if (memcmp(v16, v15, 8 * v9 + 8))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (!v16 || !v15)
    {
      return result;
    }
  }

  if (!v14 || !v13)
  {
    result = 0;
    if (!v14 || !v13)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (memcmp(v14, v13, 2 * v8))
  {
    return 0;
  }

LABEL_16:
  if (v12 && v11)
  {
    return !memcmp(v12, v11, 4 * v8);
  }

  result = 0;
  if (v12 && v11)
  {
    return 1;
  }

  return result;
}

- (void)initWithSkinner:(uint64_t)skinner baseGeometry:(char)geometry outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = SCNMTLSkinDeformer;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  if (v13)
  {
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    v13[1] = v14;
    v13[2] = skinner;
    *(v13 + 40) = (geometry & 2) != 0;
    *(v13 + 41) = (geometry & 4) != 0;
    *(v13 + 24) = outputs;
    v13[4] = kind;
    [v13 setupWithComputeContext:manager];
  }

  return v13;
}

- (uint64_t)setupWithComputeContext:(uint64_t)a1 .cold.3(uint64_t a1)
{
  *(a1 + 56) = 0;
  result = 0;
  *(a1 + 64) = 0;
  return result;
}

- (void)makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:.cold.2()
{
  OUTLINED_FUNCTION_1_10();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_2_9(&dword_21BEF7000, v0, v1, "Error: Skinning internal consistency error - vertex count mismatch ('%d == %d' assertion failed)", v2, v3);
}

- (uint64_t)makeReadOnlyBuffersWithBaseGeometry:(uint64_t)result baseMesh:(uint64_t)a2 blitEncoder:.cold.3(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = vdupq_n_s64(result - 1);
  v4 = xmmword_21C2A1A00;
  v5 = xmmword_21C2A1A10;
  v6 = xmmword_21C27F630;
  v7 = xmmword_21C27F640;
  v8 = (a2 + 8);
  v9 = vdupq_n_s64(8uLL);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v3, v7));
    if (vuzp1_s8(vuzp1_s16(v10, *v3.i8), *v3.i8).u8[0])
    {
      *(v8 - 4) = v2;
    }

    if (vuzp1_s8(vuzp1_s16(v10, *&v3), *&v3).i8[1])
    {
      *(v8 - 3) = v2 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v6))), *&v3).i8[2])
    {
      *(v8 - 2) = v2 | 2;
      *(v8 - 1) = v2 | 3;
    }

    v11 = vmovn_s64(vcgeq_u64(v3, v5));
    if (vuzp1_s8(*&v3, vuzp1_s16(v11, *&v3)).i32[1])
    {
      *v8 = v2 | 4;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(v11, *&v3)).i8[5])
    {
      v8[1] = v2 | 5;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4)))).i8[6])
    {
      v8[2] = v2 | 6;
      v8[3] = v2 | 7;
    }

    v2 += 8;
    v5 = vaddq_s64(v5, v9);
    v6 = vaddq_s64(v6, v9);
    v7 = vaddq_s64(v7, v9);
    v4 = vaddq_s64(v4, v9);
    v8 += 8;
  }

  while (((result + 7) & 0x1FFFFFFF8) != v2);
  return result;
}

- (void)makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:.cold.4()
{
  OUTLINED_FUNCTION_1_10();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2_9(&dword_21BEF7000, v1, v2, "Error: Skinning internal consistency error - vertex count mismatch ('%d == %d' assertion failed)", v3, v4);
}

@end